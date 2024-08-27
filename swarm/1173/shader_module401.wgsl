struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<f32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<f32>,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24> = array<u32, 24>(4796u, 4294967295u, 4294967295u, 4294967295u, 0u, 55158u, 1u, 4294967295u, 1u, 0u, 19856u, 1u, 1u, 0u, 4294967295u, 4294967295u, 0u, 28834u, 1u, 0u, 28059u, 4294967295u, 0u, 72409u);

var<private> global1: f32 = -2288f;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>, arg_1: f32, arg_2: Struct_1) -> f32 {
    var var_0 = Struct_3(vec3<bool>((31862u < global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(18319u, 24u)], 24u)], 24u)], 24u)]) | arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.d.x)), any(!vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, 1293f, arg_1) + arg_2.c)))));
    var var_1 = Struct_3(!select(!select(vec3<bool>(arg_0.x, false, true), vec3<bool>(arg_0.x, var_0.a.x, false), true), vec3<bool>(u_input.b > 2147483647i, select(arg_0.x, false, arg_0.x), arg_0.x), !var_0.a), vec4<f32>(-1369f, arg_2.c.x, 1302f, arg_1));
    let var_2 = _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(8420u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 24u)], 24u)], 24u)]), vec2<u32>(global0[_wgslsmith_index_u32(41555u, 24u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 24u)], 24u)])), 1u), vec4<u32>(1u, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 24u)], 24u)], 24u)], _wgslsmith_div_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 24u)], 24u)], 4294967295u), ~0u)), _wgslsmith_dot_vec2_u32(~vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 24u)], 24u)], 1u) >> (~vec2<u32>(global0[_wgslsmith_index_u32(0u, 24u)], 4294967295u) % vec2<u32>(32u)), ~_wgslsmith_sub_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(59120u, 24u)], 24u)], 4294967295u), vec2<u32>(global0[_wgslsmith_index_u32(1241u, 24u)], 0u)))) <= ~abs(~global0[_wgslsmith_index_u32(1u, 24u)] | global0[_wgslsmith_index_u32(1u, 24u)]);
    global0 = array<u32, 24>();
    let var_3 = !select(vec2<bool>(!any(vec2<bool>(var_1.a.x, var_1.a.x)), all(select(vec4<bool>(var_0.a.x, arg_0.x, arg_0.x, var_2), vec4<bool>(var_2, false, arg_0.x, true), false))), select(vec2<bool>(true | var_0.a.x, var_1.a.x), var_1.a.zx, select(var_0.a.x, var_1.a.x, false) != true), var_0.a.x);
    return 1001f;
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1079f) - -1100f) - 717f) - 1000f)));
    global1 = _wgslsmith_f_op_f32(-1f);
    let var_1 = Struct_5(Struct_4(true, -19808i, Struct_1(u_input.a, vec2<i32>(-2147483647i, 1i), vec4<f32>(752f, _wgslsmith_f_op_f32(func_3(vec2<bool>(true, false), -1079f, Struct_1(vec2<i32>(38550i, 2147483647i), vec2<i32>(21587i, u_input.b), vec4<f32>(1869f, 421f, 817f, 2038f), vec3<f32>(-1000f, 1000f, 1467f)))), _wgslsmith_f_op_f32(sign(1481f)), _wgslsmith_f_op_f32(max(889f, 423f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1869f, -893f, -843f) + vec3<f32>(1000f, -537f, -148f))))), Struct_1(~(~_wgslsmith_sub_vec2_i32(u_input.a, u_input.a)), countOneBits(abs(u_input.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-520f, -1322f, -896f, -2081f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1493f, 685f, 1000f, -842f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(247f, -755f, -848f) - vec3<f32>(108f, 1277f, -711f)) - vec3<f32>(1f, 1f, 1f)), vec3<f32>(_wgslsmith_f_op_f32(1715f * -986f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(step(-1327f, -123f))))), true);
    let var_2 = Struct_2(var_1.a.c, -vec2<i32>(var_1.a.b, -7552i));
    var_0 = _wgslsmith_f_op_f32(-var_2.a.c.x);
    return var_1.b.d.x;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<f32>) -> Struct_3 {
    global1 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(794f * arg_1.x)))), -2941f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))), -1647f));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()));
    global1 = _wgslsmith_f_op_f32(-528f - 1448f);
    let var_1 = Struct_1(max(u_input.a, vec2<i32>(_wgslsmith_clamp_i32(-37469i, -2147483647i, -2147483647i), u_input.b) ^ vec2<i32>(2147483647i | u_input.a.x, u_input.a.x)), u_input.a, vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(304f + var_0), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_div_f32(-153f, var_0), _wgslsmith_f_op_f32(-336f + 1300f)), var_0)), _wgslsmith_f_op_f32(max(-2319f, _wgslsmith_f_op_f32(f32(-1f) * -548f)))), _wgslsmith_f_op_vec3_f32(-arg_1));
    let var_2 = ~vec2<u32>(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(63735u, 24u)] ^ global0[_wgslsmith_index_u32(0u, 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)]) ^ _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 24u)], 24u)], 24u)], 24u)], 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(57633u, 24u)], 24u)], 24u)], 24u)], 24u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1596u, 24u)], 24u)], 24u)]), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(51428u, 24u)], 24u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 24u)], 24u)], 22129u, 0u)), vec4<u32>(1u, 1u, 1u, 1u)), 22821u << ((global0[_wgslsmith_index_u32(~4294967295u, 24u)] >> (countOneBits(1u) % 32u)) % 32u));
    return Struct_3(vec3<bool>(true, arg_0.x, var_1.b.x > -(i32(-1i) * -22205i)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1071f * arg_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.c.x)) - var_0), _wgslsmith_f_op_f32(-1066f - arg_1.x), arg_1.x), _wgslsmith_div_vec4_f32(var_1.c, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0, var_1.c.x, 770f, arg_1.x))))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3) -> vec4<f32> {
    var var_0 = Struct_1(u_input.a, vec2<i32>(_wgslsmith_sub_i32(firstLeadingBit(_wgslsmith_clamp_i32(u_input.b, u_input.a.x, u_input.a.x)), countOneBits(_wgslsmith_mod_i32(u_input.b, u_input.a.x))), u_input.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.x, arg_1.b.x, -280f, arg_1.b.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.x, arg_1.b.x, -410f, arg_0.b.x) * arg_0.b)))) - _wgslsmith_f_op_vec4_f32(arg_0.b * arg_0.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-287f, arg_0.b.x, -1334f) + vec3<f32>(-615f, 824f, -352f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-357f, arg_0.b.x, -1498f) * arg_1.b.yyx))))));
    var_0 = Struct_1(-var_0.b, var_0.a, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(arg_1.b.x)), _wgslsmith_f_op_f32(func_2()), arg_1.a.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -299f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(arg_0.a.xx, 117f, Struct_1(u_input.a, var_0.b, arg_1.b, arg_0.b.zxy))) - _wgslsmith_f_op_f32(abs(1336f))), true)), _wgslsmith_f_op_f32(func_3(arg_1.a.xz, func_1(!arg_0.a, vec3<f32>(1742f, 488f, arg_1.b.x)).b.x, Struct_1(~vec2<i32>(var_0.b.x, var_0.b.x), firstTrailingBit(vec2<i32>(u_input.b, -1i)), vec4<f32>(2209f, var_0.d.x, 392f, -1146f), vec3<f32>(-1079f, -1236f, 3548f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -693f) - arg_0.b.x), _wgslsmith_f_op_f32(arg_1.b.x - var_0.d.x))), arg_1.b.wxx);
    let var_1 = _wgslsmith_f_op_vec3_f32(-func_1(arg_1.a, var_0.d).b.yxx);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.x, -498f, -121f, var_1.x) * arg_1.b), _wgslsmith_f_op_vec4_f32(-arg_0.b), all(vec4<bool>(true, false, true, true)))))));
}

