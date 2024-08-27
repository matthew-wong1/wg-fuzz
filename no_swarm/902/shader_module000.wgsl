struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 18> = array<i32, 18>(-3321i, 2147483647i, -1i, -1i, 24655i, 2147483647i, 3887i, 22583i, 0i, 2147483647i, 2147483647i, 2147483647i, 0i, 30180i, 1i, -3926i, 18906i, 6511i);

var<private> global1: array<vec3<bool>, 21>;

var<private> global2: array<vec3<u32>, 6>;

var<private> global3: Struct_1;

var<private> global4: Struct_1 = Struct_1(vec2<i32>(-15908i, 11887i), vec3<u32>(0u, 1u, 1u), false, 30907u);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1) -> u32 {
    let var_0 = arg_1;
    let var_1 = Struct_1(min(max(vec2<i32>(global4.a.x, 1i), vec2<i32>(global4.a.x, _wgslsmith_mult_i32(global4.a.x, global0[_wgslsmith_index_u32(u_input.b, 18u)]))), -vec2<i32>(var_0.a.x, i32(-1i) * -2147483647i)), select(~(vec3<u32>(41184u, 4294967295u, 8879u) ^ vec3<u32>(33960u, 1u, arg_1.d)) | (var_0.b >> ((global3.b & global4.b) % vec3<u32>(32u))), vec3<u32>(1u, u_input.b, _wgslsmith_sub_u32(_wgslsmith_mult_u32(60032u, arg_1.d), ~1u)), true), false, abs(0u));
    var var_2 = var_1;
    let var_3 = var_0;
    global4 = Struct_1(abs(select(_wgslsmith_sub_vec2_i32(var_3.a, vec2<i32>(-2147483647i, arg_1.a.x)), vec2<i32>(69106i, -46341i), var_3.c)) | (arg_0.yw | vec2<i32>(max(var_1.a.x, 17934i), _wgslsmith_mod_i32(var_1.a.x, -5407i))), arg_1.b, any(select(global1[_wgslsmith_index_u32(var_1.b.x >> (1u % 32u), 21u)], global1[_wgslsmith_index_u32(min(1116u, 0u), 21u)], select(global1[_wgslsmith_index_u32(countOneBits(4294967295u), 21u)], !vec3<bool>(global3.c, true, var_1.c), true))), ~4294967295u);
    return 33098u;
}

fn func_4(arg_0: u32) -> vec4<i32> {
    let var_0 = Struct_1(global3.a, countOneBits(countOneBits(global4.b)), global3.c, 8664u);
    global4 = Struct_1(~global3.a << ((~(~global3.b.zz) >> (vec2<u32>(var_0.d, u_input.b) % vec2<u32>(32u))) % vec2<u32>(32u)), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global4.d, 1u, firstTrailingBit(var_0.b.x)), 6u)], false, ~1u);
    global1 = array<vec3<bool>, 21>();
    global1 = array<vec3<bool>, 21>();
    var var_1 = !(!(!vec4<bool>(global4.c, global3.c, any(global1[_wgslsmith_index_u32(1u, 21u)]), !global3.c)));
    return -firstLeadingBit((vec4<i32>(-1i) * -vec4<i32>(-2147483647i, 40970i, u_input.a, var_0.a.x)) & vec4<i32>(~global0[_wgslsmith_index_u32(59425u, 18u)], -33778i, u_input.a, min(global3.a.x, var_0.a.x)));
}

fn func_2(arg_0: Struct_1) -> vec4<i32> {
    return func_4(_wgslsmith_clamp_u32(78801u, func_3(_wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(global4.a.x, global0[_wgslsmith_index_u32(u_input.b, 18u)], global3.a.x, arg_0.a.x)), vec4<i32>(-27888i, global0[_wgslsmith_index_u32(global4.b.x, 18u)], global4.a.x, u_input.a)), arg_0), 90371u));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1) -> i32 {
    var var_0 = arg_1;
    var var_1 = 0u;
    global0 = array<i32, 18>();
    let var_2 = -_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(-abs(vec4<i32>(1i, -63822i, u_input.a, -1i)), func_2(arg_1)), func_2(Struct_1(~global4.a, vec3<u32>(arg_1.b.x, 64814u, 1u), true, _wgslsmith_dot_vec4_u32(vec4<u32>(23548u, 24291u, arg_0.x, 43008u), vec4<u32>(0u, global4.b.x, 6222u, arg_1.b.x)))));
    var var_3 = ~(~4294967295u);
    return u_input.a >> (~(func_3(_wgslsmith_mod_vec4_i32(var_2, vec4<i32>(19232i, 14748i, -21873i, u_input.a)), Struct_1(vec2<i32>(var_2.x, var_2.x), global4.b, true, 13567u)) | ~var_0.b.x) % 32u);
}

