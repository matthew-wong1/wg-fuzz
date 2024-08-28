struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec4<f32>,
    d: vec4<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(358f, 1000f);

var<private> global1: Struct_4 = Struct_4(vec2<u32>(79458u, 23663u), vec2<f32>(655f, -815f), Struct_2(vec3<u32>(0u, 1u, 4294967295u)));

var<private> global2: f32;

var<private> global3: bool;

var<private> global4: array<Struct_3, 5>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: vec4<u32>, arg_1: i32, arg_2: Struct_1, arg_3: vec3<bool>) -> bool {
    let var_0 = !vec3<bool>(arg_3.x & false, false, arg_3.x);
    var var_1 = _wgslsmith_add_u32(_wgslsmith_mult_u32(arg_0.x ^ global1.c.a.x, ~firstLeadingBit(_wgslsmith_mult_u32(global1.a.x, 1231u))), ~u_input.c);
    let var_2 = Struct_4(reverseBits(~(~arg_0.wx ^ (vec2<u32>(u_input.c, global1.c.a.x) >> (global1.c.a.xy % vec2<u32>(32u))))), _wgslsmith_div_vec2_f32(global1.b, global1.b), Struct_2(abs(abs(firstTrailingBit(global1.c.a)))));
    var var_3 = global4[_wgslsmith_index_u32(var_2.c.a.x, 5u)];
    global0 = vec2<f32>(885f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.x)));
    return select(!all(vec3<bool>(true, any(var_0.xx), false)), all(select(vec3<bool>(arg_3.x, any(vec4<bool>(false, true, arg_3.x, false)), true), !arg_2.c.xxw, select(select(vec3<bool>(false, arg_3.x, false), var_0, arg_3), vec3<bool>(true, true, arg_3.x), !arg_3))), arg_3.x);
}

fn func_2(arg_0: Struct_3) -> u32 {
    let var_0 = !vec4<bool>(!func_3(vec4<u32>(4294967295u, 73362u, global1.a.x, u_input.c), max(u_input.b.x, u_input.b.x), Struct_1(true, u_input.a, vec4<bool>(false, false, false, true)), vec3<bool>(false, false, true)), true, 1i <= ~(u_input.a << (global1.a.x % 32u)), all(vec2<bool>(any(vec4<bool>(true, true, true, false)), any(vec3<bool>(true, true, false)))));
    var var_1 = Struct_1(true, _wgslsmith_div_i32(u_input.a, ~_wgslsmith_dot_vec3_i32(-vec3<i32>(-16563i, u_input.a, -2147483647i), abs(vec3<i32>(1i, u_input.a, u_input.a)))), select(select(var_0, !(!var_0), any(vec2<bool>(true, true))), select(!select(var_0, vec4<bool>(false, var_0.x, false, var_0.x), vec4<bool>(false, false, var_0.x, false)), !(!vec4<bool>(var_0.x, var_0.x, false, var_0.x)), select(!var_0, !var_0, vec4<bool>(false, var_0.x, true, var_0.x))), 1u <= reverseBits(global1.a.x)));
    global3 = !(!var_0.x || select(select(global1.c.a.x == u_input.c, any(vec2<bool>(var_0.x, var_1.a)), true), true, false));
    let var_2 = all(!select(var_1.c.yzy, var_0.yxz, false));
    global0 = global1.b;
    return ~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(global1.a.x, global1.c.a.x, global1.c.a.x), ~(~_wgslsmith_clamp_u32(18582u, 4294967295u, global1.c.a.x)));
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: vec3<bool>, arg_3: i32) -> vec4<f32> {
    var var_0 = max(-vec3<i32>(u_input.a, ~(~u_input.a), 1i), vec3<i32>(i32(-1i) * -7944i, -32708i, arg_3));
    global1 = Struct_4(vec2<u32>(min(_wgslsmith_mod_u32(20154u, arg_0), 1u) << (firstTrailingBit(16144u << (global1.c.a.x % 32u)) % 32u), 1u), _wgslsmith_f_op_vec2_f32(-global1.b), arg_1.c);
    global1 = arg_1;
    let var_1 = Struct_1(!((select(true, arg_2.x, false) == arg_2.x) & false), _wgslsmith_add_i32(-1i, arg_3), vec4<bool>(func_3(vec4<u32>(~global1.a.x, 0u, arg_1.a.x, ~28891u), -46816i, Struct_1(any(arg_2), 1i, vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x)), !select(vec3<bool>(true, arg_2.x, true), arg_2, arg_2)), -15079i <= ~u_input.b.x, select(arg_2.x, !all(arg_2), arg_2.x), (arg_0 ^ _wgslsmith_div_u32(arg_1.a.x, 4294967295u)) == arg_0));
    var var_2 = Struct_4(vec2<u32>(arg_0, _wgslsmith_div_u32(~min(67464u, global1.c.a.x), 1u ^ global1.a.x)), _wgslsmith_f_op_vec2_f32(arg_1.b + vec2<f32>(global1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-512f)) * arg_1.b.x))), arg_1.c);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-761f, _wgslsmith_div_f32(var_2.b.x, arg_1.b.x), -320f, -250f) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-123f, global0.x, 275f, var_2.b.x) * vec4<f32>(675f, var_2.b.x, -128f, global1.b.x))))), vec4<f32>(-2632f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-155f)) * arg_1.b.x), _wgslsmith_div_f32(arg_1.b.x, _wgslsmith_f_op_f32(trunc(global0.x))), global0.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.x, -253f, 1499f, global1.b.x) - vec4<f32>(-1000f, -787f, global0.x, global0.x)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1.b.x, 1304f, 1456f, global1.b.x))))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(535f, _wgslsmith_f_op_f32(global1.b.x - global0.x), 800f, -1495f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_2.b.x, -193f, arg_1.b.x))))));
}

