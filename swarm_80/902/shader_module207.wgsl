struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<bool>,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

var<private> global1: i32;

var<private> global2: array<vec3<i32>, 14> = array<vec3<i32>, 14>(vec3<i32>(0i, 16586i, -1i), vec3<i32>(-4092i, i32(-2147483648), 10696i), vec3<i32>(33763i, 48744i, 2147483647i), vec3<i32>(1i, -11834i, -2142i), vec3<i32>(51073i, 34492i, -1i), vec3<i32>(6809i, -1571i, 38854i), vec3<i32>(-12837i, 13611i, 27270i), vec3<i32>(i32(-2147483648), -11297i, 2147483647i), vec3<i32>(-33354i, 40069i, 51990i), vec3<i32>(51367i, i32(-2147483648), 24434i), vec3<i32>(-19648i, 0i, 6129i), vec3<i32>(-6519i, i32(-2147483648), 29861i), vec3<i32>(-13574i, 21890i, 0i), vec3<i32>(-25037i, 0i, -1i));

var<private> global3: array<u32, 32> = array<u32, 32>(4294967295u, 1u, 78563u, 27767u, 44561u, 34530u, 84599u, 75528u, 4294967295u, 4301u, 1u, 4294967295u, 0u, 0u, 0u, 1u, 34949u, 4294967295u, 93263u, 29061u, 90629u, 1u, 0u, 1u, 74325u, 1u, 1u, 15098u, 28938u, 1u, 35637u, 1u);

var<private> global4: bool;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
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

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> vec4<u32> {
    let var_0 = Struct_1(select(!vec3<bool>(all(vec4<bool>(global0.x, global0.x, global0.x, false)), true, true), vec3<bool>(global0.x, false, true), true), 1952f, reverseBits(vec3<i32>(_wgslsmith_sub_i32(u_input.c.x, -69490i), u_input.c.x, -1i)));
    global0 = !var_0.a.xx;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_0.b, var_0.b)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, var_0.b, var_0.b) * vec3<f32>(var_0.b, 1203f, 1975f))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, 962f, -3665f))));
    global1 = -_wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.c.x, i32(-1i) * -var_0.c.x), _wgslsmith_add_i32(_wgslsmith_clamp_i32(-18484i, _wgslsmith_mult_i32(u_input.b, 60189i), u_input.b), _wgslsmith_dot_vec3_i32(~var_0.c, vec3<i32>(-31909i, 2147483647i, var_0.c.x))));
    global3 = array<u32, 32>();
    return ~_wgslsmith_clamp_vec4_u32(firstTrailingBit(~(~vec4<u32>(global3[_wgslsmith_index_u32(23400u, 32u)], global3[_wgslsmith_index_u32(20190u, 32u)], u_input.a, 0u))), reverseBits(vec4<u32>(4294967295u, 4294967295u, 14706u, 0u) >> (_wgslsmith_div_vec4_u32(vec4<u32>(83858u, u_input.a, 0u, 87442u), vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 32u)], 32u)], u_input.a, 0u, 4294967295u)) % vec4<u32>(32u))), ~vec4<u32>(select(0u, 59023u, true), 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(4294967295u, 32u)], global3[_wgslsmith_index_u32(4294967295u, 32u)]), vec2<u32>(global3[_wgslsmith_index_u32(1u, 32u)], u_input.a)), u_input.a));
}

