struct Struct_1 {
    a: i32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec4<f32>,
    d: vec3<bool>,
    e: i32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec2<bool>,
    e: vec2<i32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_4,
    c: Struct_3,
    d: Struct_2,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 8> = array<vec3<u32>, 8>(vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(38320u, 0u, 0u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(43253u, 14666u, 88426u), vec3<u32>(8762u, 4294967295u, 27676u), vec3<u32>(4987u, 47700u, 15835u), vec3<u32>(0u, 1u, 126795u), vec3<u32>(4294967295u, 8139u, 4294967295u));

var<private> global1: array<i32, 26>;

var<private> global2: array<Struct_3, 4>;

var<private> global3: array<bool, 2> = array<bool, 2>(true, true);

var<private> global4: array<vec4<bool>, 11> = array<vec4<bool>, 11>(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true));

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: bool) -> Struct_1 {
    var var_0 = !(true || !(!arg_2 & true));
    var var_1 = arg_0;
    global0 = array<vec3<u32>, 8>();
    var var_2 = vec4<bool>(all(vec4<bool>(true, false, true, arg_2)), !global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(~arg_0.b.x, _wgslsmith_div_u32(~114461u, ~arg_0.b.x)), 2u)], all(vec3<bool>(arg_2, true, any(global4[_wgslsmith_index_u32(var_1.b.x, 11u)]))), true);
    global0 = array<vec3<u32>, 8>();
    return Struct_1(arg_0.a, abs(~(~(~arg_0.b))));
}

fn func_3(arg_0: vec4<u32>) -> i32 {
    var var_0 = ~_wgslsmith_mod_i32(~0i, u_input.c);
    let var_1 = firstLeadingBit(~abs(~_wgslsmith_mult_vec4_i32(vec4<i32>(46013i, global1[_wgslsmith_index_u32(u_input.d.x, 26u)], -21843i, 2147483647i), vec4<i32>(86291i, 2147483647i, global1[_wgslsmith_index_u32(u_input.b.x, 26u)], u_input.c))));
    let var_2 = true;
    let var_3 = -(~2147483647i);
    let var_4 = ~(~_wgslsmith_clamp_u32(arg_0.x, _wgslsmith_div_u32(~arg_0.x, select(u_input.d.x, 1u, global3[_wgslsmith_index_u32(u_input.b.x, 2u)])), u_input.b.x));
    return u_input.c;
}