fn func_1(arg_0: vec3<f32>, arg_1: i32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.x, 275f, global0.x, -1038f) + _wgslsmith_div_vec4_f32(vec4<f32>(global0.x, arg_0.x, global0.x, 1878f), vec4<f32>(-326f, arg_0.x, global0.x, global0.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global1.b.x, global1.b.x, global1.b.x)) * vec4<f32>(1778f, arg_0.x, -707f, global0.x))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, 1306f, arg_0.x, arg_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(758f, -668f, global0.x, global1.b.x)))))));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.zz - vec2<f32>(var_0.x, var_0.x)));
    var_0 = _wgslsmith_f_op_vec4_f32(func_4(select(func_2(global4[_wgslsmith_index_u32(u_input.c, 5u)]), ~global1.c.a.x, any(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false))), Struct_4(vec2<u32>(global1.a.x, ~37555u << (global1.a.x % 32u)), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-829f)))), global0.x), Struct_2(firstLeadingBit(vec3<u32>(global1.a.x, u_input.c, u_input.c)))), select(vec3<bool>(true, true, true), vec3<bool>(global1.a.x != ~1u, true, false), select(vec3<bool>(true, any(vec3<bool>(true, true, false)), false), select(vec3<bool>(true, true, false), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true), global1.c.a.x >= u_input.c), all(select(vec2<bool>(false, true), vec2<bool>(false, false), true)))), _wgslsmith_dot_vec2_i32(~(-abs(u_input.b.ww)), ~_wgslsmith_sub_vec2_i32(u_input.b.yy, _wgslsmith_add_vec2_i32(u_input.b.zx, u_input.b.xy)))));
    var var_1 = 505f;
    var var_2 = vec2<i32>(abs(firstTrailingBit(~u_input.b.x)), _wgslsmith_dot_vec3_i32(u_input.b.wyy, vec3<i32>(arg_1, _wgslsmith_div_i32(arg_1, -2147483647i), u_input.b.x)));
    return Struct_1(false, u_input.b.x, !select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), false), vec4<bool>(true, all(vec3<bool>(false, false, true)), true, func_3(vec4<u32>(global1.c.a.x, 0u, 0u, 1u), u_input.a, Struct_1(true, var_2.x, vec4<bool>(true, true, true, true)), vec3<bool>(true, true, false))), vec4<bool>(false, true, true, -710f >= global0.x)));
}

