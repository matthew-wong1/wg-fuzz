struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: f32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 7>;

var<private> global1: array<bool, 10> = array<bool, 10>(false, true, false, true, true, false, true, false, false, false);

var<private> global2: Struct_1 = Struct_1(vec2<i32>(2147483647i, 26768i), vec3<bool>(true, false, false), 745f, vec2<f32>(-1232f, 656f));

var<private> global3: u32;

var<private> global4: Struct_1;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec3<u32>, arg_1: bool, arg_2: vec4<u32>, arg_3: Struct_1) -> bool {
    global3 = arg_2.x;
    var var_0 = firstTrailingBit(_wgslsmith_sub_vec3_u32(u_input.b.wwz, arg_2.zyx)) & arg_2.zyy;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1541f, global4.d.x, -1164f, -500f) - vec4<f32>(global0[_wgslsmith_index_u32(var_0.x, 7u)], global4.d.x, global2.d.x, global2.c)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-200f, global2.d.x, 267f, global2.d.x) - vec4<f32>(global2.c, -1436f, 1172f, arg_3.d.x))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.c, global0[_wgslsmith_index_u32(47157u, 7u)], -233f, 1479f) - vec4<f32>(global2.d.x, 1000f, 1328f, -2071f)))))));
    var var_2 = firstLeadingBit(~var_0.x);
    let var_3 = 34808u;
    return global4.b.x;
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: bool) -> i32 {
    var var_0 = arg_1;
    var var_1 = all(vec3<bool>(arg_1.b.x, select(any(vec4<bool>(arg_2, true, global4.b.x, false)), true, true), any(!vec4<bool>(global4.b.x, true, true, true))));
    var var_2 = global1[_wgslsmith_index_u32(~0u, 10u)];
    var var_3 = vec2<u32>(~(~(~0u)), u_input.b.x << (4294967295u % 32u));
    var_0 = Struct_1(global2.a, global4.b, _wgslsmith_f_op_f32(select(-1260f, _wgslsmith_f_op_f32(f32(-1f) * -108f), var_0.a.x < (firstLeadingBit(arg_0.x) << (firstTrailingBit(var_3.x) % 32u)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_0.d), vec2<f32>(_wgslsmith_f_op_f32(-arg_1.c), global2.d.x))));
    return var_0.a.x << (select(~(~var_3.x), ~_wgslsmith_dot_vec4_u32(abs(u_input.b), ~u_input.b), var_3.x >= _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.b.xw, u_input.b.ww), u_input.b.zy)) % 32u);
}

fn func_4(arg_0: i32, arg_1: vec3<bool>, arg_2: vec2<u32>, arg_3: f32) -> u32 {
    let var_0 = 1u;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global4.c)) * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~(~9962u), 7u)] * 1480f));
    var var_2 = Struct_1(-vec2<i32>(2147483647i, global2.a.x), vec3<bool>(true, select(!(-19356i < global2.a.x), true, false), false), 1124f, _wgslsmith_f_op_vec2_f32(-global4.d));
    let var_3 = Struct_1(~vec2<i32>(i32(-1i) * -8314i, arg_0), !var_2.b, _wgslsmith_f_op_f32(ceil(arg_3)), global4.d);
    let var_4 = arg_1;
    return reverseBits(_wgslsmith_mult_u32(countOneBits(u_input.b.x), 1u) ^ u_input.b.x) | u_input.b.x;
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: i32) -> vec3<u32> {
    global0 = array<f32, 7>();
    var var_0 = func_2(u_input.b.yxx, arg_1.b.x, u_input.b & vec4<u32>(64770u, 3253u, 1u, reverseBits(~1u)), arg_1);
    let var_1 = ~1u;
    var var_2 = u_input.b.xyx;
    var var_3 = arg_1;
    return abs(vec3<u32>(4294967295u, func_4(func_3(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, -2147483647i), vec2<i32>(global2.a.x, global2.a.x)), Struct_1(vec2<i32>(-1i, 0i), vec3<bool>(true, false, global1[_wgslsmith_index_u32(77518u, 10u)]), 3423f, vec2<f32>(arg_1.c, var_3.d.x)), false), select(vec3<bool>(arg_0, arg_0, arg_0), select(var_3.b, vec3<bool>(false, true, arg_1.b.x), global4.b), select(vec3<bool>(global1[_wgslsmith_index_u32(var_2.x, 10u)], true, false), var_3.b, vec3<bool>(false, global4.b.x, arg_1.b.x))), u_input.b.yz, var_3.c), _wgslsmith_dot_vec2_u32(vec2<u32>(7379u, var_1), vec2<u32>(var_2.x, countOneBits(39059u)))));
}

fn func_5(arg_0: vec3<u32>) -> Struct_1 {
    return Struct_1(~_wgslsmith_mult_vec2_i32(vec2<i32>(72590i, u_input.a), -vec2<i32>(-36201i, global2.a.x)) ^ (global4.a >> (min(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(67168u, u_input.b.x)), ~u_input.b.xw) % vec2<u32>(32u))), global2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_0.x, 7u)] * global4.c) - _wgslsmith_f_op_f32(max(global2.d.x, 187f)))) + global4.c), _wgslsmith_f_op_vec2_f32(global4.d * global2.d));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_5(_wgslsmith_sub_vec3_u32(u_input.b.xzz, func_1(global4.b.x == global2.b.x, Struct_1(vec2<i32>(-33720i, global4.a.x), vec3<bool>(false, true, global4.b.x), 1000f, global4.d), vec2<i32>(u_input.a, u_input.a), -global2.a.x)) | _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x ^ u_input.b.x, 1u, u_input.b.x), u_input.b.zzw));
    var var_0 = 1u;
    let var_1 = func_5(u_input.b.zzx);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.d.x)))) + global0[_wgslsmith_index_u32(4294967295u, 7u)]));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(u_input.b.xyx, u_input.b.ywy), u_input.b.wwz), ~vec3<u32>(9727u, 4294967295u, u_input.b.x)), 1u), 293f, vec2<f32>(-1605f, _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b.x, ~1u), 7u)], _wgslsmith_f_op_f32(global4.d.x * _wgslsmith_f_op_f32(-var_1.d.x))))));
}

