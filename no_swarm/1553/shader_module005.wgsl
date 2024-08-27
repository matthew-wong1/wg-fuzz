struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: u32,
    d: vec4<f32>,
    e: vec3<i32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_3,
    c: vec2<f32>,
    d: Struct_3,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: u32 = 60553u;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: u32) -> f32 {
    return _wgslsmith_f_op_f32(arg_1.a.x * -214f);
}

fn func_4(arg_0: f32) -> u32 {
    global0 = reverseBits(_wgslsmith_add_vec4_u32(min(vec4<u32>(32717u, 4294967295u << (global0.x % 32u), ~global0.x, 60247u), abs(vec4<u32>(4294967295u, 1u, 40378u, 4294967295u)) << (vec4<u32>(global0.x, 4294967295u, u_input.c, 939u) % vec4<u32>(32u))), ~(~vec4<u32>(4294967295u, 46790u, u_input.c, u_input.c)) | firstTrailingBit(~vec4<u32>(global0.x, 27283u, 20820u, u_input.c))));
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-128f, arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(u_input.b.x, Struct_1(vec3<f32>(arg_0, arg_0, arg_0), u_input.b.x, false), -vec4<i32>(u_input.b.x, u_input.a, u_input.a, u_input.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(42903u, global0.x, 114533u, global0.x), vec4<u32>(global0.x, global0.x, 4294967295u, u_input.c)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(2072f, arg_0)))), 1129f));
    var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-957f, var_0.x, _wgslsmith_f_op_f32(-1138f * _wgslsmith_f_op_f32(max(arg_0, _wgslsmith_f_op_f32(-arg_0)))), _wgslsmith_f_op_f32(min(arg_0, arg_0))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, arg_0, 1268f, arg_0) + vec4<f32>(var_0.x, 1421f, 255f, arg_0)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1055f, 1360f, arg_0, arg_0) - vec4<f32>(-1324f, -534f, arg_0, arg_0))) + vec4<f32>(_wgslsmith_f_op_f32(ceil(-1539f)), -574f, _wgslsmith_f_op_f32(1830f - -510f), -422f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -704f), _wgslsmith_div_f32(arg_0, 176f)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)) <= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x)))))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-326f)) + 931f));
    global0 = _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(abs(~vec4<u32>(global0.x, u_input.c, 97041u, u_input.c)), abs(max(vec4<u32>(global0.x, 1u, 51959u, u_input.c), vec4<u32>(u_input.c, u_input.c, 1u, 18200u)))), ~vec4<u32>(abs(global0.x), _wgslsmith_sub_u32(3572u, u_input.c), reverseBits(global0.x), 0u)), vec4<u32>(1u, ~(~4294967295u), ~u_input.c, 0u));
    return _wgslsmith_dot_vec4_u32(~(abs(_wgslsmith_mod_vec4_u32(vec4<u32>(global0.x, u_input.c, 91113u, u_input.c), vec4<u32>(global0.x, global0.x, u_input.c, global0.x))) & reverseBits(~vec4<u32>(global0.x, 27684u, global0.x, global0.x))), min(select(~vec4<u32>(4294967295u, global0.x, u_input.c, global0.x) << (select(vec4<u32>(u_input.c, global0.x, 26u, 4294967295u), vec4<u32>(u_input.c, 4774u, u_input.c, 0u), false) % vec4<u32>(32u)), min(~vec4<u32>(u_input.c, global0.x, 4858u, u_input.c), vec4<u32>(global0.x, global0.x, global0.x, global0.x)), any(vec4<bool>(true, false, false, false))), _wgslsmith_mod_vec4_u32(~(~vec4<u32>(1u, global0.x, global0.x, 44686u)), vec4<u32>(global0.x, 40311u, u_input.c, global0.x) ^ vec4<u32>(u_input.c, 62843u, 84301u, global0.x))));
}

