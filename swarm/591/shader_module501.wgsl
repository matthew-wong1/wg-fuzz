struct Struct_1 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec4<f32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(0u, vec2<u32>(53775u, 4294967295u));

var<private> global1: array<vec2<u32>, 30>;

var<private> global2: Struct_1;

var<private> global3: array<vec4<f32>, 6> = array<vec4<f32>, 6>(vec4<f32>(1429f, -476f, 2067f, 507f), vec4<f32>(-2402f, 1198f, 905f, 990f), vec4<f32>(384f, -994f, 739f, 580f), vec4<f32>(257f, 474f, 1648f, -357f), vec4<f32>(-298f, -1186f, -704f, 1069f), vec4<f32>(120f, 604f, 974f, 264f));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
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

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: bool) -> f32 {
    global1 = array<vec2<u32>, 30>();
    global1 = array<vec2<u32>, 30>();
    global2 = Struct_1(~global0.a, select(~(~vec2<u32>(global2.b.x, arg_0.b.x)), _wgslsmith_mod_vec2_u32(global2.b, ~(~global2.b)), true));
    var var_0 = arg_0;
    var var_1 = u_input.a;
    return 1f;
}

fn func_3(arg_0: vec3<u32>) -> u32 {
    var var_0 = ~global2.a;
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(global3[_wgslsmith_index_u32(4294967295u, 6u)], _wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(select(73383u, u_input.b.x, true), 1u, ~global2.a), 6u)]), vec4<bool>(true, true, true, true)))));
    var var_2 = true;
    let var_3 = Struct_2(~(~_wgslsmith_sub_vec4_u32(~vec4<u32>(15265u, u_input.b.x, 1u, u_input.b.x), select(vec4<u32>(global0.a, 22391u, 4294967295u, 22966u), vec4<u32>(1u, 1u, 22525u, 81267u), vec4<bool>(true, true, false, false)))), Struct_1(u_input.c.x, global2.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, _wgslsmith_f_op_f32(794f * var_1.x), _wgslsmith_div_f32(var_1.x, -1257f), _wgslsmith_f_op_f32(min(-1212f, 1124f))))), -u_input.a << (0u % 32u));
    global1 = array<vec2<u32>, 30>();
    return 1u | u_input.c.x;
}