fn func_5(arg_0: Struct_1) -> Struct_2 {
    let var_0 = 4294967295u;
    global1 = Struct_4(~vec2<u32>(u_input.c, ~7691u) ^ (((global1.a << (vec2<u32>(var_0, u_input.c) % vec2<u32>(32u))) >> (global1.a % vec2<u32>(32u))) | global1.a), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-783f, global0.x))), global1.b), Struct_2(_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 1u, global1.a.x), global1.c.a), abs(vec3<u32>(1u, 0u, 1u)))));
    let var_1 = Struct_4(~firstTrailingBit(vec2<u32>(_wgslsmith_sub_u32(var_0, 4294967295u), ~u_input.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.b)), global1.c);
    let var_2 = -u_input.b;
    let var_3 = global1.c;
    return global1.c;
}

fn func_6(arg_0: vec4<u32>, arg_1: bool, arg_2: Struct_2, arg_3: vec2<u32>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1441f - global1.b.x)));
    var var_1 = select(false, arg_1, any(vec2<bool>(true, true)));
    let var_2 = Struct_2(~arg_2.a);
    global1 = Struct_4(abs(~max(~arg_3, arg_3)), global1.b, Struct_2(vec3<u32>(50939u, ~global1.c.a.x, 27278u)));
    var var_3 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1603f, global0.x), vec2<f32>(global1.b.x, 345f), vec2<bool>(arg_1, true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(global1.b)) + _wgslsmith_f_op_vec2_f32(abs(global1.b)))) + global1.b), vec2<f32>(global1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0, global0.x))))));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(u_input.b.x);
    let var_1 = vec4<bool>(true == (((global1.c.a.x << (17549u % 32u)) >> ((global1.a.x >> (u_input.c % 32u)) % 32u)) == ~firstTrailingBit(global1.c.a.x)), func_6(select(vec4<u32>(abs(2214u), u_input.c << (16484u % 32u), global1.a.x, u_input.c | u_input.c), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, 3778u, u_input.c, 2920u), vec4<u32>(global1.a.x, u_input.c, global1.a.x, 1u) & vec4<u32>(u_input.c, 60523u, 4294967295u, 87600u)), vec4<bool>(true, true, true, true)), true, func_5(func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 1168f, 338f) - vec3<f32>(-828f, global1.b.x, 1135f)), -1i)), _wgslsmith_mult_vec2_u32(select(_wgslsmith_mod_vec2_u32(global1.a, global1.c.a.xz), ~vec2<u32>(4294967295u, u_input.c), true), reverseBits(select(global1.a, global1.c.a.yz, false)))), all(select(select(vec4<bool>(true, true, true, true), func_1(vec3<f32>(-839f, -223f, global1.b.x), -11341i).c, vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), true);
    var var_2 = func_5(Struct_1(false, i32(-1i) * -11161i, func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(358f, -1000f, global1.b.x))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 1006f, 668f) - vec3<f32>(-1131f, global0.x, -740f))), var_0 >> (global1.a.x % 32u)).c));
    let var_3 = vec3<bool>(any(!var_1.yy), !func_6(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 2889u, 4294967295u, 109682u), countOneBits(vec4<u32>(var_2.a.x, 4294967295u, global1.c.a.x, 0u))), func_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.x, global0.x, -2088f))), max(u_input.a, u_input.b.x)).c.x, Struct_2(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 52309u, var_2.a.x), var_2.a)), ~_wgslsmith_sub_vec2_u32(var_2.a.xx, vec2<u32>(u_input.c, 0u))), 34278u >= ~firstTrailingBit(min(var_2.a.x, global1.c.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(global1.b.x - global1.b.x), _wgslsmith_f_op_f32(min(global0.x, -1215f)))))), _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.b.yz, (u_input.b.yy ^ vec2<i32>(var_0, u_input.b.x)) ^ ~vec2<i32>(43053i, -2147483647i)), -u_input.b.yy), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1149f, global0.x, -2094f, 707f), vec4<f32>(global0.x, -1036f, global0.x, -115f)))))), reverseBits(vec4<i32>(firstTrailingBit(u_input.a ^ var_0), 1i, u_input.b.x, select(-var_0, ~27843i, false))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_4(func_5(Struct_1(var_1.x, -2147483647i, vec4<bool>(var_1.x, true, true, var_1.x))).a.x, Struct_4(var_2.a.zx, global1.b, global1.c), var_3, _wgslsmith_add_i32(-36i, -4253i))).x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1509f) - -437f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(290f, global1.b.x) - _wgslsmith_f_op_f32(step(200f, global0.x)))), _wgslsmith_f_op_f32(round(global1.b.x))));
}

