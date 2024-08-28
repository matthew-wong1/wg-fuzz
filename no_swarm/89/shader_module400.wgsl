struct Struct_1 {
    a: f32,
    b: u32,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
    c: bool,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: u32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: u32,
    c: f32,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 9>;

var<private> global1: vec3<u32>;

var<private> global2: array<u32, 9> = array<u32, 9>(4294967295u, 1u, 1u, 22221u, 1u, 6045u, 15772u, 16060u, 57329u);

var<private> global3: array<vec4<i32>, 23>;

var<private> global4: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(1000f, 29958u, false, true), Struct_1(231f, 1u, true, false), Struct_1(-777f, 4294967295u, true, true), Struct_1(141f, 4294967295u, false, false), Struct_1(790f, 15070u, false, false), Struct_1(385f, 57846u, true, true), Struct_1(449f, 43214u, true, true), Struct_1(682f, 18183u, true, true), Struct_1(560f, 31060u, true, false), Struct_1(-389f, 1u, true, true), Struct_1(-621f, 15869u, false, true), Struct_1(653f, 1u, true, false), Struct_1(-1295f, 0u, true, true), Struct_1(-688f, 1u, true, true), Struct_1(-667f, 0u, true, false), Struct_1(-1398f, 68699u, true, true), Struct_1(-630f, 4294967295u, false, false), Struct_1(-743f, 23670u, false, true), Struct_1(340f, 21460u, false, true), Struct_1(-482f, 0u, true, false), Struct_1(-664f, 1u, false, false), Struct_1(849f, 0u, false, true));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: f32, arg_1: i32) -> vec4<u32> {
    global4 = array<Struct_1, 22>();
    let var_0 = Struct_4(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), !select(vec2<bool>(true, true), vec2<bool>(false, false), true), true), ~global1.x, arg_0, -496f, countOneBits(_wgslsmith_add_i32(arg_1, _wgslsmith_sub_i32(-2147483647i, -37408i))));
    var var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_f32(-var_0.c);
    let var_3 = Struct_3(var_0.a.x, Struct_1(-336f, select(abs(14787u), 1u, !var_0.a.x), (true || select(var_0.a.x, true, false)) && var_0.a.x, false), ~global1.x);
    return vec4<u32>(select(1u, 38625u, select(true, true, var_0.a.x)), 0u, ~(~u_input.a), _wgslsmith_mod_u32(1u, reverseBits(~(~var_3.b.b))));
}

fn func_2(arg_0: vec4<i32>) -> f32 {
    var var_0 = firstTrailingBit(global1.zz);
    global0 = array<u32, 9>();
    global2 = array<u32, 9>();
    var var_1 = _wgslsmith_dot_vec4_u32(firstLeadingBit(~countOneBits(func_3(1412f, arg_0.x))), select(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 11503u, 9327u, global0[_wgslsmith_index_u32(u_input.a, 9u)]) << (vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(90538u, 9u)], global1.x, global1.x) % vec4<u32>(32u)), vec4<u32>(37593u, u_input.a, global0[_wgslsmith_index_u32(33580u, 9u)], 14433u), ~vec4<u32>(34236u, var_0.x, global1.x, 562u)), vec4<u32>(global1.x, ~0u, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], _wgslsmith_dot_vec2_u32(global1.yx, global1.yz)), vec4<bool>(true, true, true, true)) >> (_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(43992u, 0u, 0u, 100837u) << (vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.x, 9u)], 9u)], 45303u, global2[_wgslsmith_index_u32(20451u, 9u)], 1u) % vec4<u32>(32u)), ~vec4<u32>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 9u)], 9u)], 9u)], 88692u, u_input.a, global1.x)), ~(~vec4<u32>(u_input.a, 1u, 32385u, 4294967295u)), ~vec4<u32>(u_input.a, 1u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 9u)], 9u)])) % vec4<u32>(32u)));
    let var_2 = Struct_3(true || !(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.x, 9u)], 9u)] > reverseBits(48402u)), Struct_1(1f, _wgslsmith_mult_u32(select(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1.x, 9u)], 9u)]), vec3<u32>(var_0.x, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(17310u, 9u)], 9u)], 0u)), 28482u, true), ~global0[_wgslsmith_index_u32(var_0.x, 9u)]), (true && all(vec4<bool>(false, false, true, false))) || (~1u >= u_input.a), true), ~1u);
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(625f))));
}

