struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec3<f32>,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 13>;

var<private> global1: array<u32, 6> = array<u32, 6>(52625u, 0u, 1u, 67182u, 1u, 59170u);

var<private> global2: vec3<u32> = vec3<u32>(4294967295u, 1u, 10179u);

var<private> global3: i32 = 12221i;

var<private> global4: array<u32, 24> = array<u32, 24>(4552u, 108073u, 4294967295u, 12194u, 4225u, 1u, 40942u, 0u, 35264u, 76843u, 63941u, 0u, 20436u, 23073u, 71749u, 0u, 0u, 1u, 0u, 4294967295u, 1u, 1u, 4294967295u, 0u);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> u32 {
    return global2.x;
}

fn func_2(arg_0: f32) -> u32 {
    var var_0 = _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(global2.x, 1u & func_3(), ~global1[_wgslsmith_index_u32(func_3(), 6u)]), vec3<u32>(countOneBits(1u), 107999u, _wgslsmith_sub_u32(4294967295u ^ global1[_wgslsmith_index_u32(5745u, 6u)], ~78909u)), vec3<u32>((4294967295u << (global2.x % 32u)) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(48691u, 24u)], 39080u, 55990u, 64908u), vec4<u32>(63029u, u_input.a, 100249u, global4[_wgslsmith_index_u32(global2.x, 24u)])) % 32u), func_3(), firstTrailingBit(~38687u))), vec3<u32>(global1[_wgslsmith_index_u32(11387u, 6u)] >> (((4294967295u & u_input.a) << (~4294967295u % 32u)) % 32u), 60992u, 55998u));
    global4 = array<u32, 24>();
    let var_1 = ~(abs(~u_input.b.x) | u_input.b.x) < max(15824i, select(-53165i, 411i, true));
    let var_2 = _wgslsmith_f_op_f32(ceil(-311f));
    let var_3 = _wgslsmith_div_f32(108f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1053f, arg_0)) * _wgslsmith_f_op_f32(arg_0 + var_2)));
    return global1[_wgslsmith_index_u32(~94820u ^ _wgslsmith_mult_u32(_wgslsmith_mod_u32(1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 19855u), ~var_0.xz)), 1u), 6u)];
}

