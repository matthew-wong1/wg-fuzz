struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: f32,
    d: bool,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<bool>,
    c: u32,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 28> = array<vec2<f32>, 28>(vec2<f32>(-1110f, -1000f), vec2<f32>(-167f, 704f), vec2<f32>(1911f, 742f), vec2<f32>(518f, 1435f), vec2<f32>(230f, -264f), vec2<f32>(1879f, -408f), vec2<f32>(1248f, 267f), vec2<f32>(-287f, 576f), vec2<f32>(754f, -1885f), vec2<f32>(-371f, 1275f), vec2<f32>(1318f, -656f), vec2<f32>(-200f, -1692f), vec2<f32>(825f, 137f), vec2<f32>(-557f, 335f), vec2<f32>(873f, 688f), vec2<f32>(-111f, -2045f), vec2<f32>(-666f, -143f), vec2<f32>(1848f, -692f), vec2<f32>(903f, 861f), vec2<f32>(971f, -599f), vec2<f32>(1737f, 447f), vec2<f32>(-697f, -159f), vec2<f32>(-1911f, 2092f), vec2<f32>(1717f, -1000f), vec2<f32>(854f, 984f), vec2<f32>(-2136f, 244f), vec2<f32>(459f, 1817f), vec2<f32>(-1724f, 326f));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<i32>, arg_1: f32, arg_2: vec4<bool>, arg_3: vec3<f32>) -> f32 {
    global0 = array<vec2<f32>, 28>();
    let var_0 = select(~u_input.a, _wgslsmith_add_vec2_u32(abs(vec2<u32>(1u, u_input.a.x)), countOneBits(u_input.a) | ~vec2<u32>(28317u, 0u)), select(vec2<bool>(arg_2.x, arg_2.x), vec2<bool>(arg_2.x, false), vec2<bool>(any(vec2<bool>(false, arg_2.x)), arg_2.x))) & vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.a, ~vec2<u32>(u_input.a.x, 67367u)), 4294967295u);
    global0 = array<vec2<f32>, 28>();
    var var_1 = Struct_2(vec2<i32>(u_input.c, _wgslsmith_sub_i32(~(u_input.c ^ arg_0.x), 32162i)), ~vec3<i32>(arg_0.x, arg_0.x, 1i) | _wgslsmith_mod_vec3_i32(min(vec3<i32>(-2147483647i, -2147483647i, arg_0.x), vec3<i32>(u_input.c, u_input.c, -20938i)) | (vec3<i32>(1i, arg_0.x, -45608i) >> (vec3<u32>(46755u, 12376u, 30963u) % vec3<u32>(32u))), vec3<i32>(abs(u_input.c), 7396i << (1u % 32u), _wgslsmith_mod_i32(u_input.c, -1i))), _wgslsmith_div_f32(arg_3.x, -1256f), !select(any(!arg_2.zyx), any(!vec3<bool>(arg_2.x, arg_2.x, true)), false));
    var var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global0[_wgslsmith_index_u32(0u, 28u)], vec2<f32>(933f, arg_3.x), arg_2.x)) * vec2<f32>(arg_1, arg_1)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, arg_1) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.c, arg_1), vec2<f32>(-1763f, 577f), vec2<bool>(true, arg_2.x)))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(global0[_wgslsmith_index_u32(u_input.b, 28u)], vec2<f32>(165f, var_1.c))))), arg_2.x)), arg_3.yx, (-var_1.b.x < ((-21281i & var_1.b.x) | _wgslsmith_sub_i32(var_1.a.x, -29058i))) && (var_0.x > ~max(0u, 1u))));
    return var_1.c;
}

