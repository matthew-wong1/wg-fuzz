struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: u32,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec4<u32>,
    e: u32,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: u32,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: vec3<u32>;

var<private> global2: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(false, vec4<f32>(-159f, 820f, 1291f, 1506f), vec4<f32>(955f, -240f, 427f, -739f), vec4<u32>(45145u, 0u, 1u, 1u), 88633u), Struct_2(false, vec4<f32>(615f, 1136f, 201f, 568f), vec4<f32>(-1000f, -1127f, -262f, -1443f), vec4<u32>(4294967295u, 4294967295u, 82215u, 36590u), 63017u), Struct_2(true, vec4<f32>(-1225f, 996f, 1206f, -1505f), vec4<f32>(-514f, -1423f, 115f, -2346f), vec4<u32>(4294967295u, 28262u, 1u, 49900u), 1u), Struct_2(true, vec4<f32>(-108f, 1605f, 334f, -1380f), vec4<f32>(-443f, -332f, -249f, 263f), vec4<u32>(4294967295u, 63265u, 8619u, 0u), 0u), Struct_2(false, vec4<f32>(1370f, -1000f, 508f, 114f), vec4<f32>(-660f, 2798f, 1000f, 845f), vec4<u32>(0u, 23835u, 54960u, 1598u), 0u), Struct_2(true, vec4<f32>(-674f, -458f, -1004f, 2642f), vec4<f32>(831f, -328f, -1000f, -1000f), vec4<u32>(11219u, 4294967295u, 81910u, 21601u), 4294967295u), Struct_2(true, vec4<f32>(842f, 1349f, -1128f, -122f), vec4<f32>(-2623f, 1611f, 517f, 280f), vec4<u32>(37404u, 11758u, 27270u, 1u), 4294967295u), Struct_2(true, vec4<f32>(-525f, 635f, -318f, -3527f), vec4<f32>(-910f, 430f, -1000f, -1037f), vec4<u32>(41008u, 4294967295u, 1u, 1263u), 41236u), Struct_2(true, vec4<f32>(1710f, -137f, 2033f, -3155f), vec4<f32>(-700f, 322f, 1681f, -316f), vec4<u32>(0u, 1u, 0u, 0u), 58831u), Struct_2(true, vec4<f32>(-547f, -598f, 2402f, 207f), vec4<f32>(710f, -1258f, 1638f, 1146f), vec4<u32>(4294967295u, 0u, 93005u, 0u), 2357u), Struct_2(true, vec4<f32>(344f, 1172f, -1145f, -683f), vec4<f32>(162f, 745f, -726f, -2501f), vec4<u32>(0u, 4294967295u, 42680u, 0u), 4294967295u), Struct_2(false, vec4<f32>(986f, -1000f, -337f, 256f), vec4<f32>(-1211f, -588f, 1541f, -777f), vec4<u32>(4294967295u, 4294967295u, 18225u, 0u), 35275u));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_3) -> vec3<bool> {
    global2 = array<Struct_2, 12>();
    var var_0 = arg_0.e;
    var var_1 = Struct_1(~_wgslsmith_mult_vec4_i32(firstTrailingBit(arg_0.d.a), min(-vec4<i32>(-2147483647i, 11990i, arg_0.d.a.x, -34412i), min(vec4<i32>(1i, u_input.a, -29439i, arg_0.d.a.x), vec4<i32>(2147483647i, arg_0.d.a.x, u_input.a, arg_0.d.a.x)))), select(vec3<bool>(true, arg_0.b, !arg_0.d.b.x), !select(!vec3<bool>(arg_0.d.b.x, arg_0.d.b.x, arg_0.d.b.x), select(arg_0.d.b, vec3<bool>(true, arg_0.b, arg_0.b), false), select(vec3<bool>(false, arg_0.d.b.x, arg_0.d.b.x), arg_0.d.b, vec3<bool>(false, true, false))), any(vec3<bool>(all(arg_0.d.b), !arg_0.d.b.x, !arg_0.b))), 33533u);
    var var_2 = ~arg_0.a ^ (((var_1.c ^ 4294967295u) ^ arg_0.a) | _wgslsmith_add_u32(73321u, _wgslsmith_div_u32(1u, 4294967295u & var_1.c)));
    global2 = array<Struct_2, 12>();
    return !vec3<bool>(any(vec3<bool>(arg_0.e > 456f, var_1.b.x, any(vec4<bool>(false, false, var_1.b.x, false)))), arg_0.b, true);
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> bool {
    global1 = vec3<u32>(~((1u << (_wgslsmith_dot_vec3_u32(vec3<u32>(40162u, 4294967295u, global1.x), vec3<u32>(global1.x, global1.x, 0u)) % 32u)) << (abs(0u) % 32u)), global1.x, global1.x);
    var var_0 = Struct_1(_wgslsmith_add_vec4_i32(select(arg_0.a, arg_0.a, select(vec4<bool>(false, false, true, true), select(vec4<bool>(arg_1, false, arg_0.b.x, arg_1), vec4<bool>(arg_1, true, false, arg_0.b.x), arg_1), vec4<bool>(true, true, true, true))), vec4<i32>(_wgslsmith_add_i32(arg_0.a.x, u_input.a), 0i, ~(-1i), 28360i)), arg_0.b, ~countOneBits(1u));
    var var_1 = _wgslsmith_f_op_f32(max(631f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -209f))))))));
    let var_2 = Struct_2(!(true & any(arg_0.b)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1724f * -1285f), -229f) + _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(trunc(-1204f)))), _wgslsmith_f_op_f32(max(-616f, _wgslsmith_f_op_f32(f32(-1f) * -1221f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-310f, 127f)))))), -602f), vec4<f32>(_wgslsmith_f_op_f32(100f + -1345f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(1000f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2551f - 410f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(244f, 900f))), 606f), ~vec4<u32>(firstLeadingBit(~8189u), _wgslsmith_sub_u32(~var_0.c, 94712u & var_0.c), _wgslsmith_dot_vec3_u32(min(vec3<u32>(0u, global1.x, 0u), vec3<u32>(arg_0.c, arg_0.c, 1u)), vec3<u32>(4294967295u, var_0.c, global1.x) << (vec3<u32>(var_0.c, var_0.c, 35756u) % vec3<u32>(32u))), _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(90434u, 46130u)), select(global1.yy, global1.zy, var_0.b.x))), reverseBits(var_0.c | ~(~7449u)));
    let var_3 = var_2.b.x;
    return arg_1;
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = Struct_2(func_4(Struct_1(abs(vec4<i32>(u_input.a, 0i, -55098i, 0i) >> (vec4<u32>(4294967295u, 1u, 33570u, 4294967295u) % vec4<u32>(32u))), !func_3(Struct_3(global1.x, true, global1.x, Struct_1(vec4<i32>(-25511i, 2147483647i, 80373i, -36804i), vec3<bool>(true, true, true), global1.x), arg_0)), ~_wgslsmith_add_u32(global1.x, 0u)), all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), u_input.a >= 2147483647i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-403f, arg_0, 1672f, arg_0)))), vec4<f32>(arg_0, arg_0, arg_0, arg_0), u_input.a > ~u_input.a))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, 1048f, -645f)))))), ~_wgslsmith_add_vec4_u32(select(firstLeadingBit(vec4<u32>(1u, 0u, global1.x, 29990u)), vec4<u32>(global1.x, 27819u, 60750u, 4294967295u) & vec4<u32>(4294967295u, global1.x, 1u, global1.x), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true))), _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1762u, 786u, 43065u, global1.x), vec4<u32>(24596u, 14418u, global1.x, 2955u), vec4<u32>(15000u, 64355u, 9452u, global1.x)), min(vec4<u32>(13946u, 3945u, 4294967295u, global1.x), vec4<u32>(669u, global1.x, 12973u, global1.x)))), ~(~global1.x));
    var var_1 = func_3(Struct_3(global1.x, var_0.a, var_0.d.x, Struct_1(vec4<i32>(-16256i, u_input.a, u_input.a, 1i), func_3(Struct_3(1u, false, var_0.d.x, Struct_1(vec4<i32>(2147483647i, 25651i, u_input.a, u_input.a), vec3<bool>(var_0.a, false, var_0.a), var_0.d.x), 282f)), (global1.x ^ var_0.d.x) & var_0.d.x), _wgslsmith_f_op_f32(-1458f - -1000f))).x;
    var_1 = u_input.a < 0i;
    let var_2 = Struct_1(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(-vec4<i32>(44855i, -2147483647i, u_input.a, u_input.a), vec4<i32>(abs(0i), -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -1i), vec2<i32>(34748i, 62088i)), _wgslsmith_add_i32(u_input.a, u_input.a))), ~((vec4<i32>(-59947i, -26242i, 30135i, -40453i) | vec4<i32>(32137i, u_input.a, 38122i, -2147483647i)) << (var_0.d % vec4<u32>(32u)))), !(!select(!vec3<bool>(var_0.a, var_0.a, var_0.a), vec3<bool>(var_0.a, false, true), true)), ~var_0.d.x);
    let var_3 = all(var_2.b.yx);
    return Struct_1(_wgslsmith_mult_vec4_i32(var_2.a, ~vec4<i32>(-1i | u_input.a, reverseBits(var_2.a.x), ~(-13647i), u_input.a << (1u % 32u))), vec3<bool>(var_0.c.x == arg_0, var_3, (var_2.b.x | !var_2.b.x) == false), ~_wgslsmith_mod_u32(~(0u >> (var_2.c % 32u)), 1u));
}

