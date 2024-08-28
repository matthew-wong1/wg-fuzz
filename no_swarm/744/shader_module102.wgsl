struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<vec2<i32>, 2> = array<vec2<i32>, 2>(vec2<i32>(25185i, 56090i), vec2<i32>(-52053i, i32(-2147483648)));

var<private> global2: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(i32(-2147483648), vec2<bool>(false, false), 0u), Struct_1(-1633i, vec2<bool>(false, true), 21118u), Struct_1(-1i, vec2<bool>(true, false), 23051u), Struct_1(21885i, vec2<bool>(false, true), 1923u), Struct_1(15912i, vec2<bool>(true, true), 4294967295u), Struct_1(33057i, vec2<bool>(false, false), 37455u), Struct_1(-18031i, vec2<bool>(true, false), 42842u), Struct_1(-51208i, vec2<bool>(true, true), 0u), Struct_1(77591i, vec2<bool>(false, true), 42219u), Struct_1(-20411i, vec2<bool>(true, true), 7690u), Struct_1(i32(-2147483648), vec2<bool>(true, false), 47766u), Struct_1(2147483647i, vec2<bool>(true, true), 56008u), Struct_1(2147483647i, vec2<bool>(true, false), 1u), Struct_1(-27605i, vec2<bool>(false, true), 0u), Struct_1(0i, vec2<bool>(true, false), 54232u), Struct_1(-21456i, vec2<bool>(true, false), 4294967295u), Struct_1(-2296i, vec2<bool>(false, true), 37814u), Struct_1(0i, vec2<bool>(false, true), 1u), Struct_1(-25251i, vec2<bool>(true, true), 4294967295u), Struct_1(i32(-2147483648), vec2<bool>(false, false), 1u), Struct_1(-1i, vec2<bool>(true, true), 1u), Struct_1(40584i, vec2<bool>(true, false), 1u), Struct_1(8899i, vec2<bool>(true, false), 1u), Struct_1(2147483647i, vec2<bool>(false, false), 0u), Struct_1(22947i, vec2<bool>(true, true), 0u), Struct_1(-46124i, vec2<bool>(false, true), 19019u), Struct_1(-1i, vec2<bool>(true, true), 810u), Struct_1(-1i, vec2<bool>(false, false), 3765u), Struct_1(0i, vec2<bool>(true, true), 11538u));

var<private> global3: array<Struct_1, 17>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> f32 {
    var var_0 = u_input.c;
    let var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, _wgslsmith_f_op_f32(min(-129f, global0.x)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(285f, global0.x), -1173f))), vec3<f32>(global0.x, _wgslsmith_f_op_f32(max(-1126f, _wgslsmith_f_op_f32(-global0.x))), global0.x))));
    global0 = vec2<f32>(_wgslsmith_div_f32(-321f, _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(153f + 931f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + global0.x) + _wgslsmith_f_op_f32(-624f - global0.x)) * 565f)));
    let var_2 = global3[_wgslsmith_index_u32(~(~u_input.c), 17u)];
    return -1425f;
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> f32 {
    global0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.x, _wgslsmith_f_op_f32(func_3()))))));
    let var_0 = global2[_wgslsmith_index_u32(u_input.b.x, 29u)];
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(38391u, select(~_wgslsmith_sub_u32(var_0.c >> (arg_1.c % 32u), 12185u), 10971u, all(vec2<bool>(var_0.b.x, true)))), 29u)];
    let var_2 = vec4<u32>(firstTrailingBit(reverseBits(_wgslsmith_dot_vec3_u32(u_input.b, u_input.b))) >> (~var_0.c % 32u), u_input.c, var_1.c, max(_wgslsmith_add_u32(~select(var_0.c, var_1.c, false), var_0.c), min(_wgslsmith_mod_u32(4294967295u, 151417u) >> (select(u_input.b.x, 4294967295u, false) % 32u), u_input.b.x)));
    global2 = array<Struct_1, 29>();
    return -111f;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<i32>) -> vec2<f32> {
    let var_0 = !select(!vec4<bool>(true, false, select(false, false, false), 519f != global0.x), vec4<bool>(global0.x <= -1034f, any(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false))), true, false), vec4<bool>(true, true, true, true));
    global3 = array<Struct_1, 17>();
    global1 = array<vec2<i32>, 2>();
    var var_1 = 0u;
    let var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(global0.x, Struct_1(-1i, var_0.xw, u_input.b.x))) + _wgslsmith_f_op_f32(abs(global0.x))), 468f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.x))))), _wgslsmith_f_op_f32(f32(-1f) * -542f)), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.x + 429f))), global0.x, -741f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(278f - -1774f))))));
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(209f - var_2.x), global0.x))), global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<f32>(-1622f, 590f);
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(179f))), global0.x)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(countOneBits(~u_input.b), global1[_wgslsmith_index_u32(~(~4294967295u), 2u)])) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -216f)), vec2<f32>(175f, -707f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(600f, global0.x) * vec2<f32>(-1474f, -1024f)), vec2<f32>(global0.x, -720f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-368f - -1036f))), firstTrailingBit(1u), _wgslsmith_mult_vec2_u32(firstLeadingBit(countOneBits(u_input.b.xy)), u_input.b.zx), select(u_input.b, select(vec3<u32>(45017u, min(0u, 22517u), ~u_input.b.x), ~vec3<u32>(44703u, 46081u, 22796u), false), !(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), false))), vec2<f32>(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_vec2_f32(func_1(u_input.b ^ u_input.b, -global1[_wgslsmith_index_u32(u_input.c, 2u)])).x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(899f + -1376f) + global0.x)));
}

