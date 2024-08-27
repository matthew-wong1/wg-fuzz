struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: u32,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<vec2<i32>, 30>;

var<private> global2: array<vec4<i32>, 17> = array<vec4<i32>, 17>(vec4<i32>(2147483647i, 15977i, 2147483647i, -1i), vec4<i32>(1i, -30673i, -41136i, 1i), vec4<i32>(-17451i, 0i, -23172i, -10109i), vec4<i32>(1i, -1i, 1i, 78271i), vec4<i32>(-53844i, 36717i, -25486i, 30723i), vec4<i32>(44174i, 0i, 1i, -2375i), vec4<i32>(14875i, -1i, 18381i, 10508i), vec4<i32>(-1i, -1i, -8597i, 2147483647i), vec4<i32>(1i, -1i, -33105i, -1i), vec4<i32>(i32(-2147483648), -71834i, 16363i, 0i), vec4<i32>(33336i, -10067i, 0i, 2147483647i), vec4<i32>(2147483647i, 2147483647i, i32(-2147483648), 2147483647i), vec4<i32>(-18395i, -45657i, 1i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 1i, 1i, 0i), vec4<i32>(-3023i, 50353i, 0i, 2147483647i), vec4<i32>(-1i, 0i, -1i, i32(-2147483648)), vec4<i32>(21928i, -6669i, -1i, -13641i));

var<private> global3: vec3<u32> = vec3<u32>(1u, 37758u, 1u);

