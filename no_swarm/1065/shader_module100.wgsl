struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 6>;

var<private> global1: array<Struct_1, 12>;

var<private> global2: array<f32, 5> = array<f32, 5>(1878f, -145f, 785f, -120f, -1200f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: f32, arg_3: vec3<f32>) -> vec2<bool> {
    let var_0 = global1[_wgslsmith_index_u32(37446u, 12u)];
    global2 = array<f32, 5>();
    global2 = array<f32, 5>();
    global1 = array<Struct_1, 12>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(100f + -2340f)) * _wgslsmith_f_op_f32(-arg_2));
    return var_0.a;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> vec3<i32> {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~(4294967295u >> (u_input.b % 32u)), 1u), 5u)])), Struct_1(arg_0.a));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(27910u, 5u)] + global2[_wgslsmith_index_u32(0u, 5u)]), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(62753u, 5u)] - global2[_wgslsmith_index_u32(4294967295u, 5u)])))), Struct_1(select(func_1(~4294967295u, 10240i < u_input.c.x, var_0.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1568f, -738f, global2[_wgslsmith_index_u32(28644u, 5u)]))), var_0.b.a, ~u_input.b <= ~0u)));
    var_0 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1076f), var_1.b);
    return u_input.a.wzx;
}

fn func_3(arg_0: vec4<i32>, arg_1: i32, arg_2: Struct_2) -> vec2<f32> {
    let var_0 = global2[_wgslsmith_index_u32(4294967295u, 5u)];
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global2[_wgslsmith_index_u32(u_input.b, 5u)], _wgslsmith_f_op_f32(min(2419f, 2002f)), _wgslsmith_f_op_f32(abs(1078f)), 467f))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a, global2[_wgslsmith_index_u32(1u, 5u)], 1231f, global2[_wgslsmith_index_u32(u_input.b, 5u)])), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1261f, 1854f, -175f, -1129f))))))))));
    var var_2 = ~vec3<u32>(~_wgslsmith_div_u32(~u_input.b, 94369u), firstLeadingBit(4294967295u), countOneBits(u_input.b));
    var var_3 = arg_2;
    var_2 = vec3<u32>(var_2.x, _wgslsmith_mod_u32(~u_input.b, ~_wgslsmith_div_u32(u_input.b, _wgslsmith_clamp_u32(0u, u_input.b, u_input.b))), reverseBits(9545u));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a, -1454f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-835f, global2[_wgslsmith_index_u32(u_input.b, 5u)])))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(175f, 1000f), vec2<f32>(834f, 1193f), vec2<bool>(var_3.b.a.x, arg_2.b.a.x))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 6>();
    var var_0 = Struct_1(select(!(!func_1(0u, true, global2[_wgslsmith_index_u32(20716u, 5u)], global0[_wgslsmith_index_u32(0u, 6u)])), vec2<bool>(func_1(~u_input.b, true, -2379f, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-906f, 2252f, -1000f)))).x, select(true, false, true)), true));
    let var_1 = global1[_wgslsmith_index_u32(u_input.b, 12u)];
    var var_2 = _wgslsmith_sub_i32(u_input.d.x, _wgslsmith_dot_vec3_i32(-(~_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, u_input.a.x, -57819i), vec3<i32>(u_input.a.x, -1i, -3952i))), vec3<i32>(-1i) * -func_2(global1[_wgslsmith_index_u32(44352u, 12u)], global1[_wgslsmith_index_u32(u_input.b, 12u)], 1i)));
    global2 = array<f32, 5>();
    let var_3 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_div_vec4_i32(u_input.d, u_input.d), ~u_input.e, Struct_2(690f, global1[_wgslsmith_index_u32(14396u, 12u)]))))), _wgslsmith_f_op_vec2_f32(func_3(u_input.d | _wgslsmith_div_vec4_i32(vec4<i32>(27838i, 2147483647i, 32524i, 2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(50294i, u_input.a.x, -10069i, 2147483647i), vec4<i32>(u_input.e, 2147483647i, -17389i, 63011i))), _wgslsmith_dot_vec3_i32(vec3<i32>(45741i, 1i, -u_input.d.x), vec3<i32>(_wgslsmith_mod_i32(0i, u_input.d.x), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, 2147483647i, u_input.a.x), vec3<i32>(u_input.e, -1i, u_input.c.x)), _wgslsmith_mult_i32(0i, u_input.e))), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 5u)] + global2[_wgslsmith_index_u32(79087u, 5u)]) + _wgslsmith_f_op_f32(-932f - -539f)), Struct_1(var_0.a))))));
    var var_4 = -u_input.a.x;
    var var_5 = vec3<u32>(~u_input.b, ~(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, 4294967295u) ^ vec3<u32>(1u, u_input.b, 51714u), ~vec3<u32>(0u, u_input.b, u_input.b)) & u_input.b), 1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(u_input.b, 5u)], var_3.x, global2[_wgslsmith_index_u32(0u, 5u)], var_3.x))))))), vec4<u32>(1u, 131091u, 1u, u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1595f)), u_input.d);
}

