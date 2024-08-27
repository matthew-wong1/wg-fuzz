struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
    c: i32,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: f32,
    d: vec3<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 20>;

var<private> global1: Struct_3;

var<private> global2: u32;

var<private> global3: array<i32, 25>;

var<private> global4: array<i32, 8> = array<i32, 8>(i32(-2147483648), i32(-2147483648), i32(-2147483648), -1i, 13639i, -73277i, 25492i, 1i);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_4) -> vec3<bool> {
    let var_0 = vec2<bool>(true, true);
    let var_1 = arg_0.a;
    let var_2 = Struct_3(global1.b, global1.b, Struct_1(true, !select(!vec2<bool>(global1.b.d, true), vec2<bool>(global1.a.d, var_0.x), vec2<bool>(false, false)), 4294967295u));
    let var_3 = var_2;
    global4 = array<i32, 8>();
    return select(!(!(!select(vec3<bool>(false, true, false), vec3<bool>(false, global1.b.e.b.x, true), var_2.a.d))), select(!vec3<bool>(any(vec3<bool>(var_3.a.e.b.x, var_2.c.a, false)), !var_2.b.d, !var_0.x), !(!(!vec3<bool>(global1.b.d, global1.b.d, true))), all(!select(vec3<bool>(true, false, var_2.a.e.a), vec3<bool>(var_3.c.a, false, global1.c.b.x), false))), true);
}

fn func_2(arg_0: Struct_4, arg_1: i32, arg_2: Struct_1, arg_3: u32) -> vec3<bool> {
    let var_0 = global1.a;
    var var_1 = Struct_4(49241u);
    let var_2 = _wgslsmith_f_op_f32(global1.b.b + var_0.b);
    var_1 = Struct_4(abs(arg_3));
    let var_3 = ~((_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -1i), vec2<i32>(1i, 1i)) | _wgslsmith_dot_vec2_i32(vec2<i32>(16187i, global3[_wgslsmith_index_u32(37215u, 25u)]), select(vec2<i32>(-118828i, var_0.c), vec2<i32>(global3[_wgslsmith_index_u32(arg_0.a, 25u)], var_0.c), var_0.e.a))) >> (var_0.a.x % 32u));
    return select(select(vec3<bool>(var_0.d, !(!arg_2.a), true), select(func_3(Struct_4(arg_3)), vec3<bool>(!global1.a.e.a, arg_2.b.x & var_0.e.b.x, !global1.c.a), global1.a.e.a), vec3<bool>(global1.a.d, true, var_0.e.b.x)), vec3<bool>(false, !(global4[_wgslsmith_index_u32(14406u, 8u)] > _wgslsmith_sub_i32(1i, -1394i)), true), select(func_3(arg_0), func_3(Struct_4(var_1.a)), func_3(arg_0)));
}

fn func_1() -> vec2<bool> {
    var var_0 = any(select(func_2(Struct_4(22075u), 0i, Struct_1(-2147483647i <= u_input.a, vec2<bool>(global1.b.e.a, true), abs(4294967295u)), abs(global1.b.e.c)), vec3<bool>(-7593i > global3[_wgslsmith_index_u32(~4294967295u, 25u)], true, !global1.b.e.b.x), vec3<bool>(global1.b.d & (global1.b.d & true), !(2147483647i > global4[_wgslsmith_index_u32(global1.a.a.x, 8u)]), false)));
    global3 = array<i32, 25>();
    let var_1 = ~(-13669i) | abs(abs(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(31583u, 0u, 1u), vec3<u32>(global1.a.a.x, 1u, global1.b.e.c)), global1.c.c >> (0u % 32u)), 25u)]));
    var var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1.b.b, -286f))))), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -557f), global1.b.b)), _wgslsmith_f_op_f32(floor(-205f))))));
    var var_3 = global1.b.d;
    return global1.b.e.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(true, true);
    let var_1 = Struct_2(global1.a.a, global1.b.b, _wgslsmith_sub_i32(-u_input.a, global3[_wgslsmith_index_u32(~(~96153u), 25u)]), true, Struct_1(any(vec2<bool>(true, true)) || false, !func_1(), ~_wgslsmith_mod_u32(min(33910u, global1.a.a.x), 4294967295u)));
    var_0 = var_1.e.b;
    let var_2 = ~46365u;
    let var_3 = ~vec4<u32>(_wgslsmith_dot_vec2_u32(max(firstLeadingBit(global1.a.a), vec2<u32>(78067u, var_1.e.c)), ~var_1.a), _wgslsmith_mult_u32(var_2 & 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.e.c, 38516u), vec2<u32>(var_2, global1.a.e.c))) & 0u, max(var_2, ~4294967295u), 1u);
    var var_4 = ~0u;
    let x = u_input.a;
    s_output = StorageBuffer(var_3, 511f, _wgslsmith_f_op_f32(-var_1.b), countOneBits(vec3<u32>(firstLeadingBit(_wgslsmith_sub_u32(46403u, 9588u)), 36591u, global1.c.c)), firstLeadingBit(vec3<u32>(_wgslsmith_clamp_u32(~1u, var_2, 44450u), max(_wgslsmith_clamp_u32(var_3.x, 4294967295u, 1u), firstLeadingBit(3627u)), ~40153u)));
}

