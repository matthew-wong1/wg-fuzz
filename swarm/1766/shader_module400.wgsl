struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
    d: vec2<bool>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -39966i;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> i32 {
    let var_0 = 0u;
    global0 = _wgslsmith_clamp_i32(i32(-1i) * -(i32(-1i) * -1i), -17603i, ~(~10048i)) ^ _wgslsmith_sub_i32(-3629i, 1i);
    var var_1 = !((!all(vec4<bool>(false, false, false, true)) != true) != true);
    var var_2 = vec3<bool>(!any(select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), true, true);
    var_2 = vec3<bool>(var_2.x, select(false, true, true), var_2.x);
    return -2147483647i;
}

fn func_2(arg_0: f32, arg_1: vec3<u32>) -> Struct_1 {
    global0 = func_3();
    var var_0 = Struct_2(vec4<bool>(false, true, true, (arg_0 <= -162f) | false), !select(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), true), vec3<bool>(any(vec4<bool>(true, true, false, false)), false, any(vec4<bool>(true, true, true, false))), true), Struct_1(false, _wgslsmith_sub_i32(12600i, 60779i) | _wgslsmith_add_i32(func_3(), 1i), 1u, i32(-1i) * -1i, -43030i));
    var_0 = Struct_2(!(!select(!var_0.a, select(vec4<bool>(true, var_0.c.a, var_0.b.x, false), vec4<bool>(var_0.c.a, var_0.a.x, var_0.b.x, true), var_0.b.x), true)), !var_0.a.zyw, Struct_1(var_0.c.a, -2147483647i, 0u, -4293i, -2147483647i));
    global0 = select(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(-firstLeadingBit(vec3<i32>(-15064i, var_0.c.b, var_0.c.e)), min(min(vec3<i32>(-34262i, 35582i, var_0.c.d), vec3<i32>(var_0.c.d, var_0.c.d, var_0.c.e)), -vec3<i32>(-31821i, var_0.c.e, var_0.c.b))), -2147483647i), 64250i, (all(select(vec4<bool>(true, var_0.a.x, true, var_0.a.x), vec4<bool>(true, true, true, var_0.b.x), var_0.b.x)) | var_0.b.x) || (_wgslsmith_f_op_f32(round(639f)) >= 290f));
    var_0 = Struct_2(!var_0.a, select(!select(select(var_0.a.xxy, vec3<bool>(var_0.b.x, true, var_0.b.x), var_0.a.xyz), var_0.b, var_0.b.x), vec3<bool>(false, all(vec4<bool>(true, false, var_0.b.x, var_0.a.x)), var_0.c.a), !all(var_0.b.zy)), Struct_1(!(all(vec3<bool>(true, true, false)) || !var_0.c.a), var_0.c.e, var_0.c.c, -2147483647i, _wgslsmith_mult_i32(firstTrailingBit(_wgslsmith_clamp_i32(0i, var_0.c.b, 2147483647i)), _wgslsmith_mod_i32(var_0.c.d, -2147483647i))));
    return Struct_1(true, ~select(-14699i, var_0.c.d, false), ~(_wgslsmith_sub_u32(~0u, 57437u) >> ((1u << (var_0.c.c % 32u)) % 32u)), abs(i32(-1i) * -var_0.c.b), var_0.c.b);
}