fn func_2() -> f32 {
    global0 = array<vec2<f32>, 28>();
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1663f * -329f)))), _wgslsmith_div_f32(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(vec2<i32>(u_input.c, u_input.c), 1000f, vec4<bool>(true, true, false, true), vec3<f32>(1139f, 415f, -447f)))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(vec2<i32>(u_input.c, -6628i), -490f, vec4<bool>(true, false, true, false), vec3<f32>(571f, 571f, -253f))), _wgslsmith_f_op_f32(ceil(412f))) * -1140f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1486f)) - -317f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -280f), _wgslsmith_f_op_f32(step(-1121f, 817f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -500f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -700f))))));
    var var_1 = Struct_4(Struct_3((abs(vec4<i32>(0i, u_input.c, -7066i, u_input.c)) >> (min(vec4<u32>(u_input.b, 1u, 0u, u_input.a.x), vec4<u32>(u_input.b, u_input.a.x, 21539u, 1u)) % vec4<u32>(32u))) & ~(~vec4<i32>(u_input.c, 28798i, u_input.c, 0i))), vec2<bool>(any(select(vec4<bool>(false, false, false, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true)), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), false))), !all(vec4<bool>(false, false, true, true))), ~_wgslsmith_div_u32(1u, 1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + var_0.x), true);
    var var_2 = _wgslsmith_div_i32(var_1.a.a.x, -15133i);
    let var_3 = var_0.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1226f + -1000f)))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x)))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.d)) - 1188f)));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_4) -> Struct_1 {
    var var_0 = arg_1.b.x;
    var var_1 = 4294967295u;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -302f) * -1318f)), _wgslsmith_div_vec4_i32(abs(_wgslsmith_clamp_vec4_i32(arg_1.a.a, _wgslsmith_mult_vec4_i32(arg_1.a.a, arg_1.a.a), arg_1.a.a)), vec4<i32>(min(_wgslsmith_sub_i32(u_input.c, u_input.c), u_input.c), 2822i, ~0i, reverseBits(-20108i))), select(abs(vec4<u32>(1u, arg_1.c, arg_0.x, arg_0.x)) >> (vec4<u32>(_wgslsmith_dot_vec2_u32(arg_0, vec2<u32>(arg_0.x, 16762u)), select(arg_1.c, 28226u, arg_1.e), arg_1.c, u_input.a.x) % vec4<u32>(32u)), ~vec4<u32>(40932u, ~u_input.a.x, ~arg_1.c, abs(1u)), _wgslsmith_f_op_f32(select(arg_1.d, _wgslsmith_f_op_f32(-1656f * -408f), true)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.d)))), 1u, _wgslsmith_f_op_f32(-arg_1.d));
}

fn func_1() -> bool {
    let var_0 = func_4(~u_input.a >> (u_input.a % vec2<u32>(32u)), Struct_4(Struct_3(max(vec4<i32>(-38785i, 2147483647i, u_input.c, 4386i), vec4<i32>(-68213i, u_input.c, u_input.c, -56168i))), vec2<bool>(true, all(vec3<bool>(true, true, true))), select(u_input.b, ~countOneBits(1u), true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), 1f), true));
    var var_1 = select(select(vec4<bool>(true, true, false, true), vec4<bool>(firstLeadingBit(var_0.c.x) >= var_0.c.x, !(var_0.e != 246f), all(vec2<bool>(true, true)) || all(vec4<bool>(false, true, false, false)), false), true), vec4<bool>(true, true, true, true), true);
    var var_2 = var_0.a;
    return true;
}

