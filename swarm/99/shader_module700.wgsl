struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 21>;

var<private> global1: i32 = -39045i;

var<private> global2: vec3<u32> = vec3<u32>(4294967295u, 4294967295u, 4294967295u);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec3<f32>) -> vec3<u32> {
    global2 = max(~u_input.c.wwx, u_input.c.wyy);
    let var_0 = 1f;
    var var_1 = !vec3<bool>(true, true, !any(vec2<bool>(true, true)));
    global0 = array<f32, 21>();
    global0 = array<f32, 21>();
    return ~max(countOneBits(countOneBits(~u_input.c.xxz)), vec3<u32>(49515u, 8575u, 1u));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: Struct_2) -> Struct_3 {
    global2 = reverseBits(func_3(_wgslsmith_f_op_vec3_f32(-arg_0.zxz)));
    let var_0 = arg_0.wyy;
    let var_1 = select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, all(vec2<bool>(false, false)), arg_1.b.x == -40302i)), select(select(vec3<bool>(all(vec3<bool>(true, true, true)), true, arg_0.x >= var_0.x), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true), select(false, false, true)), !select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true))), vec3<bool>(true, true, any(vec4<bool>(true, true, true, true))), ~(~37055u) == (1u << (select(u_input.c.x, 0u, false) % 32u))), select(select(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), true), vec3<bool>(all(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false))), true, arg_1.c < global2.x), vec3<bool>(true, true, true)));
    let var_2 = !vec2<bool>(var_1.x != var_1.x, false);
    let var_3 = abs(u_input.d.zw);
    return Struct_3(Struct_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-746f - var_0.x)), max(max(arg_2.b.x, arg_1.b.x), countOneBits(u_input.d.x)) & ~_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.b.x, var_3.x), arg_1.b.zw), func_3(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-790f, arg_0.x, -1208f)))).yx));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec4_i32(u_input.d, (u_input.d ^ ((u_input.d ^ vec4<i32>(u_input.b, 6572i, u_input.a, arg_0.a.c)) & vec4<i32>(u_input.b, u_input.d.x, arg_0.a.c, arg_0.a.c))) | u_input.d);
    let var_1 = ~(func_2(vec4<f32>(_wgslsmith_f_op_f32(arg_0.a.b + arg_0.a.b), _wgslsmith_f_op_f32(-770f - arg_0.a.b), -1017f, -789f), Struct_2(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, arg_1.x, 1u, u_input.c.x), arg_1), ~vec4<i32>(10923i, arg_0.a.c, -1i, -2147483647i), _wgslsmith_clamp_u32(arg_1.x, 4294967295u, arg_0.a.d.x)), Struct_2(~vec4<u32>(arg_1.x, 4294967295u, arg_0.a.d.x, 29520u), _wgslsmith_mult_vec4_i32(u_input.d, vec4<i32>(11804i, u_input.d.x, arg_0.a.c, arg_0.a.c)), u_input.c.x)).a.d.x >> (_wgslsmith_sub_u32(u_input.c.x, arg_1.x) % 32u));
    var_0 = _wgslsmith_div_i32(-1i, ~reverseBits(reverseBits(u_input.a) | 13527i));
    let var_2 = vec3<i32>(-36415i, _wgslsmith_div_i32(u_input.b, -(~2147483647i)), u_input.d.x);
    global2 = u_input.c.wyx;
    return arg_0.a;
}

fn func_5(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = vec2<i32>(firstLeadingBit(arg_0.c), _wgslsmith_dot_vec2_i32(u_input.d.xx, _wgslsmith_add_vec2_i32(reverseBits(min(u_input.d.xz, vec2<i32>(-23256i, arg_0.c))), u_input.d.xy)));
    let var_1 = arg_0.a;
    let var_2 = vec4<i32>(-1i) * -vec4<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(var_0.x, var_0.x), _wgslsmith_sub_i32(var_0.x, 0i)), arg_0.c << (arg_0.d.x % 32u), select(2147483647i, -14865i, all(vec4<bool>(var_1, true, arg_0.a, false))), -_wgslsmith_sub_i32(0i, arg_0.c));
    let var_3 = func_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, -1200f, global0[_wgslsmith_index_u32(1u, 21u)], global0[_wgslsmith_index_u32(101998u, 21u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(785f, global0[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(4294967295u, 21u)], global0[_wgslsmith_index_u32(41443u, 21u)])), false))))), Struct_2(u_input.c, ~var_2, u_input.c.x), Struct_2(vec4<u32>(_wgslsmith_mult_u32(65455u, arg_0.d.x), _wgslsmith_sub_u32(4294967295u, global2.x), ~u_input.c.x, arg_0.d.x) | ~vec4<u32>(1u, 15674u, 24968u, 1u), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.x, -62634i, arg_0.c, 55904i), vec4<i32>(44618i, 11855i, -2147483647i, var_0.x)) >> (global2.x % 32u), 19784i, arg_0.c, _wgslsmith_add_i32(-2605i, -1i)), abs(0u))).a;
    global2 = vec3<u32>(~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(1u, 9809u, global2.x, global2.x), firstLeadingBit(vec4<u32>(16760u, 0u, 0u, 42958u))), ~u_input.c), min(~9400u, var_3.d.x), _wgslsmith_dot_vec4_u32(vec4<u32>(max(1u, countOneBits(0u)), arg_0.d.x, ~0u, 10258u), ~(~vec4<u32>(var_3.d.x, 4294967295u, global2.x, 0u))));
    return select(vec3<bool>(var_3.a, select(var_3.a, true | any(vec4<bool>(true, false, arg_0.a, true)), global2.x <= arg_0.d.x), arg_0.a), !vec3<bool>(_wgslsmith_f_op_f32(floor(arg_0.b)) >= -465f, true, var_1), u_input.b >= var_2.x);
}

