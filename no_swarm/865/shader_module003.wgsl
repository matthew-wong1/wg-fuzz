struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: i32,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: vec2<i32>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 18>;

var<private> global1: array<u32, 6>;

var<private> global2: array<vec3<i32>, 10> = array<vec3<i32>, 10>(vec3<i32>(17621i, -7471i, 1i), vec3<i32>(1i, -53069i, 8464i), vec3<i32>(-32926i, -16713i, 0i), vec3<i32>(-36712i, 34270i, 1i), vec3<i32>(1i, 0i, -18314i), vec3<i32>(2147483647i, 0i, -9725i), vec3<i32>(0i, 1i, -24870i), vec3<i32>(0i, 27213i, 50824i), vec3<i32>(27337i, 1i, -1i), vec3<i32>(10186i, -15013i, 31710i));

var<private> global3: Struct_2;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: i32, arg_3: bool) -> bool {
    var var_0 = vec2<bool>(true, !any(select(vec4<bool>(false, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 6u)], 6u)], 18u)], false, arg_3), vec4<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 6u)], 18u)], true, false, arg_3), global0[_wgslsmith_index_u32(4294967295u, 18u)])) != true);
    global2 = array<vec3<i32>, 10>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(764f, arg_0.a.x) + 252f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(global3.a.x)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(arg_0.a.x, 875f))))))));
    var_0 = vec2<bool>(true, false);
    var var_2 = global3.a.xz;
    return false;
}

fn func_2(arg_0: vec3<f32>, arg_1: bool, arg_2: vec4<i32>) -> Struct_3 {
    var var_0 = select(~reverseBits(37590i), _wgslsmith_dot_vec2_i32(select(vec2<i32>(u_input.c.x, countOneBits(u_input.c.x)), vec2<i32>(abs(-23761i), 1i ^ arg_2.x), false), vec2<i32>(max(_wgslsmith_mult_i32(arg_2.x, -35010i), -2288i), u_input.c.x)), global0[_wgslsmith_index_u32(~u_input.e, 18u)]);
    return Struct_3(select(vec3<bool>(true, func_3(Struct_2(vec3<f32>(global3.a.x, global3.a.x, global3.a.x)), arg_2.x, arg_2.x, all(vec4<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.e, 6u)], 18u)], global0[_wgslsmith_index_u32(4294967295u, 18u)], true, false))), true), select(!select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 18u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 6u)], 18u)], arg_1), vec3<bool>(arg_1, false, arg_1), vec3<bool>(false, true, global0[_wgslsmith_index_u32(u_input.b.x, 18u)])), vec3<bool>(true, true, true), vec3<bool>(false, u_input.a >= global1[_wgslsmith_index_u32(28236u, 6u)], false)), arg_1), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.c, _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_2.x, u_input.d.x, -2147483647i, -1i), vec4<i32>(arg_2.x, u_input.d.x, arg_2.x, arg_2.x), _wgslsmith_div_vec4_i32(arg_2, arg_2))), abs(arg_2)), Struct_1(arg_2.yw, global3.a.xx));
}

fn func_4(arg_0: Struct_4, arg_1: f32, arg_2: vec3<f32>, arg_3: u32) -> Struct_2 {
    let var_0 = vec4<u32>(17404u, arg_3, ~56026u, 0u);
    let var_1 = 1u;
    let var_2 = Struct_3(func_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2) - _wgslsmith_f_op_vec3_f32(-global3.a)), arg_2), true, min(-(~vec4<i32>(-14590i, arg_0.a.c.a.x, arg_0.b, u_input.d.x)), vec4<i32>(~0i, -20562i, -41040i, _wgslsmith_sub_i32(26757i, 2147483647i)))).a, countOneBits(_wgslsmith_add_i32(func_2(vec3<f32>(arg_0.a.c.b.x, 1282f, arg_2.x), true, -vec4<i32>(1i, u_input.d.x, arg_0.a.c.a.x, 0i)).b, _wgslsmith_clamp_i32(u_input.c.x, 2147483647i, _wgslsmith_mod_i32(11695i, 2147483647i)))), arg_0.a.c);
    var var_3 = var_2.a.yz;
    var_3 = arg_0.a.a.zx;
    return Struct_2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(319f, arg_0.a.c.b.x, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_2.c.b.x, -788f), _wgslsmith_f_op_f32(-var_2.c.b.x), var_2.a.x))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(arg_0.a.c.b.x * global3.a.x), _wgslsmith_div_f32(344f, arg_1), var_2.c.b.x), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2004f, arg_1, arg_0.a.c.b.x)), global3.a, select(var_2.a.x, false, false))))))));
}

