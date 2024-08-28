struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec3<i32>,
    d: Struct_1,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
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

var<private> global0: array<vec3<f32>, 30>;

var<private> global1: vec4<u32>;

var<private> global2: array<u32, 10>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: vec2<i32>) -> i32 {
    global1 = _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(arg_1.b, vec4<u32>(~global2[_wgslsmith_index_u32(global1.x, 10u)], 4294967295u, 4294967295u, 16179u)), vec4<u32>(firstTrailingBit(abs(global2[_wgslsmith_index_u32(61428u, 10u)])), global1.x, 18000u, 1u), ~(~firstLeadingBit(arg_1.b))) >> (~(~reverseBits(arg_1.b << (arg_1.b % vec4<u32>(32u)))) % vec4<u32>(32u));
    let var_0 = vec4<u32>(_wgslsmith_add_u32(23172u, 0u), 1u, 34214u, 24861u);
    let var_1 = Struct_1(~1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2071f)), global1.ywy, vec4<i32>(~(-2147483647i), _wgslsmith_div_i32(0i & -u_input.c.x, (u_input.c.x << (4294967295u % 32u)) | u_input.a.x), -2986i, firstTrailingBit(arg_2.x)), countOneBits(~_wgslsmith_mod_u32(15463u, min(u_input.b, var_0.x))));
    let var_2 = 37560i;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1729f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0 - -1000f))), arg_0)));
    return var_2;
}

fn func_2(arg_0: i32) -> bool {
    var var_0 = Struct_2(Struct_1(4967u, _wgslsmith_f_op_f32(f32(-1f) * -1698f), min(global1.xzx, ~_wgslsmith_mod_vec3_u32(vec3<u32>(global1.x, 47811u, 26199u), global1.xxw)), vec4<i32>(~(-7543i), ~u_input.c.x, func_3(103f, Struct_2(Struct_1(global2[_wgslsmith_index_u32(global1.x, 10u)], 130f, vec3<u32>(u_input.b, global1.x, 1u), vec4<i32>(22688i, u_input.a.x, u_input.a.x, arg_0), global2[_wgslsmith_index_u32(u_input.b, 10u)]), vec4<u32>(1137u, 20964u, 4294967295u, 26411u), vec3<i32>(arg_0, arg_0, u_input.a.x), Struct_1(global1.x, 359f, vec3<u32>(u_input.b, global1.x, 1u), vec4<i32>(43473i, -2147483647i, 2147483647i, arg_0), global1.x), vec3<f32>(-1381f, 882f, 317f)), u_input.a.yy), u_input.d) & -_wgslsmith_div_vec4_i32(vec4<i32>(arg_0, u_input.c.x, u_input.c.x, 10419i), vec4<i32>(14655i, u_input.d, arg_0, 0i)), _wgslsmith_div_u32(global1.x << (min(1u, global2[_wgslsmith_index_u32(23044u, 10u)]) % 32u), ~global2[_wgslsmith_index_u32(global1.x >> (53061u % 32u), 10u)])), ~vec4<u32>(firstLeadingBit(u_input.b), 4294967295u, ~_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(u_input.b, 10u)], global1.x), select(4294967295u, global2[_wgslsmith_index_u32(~0u, 10u)], true)), ~(~u_input.a), Struct_1(global1.x | abs(75627u), -239f, global1.wxz, vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.c, u_input.a.zz), firstTrailingBit(arg_0), u_input.a.x, _wgslsmith_mod_i32(~arg_0, arg_0)), _wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 10u)], 10u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 10u)], 10u)]), max(vec3<u32>(1u, 22726u, global1.x), vec3<u32>(38905u, 1u, 1u))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-887f, _wgslsmith_f_op_f32(f32(-1f) * -119f), _wgslsmith_f_op_f32(floor(535f)))))));
    let var_1 = Struct_2(Struct_1(73179u, -1817f, _wgslsmith_clamp_vec3_u32(~(vec3<u32>(u_input.b, 0u, 14049u) ^ vec3<u32>(u_input.b, u_input.b, var_0.b.x)), ~(vec3<u32>(4294967295u, u_input.b, u_input.b) | global1.wyz), global1.xyw), abs(~vec4<i32>(u_input.d, 26299i, 0i, arg_0) & max(vec4<i32>(arg_0, u_input.d, -39887i, 0i), vec4<i32>(var_0.d.d.x, -79070i, var_0.d.d.x, 0i))), firstLeadingBit(~global2[_wgslsmith_index_u32(82121u, 10u)])), _wgslsmith_mod_vec4_u32(abs(vec4<u32>(~27960u, ~u_input.b, 4294967295u, global1.x << (u_input.b % 32u))), ~var_0.b), abs(vec3<i32>(~var_0.a.d.x, ~(var_0.c.x ^ var_0.c.x), u_input.d)), var_0.d, global0[_wgslsmith_index_u32(~global1.x, 30u)]);
    var var_2 = all(vec3<bool>(!select(global2[_wgslsmith_index_u32(u_input.b, 10u)] < global1.x, true, true), any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)))), var_0.d.b >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.b), 544f)));
    let var_3 = countOneBits(7113u);
    let var_4 = var_0.d;
    return false;
}