fn func_6(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_3) -> vec4<i32> {
    global2 = vec3<u32>(~max(_wgslsmith_div_u32(func_2(vec4<f32>(351f, global0[_wgslsmith_index_u32(3114u, 21u)], global0[_wgslsmith_index_u32(global2.x, 21u)], 1195f), Struct_2(vec4<u32>(51301u, arg_2.a.d.x, 4294967295u, u_input.c.x), u_input.d, 1u), Struct_2(u_input.c, u_input.d, 1u)).a.d.x, 6390u), 85458u), _wgslsmith_add_u32(~_wgslsmith_mult_u32(~arg_1.d.x, ~1u), abs(15228u)), select(select(~_wgslsmith_clamp_u32(29986u, 26895u, global2.x), ~u_input.c.x, true), min(~(~4294967295u), ~_wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, u_input.c.x)), select(arg_0.x, select(4294967295u <= arg_1.d.x, arg_0.x, true), select(arg_0.x, true, u_input.b == arg_2.a.c))));
    let var_0 = true && select(any(select(vec4<bool>(true, true, arg_0.x, arg_0.x), !vec4<bool>(false, arg_0.x, arg_2.a.a, arg_1.a), arg_2.a.a)), func_4(arg_2, vec4<u32>(arg_1.d.x, 45364u, 32932u, arg_2.a.d.x)).a | true, arg_0.x);
    global1 = arg_2.a.c;
    global2 = vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.c, _wgslsmith_clamp_vec4_u32(~vec4<u32>(arg_1.d.x, global2.x, u_input.c.x, global2.x) | u_input.c, ~_wgslsmith_clamp_vec4_u32(vec4<u32>(96550u, 41303u, 21180u, 98986u), vec4<u32>(73083u, 1u, arg_2.a.d.x, arg_1.d.x), u_input.c), select(u_input.c, u_input.c ^ vec4<u32>(arg_1.d.x, 47696u, u_input.c.x, arg_2.a.d.x), true))), ~_wgslsmith_mult_u32(arg_2.a.d.x, 1u), abs(arg_1.d.x));
    global2 = vec3<u32>(global2.x, ~_wgslsmith_add_u32(arg_1.d.x, global2.x), ~global2.x);
    return vec4<i32>(-(-u_input.b | _wgslsmith_mult_i32(arg_2.a.c, 0i)) ^ _wgslsmith_div_i32(reverseBits(-arg_1.c), -6637i), _wgslsmith_mod_i32(~(-1i), -2147483647i), abs(-6223i), -arg_2.a.c);
}

