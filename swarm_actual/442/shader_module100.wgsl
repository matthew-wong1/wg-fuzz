struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec4<u32>,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: u32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, false);

var<private> global1: array<Struct_2, 9>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: u32) -> i32 {
    var var_0 = u_input.c;
    let var_1 = Struct_1(vec4<bool>(global0.x, arg_1.b.b, global0.x, !(!(!arg_1.b.a.x))), true || !select(arg_1.d.x && false, false, global0.x), arg_1.b.c, -82125i, 1000f);
    let var_2 = 67607i > ~arg_1.b.d;
    var var_3 = Struct_2(~countOneBits(1u), var_1, arg_2, !var_1.a);
    let var_4 = select(vec3<bool>(arg_1.d.x, var_3.d.x, var_3.b.b), !arg_1.b.a.zxz, vec3<bool>(all(vec2<bool>(true, false)), true, _wgslsmith_f_op_f32(select(1906f, _wgslsmith_f_op_f32(406f + 174f), !arg_1.d.x)) > _wgslsmith_div_f32(1101f, _wgslsmith_f_op_f32(-var_1.e))));
    return 2147483647i;
}

fn func_2(arg_0: vec4<i32>, arg_1: i32, arg_2: vec4<u32>) -> Struct_2 {
    var var_0 = arg_0 & arg_0;
    let var_1 = -150f;
    global1 = array<Struct_2, 9>();
    var_0 = max(vec4<i32>(reverseBits(func_3(var_1, Struct_2(0u, Struct_1(vec4<bool>(global0.x, global0.x, global0.x, global0.x), false, vec4<u32>(1u, arg_2.x, arg_2.x, 60328u), 31768i, -937f), 1u, vec4<bool>(true, global0.x, global0.x, global0.x)), arg_2.x & arg_2.x)), (-16597i >> (arg_2.x % 32u)) ^ _wgslsmith_mult_i32(1i, abs(12990i)), ~(var_0.x | 23600i) ^ reverseBits(arg_0.x), -(firstTrailingBit(var_0.x) << (_wgslsmith_div_u32(1u, 39886u) % 32u))), arg_0);
    let var_2 = global1[_wgslsmith_index_u32(~max(max(arg_2.x, ~1u), 4979u) & countOneBits(1u), 9u)];
    return Struct_2(min(arg_2.x ^ var_2.a, ~(13386u | _wgslsmith_mult_u32(var_2.c, arg_2.x))), var_2.b, 4294967295u, select(select(!(!vec4<bool>(global0.x, false, var_2.d.x, global0.x)), vec4<bool>(true, var_2.d.x | false, global0.x | global0.x, true), global0.x & var_2.b.b), var_2.d, vec4<bool>(all(vec4<bool>(global0.x, true, true, global0.x)) && false, !var_2.d.x, any(!vec3<bool>(global0.x, global0.x, var_2.d.x)), (-12331i & u_input.b) > 2147483647i)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> u32 {
    let var_0 = true;
    return _wgslsmith_add_u32(arg_0.a, ~(~_wgslsmith_dot_vec4_u32(arg_1.b.c << (vec4<u32>(4163u, arg_1.c, arg_0.a, arg_1.a) % vec4<u32>(32u)), ~vec4<u32>(0u, arg_1.c, arg_1.a, 39075u))));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: bool) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1015f), -1000f, arg_2.e), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(578f, -436f, arg_2.e), vec3<f32>(arg_0.b.e, arg_2.e, arg_2.e))))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -877f), 853f, 183f)));
    global0 = arg_0.d.zzx;
    let var_1 = func_2(-vec4<i32>(arg_2.d, arg_2.d, ~arg_2.d, u_input.b ^ select(11772i, arg_0.b.d, true)), i32(-1i) * -1i, vec4<u32>(0u, _wgslsmith_sub_u32(arg_0.c, 1u), arg_0.b.c.x & 54929u, ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.c, 1u), arg_2.c.xz))));
    let var_2 = !select(!select(arg_0.b.a, func_2(vec4<i32>(arg_0.b.d, -30474i, -17675i, 1i), 2026i, vec4<u32>(0u, var_1.a, 11755u, arg_2.c.x)).d, func_2(vec4<i32>(arg_2.d, 4821i, 54299i, u_input.a), 0i, var_1.b.c).d), select(!vec4<bool>(false, true, false, global0.x), func_2(countOneBits(vec4<i32>(-1i, arg_0.b.d, arg_2.d, var_1.b.d)), arg_2.d, arg_2.c >> (arg_0.b.c % vec4<u32>(32u))).b.a, any(vec4<bool>(true, true, true, true))), !(~2147483647i < (-3433i >> (arg_0.a % 32u))));
    global1 = array<Struct_2, 9>();
    return _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32((~vec2<u32>(arg_2.c.x, arg_2.c.x) << (~var_1.b.c.xy % vec2<u32>(32u))) << (~arg_2.c.wz % vec2<u32>(32u)), abs(vec2<u32>(~arg_2.c.x, 30682u))), var_1.b.c.x);
}