fn func_1(arg_0: vec2<u32>, arg_1: u32) -> i32 {
    global0 = ~44172i;
    let var_0 = func_2(1456f, ~firstLeadingBit(~vec3<u32>(arg_0.x, 1u, 45407u)) ^ (~(vec3<u32>(42436u, arg_0.x, arg_0.x) ^ vec3<u32>(arg_1, 53718u, 6255u)) >> (vec3<u32>(~u_input.a, u_input.b.x, 12646u) % vec3<u32>(32u))));
    var var_1 = Struct_2(select(!vec4<bool>(false, 34180i <= var_0.d, var_0.a == var_0.a, !var_0.a), vec4<bool>(true, any(!vec3<bool>(var_0.a, false, var_0.a)), var_0.a, !var_0.a), var_0.a), vec3<bool>(!all(vec3<bool>(false, var_0.a, var_0.a)), all(select(!vec3<bool>(false, var_0.a, var_0.a), !vec3<bool>(var_0.a, false, var_0.a), var_0.a)), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, 1361f))), ~firstTrailingBit(vec3<u32>(131891u, 0u, 1u))).a), func_2(_wgslsmith_f_op_f32(f32(-1f) * -1001f), max(~_wgslsmith_mod_vec3_u32(vec3<u32>(arg_1, arg_1, 0u), vec3<u32>(arg_0.x, 0u, var_0.c)), ~select(vec3<u32>(1u, 4294967295u, arg_1), vec3<u32>(88629u, var_0.c, var_0.c), vec3<bool>(var_0.a, false, var_0.a)))));
    var var_2 = ~_wgslsmith_add_vec2_i32(vec2<i32>(~(-var_1.c.d), 0i), -abs(vec2<i32>(var_0.d, 1i)) << (u_input.b % vec2<u32>(32u)));
    let var_3 = Struct_3(Struct_1(!(any(vec2<bool>(true, var_0.a)) | any(var_1.b.yx)), var_1.c.d, var_0.c, -14341i, (var_1.c.e << (_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(15084u, var_0.c)) % 32u)) | -var_2.x), _wgslsmith_mult_vec4_i32(-vec4<i32>(var_2.x, -14230i, var_2.x, -1i), vec4<i32>(-1i, 0i, 7870i, 8356i)) | (vec4<i32>(~var_2.x, -2147483647i, 53598i, var_0.b & 38081i) | _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, var_1.c.e, -46595i, -38910i) & vec4<i32>(var_0.e, 3580i, -60746i, var_0.d), ~vec4<i32>(73266i, -32910i, -2147483647i, -1i))), var_0, select(!(!select(vec2<bool>(var_1.b.x, var_1.a.x), var_1.a.yx, var_1.a.wy)), var_1.b.zy, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1357f, 340f, 375f, -1000f))))))));
    return ~(var_0.b << (~19294u % 32u)) | _wgslsmith_sub_i32(var_2.x, var_1.c.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec3<u32>(~(4294967295u >> ((u_input.a ^ u_input.c) % 32u)), u_input.c, 4294967295u);
    let var_1 = Struct_3(Struct_1(u_input.a >= 39095u, -1i, 4294967295u, firstLeadingBit(~2147483647i) | (min(2147483647i, -39191i) << ((110097u << (u_input.c % 32u)) % 32u)), func_1(vec2<u32>(12034u, 84018u) >> (vec2<u32>(var_0.x, 58407u) % vec2<u32>(32u)), ~1u) | _wgslsmith_sub_i32(_wgslsmith_clamp_i32(-1i, 50156i, -1i), -1i)), firstTrailingBit(countOneBits(~vec4<i32>(21510i, -15088i, -1i, -22007i))) >> (_wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(66332u, var_0.x, 1u, var_0.x)) ^ vec4<u32>(1u, var_0.x, u_input.a, 30434u), abs(~vec4<u32>(u_input.a, 1u, 1u, u_input.c))) % vec4<u32>(32u)), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f * -991f)))), ~vec3<u32>(4294967295u, u_input.b.x, var_0.x) ^ vec3<u32>(_wgslsmith_div_u32(7308u, 1u), u_input.c, abs(u_input.b.x))), vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-1000f, -945f), _wgslsmith_f_op_f32(130f * 1000f), 1f, 1f)))));
    var var_2 = var_1;
    let var_3 = func_2(-1000f, vec3<u32>((_wgslsmith_dot_vec2_u32(var_0.zz, vec2<u32>(var_1.c.c, 5867u)) | var_2.c.c) >> (51803u % 32u), select(var_0.x, 55450u, false), ~abs(4294967295u)));
    var var_4 = Struct_3(Struct_1(true, -50622i, ~var_0.x, _wgslsmith_mod_i32(func_3() << ((var_1.a.c << (u_input.a % 32u)) % 32u), _wgslsmith_mod_i32(var_3.e, -2147483647i)), func_3()), abs(var_2.b), var_2.c, select(vec2<bool>(!var_2.c.a & true, true), select(!(!var_1.d), vec2<bool>(true, !var_2.d.x), vec2<bool>(100179i <= var_2.a.b, !var_1.c.a)), var_2.a.a), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(var_1.e.x)), var_2.e.x, var_1.e.x, var_1.e.x)))));
    var_4 = Struct_3(Struct_1(!any(select(vec2<bool>(true, var_3.a), var_4.d, false)), _wgslsmith_dot_vec4_i32(vec4<i32>(~47945i, ~var_3.e, ~7670i, var_3.d & var_1.c.b), var_1.b), _wgslsmith_div_u32(_wgslsmith_div_u32(var_3.c, var_3.c), var_1.a.c) ^ 0u, 21519i, var_2.a.e & (i32(-1i) * -2147483647i)), vec4<i32>(func_1(vec2<u32>(var_4.a.c, var_1.a.c), max(4294967295u & var_4.c.c, var_3.c & 13396u)), abs(var_4.b.x), var_3.b, _wgslsmith_clamp_i32(_wgslsmith_add_i32(var_4.b.x, -53707i), -select(var_4.a.e, 1i, true), 0i)), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(var_4.e.x)))) - _wgslsmith_f_op_f32(max(var_4.e.x, var_1.e.x))), ~reverseBits(~vec3<u32>(6363u, var_0.x, var_2.c.c))), select(!var_4.d, !select(!var_1.d, !var_1.d, vec2<bool>(true, var_2.a.a)), false), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_2.e + vec4<f32>(var_1.e.x, var_2.e.x, var_2.e.x, var_1.e.x)), _wgslsmith_f_op_vec4_f32(var_2.e - var_1.e)))) * vec4<f32>(var_4.e.x, var_4.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.e.x)), var_2.e.x)));
    var var_5 = Struct_2(vec4<bool>(func_2(_wgslsmith_f_op_f32(-1318f - _wgslsmith_f_op_f32(-var_2.e.x)), abs(countOneBits(vec3<u32>(var_0.x, 70879u, 10637u)))).a, var_3.a, var_4.c.a, false || var_1.d.x), vec3<bool>(!var_1.c.a, all(vec4<bool>(var_3.a, var_1.c.a, true, select(false, var_3.a, true))), !any(var_2.d)), var_4.a);
    let var_6 = Struct_2(!(!vec4<bool>(true, var_2.d.x, var_1.c.a, select(var_2.d.x, var_2.d.x, true))), !vec3<bool>(var_4.a.a, false, _wgslsmith_f_op_f32(var_2.e.x + 1452f) < -329f), var_3);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-232f, 696f, var_4.e.x, var_1.e.x) + var_1.e))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.e.x, 791f, var_1.e.x, var_4.e.x)))))), var_4.e);
}

