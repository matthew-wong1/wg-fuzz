struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 7>;

var<private> global1: Struct_1 = Struct_1(true, vec2<u32>(37699u, 25941u), 5399i, 5352u, 1411f);

var<private> global2: vec3<u32> = vec3<u32>(15298u, 4294967295u, 1u);

var<private> global3: i32 = 81453i;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: f32) -> u32 {
    var var_0 = Struct_1(-431f <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(-arg_0)), 883f), u_input.b.yy, 2147483647i, _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(global2.x, ~global2.x, u_input.d, _wgslsmith_mod_u32(global1.d, global1.d))), vec4<u32>(~global2.x, u_input.d, ~1u, 0u) ^ ~_wgslsmith_mod_vec4_u32(vec4<u32>(global2.x, 133580u, u_input.b.x, global1.b.x), vec4<u32>(global1.b.x, 101161u, u_input.d, global2.x))), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(4294967295u >> (u_input.b.x % 32u)), global2.x) | 4294967295u, 7u)]);
    let var_1 = Struct_1(!var_0.a, vec2<u32>(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(4294967295u, var_0.b.x, global1.d, global2.x)), select(~vec4<u32>(global1.d, var_0.b.x, u_input.d, 0u), vec4<u32>(4294967295u, global2.x, 8645u, 14325u), true)), global2.x), var_0.c, ~_wgslsmith_mult_u32(global1.d, ~var_0.b.x & _wgslsmith_mod_u32(global2.x, global1.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.e)))) - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.d, 7u)])));
    let var_2 = max(-2147483647i, ~min(global1.c, min(~(-13885i), _wgslsmith_mod_i32(var_0.c, -2147483647i))));
    var var_3 = var_1;
    var var_4 = !(!(!(!select(vec2<bool>(false, global1.a), vec2<bool>(global1.a, var_0.a), var_0.a))));
    return global2.x;
}

fn func_2(arg_0: Struct_1) -> vec2<u32> {
    var var_0 = arg_0;
    global2 = ~(~_wgslsmith_sub_vec3_u32(~_wgslsmith_sub_vec3_u32(u_input.b, vec3<u32>(global2.x, var_0.b.x, 7356u)), max(u_input.b, ~u_input.b)));
    var_0 = Struct_1(false, vec2<u32>(0u, arg_0.b.x), 43947i, 72729u, _wgslsmith_f_op_f32(1000f * -2111f));
    var_0 = Struct_1(var_0.a, firstTrailingBit(vec2<u32>(~var_0.b.x, _wgslsmith_mod_u32(1929u, arg_0.b.x))) ^ vec2<u32>(_wgslsmith_sub_u32(global2.x >> (4294967295u % 32u), global2.x), arg_0.b.x), _wgslsmith_dot_vec2_i32(~reverseBits(~vec2<i32>(-64174i, var_0.c)), _wgslsmith_sub_vec2_i32(vec2<i32>(-global1.c, 8200i), abs(u_input.c) & -u_input.c)), countOneBits(0u), 1162f);
    var var_1 = arg_0;
    return ~(vec2<u32>(global2.x | abs(arg_0.b.x), 76272u) | ~vec2<u32>(~1u, func_3(global1.e, var_0.e)));
}