fn func_1() -> vec3<i32> {
    global0 = array<u32, 9>();
    var var_0 = Struct_3(-1839f > _wgslsmith_f_op_f32(func_2(~vec4<i32>(8568i, 2147483647i, -1i, -34305i))), Struct_1(_wgslsmith_f_op_f32(func_2(_wgslsmith_div_vec4_i32(global3[_wgslsmith_index_u32(abs(global1.x), 23u)], ~global3[_wgslsmith_index_u32(84040u, 23u)]))), func_3(-1819f, _wgslsmith_dot_vec2_i32(vec2<i32>(27102i, 2147483647i), vec2<i32>(2147483647i, -1i))).x | _wgslsmith_dot_vec3_u32(vec3<u32>(77799u, 0u, global2[_wgslsmith_index_u32(10141u, 9u)]), vec3<u32>(global2[_wgslsmith_index_u32(1u, 9u)], 42656u, 1u)), true, true), select(~(~1u), ~global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~(~6808u), 9u)], 9u)], 9u)], 9u)], true));
    global3 = array<vec4<i32>, 23>();
    global4 = array<Struct_1, 22>();
    let var_1 = true;
    return -vec3<i32>(min(2497i, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 9u)], 23u)], vec4<i32>(-17671i, 0i, -37161i, -50233i), global3[_wgslsmith_index_u32(u_input.a, 23u)]), vec4<i32>(-2147483647i, 7291i, 1i, 1i))), 37752i >> (0u % 32u), -2147483647i);
}

fn func_4(arg_0: vec3<i32>) -> f32 {
    var var_0 = vec4<i32>(arg_0.x, -arg_0.x ^ _wgslsmith_dot_vec4_i32(firstTrailingBit(-vec4<i32>(1i, arg_0.x, -2147483647i, arg_0.x)), global3[_wgslsmith_index_u32(global1.x, 23u)]), _wgslsmith_mod_i32(-1i, countOneBits(58912i)), ~_wgslsmith_add_i32(-_wgslsmith_div_i32(-29388i, -24406i), arg_0.x));
    let var_1 = true;
    let var_2 = vec3<u32>(_wgslsmith_dot_vec3_u32(~((vec3<u32>(4294967295u, 0u, 1096u) & vec3<u32>(global0[_wgslsmith_index_u32(1u, 9u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1.x, 9u)], 9u)], 70795u)) << (~vec3<u32>(u_input.a, u_input.a, 4294967295u) % vec3<u32>(32u))), ~vec3<u32>(_wgslsmith_mult_u32(2507u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 9u)], 9u)]), u_input.a, abs(65200u))), ~_wgslsmith_sub_u32(_wgslsmith_add_u32(~global0[_wgslsmith_index_u32(u_input.a, 9u)], ~global0[_wgslsmith_index_u32(0u, 9u)]), ~(~41305u)), global1.x);
    var var_3 = 1277f;
    var var_4 = Struct_3(~0i < arg_0.x, global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_2.x, 9u)], 22u)], ~global1.x);
    return 164f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(!(!(global1.x < ~47676u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_4(func_1())), 1495f, _wgslsmith_f_op_f32(f32(-1f) * -570f), -1077f)), _wgslsmith_f_op_f32(func_4(vec3<i32>(_wgslsmith_sub_i32(1i, 58030i), ~(-1i), 18420i))) != 2219f);
    global3 = array<vec4<i32>, 23>();
    let var_1 = vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(min(var_0.b.x, _wgslsmith_f_op_f32(ceil(559f)))), var_0.b.x, 129f);
    let var_2 = abs(~(~(vec3<u32>(1u, global0[_wgslsmith_index_u32(8455u, 9u)], global1.x) ^ vec3<u32>(u_input.a, global1.x, global1.x)) | vec3<u32>(23091u, 1u, global0[_wgslsmith_index_u32(~4294967295u, 9u)])));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_f_op_f32(182f * _wgslsmith_f_op_f32(var_1.x - var_1.x))), -578f), _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(global3[_wgslsmith_index_u32(33066u, 23u)], global3[_wgslsmith_index_u32(0u, 23u)]), vec4<i32>(1i, 0i, -52361i, 1i)), vec4<i32>(~29216i, 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(10335i, -5926i, -1i), vec3<i32>(-25362i, -1i, -2147483647i)), i32(-1i) * -68618i)), vec4<i32>(firstLeadingBit(2147483647i) << (0u % 32u), -2147483647i, firstTrailingBit(1i), -_wgslsmith_clamp_i32(-7479i, -1i, 0i))), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 0i >> (1u % 32u), ~1i, ~(i32(-1i) * -54151i)), global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~29728u, select(u_input.a, 81634u, var_0.a)), 9u)], 1u), 9u)], 23u)]), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1266f, var_1.x, var_1.x, 771f), vec4<f32>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x), any(vec3<bool>(false, false, true)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(var_1))))))));
}

