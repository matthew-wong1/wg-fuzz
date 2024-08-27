struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: f32,
    d: i32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 14>;

var<private> global1: array<i32, 4> = array<i32, 4>(-38716i, -28804i, -21182i, 0i);

var<private> global2: array<bool, 19> = array<bool, 19>(false, true, false, true, true, false, true, false, true, true, true, false, true, false, true, true, true, false, false);

var<private> global3: array<Struct_1, 3>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1) -> u32 {
    global3 = array<Struct_1, 3>();
    var var_0 = Struct_1(select(~_wgslsmith_dot_vec4_i32(min(arg_0, vec4<i32>(7438i, global1[_wgslsmith_index_u32(u_input.b, 4u)], arg_1.d, arg_1.e.x)), arg_0), ~(-arg_1.d), !global2[_wgslsmith_index_u32(u_input.b, 19u)]), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1f), arg_1.c, -408f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(arg_1.b)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-897f, 600f, arg_1.b.x) - vec3<f32>(arg_1.c, -624f, arg_1.b.x))))), arg_1.b.x, 0i, arg_1.e);
    let var_1 = !(!select(!vec4<bool>(global2[_wgslsmith_index_u32(28032u, 19u)], false, false, global2[_wgslsmith_index_u32(0u, 19u)]), vec4<bool>(true, all(vec3<bool>(global2[_wgslsmith_index_u32(39783u, 19u)], global2[_wgslsmith_index_u32(0u, 19u)], false)), global2[_wgslsmith_index_u32(u_input.b, 19u)] | false, false), select(!vec4<bool>(false, true, false, global2[_wgslsmith_index_u32(u_input.b, 19u)]), vec4<bool>(global2[_wgslsmith_index_u32(u_input.d.x, 19u)], global2[_wgslsmith_index_u32(734u, 19u)], true, true), true)));
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(472f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.c + _wgslsmith_f_op_f32(abs(var_0.c))) + var_0.b.x)));
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1172f);
    return 4294967295u;
}

fn func_2(arg_0: f32, arg_1: vec3<u32>) -> Struct_2 {
    let var_0 = u_input.a.x;
    global2 = array<bool, 19>();
    global0 = array<Struct_2, 14>();
    var var_1 = global3[_wgslsmith_index_u32(~arg_1.x, 3u)];
    var var_2 = -303f;
    return Struct_2(global3[_wgslsmith_index_u32(88357u, 3u)], vec3<bool>(any(!vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 19u)], global2[_wgslsmith_index_u32(u_input.d.x, 19u)], global2[_wgslsmith_index_u32(u_input.b, 19u)], false)), any(!vec4<bool>(global2[_wgslsmith_index_u32(u_input.d.x, 19u)], false, true, false)), (1u >> (_wgslsmith_add_u32(u_input.b, arg_1.x) % 32u)) < firstTrailingBit(func_3(vec4<i32>(3852i, global1[_wgslsmith_index_u32(22097u, 4u)], -26827i, var_0), global3[_wgslsmith_index_u32(17448u, 3u)]))), vec4<i32>(-1i, reverseBits(global1[_wgslsmith_index_u32(min(arg_1.x, arg_1.x), 4u)] & min(38861i, var_1.e.x)), abs(abs(~u_input.a.x)), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(-16594i, _wgslsmith_sub_i32(var_0, -1i), ~u_input.a.x), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, var_0, 10475i), vec3<i32>(global1[_wgslsmith_index_u32(47712u, 4u)], -24759i, 413i)), -1i))));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: f32) -> u32 {
    global3 = array<Struct_1, 3>();
    global1 = array<i32, 4>();
    global2 = array<bool, 19>();
    let var_0 = func_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-281f)), _wgslsmith_f_op_f32(arg_2 - arg_2), arg_2 < arg_2))))), select(u_input.d.yyy, u_input.d.yzy, true || (false | global2[_wgslsmith_index_u32(u_input.d.x, 19u)])) << ((~vec3<u32>(8173u, u_input.c, u_input.b) << (u_input.d.wxx % vec3<u32>(32u))) % vec3<u32>(32u)));
    let var_1 = Struct_2(global3[_wgslsmith_index_u32(u_input.d.x ^ _wgslsmith_mod_u32(select(4294967295u, max(u_input.b, u_input.b), -162f <= var_0.a.c), ~_wgslsmith_dot_vec2_u32(u_input.d.ww, vec2<u32>(u_input.c, u_input.d.x))), 3u)], var_0.b, var_0.c);
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec4<u32>(select(1u, 0u, global2[_wgslsmith_index_u32(u_input.d.x, 19u)]), u_input.c, _wgslsmith_sub_u32(24541u, firstLeadingBit(u_input.c)), ~_wgslsmith_sub_u32(func_1(vec2<i32>(6853i, 1i), vec4<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 19u)], false, global2[_wgslsmith_index_u32(34560u, 19u)]), 1000f), 44046u));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_2(_wgslsmith_f_op_f32(floor(-510f)), vec3<u32>(var_0.x, 0u, var_0.x)).a.c) * -1579f), _wgslsmith_f_op_f32(abs(-311f)));
    var var_2 = global1[_wgslsmith_index_u32(~min(var_0.x, _wgslsmith_clamp_u32(0u ^ u_input.c, 0u, var_0.x)), 4u)];
    var var_3 = min(u_input.d.x, 8321u) & _wgslsmith_clamp_u32(0u, var_0.x, 25276u);
    var var_4 = !(!(!vec3<bool>(false && global2[_wgslsmith_index_u32(var_0.x, 19u)], any(vec3<bool>(global2[_wgslsmith_index_u32(var_0.x, 19u)], global2[_wgslsmith_index_u32(31964u, 19u)], global2[_wgslsmith_index_u32(4294967295u, 19u)])), false)));
    let var_5 = select(vec4<bool>(true != var_4.x, false, !var_4.x, var_4.x), !(!(!(!vec4<bool>(var_4.x, true, true, var_4.x)))), vec4<bool>(var_4.x, true & (_wgslsmith_dot_vec3_u32(var_0.zwx, vec3<u32>(var_0.x, 11977u, 1u)) < func_3(vec4<i32>(1i, 52204i, global1[_wgslsmith_index_u32(var_0.x, 4u)], global1[_wgslsmith_index_u32(var_0.x, 4u)]), Struct_1(-22519i, vec3<f32>(var_1.x, var_1.x, 1912f), 1223f, global1[_wgslsmith_index_u32(u_input.b, 4u)], vec2<i32>(-2147483647i, 1i)))), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, var_0.x, 61449u, var_0.x), u_input.d) >> (~u_input.d % vec4<u32>(32u)), abs(u_input.d)), 19u)], all(!select(vec4<bool>(global2[_wgslsmith_index_u32(var_0.x, 19u)], false, var_4.x, false), vec4<bool>(true, var_4.x, false, var_4.x), false))));
    var var_6 = global0[_wgslsmith_index_u32(u_input.c | ~_wgslsmith_dot_vec3_u32(select(abs(vec3<u32>(var_0.x, u_input.b, 1u)), vec3<u32>(14270u, 27970u, u_input.b) & var_0.yxw, vec3<bool>(var_4.x, global2[_wgslsmith_index_u32(var_0.x, 19u)], global2[_wgslsmith_index_u32(var_0.x, 19u)])), ~vec3<u32>(var_0.x, 4294967295u, var_0.x)), 14u)];
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -255f)), u_input.a, firstTrailingBit(-_wgslsmith_mod_i32(-1i, u_input.a.x & -136822i)));
}

