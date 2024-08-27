struct Struct_1 {
    a: i32,
    b: u32,
    c: f32,
    d: vec4<f32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: bool,
    b: u32,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec4<f32>,
    d: Struct_4,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<f32, 9> = array<f32, 9>(1336f, 164f, -896f, 2365f, -279f, -1270f, 1119f, -132f, -481f);

var<private> global2: array<i32, 17> = array<i32, 17>(2147483647i, 1i, 0i, 2147483647i, 1585i, -1i, 2147483647i, -7900i, -8876i, 10978i, -42981i, -1i, 31900i, 2147483647i, -42786i, i32(-2147483648), 6415i);

var<private> global3: vec4<u32>;

var<private> global4: array<f32, 21>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec2<u32>, arg_3: i32) -> Struct_2 {
    global3 = arg_0.e;
    global3 = countOneBits(~(~vec4<u32>(1u, _wgslsmith_sub_u32(arg_2.x, 4294967295u), global0.x >> (arg_0.b % 32u), ~1u)));
    var var_0 = Struct_3(arg_3 == -20617i, abs(firstTrailingBit(global3.x)));
    let var_1 = !(!select(select(select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(false, var_0.a), var_0.a), !vec2<bool>(var_0.a, false), true), select(!vec2<bool>(var_0.a, var_0.a), select(vec2<bool>(false, var_0.a), vec2<bool>(var_0.a, true), vec2<bool>(var_0.a, false)), var_0.a), false));
    global1 = array<f32, 9>();
    return Struct_2(false);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: Struct_2) -> u32 {
    var var_0 = _wgslsmith_add_u32(~arg_0.b, global3.x);
    var var_1 = arg_3;
    var var_2 = Struct_3(func_2(Struct_1(-2147483647i, select(1u & global0.x, _wgslsmith_add_u32(0u, global3.x), any(vec3<bool>(var_1.a, arg_3.a, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(2140u, 9u)] + -429f) * _wgslsmith_f_op_f32(select(542f, 631f, var_1.a))), vec4<f32>(-1000f, global4[_wgslsmith_index_u32(u_input.b.x, 21u)], _wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(trunc(global4[_wgslsmith_index_u32(global0.x, 21u)]))), ~vec4<u32>(61664u, 614u, global0.x, global0.x)), abs(~vec2<u32>(1u, 0u)) << (global0.zz % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(~(~vec2<u32>(arg_0.b, 0u)), global0.wx), _wgslsmith_mult_i32(max(_wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(global3.x, 17u)], 2147483647i, 85359i), reverseBits(arg_2.x)), -(arg_0.a ^ global2[_wgslsmith_index_u32(60967u, 17u)]))).a, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, 1u, u_input.b.x), ~(arg_0.e.wwy ^ vec3<u32>(arg_0.b, global0.x, 0u))), ~_wgslsmith_mod_u32(1u & u_input.b.x, 0u)));
    global2 = array<i32, 17>();
    var var_3 = arg_0.c;
    return global3.x;
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: u32) -> StorageBuffer {
    var var_0 = Struct_2(true);
    let var_1 = Struct_1(-2147483647i, firstTrailingBit(min(13449u, 1u)), global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(func_3(Struct_1(global2[_wgslsmith_index_u32(4294967295u, 17u)], 30606u, arg_1, vec4<f32>(arg_1, 501f, 229f, arg_1), vec4<u32>(17237u, global3.x, arg_2, 43112u)), func_2(Struct_1(global2[_wgslsmith_index_u32(1u, 17u)], 4294967295u, arg_1, vec4<f32>(global4[_wgslsmith_index_u32(u_input.b.x, 21u)], global4[_wgslsmith_index_u32(103297u, 21u)], global1[_wgslsmith_index_u32(global0.x, 9u)], 854f), u_input.b), vec2<u32>(global0.x, 0u), u_input.b.wx, 29226i), ~vec2<i32>(arg_0, global2[_wgslsmith_index_u32(4294967295u, 17u)]), func_2(Struct_1(10958i, 4294967295u, -516f, vec4<f32>(1987f, -178f, global1[_wgslsmith_index_u32(global0.x, 9u)], global4[_wgslsmith_index_u32(20432u, 21u)]), vec4<u32>(global0.x, global0.x, global0.x, 1u)), vec2<u32>(u_input.a, 4294967295u), u_input.b.xy, -45423i)), _wgslsmith_mod_u32(1u, global3.x), 71683u, arg_2 >> (_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, 1u, 48741u, global0.x)) % 32u))), 21u)], _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(893f, arg_1, -1498f, global1[_wgslsmith_index_u32(global0.x, 9u)])))) * vec4<f32>(1000f, _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(u_input.b.x, 21u)] * global1[_wgslsmith_index_u32(u_input.b.x, 9u)]), _wgslsmith_f_op_f32(trunc(-954f)), -307f)), vec4<f32>(global1[_wgslsmith_index_u32(reverseBits(~4294967295u), 9u)], 497f, 2087f, -721f), var_0.a)), ~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 31831u, u_input.b.x, 1u), ~u_input.b), 0u, _wgslsmith_add_u32(arg_2, 56585u), global3.x));
    var_0 = func_2(Struct_1(max(~(var_1.a & 20011i), -(~var_1.a)), _wgslsmith_dot_vec3_u32(var_1.e.yyx, select(u_input.b.xxz, ~global3.zww, !vec3<bool>(var_0.a, true, var_0.a))), _wgslsmith_f_op_f32(trunc(268f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.d - _wgslsmith_f_op_vec4_f32(select(var_1.d, vec4<f32>(590f, arg_1, -1153f, var_1.c), vec4<bool>(var_0.a, var_0.a, true, true)))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c, -1237f, global1[_wgslsmith_index_u32(global0.x, 9u)], 108f))))), vec4<u32>(func_3(Struct_1(var_1.a, 43814u, global1[_wgslsmith_index_u32(global0.x, 9u)], var_1.d, var_1.e), func_2(var_1, vec2<u32>(u_input.b.x, 4294967295u), vec2<u32>(var_1.e.x, 4773u), 0i), vec2<i32>(arg_0, 1i) >> (global3.xz % vec2<u32>(32u)), Struct_2(var_0.a)), ~var_1.b, var_1.e.x, func_3(Struct_1(-1i, 1u, var_1.c, vec4<f32>(-1609f, -303f, arg_1, -1606f), var_1.e), Struct_2(var_0.a), _wgslsmith_clamp_vec2_i32(vec2<i32>(-10349i, var_1.a), vec2<i32>(-166i, arg_0), vec2<i32>(global2[_wgslsmith_index_u32(0u, 17u)], 1i)), func_2(var_1, var_1.e.xw, global0.yw, 1i)))), global0.zw, ~global3.xw, i32(-1i) * -min(_wgslsmith_add_i32(arg_0, var_1.a), 2147483647i));
    var var_2 = var_0.a;
    var var_3 = ~(~min(arg_2 << ((global3.x & global0.x) % 32u), var_1.e.x));
    return StorageBuffer(4294967295u << (((~global3.x & 4294967295u) ^ ~var_1.b) % 32u), firstTrailingBit(-21937i ^ _wgslsmith_mult_i32(select(-20165i, 2147483647i, var_0.a), select(2147483647i, 41807i, false))), _wgslsmith_f_op_vec4_f32(var_1.d - var_1.d), 1u << (arg_2 % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -global2[_wgslsmith_index_u32(global0.x, 17u)];
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1103f, -1001f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 9u)], global4[_wgslsmith_index_u32(u_input.b.x, 21u)]) + vec2<f32>(697f, -1472f))))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-3159f, _wgslsmith_f_op_f32(sign(587f)))))));
    var var_2 = abs(abs(~global0.x));
    var var_3 = !select(vec2<bool>(-426i <= (global2[_wgslsmith_index_u32(54448u, 17u)] >> (4294967295u % 32u)), true), vec2<bool>(true, true), any(vec4<bool>(true, true, true, true)));
    var var_4 = -482f;
    global2 = array<i32, 17>();
    global4 = array<f32, 21>();
    var_2 = _wgslsmith_div_u32(~((u_input.a >> (firstTrailingBit(25443u) % 32u)) & ~global3.x), _wgslsmith_add_u32(global3.x, 0u));
    let x = u_input.a;
    s_output = func_1(abs(global2[_wgslsmith_index_u32(global3.x, 17u)]), _wgslsmith_f_op_f32(-var_1.x), countOneBits(4294967295u));
}

