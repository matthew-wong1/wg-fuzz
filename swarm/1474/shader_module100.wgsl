struct Struct_1 {
    a: vec3<f32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<u32, 16> = array<u32, 16>(4294967295u, 4294967295u, 0u, 112430u, 0u, 14231u, 1u, 4294967295u, 3479u, 28209u, 85531u, 21519u, 20571u, 19007u, 0u, 48110u);

var<private> global2: vec3<f32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32) -> vec4<bool> {
    let var_0 = -1932f;
    let var_1 = select(!select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec2<bool>(true, true)), !select(vec2<bool>(true, true), vec2<bool>(true, false), true)), vec2<bool>(false, false), select(!select(vec2<bool>(true, true), vec2<bool>(true, true), true), !vec2<bool>(all(vec4<bool>(false, false, true, false)), all(vec3<bool>(false, true, true))), any(vec2<bool>(true, true))));
    let var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-916f * -144f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(387f, -406f)) + _wgslsmith_f_op_f32(min(var_0, var_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + _wgslsmith_f_op_f32(963f + -1676f))), global2.x), !var_1.x);
    global2 = _wgslsmith_f_op_vec3_f32(var_2.a + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(f32(-1f) * -453f), var_2.a.x)))));
    let var_3 = Struct_1(var_2.a, false);
    return select(select(vec4<bool>(true, !var_2.b, !var_2.b, true), vec4<bool>(true, var_1.x | !var_2.b, var_1.x, true), all(select(!vec4<bool>(var_3.b, false, true, var_3.b), !vec4<bool>(var_2.b, var_2.b, var_2.b, false), true))), !(!select(select(vec4<bool>(var_2.b, false, true, true), vec4<bool>(var_1.x, true, true, var_1.x), var_1.x), select(vec4<bool>(var_2.b, false, true, false), vec4<bool>(false, var_3.b, var_3.b, var_2.b), vec4<bool>(var_2.b, false, var_3.b, false)), true)), select(select(vec4<bool>(true, var_2.b | false, any(vec3<bool>(var_2.b, true, true)), true), !select(vec4<bool>(true, var_2.b, false, true), vec4<bool>(var_2.b, true, true, true), vec4<bool>(false, var_2.b, true, false)), !(!vec4<bool>(true, var_2.b, true, var_1.x))), !select(!vec4<bool>(true, true, false, var_2.b), !vec4<bool>(false, var_2.b, true, false), true), !(!all(vec3<bool>(var_3.b, true, var_3.b)))));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec3<f32>) -> Struct_1 {
    let var_0 = vec2<bool>(all(!func_3(u_input.a)), true && (_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_2.x)), 978f) < 785f));
    var var_1 = 4294967295u;
    global0 = _wgslsmith_clamp_u32(u_input.c, global1[_wgslsmith_index_u32(43634u, 16u)], 1u);
    var var_2 = Struct_1(arg_2, !(!((u_input.c >= u_input.c) | any(vec3<bool>(arg_0.b, true, var_0.x)))));
    var var_3 = ~(~(~abs(~vec2<u32>(global1[_wgslsmith_index_u32(u_input.c, 16u)], 51286u))));
    return Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(arg_0.a)))), arg_2, select(vec3<bool>(select(true, false, var_2.b), true, !arg_1.x), !select(arg_1, arg_1, arg_1.x), arg_0.b))), true);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: i32) -> vec2<f32> {
    global0 = 46690u;
    let var_0 = select(_wgslsmith_add_u32(_wgslsmith_mult_u32(4294967295u, 0u), global1[_wgslsmith_index_u32(~countOneBits(68197u), 16u)]), 67894u, true) ^ 4294967295u;
    var var_1 = Struct_1(vec3<f32>(_wgslsmith_div_f32(-347f, _wgslsmith_f_op_f32(-arg_0.a.x)), arg_0.a.x, 329f), true);
    global0 = var_0;
    let var_2 = vec4<u32>(20837u, 58342u, _wgslsmith_add_u32(u_input.c, _wgslsmith_mod_u32(~global1[_wgslsmith_index_u32(4294967295u, 16u)], var_0) >> (max(4866u, 20901u) % 32u)), ~var_0);
    return _wgslsmith_f_op_vec2_f32(-func_2(Struct_1(_wgslsmith_f_op_vec3_f32(-func_2(arg_0, vec3<bool>(var_1.b, arg_1, arg_0.b), var_1.a).a), true), vec3<bool>(arg_0.b, func_2(arg_0, vec3<bool>(false, true, true), var_1.a).b || true, true), var_1.a).a.yy);
}

