struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: i32,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: vec4<i32>,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 19>;

var<private> global1: vec2<u32>;

var<private> global2: array<vec3<i32>, 24> = array<vec3<i32>, 24>(vec3<i32>(i32(-2147483648), i32(-2147483648), 1i), vec3<i32>(-21881i, 2147483647i, 9634i), vec3<i32>(2147483647i, 4140i, -1i), vec3<i32>(49002i, i32(-2147483648), -26681i), vec3<i32>(-1i, -64889i, 33933i), vec3<i32>(-8477i, 15370i, -2402i), vec3<i32>(-34238i, 21242i, 8830i), vec3<i32>(-40768i, -20363i, 3267i), vec3<i32>(0i, -28841i, -413i), vec3<i32>(i32(-2147483648), -9217i, i32(-2147483648)), vec3<i32>(7408i, 0i, -1i), vec3<i32>(i32(-2147483648), 0i, 0i), vec3<i32>(i32(-2147483648), 5972i, -45990i), vec3<i32>(2147483647i, -2101i, 2147483647i), vec3<i32>(30267i, -14610i, -33472i), vec3<i32>(2479i, -1i, -43462i), vec3<i32>(0i, -30077i, -1i), vec3<i32>(11142i, 0i, i32(-2147483648)), vec3<i32>(679i, 0i, 2147483647i), vec3<i32>(13106i, i32(-2147483648), 0i), vec3<i32>(-48317i, 1i, 4431i), vec3<i32>(15832i, 1i, 1i), vec3<i32>(0i, i32(-2147483648), 1i), vec3<i32>(0i, 2147483647i, 29719i));

var<private> global3: array<Struct_2, 9>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<f32>) -> vec2<bool> {
    global0 = array<i32, 19>();
    global1 = u_input.b.zz;
    var var_0 = !(!select(all(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true))), all(vec2<bool>(true, true)), false));
    var var_1 = vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + -301f)) * arg_0.x) * 1741f));
    global1 = u_input.a.yy;
    return select(!(!vec2<bool>(any(vec2<bool>(true, true)), global1.x >= 1u)), vec2<bool>(any(select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), false), vec4<bool>(true, true, true, true), global0[_wgslsmith_index_u32(global1.x, 19u)] >= -14546i)), any(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false)))), !any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)));
}

fn func_2(arg_0: vec3<bool>) -> vec2<u32> {
    var var_0 = arg_0;
    let var_1 = 871f;
    global2 = array<vec3<i32>, 24>();
    var var_2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1, var_1), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_1)), _wgslsmith_div_vec2_f32(vec2<f32>(1552f, var_1), vec2<f32>(-123f, var_1)))))), func_3(vec2<f32>(_wgslsmith_f_op_f32(sign(var_1)), _wgslsmith_f_op_f32(ceil(-1162f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(344f, -1074f), vec2<f32>(-608f, var_1), arg_0.x))))))));
    var var_3 = var_1;
    return ~select(u_input.b.xx, ~u_input.a.xz, !(!vec2<bool>(arg_0.x, var_0.x)));
}

fn func_1() -> vec4<bool> {
    global3 = array<Struct_2, 9>();
    global1 = ~func_2(vec3<bool>(true, true, select(true, false, true))) >> (select(select(u_input.b.xz, ~select(vec2<u32>(global1.x, 31036u), vec2<u32>(global1.x, u_input.b.x), true), true), u_input.a.wx, true) % vec2<u32>(32u));
    global0 = array<i32, 19>();
    global2 = array<vec3<i32>, 24>();
    var var_0 = abs(~_wgslsmith_clamp_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(1i, global0[_wgslsmith_index_u32(24027u, 19u)], 2147483647i, global0[_wgslsmith_index_u32(u_input.a.x, 19u)]), vec4<i32>(5017i, 0i, 16625i, global0[_wgslsmith_index_u32(89436u, 19u)])), abs(firstLeadingBit(vec4<i32>(-2147483647i, global0[_wgslsmith_index_u32(u_input.a.x, 19u)], 2147483647i, global0[_wgslsmith_index_u32(47274u, 19u)]))), vec4<i32>(0i, -28006i, ~global0[_wgslsmith_index_u32(1u, 19u)], 1i)));
    return select(vec4<bool>(any(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false))), !all(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false))), global1.x < countOneBits(_wgslsmith_clamp_u32(global1.x, 63983u, 4294967295u)), all(vec3<bool>(true, true, true))), vec4<bool>(any(vec3<bool>(true, true, func_3(vec2<f32>(-462f, -956f)).x)), func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-430f, 254f) + vec2<f32>(545f, -464f)) * vec2<f32>(-1000f, 593f))).x, !(-354f > _wgslsmith_f_op_f32(floor(-1102f))), all(select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), true))), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(func_1()) == (true == (any(vec2<bool>(true, true)) || any(vec3<bool>(true, false, true))));
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(0u << (global1.x % 32u), _wgslsmith_mult_u32(u_input.a.x, min(u_input.b.x, u_input.a.x))), 19u)], _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f * -297f))) - 681f), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + 756f), -1000f))))), _wgslsmith_mult_i32(i32(-1i) * -1i, 5165i), 11051u, u_input.b.x);
}

