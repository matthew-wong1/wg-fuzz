struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(0u, 0u, vec2<i32>(-412i, i32(-2147483648)));

var<private> global1: Struct_2 = Struct_2(Struct_1(1u, 58760u, vec2<i32>(2147483647i, 0i)), vec3<u32>(44980u, 57669u, 0u));

var<private> global2: array<i32, 31> = array<i32, 31>(22209i, -24469i, 1i, -31428i, -5494i, 0i, -47656i, -31866i, -24006i, -877i, 1i, -15084i, 1i, 1873i, 27947i, 1i, 0i, -1i, -1i, 0i, -27057i, -1i, 5969i, -3977i, -1i, 1i, -69627i, 1i, 1i, i32(-2147483648), -25150i);

var<private> global3: array<vec3<u32>, 24>;

var<private> global4: array<Struct_1, 14>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> f32 {
    let var_0 = global1.a;
    var var_1 = global4[_wgslsmith_index_u32(abs(firstLeadingBit(arg_1.b.x)), 14u)];
    let var_2 = global4[_wgslsmith_index_u32(4294967295u, 14u)];
    var_1 = Struct_1(~var_2.b << ((~(global1.b.x << (var_1.a % 32u)) & ~countOneBits(61056u)) % 32u), _wgslsmith_dot_vec4_u32(~(~(~vec4<u32>(var_0.b, 4294967295u, 1u, 1u))), _wgslsmith_mod_vec4_u32(min(_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.b, 1u, 6582u, 4294967295u), vec4<u32>(var_1.b, 4294967295u, var_0.b, 27696u)), vec4<u32>(0u, u_input.a, 0u, global1.b.x)), vec4<u32>(var_0.a, abs(4294967295u), ~var_2.a, 4294967295u))), _wgslsmith_mod_vec2_i32(global0.c, ~vec2<i32>(_wgslsmith_add_i32(2147483647i, var_1.c.x), select(1i, 24994i, false))));
    global0 = Struct_1(var_2.a, 4294967295u, var_0.c);
    return 1009f;
}

