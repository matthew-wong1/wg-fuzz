struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec4<i32>,
    d: Struct_2,
    e: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_3,
    c: i32,
    d: vec3<f32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(4294967295u, 1u, 107038u);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: i32, arg_1: bool) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -179f))))), 886f), vec2<f32>(761f, -2054f)));
    var var_1 = min(arg_0, i32(-1i) * -_wgslsmith_add_i32(~2147483647i, arg_0));
    let var_2 = Struct_1(max(u_input.a.zwz << (_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), min(vec3<u32>(15687u, 1u, 4294967295u), vec3<u32>(1u, 4294967295u, u_input.b))) % vec3<u32>(32u)), ~(-vec3<i32>(-30439i, 2147483647i, -2770i) << (countOneBits(vec3<u32>(1u, 11259u, u_input.b)) % vec3<u32>(32u)))), _wgslsmith_mult_vec3_i32(u_input.a.wwx >> (~vec3<u32>(global0.x, u_input.b, u_input.b) % vec3<u32>(32u)), -vec3<i32>(_wgslsmith_mod_i32(u_input.a.x, arg_0), -1i, _wgslsmith_mod_i32(-1i, 22656i))), _wgslsmith_sub_i32(i32(-1i) * -2147483647i, -arg_0));
    let var_3 = Struct_3(var_2, all(vec4<bool>(true, true, true, true)), (select(abs(u_input.a), _wgslsmith_mult_vec4_i32(u_input.a, u_input.a), vec4<bool>(false, false, false, arg_1)) & u_input.a) << (~(~(~vec4<u32>(u_input.b, u_input.b, 22815u, global0.x))) % vec4<u32>(32u)), Struct_2(~u_input.a.x, _wgslsmith_div_u32(~118953u | global0.x, ~u_input.b << (reverseBits(u_input.b) % 32u)), Struct_1(_wgslsmith_clamp_vec3_i32(u_input.a.xzx, vec3<i32>(u_input.a.x, -17193i, -94i), vec3<i32>(arg_0, 28387i, arg_0)) ^ (var_2.a >> (vec3<u32>(17325u, global0.x, global0.x) % vec3<u32>(32u))), countOneBits(vec3<i32>(arg_0, var_2.b.x, -1i)), 36174i)), var_0.x);
    var var_4 = ~select(~vec4<u32>(global0.x, ~global0.x, _wgslsmith_div_u32(4294967295u, 4294967295u), u_input.b << (4294967295u % 32u)), (~vec4<u32>(var_3.d.b, u_input.b, 52716u, var_3.d.b) | vec4<u32>(1u, 77299u, 0u, global0.x)) & ~_wgslsmith_div_vec4_u32(vec4<u32>(var_3.d.b, global0.x, 0u, u_input.b), vec4<u32>(u_input.b, 15553u, global0.x, 57303u)), true);
    return true;
}

fn func_2() -> u32 {
    var var_0 = Struct_4(Struct_1(u_input.a.xzw, firstLeadingBit(u_input.a.xxz), _wgslsmith_mod_i32(u_input.a.x, 1i)), Struct_3(Struct_1(countOneBits(min(u_input.a.yyw, u_input.a.yyx)), max(vec3<i32>(-1i, 1i, u_input.a.x), u_input.a.xwz & u_input.a.yxy), -(~(-6768i))), func_3(1i, true) && (~u_input.a.x >= -u_input.a.x), u_input.a, Struct_2(_wgslsmith_mod_i32(-1i, -u_input.a.x), ~(global0.x >> (66568u % 32u)), Struct_1(reverseBits(u_input.a.wwx), u_input.a.yyw, u_input.a.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1099f)))))));
    var var_1 = select(!vec3<bool>(true, false, var_0.b.b), vec3<bool>(var_0.b.b, ~var_0.b.d.b == _wgslsmith_div_u32(_wgslsmith_div_u32(var_0.b.d.b, u_input.b), _wgslsmith_add_u32(u_input.b, var_0.b.d.b)), all(vec2<bool>(var_0.b.b, true))), !select(!(!vec3<bool>(var_0.b.b, false, var_0.b.b)), select(vec3<bool>(var_0.b.b, true, true), select(vec3<bool>(false, var_0.b.b, true), vec3<bool>(var_0.b.b, false, true), true), !var_0.b.b), vec3<bool>(!var_0.b.b, true, var_0.b.b && var_0.b.b)));
    var var_2 = Struct_4(Struct_1(~(~u_input.a.zww >> (~vec3<u32>(0u, var_0.b.d.b, var_0.b.d.b) % vec3<u32>(32u))), u_input.a.xyy ^ var_0.a.a, _wgslsmith_dot_vec4_i32(-vec4<i32>(2147483647i, var_0.b.c.x, u_input.a.x, -38981i), vec4<i32>(var_0.b.c.x, u_input.a.x, var_0.b.c.x, var_0.a.a.x)) | ~u_input.a.x), var_0.b);
    let var_3 = vec3<bool>(true, var_1.x, any(!select(vec3<bool>(true, var_0.b.b, var_0.b.b), !vec3<bool>(true, var_2.b.b, true), var_1.x)));
    var var_4 = Struct_4(var_0.a, var_0.b);
    return var_0.b.d.b;
}

