struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: vec2<f32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<f32, 16> = array<f32, 16>(202f, -1254f, 1000f, -149f, -1032f, -1076f, -258f, 313f, 855f, 775f, -897f, 1899f, 325f, 620f, -837f, 1341f);

var<private> global2: array<vec4<u32>, 15> = array<vec4<u32>, 15>(vec4<u32>(4294967295u, 1u, 4294967295u, 51945u), vec4<u32>(1u, 46068u, 1u, 4294967295u), vec4<u32>(0u, 39529u, 1u, 10741u), vec4<u32>(32780u, 59837u, 4294967295u, 1u), vec4<u32>(4294967295u, 71034u, 0u, 0u), vec4<u32>(1u, 1u, 24905u, 1u), vec4<u32>(2091u, 0u, 1u, 0u), vec4<u32>(0u, 0u, 1u, 0u), vec4<u32>(42247u, 15896u, 4294967295u, 906u), vec4<u32>(32224u, 4294967295u, 1u, 8617u), vec4<u32>(14534u, 4294967295u, 0u, 49301u), vec4<u32>(56957u, 46823u, 0u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 1u, 43656u), vec4<u32>(4294967295u, 0u, 1u, 1u), vec4<u32>(4294967295u, 14689u, 1u, 1u));

var<private> global3: array<vec4<bool>, 25>;

var<private> global4: array<Struct_2, 26>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> f32 {
    global0 = u_input.a >> (u_input.d % 32u);
    let var_0 = 0u << ((_wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.c | u_input.c, u_input.d), ~(~0u)) ^ countOneBits(4294967295u)) % 32u);
    let var_1 = -min(firstTrailingBit(vec2<i32>(u_input.a, _wgslsmith_mult_i32(-57809i, u_input.a))), _wgslsmith_div_vec2_i32(-vec2<i32>(47162i, -2147483647i), select(vec2<i32>(-45263i, -21510i), vec2<i32>(-3283i, 1i), true)) & ~(vec2<i32>(u_input.a, -1i) & vec2<i32>(u_input.a, -6205i)));
    let var_2 = ~(max(-_wgslsmith_add_i32(var_1.x, u_input.a), 49220i) & ~(-select(var_1.x, -30010i, true)));
    let var_3 = _wgslsmith_mod_u32(u_input.c << (min(~var_0, u_input.d) % 32u), abs(~12255u));
    return global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(~u_input.c, 7431u) & u_input.c, 16u)];
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(func_3()), -858f, -1023f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(59021u, 16u)] + 751f)));
    return Struct_1(true, vec2<bool>(!all(vec2<bool>(true, true)), all(arg_1.d.xx)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1526f, 1161f))), vec3<bool>(all(select(!arg_1.d, select(vec3<bool>(arg_1.b.x, true, true), vec3<bool>(arg_1.b.x, arg_1.b.x, true), false), 16007u > u_input.c)), (~(-1i) << ((u_input.d >> (u_input.c % 32u)) % 32u)) != countOneBits(arg_0), !(!arg_1.d.x)));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<f32>) -> i32 {
    var var_0 = func_2(u_input.a, Struct_1(all(!global3[_wgslsmith_index_u32(arg_0.x, 25u)]), vec2<bool>(all(vec3<bool>(true, true, true)), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.xz)), select(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), all(vec2<bool>(true, true)) == true)));
    var var_1 = global4[_wgslsmith_index_u32(arg_0.x, 26u)];
    var var_2 = !(!(all(global3[_wgslsmith_index_u32(u_input.b | 1u, 25u)]) != true));
    let var_3 = !global3[_wgslsmith_index_u32(reverseBits(~arg_0.x), 25u)];
    var var_4 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_1.a.zz)))));
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_add_i32(2147483647i, u_input.a);
    var var_0 = _wgslsmith_div_i32(func_1(vec4<u32>(~4294967295u, 1u, 4294967295u, 4294967295u), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -589f), global1[_wgslsmith_index_u32(62650u, 16u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 16u)])) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(351f, -575f, -679f)))), 0i);
    var var_1 = u_input.a;
    let var_2 = false;
    global3 = array<vec4<bool>, 25>();
    var var_3 = !vec3<bool>(all(!vec4<bool>(var_2, var_2, var_2, var_2)), var_2, u_input.b < 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~4294967295u, 16u)]), ~_wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(u_input.d, 15u)], global2[_wgslsmith_index_u32(31355u, 15u)]), 27491u), vec2<u32>(u_input.b, _wgslsmith_div_u32(4294967295u, _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(4294967295u, 1u, u_input.d)), ~vec3<u32>(0u, 64969u, 0u)))), min(u_input.a, 1i), _wgslsmith_add_vec2_i32(~_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, -39651i) ^ vec2<i32>(u_input.a, u_input.a), -vec2<i32>(u_input.a, u_input.a)), vec2<i32>(max(-2147483647i & u_input.a, _wgslsmith_add_i32(u_input.a, u_input.a)), min(~(-31941i), i32(-1i) * -54031i))));
}