fn func_5(arg_0: Struct_1, arg_1: vec4<u32>) -> Struct_1 {
    global3 = arg_0;
    let var_0 = func_2(Struct_1(_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(~arg_0.a, vec2<i32>(1i, global0[_wgslsmith_index_u32(18045u, 18u)])), vec2<i32>(arg_0.a.x, -42789i)), vec3<u32>(63107u, u_input.b, 93117u), false, 76973u)).yy;
    return Struct_1(global3.a, global4.b, any(vec2<bool>(!(global4.c & arg_0.c), all(select(vec4<bool>(global4.c, true, false, global4.c), vec4<bool>(arg_0.c, false, global3.c, true), arg_0.c)))), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_1(~vec2<i32>(2044i, 0i), global3.b, _wgslsmith_dot_vec3_u32(global3.b, min(_wgslsmith_mult_vec3_u32(vec3<u32>(global4.b.x, 0u, u_input.b), vec3<u32>(0u, 1u, global3.b.x)), vec3<u32>(u_input.b, global4.b.x, 1u))) != _wgslsmith_div_u32(~_wgslsmith_add_u32(global4.d, global4.b.x), ~0u), ~(~global4.d));
    global3 = func_5(Struct_1(vec2<i32>(~(-global3.a.x), func_1(_wgslsmith_clamp_vec4_u32(vec4<u32>(16321u, global3.b.x, 1u, 1u), vec4<u32>(global4.b.x, global4.b.x, global3.b.x, global3.d), vec4<u32>(4294967295u, global4.d, global3.b.x, global3.d)), Struct_1(vec2<i32>(-1i, -13022i), vec3<u32>(45279u, 1634u, 96415u), global3.c, global4.b.x))), vec3<u32>(~global4.b.x, ~_wgslsmith_dot_vec2_u32(global3.b.zx, global4.b.zx), 18613u), false, _wgslsmith_dot_vec2_u32(global3.b.yx, _wgslsmith_mult_vec2_u32(global4.b.zx, vec2<u32>(0u, 1u) | global4.b.yz))), select(_wgslsmith_div_vec4_u32(vec4<u32>(global3.b.x | 0u, u_input.b, 60685u, global3.d), ~reverseBits(vec4<u32>(7958u, u_input.b, global4.d, 0u))), _wgslsmith_sub_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(global3.b.x, 9909u, 46196u, 1u), vec4<u32>(global4.b.x, global3.b.x, 20114u, global4.d)), ~(~vec4<u32>(75069u, 4294967295u, global4.b.x, 1u))), global3.c));
    let var_0 = func_5(func_5(Struct_1(~(~vec2<i32>(global4.a.x, global4.a.x)), _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(global4.b, vec3<u32>(11329u, 0u, 82342u)), ~global2[_wgslsmith_index_u32(global3.b.x, 6u)], vec3<u32>(25056u, global3.d, 103476u)), true, ~countOneBits(53788u)), ~(countOneBits(vec4<u32>(1u, u_input.b, global3.b.x, 62068u)) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(global3.d, u_input.b, 1u, 4294967295u), vec4<u32>(u_input.b, global3.d, 4294967295u, u_input.b)))), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(select(global3.b.x, 0u, global4.c), global3.d, func_3(vec4<i32>(74824i, global0[_wgslsmith_index_u32(u_input.b, 18u)], global0[_wgslsmith_index_u32(global3.b.x, 18u)], 1i), Struct_1(global4.a, global3.b, false, global3.d))), countOneBits(~global4.d), 0u, 1u), _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, 0u, 2776u, u_input.b), _wgslsmith_div_vec4_u32(vec4<u32>(global4.b.x, 4294967295u, 25595u, 0u), vec4<u32>(4294967295u, global4.b.x, 1u, 37599u))), ~abs(vec4<u32>(global3.b.x, u_input.b, global4.d, u_input.b)))));
    var var_1 = _wgslsmith_clamp_i32(u_input.a, ~u_input.a, i32(-1i) * -43513i);
    let var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-483f, -853f)))), vec2<f32>(_wgslsmith_f_op_f32(select(-1473f, -673f, global4.c)), _wgslsmith_f_op_f32(2637f + -1125f)))))));
    var var_3 = ~firstTrailingBit(reverseBits(max(vec4<i32>(-1i, -48440i, 1i, var_0.a.x), vec4<i32>(global0[_wgslsmith_index_u32(0u, 18u)], -11261i, -2147483647i, global0[_wgslsmith_index_u32(global4.b.x, 18u)]))) ^ ~vec4<i32>(u_input.a, u_input.a, 1i, global3.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(1u, abs(0u), _wgslsmith_clamp_i32(-1i, ~u_input.a, 48740i), var_0.d | select(_wgslsmith_dot_vec4_u32(vec4<u32>(global4.b.x, 1u, 0u, 1u) >> (vec4<u32>(u_input.b, 1u, global4.d, u_input.b) % vec4<u32>(32u)), select(vec4<u32>(4294967295u, 44346u, 4294967295u, global3.b.x), vec4<u32>(23134u, u_input.b, 4294967295u, u_input.b), vec4<bool>(global3.c, global3.c, global4.c, global3.c))), _wgslsmith_sub_u32(9354u << (global3.d % 32u), _wgslsmith_dot_vec2_u32(global4.b.yy, global4.b.zy)), false), func_2(Struct_1(_wgslsmith_div_vec2_i32(~var_3.xw, var_0.a), firstTrailingBit(min(global3.b, vec3<u32>(28274u, 6100u, 18605u))), all(vec3<bool>(true, global3.c, true)), u_input.b)));
}