fn func_1(arg_0: vec3<i32>) -> Struct_2 {
    global2 = array<u32, 10>();
    let var_0 = select(true, !func_2(arg_0.x), false);
    let var_1 = Struct_1(_wgslsmith_mult_u32(u_input.b, global1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(1229f))))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1885f, 140f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-642f)), _wgslsmith_f_op_f32(max(-894f, 274f)))))), vec3<u32>(1u, ~global1.x, global1.x) ^ vec3<u32>(global2[_wgslsmith_index_u32(1u, 10u)], 1u, global1.x), ~vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(23342i, u_input.a.x, 15548i, u_input.d), vec4<i32>(arg_0.x, 4212i, arg_0.x, u_input.a.x)), max(vec4<i32>(u_input.c.x, 2147483647i, -2147483647i, -8901i), vec4<i32>(u_input.d, -1i, -2147483647i, arg_0.x))), 1i, -select(arg_0.x, arg_0.x, true), 54166i), min(4294967295u, global2[_wgslsmith_index_u32(~(~select(global2[_wgslsmith_index_u32(global1.x, 10u)], 4294967295u, var_0)), 10u)]));
    var var_2 = ~func_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.b, var_1.b) - -491f), Struct_2(var_1, vec4<u32>(_wgslsmith_add_u32(global1.x, 56947u), max(var_1.e, global1.x), reverseBits(u_input.b), global2[_wgslsmith_index_u32(global1.x, 10u)]), -_wgslsmith_mod_vec3_i32(vec3<i32>(-12501i, 2501i, u_input.d), vec3<i32>(37299i, 2147483647i, arg_0.x)), Struct_1(0u, var_1.b, _wgslsmith_div_vec3_u32(vec3<u32>(global1.x, global2[_wgslsmith_index_u32(15189u, 10u)], 2054u), vec3<u32>(4294967295u, 11090u, 8175u)), vec4<i32>(u_input.c.x, 0i, 2147483647i, u_input.d), 33u), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.b, var_1.b, -645f)))), arg_0.zz);
    var var_3 = _wgslsmith_mult_vec4_u32(max(_wgslsmith_mod_vec4_u32(vec4<u32>(14224u, ~var_1.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(2446u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 10u)], 10u)], 10u)]), global1.yw), firstTrailingBit(85558u)), ~vec4<u32>(36867u, u_input.b, u_input.b, 33641u) ^ ~vec4<u32>(0u, var_1.a, u_input.b, global1.x)), vec4<u32>(select(4294967295u, reverseBits(global1.x), true), global1.x, ~global2[_wgslsmith_index_u32(~1u, 10u)], 13476u)), vec4<u32>(_wgslsmith_mult_u32(0u, _wgslsmith_mult_u32(~0u, _wgslsmith_dot_vec2_u32(global1.xz, var_1.c.yy))), global1.x, var_1.a, global2[_wgslsmith_index_u32(4294967295u, 10u)]));
    return Struct_2(var_1, _wgslsmith_mod_vec4_u32(select(vec4<u32>(0u, 33613u, var_3.x, 1u), vec4<u32>(1u, var_3.x, 32755u, 1u), vec4<bool>(var_0, var_0, var_0, var_0)) ^ firstLeadingBit(firstTrailingBit(vec4<u32>(1u, var_1.a, 4294967295u, 4294967295u))), _wgslsmith_clamp_vec4_u32((vec4<u32>(4294967295u, 1u, var_1.a, var_1.c.x) << (vec4<u32>(var_1.c.x, 4294967295u, 1u, 4294967295u) % vec4<u32>(32u))) | ~vec4<u32>(global1.x, 0u, global1.x, 1u), ~(vec4<u32>(29140u, global2[_wgslsmith_index_u32(var_3.x, 10u)], var_3.x, var_1.a) >> (vec4<u32>(1u, 30483u, 43721u, global2[_wgslsmith_index_u32(var_3.x, 10u)]) % vec4<u32>(32u))), min(vec4<u32>(27587u, 4294967295u, u_input.b, 30982u), vec4<u32>(var_3.x, global2[_wgslsmith_index_u32(88252u, 10u)], 110444u, 0u)) << ((vec4<u32>(var_1.a, 23554u, 40258u, 1u) | vec4<u32>(26390u, u_input.b, 53010u, global1.x)) % vec4<u32>(32u)))), ~(~u_input.a), var_1, _wgslsmith_f_op_vec3_f32(floor(global0[_wgslsmith_index_u32(reverseBits(var_1.c.x), 30u)])));
}

