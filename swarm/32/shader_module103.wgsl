struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<f32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: vec3<i32>, arg_3: vec2<f32>) -> vec2<u32> {
    var var_0 = u_input.c.x;
    return u_input.c.yy;
}

fn func_2(arg_0: vec2<u32>, arg_1: u32) -> Struct_1 {
    var var_0 = ~(~(~1u));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(805f, -1546f, true)))) * 1f) * -784f));
    let var_2 = -u_input.b;
    var var_3 = Struct_1(true, -636f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(302f, var_1))) + vec2<f32>(var_1, var_1)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_1), var_1))), abs(_wgslsmith_add_vec2_i32(~vec2<i32>(-3807i, var_2) >> (func_3(vec4<f32>(var_1, var_1, 480f, var_1), vec2<i32>(0i, u_input.b), vec3<i32>(46493i, 32852i, -2147483647i), vec2<f32>(619f, var_1)) % vec2<u32>(32u)), ~firstLeadingBit(vec2<i32>(0i, u_input.b)))));
    var_3 = Struct_1(false, var_1, var_3.c, -var_3.d);
    return Struct_1(var_3.a, _wgslsmith_f_op_f32(-var_3.b), var_3.c, -vec2<i32>(~var_2, reverseBits(~var_3.d.x)));
}

fn func_1() -> Struct_1 {
    let var_0 = func_2(~(~max(u_input.c.yy, vec2<u32>(u_input.c.x, u_input.c.x)) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))), abs(1u));
    var var_1 = ~u_input.a;
    var_1 = _wgslsmith_mult_u32(u_input.c.x << (firstLeadingBit(u_input.c.x) % 32u), ~(~firstTrailingBit(u_input.c.x)));
    var_1 = _wgslsmith_clamp_u32(u_input.c.x, countOneBits(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, 1u, u_input.c.x), abs(vec3<u32>(4294967295u, 4294967295u, u_input.a))) ^ firstLeadingBit(1u >> (u_input.c.x % 32u))), 4294967295u);
    var_1 = min(u_input.a, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.c.x, u_input.a, u_input.c.x), ~u_input.c, _wgslsmith_sub_vec3_u32(u_input.c, vec3<u32>(87365u, 27293u, 1u))), _wgslsmith_div_vec3_u32(vec3<u32>(12566u, u_input.c.x, 1u), select(u_input.c, u_input.c, var_0.a)) & firstLeadingBit(_wgslsmith_sub_vec3_u32(u_input.c, vec3<u32>(11689u, 4294967295u, u_input.c.x)))));
    return Struct_1(all(vec4<bool>(any(vec4<bool>(false, false, false, var_0.a)), var_0.a, var_0.a, false)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -696f)), var_0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)) + _wgslsmith_f_op_f32(var_0.b - -316f)))), vec2<f32>(_wgslsmith_f_op_f32(1386f * _wgslsmith_f_op_f32(var_0.b * -579f)), var_0.c.x), var_0.d);
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec2<bool>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = 345f;
    var_0 = arg_0.c.x;
    let var_1 = _wgslsmith_div_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(19965u, 1u, u_input.a, 4294967295u), vec4<u32>(u_input.c.x, u_input.c.x, 72807u, u_input.a)), select(vec4<u32>(u_input.a, u_input.c.x, 59903u, 4294967295u) ^ max(vec4<u32>(u_input.c.x, u_input.a, 31103u, 0u), vec4<u32>(u_input.c.x, u_input.a, u_input.a, 4294967295u)), _wgslsmith_mod_vec4_u32(vec4<u32>(2658u, 34125u, 1u, u_input.c.x) << (vec4<u32>(13338u, 26205u, u_input.c.x, u_input.a) % vec4<u32>(32u)), vec4<u32>(u_input.a, u_input.c.x, u_input.a, 42728u)), !select(vec4<bool>(true, arg_2.x, false, arg_0.a), vec4<bool>(arg_0.a, arg_3.a, true, arg_0.a), vec4<bool>(false, false, arg_0.a, arg_0.a)))) | ~countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(111213u, u_input.a, 2707u, 14598u), vec4<u32>(u_input.c.x, u_input.c.x, u_input.a, u_input.c.x)));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-689f * arg_3.c.x) + -789f);
    let var_2 = true;
    return Struct_1(~_wgslsmith_mult_i32(firstTrailingBit(-1i), _wgslsmith_mod_i32(1i, arg_1)) == (arg_0.d.x & -30717i), 1085f, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3.c.x, _wgslsmith_f_op_f32(-171f * arg_3.b))), _wgslsmith_f_op_f32(421f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_3.c.x + arg_0.b))))), max(vec2<i32>(u_input.b, _wgslsmith_add_i32(arg_1, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.d.x, u_input.b, 0i, -1i), vec4<i32>(-24110i, u_input.b, 1i, 25473i)))), -_wgslsmith_sub_vec2_i32(abs(arg_0.d), vec2<i32>(u_input.b, arg_0.d.x))));
}