fn func_1() -> u32 {
    global1 = array<Struct_2, 9>();
    global1 = array<Struct_2, 9>();
    var var_0 = global1[_wgslsmith_index_u32(func_5(global1[_wgslsmith_index_u32(func_4(Struct_2(~5539u, Struct_1(vec4<bool>(global0.x, false, true, true), global0.x, vec4<u32>(16415u, 1u, 5120u, 4294967295u), u_input.d.x, -1728f), 1u, !vec4<bool>(global0.x, global0.x, false, true)), func_2(vec4<i32>(u_input.b, 263i, u_input.b, u_input.d.x), u_input.a, vec4<u32>(5028u, 1u, 21070u, 1u))) << (~_wgslsmith_mod_u32(27414u, 15652u) % 32u), 9u)], vec3<bool>(true, !(!any(vec3<bool>(global0.x, global0.x, global0.x))), false), func_2(_wgslsmith_div_vec4_i32(~vec4<i32>(-1i, 1i, 17032i, u_input.d.x) ^ ~vec4<i32>(2147483647i, 2147483647i, u_input.c.x, u_input.b), firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, u_input.d.x, 0i, -23192i), vec4<i32>(-1i, u_input.a, u_input.c.x, 1i)))), ~u_input.c.x, vec4<u32>(1u, 1u, 1u, 1u) ^ (select(vec4<u32>(32795u, 4294967295u, 45009u, 1u), vec4<u32>(0u, 0u, 0u, 70818u), true) << (min(vec4<u32>(3036u, 4294967295u, 1u, 0u), vec4<u32>(27620u, 20043u, 10047u, 11788u)) % vec4<u32>(32u)))).b, !select(true, all(vec3<bool>(true, global0.x, global0.x)), true)), 9u)];
    let var_1 = false;
    var var_2 = -2147483647i;
    return 4294967295u;
}

fn func_6(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec2<f32>) -> vec3<bool> {
    let var_0 = ~arg_1.c;
    var var_1 = global1[_wgslsmith_index_u32(arg_1.c.x, 9u)];
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(66907u, var_1.a), 9u)];
    var var_3 = func_2(~countOneBits(vec4<i32>(-1i) * -vec4<i32>(21942i, 0i, arg_1.d, -53388i)), 17379i, ~var_0);
    let var_4 = func_2(vec4<i32>(-60915i, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, u_input.b, -2147483647i), arg_0.yyx), vec3<i32>(1i, ~(-22181i), _wgslsmith_add_i32(79564i, -13532i))), -min(-6961i, -1i << (arg_1.c.x % 32u)), var_3.b.d), _wgslsmith_div_i32(abs(var_1.b.d | -u_input.a), -func_2(_wgslsmith_add_vec4_i32(arg_0, vec4<i32>(-1i, var_2.b.d, -19988i, 2147483647i)), _wgslsmith_mult_i32(-2147483647i, 1i), ~var_1.b.c).b.d), var_2.b.c >> (var_1.b.c % vec4<u32>(32u)));
    return var_2.b.a.zzx;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(-min(vec4<i32>(_wgslsmith_clamp_i32(2147483647i, u_input.d.x, u_input.c.x), select(u_input.a, -2147483647i, true), u_input.c.x, _wgslsmith_mult_i32(-47685i, u_input.d.x)), -_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, -1i, u_input.d.x), vec4<i32>(-103911i, 0i, u_input.d.x, u_input.a))), Struct_1(select(vec4<bool>(global0.x, true, false, global0.x), select(select(vec4<bool>(global0.x, true, true, true), vec4<bool>(global0.x, false, global0.x, true), global0.x), vec4<bool>(global0.x, true, global0.x, global0.x), all(global0.xx)), all(vec3<bool>(global0.x, false, true))), true, vec4<u32>(func_1(), 4294967295u, func_1(), min(reverseBits(1859u), 1u)), 46455i, _wgslsmith_f_op_f32(620f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1519f, 1057f)) + _wgslsmith_f_op_f32(f32(-1f) * -458f)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1356f, 772f), vec2<f32>(697f, -681f), vec2<bool>(false, true)))))))));
    global0 = vec3<bool>(!(!global0.x), true, global0.x);
    global0 = func_6(reverseBits(select((vec4<i32>(-29897i, 0i, u_input.d.x, 1i) | vec4<i32>(u_input.b, u_input.b, 26018i, -4599i)) & firstTrailingBit(vec4<i32>(u_input.c.x, -1i, 2147483647i, u_input.a)), vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.d, u_input.c), u_input.d.x, -1i, _wgslsmith_clamp_i32(u_input.c.x, u_input.d.x, 58341i)), !vec4<bool>(false, true, true, global0.x))), Struct_1(func_2(_wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(23369i, 61134i, u_input.c.x, 43077i)), -vec4<i32>(-14000i, 7562i, -27193i, u_input.d.x)), 2147483647i, reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(55058u, 62689u, 1u, 0u), vec4<u32>(1u, 54460u, 4294967295u, 11369u), vec4<u32>(107989u, 0u, 80520u, 1u)))).d, true, vec4<u32>(~1u, 1306u, max(0u, 4294967295u), firstTrailingBit(func_5(global1[_wgslsmith_index_u32(6238u, 9u)], vec3<bool>(global0.x, false, false), Struct_1(vec4<bool>(global0.x, true, false, false), global0.x, vec4<u32>(36413u, 1u, 0u, 18547u), u_input.c.x, -657f), global0.x))), i32(-1i) * -15970i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-584f, 551f) - _wgslsmith_f_op_f32(-820f - 1000f)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -554f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1292f)) + _wgslsmith_f_op_f32(-1452f - 1000f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-545f, -730f) - _wgslsmith_div_f32(-1933f, -596f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-891f, 102f, 1000f, 1104f), vec4<f32>(213f, -1000f, 1499f, 2035f), false)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, 176f, -903f, 1000f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1138f, -1318f, 659f, -443f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-487f, 730f, 1734f, 463f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1398f, -886f, 1876f, -121f)))))), vec2<u32>(~31200u, select(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), 1u, false || !global0.x)));
}

