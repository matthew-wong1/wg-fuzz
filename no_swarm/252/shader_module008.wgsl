struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: bool,
    c: i32,
    d: vec4<bool>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-542f - -1000f)))), 1821f), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 351f) * vec2<f32>(2134f, -1134f)) * _wgslsmith_div_vec2_f32(vec2<f32>(366f, -339f), vec2<f32>(-715f, -708f)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1764f, 160f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-372f, 1924f))))))))));
    let var_1 = Struct_3(4294967295u, firstTrailingBit(4294967295u), Struct_2(Struct_1(_wgslsmith_add_vec2_i32(abs(vec2<i32>(-2147483647i, 1i)), ~vec2<i32>(-1i, -42209i)), _wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.b, u_input.b), ~u_input.b), 36978u, countOneBits(1u >> (0u % 32u))), _wgslsmith_add_vec3_i32(vec3<i32>(1i, ~34390i, 23591i), vec3<i32>(2147483647i, 21317i << (u_input.b % 32u), -58395i)), -vec3<i32>(1i, 0i, max(-2147483647i, 2319i))));
    var var_2 = Struct_4(vec4<bool>(!all(select(vec2<bool>(false, true), vec2<bool>(true, false), false)), any(vec2<bool>(true, true)), abs(var_1.c.c.x) <= 0i, any(vec4<bool>(true, true, true, true)) || false), any(!select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), false))), max(var_1.c.c.x, var_1.c.b.x), !(!select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true)), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true)), true)), ~(reverseBits(firstLeadingBit(vec4<u32>(43743u, u_input.b, var_1.c.a.c, var_1.c.a.c))) << (~vec4<u32>(u_input.b, 8682u, 17251u, u_input.b) % vec4<u32>(32u))));
    var var_3 = var_1.c.a;
    let var_4 = Struct_3(6552u, 4294967295u, var_1.c);
    return var_1.b;
}

fn func_2() -> Struct_2 {
    var var_0 = ~vec3<u32>(32144u, u_input.b, u_input.b);
    var var_1 = _wgslsmith_add_i32(~((0i >> (~var_0.x % 32u)) ^ ~(~18658i)), ~_wgslsmith_dot_vec2_i32(-vec2<i32>(-34081i, 2147483647i), vec2<i32>(-1i, 1i)));
    var var_2 = 53079u;
    var var_3 = Struct_3(firstTrailingBit(func_3()), _wgslsmith_add_u32(~_wgslsmith_sub_u32(17285u, reverseBits(u_input.a)), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(53414u, var_0.x, var_0.x), max(vec3<u32>(var_0.x, u_input.b, u_input.a), vec3<u32>(4294967295u, var_0.x, 68233u))), ~(u_input.a ^ 1u))), Struct_2(Struct_1(-vec2<i32>(9675i, -4075i), ~_wgslsmith_clamp_u32(48163u, 12006u, u_input.b), 4294967295u, select(_wgslsmith_sub_u32(101410u, 1u), countOneBits(0u), true)), ~reverseBits(vec3<i32>(137i, -1i, 1395i)), vec3<i32>(1i, 1i, 1i)));
    let var_4 = select(~_wgslsmith_clamp_vec2_u32(vec2<u32>(~25983u, var_0.x), vec2<u32>(20581u, u_input.b), firstTrailingBit(var_0.xz)), var_0.zy, any(vec3<bool>(true, false, true)) || (false || any(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)))));
    return var_3.c;
}

fn func_1() -> u32 {
    var var_0 = true;
    var_0 = true;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -694f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -277f)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(1f)))));
    let var_2 = func_2();
    let var_3 = vec3<i32>(~2147483647i, _wgslsmith_sub_i32(max(_wgslsmith_dot_vec4_i32(vec4<i32>(12922i, -1i, 1i, var_2.c.x), min(vec4<i32>(var_2.a.a.x, 21810i, -50278i, var_2.c.x), vec4<i32>(var_2.b.x, var_2.c.x, var_2.c.x, 0i))), max(_wgslsmith_mod_i32(-2147483647i, -2147483647i), reverseBits(12855i))), ~0i), firstLeadingBit(abs(-20322i << (var_2.a.c % 32u)) << (~(~0u) % 32u)));
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -_wgslsmith_div_i32(~13544i, abs(max(1i, firstLeadingBit(-5351i))));
    var var_1 = Struct_3(~_wgslsmith_div_u32(~_wgslsmith_mult_u32(82343u, 36160u), 4812u), ~func_1(), Struct_2(Struct_1(vec2<i32>(_wgslsmith_add_i32(47165i, var_0), -27826i), u_input.a, u_input.a, 0u), vec3<i32>(_wgslsmith_add_i32(-1i, var_0), (var_0 >> (u_input.b % 32u)) >> (33702u % 32u), 0i), -(vec3<i32>(-1i, var_0, var_0) | vec3<i32>(-1i, -1i, var_0)) ^ ((vec3<i32>(0i, -1i, -1i) << (vec3<u32>(u_input.b, 1u, u_input.a) % vec3<u32>(32u))) ^ select(vec3<i32>(var_0, var_0, var_0), vec3<i32>(var_0, var_0, -23701i), false))));
    let var_2 = Struct_4(vec4<bool>(true, select(true, all(vec4<bool>(true, true, true, true)), ~var_1.a <= ~var_1.a), true, true), !any(select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), false), true)), var_1.c.c.x, vec4<bool>(true, (any(vec4<bool>(true, true, true, false)) == true) || true, -_wgslsmith_div_i32(-1i, var_1.c.b.x) > abs(-62022i), true), ~abs(~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 80997u, 36846u, u_input.a), vec4<u32>(62795u, 4294967295u, var_1.b, 10263u))));
    var var_3 = var_2.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1336f, -188f) - vec2<f32>(-795f, 743f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1567f, -699f))), !var_2.b))))), ~vec4<u32>(var_2.e.x, u_input.b, abs(var_2.e.x), 1u), ~(-(~_wgslsmith_mult_vec2_i32(vec2<i32>(var_0, var_0), var_1.c.c.zx))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(785f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-507f, -499f)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(924f, 125f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(169f, 221f), vec2<f32>(-391f, 1819f))) + vec2<f32>(-196f, -416f)))))));
}

