struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 4>;

var<private> global1: Struct_1;

var<private> global2: array<u32, 19> = array<u32, 19>(4294967295u, 11212u, 53862u, 14842u, 28185u, 39738u, 0u, 0u, 0u, 1u, 1u, 17612u, 4294967295u, 37481u, 1u, 0u, 0u, 2239u, 1u);

var<private> global3: array<bool, 9>;

var<private> global4: i32 = i32(-2147483648);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec4<f32> {
    global0 = array<f32, 4>();
    var var_0 = vec4<u32>(~(~countOneBits(89894u)), ~u_input.b.x, 1u, 2112u & ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(u_input.b.x, 19u)], 19u)], 19u)], 19u)]);
    let var_1 = Struct_2(vec4<bool>(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(abs(u_input.b.x), 11669u, global2[_wgslsmith_index_u32(var_0.x, 19u)], _wgslsmith_clamp_u32(28449u, 28868u, 0u)), (vec4<u32>(0u, 45546u, 1u, u_input.b.x) & vec4<u32>(1u, 58402u, u_input.b.x, 65720u)) ^ min(vec4<u32>(4294967295u, var_0.x, 1u, 0u), vec4<u32>(0u, 0u, 69344u, u_input.b.x))), 9u)], global1.a || false, select(true, global3[_wgslsmith_index_u32(0u, 9u)] && (global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(67406u, 19u)], 9u)] == false), global3[_wgslsmith_index_u32(~(global2[_wgslsmith_index_u32(2910u, 19u)] ^ u_input.b.x), 9u)]), global1.a));
    global1 = Struct_1(33219i >= _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, ~u_input.a, u_input.c.x), firstLeadingBit(vec3<i32>(u_input.a, u_input.c.x, -11212i))));
    global0 = array<f32, 4>();
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(var_0.x, 4u)])), -746f, _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(u_input.b.x, 4u)])), _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(4294967295u, 4u)]))))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(22998u, 4u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 19u)], 4u)], 482f, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(3870u, 19u)], 4u)])))))));
}

fn func_2(arg_0: Struct_3, arg_1: u32, arg_2: Struct_2) -> Struct_1 {
    global3 = array<bool, 9>();
    var var_0 = arg_2.a.x;
    global1 = Struct_1(all(select(!select(vec2<bool>(arg_2.a.x, true), vec2<bool>(false, arg_2.a.x), true), !arg_2.a.xy, arg_0.b.a.x)));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3()) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(603f, global0[_wgslsmith_index_u32(arg_0.a.x, 4u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 19u)], 4u)], 1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(arg_1, 4u)], global0[_wgslsmith_index_u32(10639u, 4u)], -1423f, global0[_wgslsmith_index_u32(1u, 4u)])), !arg_2.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1503f, -1558f, 134f, 521f))))), vec4<f32>(_wgslsmith_f_op_vec4_f32(func_3()).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 4u)])), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(467f * 1453f))), global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(countOneBits(12758u), arg_1), 19u)], 4u)]))));
    global2 = array<u32, 19>();
    return Struct_1(true);
}

fn func_1(arg_0: Struct_3) -> u32 {
    global2 = array<u32, 19>();
    global1 = func_2(arg_0, ~u_input.b.x, arg_0.b);
    var var_0 = u_input.c.x;
    global0 = array<f32, 4>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-851f, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0.a.x, 19u)], 19u)], 4u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 19u)], 4u)], 512f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(53412u, 4u)], -324f, 1000f, global0[_wgslsmith_index_u32(u_input.b.x, 4u)]))))), vec4<f32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b.zx, countOneBits(arg_0.a.wx)), 4u)], global0[_wgslsmith_index_u32(u_input.b.x, 4u)], global0[_wgslsmith_index_u32(max(global2[_wgslsmith_index_u32(arg_0.a.x, 19u)], 51853u) << (_wgslsmith_add_u32(u_input.b.x, u_input.b.x) % 32u), 4u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 4u)] + 1499f) * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 4u)] + global0[_wgslsmith_index_u32(78400u, 4u)]))))));
    return _wgslsmith_clamp_u32(~11480u, u_input.b.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(34084u, 12959u, 0u, arg_0.a.x), vec4<u32>(~u_input.b.x, select(arg_0.a.x, 66381u, true), min(global2[_wgslsmith_index_u32(67016u, 19u)], global2[_wgslsmith_index_u32(arg_0.a.x, 19u)]), ~arg_0.a.x)) | firstTrailingBit(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(10457u, 4294967295u), 19u)], 19u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~func_1(Struct_3((vec4<u32>(14754u, u_input.b.x, global2[_wgslsmith_index_u32(u_input.b.x, 19u)], global2[_wgslsmith_index_u32(u_input.b.x, 19u)]) | vec4<u32>(u_input.b.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 19u)], 19u)], 4294967295u, 4294967295u)) & ~vec4<u32>(global2[_wgslsmith_index_u32(58660u, 19u)], 35543u, 1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 19u)], 19u)], 19u)]), Struct_2(select(vec4<bool>(global1.a, global3[_wgslsmith_index_u32(u_input.b.x, 9u)], global1.a, true), vec4<bool>(true, false, global1.a, global1.a), vec4<bool>(global1.a, false, global1.a, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~abs(~var_0)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 4u)], global0[_wgslsmith_index_u32(4294967295u, 4u)]) + vec2<f32>(-830f, global0[_wgslsmith_index_u32(u_input.b.x, 4u)])) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1057f, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(42003u, 19u)], 4u)]), vec2<f32>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 19u)], 4u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 19u)], 4u)])))) + vec2<f32>(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(38754u, 4u)], 1113f, global1.a)), 899f)), vec2<f32>(1597f, -891f), -1099f != global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(global2[_wgslsmith_index_u32(u_input.b.x, 19u)], u_input.b.x), 4u)])));
}