fn func_2(arg_0: vec3<f32>, arg_1: bool, arg_2: vec4<i32>) -> f32 {
    global3 = array<vec4<f32>, 6>();
    global3 = array<vec4<f32>, 6>();
    var var_0 = _wgslsmith_f_op_f32(floor(418f));
    var var_1 = Struct_2(~_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 30574u, 6084u, 4294967295u) ^ vec4<u32>(global2.b.x, global2.b.x, 9555u, 10696u), ~vec4<u32>(u_input.c.x, global0.b.x, 1u, global2.b.x)), ~(~vec4<u32>(u_input.c.x, u_input.c.x, global2.a, 0u))), Struct_1(func_3(abs(select(vec3<u32>(4294967295u, 1u, 493u), vec3<u32>(global0.b.x, 37663u, global2.a), arg_1))), ~(max(global2.b, vec2<u32>(u_input.b.x, u_input.b.x)) >> (~vec2<u32>(global2.a, global0.a) % vec2<u32>(32u)))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), 1779f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) * _wgslsmith_f_op_f32(func_1(Struct_1(0u, vec2<u32>(u_input.b.x, global0.b.x)), vec4<bool>(arg_1, arg_1, arg_1, true), true)))))), arg_2.x >> (max(~reverseBits(61235u), ~global0.b.x) % 32u));
    var var_2 = _wgslsmith_dot_vec3_i32(-_wgslsmith_mult_vec3_i32(reverseBits(arg_2.zwx), ~firstTrailingBit(arg_2.zzw)), ~arg_2.zwy);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(720f)) + _wgslsmith_f_op_f32(-var_1.c.x)), var_1.c.x) + var_1.c.x));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<i32>) -> Struct_1 {
    var var_0 = ~vec4<i32>(arg_1.x, abs(_wgslsmith_dot_vec2_i32(arg_1.yx, _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_1.x, 2147483647i), arg_1.xy, arg_1.yx))), -arg_1.x, _wgslsmith_dot_vec2_i32(~vec2<i32>(arg_1.x, 0i) ^ vec2<i32>(30704i, 1i), ~abs(vec2<i32>(arg_1.x, -40754i))));
    let var_1 = _wgslsmith_f_op_f32(func_1(Struct_1(func_3(u_input.b), global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(42270u, u_input.c.x), vec2<u32>(4294967295u, u_input.c.x)), 30u)] | u_input.c), vec4<bool>(false, true, all(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false)))), true), all(select(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, select(true, false, true)), true))));
    var var_2 = -vec4<i32>(-23008i, reverseBits(1i), -(~(-2147483647i)), ~(-1i)) & -vec4<i32>(_wgslsmith_clamp_i32(u_input.a, arg_1.x, i32(-1i) * -3097i), 1i, 15986i, 0i);
    var var_3 = Struct_2(~(~vec4<u32>(3986u, 1u >> (global0.a % 32u), u_input.b.x, global2.b.x)), Struct_1(~global0.b.x, vec2<u32>(4294967295u, global0.b.x)), global3[_wgslsmith_index_u32(61990u, 6u)], 0i);
    global3 = array<vec4<f32>, 6>();
    return Struct_1(abs(~u_input.b.x & ~global2.b.x) << (13433u % 32u), ~vec2<u32>(14007u, 5894u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_1(Struct_1(4294967295u, vec2<u32>(94125u, global0.a)), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), false), true)), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-836f, -1337f, 988f)), false, countOneBits(vec4<i32>(u_input.a, -56127i, 11832i, -1i)))))), -abs(~_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, 11136i, 1i), vec3<i32>(-14591i, 40245i, u_input.a))));
    var var_0 = Struct_2((_wgslsmith_div_vec4_u32(select(vec4<u32>(7076u, 40176u, u_input.c.x, 0u), vec4<u32>(global2.a, 0u, 78336u, 0u), false), countOneBits(vec4<u32>(1u, global2.b.x, 3637u, global0.a))) >> (vec4<u32>(global2.b.x >> (2512u % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(104073u, global2.b.x), global1[_wgslsmith_index_u32(global0.b.x, 30u)]), ~1u, abs(global0.b.x)) % vec4<u32>(32u))) & vec4<u32>(~(~global0.b.x), max(~global0.b.x, global2.a), ~(~0u), ~2412u), func_4(vec2<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(968f)) + _wgslsmith_f_op_f32(665f * 189f))), min(vec3<i32>(42062i & u_input.a, u_input.a, 2147483647i), _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, u_input.a, -73986i), vec3<i32>(-30513i, -1i, -2147483647i)), _wgslsmith_div_vec3_i32(vec3<i32>(1i, 2147483647i, u_input.a), vec3<i32>(u_input.a, u_input.a, -2147483647i))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-770f, -707f, 1192f, -558f)), vec4<f32>(-1498f, -623f, -963f, 961f), false))))), 2680i | _wgslsmith_sub_i32(u_input.a, -22914i));
    let var_1 = var_0.c.x;
    let var_2 = Struct_1(var_0.a.x, _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(global2.b.x, u_input.c.x, 4294967295u), _wgslsmith_div_u32(25321u, 1u)) >> (~(global1[_wgslsmith_index_u32(global2.b.x, 30u)] << (global0.b % vec2<u32>(32u))) % vec2<u32>(32u)), max(~vec2<u32>(1u, global0.b.x), select(u_input.c, vec2<u32>(4294967295u, global0.a), true)) & global2.b));
    global0 = func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(func_2(var_0.c.wxx, false, vec4<i32>(u_input.a, 0i, 1i, 21089i))), _wgslsmith_f_op_f32(-var_0.c.x)))) - var_0.c.yz), vec3<i32>(_wgslsmith_div_i32(-72927i << (u_input.c.x % 32u), var_0.d | 25978i) | 0i, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(abs(vec3<i32>(var_0.d, 49686i, var_0.d)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, -1i, u_input.a), vec3<i32>(1i, -1i, 1i))), _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.d, 2147483647i, -5842i), vec3<i32>(0i, u_input.a, 1i)), vec3<i32>(-1i, var_0.d, var_0.d), -vec3<i32>(-6257i, var_0.d, -14878i))), 9705i));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.zzw, abs(vec3<i32>(i32(-1i) * -var_0.d, u_input.a, _wgslsmith_add_i32(~var_0.d, u_input.a))), _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(~2147483647i, -24748i), vec2<i32>(2147483647i, -2147483647i)), -(~firstLeadingBit(vec2<i32>(var_0.d, 2147483647i)))), var_0.c.xzw, var_0.c.x);
}

