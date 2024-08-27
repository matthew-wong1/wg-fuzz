struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec3<f32>,
    d: i32,
    e: f32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, false);

var<private> global1: u32;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_4, arg_2: bool) -> bool {
    var var_0 = Struct_2(arg_0.c.xx);
    var var_1 = vec4<i32>(~_wgslsmith_dot_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(arg_0.d, -1i, arg_0.a.b, arg_1.a.b), vec4<i32>(-62236i, arg_0.a.b, 0i, arg_0.d)), vec4<i32>(1i, ~19193i, -30502i, arg_1.a.b)), ~14119i, ~_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(-arg_0.b, reverseBits(arg_0.b)), arg_0.d & abs(arg_1.a.b), -35559i), arg_1.a.b);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(arg_0.e)), -1114f)), _wgslsmith_f_op_f32(trunc(arg_0.c.x)), _wgslsmith_f_op_f32(trunc(-650f)), _wgslsmith_f_op_f32(-arg_1.a.c))));
    var var_3 = reverseBits(~(vec4<i32>(-17953i & arg_1.a.b, var_1.x, arg_1.a.b, ~10336i) | vec4<i32>(~2147483647i, 17872i << (arg_1.a.a.x % 32u), -var_1.x, -11007i)));
    let var_4 = Struct_3(arg_1.a, -_wgslsmith_mult_vec2_i32(~arg_0.b, vec2<i32>(-29303i, arg_1.a.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.c), _wgslsmith_f_op_vec3_f32(trunc(var_2.zxz))), vec3<f32>(1f, arg_0.c.x, var_0.a.x))), var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.x, -199f)));
    return true;
}

fn func_2() -> i32 {
    let var_0 = ~38167i;
    global0 = vec3<bool>(func_3(Struct_3(Struct_1(vec3<u32>(1u, u_input.a, 4294967295u) & vec3<u32>(62499u, u_input.a, 3246u), firstLeadingBit(var_0), -2073f), _wgslsmith_add_vec2_i32(vec2<i32>(-1i, -2147483647i) ^ vec2<i32>(var_0, var_0), vec2<i32>(var_0, var_0) >> (vec2<u32>(21772u, u_input.a) % vec2<u32>(32u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-997f, -2076f, 1343f)) * vec3<f32>(-1635f, -2019f, 166f)), firstTrailingBit(0i), _wgslsmith_f_op_f32(trunc(1f))), Struct_4(Struct_1(~vec3<u32>(u_input.a, u_input.a, u_input.a), 7808i, _wgslsmith_f_op_f32(step(2271f, -1688f)))), select(max(u_input.a, 16016u) < 0u, true, true)), !(!(16129u > u_input.a) || (_wgslsmith_div_i32(var_0, 2294i) > 22111i)), true);
    let var_1 = vec4<bool>(func_3(Struct_3(Struct_1(vec3<u32>(0u, 1u, 1u) & vec3<u32>(u_input.a, 1u, u_input.a), var_0, _wgslsmith_f_op_f32(791f + 1368f)), vec2<i32>(-1i) * -vec2<i32>(var_0, var_0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(450f, 1808f, -719f)))), -_wgslsmith_mult_i32(var_0, -1i), _wgslsmith_div_f32(-1096f, _wgslsmith_f_op_f32(round(-113f)))), Struct_4(Struct_1(vec3<u32>(1u, u_input.a, u_input.a), var_0, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), !(!(!global0.x))), true, global0.x, all(!select(vec2<bool>(global0.x, global0.x), !vec2<bool>(global0.x, true), false)));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(sign(-629f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1487f)))), -1505f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-1362f)))));
    var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1619f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), var_2.x, -987f))));
    return ~(-1i);
}