var<private> global4: vec2<i32> = vec2<i32>(-1i, 12034i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<i32>) -> u32 {
    let var_0 = vec3<i32>(global4.x, abs(_wgslsmith_add_i32(0i << (1u % 32u), _wgslsmith_mult_i32(20258i, 58561i)) ^ u_input.a.x), -arg_1.x);
    global3 = min(reverseBits(_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 69288u), vec3<u32>(global3.x, global0.x, u_input.b.x)), ~vec3<u32>(0u, u_input.b.x, 12045u), reverseBits(vec3<u32>(1u, u_input.b.x, global0.x))) << (vec3<u32>(~global3.x, 11979u, ~global3.x) % vec3<u32>(32u))), vec3<u32>(_wgslsmith_dot_vec2_u32((vec2<u32>(40083u, u_input.b.x) & vec2<u32>(0u, 1u)) << (vec2<u32>(4294967295u, 68870u) % vec2<u32>(32u)), reverseBits(vec2<u32>(1u, 26375u)) | ~global3.yy), 4294967295u, u_input.b.x));
    global3 = _wgslsmith_add_vec3_u32(~abs(reverseBits(vec3<u32>(global0.x, 4294967295u, global3.x))), vec3<u32>(~(~1u), abs(~48536u), _wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.b.x, ~6259u), 22808u)));
    let var_1 = _wgslsmith_div_vec4_i32(abs(abs(reverseBits(vec4<i32>(var_0.x, var_0.x, 0i, 38348i)))), _wgslsmith_div_vec4_i32(~_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, -2147483647i, u_input.a.x, 7629i), global2[_wgslsmith_index_u32(global3.x, 17u)]), vec4<i32>(u_input.a.x, var_0.x, -7724i, u_input.a.x) | global2[_wgslsmith_index_u32(global0.x, 17u)]), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, 2147483647i, select(-56217i, 1i, true), u_input.a.x), abs(_wgslsmith_mod_vec4_i32(global2[_wgslsmith_index_u32(global3.x, 17u)], vec4<i32>(-1i, -2147483647i, u_input.a.x, u_input.a.x))))));
    global0 = _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(select(abs(36447u), u_input.b.x >> (u_input.b.x % 32u), false), ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4035u, global0.x), vec3<u32>(global3.x, u_input.b.x, 28548u)), ~0u), countOneBits(_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(20117u, u_input.b.x, u_input.b.x), vec3<u32>(global0.x, u_input.b.x, global0.x)), ~vec3<u32>(88034u, global0.x, 64776u)))), select(~vec3<u32>(abs(1u), 13920u, u_input.b.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, global3.x, 34018u) ^ max(vec3<u32>(global0.x, global3.x, global0.x), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), _wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(1u, global0.x, u_input.b.x)), _wgslsmith_div_vec3_u32(vec3<u32>(0u, 0u, global3.x), vec3<u32>(4294967295u, u_input.b.x, u_input.b.x))), ~(vec3<u32>(0u, 23657u, global0.x) >> (vec3<u32>(u_input.b.x, 1u, 3236u) % vec3<u32>(32u)))), true));
    return _wgslsmith_mod_u32(~_wgslsmith_add_u32(~firstTrailingBit(86371u), _wgslsmith_mult_u32(u_input.b.x, u_input.b.x) << (_wgslsmith_mult_u32(0u, global3.x) % 32u)), u_input.b.x);
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> vec3<u32> {
    var var_0 = Struct_1(~vec2<i32>(reverseBits(1i), arg_1.e.x ^ arg_1.d.x) << (vec2<u32>(_wgslsmith_sub_u32(~arg_1.c, _wgslsmith_div_u32(u_input.b.x, global3.x)), ~4294967295u << ((global3.x & global3.x) % 32u)) % vec2<u32>(32u)), any(!(!select(vec3<bool>(false, true, arg_1.b), vec3<bool>(arg_1.b, true, true), vec3<bool>(arg_1.b, false, true)))), 52048u, vec2<i32>(max(arg_1.a.x, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.a.x, arg_1.a.x), _wgslsmith_mult_i32(1182i, arg_0), -1i)), arg_1.d.x | (arg_0 | 2147483647i)), abs(_wgslsmith_add_vec4_i32(arg_1.e & global2[_wgslsmith_index_u32(0u, 17u)], ~vec4<i32>(global4.x, -2452i, global4.x, arg_0))) ^ _wgslsmith_sub_vec4_i32(-abs(vec4<i32>(arg_1.d.x, arg_1.d.x, 6687i, -2147483647i)), vec4<i32>(1i, 2147483647i, -1i, 0i) >> ((vec4<u32>(global3.x, 52828u, global0.x, 3212u) << (vec4<u32>(arg_1.c, arg_1.c, arg_1.c, u_input.b.x) % vec4<u32>(32u))) % vec4<u32>(32u))));
    global3 = vec3<u32>(~((arg_1.c ^ 29087u) & ~55101u) << (u_input.b.x % 32u), global3.x, global3.x);
    global2 = array<vec4<i32>, 17>();
    global3 = vec3<u32>(global3.x, firstLeadingBit(_wgslsmith_mod_u32(func_3(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1693f, -576f), vec2<f32>(-196f, 726f))), vec2<i32>(29213i, -2147483647i)), ~24686u >> (_wgslsmith_dot_vec2_u32(global0.yy, vec2<u32>(global3.x, u_input.b.x)) % 32u))), 9720u);
    var var_1 = Struct_1(firstTrailingBit(max(vec2<i32>(-2147483647i | u_input.a.x, _wgslsmith_sub_i32(0i, -1i)), arg_1.e.wx)), !(var_0.b || all(vec2<bool>(arg_1.b, var_0.b))), min(reverseBits(~(~4294967295u)), _wgslsmith_mult_u32(4294967295u, global0.x | _wgslsmith_add_u32(global0.x, var_0.c))), firstLeadingBit(vec2<i32>((0i << (global0.x % 32u)) ^ (global4.x ^ 10218i), firstLeadingBit(var_0.a.x))), vec4<i32>(-1i) * -vec4<i32>(arg_0, -20891i, 0i, _wgslsmith_mult_i32(9277i, -6072i)));
    return firstTrailingBit(vec3<u32>(abs(1u), ~1u ^ u_input.b.x, _wgslsmith_add_u32(u_input.b.x, var_1.c)));
}

