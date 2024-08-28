struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: i32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: f32,
    e: Struct_1,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: i32,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 4> = array<vec4<i32>, 4>(vec4<i32>(-4420i, 0i, -1467i, -6249i), vec4<i32>(i32(-2147483648), 1i, -23677i, 2147483647i), vec4<i32>(2790i, i32(-2147483648), 32165i, 4563i), vec4<i32>(1i, i32(-2147483648), 37164i, -1i));

var<private> global1: vec3<bool> = vec3<bool>(false, false, true);

var<private> global2: array<vec4<bool>, 2> = array<vec4<bool>, 2>(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true));

var<private> global3: Struct_5;

var<private> global4: i32 = -30135i;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = Struct_2(vec2<bool>(any(select(global1.yy, !vec2<bool>(false, global1.x), vec2<bool>(arg_0.a, false))), all(vec3<bool>(true, arg_0.a, true & arg_0.a))));
    let var_1 = Struct_1(global1.x, _wgslsmith_sub_vec4_i32(global0[_wgslsmith_index_u32(1u, 4u)], global0[_wgslsmith_index_u32(u_input.a.x, 4u)]), firstLeadingBit(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), arg_0.b.yy) ^ arg_0.b.yw, _wgslsmith_add_vec2_i32(u_input.b, u_input.b))));
    global3 = Struct_5(u_input.a, 1i >> (u_input.a.x % 32u), 1i);
    let var_2 = 380f;
    let var_3 = Struct_3(var_1, arg_0, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, -851f, var_2)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2, 1256f, var_2), vec3<f32>(var_2, var_2, var_2), var_1.a)))))), _wgslsmith_f_op_f32(-var_2), arg_0);
    return !var_3.e.a;
}

fn func_2(arg_0: vec2<f32>, arg_1: bool) -> vec2<f32> {
    var var_0 = 7949u;
    global2 = array<vec4<bool>, 2>();
    let var_1 = _wgslsmith_mult_i32(-8764i, _wgslsmith_dot_vec2_i32(u_input.b ^ -(vec2<i32>(-3143i, global3.c) | u_input.b), vec2<i32>(min(-2147483647i | global3.b, _wgslsmith_mult_i32(0i, global3.c)), _wgslsmith_dot_vec2_i32(u_input.b, abs(u_input.b)))));
    global3 = Struct_5(vec3<u32>(93312u, ~(u_input.a.x & (global3.a.x >> (u_input.a.x % 32u))), ~(~0u)), 1i, u_input.b.x & u_input.b.x);
    var var_2 = vec3<bool>(var_1 < ((var_1 & global3.c) & ~global3.c), arg_1, !any(vec4<bool>(arg_1, arg_1, all(global1.yz), func_3(Struct_1(arg_1, vec4<i32>(var_1, var_1, global3.b, 32629i), global3.b)))));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0) * arg_0);
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_5(vec3<u32>(22071u, 4294967295u, _wgslsmith_mult_u32(select(u_input.a.x, u_input.a.x, false), _wgslsmith_mod_u32(1u, global3.a.x))) << (~(~abs(vec3<u32>(global3.a.x, 99653u, 4294967295u))) % vec3<u32>(32u)), _wgslsmith_mod_i32(global3.b, _wgslsmith_mod_i32(_wgslsmith_sub_i32(-2147483647i, abs(u_input.b.x)), -1i << (firstTrailingBit(4294967295u) % 32u))), countOneBits(1i));
    let var_1 = ~vec4<u32>(u_input.a.x, global3.a.x, select(global3.a.x, var_0.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.x, var_0.a.x, global3.a.x), global3.a) == ~global3.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.x, 0u, 4294967295u) >> (reverseBits(var_0.a) % vec3<u32>(32u)), global3.a));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-615f, 571f), vec2<f32>(762f, -148f))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1219f, 470f))), false)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-1319f + -929f), _wgslsmith_f_op_f32(max(-3906f, 1178f))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1515f, 963f))))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(vec2<f32>(_wgslsmith_f_op_f32(floor(1799f)), _wgslsmith_div_f32(-2142f, -501f)), true))));
    var_0 = Struct_5(vec3<u32>(~1u, 67820u, var_0.a.x), i32(-1i) * -46308i, -u_input.b.x);
    let var_3 = Struct_5(global3.a, 0i, ~_wgslsmith_add_i32(-1i, abs(~global3.b)));
    return Struct_1(!func_3(Struct_1(true, firstTrailingBit(vec4<i32>(global3.c, u_input.b.x, var_0.b, var_3.c)), max(1i, 30575i))), (vec4<i32>(firstTrailingBit(u_input.b.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, var_0.c, u_input.b.x), vec3<i32>(-4060i, -2147483647i, u_input.b.x)), firstTrailingBit(global3.b), 0i) ^ global0[_wgslsmith_index_u32(u_input.a.x, 4u)]) | firstTrailingBit(vec4<i32>(-64699i, 34646i, global3.c, countOneBits(2147483647i))), ~(-_wgslsmith_dot_vec3_i32(vec3<i32>(var_3.b, 1i, u_input.b.x), vec3<i32>(u_input.b.x, var_0.b, var_3.b)) >> (1u % 32u)));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec3<u32>) -> StorageBuffer {
    let var_0 = global3.a.yy ^ vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_div_u32(1u, _wgslsmith_clamp_u32(5443u, arg_0, global3.a.x)), _wgslsmith_dot_vec3_u32(select(arg_3, u_input.a, vec3<bool>(arg_2.e.a, true, true)), ~vec3<u32>(global3.a.x, 4294967295u, u_input.a.x))), 0u);
    global2 = array<vec4<bool>, 2>();
    global0 = array<vec4<i32>, 4>();
    var var_1 = arg_2;
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_2.c.x), _wgslsmith_f_op_f32(floor(var_1.d)), _wgslsmith_f_op_f32(-arg_2.c.x))) * _wgslsmith_f_op_vec3_f32(arg_2.c - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.c.x, 1896f, -355f) * _wgslsmith_f_op_vec3_f32(abs(arg_2.c))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1070f, arg_2.c.x, -1048f, 482f)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(3571f, 809f, 541f, 1626f)), vec4<f32>(-892f, -657f, arg_2.c.x, -449f))))))), _wgslsmith_div_i32(arg_2.b.c, min(_wgslsmith_add_i32(arg_2.a.c, -18755i), i32(-1i) * -18038i)), ~26149i, vec4<f32>(var_1.d, var_1.c.x, -538f, var_1.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(u_input.b.x);
    let x = u_input.a;
    s_output = func_4(16169u, func_1(), Struct_3(Struct_1(global1.x, vec4<i32>(min(1i, 0i), func_1().b.x, -78443i, u_input.b.x >> (u_input.a.x % 32u)), u_input.b.x), func_1(), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-2101f, 1019f, -527f) * vec3<f32>(1234f, 649f, 757f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-208f * 1089f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1290f))))), func_1()), ~(firstTrailingBit(_wgslsmith_sub_vec3_u32(global3.a, vec3<u32>(u_input.a.x, 1u, u_input.a.x))) << (global3.a % vec3<u32>(32u))));
}