fn func_2() -> vec3<f32> {
    var var_0 = global1.a;
    global2 = array<i32, 31>();
    var var_1 = Struct_2(global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(abs(~1u), ~firstLeadingBit(u_input.a << (4294967295u % 32u))), 14u)], vec3<u32>(0u, 1u, 1u));
    let var_2 = -51297i <= ~(-_wgslsmith_mod_i32(_wgslsmith_div_i32(global1.a.c.x, -54283i), firstLeadingBit(-2147483647i)));
    var var_3 = Struct_2(Struct_1(~(~(~4294967295u)), ~4294967295u, vec2<i32>(var_1.a.c.x, ~(-24051i) ^ (-15523i & u_input.b.x))), ~vec3<u32>(_wgslsmith_mult_u32(var_1.b.x, 4294967295u), 18716u, var_1.a.b) >> (_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(4294967295u, 4294967295u, 1u), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 4151u, u_input.a), global1.b)), vec3<u32>(18287u, 0u, ~var_1.a.b), vec3<u32>(1u | global0.a, firstTrailingBit(var_0.b), max(global1.b.x, global1.b.x))) % vec3<u32>(32u)));
    return _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global1.a.c.x, Struct_2(Struct_1(0u, 29543u, vec2<i32>(1i, var_3.a.c.x)), vec3<u32>(u_input.a, 1u, u_input.a)))) - _wgslsmith_f_op_f32(f32(-1f) * -1957f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))), -1282f)));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<f32>, arg_2: Struct_2) -> u32 {
    var var_0 = 0u;
    global2 = array<i32, 31>();
    global0 = Struct_1(0u, arg_2.a.a, global0.c);
    var var_1 = global4[_wgslsmith_index_u32(4294967295u, 14u)];
    let var_2 = ~0u | (~global0.b ^ ~4294967295u);
    return ~(~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a, 41298u, var_2, u_input.a), vec4<u32>(0u, arg_2.a.b, 58333u, 0u)), vec4<u32>(4294967295u, global0.b, arg_2.b.x, 1u) << ((vec4<u32>(14106u, 4294967295u, var_2, global0.b) ^ vec4<u32>(u_input.a, global1.a.b, 4294967295u, 1u)) % vec4<u32>(32u))));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_mult_i32(-(38095i | global0.c.x) << (1u % 32u), reverseBits(-1i));
    var var_1 = _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, global0.a | 1u, arg_3.b, arg_3.a), select(~vec4<u32>(u_input.a, 48281u, u_input.a, 0u), vec4<u32>(_wgslsmith_mod_u32(1u, 17391u), u_input.a, reverseBits(global0.a), global1.b.x), vec4<bool>(true, arg_2 & true, !arg_2, !arg_2))) << (countOneBits(vec4<u32>(_wgslsmith_mod_u32(0u, global0.b) | global1.a.b, func_4(select(vec3<bool>(arg_2, true, true), vec3<bool>(false, true, false), false), _wgslsmith_f_op_vec3_f32(func_2()), Struct_2(arg_3, vec3<u32>(4294967295u, u_input.a, 11503u))), ~u_input.a >> (min(u_input.a, u_input.a) % 32u), 82199u)) % vec4<u32>(32u));
    var var_2 = select(!vec2<bool>(!(u_input.a >= var_1.x), true), !vec2<bool>(arg_2, arg_2), vec2<bool>(true, true));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-456f)) - _wgslsmith_f_op_vec3_f32(func_2()).x)) <= _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-878f, 1f)));
    let var_4 = Struct_2(Struct_1(arg_3.b, u_input.a, vec2<i32>(firstTrailingBit(-2147483647i), u_input.c)), _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(~(vec3<u32>(0u, 4294967295u, global0.a) << (global3[_wgslsmith_index_u32(var_1.x, 24u)] % vec3<u32>(32u))), firstLeadingBit(_wgslsmith_clamp_vec3_u32(global3[_wgslsmith_index_u32(arg_3.a, 24u)], global3[_wgslsmith_index_u32(global0.b, 24u)], vec3<u32>(35298u, 4294967295u, 0u)))), _wgslsmith_mult_vec3_u32(var_1.wwx, _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_3.b, 89376u, 0u), vec3<u32>(global1.b.x, global1.a.a, 1u)), _wgslsmith_div_vec3_u32(vec3<u32>(13330u, global1.a.a, global1.a.a), global1.b)))));
    return global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(countOneBits(15044u), firstLeadingBit(~_wgslsmith_div_u32(0u, arg_3.a)), ~global0.b), 14u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(1i, u_input.c, all(select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), false), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false)), all(vec2<bool>(false, false))), vec4<bool>(false, true, false, true), true)));
    var_0 = ~select(max(0i, ~global1.a.c.x), -(i32(-1i) * -3266i), false);
    let var_1 = Struct_1(u_input.a, 5144u, _wgslsmith_sub_vec2_i32(~_wgslsmith_clamp_vec2_i32(global0.c ^ global1.a.c, _wgslsmith_sub_vec2_i32(vec2<i32>(0i, 41793i), vec2<i32>(70741i, 0i)), u_input.b.xx), (abs(vec2<i32>(2147483647i, 5550i)) ^ (vec2<i32>(u_input.c, u_input.c) | vec2<i32>(u_input.c, 1i))) << (global1.b.xz % vec2<u32>(32u))));
    global0 = func_1(false, var_1.c.x & ~(-2147483647i), any(select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(true, false), true), true)), Struct_1(~(~0u), global1.b.x, -(~vec2<i32>(global2[_wgslsmith_index_u32(39410u, 31u)], u_input.b.x))));
    let var_2 = func_1(!select(true, any(vec4<bool>(true, true, true, true)), all(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false)))), u_input.c, -_wgslsmith_dot_vec2_i32(vec2<i32>(-31230i, global1.a.c.x), var_1.c) <= _wgslsmith_sub_i32(firstLeadingBit(~global1.a.c.x), -u_input.b.x ^ -1i), global1.a);
    let var_3 = _wgslsmith_add_vec2_i32(vec2<i32>(1i << (~(global1.b.x ^ global0.a) % 32u), _wgslsmith_add_i32(~var_1.c.x ^ select(global1.a.c.x, 24916i, true), _wgslsmith_mult_i32(26188i, reverseBits(global0.c.x)))), vec2<i32>(-12687i, 0i));
    let var_4 = Struct_2(func_1(any(select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true), global1.a.a > u_input.a)), 10010i, true, func_1(!(-13593i == global0.c.x), _wgslsmith_dot_vec3_i32(u_input.b, abs(vec3<i32>(var_2.c.x, -5189i, u_input.b.x))), false & (14893i < global2[_wgslsmith_index_u32(global0.a, 31u)]), func_1(true, -var_2.c.x, all(vec2<bool>(true, true)), func_1(false, -48038i, false, global4[_wgslsmith_index_u32(87586u, 14u)])))), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a & 1u, func_1(false, -global0.c.x, true, Struct_1(var_2.a, global0.b, vec2<i32>(0i, -2147483647i))).a, _wgslsmith_clamp_u32(var_2.b, _wgslsmith_mult_u32(global1.b.x, 4294967295u), 4294967295u)), global3[_wgslsmith_index_u32(abs(~max(1u, var_1.a)), 24u)]));
    let x = u_input.a;
    s_output = StorageBuffer(~func_1(true, ~select(var_1.c.x, 16332i, false), !all(vec4<bool>(false, true, true, true)), func_1(all(vec3<bool>(false, false, true)), ~(-16886i), true, Struct_1(4294967295u, 16289u, global1.a.c))).b);
}

