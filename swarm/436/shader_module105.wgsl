struct Struct_1 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: i32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: u32,
    c: vec2<i32>,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: u32,
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

var<private> global0: u32 = 0u;

var<private> global1: array<Struct_4, 23>;

var<private> global2: array<i32, 1> = array<i32, 1>(7811i);

var<private> global3: array<f32, 2> = array<f32, 2>(-836f, 126f);

var<private> global4: vec2<bool> = vec2<bool>(true, true);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> vec2<i32> {
    global4 = !select(vec2<bool>(true, true || select(true, global4.x, true)), vec2<bool>(true, !global4.x), select(!(!vec2<bool>(global4.x, false)), vec2<bool>(all(vec2<bool>(true, global4.x)), global4.x), vec2<bool>(true, all(vec3<bool>(global4.x, false, false)))));
    global4 = vec2<bool>(true, true);
    var var_0 = u_input.a.xx;
    let var_1 = Struct_1(u_input.a.zx, false);
    var var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(1578u, 2u)], global3[_wgslsmith_index_u32(3210u, 2u)], -2075f, 813f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(u_input.d.x, 2u)], global3[_wgslsmith_index_u32(u_input.d.x, 2u)], 576f, 881f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(1130f)), _wgslsmith_f_op_f32(f32(-1f) * -1181f), _wgslsmith_f_op_f32(-477f - 4384f), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.e, 2u)])))), u_input.d.x, ~_wgslsmith_clamp_vec2_i32(u_input.a.xx, _wgslsmith_mod_vec2_i32(-vec2<i32>(0i, global2[_wgslsmith_index_u32(25329u, 1u)]), u_input.a.zy >> (vec2<u32>(0u, 34054u) % vec2<u32>(32u))), var_1.a), all(select(select(select(vec3<bool>(false, var_1.b, global4.x), vec3<bool>(global4.x, false, false), vec3<bool>(true, global4.x, false)), !vec3<bool>(global4.x, false, global4.x), !vec3<bool>(false, var_1.b, true)), vec3<bool>(true, any(vec3<bool>(var_1.b, false, global4.x)), all(vec2<bool>(var_1.b, true))), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.d.x, 2u)] * 694f) < _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.d.x, 2u)] + 481f))));
    return abs(-u_input.a.xy);
}

fn func_2(arg_0: vec3<u32>, arg_1: bool) -> bool {
    let var_0 = Struct_1(abs(-(~vec2<i32>(0i, u_input.c))) ^ _wgslsmith_sub_vec2_i32(func_3(), _wgslsmith_mod_vec2_i32(countOneBits(u_input.a.wx), _wgslsmith_mod_vec2_i32(u_input.a.wz, vec2<i32>(global2[_wgslsmith_index_u32(u_input.e, 1u)], u_input.a.x)))), !arg_1);
    global0 = ((67494u & arg_0.x) | _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.d.x, arg_0.x, arg_0.x), arg_0), reverseBits(_wgslsmith_div_vec3_u32(u_input.d.xzw, vec3<u32>(39409u, 48794u, arg_0.x))))) >> ((u_input.e << (_wgslsmith_mod_u32(_wgslsmith_mult_u32(~6538u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, 16424u, 39638u, arg_0.x), u_input.d)), u_input.e) % 32u)) % 32u);
    global4 = !vec2<bool>(all(select(vec4<bool>(var_0.b, var_0.b, false, arg_1), vec4<bool>(arg_1, true, global4.x, var_0.b), vec4<bool>(false, var_0.b, global4.x, true))) && true, global4.x);
    var var_1 = var_0;
    var var_2 = ~(arg_0.x >> (~(~33433u | min(arg_0.x, 15560u)) % 32u));
    return true;
}

fn func_1(arg_0: f32, arg_1: vec4<bool>, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = any(vec3<bool>(false, !func_2(select(vec3<u32>(u_input.d.x, 1u, 4294967295u), vec3<u32>(4294967295u, u_input.e, u_input.d.x), true), true), _wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(u_input.e | u_input.d.x, 2u)])) <= arg_0));
    global4 = select(!select(!arg_1.xy, vec2<bool>(any(vec4<bool>(global4.x, global4.x, true, false)), arg_1.x), true), vec2<bool>(arg_1.x | !any(vec2<bool>(arg_1.x, true)), arg_1.x), select(!(!arg_1.xx), vec2<bool>(global4.x | true, all(arg_1)), false));
    global2 = array<i32, 1>();
    global3 = array<f32, 2>();
    return Struct_1(-select(vec2<i32>(1i, firstTrailingBit(1i)), max(vec2<i32>(u_input.a.x, 1i), vec2<i32>(7041i, arg_2.x)), !arg_1.x), true);
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec2<bool>) -> vec2<bool> {
    var var_0 = u_input.e;
    let var_1 = ~abs(u_input.d);
    var_0 = 1u;
    let var_2 = Struct_3(firstTrailingBit(u_input.e), -(reverseBits(arg_1.a.x) | -28520i) << (u_input.d.x % 32u));
    var var_3 = global1[_wgslsmith_index_u32(0u, 23u)];
    return vec2<bool>(764f < _wgslsmith_f_op_f32(1864f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + arg_0)), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(abs(~u_input.e), abs(u_input.e)) & 11769u, 2u)]));
    global4 = select(select(vec2<bool>(!(global4.x & true), true), select(vec2<bool>(false, global4.x), select(vec2<bool>(global4.x, global4.x), !vec2<bool>(global4.x, global4.x), true), vec2<bool>(!global4.x, any(vec4<bool>(true, global4.x, true, global4.x)))), false), select(vec2<bool>(!global4.x, false), !select(vec2<bool>(false, false), vec2<bool>(global4.x, global4.x), !vec2<bool>(global4.x, true)), vec2<bool>(true, !global4.x)), !func_4(548f, func_1(global3[_wgslsmith_index_u32(u_input.e, 2u)], !vec4<bool>(false, true, global4.x, global4.x), -u_input.a.xzw), vec2<bool>(true, global3[_wgslsmith_index_u32(1u, 2u)] <= 1219f)));
    global3 = array<f32, 2>();
    var var_1 = !(!global4.x);
    global1 = array<Struct_4, 23>();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.e, u_input.d.x, 31054u, 56929u), u_input.d), u_input.d), 2u)] + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1u, 2u)]) - -658f))) * -788f);
    let var_3 = any(!vec3<bool>(true, !(!global4.x), !global4.x | func_2(vec3<u32>(u_input.d.x, 1u, 0u), global4.x)));
    let var_4 = Struct_2(select(vec2<u32>(~u_input.e, 1u) & u_input.d.zz, vec2<u32>(u_input.e, reverseBits(_wgslsmith_dot_vec3_u32(u_input.d.zwx, vec3<u32>(u_input.e, u_input.d.x, 0u)))), any(!select(vec3<bool>(true, false, true), vec3<bool>(global4.x, var_3, var_3), global4.x))));
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(~firstTrailingBit(var_4.a.x), 1u)]);
}