fn func_1(arg_0: u32, arg_1: vec4<i32>, arg_2: vec4<f32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(func_2(Struct_1(arg_2.ywx, true), vec3<bool>(true, true, false), arg_2.zwx), true, -(i32(-1i) * -34692i)))) - global2.zy);
    global1 = array<u32, 16>();
    var var_1 = vec3<bool>(func_2(func_2(Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, var_0.x, arg_2.x), vec3<f32>(1157f, arg_2.x, var_0.x)), true), vec3<bool>(true, true, true), vec3<f32>(global2.x, _wgslsmith_f_op_f32(-global2.x), 384f)), !(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false)), arg_2.zzw).b, true && (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(563f))) == -339f), !func_2(Struct_1(_wgslsmith_f_op_vec3_f32(exp2(arg_2.wzy)), all(vec4<bool>(false, false, false, true))), vec3<bool>(true, true, true), vec3<f32>(global2.x, -671f, _wgslsmith_div_f32(var_0.x, -213f))).b);
    global0 = select(4294967295u, _wgslsmith_sub_u32(0u, ~(~firstTrailingBit(4294967295u))), !var_1.x);
    let var_2 = 1471f;
    return _wgslsmith_f_op_f32(-var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(u_input.c >> (~4294967295u % 32u));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1013f)), 233f) * _wgslsmith_f_op_f32(func_1(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(46706u, 16u)], 16u)], 16u)] & 1u, vec4<i32>(2147483647i, u_input.b.x, 40448i, -2147483647i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-510f, global2.x, global2.x, global2.x))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global2.x, global2.x, false)), -253f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(countOneBits(global1[_wgslsmith_index_u32(3441u, 16u)]), vec4<i32>(u_input.b.x, 21190i, u_input.a, 18681i), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2.x, 855f, -346f, -285f))))) * -1382f)));
    var var_2 = global2.yy;
    let var_3 = u_input.b.xyy;
    var var_4 = func_2(Struct_1(func_2(Struct_1(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1263f, -2436f, global2.x))), true), !func_3(1i).wxz, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, -159f, var_2.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1241f, 571f, 435f)), vec3<bool>(true, false, false)))).a, any(vec4<bool>(true, false, true, all(vec4<bool>(true, false, true, false))))), !select(vec3<bool>(any(vec4<bool>(true, true, false, false)), true, true), !select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false), vec3<bool>(true, true, var_2.x >= var_2.x)), vec3<f32>(_wgslsmith_f_op_f32(min(var_2.x, -2135f)), _wgslsmith_f_op_f32(f32(-1f) * -607f), _wgslsmith_f_op_f32(func_1(_wgslsmith_mod_u32(~4294967295u, ~u_input.c), ~u_input.b, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1417f, global2.x, var_2.x, var_2.x))))))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(-44832i), _wgslsmith_f_op_f32(f32(-1f) * -866f), abs(_wgslsmith_add_vec2_u32(vec2<u32>(5670u, 109059u), _wgslsmith_add_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(u_input.c, 16u)], 4294967295u) | vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(13915u, 16u)]), ~vec2<u32>(global1[_wgslsmith_index_u32(u_input.c, 16u)], u_input.c)))), vec3<u32>(global1[_wgslsmith_index_u32(u_input.c, 16u)], _wgslsmith_add_u32(~min(global1[_wgslsmith_index_u32(0u, 16u)], global1[_wgslsmith_index_u32(12705u, 16u)]), 736u), 30688u));
}

