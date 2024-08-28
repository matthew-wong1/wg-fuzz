struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -56038i;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: i32) -> vec2<bool> {
    var var_0 = _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-378f, -908f, all(vec3<bool>(false, false, false)))))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-278f + _wgslsmith_div_f32(-1696f, -486f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-500f)))))));
    var var_1 = _wgslsmith_clamp_vec4_u32(~abs(~(~vec4<u32>(1u, 1u, 1u, u_input.a))), vec4<u32>(~_wgslsmith_add_u32(abs(1u), _wgslsmith_div_u32(53999u, u_input.c.x)), ~max(~u_input.c.x, _wgslsmith_mod_u32(u_input.c.x, 4294967295u)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, abs(3068u), u_input.b.x), ~vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u)), 4294967295u), _wgslsmith_mod_vec4_u32(abs(vec4<u32>(u_input.c.x, 37773u, u_input.b.x, 4294967295u) << ((vec4<u32>(u_input.b.x, 73376u, 71597u, 50933u) << (vec4<u32>(44979u, u_input.a, u_input.c.x, 42451u) % vec4<u32>(32u))) % vec4<u32>(32u))), vec4<u32>(40601u, _wgslsmith_add_u32(u_input.c.x >> (1u % 32u), ~u_input.c.x), ~_wgslsmith_clamp_u32(4294967295u, u_input.a, u_input.a), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.a, u_input.c.x, 7022u), _wgslsmith_add_u32(u_input.c.x, 47642u)))));
    var_1 = select(~_wgslsmith_div_vec4_u32(vec4<u32>(~0u, var_1.x, 27992u, var_1.x), ~(vec4<u32>(21690u, u_input.c.x, var_1.x, 8376u) ^ vec4<u32>(43010u, 88905u, 1277u, u_input.c.x))), vec4<u32>(~(~abs(44586u)), min(4294967295u, ~4731u ^ abs(var_1.x)), 1u, min(var_1.x, ~firstLeadingBit(u_input.c.x))), !(!(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), true))));
    global0 = firstLeadingBit(-(~2147483647i));
    var var_2 = false;
    return select(select(vec2<bool>(true, true), vec2<bool>(any(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true))), true), select(!any(vec3<bool>(true, false, false)), any(vec4<bool>(true, false, true, true)), true)), vec2<bool>(countOneBits(~arg_0) != -1i, !(!all(vec3<bool>(false, true, false)))), ~u_input.c.x != _wgslsmith_add_u32(23671u, ~u_input.c.x));
}

fn func_2() -> vec2<bool> {
    global0 = 0i;
    var var_0 = vec3<bool>(all(func_3(_wgslsmith_dot_vec4_i32(vec4<i32>(13273i, 2147483647i, 0i, 21626i), vec4<i32>(0i, 1i, -1i, 0i)))) | select(u_input.b.x >= ~3503u, select(all(vec3<bool>(false, false, false)), true, all(vec2<bool>(false, false))), all(vec3<bool>(false, true, false))), true, false);
    let var_1 = u_input.b.x;
    var_0 = select(vec3<bool>(false, true, false), !vec3<bool>(true, any(vec4<bool>(true, var_0.x, var_0.x, true)), all(select(vec4<bool>(false, var_0.x, true, var_0.x), vec4<bool>(false, false, var_0.x, var_0.x), false))), !vec3<bool>(!var_0.x, func_3(countOneBits(0i)).x, ~4294967295u >= _wgslsmith_dot_vec4_u32(vec4<u32>(var_1, 4294967295u, u_input.a, 0u), vec4<u32>(u_input.a, u_input.b.x, var_1, u_input.c.x))));
    var var_2 = _wgslsmith_f_op_f32(1997f * 1107f);
    return var_0.xx;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<bool>) -> bool {
    global0 = select(~(-49624i) & -_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, 45725i), ~vec3<i32>(1i, -2147483647i, -41204i)), 2147483647i, true);
    var var_0 = -3668i;
    var var_1 = any(select(arg_1.xw, select(select(select(vec2<bool>(false, false), vec2<bool>(false, arg_1.x), arg_1.x), func_2(), true), vec2<bool>(1633f >= arg_0.x, false), arg_1.wy), vec2<bool>(arg_1.x, !arg_1.x)));
    var var_2 = reverseBits(_wgslsmith_div_i32(-1i, ~(-2147483647i))) << (u_input.c.x % 32u);
    var var_3 = Struct_2(Struct_1(~(~vec3<i32>(1i, 1i, 1i))), Struct_1(-_wgslsmith_clamp_vec3_i32(~vec3<i32>(-2147483647i, 2147483647i, 2147483647i), select(vec3<i32>(1i, 9649i, -2147483647i), vec3<i32>(1325i, 1i, 2147483647i), true), select(vec3<i32>(32732i, -7179i, 2147483647i), vec3<i32>(2147483647i, -1i, -19931i), true))), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i) * -firstLeadingBit(vec4<i32>(-2147483647i, -1i, -48947i, 0i)), reverseBits(~vec4<i32>(-11884i, -2147483647i, -1i, 37325i)) & _wgslsmith_add_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, -2147483647i, -1i, -1i), vec4<i32>(15031i, 1i, -75148i, 30155i), vec4<i32>(1561i, 2147483647i, -29323i, 0i)))), Struct_1(_wgslsmith_clamp_vec3_i32(~vec3<i32>(-1i, -26922i, 12350i), select(vec3<i32>(1i, 3913i, 14167i), vec3<i32>(8181i, 0i, 1i), true), min(vec3<i32>(2147483647i, -2147483647i, 0i), vec3<i32>(0i, -2147483647i, -2147483647i))) ^ vec3<i32>(_wgslsmith_sub_i32(-55374i, 1i), ~(-2147483647i), -1i)));
    return true;
}