fn func_2() -> Struct_1 {
    var var_0 = select(select(vec4<u32>(~_wgslsmith_mod_u32(u_input.a, 75230u), ~_wgslsmith_clamp_u32(u_input.a, u_input.a, global3[_wgslsmith_index_u32(u_input.a, 32u)]), 4294967295u, _wgslsmith_mult_u32(u_input.a, u_input.a >> (0u % 32u))), func_3(), select(select(select(vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(false, global0.x, true, global0.x), global0.x), vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(global0.x, true, global0.x, true)), select(select(vec4<bool>(global0.x, true, false, global0.x), vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(global0.x, global0.x, global0.x, global0.x)), !vec4<bool>(false, true, true, global0.x), true), !select(vec4<bool>(false, false, true, global0.x), vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(global0.x, global0.x, global0.x, global0.x)))), (vec4<u32>(62496u, _wgslsmith_dot_vec3_u32(vec3<u32>(12551u, u_input.a, 4294967295u), vec3<u32>(global3[_wgslsmith_index_u32(u_input.a, 32u)], u_input.a, 1u)), 43247u, ~global3[_wgslsmith_index_u32(u_input.a, 32u)]) << (vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(41916u, global3[_wgslsmith_index_u32(u_input.a, 32u)], u_input.a, u_input.a), vec4<u32>(84964u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(78326u, 32u)], 32u)], u_input.a, u_input.a)), _wgslsmith_dot_vec4_u32(vec4<u32>(9741u, global3[_wgslsmith_index_u32(762u, 32u)], 12416u, 0u), vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 32u)], 70520u, 1u, global3[_wgslsmith_index_u32(0u, 32u)])), 660u, 239u << (global3[_wgslsmith_index_u32(u_input.a, 32u)] % 32u)) % vec4<u32>(32u))) & _wgslsmith_mult_vec4_u32(max(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 32u)], 32u)], global3[_wgslsmith_index_u32(u_input.a, 32u)], global3[_wgslsmith_index_u32(59263u, 32u)], 1u), vec4<u32>(4399u, global3[_wgslsmith_index_u32(45391u, 32u)], global3[_wgslsmith_index_u32(29488u, 32u)], 58752u)), ~(vec4<u32>(global3[_wgslsmith_index_u32(60178u, 32u)], u_input.a, 1u, u_input.a) << (vec4<u32>(31572u, 4294967295u, 36968u, 1u) % vec4<u32>(32u)))), vec4<bool>(any(select(vec2<bool>(global0.x, global0.x), vec2<bool>(false, global0.x), vec2<bool>(false, global0.x))) == (-1i > u_input.b), all(select(!vec4<bool>(true, false, true, global0.x), select(vec4<bool>(global0.x, global0.x, true, false), vec4<bool>(false, true, global0.x, false), vec4<bool>(true, global0.x, false, global0.x)), !global0.x)), global0.x, global0.x));
    var var_1 = 620f;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(479f, -701f)))), _wgslsmith_f_op_f32(-393f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -995f), -381f))));
    global4 = false;
    return Struct_1(select(!vec3<bool>(global0.x, global0.x, true), vec3<bool>(true, true, true), global0.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1100f))))), global2[_wgslsmith_index_u32(var_0.x, 14u)]);
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: Struct_4, arg_3: f32) -> Struct_5 {
    global1 = -57391i;
    let var_0 = arg_2;
    var var_1 = select(_wgslsmith_clamp_u32(var_0.a, 87106u, var_0.a), _wgslsmith_mod_u32(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(select(0u, countOneBits(global3[_wgslsmith_index_u32(var_0.a, 32u)]), arg_1.b.a.x), global3[_wgslsmith_index_u32(1u, 32u)]), 32u)], max(~34548u, 1u) >> (select(var_0.a << (44638u % 32u), ~arg_2.a, arg_2.b.a.a.x) % 32u)), all(vec3<bool>(true, !select(true, arg_1.d.a.x, false), !arg_2.b.a.a.x)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(313f - arg_2.b.d.b) * _wgslsmith_f_op_f32(f32(-1f) * -704f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, arg_3, true)) + _wgslsmith_f_op_f32(arg_1.d.b + 286f)))) * -1341f);
    global2 = array<vec3<i32>, 14>();
    return Struct_5(Struct_4(var_0.a, Struct_3(Struct_1(vec3<bool>(global0.x, arg_2.b.d.a.x, true), _wgslsmith_f_op_f32(f32(-1f) * -751f), global2[_wgslsmith_index_u32(4294967295u, 14u)]), arg_1.a, _wgslsmith_f_op_vec2_f32(trunc(arg_2.b.c)), Struct_1(arg_2.b.d.a, _wgslsmith_f_op_f32(trunc(arg_1.a.b)), ~global2[_wgslsmith_index_u32(72120u, 14u)])), vec4<i32>(firstTrailingBit(var_0.d.x), _wgslsmith_add_i32(arg_2.b.a.c.x, 2147483647i), -2147483647i, arg_1.b.c.x), abs(select(_wgslsmith_div_vec3_i32(arg_2.c.yxw, vec3<i32>(arg_2.d.x, u_input.c.x, -2147483647i)), _wgslsmith_mod_vec3_i32(global2[_wgslsmith_index_u32(4294967295u, 14u)], vec3<i32>(var_0.c.x, -2147483647i, var_0.c.x)), global0.x))), !vec2<bool>(!any(vec4<bool>(var_0.b.b.a.x, var_0.b.b.a.x, arg_1.b.a.x, false)), false), Struct_1(!(!arg_1.d.a), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.a.b))), vec3<i32>(select(var_0.c.x, countOneBits(u_input.c.x), var_0.a != 60629u), -7781i, countOneBits(1i))), (~arg_2.d.x | -1i) | ~_wgslsmith_sub_i32(-1i, -arg_0));
}

fn func_5(arg_0: Struct_5) -> vec2<u32> {
    global0 = arg_0.a.b.d.a.yy;
    var var_0 = vec4<u32>(~1u, min(global3[_wgslsmith_index_u32(arg_0.a.a, 32u)], ~global3[_wgslsmith_index_u32(max(global3[_wgslsmith_index_u32(17390u, 32u)], ~1u), 32u)]), _wgslsmith_mult_u32(~_wgslsmith_clamp_u32(arg_0.a.a >> (4294967295u % 32u), u_input.a, global3[_wgslsmith_index_u32(~53811u, 32u)]), 14501u), ~(~_wgslsmith_div_u32(~4294967295u, ~49766u)));
    global4 = func_4(-31250i, Struct_3(arg_0.c, func_4(-9598i, Struct_3(Struct_1(arg_0.a.b.b.a, -520f, vec3<i32>(-30873i, arg_0.c.c.x, arg_0.d)), arg_0.a.b.a, vec2<f32>(433f, arg_0.c.b), arg_0.c), arg_0.a, _wgslsmith_f_op_f32(round(-1665f))).a.b.a, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -280f), -1111f), Struct_1(arg_0.a.b.a.a, -894f, func_4(-2147483647i, Struct_3(arg_0.a.b.a, Struct_1(vec3<bool>(arg_0.b.x, true, true), arg_0.c.b, arg_0.c.c), vec2<f32>(1735f, arg_0.c.b), Struct_1(arg_0.c.a, arg_0.a.b.d.b, vec3<i32>(u_input.b, 2147483647i, arg_0.d))), arg_0.a, 1328f).a.c.wwy)), arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.b.d.b))).a.b.a.a.x | arg_0.a.b.a.a.x;
    global2 = array<vec3<i32>, 14>();
    var var_1 = -_wgslsmith_add_i32(~reverseBits(countOneBits(-2147483647i)), reverseBits(arg_0.c.c.x) | _wgslsmith_div_i32(~u_input.c.x, 18751i));
    return vec2<u32>(41327u, abs(19381u));
}

