struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: f32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<bool>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: Struct_1,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct Struct_5 {
    a: f32,
    b: vec2<i32>,
    c: i32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 19> = array<i32, 19>(-21386i, i32(-2147483648), 59828i, 42177i, 18186i, i32(-2147483648), -22100i, -1i, 22884i, 17562i, -1i, 0i, -1i, 2147483647i, 2147483647i, 59093i, 23497i, -1i, 1i);

var<private> global1: array<u32, 22>;

var<private> global2: Struct_5 = Struct_5(1000f, vec2<i32>(-16169i, 18168i), 1672i, vec3<u32>(5u, 35768u, 28859u));

var<private> global3: u32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: vec4<bool>, arg_1: f32) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-160f, _wgslsmith_div_f32(222f, _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(trunc(-3044f)), 0i != global2.b.x))))) * -334f);
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: u32, arg_3: Struct_1) -> bool {
    return true;
}

fn func_2(arg_0: f32, arg_1: Struct_3) -> vec3<bool> {
    let var_0 = true;
    var var_1 = true;
    global1 = array<u32, 22>();
    var var_2 = countOneBits(global0[_wgslsmith_index_u32(select(_wgslsmith_div_u32(4294967295u, 4294967295u ^ ~global2.d.x), 1u, all(vec3<bool>(all(vec2<bool>(var_0, true)), any(vec3<bool>(true, false, true)), true & var_0))), 19u)]);
    var var_3 = 0i;
    return select(vec3<bool>(var_0, any(vec4<bool>(false, func_3(8540u, u_input.b.x, 113313u, Struct_1(vec2<f32>(-769f, -192f), -262f, arg_1.a.x, u_input.a)), var_0 & true, var_0)), select(all(select(vec2<bool>(var_0, true), vec2<bool>(false, true), true)), var_0, _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(u_input.a.x, 22u)], u_input.a.x) == u_input.a.x)), !(!vec3<bool>(true, true, var_0 & var_0)), !select(select(vec3<bool>(true, var_0, true), select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, true, true), vec3<bool>(var_0, false, var_0)), arg_0 > global2.a), select(vec3<bool>(true, true, true), select(vec3<bool>(var_0, true, var_0), vec3<bool>(var_0, var_0, var_0), var_0), vec3<bool>(false, false, var_0)), var_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.d.x;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.a, global2.a, -454f), vec3<f32>(-832f, global2.a, global2.a), vec3<bool>(false, false, false))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-684f, -448f, -1271f)))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a, 1063f, 455f)), vec3<f32>(global2.a, global2.a, global2.a), vec3<bool>(true, false, false)))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1132f, -405f, 1000f))))), vec3<f32>(-730f, _wgslsmith_f_op_f32(func_1(vec4<bool>(false, false, true, false), global2.a)), -661f), func_2(_wgslsmith_f_op_f32(-global2.a), Struct_3(vec4<f32>(global2.a, 728f, global2.a, global2.a)))))));
    let var_2 = Struct_5(_wgslsmith_f_op_f32(f32(-1f) * -1712f), countOneBits(vec2<i32>(global2.c, ~global2.c)), 29634i, _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(2110u >> (1u % 32u), firstTrailingBit(global1[_wgslsmith_index_u32(global2.d.x, 22u)])), abs(global2.d.x), ~27724u), _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, u_input.a.x), u_input.a), vec3<u32>(67644u, global1[_wgslsmith_index_u32(1u, 22u)], 111672u)), abs(~vec3<u32>(2840u, global2.d.x, 1u)))));
    let var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(497f, -290f, -1796f, -2021f))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(378f, 1076f, -171f, var_1.x), vec4<f32>(777f, global2.a, global2.a, var_2.a), vec4<bool>(true, true, false, true))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a, -607f, var_2.a, -245f) + vec4<f32>(var_1.x, 433f, var_2.a, var_1.x)))))));
    global3 = firstTrailingBit(abs(global1[_wgslsmith_index_u32(abs(select(7688u, global2.d.x, true)), 22u)])) | (select(31391u, var_2.d.x, true) ^ select(global2.d.x, global2.d.x, false));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global2.a), _wgslsmith_f_op_f32(global2.a * _wgslsmith_f_op_f32(f32(-1f) * -740f)), 2266f) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-var_3.a.yyz))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(var_1))))), vec4<i32>(_wgslsmith_mod_i32(min(global0[_wgslsmith_index_u32(~4294967295u, 19u)], 2147483647i), global2.c), global0[_wgslsmith_index_u32(99455u, 19u)], var_2.b.x, 2147483647i), _wgslsmith_f_op_f32(f32(-1f) * -1029f));
}