fn func_5(arg_0: i32, arg_1: Struct_3, arg_2: Struct_3) -> Struct_4 {
    var var_0 = ~(~_wgslsmith_div_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 24u)], 24u)], 24u)] >> (global0[_wgslsmith_index_u32(1u, 24u)] % 32u), _wgslsmith_clamp_u32(4294967295u, global0[_wgslsmith_index_u32(1u, 24u)], 15745u)) >> (~35046u % 32u));
    global0 = array<u32, 24>();
    var var_1 = min(vec3<u32>(9581u, ~72u, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~4294967295u, 1u), 24u)]), vec3<u32>(~86128u, 46964u, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(29360u, 24u)], 24u)])) ^ _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(4294967295u, 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(8899u, 24u)], 24u)]), vec3<u32>(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 24u)], 24u)], 24u)], 24u)], 24u)], ~1u, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 24u)], 24u)], 24u)], 24u)], 24u)])), vec3<u32>(4294967295u, ~global0[_wgslsmith_index_u32(max(global0[_wgslsmith_index_u32(60715u, 24u)], 0u), 24u)], global0[_wgslsmith_index_u32(firstTrailingBit(0u >> (0u % 32u)), 24u)]));
    return Struct_4(-647f == arg_2.b.x, abs(~arg_0 ^ 1i), Struct_1(_wgslsmith_clamp_vec2_i32((vec2<i32>(22701i, u_input.b) ^ u_input.a) & -u_input.a, max(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(1i, -1i)), ~u_input.a), firstLeadingBit(abs(u_input.a))), vec2<i32>(arg_0, _wgslsmith_div_i32(_wgslsmith_add_i32(u_input.a.x, -10697i), arg_0 >> (global0[_wgslsmith_index_u32(0u, 24u)] % 32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.b.x, arg_1.b.x, arg_1.b.x, 1554f), arg_2.b) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.x, 498f, arg_1.b.x, arg_1.b.x) * _wgslsmith_f_op_vec4_f32(arg_1.b + vec4<f32>(arg_2.b.x, arg_2.b.x, -814f, arg_2.b.x)))), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2.b.x))), arg_2.b.x, -2316f)));
}

