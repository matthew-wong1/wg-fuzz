struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec2<u32>, 21> = array<vec2<u32>, 21>(vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 31396u), vec2<u32>(4294967295u, 81572u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(57769u, 2339u), vec2<u32>(62662u, 33741u), vec2<u32>(23365u, 0u), vec2<u32>(16242u, 4294967295u), vec2<u32>(57901u, 64814u), vec2<u32>(25432u, 4294967295u), vec2<u32>(47429u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(187u, 0u), vec2<u32>(768u, 92100u), vec2<u32>(12661u, 1u), vec2<u32>(62894u, 59793u), vec2<u32>(3103u, 0u), vec2<u32>(4784u, 0u), vec2<u32>(47186u, 23947u), vec2<u32>(32852u, 1u), vec2<u32>(0u, 35610u));

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: vec3<i32>, arg_1: bool, arg_2: vec4<i32>) -> vec4<u32> {
    global0 = ~25650u;
    global1 = array<vec2<u32>, 21>();
    var var_0 = -23774i;
    let var_1 = _wgslsmith_div_f32(539f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1018f)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -332f), 1103f))))));
    global1 = array<vec2<u32>, 21>();
    return min(countOneBits(select(vec4<u32>(59261u, ~u_input.b.x, reverseBits(9809u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 10312u, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, 0u))), vec4<u32>(~u_input.b.x, 52230u & u_input.b.x, u_input.b.x, 43363u), false)), ~abs(_wgslsmith_add_vec4_u32(~vec4<u32>(34265u, u_input.b.x, u_input.b.x, u_input.b.x), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, 3274u, u_input.b.x, 4294967295u), vec4<u32>(3013u, 0u, 26787u, 1u)))));
}

fn func_3(arg_0: Struct_2) -> vec3<bool> {
    global0 = u_input.b.x;
    var var_0 = Struct_1(select(!vec2<bool>(arg_0.a.a.x, !arg_0.a.a.x), select(select(arg_0.a.a, arg_0.a.a, vec2<bool>(false, arg_0.a.a.x)), vec2<bool>(arg_0.a.a.x & arg_0.a.a.x, true), vec2<bool>(u_input.b.x <= 1u, arg_0.a.a.x)), false));
    global1 = array<vec2<u32>, 21>();
    let var_1 = vec4<i32>(u_input.a, 0i, 2147483647i, firstTrailingBit(0i));
    global0 = _wgslsmith_clamp_u32(17228u ^ _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(34485u, 101889u, u_input.b.x), vec3<u32>(1u, u_input.b.x, 7305u) ^ vec3<u32>(13559u, 19065u, 1u)), 1u), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(select(vec4<u32>(55218u, 4294967295u, u_input.b.x, u_input.b.x) ^ vec4<u32>(4294967295u, 30122u, u_input.b.x, 33265u), vec4<u32>(4294967295u, 50561u, u_input.b.x, 0u), vec4<bool>(false, false, arg_0.a.a.x, true)), ~vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 101552u), ~(~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x))), ~(_wgslsmith_div_vec4_u32(vec4<u32>(128178u, u_input.b.x, u_input.b.x, 31960u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)) << (max(vec4<u32>(u_input.b.x, 0u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, 35732u, 4294967295u, u_input.b.x)) % vec4<u32>(32u)))), u_input.b.x);
    return !vec3<bool>(true, var_0.a.x, !var_0.a.x);
}