fn func_1(arg_0: vec4<u32>, arg_1: f32, arg_2: vec2<u32>) -> u32 {
    let var_0 = func_5(func_4(~(~u_input.b) & (~(-2147483647i) ^ -u_input.c.x), Struct_3(func_2(), Struct_1(vec3<bool>(true, true, true), _wgslsmith_f_op_f32(1708f + arg_1), global2[_wgslsmith_index_u32(arg_2.x, 14u)] | vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_1, -683f), vec2<f32>(arg_1, 452f))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_1, arg_1), vec2<f32>(arg_1, arg_1))), !global0.x)), Struct_1(vec3<bool>(true, true, true), 1000f, ~vec3<i32>(25274i, -59146i, 0i))), Struct_4(~arg_0.x, Struct_3(Struct_1(vec3<bool>(global0.x, global0.x, global0.x), 801f, vec3<i32>(u_input.c.x, 0i, 25425i)), Struct_1(vec3<bool>(true, false, true), 3182f, global2[_wgslsmith_index_u32(10705u, 14u)]), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1, arg_1), vec2<f32>(arg_1, -337f), global0.x)), func_2()), vec4<i32>(~u_input.b, -41974i, u_input.c.x | u_input.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(37184i, u_input.c.x), vec2<i32>(1i, u_input.c.x))), _wgslsmith_mod_vec3_i32(min(vec3<i32>(u_input.b, 12147i, u_input.b), global2[_wgslsmith_index_u32(0u, 14u)]), -vec3<i32>(u_input.c.x, 0i, u_input.c.x))), _wgslsmith_f_op_f32(-1000f + func_2().b)));
    global1 = (~countOneBits(_wgslsmith_mod_i32(1i, 1i)) >> (_wgslsmith_mod_u32(arg_2.x, _wgslsmith_div_u32(var_0.x, ~1u)) % 32u)) >> (_wgslsmith_div_u32(4294967295u, (func_4(u_input.c.x, Struct_3(Struct_1(vec3<bool>(false, global0.x, global0.x), -1000f, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(59416u, 32u)], 14u)]), Struct_1(vec3<bool>(true, false, false), 102f, vec3<i32>(u_input.b, -1i, 19078i)), vec2<f32>(arg_1, -458f), Struct_1(vec3<bool>(false, false, global0.x), -1171f, vec3<i32>(22762i, u_input.c.x, u_input.c.x))), Struct_4(0u, Struct_3(Struct_1(vec3<bool>(true, global0.x, global0.x), 422f, global2[_wgslsmith_index_u32(arg_2.x, 14u)]), Struct_1(vec3<bool>(false, global0.x, global0.x), arg_1, vec3<i32>(2147483647i, u_input.c.x, u_input.b)), vec2<f32>(arg_1, 1107f), Struct_1(vec3<bool>(global0.x, global0.x, true), 130f, global2[_wgslsmith_index_u32(arg_2.x, 14u)])), vec4<i32>(u_input.c.x, -2147483647i, 29337i, -2147483647i), vec3<i32>(-1i, u_input.c.x, u_input.c.x)), arg_1).a.a & firstTrailingBit(global3[_wgslsmith_index_u32(5138u, 32u)])) ^ 60328u) % 32u);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-1226f, 473f), -1345f, arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1010f, -1880f)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_2 = func_4(0i, Struct_3(func_2(), func_4(u_input.b, func_4(select(u_input.b, u_input.b, global0.x), Struct_3(Struct_1(vec3<bool>(false, global0.x, false), var_1.x, global2[_wgslsmith_index_u32(33615u, 14u)]), Struct_1(vec3<bool>(global0.x, false, global0.x), arg_1, vec3<i32>(-1i, 47668i, 23660i)), var_1.yw, Struct_1(vec3<bool>(global0.x, false, global0.x), 998f, vec3<i32>(-2147483647i, 2147483647i, u_input.b))), Struct_4(34068u, Struct_3(Struct_1(vec3<bool>(false, false, global0.x), arg_1, global2[_wgslsmith_index_u32(4294967295u, 14u)]), Struct_1(vec3<bool>(false, false, global0.x), 1294f, vec3<i32>(15711i, -38473i, 0i)), var_1.xx, Struct_1(vec3<bool>(global0.x, false, true), var_1.x, global2[_wgslsmith_index_u32(4294967295u, 14u)])), vec4<i32>(u_input.b, u_input.c.x, u_input.c.x, 2147483647i), vec3<i32>(u_input.b, u_input.b, -42666i)), -770f).a.b, func_4(u_input.b, func_4(u_input.c.x, Struct_3(Struct_1(vec3<bool>(global0.x, global0.x, true), 402f, global2[_wgslsmith_index_u32(0u, 14u)]), Struct_1(vec3<bool>(global0.x, global0.x, global0.x), 472f, vec3<i32>(u_input.b, u_input.c.x, u_input.c.x)), vec2<f32>(arg_1, arg_1), Struct_1(vec3<bool>(false, false, global0.x), 603f, vec3<i32>(2147483647i, u_input.b, u_input.c.x))), Struct_4(1u, Struct_3(Struct_1(vec3<bool>(false, global0.x, false), -633f, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 32u)], 14u)]), Struct_1(vec3<bool>(false, global0.x, global0.x), 1275f, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_0.x, 32u)], 14u)]), var_1.yz, Struct_1(vec3<bool>(false, false, true), 872f, vec3<i32>(34302i, -44925i, u_input.c.x))), vec4<i32>(2147483647i, -1i, 1i, 1i), global2[_wgslsmith_index_u32(arg_2.x, 14u)]), arg_1).a.b, Struct_4(u_input.a, Struct_3(Struct_1(vec3<bool>(global0.x, false, false), -951f, vec3<i32>(u_input.c.x, u_input.b, 2147483647i)), Struct_1(vec3<bool>(true, global0.x, global0.x), var_1.x, vec3<i32>(u_input.c.x, -48461i, u_input.c.x)), var_1.zy, Struct_1(vec3<bool>(global0.x, global0.x, true), 909f, global2[_wgslsmith_index_u32(arg_2.x, 14u)])), vec4<i32>(u_input.b, -1i, u_input.c.x, u_input.b), vec3<i32>(u_input.b, u_input.c.x, u_input.c.x)), _wgslsmith_f_op_f32(-var_1.x)).a, _wgslsmith_f_op_f32(select(var_1.x, 592f, true))).a.b.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-843f, 574f)), _wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, 461f), vec2<f32>(362f, -727f)), true)), _wgslsmith_f_op_vec2_f32(var_1.wy - vec2<f32>(arg_1, var_1.x))), Struct_1(!vec3<bool>(global0.x, global0.x, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.x, -625f)) * _wgslsmith_f_op_f32(arg_1 * 1203f)), -vec3<i32>(u_input.c.x, 1i, u_input.b))), func_4(u_input.b, func_4(u_input.c.x, func_4(func_2().c.x, Struct_3(Struct_1(vec3<bool>(global0.x, global0.x, global0.x), -717f, global2[_wgslsmith_index_u32(arg_2.x, 14u)]), Struct_1(vec3<bool>(global0.x, global0.x, global0.x), -1759f, vec3<i32>(1026i, u_input.c.x, u_input.b)), var_1.wy, Struct_1(vec3<bool>(global0.x, true, global0.x), var_1.x, vec3<i32>(u_input.c.x, u_input.b, 10358i))), Struct_4(u_input.a, Struct_3(Struct_1(vec3<bool>(global0.x, global0.x, global0.x), -2593f, vec3<i32>(u_input.c.x, u_input.c.x, u_input.b)), Struct_1(vec3<bool>(false, global0.x, true), 174f, vec3<i32>(u_input.b, 19729i, 35379i)), var_1.wz, Struct_1(vec3<bool>(global0.x, true, false), 889f, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 32u)], 14u)])), vec4<i32>(-7071i, 1i, u_input.c.x, u_input.b), vec3<i32>(u_input.b, u_input.c.x, 2147483647i)), _wgslsmith_f_op_f32(var_1.x + var_1.x)).a.b, func_4(-82365i, func_4(0i, Struct_3(Struct_1(vec3<bool>(global0.x, true, false), var_1.x, global2[_wgslsmith_index_u32(arg_2.x, 14u)]), Struct_1(vec3<bool>(global0.x, false, global0.x), 1000f, vec3<i32>(26634i, -2147483647i, -1i)), var_1.xy, Struct_1(vec3<bool>(true, true, global0.x), arg_1, global2[_wgslsmith_index_u32(4294967295u, 14u)])), Struct_4(1u, Struct_3(Struct_1(vec3<bool>(false, false, global0.x), var_1.x, global2[_wgslsmith_index_u32(27161u, 14u)]), Struct_1(vec3<bool>(global0.x, false, global0.x), var_1.x, global2[_wgslsmith_index_u32(10726u, 14u)]), var_1.ww, Struct_1(vec3<bool>(true, true, global0.x), -1000f, vec3<i32>(-2147483647i, 18640i, 1i))), vec4<i32>(u_input.b, 2147483647i, u_input.c.x, 0i), global2[_wgslsmith_index_u32(arg_0.x, 14u)]), -1551f).a.b, Struct_4(0u, Struct_3(Struct_1(vec3<bool>(global0.x, false, global0.x), var_1.x, global2[_wgslsmith_index_u32(1u, 14u)]), Struct_1(vec3<bool>(false, global0.x, true), var_1.x, global2[_wgslsmith_index_u32(4294967295u, 14u)]), vec2<f32>(var_1.x, arg_1), Struct_1(vec3<bool>(true, global0.x, global0.x), -226f, vec3<i32>(u_input.b, 0i, -27510i))), vec4<i32>(66351i, -328i, -29291i, u_input.b), global2[_wgslsmith_index_u32(arg_2.x, 14u)]), _wgslsmith_f_op_f32(floor(var_1.x))).a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * -2475f) * arg_1)).a.b, func_4(u_input.c.x | 21568i, Struct_3(func_2(), func_4(58737i, Struct_3(Struct_1(vec3<bool>(false, true, global0.x), arg_1, global2[_wgslsmith_index_u32(1u, 14u)]), Struct_1(vec3<bool>(global0.x, true, false), 886f, global2[_wgslsmith_index_u32(32324u, 14u)]), var_1.wx, Struct_1(vec3<bool>(global0.x, false, global0.x), var_1.x, vec3<i32>(0i, 0i, u_input.b))), Struct_4(4921u, Struct_3(Struct_1(vec3<bool>(false, global0.x, global0.x), var_1.x, global2[_wgslsmith_index_u32(u_input.a, 14u)]), Struct_1(vec3<bool>(false, global0.x, global0.x), arg_1, vec3<i32>(2147483647i, u_input.b, -15529i)), var_1.yz, Struct_1(vec3<bool>(true, false, true), -207f, global2[_wgslsmith_index_u32(1u, 14u)])), vec4<i32>(u_input.b, u_input.c.x, 0i, 2147483647i), vec3<i32>(0i, u_input.b, -1i)), arg_1).a.b.a, _wgslsmith_div_vec2_f32(vec2<f32>(295f, -1067f), var_1.xw), Struct_1(vec3<bool>(true, global0.x, global0.x), arg_1, global2[_wgslsmith_index_u32(arg_0.x, 14u)])), func_4(_wgslsmith_sub_i32(u_input.b, -28550i), func_4(-1i, Struct_3(Struct_1(vec3<bool>(global0.x, global0.x, global0.x), 1785f, vec3<i32>(-42661i, u_input.c.x, 2147483647i)), Struct_1(vec3<bool>(global0.x, true, global0.x), var_1.x, vec3<i32>(u_input.c.x, 8447i, u_input.b)), var_1.wy, Struct_1(vec3<bool>(false, false, false), 1651f, vec3<i32>(u_input.b, u_input.c.x, 1i))), Struct_4(4294967295u, Struct_3(Struct_1(vec3<bool>(global0.x, true, true), -1149f, global2[_wgslsmith_index_u32(1u, 14u)]), Struct_1(vec3<bool>(false, global0.x, false), var_1.x, vec3<i32>(u_input.c.x, -23034i, 2147483647i)), var_1.yx, Struct_1(vec3<bool>(global0.x, true, global0.x), 463f, vec3<i32>(1i, 11774i, 2147483647i))), vec4<i32>(u_input.b, u_input.b, 13377i, 16132i), global2[_wgslsmith_index_u32(u_input.a, 14u)]), -2049f).a.b, func_4(-2147483647i, Struct_3(Struct_1(vec3<bool>(false, global0.x, false), arg_1, vec3<i32>(-2147483647i, u_input.c.x, 0i)), Struct_1(vec3<bool>(false, global0.x, global0.x), var_1.x, global2[_wgslsmith_index_u32(arg_2.x, 14u)]), var_1.wx, Struct_1(vec3<bool>(true, true, global0.x), -859f, global2[_wgslsmith_index_u32(u_input.a, 14u)])), Struct_4(8739u, Struct_3(Struct_1(vec3<bool>(true, global0.x, global0.x), -516f, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(39215u, 32u)], 14u)]), Struct_1(vec3<bool>(global0.x, true, true), 1017f, global2[_wgslsmith_index_u32(16823u, 14u)]), vec2<f32>(arg_1, 1693f), Struct_1(vec3<bool>(global0.x, false, false), -1493f, global2[_wgslsmith_index_u32(u_input.a, 14u)])), vec4<i32>(u_input.c.x, u_input.c.x, -1i, u_input.c.x), vec3<i32>(u_input.c.x, -9388i, u_input.b)), 1000f).a, func_4(-2147483647i, Struct_3(Struct_1(vec3<bool>(global0.x, global0.x, true), arg_1, global2[_wgslsmith_index_u32(0u, 14u)]), Struct_1(vec3<bool>(true, false, global0.x), arg_1, vec3<i32>(u_input.c.x, u_input.c.x, 2147483647i)), var_1.wz, Struct_1(vec3<bool>(false, true, true), -423f, vec3<i32>(u_input.c.x, 21483i, u_input.c.x))), Struct_4(63122u, Struct_3(Struct_1(vec3<bool>(global0.x, global0.x, false), -1000f, vec3<i32>(u_input.b, -29261i, u_input.b)), Struct_1(vec3<bool>(true, global0.x, true), arg_1, vec3<i32>(-1i, 2147483647i, -9581i)), vec2<f32>(530f, var_1.x), Struct_1(vec3<bool>(global0.x, global0.x, true), -206f, vec3<i32>(-1i, 20793i, u_input.b))), vec4<i32>(u_input.b, u_input.b, -23449i, u_input.b), vec3<i32>(u_input.b, 2147483647i, u_input.b)), arg_1).a.b.d.b).a, func_2().b).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + 1079f))).a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * var_1.x))));
    var var_3 = func_4(-func_2().c.x, func_4(51365i, Struct_3(func_4(abs(-1i), func_4(var_2.d, var_2.a.b, var_2.a, var_2.a.b.a.b).a.b, func_4(714i, Struct_3(Struct_1(var_2.a.b.a.a, var_2.a.b.d.b, var_2.c.c), Struct_1(var_2.c.a, -832f, vec3<i32>(-2147483647i, -4803i, 1i)), var_1.xx, Struct_1(var_2.c.a, var_2.a.b.c.x, global2[_wgslsmith_index_u32(u_input.a, 14u)])), Struct_4(0u, var_2.a.b, vec4<i32>(2147483647i, u_input.b, 15003i, u_input.b), var_2.c.c), 870f).a, _wgslsmith_f_op_f32(-310f - 792f)).a.b.a, Struct_1(vec3<bool>(var_2.c.a.x, false, false), arg_1, vec3<i32>(u_input.c.x, -2147483647i, var_2.a.d.x)), vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), -1241f), var_2.a.b.a), func_4(~abs(-2147483647i), var_2.a.b, func_4(1i, Struct_3(var_2.a.b.d, Struct_1(vec3<bool>(var_2.c.a.x, var_2.b.x, true), var_2.c.b, vec3<i32>(-2147483647i, u_input.b, -32243i)), vec2<f32>(var_2.a.b.a.b, 1015f), var_2.a.b.d), var_2.a, _wgslsmith_f_op_f32(-arg_1)).a, _wgslsmith_f_op_f32(ceil(-1439f))).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))))).a.b, func_4(14196i, var_2.a.b, Struct_4(_wgslsmith_mod_u32(0u, 33638u), func_4(1i, Struct_3(var_2.a.b.b, Struct_1(vec3<bool>(true, var_2.a.b.a.a.x, false), 175f, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_2.x, 32u)], 14u)]), var_2.a.b.c, Struct_1(vec3<bool>(true, var_2.a.b.d.a.x, global0.x), var_1.x, vec3<i32>(0i, -3336i, 1i))), var_2.a, _wgslsmith_f_op_f32(arg_1 + var_2.a.b.c.x)).a.b, vec4<i32>(u_input.c.x, select(u_input.b, var_2.c.c.x, false), 1i, var_2.c.c.x), ~global2[_wgslsmith_index_u32(u_input.a, 14u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_2.a.b.a.b)) * -483f)).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -132f)));
    return ~0u;
}