fn func_5(arg_0: vec3<bool>) -> Struct_2 {
    var var_0 = Struct_1(579f, ~vec4<i32>(2147483647i, u_input.c, u_input.c, u_input.c), min(~abs(~vec4<u32>(u_input.a.x, 9085u, u_input.b, 1u)), vec4<u32>(~1u, u_input.b, _wgslsmith_sub_u32(~u_input.b, u_input.a.x), 4294967295u)), 1u, _wgslsmith_f_op_f32(f32(-1f) * -2238f));
    var_0 = func_4(~(~u_input.a) & ~vec2<u32>(abs(0u), 1u), Struct_4(Struct_3(var_0.b), select(vec2<bool>(select(true, arg_0.x, arg_0.x), all(vec4<bool>(false, false, false, false))), vec2<bool>(-1000f < var_0.a, arg_0.x), func_1()), 1u, _wgslsmith_f_op_f32(f32(-1f) * -588f), !select(any(vec2<bool>(false, arg_0.x)), arg_0.x, arg_0.x | arg_0.x)));
    var_0 = Struct_1(var_0.a, _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(select(var_0.b, ~var_0.b, arg_0.x), var_0.b), _wgslsmith_sub_vec4_i32(~_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, u_input.c, -1i, u_input.c), vec4<i32>(-24585i, var_0.b.x, var_0.b.x, var_0.b.x), vec4<i32>(u_input.c, 1i, 0i, 1i)), func_4(_wgslsmith_clamp_vec2_u32(u_input.a, u_input.a, vec2<u32>(u_input.a.x, 1u)), Struct_4(Struct_3(var_0.b), arg_0.yx, var_0.c.x, var_0.a, arg_0.x)).b)), vec4<u32>(_wgslsmith_mod_u32(var_0.c.x, abs(16937u) | _wgslsmith_div_u32(var_0.d, 59927u)), var_0.c.x, 1595u, u_input.b), u_input.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.a))))) * var_0.a));
    var var_1 = _wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-2119f)), _wgslsmith_f_op_f32(f32(-1f) * -1070f))));
    let var_2 = func_4(abs(vec2<u32>(_wgslsmith_sub_u32(2479u, var_0.c.x), var_0.c.x)) ^ var_0.c.xw, Struct_4(Struct_3(var_0.b), select(!select(vec2<bool>(arg_0.x, arg_0.x), arg_0.xz, arg_0.x), !select(vec2<bool>(arg_0.x, arg_0.x), arg_0.xz, vec2<bool>(arg_0.x, arg_0.x)), any(vec4<bool>(arg_0.x, true, true, false))), var_0.d, -437f, !(all(vec4<bool>(true, arg_0.x, false, arg_0.x)) && false)));
    return Struct_2(-var_2.b.zy, var_2.b.yzw, _wgslsmith_div_f32(var_2.a, -1023f), arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(select(vec3<bool>(!func_1(), false, false), !select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), true), !(u_input.b >= _wgslsmith_mod_u32(4294967295u, u_input.b))));
    var var_1 = select(var_0.b.zz, vec2<i32>(u_input.c, _wgslsmith_mod_i32(_wgslsmith_sub_i32(max(-27035i, 2147483647i), u_input.c), 1i)), vec2<bool>(true, var_0.c >= _wgslsmith_f_op_f32(-var_0.c)));
    var var_2 = Struct_4(Struct_3(~firstLeadingBit(vec4<i32>(-2014i, var_1.x, 11327i, -34238i) | vec4<i32>(-49910i, var_1.x, 2147483647i, 30785i))), select(vec2<bool>(var_0.d, true), vec2<bool>(any(select(vec4<bool>(var_0.d, false, false, false), vec4<bool>(true, var_0.d, var_0.d, false), vec4<bool>(var_0.d, var_0.d, true, var_0.d))), false), var_0.d), u_input.b, -161f, !(var_0.d != (func_4(vec2<u32>(u_input.a.x, 71790u), Struct_4(Struct_3(vec4<i32>(u_input.c, 15463i, var_1.x, -1i)), vec2<bool>(var_0.d, false), u_input.b, var_0.c, true)).e < var_0.c)));
    var var_3 = ~_wgslsmith_dot_vec3_u32(countOneBits(firstLeadingBit(vec3<u32>(1u, u_input.b, 0u))), vec3<u32>(_wgslsmith_div_u32(var_2.c, u_input.a.x << (u_input.a.x % 32u)), select(_wgslsmith_mult_u32(40450u, var_2.c), ~var_2.c, all(vec3<bool>(var_2.b.x, var_0.d, false))), ~_wgslsmith_add_u32(1u, 91407u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.x);
}