fn func_4(arg_0: Struct_2) -> vec4<i32> {
    let var_0 = 1266f;
    global2 = array<u32, 10>();
    global0 = array<vec3<f32>, 30>();
    global1 = vec4<u32>(u_input.b, global1.x, ~(~68037u), abs(1802u));
    var var_1 = !((_wgslsmith_sub_u32(_wgslsmith_div_u32(arg_0.d.c.x, 29486u), _wgslsmith_mod_u32(arg_0.b.x, u_input.b)) == 104042u) != select(true, any(vec2<bool>(false, false)), false));
    return arg_0.a.d & vec4<i32>(~u_input.c.x, _wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.a.x, arg_0.d.d.x, arg_0.d.d.x, -1i) << (arg_0.b % vec4<u32>(32u)), firstLeadingBit(arg_0.d.d), true), arg_0.d.d), arg_0.d.d.x, u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = select(countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(global1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(global1.x, 10u)], global1.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1.x, 10u)], 10u)], global1.x), vec4<u32>(global1.x, 42986u, u_input.b, u_input.b)), ~global2[_wgslsmith_index_u32(0u, 10u)], _wgslsmith_mod_u32(4294967295u, u_input.b)), vec4<u32>(_wgslsmith_mod_u32(global1.x, u_input.b), 1u, global2[_wgslsmith_index_u32(global1.x, 10u)], global1.x))), vec4<u32>(~_wgslsmith_mult_u32(32596u, 10740u), u_input.b, _wgslsmith_mult_u32(4294967295u, global1.x), 1u), vec4<bool>(true, true, global2[_wgslsmith_index_u32(1u, 10u)] == _wgslsmith_sub_u32(52031u, 1u), all(vec2<bool>(true, true))));
    global2 = array<u32, 10>();
    let var_0 = ~_wgslsmith_add_u32(~(~4294967295u & min(104452u, global1.x)), 88607u);
    var var_1 = Struct_2(Struct_1(~4294967295u, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1005f, _wgslsmith_f_op_f32(round(768f))))), global1.zxz, (vec4<i32>(-4785i, u_input.d, -1i, 27962i) & ~vec4<i32>(-2147483647i, u_input.c.x, 2147483647i, u_input.c.x)) | func_4(func_1(u_input.a)), 0u & global1.x), vec4<u32>(~min(~global2[_wgslsmith_index_u32(global1.x, 10u)], global1.x), 101009u, _wgslsmith_div_u32(1u, 2603u), ~(u_input.b >> (0u % 32u)) ^ func_1(abs(vec3<i32>(7469i, 9595i, u_input.c.x))).a.c.x), ~_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(-23949i, -1i, 0i) & vec3<i32>(u_input.a.x, 33037i, u_input.a.x)), select(_wgslsmith_add_vec3_i32(u_input.a, vec3<i32>(2147483647i, 0i, u_input.d)), select(u_input.a, u_input.a, vec3<bool>(true, false, true)), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false))), select(-u_input.a, select(u_input.a, u_input.a, vec3<bool>(true, false, true)), vec3<bool>(true, true, true))), func_1(-u_input.a).a, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-679f, -690f) * _wgslsmith_f_op_f32(809f + -1016f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(select(-1913f, 892f, false))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(150f, 360f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1671f + -1023f), _wgslsmith_f_op_f32(-1000f + 1310f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1879f) * -673f))));
    let var_2 = vec4<bool>(_wgslsmith_mult_u32(max(_wgslsmith_add_u32(u_input.b, global1.x), func_1(vec3<i32>(24630i, u_input.a.x, u_input.d)).b.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 10u)], 10u)], 3450u, 50807u, global1.x), var_1.b)) != _wgslsmith_add_u32(u_input.b, abs(94235u ^ u_input.b)), all(!vec3<bool>(select(false, true, true), all(vec3<bool>(true, true, false)), true)), true, !(var_0 <= 1u));
    var var_3 = func_1(abs(select(_wgslsmith_mod_vec3_i32(~u_input.a, ~vec3<i32>(var_1.d.d.x, -70957i, 21304i)), _wgslsmith_sub_vec3_i32(u_input.a ^ var_1.c, vec3<i32>(u_input.d, var_1.d.d.x, u_input.c.x)), !(!var_2.zyx)))).a;
    global2 = array<u32, 10>();
    var var_4 = func_1(vec3<i32>(var_3.d.x & var_1.a.d.x, u_input.c.x, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(var_1.d.d.x, var_1.d.d.x), -34853i, abs(17535i)) & 36478i)).d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(_wgslsmith_sub_u32(57072u, var_0), _wgslsmith_dot_vec3_u32(~vec3<u32>(14632u, 16376u, u_input.b), var_3.c)) & u_input.b);
}

