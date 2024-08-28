struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: bool,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7>;

var<private> global1: array<bool, 28> = array<bool, 28>(true, true, true, false, false, true, false, true, false, true, true, false, true, true, false, true, true, false, true, true, false, false, false, true, false, false, false, true);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> f32 {
    var var_0 = vec2<i32>(countOneBits(_wgslsmith_mult_i32(u_input.c, i32(-1i) * -10459i)), -20573i);
    global1 = array<bool, 28>();
    var var_1 = vec4<u32>((u_input.d >> (96004u % 32u)) << (64574u % 32u), u_input.d, ~(~(107233u & u_input.d)), firstTrailingBit(countOneBits(abs(u_input.d)) ^ (u_input.d | u_input.d)));
    var_0 = vec2<i32>(21990i | _wgslsmith_sub_i32(var_0.x, -45668i), var_0.x) | ~vec2<i32>(~1i, var_0.x);
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.d, 4294967295u), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, var_1.x, u_input.d, 39446u), vec4<u32>(u_input.d, u_input.d, 19709u, u_input.d)), u_input.d))), 7u)];
    return _wgslsmith_f_op_f32(f32(-1f) * -385f);
}

fn func_2(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_1) -> f32 {
    var var_0 = vec4<f32>(-421f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), 1092f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1451f * -2186f))));
    global1 = array<bool, 28>();
    let var_1 = vec2<bool>(false, select(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(floor(972f))) < -279f, _wgslsmith_f_op_f32(-var_0.x) <= _wgslsmith_f_op_f32(f32(-1f) * -436f), !((global1[_wgslsmith_index_u32(0u, 28u)] && arg_2.c) | arg_2.d)));
    let var_2 = vec2<u32>(11911u, ~(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_0, 0u, arg_2.e), vec4<u32>(5169u, 4294967295u, 12613u, 0u)))));
    var var_3 = arg_2;
    return var_0.x;
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_1(vec4<i32>(~_wgslsmith_sub_i32(0i, u_input.a), u_input.c, _wgslsmith_clamp_i32(~max(u_input.c, 2147483647i), u_input.b, reverseBits(_wgslsmith_add_i32(-49574i, -26727i))), -1i), firstTrailingBit(_wgslsmith_div_vec2_u32(arg_0.ww & vec2<u32>(4294967295u, 0u), ~arg_0.xx) ^ (_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0.x, u_input.d), vec2<u32>(0u, arg_0.x), arg_0.yw) & (arg_0.wy & arg_0.xx))), true, global1[_wgslsmith_index_u32(abs(_wgslsmith_mod_u32(arg_0.x, ~4294967295u)), 28u)], arg_0.x);
    var var_1 = -1000f;
    var var_2 = global0[_wgslsmith_index_u32(2755u, 7u)];
    let var_3 = firstTrailingBit(~(-((u_input.a & u_input.c) << (_wgslsmith_dot_vec4_u32(arg_0, vec4<u32>(4294967295u, var_0.b.x, 58855u, var_0.e)) % 32u))));
    var_2 = Struct_1(vec4<i32>(var_0.a.x, 1i, _wgslsmith_add_i32(_wgslsmith_div_i32(-10750i, 12020i), 1i) ^ -_wgslsmith_add_i32(-1i, var_3), var_3), vec2<u32>(max(countOneBits(1u), var_0.b.x), ~(firstLeadingBit(arg_0.x) & 25219u)), var_0.c, any(select(select(vec2<bool>(var_2.c, false), select(vec2<bool>(global1[_wgslsmith_index_u32(0u, 28u)], global1[_wgslsmith_index_u32(var_0.b.x, 28u)]), vec2<bool>(global1[_wgslsmith_index_u32(u_input.d, 28u)], true), false), vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.d, 28u)])), !(!vec2<bool>(global1[_wgslsmith_index_u32(arg_0.x, 28u)], var_0.c)), select(vec2<bool>(var_2.c, var_2.d), vec2<bool>(false, var_2.c), all(vec2<bool>(false, var_0.c))))), var_2.b.x);
    return Struct_1(_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(abs(-vec4<i32>(-1i, 0i, -2147483647i, u_input.b)), var_0.a), ~(~reverseBits(vec4<i32>(var_0.a.x, -52824i, 2147483647i, -30312i)))), ~_wgslsmith_sub_vec2_u32(arg_0.ww, ~var_0.b), var_0.d, any(vec3<bool>(any(vec4<bool>(true, var_0.c, var_2.c, global1[_wgslsmith_index_u32(42521u, 28u)])), global1[_wgslsmith_index_u32(u_input.d, 28u)], var_0.d)), ~var_2.e);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    var var_0 = Struct_1(arg_0.a, arg_0.b, (~u_input.d << (_wgslsmith_dot_vec2_u32(vec2<u32>(61722u, 4294967295u) >> (vec2<u32>(arg_0.b.x, 73139u) % vec2<u32>(32u)), arg_0.b & arg_0.b) % 32u)) <= func_4(vec4<u32>(_wgslsmith_div_u32(79327u, 1u), _wgslsmith_mod_u32(arg_1.e, 51235u), arg_0.b.x, _wgslsmith_div_u32(arg_1.e, 16236u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1191f, -1176f, -1677f, -179f))) + vec4<f32>(905f, 160f, 1000f, 515f))).b.x, all(vec2<bool>(select(0u == arg_1.b.x, true || global1[_wgslsmith_index_u32(u_input.d, 28u)], true), all(!vec3<bool>(arg_0.c, true, false)))), firstTrailingBit(arg_1.e));
    var_0 = func_4(reverseBits(~countOneBits(min(vec4<u32>(arg_0.b.x, arg_0.e, 39329u, 0u), vec4<u32>(1u, u_input.d, var_0.e, u_input.d)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), 139f, _wgslsmith_f_op_f32(func_2(~30023u, min(vec2<u32>(var_0.b.x, u_input.d), vec2<u32>(arg_0.b.x, 47181u)), arg_0))) * vec4<f32>(1f, 1f, 1f, 1f)));
    var var_1 = Struct_1(_wgslsmith_add_vec4_i32(-func_4(select(vec4<u32>(1u, var_0.b.x, var_0.e, 72245u), vec4<u32>(var_0.b.x, 4294967295u, 0u, 24518u), arg_0.c), vec4<f32>(1237f, 398f, 1000f, 828f)).a, min(reverseBits(select(vec4<i32>(var_0.a.x, 77719i, -2147483647i, -16698i), var_0.a, false)), _wgslsmith_sub_vec4_i32(arg_1.a, -arg_1.a))), vec2<u32>(~1u, 0u), select(!arg_0.d, false, !global1[_wgslsmith_index_u32(48118u, 28u)] || false) != false, !(!all(!vec4<bool>(arg_0.d, false, global1[_wgslsmith_index_u32(arg_1.b.x, 28u)], global1[_wgslsmith_index_u32(58553u, 28u)]))), var_0.b.x << (var_0.b.x % 32u));
    var var_2 = Struct_1(firstTrailingBit(arg_0.a), select(vec2<u32>(reverseBits(arg_0.b.x), u_input.d), ~vec2<u32>(firstTrailingBit(46789u), ~56852u), select(var_1.d, true, arg_1.c)), var_0.c, !all(select(vec2<bool>(arg_0.c, var_0.d), !vec2<bool>(true, arg_1.c), select(vec2<bool>(true, arg_0.d), vec2<bool>(var_1.d, true), vec2<bool>(true, global1[_wgslsmith_index_u32(arg_0.b.x, 28u)])))), ~(~_wgslsmith_add_u32(0u, 73730u)));
    let var_3 = !vec3<bool>(any(select(vec4<bool>(arg_0.c, arg_0.c, var_1.c, true), select(vec4<bool>(arg_1.c, var_0.c, arg_0.d, true), vec4<bool>(var_0.d, true, false, true), false), !vec4<bool>(false, false, true, arg_1.c))), var_1.c & select(true && var_1.c, select(false, arg_1.d, true), !var_0.d), false);
    return arg_1;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: bool) -> vec4<bool> {
    let var_0 = func_5(func_4(firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.e, 45405u, u_input.d, u_input.d), ~vec4<u32>(1u, 0u, arg_0.b.x, arg_0.b.x), vec4<u32>(54920u, arg_1.e, 50021u, 4294967295u))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(513f, -600f, -439f, -1848f), vec4<f32>(-211f, 167f, 624f, 315f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -754f, -230f, -2056f))), vec4<f32>(-849f, -800f, _wgslsmith_f_op_f32(func_2(arg_0.e, arg_1.b, Struct_1(vec4<i32>(2147483647i, u_input.a, -1023i, -21796i), vec2<u32>(arg_1.b.x, 765u), arg_3, global1[_wgslsmith_index_u32(0u, 28u)], arg_0.e))), _wgslsmith_f_op_f32(trunc(132f)))))), Struct_1(firstTrailingBit(firstTrailingBit(_wgslsmith_mod_vec4_i32(arg_0.a, arg_0.a))), vec2<u32>(arg_0.e, 52159u) ^ vec2<u32>(_wgslsmith_mult_u32(4294967295u, u_input.d), ~0u), true, true, u_input.d), -40937i);
    let var_1 = _wgslsmith_mult_i32(31963i, arg_1.a.x) | ~(~41897i);
    let var_2 = false;
    global0 = array<Struct_1, 7>();
    var var_3 = ~arg_2;
    return select(select(!(!vec4<bool>(false, var_0.c, false, true)), !vec4<bool>(any(vec2<bool>(true, var_2)), var_2, arg_0.c, true && arg_3), !vec4<bool>(var_2, arg_0.c, !arg_0.c, any(vec3<bool>(arg_1.d, true, global1[_wgslsmith_index_u32(0u, 28u)])))), select(vec4<bool>(!var_0.d, !arg_1.c, all(!vec4<bool>(true, true, var_2, false)), false), !vec4<bool>(all(vec2<bool>(false, true)), all(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 28u)], var_0.c, false)), arg_1.c, var_0.c), vec4<bool>(all(vec4<bool>(false, var_0.d, arg_3, arg_1.c)), true, !(!arg_3), false)), select(!vec4<bool>(all(vec3<bool>(true, false, false)), arg_1.d, var_2 || false, select(arg_0.d, global1[_wgslsmith_index_u32(arg_1.e, 28u)], false)), !vec4<bool>(arg_1.a.x <= var_0.a.x, true, all(vec4<bool>(var_2, arg_0.d, true, false)), false | global1[_wgslsmith_index_u32(u_input.d, 28u)]), select(select(select(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 28u)], false, true, var_0.c), vec4<bool>(arg_3, global1[_wgslsmith_index_u32(u_input.d, 28u)], var_0.c, false), false), vec4<bool>(true, var_2, false, false), !arg_3), !vec4<bool>(arg_3, true, true, global1[_wgslsmith_index_u32(4294967295u, 28u)]), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(1542f)))), _wgslsmith_f_op_f32(-364f + _wgslsmith_f_op_f32(step(413f, -1691f))))))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1258f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(533f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1848f * -242f)))));
    let var_1 = Struct_1(vec4<i32>(_wgslsmith_dot_vec2_i32(select(select(vec2<i32>(u_input.b, 1i), vec2<i32>(0i, u_input.c), false), _wgslsmith_add_vec2_i32(vec2<i32>(66908i, -2147483647i), vec2<i32>(u_input.b, -2147483647i)), false), reverseBits(vec2<i32>(2147483647i, u_input.c))), -((u_input.b | -8038i) >> (u_input.d % 32u)), u_input.b, _wgslsmith_mult_i32(u_input.a, u_input.c)), vec2<u32>(85959u ^ (0u << (select(15405u, 47418u, global1[_wgslsmith_index_u32(u_input.d, 28u)]) % 32u)), u_input.d), any(!select(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.d, 28u)], false, global1[_wgslsmith_index_u32(u_input.d, 28u)], global1[_wgslsmith_index_u32(31312u, 28u)]), !vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.d, 28u)], global1[_wgslsmith_index_u32(u_input.d, 28u)], true), !global1[_wgslsmith_index_u32(66338u, 28u)])), select(false, true & global1[_wgslsmith_index_u32(0u, 28u)], all(func_1(global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(0u, 7u)], 24362u, global1[_wgslsmith_index_u32(u_input.d, 28u)]))) & true, 33187u);
    global0 = array<Struct_1, 7>();
    var var_2 = u_input.b;
    var_2 = ~(-11970i);
    let var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-434f)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_sub_i32(1016i, -33566i), var_1.a.x, 11601i), -_wgslsmith_add_i32(var_1.a.x, reverseBits(_wgslsmith_dot_vec2_i32(var_1.a.zw, vec2<i32>(u_input.c, var_1.a.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(var_0, -637f), vec2<f32>(var_3, var_0)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, var_0), vec2<f32>(1034f, var_0), global1[_wgslsmith_index_u32(u_input.d, 28u)])), select(vec2<bool>(true, var_1.c), vec2<bool>(false, false), vec2<bool>(false, true)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(614f, -926f)) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_3, var_3), vec2<f32>(378f, var_3))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1624f))));
}