fn func_1(arg_0: vec3<i32>) -> Struct_5 {
    var var_0 = func_4(Struct_4(func_2(global3.a, 946f < global3.a.x, u_input.c), arg_0.x, _wgslsmith_add_vec2_i32(vec2<i32>(abs(u_input.c.x), _wgslsmith_sub_i32(1i, -13609i)), ~(~u_input.d))), global3.a.x, _wgslsmith_f_op_vec3_f32(-global3.a), ~global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(22573u, 6u)], 6u)]), u_input.a), 6u)]);
    let var_1 = !global0[_wgslsmith_index_u32(~(~abs(abs(14146u))), 18u)];
    var var_2 = -(-38094i ^ _wgslsmith_mod_i32(arg_0.x, _wgslsmith_clamp_i32(arg_0.x, i32(-1i) * -1i, arg_0.x)));
    var var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(func_2(var_0.a, var_1, u_input.c).c.b.x, -662f, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 6u)] << (0u % 32u), 18u)]))), _wgslsmith_f_op_f32(floor(var_0.a.x)))));
    var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(var_0.a, vec3<f32>(global3.a.x, global3.a.x, global3.a.x)))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global3.a.x, global3.a.x, -526f))))))));
    return Struct_5(global3.a.xz, -135f);
}

fn func_5(arg_0: Struct_5, arg_1: f32) -> u32 {
    global3 = func_4(Struct_4(Struct_3(vec3<bool>(true, true, global0[_wgslsmith_index_u32(abs(u_input.b.x), 18u)]), u_input.d.x, Struct_1(u_input.d, _wgslsmith_f_op_vec2_f32(vec2<f32>(-651f, arg_1) + arg_0.a))), _wgslsmith_sub_i32(~(~(-309i)), 1i), u_input.d), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-696f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -429f)), global0[_wgslsmith_index_u32(68752u, 18u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -104f) + _wgslsmith_f_op_f32(arg_1 * arg_1)), arg_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.x)))), _wgslsmith_clamp_u32(u_input.b.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 4294967295u, global1[_wgslsmith_index_u32(0u, 6u)], 1u), firstTrailingBit(vec4<u32>(global1[_wgslsmith_index_u32(u_input.e, 6u)], 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 6u)], 6u)], 6u)], u_input.b.x))), 2108u), _wgslsmith_sub_u32(~52735u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(u_input.b.x, 6u)], 48858u), u_input.b.yy), _wgslsmith_mult_u32(11433u, _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(114143u, 6u)], 7601u)))));
    var var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(arg_0.a.x + 1581f), _wgslsmith_f_op_f32(-arg_0.b), global3.a.x));
    var var_1 = func_2(var_0.a, true, vec4<i32>(u_input.d.x, 5584i, 1i, _wgslsmith_dot_vec3_i32(~global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 6u)], 10u)], ~vec3<i32>(u_input.c.x, u_input.d.x, -14873i))) >> (vec4<u32>(~(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 6u)], 6u)]), global1[_wgslsmith_index_u32(~(~u_input.e), 6u)], _wgslsmith_clamp_u32(1u, global1[_wgslsmith_index_u32(46517u, 6u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 6u)], 6u)], 6u)], 6u)]) << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 1u, 18738u, global1[_wgslsmith_index_u32(1u, 6u)]), vec4<u32>(0u, 0u, u_input.b.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 6u)], 6u)], 6u)])) % 32u), global1[_wgslsmith_index_u32(~1u, 6u)]) % vec4<u32>(32u)));
    var var_2 = func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3.a) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(global3.a, var_0.a, false)), global3.a, select(var_1.a, vec3<bool>(false, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 6u)], 18u)], var_1.a.x), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 18u)], true, var_1.a.x)))))), false, u_input.c & -vec4<i32>(_wgslsmith_clamp_i32(u_input.d.x, 2147483647i, -36230i), 0i, _wgslsmith_div_i32(-38523i, -1i), u_input.d.x));
    let var_3 = func_4(Struct_4(Struct_3(select(!var_1.a, select(var_1.a, vec3<bool>(true, true, true), var_1.a.x), var_2.a.x || var_2.a.x), _wgslsmith_mod_i32(var_1.b, -2147483647i) << (~35587u % 32u), var_1.c), min(-abs(u_input.c.x), -15765i), _wgslsmith_sub_vec2_i32(countOneBits(_wgslsmith_add_vec2_i32(var_1.c.a, vec2<i32>(u_input.c.x, var_1.b))), vec2<i32>(var_2.c.a.x, -2882i))), arg_0.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-937f, 203f, global3.a.x), global3.a, vec3<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 6u)], 6u)], 18u)], false, true))), var_0.a))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-var_0.a)))), global1[_wgslsmith_index_u32(u_input.b.x, 6u)]);
    return 33131u;
}