fn func_2() -> vec3<f32> {
    global0 = vec4<u32>(0u, func_4(_wgslsmith_f_op_f32(func_3(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 2147483647i, u_input.b.x), vec3<i32>(u_input.b.x, u_input.b.x, -2147483647i))), Struct_1(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-332f, -571f, -1848f))), u_input.b.x, false), vec4<i32>(abs(0i), ~u_input.a, -22432i, 0i >> (0u % 32u)), u_input.c))), ~global0.x, 1u);
    global0 = vec4<u32>(_wgslsmith_dot_vec2_u32(abs(global0.yw), vec2<u32>(_wgslsmith_dot_vec2_u32(global0.yx, global0.wy), global0.x)), ~12019u, ~(global0.x << (4294967295u % 32u)), _wgslsmith_add_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(22323u, 4294967295u), countOneBits(vec2<u32>(u_input.c, global0.x))), ~(~global0.x), 4294967295u), global0.x));
    var var_0 = !(!vec4<bool>(true, true, _wgslsmith_add_u32(u_input.c, 66774u) == ~global0.x, true));
    var var_1 = _wgslsmith_sub_vec4_u32(~(~((vec4<u32>(39845u, global0.x, global0.x, 58085u) | vec4<u32>(u_input.c, 27613u, 4294967295u, u_input.c)) << (reverseBits(vec4<u32>(u_input.c, u_input.c, 4294967295u, 4294967295u)) % vec4<u32>(32u)))), countOneBits(vec4<u32>(~(global0.x << (87139u % 32u)), u_input.c, ~reverseBits(u_input.c), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(global0.x, 0u), global0.yy), max(vec2<u32>(70728u, u_input.c), vec2<u32>(38817u, global0.x))))));
    var var_2 = Struct_4(~_wgslsmith_sub_vec2_u32(~(~global0.yw), ~vec2<u32>(global0.x, 0u)), Struct_3(Struct_1(vec3<f32>(_wgslsmith_div_f32(1267f, 199f), 658f, -1156f), ~min(u_input.b.x, u_input.b.x), any(var_0.zxz)), u_input.b.x, ~(~var_1.x), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(313f, 1213f, -492f, -998f), vec4<f32>(2209f, 650f, -982f, -135f)))), vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(42212i, 24257i)), ~u_input.b.x, abs(u_input.a)), ~u_input.b.x << (var_1.x % 32u), u_input.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-819f, 1245f)))), Struct_3(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(step(1411f, 888f)), _wgslsmith_f_op_f32(f32(-1f) * -368f), _wgslsmith_div_f32(192f, -1669f)), _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a, 10257i, 0i), _wgslsmith_clamp_vec3_i32(vec3<i32>(31667i, u_input.a, u_input.a), vec3<i32>(-17016i, u_input.a, u_input.b.x), vec3<i32>(-1i, u_input.b.x, u_input.a))), var_0.x), abs(countOneBits(u_input.b.x)), ~(var_1.x | ~33516u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-717f, -1325f, 318f, 1017f)))) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-153f, -220f, 316f, -621f)))), -min(-vec3<i32>(-22912i, u_input.b.x, u_input.a), -vec3<i32>(1i, 14103i, 6423i))), Struct_2(abs(u_input.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(378f, 155f, -116f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-196f, 193f, -768f) - vec3<f32>(320f, -923f, 1666f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, -118f, -478f)))))));
    return vec3<f32>(var_2.c.x, var_2.b.a.a.x, 1150f);
}

fn func_1(arg_0: vec3<i32>) -> vec4<bool> {
    global1 = ~global0.x;
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2())), u_input.b.x, true), -1i, 972u, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1f, 1f, 1f, 1f))), vec3<i32>(_wgslsmith_div_i32(~max(15359i, u_input.a), min(_wgslsmith_sub_i32(u_input.a, arg_0.x), -arg_0.x)), 13688i, u_input.b.x));
    let var_1 = 36854u;
    var var_2 = var_0.a.a;
    let var_3 = arg_0;
    return vec4<bool>(false, var_0.a.c, (-445f == var_0.d.x) | false, all(!(!vec3<bool>(true, true, var_0.a.c))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_sub_vec4_u32(abs(countOneBits(select(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, u_input.c, global0.x, 47152u), vec4<u32>(global0.x, 0u, 23312u, global0.x)), ~vec4<u32>(u_input.c, 1u, 1u, 13133u), func_1(vec3<i32>(u_input.a, -71161i, 0i))))), _wgslsmith_mod_vec4_u32(~abs(vec4<u32>(14773u, u_input.c, global0.x, u_input.c)) & ~vec4<u32>(99952u, global0.x, global0.x, 64063u), abs(vec4<u32>(u_input.c, u_input.c, 4294967295u, global0.x) ^ vec4<u32>(u_input.c, u_input.c, 59557u, global0.x))));
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1128f, 870f, -540f)) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1251f, -353f, -1000f))))), u_input.b.x, true), u_input.b.x, _wgslsmith_clamp_u32(9431u, select(~u_input.c, global0.x, true), firstLeadingBit(~(0u >> (0u % 32u)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-228f, -106f, 691f, -345f), vec4<f32>(-1349f, -1130f, 579f, -2996f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(274f, 611f, 1009f, -366f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(153f, 271f, 370f, 971f))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - vec4<f32>(_wgslsmith_f_op_f32(sign(-288f)), _wgslsmith_f_op_vec3_f32(func_2()).x, 922f, _wgslsmith_f_op_f32(round(-754f))))), ~vec3<i32>(-_wgslsmith_sub_i32(u_input.a, u_input.b.x), min(firstTrailingBit(u_input.a), firstLeadingBit(u_input.a)), -36707i));
    global1 = 10903u;
    global1 = ~_wgslsmith_sub_u32(6346u, select(37540u, ~(~4294967295u), var_0.a.c));
    global1 = _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, min(21124u >> (global0.x % 32u), _wgslsmith_mult_u32(var_0.c, u_input.c)) ^ abs(~var_0.c), 55449u, ~_wgslsmith_div_u32(~global0.x, ~var_0.c)), vec4<u32>(_wgslsmith_clamp_u32(firstTrailingBit(countOneBits(global0.x)), global0.x, 1u), _wgslsmith_dot_vec2_u32(~countOneBits(vec2<u32>(0u, var_0.c)), vec2<u32>(u_input.c, abs(4294967295u))), 34875u, countOneBits(704u)));
    let var_1 = Struct_2(-vec2<i32>(abs(reverseBits(u_input.b.x)), 1i), var_0.a.a);
    var var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(var_0.e));
}