fn func_2(arg_0: Struct_3) -> vec3<bool> {
    let var_0 = abs(reverseBits(min(vec3<i32>(-3302i, 1i, u_input.c) << (vec3<u32>(1u, arg_0.b.b.x, 0u) % vec3<u32>(32u)), vec3<i32>(0i, 9985i, -26547i))) ^ (min(vec3<i32>(global1[_wgslsmith_index_u32(arg_0.b.b.x, 26u)], -2147483647i, arg_0.e), vec3<i32>(global1[_wgslsmith_index_u32(1u, 26u)], u_input.c, global1[_wgslsmith_index_u32(arg_0.b.b.x, 26u)]) & vec3<i32>(global1[_wgslsmith_index_u32(u_input.a, 26u)], 41571i, u_input.c)) << (vec3<u32>(_wgslsmith_clamp_u32(0u, u_input.b.x, 1u), 1u << (0u % 32u), arg_0.b.b.x) % vec3<u32>(32u))));
    global2 = array<Struct_3, 4>();
    var var_1 = _wgslsmith_mod_vec2_i32(vec2<i32>(31462i, _wgslsmith_sub_i32(-82749i, select(func_3(vec4<u32>(arg_0.b.b.x, 4294967295u, u_input.d.x, 1u)), arg_0.e, arg_0.d.x))), reverseBits(select(var_0.yx | var_0.zy, vec2<i32>(global1[_wgslsmith_index_u32(53189u, 26u)], u_input.c), arg_0.d.x) << (~u_input.b.zy % vec2<u32>(32u))));
    var var_2 = all(select(!arg_0.d.yz, !arg_0.d.xy, false)) && all(select(vec2<bool>(true, global1[_wgslsmith_index_u32(1u, 26u)] >= u_input.c), arg_0.d.xx, false));
    var_2 = false;
    return !select(arg_0.d, !vec3<bool>(arg_0.d.x | true, arg_0.d.x, true), false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(!(!(!(global3[_wgslsmith_index_u32(12700u, 2u)] && global3[_wgslsmith_index_u32(u_input.a, 2u)]))), false);
    let var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-898f, -1000f))))) + 1000f), func_1(Struct_1((global1[_wgslsmith_index_u32(u_input.b.x, 26u)] ^ -16221i) >> (0u % 32u), u_input.b.yw), abs(vec4<i32>(abs(1i), i32(-1i) * -2147483647i, select(3672i, global1[_wgslsmith_index_u32(u_input.b.x, 26u)], false), global1[_wgslsmith_index_u32(4294967295u, 26u)])), ((true && var_0.x) | var_0.x) & !any(vec3<bool>(global3[_wgslsmith_index_u32(40578u, 2u)], false, true))), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1f * 2424f))), 1159f, -2110f, _wgslsmith_div_f32(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1000f, 375f)), _wgslsmith_f_op_f32(min(1624f, -214f))))), select(!(!(!vec3<bool>(false, false, global3[_wgslsmith_index_u32(1u, 2u)]))), !vec3<bool>(global3[_wgslsmith_index_u32(1u, 2u)], true, true), select(select(vec3<bool>(false, true, var_0.x), vec3<bool>(true, true, true), false), func_2(global2[_wgslsmith_index_u32(4294967295u, 4u)]), global3[_wgslsmith_index_u32(6716u, 2u)])), -(i32(-1i) * -2147483647i));
    let var_2 = u_input.c;
    var var_3 = select(vec2<i32>(~_wgslsmith_dot_vec2_i32(-vec2<i32>(var_2, var_2), vec2<i32>(u_input.c, u_input.c)), func_1(Struct_1(~var_1.b.a, select(var_1.b.b, vec2<u32>(u_input.b.x, var_1.b.b.x), false)), _wgslsmith_mod_vec4_i32(vec4<i32>(-31708i, -34079i, var_1.b.a, -1i), vec4<i32>(var_2, var_2, global1[_wgslsmith_index_u32(30624u, 26u)], u_input.c)), !var_1.d.x).a), select(-_wgslsmith_div_vec2_i32(vec2<i32>(-27133i, var_1.e), vec2<i32>(-25107i, 1i)), vec2<i32>(13355i, var_2), !var_0) ^ ~abs(-vec2<i32>(u_input.c, var_1.b.a)), all(!(!select(vec2<bool>(var_1.d.x, true), var_0, true))));
    var var_4 = !select(!var_0, var_0, select(!global3[_wgslsmith_index_u32(94690u << (var_1.b.b.x % 32u), 2u)], func_2(var_1).x && var_0.x, false));
    var var_5 = Struct_1(global1[_wgslsmith_index_u32(0u, 26u)], ~(abs(vec2<u32>(u_input.d.x, 147374u)) & abs(abs(vec2<u32>(u_input.b.x, 4294967295u)))));
    let var_6 = select(!var_1.d, var_1.d, !select(vec3<bool>(var_1.d.x, true, true), select(var_1.d, !vec3<bool>(var_0.x, var_0.x, true), !var_1.d.x), vec3<bool>(all(global4[_wgslsmith_index_u32(4294967295u, 11u)]), any(vec3<bool>(false, true, false)), true)));
    let var_7 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.x * -1669f)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a));
    let var_8 = Struct_3(-974f, Struct_1(var_1.b.a, ~vec2<u32>(1u, min(4294967295u, 10791u))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(var_1.c, vec4<f32>(var_1.c.x, var_1.a, var_1.c.x, -1497f))) + var_1.c) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(642f, 1000f, var_1.c.x, 445f) + var_1.c) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, var_1.a, -2073f, 1373f), var_1.c, vec4<bool>(false, true, var_7, var_7))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) + _wgslsmith_f_op_f32(var_1.a - var_1.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -234f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-644f * -857f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c.x + -452f) + var_1.c.x))), vec3<bool>(true, all(vec3<bool>(var_1.a == var_1.a, any(vec2<bool>(var_4.x, var_0.x)), false)), true), var_2);
    let x = u_input.a;
    s_output = StorageBuffer(var_8.c);
}

