struct Struct_1 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: f32,
    d: f32,
    e: f32,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: i32,
    b: vec2<bool>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 5>;

var<private> global1: bool = true;

var<private> global2: array<f32, 6> = array<f32, 6>(-135f, -185f, -105f, 813f, 589f, 511f);

var<private> global3: array<bool, 11>;

var<private> global4: array<Struct_1, 8>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: vec3<bool>, arg_2: vec4<bool>, arg_3: vec3<f32>) -> f32 {
    global1 = !any(arg_1);
    global1 = true;
    global1 = any(!arg_2.yxz);
    global3 = array<bool, 11>();
    let var_0 = Struct_4(arg_0, vec2<bool>(true, arg_1.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_3.zz - arg_3.yx) + arg_3.xz));
    return -236f;
}

fn func_2(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_2, arg_3: u32) -> u32 {
    global4 = array<Struct_1, 8>();
    let var_0 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -427f), _wgslsmith_f_op_f32(arg_2.d - _wgslsmith_f_op_f32(select(arg_1, arg_2.c, !global3[_wgslsmith_index_u32(87641u, 11u)]))), false)), ~max(arg_2.b, reverseBits(arg_3 >> (u_input.b % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.a - _wgslsmith_f_op_f32(1119f + 161f)), _wgslsmith_f_op_f32(func_3(_wgslsmith_dot_vec2_i32(arg_0, arg_0), vec3<bool>(false, global3[_wgslsmith_index_u32(1u, 11u)], global3[_wgslsmith_index_u32(31640u, 11u)]), vec4<bool>(global3[_wgslsmith_index_u32(27104u, 11u)], false, global3[_wgslsmith_index_u32(42743u, 11u)], global3[_wgslsmith_index_u32(arg_2.b, 11u)]), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-556f, -248f, -874f)))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(-9546i, vec3<bool>(global3[_wgslsmith_index_u32(u_input.b, 11u)], false, true), global0[_wgslsmith_index_u32(arg_2.b, 5u)], vec3<f32>(-505f, arg_2.c, -461f))), global2[_wgslsmith_index_u32(max(6884u, 39881u), 6u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))))), _wgslsmith_div_f32(_wgslsmith_div_f32(-909f, _wgslsmith_f_op_f32(trunc(-998f))), arg_2.c));
    return ~_wgslsmith_add_u32(~countOneBits(4294967295u), ~u_input.b);
}

fn func_1() -> u32 {
    let var_0 = vec2<u32>(1u, 4294967295u);
    let var_1 = countOneBits(var_0.x) >> (func_2(-(countOneBits(vec2<i32>(-1i, u_input.c)) | firstTrailingBit(vec2<i32>(1i, -1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 6u)]) + _wgslsmith_f_op_f32(floor(-187f)))), Struct_2(_wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(1u, 6u)])), 62172u, 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(38085u, 6u)] * global2[_wgslsmith_index_u32(12845u, 6u)])), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-682f, global2[_wgslsmith_index_u32(1u, 6u)]))), 4294967295u) % 32u);
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 6u)]), _wgslsmith_div_f32(271f, -1000f), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(42237u, 60173u), 6u)]), _wgslsmith_div_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 6u)], global2[_wgslsmith_index_u32(29892u, 6u)], 228f), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(u_input.b, 6u)], 562f, -417f) * vec3<f32>(global2[_wgslsmith_index_u32(u_input.b, 6u)], 1702f, global2[_wgslsmith_index_u32(var_0.x, 6u)])))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(1u, 6u)], -506f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_0.x, 6u)] * _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.b, 6u)] - 167f)))));
    global1 = global3[_wgslsmith_index_u32(23686u, 11u)] & all(!global0[_wgslsmith_index_u32(var_1, 5u)]);
    var_2 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-298f * var_2.x), global2[_wgslsmith_index_u32(var_0.x, 6u)])), _wgslsmith_f_op_f32(sign(-1445f)), 285f);
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<bool, 11>();
    global1 = !any(!select(vec2<bool>(global3[_wgslsmith_index_u32(u_input.b, 11u)], false), vec2<bool>(global3[_wgslsmith_index_u32(63410u, 11u)], false), true)) && (!global3[_wgslsmith_index_u32(abs(~u_input.b), 11u)] | !global3[_wgslsmith_index_u32(func_1(), 11u)]);
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1072f - -369f), -1602f)))), _wgslsmith_dot_vec4_u32(~select(firstLeadingBit(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)), vec4<u32>(24208u, 0u, u_input.b, 1u) | vec4<u32>(u_input.b, 4294967295u, u_input.b, u_input.b), false), firstLeadingBit(_wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(u_input.b, 0u, u_input.b, u_input.b)), min(vec4<u32>(64328u, 84512u, u_input.b, u_input.b), vec4<u32>(0u, u_input.b, 1u, 2432u))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -372f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-117f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1002f - global2[_wgslsmith_index_u32(u_input.b, 6u)]))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2387f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -147f)), _wgslsmith_f_op_f32(func_3(u_input.a, select(vec3<bool>(u_input.b <= 26636u, false, global3[_wgslsmith_index_u32(u_input.b, 11u)]), !vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 11u)], true, false), !(!vec3<bool>(false, global3[_wgslsmith_index_u32(u_input.b, 11u)], global3[_wgslsmith_index_u32(u_input.b, 11u)]))), global0[_wgslsmith_index_u32(u_input.b, 5u)], _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, global2[_wgslsmith_index_u32(u_input.b, 6u)], 1215f) + vec3<f32>(global2[_wgslsmith_index_u32(34160u, 6u)], -160f, -946f)))))));
    global4 = array<Struct_1, 8>();
    let var_1 = Struct_4(_wgslsmith_mod_i32(select(u_input.a, _wgslsmith_add_i32(u_input.a, 13991i), select(u_input.c >= u_input.c, true, true)), u_input.c), vec2<bool>(all(!vec3<bool>(false, global3[_wgslsmith_index_u32(var_0.b, 11u)], global3[_wgslsmith_index_u32(95460u, 11u)])), global3[_wgslsmith_index_u32(~_wgslsmith_mult_u32(~var_0.b, 1u), 11u)]), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c, var_0.a) + vec2<f32>(-105f, -453f))))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1000f, -931f)))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(u_input.b, 6u)], var_1.c.x, 970f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c.x, 408f, 538f) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.d, 643f, 814f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-736f, _wgslsmith_f_op_f32(f32(-1f) * -786f), var_0.e) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(164f, global2[_wgslsmith_index_u32(98823u, 6u)], global2[_wgslsmith_index_u32(var_0.b, 6u)]), vec3<f32>(global2[_wgslsmith_index_u32(0u, 6u)], -1000f, var_1.c.x), vec3<bool>(false, false, global3[_wgslsmith_index_u32(0u, 11u)]))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, global2[_wgslsmith_index_u32(1215u, 6u)], 1734f) * vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 6u)], global2[_wgslsmith_index_u32(var_0.b, 6u)], var_1.c.x)), !vec3<bool>(true, var_1.b.x, global3[_wgslsmith_index_u32(u_input.b, 11u)])))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_div_f32(-545f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 6u)] * _wgslsmith_f_op_f32(-var_0.a))), 512f);
}