fn func_6(arg_0: bool, arg_1: Struct_2) -> Struct_2 {
    let var_0 = global0[_wgslsmith_index_u32(~abs(u_input.a), 18u)];
    global2 = array<vec3<i32>, 10>();
    var var_1 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(arg_1.a.x + global3.a.x), global3.a.x, -990f, -233f)));
    var var_2 = _wgslsmith_f_op_vec3_f32(exp2(global3.a));
    let var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(-365f, global3.a.x))));
    return func_4(Struct_4(Struct_3(!select(vec3<bool>(false, false, false), vec3<bool>(arg_0, true, arg_0), false), ~(u_input.c.x ^ u_input.d.x), Struct_1(~u_input.d, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-489f, var_2.x))))), ~1i, u_input.d), global3.a.x, _wgslsmith_f_op_vec3_f32(-var_1.wzz), (25083u >> (1u % 32u)) & _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.b, _wgslsmith_mult_vec3_u32(u_input.b, vec3<u32>(u_input.e, u_input.a, global1[_wgslsmith_index_u32(8739u, 6u)]))), vec3<u32>(global1[_wgslsmith_index_u32(abs(u_input.e), 6u)], 30262u, _wgslsmith_clamp_u32(11267u, 13033u, u_input.e))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.xx & (_wgslsmith_mult_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b.x, global1[_wgslsmith_index_u32(23024u, 6u)]), u_input.b.xz, vec2<u32>(u_input.e, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 6u)], 6u)])), ~firstLeadingBit(u_input.b.xy)) << (~(vec2<u32>(global1[_wgslsmith_index_u32(u_input.e, 6u)], 1u) << ((u_input.b.xx << (u_input.b.zz % vec2<u32>(32u))) % vec2<u32>(32u))) % vec2<u32>(32u)));
    global3 = func_6(!global0[_wgslsmith_index_u32(func_5(func_1(global2[_wgslsmith_index_u32(min(4294967295u, 8430u), 10u)]), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global3.a.x + global3.a.x)))), 18u)], func_4(Struct_4(Struct_3(select(vec3<bool>(true, false, global0[_wgslsmith_index_u32(u_input.e, 18u)]), vec3<bool>(global0[_wgslsmith_index_u32(64874u, 18u)], false, true), false), firstTrailingBit(u_input.c.x), func_2(vec3<f32>(global3.a.x, global3.a.x, -400f), global0[_wgslsmith_index_u32(33961u, 18u)], vec4<i32>(u_input.d.x, u_input.c.x, u_input.d.x, u_input.c.x)).c), -1i, ~(vec2<i32>(u_input.c.x, u_input.d.x) ^ vec2<i32>(u_input.c.x, 31984i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-719f - _wgslsmith_f_op_f32(543f + global3.a.x)) + func_4(Struct_4(Struct_3(vec3<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 6u)], 18u)], global0[_wgslsmith_index_u32(0u, 18u)], global0[_wgslsmith_index_u32(4294967295u, 18u)]), u_input.c.x, Struct_1(vec2<i32>(u_input.c.x, -9836i), global3.a.yy)), u_input.c.x, vec2<i32>(0i, u_input.d.x)), _wgslsmith_f_op_f32(exp2(global3.a.x)), _wgslsmith_f_op_vec3_f32(ceil(global3.a)), _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 6u)], 6u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(23812u, 6u)], 6u)])).a.x), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(717f, -551f, global0[_wgslsmith_index_u32(var_0.x, 18u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.x)), _wgslsmith_f_op_f32(max(global3.a.x, global3.a.x))), ~1u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(firstTrailingBit(u_input.d.x), u_input.d.x));
}