fn func_1(arg_0: vec3<f32>) -> u32 {
    var var_0 = func_6(select(vec3<bool>(!select(false, false, false), 1886f >= _wgslsmith_f_op_f32(exp2(arg_0.x)), true), func_5(func_4(func_2(vec4<f32>(arg_0.x, arg_0.x, -1121f, -243f), Struct_2(u_input.c, u_input.d, global2.x), Struct_2(vec4<u32>(u_input.c.x, global2.x, global2.x, 6876u), u_input.d, 1u)), ~vec4<u32>(1u, global2.x, global2.x, 11616u))), vec3<bool>(true, true, true)), func_2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(822f, 1718f, -1265f, arg_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1311f, global0[_wgslsmith_index_u32(17067u, 21u)], arg_0.x, arg_0.x)))))), Struct_2(~u_input.c, vec4<i32>(~u_input.d.x, ~1i, u_input.d.x, _wgslsmith_mult_i32(u_input.b, u_input.d.x)), ~0u), Struct_2(vec4<u32>(min(4294967295u, 1u), global2.x, 12734u, 100268u), vec4<i32>(1i, 1i, reverseBits(-12425i), -32464i), 4294967295u)).a, Struct_3(func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0[_wgslsmith_index_u32(89672u, 21u)], 1603f, -351f, 592f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(0u, 21u)], -195f, global0[_wgslsmith_index_u32(u_input.c.x, 21u)], -291f))), Struct_2(u_input.c, ~u_input.d, select(39676u, 115879u, false)), Struct_2(u_input.c, vec4<i32>(u_input.d.x, 1i, -1i, -2147483647i), ~global2.x)).a));
    global0 = array<f32, 21>();
    let var_1 = func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(1u, u_input.c.x), abs(1u)), 21u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * _wgslsmith_f_op_f32(484f * global0[_wgslsmith_index_u32(4294967295u, 21u)])), arg_0.x, arg_0.x) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(699f, 2528f, global0[_wgslsmith_index_u32(1u, 21u)], arg_0.x) + vec4<f32>(-1000f, arg_0.x, arg_0.x, global0[_wgslsmith_index_u32(global2.x, 21u)]))), vec4<f32>(func_2(vec4<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 21u)], arg_0.x, 393f, global0[_wgslsmith_index_u32(0u, 21u)]), Struct_2(vec4<u32>(0u, global2.x, u_input.c.x, global2.x), u_input.d, global2.x), Struct_2(u_input.c, u_input.d, u_input.c.x)).a.b, _wgslsmith_f_op_f32(select(-406f, global0[_wgslsmith_index_u32(u_input.c.x, 21u)], false)), arg_0.x, global0[_wgslsmith_index_u32(42867u, 21u)]), !select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), true)))), Struct_2(vec4<u32>(u_input.c.x, ~global2.x, u_input.c.x, countOneBits(1u) | global2.x), vec4<i32>(u_input.b, var_0.x, var_0.x & 1955i, u_input.b), ~global2.x), Struct_2(_wgslsmith_mult_vec4_u32(vec4<u32>(~u_input.c.x, 4294967295u, global2.x, ~49982u), _wgslsmith_clamp_vec4_u32(u_input.c, max(u_input.c, vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 21184u)), u_input.c)), -(vec4<i32>(-1i) * -u_input.d), firstLeadingBit(0u)));
    let var_2 = select(vec3<bool>(var_1.a.a, 4294967295u == select(4294967295u, global2.x ^ global2.x, false), all(vec4<bool>(var_1.a.a, select(false, var_1.a.a, true), select(false, true, var_1.a.a), true))), vec3<bool>(any(!select(vec4<bool>(true, false, true, var_1.a.a), vec4<bool>(var_1.a.a, var_1.a.a, var_1.a.a, var_1.a.a), true)), var_1.a.a, any(select(!vec4<bool>(var_1.a.a, var_1.a.a, false, var_1.a.a), !vec4<bool>(false, true, var_1.a.a, var_1.a.a), select(vec4<bool>(true, var_1.a.a, true, var_1.a.a), vec4<bool>(var_1.a.a, var_1.a.a, var_1.a.a, true), vec4<bool>(var_1.a.a, var_1.a.a, var_1.a.a, true))))), !(_wgslsmith_clamp_i32(-1i, select(var_0.x, var_0.x, var_1.a.a), ~(-1i)) == u_input.d.x));
    let var_3 = ~u_input.c.wz;
    return var_3.x;
}