fn func_4(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_2) -> u32 {
    var var_0 = u_input.a | firstTrailingBit(-u_input.a);
    global1 = array<vec2<u32>, 21>();
    let var_1 = abs(_wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(-vec2<i32>(49948i, -1i), ~vec2<i32>(-1i, -2147483647i) & ~vec2<i32>(2147483647i, u_input.a), _wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, -2706i), vec2<i32>(-21203i, -37507i) >> (global1[_wgslsmith_index_u32(u_input.b.x, 21u)] % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, -1i), vec2<i32>(-1i, 36531i)))), _wgslsmith_div_vec2_i32(-(~vec2<i32>(u_input.a, u_input.a)), ~(~vec2<i32>(-14222i, u_input.a)))));
    let var_2 = 2147483647i >> (u_input.b.x % 32u);
    let var_3 = ~_wgslsmith_sub_u32(_wgslsmith_mult_u32(0u, u_input.b.x) ^ u_input.b.x, 1u);
    return _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, ~22247u, func_1(vec3<i32>(1i, 1i, var_1.x), arg_1.x, vec4<i32>(var_1.x, -2147483647i, u_input.a, u_input.a)).x, 1u), firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, 1u, 1059u), vec4<u32>(1u, 54083u, u_input.b.x, 0u)))), var_3 >> (countOneBits(13242u) % 32u));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -739f) - _wgslsmith_f_op_f32(-265f - -374f))))) + _wgslsmith_f_op_f32(f32(-1f) * -820f));
    let var_1 = Struct_1(vec2<bool>(true, true));
    let var_2 = ~(~(~u_input.b.x));
    let var_3 = global1[_wgslsmith_index_u32(func_4(936f, select(select(select(vec3<bool>(var_1.a.x, var_1.a.x, var_1.a.x), !vec3<bool>(true, var_1.a.x, var_1.a.x), u_input.b.x < u_input.b.x), select(!vec3<bool>(true, var_1.a.x, var_1.a.x), select(vec3<bool>(true, false, true), vec3<bool>(var_1.a.x, var_1.a.x, var_1.a.x), var_1.a.x), !var_1.a.x), true), func_3(Struct_2(var_1)), vec3<bool>(!(!var_1.a.x), !all(vec4<bool>(false, var_1.a.x, false, true)), any(func_3(Struct_2(Struct_1(vec2<bool>(true, false))))))), Struct_2(var_1)), 21u)];
    global0 = firstLeadingBit(max(~(~u_input.b.x), firstTrailingBit(var_2))) >> (firstLeadingBit(u_input.b.x & _wgslsmith_dot_vec2_u32(func_1(vec3<i32>(-36329i, -1i, u_input.a), false, vec4<i32>(u_input.a, u_input.a, 9858i, u_input.a)).yw, max(global1[_wgslsmith_index_u32(var_3.x, 21u)], vec2<u32>(0u, u_input.b.x)))) % 32u);
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(~_wgslsmith_add_vec4_i32(~(vec4<i32>(21908i, -1i, 2147483647i, u_input.a) | vec4<i32>(2147483647i, -2147483647i, 0i, -1i)), -firstLeadingBit(vec4<i32>(6065i, -2147483647i, u_input.a, u_input.a))));
    let var_1 = var_0.x;
    global1 = array<vec2<u32>, 21>();
    var var_2 = func_1(~(~var_0.wzx), !all(vec2<bool>(true, true)), vec4<i32>(-1i) * -countOneBits(max(vec4<i32>(-34815i, 2147483647i, u_input.a, var_0.x), vec4<i32>(u_input.a, u_input.a, var_0.x, 0i))));
    var var_3 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(53571u | _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, 1u, var_2.x), vec4<u32>(0u, 18945u, 0u, 0u)), ~vec4<u32>(var_2.x, u_input.b.x, var_2.x, u_input.b.x)), ~1u), 1u, _wgslsmith_add_u32(49016u & (abs(u_input.b.x) >> (20278u % 32u)), _wgslsmith_div_u32(u_input.b.x, _wgslsmith_mod_u32(var_2.x, u_input.b.x)) << (_wgslsmith_clamp_u32(~var_2.x, 14818u, 30840u) % 32u)), _wgslsmith_sub_i32(firstTrailingBit(abs(34704i)), ~_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, -17872i, var_0.x, var_0.x), vec4<i32>(-33257i, u_input.a, -2147483647i, 11813i)), ~var_0.x)));
}

