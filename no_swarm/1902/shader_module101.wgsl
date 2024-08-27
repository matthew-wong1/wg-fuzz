struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: u32,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 16>;

var<private> global1: array<Struct_4, 26> = array<Struct_4, 26>(Struct_4(vec4<i32>(19416i, -48379i, 1i, 2147483647i)), Struct_4(vec4<i32>(i32(-2147483648), -9722i, 0i, 13454i)), Struct_4(vec4<i32>(-52423i, -1i, 36667i, 18429i)), Struct_4(vec4<i32>(i32(-2147483648), 2147483647i, 0i, -1i)), Struct_4(vec4<i32>(-48757i, -1i, 32782i, 2147483647i)), Struct_4(vec4<i32>(-9134i, -1i, -1i, -9354i)), Struct_4(vec4<i32>(38783i, -1i, 2147483647i, -28609i)), Struct_4(vec4<i32>(-36757i, 0i, i32(-2147483648), 1i)), Struct_4(vec4<i32>(2147483647i, 1i, 1i, i32(-2147483648))), Struct_4(vec4<i32>(-6043i, 0i, -29023i, i32(-2147483648))), Struct_4(vec4<i32>(1i, 84383i, -59459i, -41432i)), Struct_4(vec4<i32>(1333i, 19690i, -12833i, 0i)), Struct_4(vec4<i32>(2147483647i, 5212i, i32(-2147483648), -12928i)), Struct_4(vec4<i32>(1i, 2825i, i32(-2147483648), -1i)), Struct_4(vec4<i32>(i32(-2147483648), i32(-2147483648), 1i, -22787i)), Struct_4(vec4<i32>(-1i, 25505i, -24501i, 60603i)), Struct_4(vec4<i32>(-35709i, -1i, 39796i, i32(-2147483648))), Struct_4(vec4<i32>(-373i, -38071i, -12303i, 0i)), Struct_4(vec4<i32>(0i, 2147483647i, 1i, 2147483647i)), Struct_4(vec4<i32>(-20534i, -1i, i32(-2147483648), 2147483647i)), Struct_4(vec4<i32>(40448i, 2147483647i, i32(-2147483648), 0i)), Struct_4(vec4<i32>(1i, 2147483647i, i32(-2147483648), 2147483647i)), Struct_4(vec4<i32>(-27628i, -47015i, 13292i, 22589i)), Struct_4(vec4<i32>(0i, 0i, -64187i, 17469i)), Struct_4(vec4<i32>(i32(-2147483648), 28455i, -1i, -1i)), Struct_4(vec4<i32>(-1i, 20129i, 1i, 40524i)));

var<private> global2: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(0i, 1i), Struct_1(i32(-2147483648), 41071i), Struct_1(1i, 0i), Struct_1(32871i, -1i), Struct_1(0i, -28713i));

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec4<u32> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -309f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(104f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1210f + 1072f)))), -1179f);
    global2 = array<Struct_1, 5>();
    var var_1 = !(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false), vec3<bool>(true, false, false), vec3<bool>(true, true, true))));
    global0 = array<vec3<i32>, 16>();
    let var_2 = Struct_5(!vec4<bool>(true, false, true, var_1.x), ~select(vec4<u32>(0u, 49719u << (u_input.a % 32u), _wgslsmith_div_u32(56195u, 1u), ~u_input.a), select(vec4<u32>(1u, u_input.e, 0u, u_input.d), vec4<u32>(4294967295u, 4294967295u, u_input.e, 16073u), vec4<bool>(false, false, false, true)) ^ select(vec4<u32>(u_input.d, u_input.d, 1u, 111562u), vec4<u32>(37082u, 49039u, 3675u, u_input.a), var_1.x), select(select(vec4<bool>(false, false, var_1.x, false), vec4<bool>(var_1.x, var_1.x, true, true), true), vec4<bool>(true, var_1.x, var_1.x, var_1.x), select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, true, false, var_1.x), var_1.x))), _wgslsmith_clamp_u32(u_input.a, ~(u_input.e ^ _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.e, 0u, u_input.a), vec4<u32>(u_input.e, u_input.a, 21747u, 4294967295u))), ~max(u_input.a, countOneBits(u_input.a))), ~vec2<u32>(~u_input.d, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, 55263u), vec2<u32>(u_input.d, u_input.d))) >> (abs(_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(39073u, 1u), vec2<u32>(1u, u_input.e)), vec2<u32>(u_input.a, 10251u))) % vec2<u32>(32u)), min(vec2<u32>(abs(1u), _wgslsmith_mult_u32(u_input.e, 11104u)), _wgslsmith_add_vec2_u32(vec2<u32>(28442u, u_input.d), ~vec2<u32>(u_input.a, 4294967295u))) | firstTrailingBit(abs(~vec2<u32>(u_input.d, u_input.e))));
    return vec4<u32>(_wgslsmith_sub_u32(~countOneBits(113018u), ~(var_2.e.x >> (4294967295u % 32u)) | _wgslsmith_mod_u32(~u_input.d, 1u)), u_input.e, _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(var_2.b.wxz, vec3<u32>(u_input.a, var_2.c, u_input.a)), var_2.b.zzx), abs(reverseBits(var_2.b.x)), 0u) & _wgslsmith_dot_vec2_u32(var_2.e, _wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(var_2.e, var_2.e, vec2<u32>(0u, 32890u)), ~var_2.e)), (countOneBits(u_input.a >> (30693u % 32u)) >> ((firstLeadingBit(var_2.c) | _wgslsmith_mod_u32(u_input.e, 59916u)) % 32u)) ^ min(18334u, abs(max(61334u, 87641u))));
}

