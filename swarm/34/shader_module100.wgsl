struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: bool,
    d: bool,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec2<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: f32, arg_3: Struct_1) -> f32 {
    global0 = array<u32, 8>();
    var var_0 = -2147483647i;
    let var_1 = !select(vec4<bool>(all(!arg_1.a.e), !any(vec2<bool>(arg_3.e.x, arg_1.a.c)), arg_1.a.c, all(!vec4<bool>(arg_3.e.x, arg_3.c, false, arg_1.a.d))), !(!(!vec4<bool>(arg_3.e.x, true, false, true))), arg_1.a.d);
    var var_2 = u_input.b;
    let var_3 = all(vec3<bool>(arg_1.a.c, false, !select(true, true, true)));
    return _wgslsmith_f_op_f32(-arg_3.b.x);
}

fn func_2() -> f32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_div_i32(31684i, (i32(-1i) * -37377i) << (_wgslsmith_sub_u32(1u, u_input.b.x) % 32u)), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(vec3<f32>(395f, -339f, 238f), Struct_2(Struct_1(-2147483647i, vec4<f32>(-567f, -779f, 1090f, 526f), true, false, vec3<bool>(true, true, true))), 231f, Struct_1(u_input.a.x, vec4<f32>(691f, 505f, -1000f, 149f), false, true, vec3<bool>(false, false, true)))))), 724f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-555f, 688f)), _wgslsmith_f_op_f32(f32(-1f) * -389f)), _wgslsmith_f_op_f32(-392f + _wgslsmith_f_op_f32(step(465f, 811f)))), true, !(true && any(vec2<bool>(true, false))), vec3<bool>(true, true, true)));
    var var_1 = _wgslsmith_mod_u32(_wgslsmith_mod_u32(~min(0u, global0[_wgslsmith_index_u32(4294967295u, 8u)]) ^ (abs(96775u) ^ _wgslsmith_clamp_u32(51891u, 1u, 53482u)), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(u_input.c, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(58863u, 8u)], 8u)], 8u)], 1u), 0u, abs(1u), abs(8396u)), ~u_input.b & _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, 1u, u_input.b.x, global0[_wgslsmith_index_u32(u_input.b.x, 8u)]), u_input.b))), ~u_input.c);
    var_0 = Struct_2(var_0.a);
    let var_2 = var_0.a;
    var var_3 = _wgslsmith_div_vec2_f32(vec2<f32>(964f, -957f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.a.b.zz, var_2.b.yx))));
    return -1000f;
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: vec3<u32>) -> u32 {
    global0 = array<u32, 8>();
    var var_0 = arg_2.zz;
    var var_1 = arg_0.a.c;
    var var_2 = select(select(vec4<bool>(any(vec2<bool>(true, arg_1)), !arg_1, _wgslsmith_f_op_f32(func_2()) == -274f, true), !vec4<bool>(!arg_1, select(arg_0.a.e.x, false, true), !arg_0.a.e.x, !arg_0.a.e.x), true), select(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(arg_0.a.d, true, false, true), vec4<bool>(true, true, false, true), false), select(vec4<bool>(arg_0.a.e.x, false, arg_0.a.e.x, true), vec4<bool>(true, true, false, arg_1), arg_0.a.d), false), arg_1), vec4<bool>(!any(arg_0.a.e.yz), any(select(vec4<bool>(arg_1, arg_0.a.c, true, true), vec4<bool>(arg_1, arg_0.a.d, true, false), vec4<bool>(true, false, arg_1, arg_0.a.c))), any(arg_0.a.e.zy), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.a.a, 2147483647i, 1i), vec3<i32>(-37413i, 0i, arg_0.a.a)) > u_input.a.x), all(select(vec3<bool>(true, true, arg_0.a.e.x), select(vec3<bool>(false, false, true), vec3<bool>(true, arg_1, arg_1), true), select(vec3<bool>(true, arg_1, arg_0.a.d), arg_0.a.e, arg_0.a.e)))), !select(select(vec4<bool>(false, false, arg_0.a.e.x, true), vec4<bool>(arg_1, true, true, arg_1), select(vec4<bool>(false, arg_0.a.d, arg_1, false), vec4<bool>(false, arg_0.a.c, arg_0.a.e.x, arg_1), arg_1)), select(vec4<bool>(arg_0.a.e.x, true, arg_1, false), vec4<bool>(false, true, arg_0.a.d, true), arg_1), !select(vec4<bool>(arg_0.a.e.x, false, false, true), vec4<bool>(arg_1, arg_0.a.e.x, false, arg_1), arg_0.a.d)));
    var var_3 = 1514f;
    return arg_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -581f;
    var var_1 = min(max(max(2262u, ~countOneBits(1u)), 1u << (0u % 32u)), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 8u)], 8u)]);
    let var_2 = _wgslsmith_clamp_u32(~(~_wgslsmith_mod_u32(firstLeadingBit(44203u), func_1(Struct_2(Struct_1(2147483647i, vec4<f32>(var_0, 132f, -317f, var_0), false, false, vec3<bool>(false, true, false))), true, vec3<u32>(72705u, 1u, 49753u)))), func_1(Struct_2(Struct_1(_wgslsmith_dot_vec3_i32(u_input.a.zwx, vec3<i32>(32547i, u_input.a.x, 2147483647i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, -518f, 1006f)), -2147483647i <= u_input.a.x, any(vec2<bool>(false, true)), vec3<bool>(false, true, true))), all(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), false), true)), select(u_input.b.wwy, countOneBits(u_input.b.xzy), any(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false)))), _wgslsmith_mult_u32(4294967295u | u_input.b.x, 33819u));
    global0 = array<u32, 8>();
    let var_3 = Struct_2(Struct_1(-9825i, vec4<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(var_0 * 2468f), 475f, _wgslsmith_f_op_f32(ceil(var_0))), any(vec4<bool>(true, 2147483647i < u_input.a.x, all(vec3<bool>(true, true, false)), true)), all(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(var_3.a.a), vec2<i32>(~(countOneBits(u_input.a.x) | ~u_input.a.x), 1i ^ -(u_input.a.x | var_3.a.a)), ~u_input.b.yyz, _wgslsmith_f_op_vec2_f32(var_3.a.b.wy * vec2<f32>(var_3.a.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.a.b.x + -1000f) * _wgslsmith_f_op_f32(var_3.a.b.x * 151f)))), _wgslsmith_mult_vec4_i32(firstLeadingBit(u_input.a), vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.a.wwy << (u_input.b.zzw % vec3<u32>(32u)), u_input.a.yxy), min(-2147483647i, 0i), -u_input.a.x, var_3.a.a)));
}

