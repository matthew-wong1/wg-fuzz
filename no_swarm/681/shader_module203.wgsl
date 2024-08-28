struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8>;

var<private> global1: Struct_1 = Struct_1(130u, vec4<f32>(-180f, -527f, -126f, -394f), 0i);

var<private> global2: i32;

var<private> global3: array<vec2<u32>, 7>;

var<private> global4: array<vec3<u32>, 6>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = false;
    let var_1 = Struct_1(abs(~global1.a), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -3086f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.x) + global1.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.x * arg_0.b.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1098f)))), _wgslsmith_f_op_f32(f32(-1f) * -1631f)), i32(-1i) * -countOneBits(16049i));
    global0 = array<Struct_1, 8>();
    let var_2 = Struct_1(_wgslsmith_add_u32(firstLeadingBit(u_input.b.x), ~countOneBits(4546u | arg_0.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.b.x, 699f, arg_0.b.x, var_1.b.x), _wgslsmith_f_op_vec4_f32(sign(arg_0.b)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1537f, 421f, arg_0.b.x, global1.b.x) - global1.b)), var_0 || all(vec2<bool>(var_0, false)))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.b))))), _wgslsmith_mult_i32(arg_0.c, u_input.a));
    var var_3 = var_2;
    return arg_0.b.x != 1000f;
}

fn func_2() -> vec2<u32> {
    var var_0 = select(vec3<bool>(!(true & all(vec4<bool>(true, false, true, true))), false, func_3(Struct_1(91605u, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1.b.x, 636f, global1.b.x, global1.b.x), vec4<f32>(443f, 1288f, global1.b.x, global1.b.x))), -1i))), vec3<bool>(true, true, true), vec3<bool>(true, func_3(Struct_1(global1.a, _wgslsmith_f_op_vec4_f32(sign(global1.b)), reverseBits(global1.c))), true));
    var_0 = vec3<bool>(false, true, !var_0.x && (var_0.x == all(!vec3<bool>(var_0.x, false, false))));
    var var_1 = select(vec4<i32>(firstTrailingBit(1i), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-42524i, 0i, global1.c), firstLeadingBit(vec3<i32>(0i, u_input.a, u_input.a))), abs(~vec3<i32>(global1.c, -1510i, global1.c))), _wgslsmith_sub_i32(firstLeadingBit(-2147483647i), abs(abs(u_input.a))), (_wgslsmith_mod_i32(global1.c, u_input.a) << ((global1.a ^ u_input.b.x) % 32u)) >> (~4294967295u % 32u)), ~(~abs(~vec4<i32>(4058i, 2147483647i, global1.c, -19763i))), var_0.x);
    var var_2 = countOneBits(var_1.x);
    global2 = u_input.a;
    return ~max(~_wgslsmith_sub_vec2_u32(vec2<u32>(17925u, u_input.b.x), u_input.b.yx), vec2<u32>(u_input.b.x, _wgslsmith_clamp_u32(56233u, 40682u, u_input.b.x))) | ~(~_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, global1.a), u_input.b.xx), abs(vec2<u32>(u_input.b.x, global1.a))));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<i32>) -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(0u, 8u)];
    let var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(var_0.b.xx, vec2<f32>(_wgslsmith_f_op_f32(ceil(global1.b.x)), _wgslsmith_div_f32(-1880f, -536f)))))));
    global4 = array<vec3<u32>, 6>();
    global0 = array<Struct_1, 8>();
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~global1.a, 65612u), 7u)], reverseBits(select(vec2<u32>(4294967295u, 117376u) & vec2<u32>(global1.a, 10557u), func_2(), vec2<bool>(true, false)))) | 57489u, 8u)];
    return Struct_1(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.b.yzy, ~_wgslsmith_div_vec3_u32(vec3<u32>(arg_0.x, arg_0.x, 20173u), vec3<u32>(var_0.a, 15423u, u_input.b.x))), ~select(reverseBits(arg_0.ywy), u_input.b.xxy, vec3<bool>(false, false, true))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-var_2.b))), var_2.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.x, 1050f, -795f, -130f)))), -_wgslsmith_sub_i32(15970i, 1i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(~reverseBits(~u_input.b), vec2<i32>(-45670i, 0i));
    global4 = array<vec3<u32>, 6>();
    global4 = array<vec3<u32>, 6>();
    global0 = array<Struct_1, 8>();
    let var_0 = vec4<bool>(true, true, true, true);
    let var_1 = select(vec2<bool>(_wgslsmith_f_op_f32(-1f) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * -1261f) - _wgslsmith_div_f32(global1.b.x, -1551f)), all(vec4<bool>(var_0.x, any(vec3<bool>(true, false, var_0.x)), any(vec4<bool>(true, var_0.x, true, var_0.x)), func_3(Struct_1(5691u, global1.b, global1.c))))), !(!select(!vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, true), !var_0.wz)), vec2<bool>(!(u_input.b.x == 17025u) | (func_3(Struct_1(u_input.b.x, vec4<f32>(-1818f, -219f, -1415f, global1.b.x), u_input.a)) && (var_0.x || var_0.x)), ~u_input.b.x <= ~_wgslsmith_mod_u32(u_input.b.x, 119900u)));
    let var_2 = global1.b.x;
    var var_3 = ~40003u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(global1.b.yy, global1.b.yy)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b.x, 1000f) * vec2<f32>(global1.b.x, global1.b.x))) + vec2<f32>(_wgslsmith_f_op_f32(-global1.b.x), global1.b.x)), _wgslsmith_f_op_vec2_f32(min(global1.b.yz, vec2<f32>(-669f, _wgslsmith_f_op_f32(round(2046f)))))), global4[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(66759u, abs(max(74140u, 1u))), (countOneBits(u_input.b.x) & ~u_input.b.x) & (global1.a | u_input.b.x)), 6u)], max(~(vec2<i32>(0i, 1i) ^ vec2<i32>(-50068i, global1.c)) >> (~(~vec2<u32>(4294967295u, 4294967295u)) % vec2<u32>(32u)), ~_wgslsmith_mult_vec2_i32(-vec2<i32>(global1.c, -9939i), _wgslsmith_mod_vec2_i32(vec2<i32>(global1.c, 4318i), vec2<i32>(u_input.a, global1.c)))), _wgslsmith_f_op_f32(-global1.b.x));
}