fn func_6(arg_0: Struct_4) -> Struct_1 {
    global0 = array<u32, 24>();
    let var_0 = func_1(func_1(select(vec3<bool>(arg_0.a, 5350u < global0[_wgslsmith_index_u32(0u, 24u)], true), vec3<bool>(true, false, true), vec3<bool>(false, !arg_0.a, true)), func_1(select(!vec3<bool>(arg_0.a, arg_0.a, arg_0.a), vec3<bool>(arg_0.a, arg_0.a, arg_0.a), vec3<bool>(false, false, arg_0.a)), _wgslsmith_f_op_vec3_f32(-arg_0.c.c.zzy)).b.yxw).a, vec3<f32>(arg_0.c.c.x, _wgslsmith_f_op_f32(func_3(func_1(func_1(vec3<bool>(true, arg_0.a, arg_0.a), vec3<f32>(-174f, 1871f, arg_0.c.c.x)).a, arg_0.c.c.zzy).a.zz, 621f, Struct_1(_wgslsmith_sub_vec2_i32(u_input.a, arg_0.c.b), countOneBits(arg_0.c.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.d.x, arg_0.c.d.x, -1000f, arg_0.c.d.x)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-220f, -1005f, -471f), vec3<f32>(arg_0.c.c.x, arg_0.c.d.x, arg_0.c.d.x)))))), _wgslsmith_f_op_f32(1080f * _wgslsmith_div_f32(-1028f, _wgslsmith_f_op_f32(func_3(vec2<bool>(arg_0.a, arg_0.a), arg_0.c.d.x, Struct_1(arg_0.c.b, vec2<i32>(u_input.a.x, 2147483647i), arg_0.c.c, vec3<f32>(519f, -1320f, arg_0.c.c.x))))))));
    let var_1 = ~(firstTrailingBit(vec3<u32>(~global0[_wgslsmith_index_u32(8717u, 24u)], 10021u | global0[_wgslsmith_index_u32(1u, 24u)], global0[_wgslsmith_index_u32(57423u, 24u)])) ^ _wgslsmith_div_vec3_u32(select(~vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], 24u)]), vec3<u32>(1u, 1u, 1u), arg_0.a), _wgslsmith_sub_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(63970u, 24u)], 24u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(98608u, 24u)], 24u)], 15264u), abs(vec3<u32>(27385u, 61012u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(17021u, 24u)], 24u)])))));
    let var_2 = arg_0.c.b;
    var var_3 = arg_0.c.d.x;
    return arg_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 24>();
    global1 = -1000f;
    let var_0 = -1000f;
    let var_1 = func_6(func_5(~_wgslsmith_dot_vec3_i32(vec3<i32>(-6298i, 1i, u_input.a.x), max(vec3<i32>(u_input.b, 849i, u_input.b), vec3<i32>(u_input.a.x, -1i, u_input.b))), Struct_3(vec3<bool>(true, true, true), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-410f, var_0, 1000f, var_0), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1004f, -1915f, -633f, var_0)), vec4<bool>(false, false, false, false)))), Struct_3(vec3<bool>(true, true, true), _wgslsmith_f_op_vec4_f32(func_4(Struct_3(vec3<bool>(true, false, true), vec4<f32>(var_0, var_0, -1000f, -412f)), func_1(vec3<bool>(false, true, false), vec3<f32>(var_0, var_0, var_0)))))));
    let var_2 = Struct_3(!vec3<bool>(func_5(abs(0i), Struct_3(vec3<bool>(false, true, true), vec4<f32>(393f, -164f, -406f, var_0)), func_1(vec3<bool>(false, false, false), vec3<f32>(1137f, 412f, var_1.d.x))).a, all(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(245f + -1000f) < _wgslsmith_f_op_f32(-1403f * var_0)), vec4<f32>(_wgslsmith_f_op_vec4_f32(func_4(Struct_3(vec3<bool>(true, true, true), var_1.c), Struct_3(vec3<bool>(true, true, true), vec4<f32>(-1179f, var_1.c.x, var_0, var_0)))).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x)) + 228f), _wgslsmith_div_f32(var_0, 904f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(681f - 1227f)) - var_1.c.x)));
    var var_3 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~(global0[_wgslsmith_index_u32(33391u, 24u)] | 1u), 66965u), min(~vec4<i32>(0i | var_1.b.x, ~(-1i), _wgslsmith_div_i32(var_1.a.x, u_input.a.x), _wgslsmith_clamp_i32(var_1.a.x, 10955i, var_1.a.x)), ~(-(~vec4<i32>(var_1.a.x, 15494i, u_input.b, 54299i)))));
}