fn func_7(arg_0: Struct_3, arg_1: u32, arg_2: Struct_3) -> vec4<bool> {
    var var_0 = func_4(Struct_3(arg_0.a), vec4<u32>(~_wgslsmith_sub_u32(4294967295u, ~0u), 1u, max(u_input.c.x, 16800u >> (_wgslsmith_dot_vec3_u32(u_input.c.zzy, u_input.c.xxz) % 32u)), abs(u_input.c.x)));
    global1 = max(-47408i, arg_0.a.c);
    var var_1 = Struct_2(vec4<u32>(arg_0.a.d.x, abs(u_input.c.x), global2.x, ~_wgslsmith_add_u32(_wgslsmith_sub_u32(77271u, 0u), firstLeadingBit(0u))), vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, u_input.a, -2147483647i, u_input.b), u_input.d, u_input.d), ~vec4<i32>(var_0.c, arg_0.a.c, var_0.c, u_input.d.x)), (i32(-1i) * -34058i) >> (var_0.d.x % 32u)), max(-u_input.d.x ^ u_input.a, ~firstLeadingBit(2147483647i)), ~var_0.c, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.a.c, _wgslsmith_div_i32(2147483647i, u_input.d.x), -44051i | u_input.a), u_input.d.yxx)), var_0.d.x);
    return vec4<bool>(true, false, func_6(vec3<bool>(1281f <= var_0.b, var_0.a, !arg_0.a.a), func_4(Struct_3(arg_2.a), ~var_1.a), Struct_3(arg_2.a)).x <= -(var_0.c ^ var_1.b.x), select(arg_0.a.a, !(func_4(arg_0, var_1.a).a && func_5(arg_0.a).x), false));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.b;
    var var_0 = !func_7(Struct_3(Struct_1(true, global0[_wgslsmith_index_u32(0u, 21u)], _wgslsmith_dot_vec4_i32(vec4<i32>(14151i, u_input.b, 14573i, 29673i), u_input.d), min(vec2<u32>(u_input.c.x, global2.x), u_input.c.yw))), func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0[_wgslsmith_index_u32(1u, 21u)], 110f, -474f))) - vec3<f32>(1000f, -1000f, 361f))), func_2(vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 21u)]), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(12125u, 21u)] - 720f), -392f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global2.x, 21u)])), Struct_2(abs(vec4<u32>(u_input.c.x, global2.x, global2.x, 11248u)), _wgslsmith_mod_vec4_i32(u_input.d, vec4<i32>(u_input.b, -1i, -17762i, u_input.b)), global2.x | global2.x), Struct_2(vec4<u32>(39726u, 0u, 12570u, 23352u) ^ vec4<u32>(u_input.c.x, global2.x, global2.x, 0u), u_input.d, global2.x)));
    global0 = array<f32, 21>();
    var_0 = !select(vec4<bool>(-u_input.a > abs(u_input.b), false, !var_0.x, all(var_0.zx)), !(!(!vec4<bool>(false, var_0.x, true, var_0.x))), vec4<bool>(false, true, (i32(-1i) * -21453i) != _wgslsmith_add_i32(-8751i, u_input.b), var_0.x));
    var var_1 = false;
    var var_2 = func_2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -251f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-453f - global0[_wgslsmith_index_u32(global2.x, 21u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global2.x, 21u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-489f - global0[_wgslsmith_index_u32(4294967295u, 21u)])), -123f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0[_wgslsmith_index_u32(0u, 21u)], -1379f, 554f, 686f), vec4<f32>(global0[_wgslsmith_index_u32(17930u, 21u)], global0[_wgslsmith_index_u32(u_input.c.x, 21u)], -978f, global0[_wgslsmith_index_u32(28018u, 21u)]))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(global2.x, 21u)], global0[_wgslsmith_index_u32(u_input.c.x, 21u)], -188f, 852f) * vec4<f32>(408f, -1096f, -577f, global0[_wgslsmith_index_u32(3598u, 21u)])))))), Struct_2(_wgslsmith_mult_vec4_u32(vec4<u32>(~global2.x, func_2(vec4<f32>(292f, 2019f, global0[_wgslsmith_index_u32(70560u, 21u)], 716f), Struct_2(u_input.c, vec4<i32>(u_input.d.x, u_input.d.x, 1i, -2147483647i), 1u), Struct_2(vec4<u32>(u_input.c.x, 48063u, global2.x, 36612u), u_input.d, 4294967295u)).a.d.x, abs(global2.x), func_3(vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 21u)], global0[_wgslsmith_index_u32(1u, 21u)], global0[_wgslsmith_index_u32(global2.x, 21u)])).x), ~vec4<u32>(global2.x, u_input.c.x, 176u, 0u)), ~(-abs(vec4<i32>(89167i, u_input.b, -1772i, u_input.a))), 0u), Struct_2(~select(~u_input.c, u_input.c, all(vec4<bool>(var_0.x, true, var_0.x, true))), vec4<i32>(u_input.b, u_input.d.x, _wgslsmith_div_i32(u_input.b, -2147483647i), _wgslsmith_dot_vec3_i32(u_input.d.wyz, abs(vec3<i32>(2147483647i, -2147483647i, 1i)))), ~_wgslsmith_sub_u32(global2.x, 1u) << (_wgslsmith_mod_u32(24146u, u_input.c.x) % 32u)));
    global2 = vec3<u32>(_wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(max(u_input.c, u_input.c), max(vec4<u32>(global2.x, 75896u, var_2.a.d.x, u_input.c.x), vec4<u32>(var_2.a.d.x, 0u, 5660u, global2.x))), _wgslsmith_div_vec4_u32(u_input.c, vec4<u32>(firstTrailingBit(20177u), 1u, 1u, 5862u))), global2.x, select(23796u, ~(~(var_2.a.d.x | global2.x)), false));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.a.b, var_2.a.b)))), max(func_3(vec3<f32>(_wgslsmith_f_op_f32(var_2.a.b - 1130f), -312f, var_2.a.b)).x, u_input.c.x), ~(firstTrailingBit(vec2<u32>(63230u, 1u)) | ~vec2<u32>(9446u, 80768u)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1384f, var_2.a.b))) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(738f, 785f)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1742f, _wgslsmith_div_f32(var_2.a.b, var_2.a.b))))));
}

