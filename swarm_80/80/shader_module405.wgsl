struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 17>;

var<private> global1: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(-2221i), Struct_1(29420i), Struct_1(71514i), Struct_1(-1i));

var<private> global2: array<Struct_1, 15>;

var<private> global3: array<bool, 6>;

var<private> global4: Struct_1;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global3 = array<bool, 6>();
    global0 = array<vec4<f32>, 17>();
    var var_0 = firstTrailingBit(_wgslsmith_mod_vec3_i32(-(vec3<i32>(28725i, arg_0.a, -2147483647i) | vec3<i32>(0i, -2147483647i, global4.a)), vec3<i32>(-1i) * -vec3<i32>(0i, 1i, -15175i)) << ((~_wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.c, u_input.c), vec3<u32>(u_input.c, 0u, 37029u)) ^ countOneBits(~vec3<u32>(u_input.c, 0u, u_input.c))) % vec3<u32>(32u)));
    var var_1 = vec3<i32>(-1i, ~(~arg_0.a) & ~_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(arg_0.a, global4.a, global4.a)), ~vec3<i32>(2147483647i, global4.a, var_0.x)), _wgslsmith_mult_i32(-31721i, var_0.x));
    let var_2 = arg_0;
    return var_2;
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: u32) -> u32 {
    var var_0 = reverseBits(arg_0.zy) ^ (countOneBits(firstLeadingBit(u_input.b)) >> (abs(firstLeadingBit(vec2<u32>(arg_3, 10518u)) | _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 83142u), vec2<u32>(arg_3, arg_3))) % vec2<u32>(32u)));
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(1228f)), -837f)), 535f, global4.a <= ~global4.a)))));
    var var_2 = func_2(Struct_1(arg_1.a));
    let var_3 = select(arg_2, arg_2, vec3<bool>(0i > select(max(u_input.a, var_2.a), reverseBits(-17828i), global3[_wgslsmith_index_u32(~59199u, 6u)]), !global3[_wgslsmith_index_u32(48992u, 6u)], arg_2.x));
    var var_4 = func_2(Struct_1(-26078i));
    return 78148u;
}

fn func_1(arg_0: vec3<i32>) -> Struct_1 {
    let var_0 = func_2(global1[_wgslsmith_index_u32(28234u, 4u)]);
    var var_1 = (u_input.b.x << (_wgslsmith_sub_u32(41826u, select(func_3(arg_0, global2[_wgslsmith_index_u32(19472u, 15u)], vec3<bool>(false, global3[_wgslsmith_index_u32(u_input.c, 6u)], global3[_wgslsmith_index_u32(u_input.c, 6u)]), u_input.c), ~u_input.c, global3[_wgslsmith_index_u32(u_input.c, 6u)])) % 32u)) < -2147483647i;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(768f, -1276f))) - _wgslsmith_f_op_f32(trunc(1513f))))) + -1690f);
    var var_3 = global3[_wgslsmith_index_u32(0u, 6u)];
    return Struct_1(19390i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(-vec3<i32>(0i, 19513i, 1i));
    global0 = array<vec4<f32>, 17>();
    global4 = Struct_1(global4.a);
    var_0 = global1[_wgslsmith_index_u32(~countOneBits(_wgslsmith_clamp_u32(0u, (u_input.c | u_input.c) ^ u_input.c, _wgslsmith_sub_u32(~0u, u_input.c))), 4u)];
    let x = u_input.a;
    s_output = StorageBuffer(-countOneBits(vec2<i32>(712i, 1i)), vec4<u32>(~_wgslsmith_clamp_u32(u_input.c ^ 41238u, 67435u << (u_input.c % 32u), ~u_input.c), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, 0u), vec4<u32>(u_input.c, 1u, u_input.c, 0u)), 89972u >> (u_input.c % 32u), 5317u), ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, 9523u, 4294967295u, 87434u), vec4<u32>(u_input.c, 4294967295u, u_input.c, u_input.c)) ^ vec4<u32>(u_input.c, 107463u, max(u_input.c, 33729u), u_input.c)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(223f * -798f))));
}