fn func_5(arg_0: f32, arg_1: Struct_1) -> f32 {
    return arg_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~vec2<u32>(~(~12486u), 4294967295u));
    let var_1 = Struct_1(!(select(var_0.x | 43553u, abs(u_input.a), true) <= u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -843f), -1119f), func_4(Struct_1(false, 624f, vec2<f32>(1310f, 690f), vec2<i32>(u_input.b, u_input.b)), u_input.b, vec2<bool>(true, false), func_1())))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1172f), _wgslsmith_f_op_f32(f32(-1f) * -1022f)), vec2<i32>(4038i, _wgslsmith_sub_i32(2147483647i, u_input.b)));
    var var_2 = !var_1.a;
    let var_3 = _wgslsmith_dot_vec4_u32(firstLeadingBit(reverseBits(min(vec4<u32>(0u, 1u, 4294967295u, 4294967295u), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, 33681u, u_input.a, 4294967295u), vec4<u32>(33624u, var_0.x, 43261u, 25899u), vec4<u32>(36720u, 4294967295u, 20846u, 4294967295u))))), firstTrailingBit(~vec4<u32>(var_0.x, _wgslsmith_sub_u32(4294967295u, var_0.x), _wgslsmith_mult_u32(32213u, var_0.x), select(19814u, u_input.c.x, var_1.a))));
    var_2 = select(any(vec3<bool>(!var_1.a, any(select(vec2<bool>(true, var_1.a), vec2<bool>(false, false), vec2<bool>(false, var_1.a))), false)), any(!(!(!vec2<bool>(var_1.a, false)))), all(select(!vec4<bool>(var_1.a, false, true, true), select(!vec4<bool>(var_1.a, true, var_1.a, var_1.a), select(vec4<bool>(false, var_1.a, true, true), vec4<bool>(true, false, true, var_1.a), true), vec4<bool>(var_1.a, var_1.a, true, true)), vec4<bool>(func_4(var_1, 2147483647i, vec2<bool>(false, var_1.a), Struct_1(var_1.a, -917f, vec2<f32>(var_1.b, 386f), vec2<i32>(var_1.d.x, var_1.d.x))).a, true, !var_1.a, var_1.a || var_1.a))));
    let var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(-34068i, _wgslsmith_div_vec3_i32(-(~vec3<i32>(-93957i, -10491i, var_4.d.x)), _wgslsmith_div_vec3_i32(vec3<i32>(var_1.d.x, -18627i, var_1.d.x), vec3<i32>(u_input.b, u_input.b, -2147483647i)) << (max(u_input.c, vec3<u32>(36634u, 88300u, var_3)) % vec3<u32>(32u))) >> (~(~u_input.c << (abs(vec3<u32>(39949u, u_input.a, var_3)) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<u32>(var_0.x, u_input.a, 0u) ^ select(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.a, var_0.x), u_input.c), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.a, 16340u) >> (u_input.c % vec3<u32>(32u)), u_input.c), var_1.a || true));
}