fn func_1() -> vec3<bool> {
    global0 = _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(func_2(-global4.x, Struct_1(-vec2<i32>(-1i, 14667i), any(vec2<bool>(false, false)), _wgslsmith_clamp_u32(u_input.b.x, global0.x, 4294967295u), u_input.a, -vec4<i32>(global4.x, u_input.a.x, 30323i, -1i))), ~vec3<u32>(8655u, func_2(global4.x, Struct_1(vec2<i32>(global4.x, 2147483647i), true, global0.x, u_input.a, vec4<i32>(u_input.a.x, global4.x, -43354i, global4.x))).x, _wgslsmith_mod_u32(global3.x, 1u))), countOneBits(vec3<u32>(17269u, global0.x, global3.x)));
    global0 = vec3<u32>(firstTrailingBit(~abs(u_input.b.x)), _wgslsmith_mod_u32(39279u ^ _wgslsmith_add_u32(43030u, global3.x), global0.x), ~(~func_2(u_input.a.x, Struct_1(vec2<i32>(global4.x, global4.x), true, global0.x, vec2<i32>(u_input.a.x, u_input.a.x), global2[_wgslsmith_index_u32(15470u, 17u)])).x)) & vec3<u32>(~global3.x, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(1u, 35u, 101528u, global0.x)), vec4<u32>(~u_input.b.x, ~15359u, u_input.b.x, u_input.b.x & u_input.b.x)), func_3(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2285f, 1488f) * vec2<f32>(297f, 185f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-193f, -1929f), vec2<f32>(1024f, 121f))))), -_wgslsmith_mod_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, global4.x))));
    let var_0 = Struct_1(-_wgslsmith_clamp_vec2_i32(global1[_wgslsmith_index_u32(firstTrailingBit(u_input.b.x) >> (countOneBits(0u) % 32u), 30u)], u_input.a, _wgslsmith_sub_vec2_i32(~vec2<i32>(1i, global4.x), _wgslsmith_sub_vec2_i32(global1[_wgslsmith_index_u32(434u, 30u)], u_input.a))), !any(vec3<bool>(true, true, true)) & !(!(global4.x > u_input.a.x)), u_input.b.x, firstLeadingBit(~(-select(vec2<i32>(global4.x, 2147483647i), u_input.a, true))), vec4<i32>(_wgslsmith_clamp_i32(~(~global4.x), 3961i, _wgslsmith_dot_vec4_i32(-vec4<i32>(2147483647i, -1i, u_input.a.x, -5817i), ~global2[_wgslsmith_index_u32(global0.x, 17u)])), ~u_input.a.x << (37917u % 32u), 2147483647i, u_input.a.x));
    let var_1 = _wgslsmith_add_i32(u_input.a.x, var_0.a.x);
    let var_2 = !(!select(select(vec4<bool>(var_0.b, var_0.b, var_0.b, var_0.b), !vec4<bool>(var_0.b, false, true, var_0.b), all(vec3<bool>(true, true, var_0.b))), !(!vec4<bool>(var_0.b, var_0.b, true, false)), true));
    return select(var_2.yyy, vec3<bool>(false, true, false), !all(var_2.yyw) | select(var_0.b, true, ~var_0.c != min(67905u, 4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global4.x;
    let var_1 = Struct_1(u_input.a, any(select(func_1(), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), !select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true)))), 1u, abs(~global1[_wgslsmith_index_u32(u_input.b.x, 30u)]), global2[_wgslsmith_index_u32(~func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(654f, 580f)))), vec2<i32>(u_input.a.x, ~(-1i))), 17u)]);
    global3 = ~vec3<u32>(global0.x, ~44783u, ~var_1.c);
    let var_2 = -1808f;
    var var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(~(85420u >> (abs(var_3.c) % 32u)), var_1.d, ~select(vec4<u32>(global3.x, global0.x, 45751u, 20704u), firstTrailingBit(vec4<u32>(15129u, var_1.c, var_1.c, 22820u)), vec4<bool>(false, false, true, true)) >> (countOneBits(min(vec4<u32>(1u, u_input.b.x, 13775u, 1u), vec4<u32>(u_input.b.x, 4294967295u, var_1.c, global0.x)) | vec4<u32>(19865u, var_3.c, 14088u, 0u)) % vec4<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(max(var_2, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2, var_2) - _wgslsmith_f_op_f32(round(-487f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2 * var_2) * _wgslsmith_f_op_f32(-var_2)))), var_3.d.x);
}

