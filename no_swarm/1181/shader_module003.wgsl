struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: f32,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_5 {
    a: Struct_3,
    b: f32,
    c: Struct_3,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 1>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<i32>) -> vec3<u32> {
    global0 = array<i32, 1>();
    let var_0 = Struct_1(_wgslsmith_dot_vec2_i32(abs(~(~vec2<i32>(-27903i, u_input.d))), vec2<i32>(-2147483647i, _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(15077u, 1u)] ^ 2147483647i, -u_input.d))), arg_0.xzy, 1i);
    var var_1 = Struct_3(min(~firstTrailingBit(vec3<u32>(1u, 4294967295u, u_input.e.x)) & ~u_input.c.xxy, select(~vec3<u32>(u_input.e.x, 22519u, 25631u), u_input.c.zzy, select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))), Struct_2(~(~u_input.c.x), Struct_1(arg_0.x, -arg_0.yxx, countOneBits(-10551i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-215f, -1316f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -140f) + _wgslsmith_f_op_f32(545f + 2078f)) * _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(321f, -413f), -1772f))), Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.a, 0u) | u_input.c.yyw, ~u_input.c.zww), 1u)], vec3<i32>(arg_0.x, -5304i, arg_0.x) << (abs(vec3<u32>(u_input.c.x, 50603u, u_input.a)) % vec3<u32>(32u)), arg_0.x)), -(i32(-1i) * -u_input.d));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-616f, var_1.b.d) + vec2<f32>(var_1.b.c, -649f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1369f, 941f)))));
    global0 = array<i32, 1>();
    return vec3<u32>(var_1.a.x, ~(~(_wgslsmith_clamp_u32(u_input.a, u_input.e.x, u_input.e.x) << (firstLeadingBit(4294967295u) % 32u))), var_1.a.x);
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: vec3<i32>) -> i32 {
    global0 = array<i32, 1>();
    global0 = array<i32, 1>();
    let var_0 = Struct_3(func_3(vec4<i32>(0i | arg_1.e.c, -global0[_wgslsmith_index_u32(~4294967295u, 1u)], -_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(38952u, 1u)], 62102i), abs(2147483647i))), Struct_2(53302u, Struct_1(arg_3.x, vec3<i32>(0i, _wgslsmith_mod_i32(arg_3.x, 2147483647i), -2147483647i), 2147483647i), arg_1.d, arg_1.d, Struct_1(-9850i, _wgslsmith_mult_vec3_i32(~arg_1.e.b, vec3<i32>(1i, arg_0, arg_3.x)), ~u_input.d >> (~u_input.a % 32u))), _wgslsmith_mod_i32(15459i, arg_3.x));
    let var_1 = ~1u;
    let var_2 = arg_2.x;
    return -var_0.c;
}

fn func_1() -> Struct_3 {
    let var_0 = 1226f;
    let var_1 = -8670i;
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(-510f)), -1000f));
    let var_3 = vec4<bool>(_wgslsmith_dot_vec2_i32(vec2<i32>(func_2(-2147483647i, Struct_2(u_input.c.x, Struct_1(-9980i, vec3<i32>(u_input.d, -15744i, -74439i), u_input.b.x), 1424f, -819f, Struct_1(0i, vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 1u)], 19907i, 20590i), var_1)), vec3<bool>(true, true, true), vec3<i32>(var_1, u_input.b.x, 1i)), _wgslsmith_clamp_i32(12851i, 2147483647i, global0[_wgslsmith_index_u32(21474u, 1u)])), vec2<i32>(22422i, min(u_input.b.x, -1i))) < (global0[_wgslsmith_index_u32(3871u, 1u)] & u_input.b.x), true, true, true);
    let var_4 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(232f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1403f + -1768f))), _wgslsmith_f_op_f32(-var_2.x), -889f, -678f), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0, _wgslsmith_f_op_f32(ceil(var_2.x)), -409f, var_0), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, var_2.x, -1601f, var_2.x), vec4<f32>(-1068f, 526f, var_0, -1355f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(950f, var_2.x, var_0, 543f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(173f, -540f, var_2.x, _wgslsmith_f_op_f32(var_2.x - 539f)) - vec4<f32>(1f, 1f, 1f, 1f)))));
    return Struct_3(abs(u_input.c.zzy), Struct_2(0u, Struct_1(min(10213i, -20264i), vec3<i32>(_wgslsmith_mod_i32(u_input.b.x, 0i), 29093i, 2147483647i), _wgslsmith_sub_i32(min(-8949i, 1i), ~var_1)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(var_0, 396f), 169f) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1108f))), Struct_1(u_input.d, vec3<i32>(~26973i, abs(var_1), -2147483647i), _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(~65338u, 1u)], 2147483647i | global0[_wgslsmith_index_u32(14592u, 1u)]))), select(global0[_wgslsmith_index_u32(~(~32195u), 1u)], _wgslsmith_add_i32(u_input.b.x >> (u_input.e.x % 32u), -23534i), any(select(select(vec4<bool>(false, var_3.x, var_3.x, false), vec4<bool>(true, false, true, true), var_3), select(var_3, vec4<bool>(true, var_3.x, true, var_3.x), var_3), vec4<bool>(true, true, var_3.x, var_3.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = Struct_4(func_1().b.e, ~(((vec4<i32>(15497i, -2147483647i, -10512i, -55897i) & vec4<i32>(global0[_wgslsmith_index_u32(38407u, 1u)], -15781i, u_input.b.x, global0[_wgslsmith_index_u32(26841u, 1u)])) | ~vec4<i32>(var_0.b.b.b.x, var_0.c, u_input.d, var_0.b.e.c)) << (countOneBits(u_input.c) % vec4<u32>(32u))));
    global0 = array<i32, 1>();
    let var_2 = _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(firstLeadingBit(vec2<u32>(1u, u_input.c.x)), ~u_input.c.yz) >> (u_input.e % vec2<u32>(32u)), abs(u_input.e)), ~min(~(~vec2<u32>(4294967295u, u_input.c.x)), ~(vec2<u32>(u_input.e.x, var_0.b.a) | u_input.c.wy)), ~vec2<u32>(19776u, ~(var_0.b.a & u_input.e.x)));
    var var_3 = all(!select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), all(vec2<bool>(false, true))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false))));
    global0 = array<i32, 1>();
    global0 = array<i32, 1>();
    var_3 = !(!(!all(vec3<bool>(true, true, true))));
    let var_4 = vec4<i32>(~var_1.a.b.x, var_0.b.b.c, func_2(81120i, Struct_2(var_2.x, func_1().b.e, _wgslsmith_f_op_f32(step(320f, _wgslsmith_f_op_f32(f32(-1f) * -1090f))), _wgslsmith_f_op_f32(f32(-1f) * -188f), Struct_1(func_2(var_1.b.x, var_0.b, vec3<bool>(false, true, false), vec3<i32>(-1i, var_1.a.c, -42766i)), countOneBits(vec3<i32>(-2147483647i, -878i, -71378i)), -31277i)), select(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false))), vec3<i32>(-(~(-3827i)), max(2147483647i, var_0.c) ^ -2147483647i, var_1.b.x)), abs((var_1.b.x >> (var_2.x % 32u)) << (1u % 32u)) & (u_input.b.x | -func_1().c));
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(_wgslsmith_div_i32(0i, var_0.c), global0[_wgslsmith_index_u32(abs(u_input.e.x) | 4294967295u, 1u)], var_4.x));
}