fn func_1() -> Struct_1 {
    var var_0 = select(vec3<u32>(func_2() | _wgslsmith_mod_u32(global0.x, ~45521u), 1u, 39033u), vec3<u32>(~u_input.b, global0.x, global0.x), any(vec2<bool>(true, true)));
    var_0 = select(countOneBits(_wgslsmith_mod_vec3_u32(~vec3<u32>(21469u, var_0.x, global0.x), _wgslsmith_div_vec3_u32(~vec3<u32>(global0.x, var_0.x, var_0.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(14002u, global0.x, 1u), vec3<u32>(4294967295u, global0.x, var_0.x), vec3<u32>(14691u, 10855u, u_input.b))))), vec3<u32>(0u, 4294967295u, max(global0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(13112u, var_0.x, u_input.b), ~vec3<u32>(0u, 1u, global0.x)))), !any(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false))));
    let var_1 = Struct_4(Struct_1(select(vec3<i32>(0i, 0i << (0u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), u_input.a)), abs(u_input.a.xwz), false), ~u_input.a.zyz, u_input.a.x ^ u_input.a.x), Struct_3(Struct_1(vec3<i32>(1i, _wgslsmith_mult_i32(2147483647i, u_input.a.x), _wgslsmith_mult_i32(2147483647i, 1i)), -u_input.a.xzz, _wgslsmith_clamp_i32(firstLeadingBit(-1i), 2147483647i, 1i)), true, -_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 15010i, u_input.a.x, u_input.a.x), countOneBits(vec4<i32>(29081i, u_input.a.x, 28153i, -28766i))), Struct_2(-90170i, firstTrailingBit(_wgslsmith_clamp_u32(1u, 44941u, 4294967295u)), Struct_1(u_input.a.wxy, u_input.a.xwz, u_input.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-338f, -787f), -464f)) + _wgslsmith_f_op_f32(-885f + 314f))));
    let var_2 = Struct_1(_wgslsmith_mod_vec3_i32(abs(_wgslsmith_mod_vec3_i32(vec3<i32>(-37374i, 31168i, -18783i), u_input.a.zyy)), _wgslsmith_mod_vec3_i32(u_input.a.xyz, var_1.a.a)) & vec3<i32>(21697i, 9350i, firstTrailingBit(var_1.b.c.x)), _wgslsmith_mod_vec3_i32(abs(vec3<i32>(-1i, i32(-1i) * -32650i, -71233i)), ~(~_wgslsmith_mult_vec3_i32(u_input.a.wxy, u_input.a.yyw))), 0i);
    var var_3 = u_input.a.x != abs(var_2.c);
    return Struct_1(vec3<i32>(-1i) * -(vec3<i32>(var_2.a.x, var_1.a.a.x, var_1.a.c) << ((vec3<u32>(global0.x, 0u, var_0.x) & vec3<u32>(11023u, u_input.b, 49370u)) % vec3<u32>(32u))), ~var_1.b.a.a, abs(abs(75813i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(~(~(~(~vec3<u32>(global0.x, global0.x, 4294967295u)))));
    var var_0 = u_input.a.x;
    var var_1 = Struct_4(func_1(), Struct_3(func_1(), !select(true, true, func_3(u_input.a.x, false)), _wgslsmith_mult_vec4_i32(-u_input.a, -vec4<i32>(u_input.a.x, 1i, u_input.a.x, u_input.a.x) | _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, 0i, -3178i, -11057i), vec4<i32>(-6576i, 3890i, -2147483647i, u_input.a.x))), Struct_2(_wgslsmith_dot_vec2_i32(abs(u_input.a.xx), countOneBits(u_input.a.zy)), _wgslsmith_add_u32(global0.x, abs(0u)), func_1()), _wgslsmith_f_op_f32(trunc(-241f))));
    global0 = _wgslsmith_mult_vec3_u32(reverseBits(select(_wgslsmith_add_vec3_u32(vec3<u32>(var_1.b.d.b, u_input.b, 4126u), vec3<u32>(global0.x, u_input.b, u_input.b)), max(vec3<u32>(u_input.b, var_1.b.d.b, u_input.b), vec3<u32>(u_input.b, 15346u, global0.x)), vec3<bool>(false, var_1.b.b, true))) >> (~firstTrailingBit(vec3<u32>(var_1.b.d.b, 1u, global0.x)) % vec3<u32>(32u)), ~(~vec3<u32>(26956u, 1u, 4294967295u)));
    let var_2 = 1i;
    var var_3 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec4<i32>(1i, ~4193i, _wgslsmith_add_i32(var_1.b.d.c.a.x, var_1.a.a.x), -func_1().b.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, var_1.b.e, -499f, _wgslsmith_f_op_f32(abs(var_1.b.e))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-314f, -1285f, 801f, var_1.b.e), vec4<f32>(var_1.b.e, 519f, var_1.b.e, 411f)))))))), 0u, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1392f, _wgslsmith_f_op_f32(trunc(var_1.b.e))))));
}