fn func_4(arg_0: bool) -> Struct_1 {
    let var_0 = min(vec4<i32>(17319i & (firstTrailingBit(1i) ^ _wgslsmith_add_i32(29494i, 13212i)), 1i, ~(~reverseBits(-2147483647i)), (i32(-1i) * -2147483647i) >> (~(21063u & u_input.a) % 32u)), ~(~vec4<i32>(1i, 1i, 1i, 1i) >> (vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.b.x), u_input.b), _wgslsmith_div_u32(1u, u_input.b.x), u_input.a >> (u_input.b.x % 32u), ~u_input.c.x) % vec4<u32>(32u))));
    let var_1 = Struct_2(Struct_1(abs(vec3<i32>(var_0.x, var_0.x, -2147483647i) >> (vec3<u32>(4294967295u, u_input.b.x, 48166u) % vec3<u32>(32u)))), Struct_1(firstTrailingBit(vec3<i32>(~var_0.x, var_0.x, select(22571i, 0i, false)))), select(var_0, _wgslsmith_clamp_vec4_i32(vec4<i32>(firstLeadingBit(-2147483647i), var_0.x << (u_input.b.x % 32u), -1427i, 16985i), -vec4<i32>(var_0.x, 1i, -31749i, 6135i), -var_0), vec4<bool>(!(!arg_0), !all(vec3<bool>(arg_0, true, arg_0)), true, all(select(vec3<bool>(false, false, arg_0), vec3<bool>(arg_0, false, false), vec3<bool>(false, arg_0, false))))), Struct_1(~_wgslsmith_clamp_vec3_i32(-vec3<i32>(0i, -18533i, 78019i), var_0.wwz, vec3<i32>(-2147483647i, var_0.x, var_0.x) & vec3<i32>(4470i, 2147483647i, var_0.x))));
    let var_2 = _wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(u_input.c.x, 32049u, 0u, u_input.a)), min(vec4<u32>(u_input.a, 26000u, 1u, 0u), vec4<u32>(4294967295u, 1u, u_input.b.x, 0u))), ~(~vec4<u32>(4294967295u, 22101u, u_input.c.x, 51838u))), ~0u);
    global0 = min(var_1.a.a.x, ~var_0.x);
    global0 = 1i;
    return var_1.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(-23940i, ~(-2147483647i), -16672i), _wgslsmith_add_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, 1i, 1i)))), func_4(all(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false))) & func_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-520f, -710f, -1000f), vec3<f32>(-1369f, -212f, 1259f), vec3<bool>(true, false, false))), vec4<bool>(true, true, true, true))), firstLeadingBit(((vec4<i32>(-26267i, 1i, 16746i, -8454i) >> (vec4<u32>(22296u, u_input.a, u_input.b.x, 29587u) % vec4<u32>(32u))) >> (vec4<u32>(u_input.c.x, 17850u, u_input.c.x, u_input.a) % vec4<u32>(32u))) << ((~vec4<u32>(26882u, u_input.a, u_input.b.x, 1u) ^ vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, u_input.a)) % vec4<u32>(32u))), Struct_1(countOneBits(-vec3<i32>(-32632i, 57029i, 1493i) >> (~vec3<u32>(1978u, 4294967295u, u_input.c.x) % vec3<u32>(32u)))));
    global0 = var_0.d.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(-745f);
}