fn func_2(arg_0: Struct_3) -> i32 {
    global2 = array<Struct_1, 5>();
    global0 = array<vec3<i32>, 16>();
    global0 = array<vec3<i32>, 16>();
    global2 = array<Struct_1, 5>();
    var var_0 = Struct_2(max(vec4<u32>(u_input.a, 0u, firstTrailingBit(4294967295u), 13679u), _wgslsmith_add_vec4_u32(max(func_3(), max(vec4<u32>(34955u, u_input.e, u_input.e, 67146u), vec4<u32>(u_input.d, u_input.e, u_input.d, 9109u))), ~select(vec4<u32>(u_input.d, 0u, 4294967295u, u_input.a), vec4<u32>(0u, 4294967295u, 0u, u_input.a), arg_0.a))), 1000f, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 4294967295u), vec2<u32>(0u, 88601u)), reverseBits(u_input.a)), vec2<u32>(_wgslsmith_mult_u32(1u, u_input.e), 4294967295u)), _wgslsmith_div_vec2_u32(~vec2<u32>(u_input.e, u_input.a) ^ _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 9076u), vec2<u32>(1u, u_input.d)), select(vec2<u32>(u_input.a, 4294967295u), ~vec2<u32>(4294967295u, 4294967295u), any(vec2<bool>(arg_0.a.x, arg_0.a.x))))), 5u)]);
    return ~(-_wgslsmith_sub_i32(select(-1i, 28241i, true) << (~1u % 32u), abs(-2147483647i)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    let var_0 = 86539u;
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-116f, 378f, 444f, -526f))))) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(ceil(1000f)), -265f, _wgslsmith_f_op_f32(f32(-1f) * -1228f), 1120f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(747f, -850f, -1571f, 551f) - vec4<f32>(-946f, 1315f, -1151f, -686f))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -441f), _wgslsmith_f_op_f32(select(-1045f, -875f, true)), -1560f, _wgslsmith_f_op_f32(f32(-1f) * -809f))), vec4<f32>(1f, 1f, 1f, 1f)), select(select(select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true)), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), false), all(vec2<bool>(false, false))), vec4<bool>(true, true, true, true), vec4<bool>(arg_1.a < 2301i, false, any(vec3<bool>(true, true, true)), all(vec3<bool>(false, false, true)))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true)), (true & all(vec3<bool>(false, true, true))) || true)));
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(563f - _wgslsmith_f_op_f32(-var_1.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))), _wgslsmith_f_op_f32(-581f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1222f * 487f)))), _wgslsmith_f_op_f32(f32(-1f) * -1499f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -975f), var_1.x <= var_1.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * -150f)));
    let var_2 = firstLeadingBit(vec2<i32>(1i | arg_1.b, 31147i));
    global2 = array<Struct_1, 5>();
    return true;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: Struct_4) -> bool {
    var var_0 = !(false & (arg_0.x && any(select(vec3<bool>(true, true, true), vec3<bool>(false, arg_0.x, false), arg_0.x))));
    var var_1 = _wgslsmith_mult_i32(firstLeadingBit(u_input.b.x), ~2847i);
    let var_2 = Struct_1(-43103i, _wgslsmith_dot_vec4_i32(vec4<i32>(select(arg_1.x, 0i, arg_0.x), _wgslsmith_div_i32(0i, _wgslsmith_mult_i32(u_input.c.x, arg_1.x)), _wgslsmith_mod_i32(arg_2.a.x, 1i >> (0u % 32u)), firstTrailingBit(abs(-15029i))), arg_2.a));
    var var_3 = global2[_wgslsmith_index_u32(u_input.e, 5u)];
    var var_4 = ~(-arg_2.a.x << (u_input.e % 32u));
    return func_4(Struct_1(0i, u_input.c.x), Struct_1(func_2(Struct_3(!vec4<bool>(arg_0.x, arg_0.x, false, true))), firstLeadingBit(max(u_input.c.x, 2147483647i))), Struct_1(-1i, arg_2.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(true | (_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-496f * -134f), _wgslsmith_f_op_f32(265f * 1000f))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(2218f)))), !select(func_1(vec2<bool>(false, false), vec2<i32>(-12616i, u_input.c.x), Struct_4(vec4<i32>(-28110i, u_input.b.x, -1i, u_input.c.x))), true, select(false, false, true)) | true, !func_4(Struct_1(min(u_input.c.x, 26217i), u_input.b.x), global2[_wgslsmith_index_u32(u_input.a, 5u)], Struct_1(~(-1i), u_input.b.x)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(307f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1224f - 576f)))))) * 864f);
    global2 = array<Struct_1, 5>();
    var var_2 = ~u_input.b.x;
    let var_3 = firstLeadingBit(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(~u_input.a, select(max(u_input.a, u_input.a), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(0u, u_input.d)), true)), 25348u, u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(trunc(var_1))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_1))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, -1834f)) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-131f, 833f), vec2<f32>(var_1, var_1)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(530f + var_1))))));
}