fn func_4(arg_0: u32, arg_1: vec3<f32>, arg_2: vec3<bool>) -> Struct_2 {
    var var_0 = -(vec4<i32>(min(1i, 1i), u_input.b.x, u_input.b.x << (0u % 32u), -40705i) ^ _wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(24465i, -2147483647i, 2147483647i, u_input.b.x)), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -55788i))) & vec4<i32>(15643i, _wgslsmith_mult_i32(u_input.b.x, u_input.b.x & ~u_input.b.x), u_input.b.x, -1i);
    global0 = array<f32, 13>();
    global2 = reverseBits(vec3<u32>(min(u_input.a, ~0u & select(global4[_wgslsmith_index_u32(1u, 24u)], arg_0, arg_2.x)), ~1u, global2.x));
    global2 = ~((abs(firstLeadingBit(vec3<u32>(global2.x, 4294967295u, global1[_wgslsmith_index_u32(76107u, 6u)]))) >> (((vec3<u32>(1u, global1[_wgslsmith_index_u32(10475u, 6u)], global1[_wgslsmith_index_u32(global2.x, 6u)]) ^ vec3<u32>(25551u, global1[_wgslsmith_index_u32(40928u, 6u)], 0u)) << (~vec3<u32>(global4[_wgslsmith_index_u32(2854u, 24u)], u_input.a, global1[_wgslsmith_index_u32(u_input.a, 6u)]) % vec3<u32>(32u))) % vec3<u32>(32u))) | _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 17080u & arg_0, ~1u), select(_wgslsmith_sub_vec3_u32(vec3<u32>(global2.x, 4294967295u, 16912u), vec3<u32>(4294967295u, 30393u, 0u)), vec3<u32>(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2.x, 6u)], 24u)], arg_0, 60165u), !arg_2)));
    var var_1 = max(~abs(i32(-1i) * -u_input.b.x), 1i);
    return Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -852f), -198f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, arg_0, 4294967295u), vec3<u32>(global4[_wgslsmith_index_u32(4294967295u, 24u)], global2.x, 35674u)), 13u)]))), Struct_1(firstTrailingBit(u_input.a), _wgslsmith_div_vec2_u32(~vec2<u32>(global2.x, 4294967295u), vec2<u32>(1u, arg_0)) << (_wgslsmith_sub_vec2_u32(vec2<u32>(global2.x, 26743u), global2.xy) % vec2<u32>(32u)), ~0i), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(arg_0, 13u)]))), _wgslsmith_f_op_f32(f32(-1f) * -320f), -546f), ~_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(45410u, 6u)], 20153u, 1u, 1u), ~vec4<u32>(143032u, global2.x, arg_0, 50103u)), ~min(vec4<u32>(31600u, global1[_wgslsmith_index_u32(arg_0, 6u)], u_input.a, 44374u), vec4<u32>(global1[_wgslsmith_index_u32(76533u, 6u)], 0u, 19812u, global2.x))));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: f32) -> Struct_2 {
    global1 = array<u32, 6>();
    global0 = array<f32, 13>();
    global4 = array<u32, 24>();
    global3 = 1i;
    global1 = array<u32, 6>();
    return func_4(func_2(_wgslsmith_f_op_f32(-arg_2)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, global0[_wgslsmith_index_u32(global2.x, 13u)], global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 24u)], 13u)])) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1958f, 1153f, 527f), vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 13u)], -372f, global0[_wgslsmith_index_u32(38739u, 13u)]), vec3<bool>(arg_1.x, true, false)))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(519f, arg_2, arg_2)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, 279f, global0[_wgslsmith_index_u32(global2.x, 13u)])))))), arg_1.www);
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: vec3<f32>) -> u32 {
    let var_0 = func_4(firstTrailingBit(10225u), vec3<f32>(arg_1.c.x, _wgslsmith_f_op_f32(min(arg_1.c.x, arg_2.x)), _wgslsmith_f_op_f32(f32(-1f) * -152f)), vec3<bool>(!(!(arg_2.x < 476f)), arg_0.x, any(select(select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, false), true), select(vec3<bool>(arg_0.x, arg_0.x, true), vec3<bool>(true, arg_0.x, true), arg_0.x), -2163f > global0[_wgslsmith_index_u32(60932u, 13u)])))).b;
    let var_1 = func_1(-vec4<i32>(max(-2147483647i, func_4(0u, arg_2, vec3<bool>(true, arg_0.x, true)).b.c), arg_1.b.c, firstTrailingBit(-1i), abs(arg_1.b.c >> (1202u % 32u))), select(vec4<bool>(false, any(vec3<bool>(arg_0.x, false, arg_0.x)), true, !(arg_2.x >= 336f)), select(vec4<bool>(arg_0.x & true, true, any(vec4<bool>(false, arg_0.x, true, true)), global0[_wgslsmith_index_u32(56329u, 13u)] >= 144f), select(!vec4<bool>(false, true, arg_0.x, true), !vec4<bool>(arg_0.x, arg_0.x, true, false), arg_0.x), all(!vec3<bool>(arg_0.x, arg_0.x, arg_0.x))), vec4<bool>(arg_0.x, arg_0.x & (arg_0.x | arg_0.x), arg_0.x, !(!arg_0.x))), _wgslsmith_f_op_f32(trunc(arg_2.x))).b;
    let var_2 = arg_0.x;
    global0 = array<f32, 13>();
    let var_3 = Struct_3(arg_1);
    return var_0.b.x << (0u % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = ~reverseBits(-21968i);
    var var_0 = false;
    var var_1 = any(!vec2<bool>(~(-1i) > _wgslsmith_mod_i32(u_input.b.x, 30193i), true));
    var_1 = global4[_wgslsmith_index_u32(33149u, 24u)] < ~func_5(!select(vec2<bool>(true, true), vec2<bool>(true, false), false), func_1(~vec4<i32>(u_input.b.x, 30908i, 38417i, u_input.b.x), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), false), _wgslsmith_f_op_f32(sign(-256f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1634f, 632f, global0[_wgslsmith_index_u32(0u, 13u)]), vec3<f32>(global0[_wgslsmith_index_u32(1u, 13u)], -1426f, -1276f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 13u)], global0[_wgslsmith_index_u32(43923u, 13u)], -595f) * vec3<f32>(global0[_wgslsmith_index_u32(global2.x, 13u)], global0[_wgslsmith_index_u32(26562u, 13u)], -1236f))));
    var var_2 = Struct_4(global0[_wgslsmith_index_u32(max(~u_input.a, func_1(-vec4<i32>(u_input.b.x, 1i, u_input.b.x, 58054i) ^ (vec4<i32>(u_input.b.x, -6432i, u_input.b.x, u_input.b.x) >> (vec4<u32>(1u, 1u, 51863u, 60384u) % vec4<u32>(32u))), vec4<bool>(true, select(true, true, false), true, select(true, false, false)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(4294967295u, 13u)]))))).b.a), 13u)]);
    var var_3 = vec2<u32>(~90454u, global1[_wgslsmith_index_u32(19927u, 6u)] & 1u);
    let x = u_input.a;
    s_output = StorageBuffer(28791u, u_input.b.x >> ((~(~global1[_wgslsmith_index_u32(5645u, 6u)]) >> (~abs(4294967295u) % 32u)) % 32u), global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(firstTrailingBit(~global4[_wgslsmith_index_u32(0u, 24u)]), abs(~1u)), 6u)], 24u)], vec2<f32>(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~1u, min(0u, 0u)), 13u)])), -650f), var_2.a);
}