fn func_1() -> vec4<i32> {
    global2 = vec3<u32>(global1.b.x, _wgslsmith_sub_u32(reverseBits(1u), select(_wgslsmith_dot_vec2_u32(func_2(Struct_1(global1.a, global1.b, 2233i, u_input.b.x, -906f)), global2.zy), ~(~22097u), false)), ~10648u);
    var var_0 = 1031f;
    var var_1 = Struct_1(any(!vec2<bool>(true, all(vec2<bool>(false, global1.a)))), func_2(Struct_1(any(select(vec2<bool>(global1.a, global1.a), vec2<bool>(global1.a, true), vec2<bool>(global1.a, false))), vec2<u32>(~global1.d, 4145u), abs(global1.c) << (_wgslsmith_clamp_u32(global1.b.x, 4294967295u, 1u) % 32u), 10089u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1496f, global1.e)) - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 7u)])))), u_input.c.x ^ firstLeadingBit(u_input.c.x), u_input.d, _wgslsmith_f_op_f32(max(global1.e, 1000f)));
    global3 = 0i;
    global1 = Struct_1(any(vec3<bool>(any(!vec3<bool>(true, global1.a, true)), !global1.a, !select(false, var_1.a, false))), var_1.b, -2147483647i, ~_wgslsmith_div_u32(4294967295u, 68020u), global0[_wgslsmith_index_u32(~(_wgslsmith_clamp_u32(var_1.d, u_input.d, global1.b.x) & _wgslsmith_div_u32(reverseBits(global1.b.x), _wgslsmith_mult_u32(global2.x, u_input.b.x))), 7u)]);
    return ~(firstLeadingBit(vec4<i32>(~2147483647i, ~var_1.c, -var_1.c, 1i)) << (vec4<u32>(13319u, u_input.b.x ^ 0u, ~_wgslsmith_sub_u32(26656u, u_input.d), global1.d) % vec4<u32>(32u)));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec2<u32>) -> bool {
    global1 = Struct_1(all(select(vec3<bool>(any(vec2<bool>(true, global1.a)), all(vec3<bool>(true, arg_0.a, arg_0.a)), arg_0.a), vec3<bool>(true, true, true), true)), vec2<u32>(~arg_0.b.x, firstLeadingBit(_wgslsmith_div_u32(global2.x & 4294967295u, _wgslsmith_mult_u32(u_input.d, 4294967295u)))), 1i, abs(2743u), global0[_wgslsmith_index_u32(arg_0.b.x, 7u)]);
    global1 = Struct_1(any(select(select(!vec2<bool>(arg_0.a, true), vec2<bool>(true, global1.a), arg_0.d > 9768u), vec2<bool>(all(vec4<bool>(true, arg_0.a, true, arg_0.a)), true), global1.a)), vec2<u32>(30195u, arg_0.d), ~func_1().x, arg_0.b.x, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global1.d, 7u)]) * _wgslsmith_f_op_f32(abs(-608f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-228f)) + _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(4294967295u, 7u)])))), 7u)], _wgslsmith_f_op_f32(-global1.e)));
    var var_0 = Struct_1(global1.c > 10093i, vec2<u32>(arg_0.d, arg_0.b.x) ^ arg_2, i32(-1i) * -firstTrailingBit(arg_1.x), ~_wgslsmith_mod_u32(_wgslsmith_sub_u32(~arg_0.b.x, u_input.b.x >> (4294967295u % 32u)), ~abs(global1.d)), _wgslsmith_f_op_f32(f32(-1f) * -701f));
    let var_1 = arg_0;
    let var_2 = var_1.b;
    return !var_1.a;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = 1u;
    global2 = u_input.b;
    var var_1 = -firstTrailingBit(vec4<i32>(reverseBits(arg_0.c), ~arg_0.c, 1i, -u_input.a));
    global0 = array<f32, 7>();
    let var_2 = arg_0;
    return Struct_1(false, _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(global1.b, ~(~vec2<u32>(1u, 4294967295u)), ~_wgslsmith_div_vec2_u32(global1.b, vec2<u32>(global2.x, global1.d))), vec2<u32>(arg_0.d, select(23260u, 0u, true))), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.c, countOneBits(i32(-1i) * -1555i), ~abs(-16062i), var_2.c), select((vec4<i32>(var_2.c, var_1.x, global1.c, global1.c) << (vec4<u32>(1u, 4577u, 4294967295u, 48150u) % vec4<u32>(32u))) & vec4<i32>(u_input.c.x, arg_0.c, u_input.c.x, var_2.c), vec4<i32>(firstLeadingBit(1i), 1i, i32(-1i) * -1i, global1.c), all(vec2<bool>(true, true)))), countOneBits(21376u), 706f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_1(func_4(Struct_1(global1.a, vec2<u32>(global1.b.x, 0u), global1.c, 39553u, _wgslsmith_f_op_f32(f32(-1f) * -893f)), func_1(), u_input.b.xy), ~_wgslsmith_mult_vec2_u32(vec2<u32>(global2.x, 7745u), vec2<u32>(4294967295u, u_input.d) >> (vec2<u32>(global1.d, global1.d) % vec2<u32>(32u))), min(_wgslsmith_mult_i32(1i, u_input.c.x), global1.c), ~1u, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(global2.x, u_input.d), 7u)], global0[_wgslsmith_index_u32(~u_input.b.x, 7u)]))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-715f, -1000f), vec2<f32>(global0[_wgslsmith_index_u32(u_input.d, 7u)], -1705f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(1u, 7u)], -435f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(712f, global0[_wgslsmith_index_u32(4294967295u, 7u)]))), vec2<bool>(global1.a, false))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(~10308u, 7u)], _wgslsmith_f_op_f32(f32(-1f) * -799f))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.b.x, u_input.d, global2.x), ~global2.x), countOneBits(4294967295u) | (var_0.d << (global2.x % 32u)), _wgslsmith_clamp_u32(var_0.d >> (global1.b.x % 32u), select(0u, 1u, false), 94872u)), global2.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1829f, -1650f, global0[_wgslsmith_index_u32(9695u, 7u)]), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-257f, var_0.e, -340f))))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -174f), _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(var_0.d, 7u)], -464f))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.e, 572f, global0[_wgslsmith_index_u32(global1.b.x, 7u)])), _wgslsmith_f_op_vec3_f32(vec3<f32>(-877f, global0[_wgslsmith_index_u32(var_0.d, 7u)], 1000f) * vec3<f32>(global1.e, -663f, -178f)), vec3<bool>(global1.a, global1.a, false))))), _wgslsmith_clamp_i32(var_0.c, func_1().x, u_input.a), select(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.b.x, 45603u) >> (func_2(Struct_1(var_0.a, vec2<u32>(17319u, var_0.b.x), 54359i, global2.x, -1549f)) % vec2<u32>(32u)), ~global1.b, global2.yx), vec2<u32>(var_0.d, 0u), any(select(!vec2<bool>(false, var_0.a), !vec2<bool>(var_0.a, global1.a), !vec2<bool>(global1.a, false)))));
}