fn func_1(arg_0: f32) -> i32 {
    global0 = any(!(!(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false))));
    var var_0 = func_2(231f);
    var var_1 = -(~var_0.a.zz) << (global1.xz % vec2<u32>(32u));
    global1 = ~(~vec3<u32>(0u, global1.x ^ global1.x, 37132u)) & _wgslsmith_add_vec3_u32(abs(countOneBits(select(vec3<u32>(global1.x, global1.x, 77809u), vec3<u32>(global1.x, global1.x, 4294967295u), vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x)))), ~vec3<u32>(30875u, global1.x, var_0.c) ^ ((vec3<u32>(36840u, 84420u, 59994u) | vec3<u32>(global1.x, 0u, global1.x)) << (vec3<u32>(1u, var_0.c, 60279u) % vec3<u32>(32u))));
    let var_2 = !select(vec4<bool>(all(!vec4<bool>(var_0.b.x, false, false, false)), false, true, any(!var_0.b)), vec4<bool>(true, !all(var_0.b), (u_input.a == 2147483647i) || (var_0.b.x && true), var_0.b.x), true);
    return ~firstLeadingBit(~(i32(-1i) * -var_1.x));
}

fn func_5(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_3, arg_3: vec4<f32>) -> StorageBuffer {
    var var_0 = ~_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(select(arg_2.d.a, vec4<i32>(-2147483647i, 28684i, arg_2.d.a.x, -1i), arg_2.b) ^ arg_2.d.a, _wgslsmith_sub_vec4_i32(reverseBits(arg_2.d.a), -arg_2.d.a)), vec4<i32>(13583i, arg_2.d.a.x, _wgslsmith_mult_i32(1i, _wgslsmith_dot_vec2_i32(arg_2.d.a.xw, arg_0)), _wgslsmith_clamp_i32(79789i, _wgslsmith_div_i32(2147483647i, u_input.a), u_input.a)));
    var var_1 = vec2<i32>(_wgslsmith_mod_i32(-1i, u_input.a), arg_0.x) | vec2<i32>(u_input.a, min(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 1i, -2147483647i), vec3<i32>(2147483647i, 42066i, u_input.a)), reverseBits(-2147483647i)) ^ 1i);
    let var_2 = Struct_1(arg_2.d.a << (_wgslsmith_mult_vec4_u32(vec4<u32>(79808u | arg_2.d.c, ~42132u, arg_2.c, ~global1.x), firstLeadingBit(~vec4<u32>(6480u, 84145u, global1.x, 0u))) % vec4<u32>(32u)), select(vec3<bool>(true, func_2(_wgslsmith_f_op_f32(649f + -609f)).b.x, false), !vec3<bool>(!arg_2.b, arg_2.e <= 667f, false), func_2(405f).b), ~(~21747u));
    var var_3 = 0i;
    var var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-260f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_3.x)))));
    return StorageBuffer(_wgslsmith_mult_vec2_i32(firstLeadingBit(vec2<i32>(_wgslsmith_dot_vec2_i32(arg_0, vec2<i32>(-1i, 1108i)), func_1(-997f))), abs(select(vec2<i32>(var_2.a.x, 36935i), var_2.a.xx, arg_2.d.b.x)) & select(arg_2.d.a.yw, arg_0, vec2<bool>(arg_2.b, arg_2.b))), abs(vec3<u32>(~global1.x, 1u, _wgslsmith_mod_u32(38004u, global1.x))), arg_3.xy);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = true;
    let x = u_input.a;
    s_output = func_5(vec2<i32>(2147483647i >> (_wgslsmith_mult_u32(global1.x & global1.x, global1.x) % 32u), reverseBits(_wgslsmith_mod_i32(func_1(1295f), u_input.a ^ u_input.a))), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(global1.x, 18425u, global1.x), vec3<u32>(global1.x, global1.x, global1.x)), ~_wgslsmith_add_vec3_u32(vec3<u32>(0u, global1.x, 42975u), vec3<u32>(5794u, 25188u, 4294967295u))), ~_wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(global1.x, global1.x, 90407u)), vec3<u32>(22066u, 0u, 1u) >> (vec3<u32>(global1.x, global1.x, global1.x) % vec3<u32>(32u)))), Struct_3(reverseBits(global1.x), !(global1.x < _wgslsmith_add_u32(global1.x, global1.x)), 22249u >> (~_wgslsmith_dot_vec2_u32(vec2<u32>(96320u, 14455u), vec2<u32>(global1.x, 1u)) % 32u), Struct_1(vec4<i32>(u_input.a, i32(-1i) * -6504i, 2147483647i << (global1.x % 32u), -19344i), func_3(Struct_3(global1.x, false, 4294967295u, Struct_1(vec4<i32>(623i, 4880i, u_input.a, u_input.a), vec3<bool>(true, true, false), 1u), -2090f)), ~(~45357u)), _wgslsmith_f_op_f32(-113f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1157f), _wgslsmith_div_f32(1179f, 477f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(860f, 1385f, 689f, 606f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(136f, 399f, 292f, -271f))))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1738f, 1000f, -495f, -809f)), vec4<f32>(1406f, -1000f, -637f, 1185f)), vec4<f32>(_wgslsmith_f_op_f32(305f + -811f), _wgslsmith_f_op_f32(floor(-562f)), _wgslsmith_div_f32(265f, 196f), -1310f), any(vec4<bool>(true, true, true, true))))));
}