fn func_1() -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(-1000f, 1252f)), -1043f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1369f + 750f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -934f))));
    let var_1 = Struct_3(Struct_1(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 0u, 31665u) << (reverseBits(vec3<u32>(u_input.a, 1u, 1u)) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_mod_u32(4294967295u, u_input.a), select(u_input.a, 11279u, global0.x), _wgslsmith_sub_u32(u_input.a, 86408u))), _wgslsmith_dot_vec2_i32(vec2<i32>(-28778i << (u_input.a % 32u), _wgslsmith_div_i32(-2147483647i, 2147483647i)), vec2<i32>(_wgslsmith_sub_i32(0i, -11492i), -1i)), _wgslsmith_div_f32(1079f, var_0.x)), vec2<i32>(-1i) * -vec2<i32>(-1i, i32(-1i) * -1i), var_0.xzw, firstLeadingBit(_wgslsmith_sub_i32(func_2(), ~(-1i)) & func_2()), _wgslsmith_f_op_f32(1654f * _wgslsmith_f_op_f32(var_0.x + var_0.x)));
    var var_2 = ~(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.a, 0u), _wgslsmith_add_vec4_u32(vec4<u32>(var_1.a.a.x, 24961u, var_1.a.a.x, u_input.a), vec4<u32>(13272u, var_1.a.a.x, 41311u, 24977u))) & (vec4<u32>(11949u, var_1.a.a.x, 30896u, u_input.a) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.a.a.x, var_1.a.a.x, 1u, 36612u), vec4<u32>(1u, var_1.a.a.x, u_input.a, u_input.a)) % vec4<u32>(32u)))) ^ (_wgslsmith_add_vec4_u32(vec4<u32>(26591u, ~7929u, _wgslsmith_sub_u32(var_1.a.a.x, u_input.a), ~var_1.a.a.x), vec4<u32>(u_input.a, firstLeadingBit(0u), var_1.a.a.x, 4294967295u)) & min(~select(vec4<u32>(var_1.a.a.x, var_1.a.a.x, var_1.a.a.x, var_1.a.a.x), vec4<u32>(0u, 4294967295u, 0u, var_1.a.a.x), global0.x), ~(~vec4<u32>(u_input.a, var_1.a.a.x, 1u, var_1.a.a.x))));
    let var_3 = _wgslsmith_div_vec4_f32(vec4<f32>(-725f, _wgslsmith_f_op_f32(select(var_0.x, 397f, false)), _wgslsmith_f_op_f32(f32(-1f) * -1951f), 393f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(-659f, 501f)), _wgslsmith_div_f32(169f, -324f), 1865f, var_0.x)));
    let var_4 = vec3<i32>(-14167i, ~select(-39400i, var_1.a.b, global0.x), ~_wgslsmith_sub_i32(21801i, var_1.b.x));
    return vec3<bool>(func_3(var_1, Struct_4(Struct_1(~vec3<u32>(u_input.a, var_1.a.a.x, var_1.a.a.x), ~var_4.x, _wgslsmith_div_f32(-982f, -1235f))), -firstLeadingBit(var_4.x) == var_4.x), any(vec2<bool>(!global0.x, all(!vec4<bool>(false, global0.x, global0.x, true)))), any(!select(vec4<bool>(true, false, true, false), vec4<bool>(global0.x, global0.x, true, false), global0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !select(!vec3<bool>(true, global0.x, u_input.a >= 0u), select(!vec3<bool>(global0.x, global0.x, true), select(select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(global0.x, global0.x, false), global0.x), vec3<bool>(global0.x, global0.x, true), !global0.x), vec3<bool>(all(vec2<bool>(global0.x, false)), global0.x & false, true)), select(func_1(), select(select(vec3<bool>(false, false, true), vec3<bool>(false, global0.x, true), false), vec3<bool>(global0.x, global0.x, true), true), !(global0.x | true)));
    global1 = u_input.a;
    global1 = _wgslsmith_add_u32(15026u, 1u);
    let var_0 = ~72187u;
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-453f, -1287f))))));
    let var_2 = vec2<bool>(global0.x, 323f > _wgslsmith_f_op_f32(var_1.a.x + _wgslsmith_f_op_f32(abs(1f))));
    let var_3 = true;
    global1 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_add_vec3_u32(abs(vec3<u32>(4294967295u, 38349u, 0u)), ~vec3<u32>(var_0, var_0, 5389u)), vec3<u32>(u_input.a, 4294967295u, ~1u), any(vec3<bool>(var_3, global0.x, var_2.x))) >> (~reverseBits(reverseBits(vec3<u32>(var_0, var_0, u_input.a))) % vec3<u32>(32u)), ~countOneBits(-_wgslsmith_add_vec3_i32(vec3<i32>(-19736i, 20109i, -7054i), vec3<i32>(36482i, 16245i, 6848i))));
}