fn func_6(arg_0: Struct_5, arg_1: vec2<bool>, arg_2: vec3<u32>) -> vec3<bool> {
    let var_0 = func_2();
    let var_1 = _wgslsmith_add_u32(~(_wgslsmith_div_u32(firstLeadingBit(u_input.a), u_input.a << (0u % 32u)) ^ ~0u), ~_wgslsmith_mod_u32(27338u, 120681u));
    var var_2 = _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(abs(func_3()), reverseBits(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(42685u, arg_2.x, u_input.a, global3[_wgslsmith_index_u32(39302u, 32u)]), vec4<u32>(4294967295u, 4294967295u, var_1, 0u)), 65030u, 0u, 0u))), ~0u);
    var var_3 = vec3<bool>(true, false, var_1 == _wgslsmith_dot_vec2_u32(max(vec2<u32>(var_1, arg_0.a.a), vec2<u32>(u_input.a, u_input.a)) ^ vec2<u32>(4294967295u, u_input.a), vec2<u32>(~global3[_wgslsmith_index_u32(4294967295u, 32u)], _wgslsmith_mod_u32(11393u, u_input.a))));
    var var_4 = select(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, abs(arg_0.a.b.a.c.x), firstLeadingBit(arg_0.c.c.x), -1i), arg_0.a.c) ^ arg_0.a.c, countOneBits(arg_0.a.c), !(!select(all(vec4<bool>(true, global0.x, arg_1.x, true)), !arg_1.x, u_input.b > var_0.c.x)));
    return vec3<bool>(true, true, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(func_6(Struct_5(Struct_4(global3[_wgslsmith_index_u32(u_input.a, 32u)], Struct_3(Struct_1(vec3<bool>(false, false, false), 114f, vec3<i32>(u_input.b, u_input.c.x, -6645i)), Struct_1(vec3<bool>(false, global0.x, false), 1022f, global2[_wgslsmith_index_u32(34307u, 14u)]), vec2<f32>(149f, 622f), Struct_1(vec3<bool>(global0.x, true, global0.x), -955f, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(95693u, 32u)], 14u)])), vec4<i32>(u_input.c.x, 2147483647i, -30834i, u_input.c.x), global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 32u)], 14u)]), !vec2<bool>(false, global0.x), Struct_1(vec3<bool>(false, global0.x, true), -574f, global2[_wgslsmith_index_u32(u_input.a, 14u)]), u_input.c.x ^ 2147483647i), vec2<bool>(any(vec3<bool>(global0.x, true, global0.x)), global0.x), vec3<u32>(func_1(vec4<u32>(1u, u_input.a, u_input.a, 89490u), -1123f, vec2<u32>(global3[_wgslsmith_index_u32(1u, 32u)], 1u)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a, u_input.a, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 32u)], 32u)], 32u)]), vec4<u32>(4020u, 1u, 33071u, u_input.a)), 0u | u_input.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-626f - 489f))) * _wgslsmith_f_op_f32(f32(-1f) * -1441f)), min(global2[_wgslsmith_index_u32(1u, 14u)], global2[_wgslsmith_index_u32(~43915u, 14u)])), ~reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, 2147483647i, u_input.c.x, u_input.c.x), vec4<i32>(1i, -20897i, 35544i, -44601i)) | (vec4<i32>(u_input.b, 1i, 6004i, u_input.b) ^ vec4<i32>(u_input.c.x, 1i, u_input.c.x, u_input.b))), func_2());
    var var_1 = Struct_2(var_0.c, ~vec4<i32>(-(~var_0.c.c.x), max(u_input.b, -425i), var_0.c.c.x, _wgslsmith_div_i32(1i, ~var_0.c.c.x)), var_0.a);
    global0 = func_2().a.xy;
    var_1 = var_0;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.c.b, var_1.c.b, var_0.c.b, var_0.c.b), vec4<f32>(var_0.c.b, var_0.c.b, var_1.c.b, 134f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1055f, 748f, var_0.c.b, var_0.a.b)) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.a.b, var_1.a.b, var_1.a.b, -1447f), vec4<f32>(1000f, -1000f, var_0.a.b, 272f)))))))));
    let var_3 = var_2.x;
    var var_4 = _wgslsmith_mod_u32(~8797u, ~_wgslsmith_clamp_u32(4294967295u | u_input.a, 72671u, 92877u)) > reverseBits(~_wgslsmith_div_u32(func_4(var_0.c.c.x, Struct_3(Struct_1(vec3<bool>(false, var_1.a.a.x, var_0.c.a.x), 157f, var_0.a.c), var_1.c, var_2.wz, var_1.a), Struct_4(u_input.a, Struct_3(Struct_1(var_1.c.a, -1370f, vec3<i32>(var_0.c.c.x, -1i, -1470i)), Struct_1(vec3<bool>(false, true, false), 743f, vec3<i32>(var_0.b.x, var_0.b.x, -1i)), var_2.xw, var_0.a), var_0.b, vec3<i32>(79325i, var_1.b.x, var_0.c.c.x)), 531f).a.a, u_input.a ^ u_input.a));
    var var_5 = func_2();
    let var_6 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(func_4(_wgslsmith_mult_i32(countOneBits(-266i) & var_6.c.c.x, _wgslsmith_mult_i32(min(var_5.c.x, 25049i), 22753i)), func_4(-u_input.b, Struct_3(func_4(-2147483647i, Struct_3(var_0.c, var_6.c, var_2.xx, Struct_1(var_0.a.a, -325f, vec3<i32>(-1i, var_0.a.c.x, 21435i))), Struct_4(22178u, Struct_3(var_1.a, var_0.a, var_2.yy, var_1.c), vec4<i32>(var_0.b.x, 8381i, 1i, 0i), var_6.b.xzy), -394f).a.b.a, Struct_1(vec3<bool>(false, true, false), var_6.c.b, vec3<i32>(0i, -1i, 23531i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(469f, -182f)), func_2()), func_4(2147483647i, Struct_3(Struct_1(var_1.a.a, -345f, var_1.a.c), Struct_1(vec3<bool>(false, true, var_5.a.x), 2259f, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(34497u, 32u)], 32u)], 14u)]), var_2.yw, var_0.a), Struct_4(global3[_wgslsmith_index_u32(u_input.a, 32u)], Struct_3(Struct_1(var_1.c.a, -939f, var_1.c.c), Struct_1(vec3<bool>(true, true, var_1.a.a.x), -1434f, vec3<i32>(var_5.c.x, 73089i, -2147483647i)), var_2.wy, Struct_1(var_6.a.a, -889f, vec3<i32>(-13264i, var_5.c.x, var_0.a.c.x))), var_0.b, global2[_wgslsmith_index_u32(4294967295u, 14u)]), 1325f).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-266f)))).a.b, Struct_4(~func_4(u_input.b, Struct_3(Struct_1(var_6.c.a, var_6.c.b, vec3<i32>(39391i, u_input.b, -1968i)), Struct_1(var_5.a, var_2.x, vec3<i32>(0i, 14525i, var_6.c.c.x)), vec2<f32>(1326f, var_6.c.b), Struct_1(vec3<bool>(false, var_6.c.a.x, false), var_3, vec3<i32>(var_6.b.x, 18837i, -1i))), Struct_4(u_input.a, Struct_3(var_0.a, Struct_1(vec3<bool>(false, var_6.c.a.x, true), var_5.b, vec3<i32>(-2147483647i, -1i, var_0.c.c.x)), var_2.zw, var_1.c), var_1.b, vec3<i32>(var_5.c.x, u_input.c.x, 2147483647i)), var_3).a.a, func_4(~var_5.c.x, Struct_3(Struct_1(vec3<bool>(true, global0.x, false), -1037f, vec3<i32>(var_0.a.c.x, -2147483647i, -2147483647i)), var_6.c, var_2.ww, Struct_1(var_1.a.a, 627f, vec3<i32>(-2147483647i, var_5.c.x, var_5.c.x))), Struct_4(global3[_wgslsmith_index_u32(31998u, 32u)], Struct_3(var_6.c, var_1.a, var_2.yx, var_1.c), vec4<i32>(-6664i, -1i, var_1.c.c.x, 1i), vec3<i32>(14927i, var_6.a.c.x, var_0.a.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -239f)).a.b, var_1.b, func_4(var_1.c.c.x & -68353i, func_4(u_input.c.x, Struct_3(var_1.c, var_1.c, var_2.xx, var_0.a), Struct_4(23954u, Struct_3(var_1.a, var_1.c, var_2.wx, Struct_1(vec3<bool>(true, global0.x, false), var_1.c.b, var_1.a.c)), var_1.b, vec3<i32>(var_1.c.c.x, 14229i, var_0.a.c.x)), 756f).a.b, func_4(-2147483647i, Struct_3(Struct_1(vec3<bool>(true, var_5.a.x, var_0.c.a.x), var_3, vec3<i32>(var_6.a.c.x, -1i, var_5.c.x)), var_0.a, vec2<f32>(-341f, 328f), Struct_1(var_1.a.a, var_5.b, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 32u)], 14u)])), Struct_4(global3[_wgslsmith_index_u32(31861u, 32u)], Struct_3(Struct_1(var_0.a.a, var_6.a.b, global2[_wgslsmith_index_u32(u_input.a, 14u)]), var_6.a, var_2.yw, var_6.a), var_1.b, var_5.c), -745f).a, -1581f).c.c), var_1.c.b).a.c.xxy, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(1u, 21046u, abs(u_input.a)), u_input.a << (func_5(Struct_5(Struct_4(4294967295u, Struct_3(Struct_1(vec3<bool>(var_0.a.a.x, true, global0.x), 1453f, vec3<i32>(var_0.b.x, var_6.c.c.x, 15111i)), var_6.c, vec2<f32>(-263f, var_3), Struct_1(var_6.c.a, -2028f, var_6.c.c)), vec4<i32>(-1i, -35473i, -17641i, var_1.a.c.x), var_6.a.c), vec2<bool>(var_1.c.a.x, var_1.c.a.x), Struct_1(var_1.c.a, 953f, var_0.b.xzw), -2147483647i)).x % 32u)), func_4(var_5.c.x, Struct_3(Struct_1(vec3<bool>(true, true, true), 724f, var_5.c), Struct_1(!vec3<bool>(false, var_5.a.x, var_5.a.x), _wgslsmith_f_op_f32(158f - 1376f), reverseBits(vec3<i32>(var_6.c.c.x, -1i, 22012i))), _wgslsmith_f_op_vec2_f32(-var_2.zw), func_2()), func_4(var_0.c.c.x, Struct_3(var_0.c, Struct_1(vec3<bool>(true, false, global0.x), 632f, var_5.c), _wgslsmith_f_op_vec2_f32(-var_2.yx), func_4(var_5.c.x, Struct_3(Struct_1(vec3<bool>(true, false, var_6.a.a.x), var_2.x, vec3<i32>(-1i, var_0.b.x, u_input.b)), var_0.a, vec2<f32>(-1030f, -1236f), var_1.c), Struct_4(32119u, Struct_3(Struct_1(var_6.a.a, var_0.c.b, var_5.c), Struct_1(vec3<bool>(var_0.a.a.x, var_5.a.x, var_0.a.a.x), 1754f, vec3<i32>(var_5.c.x, 0i, 53390i)), vec2<f32>(-1864f, var_6.a.b), Struct_1(var_6.c.a, var_2.x, var_1.a.c)), var_1.b, vec3<i32>(var_5.c.x, var_6.b.x, var_1.a.c.x)), var_2.x).a.b.a), Struct_4(global3[_wgslsmith_index_u32(func_3().x, 32u)], Struct_3(var_1.a, var_6.a, var_2.zz, Struct_1(vec3<bool>(true, var_0.c.a.x, false), var_1.a.b, var_5.c)), vec4<i32>(1i, -47947i, var_1.a.c.x, var_6.b.x), var_5.c ^ vec3<i32>(var_0.a.c.x, 0i, -31548i)), _wgslsmith_f_op_f32(exp2(var_2.x))).a, _wgslsmith_f_op_f32(max(var_5.b, _wgslsmith_f_op_f32(ceil(2889f))))).a.a);
}

