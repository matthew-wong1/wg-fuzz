struct Struct_1 {
    a: u32,
    b: bool,
    c: u32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: bool,
    d: bool,
    e: f32,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
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

var<private> global0: array<f32, 6>;

var<private> global1: Struct_1 = Struct_1(19713u, true, 4294967295u, vec2<f32>(-1000f, 606f));

var<private> global2: Struct_2;

var<private> global3: array<vec3<f32>, 15> = array<vec3<f32>, 15>(vec3<f32>(588f, -249f, 1000f), vec3<f32>(-773f, 168f, 197f), vec3<f32>(-1098f, 1000f, -612f), vec3<f32>(-555f, 568f, -958f), vec3<f32>(-1319f, -1379f, -1207f), vec3<f32>(455f, -1438f, -679f), vec3<f32>(-977f, -291f, -792f), vec3<f32>(-985f, 496f, -1137f), vec3<f32>(-535f, -376f, -2392f), vec3<f32>(-599f, 631f, 1630f), vec3<f32>(-1792f, -294f, -1046f), vec3<f32>(873f, -560f, 1121f), vec3<f32>(-278f, -991f, -1713f), vec3<f32>(-1679f, 2696f, -328f), vec3<f32>(819f, 725f, 265f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: vec2<u32>, arg_3: i32) -> vec2<bool> {
    var var_0 = vec3<i32>(13500i, ~_wgslsmith_sub_i32(~(-arg_3), -(~arg_3)), abs(arg_3));
    var_0 = abs(~(abs(vec3<i32>(arg_3, var_0.x, 8100i)) >> (~arg_0.b.c % vec3<u32>(32u))));
    var var_1 = 1i;
    let var_2 = ~u_input.c;
    let var_3 = global2.c;
    return !select(arg_1.zy, select(vec2<bool>(true, arg_0.c), vec2<bool>(all(vec3<bool>(false, false, global2.b.b)), true && arg_0.c), arg_0.b.a.wy), arg_1.yz);
}

fn func_2(arg_0: vec3<i32>) -> Struct_2 {
    let var_0 = Struct_3(false, Struct_2(select(select(global2.a, vec4<bool>(true, false, global2.a.x, global1.b), global2.a.x), select(select(global2.a, global2.a, vec4<bool>(false, true, true, false)), select(vec4<bool>(global1.b, true, global1.b, true), global2.a, global1.b), global2.a), global2.a), global2.b, ~u_input.b.ywx), global1.b, !all(select(!vec4<bool>(false, true, false, global1.b), select(vec4<bool>(global1.b, false, global2.a.x, false), vec4<bool>(false, false, global2.b.b, true), global2.a.x), global2.a.x)), global1.d.x);
    global1 = Struct_1(global2.c.x, !any(vec2<bool>(global1.b | global2.b.b, global2.b.c <= 1u)), ~global1.c, _wgslsmith_f_op_vec2_f32(min(global2.b.d, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global2.b.d.x * global1.d.x), _wgslsmith_f_op_f32(-var_0.b.b.d.x))))));
    global3 = array<vec3<f32>, 15>();
    var var_1 = vec3<u32>(abs(1u), ~1u, 34057u);
    var var_2 = Struct_3(!(!all(func_3(Struct_3(false, var_0.b, var_0.a, true, global1.d.x), vec3<bool>(false, true, var_0.c), vec2<u32>(u_input.a, 0u), arg_0.x))), Struct_2(var_0.b.a, global2.b, global2.c), any(select(vec2<bool>(var_0.a, false), vec2<bool>(true, global2.b.b), global1.b)) || !(global2.a.x || any(global2.a.wyx)), true, _wgslsmith_f_op_f32(min(310f, _wgslsmith_f_op_f32(526f - _wgslsmith_div_f32(2478f, global0[_wgslsmith_index_u32(1u, 6u)])))));
    return var_0.b;
}

fn func_1() -> Struct_2 {
    let var_0 = global2.b;
    return func_2(select(~vec3<i32>(abs(-2147483647i), ~1i, -1i), abs(vec3<i32>(-1i) * -vec3<i32>(-28645i, -2202i, 40683i)), var_0.b));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1();
    global3 = array<vec3<f32>, 15>();
    global3 = array<vec3<f32>, 15>();
    var var_0 = global0[_wgslsmith_index_u32(global1.a, 6u)];
    var var_1 = 10641u;
    var var_2 = ~(-13459i >> (u_input.b.x % 32u));
    var var_3 = min(11744u, func_1().b.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(1i, firstLeadingBit(2147483647i)));
}

