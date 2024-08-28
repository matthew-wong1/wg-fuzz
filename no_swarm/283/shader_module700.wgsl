struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
    d: vec3<f32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<f32, 14> = array<f32, 14>(1511f, 1002f, 566f, 1104f, -391f, -427f, 524f, -632f, 1252f, 1017f, -1731f, -895f, -1184f, 1709f);

var<private> global2: array<vec2<bool>, 2>;

var<private> global3: f32 = -702f;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = Struct_1(vec3<i32>(reverseBits(~(-1i)), arg_0.a.x, min(arg_0.b, 1i >> (~4294967295u % 32u))), ~_wgslsmith_mult_i32(~(-30006i), max(countOneBits(2147483647i), ~u_input.b)), ~_wgslsmith_add_vec3_u32(~arg_0.c, vec3<u32>(arg_0.c.x | arg_0.c.x, 1u, arg_0.c.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(501f, 543f, -575f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(global0.yxy)) * arg_0.d)), ~(~(-2147483647i)) ^ select(_wgslsmith_div_i32(~0i, _wgslsmith_mult_i32(5936i, -61528i)), _wgslsmith_sub_i32(21483i, arg_0.a.x << (arg_0.c.x % 32u)), any(vec2<bool>(true, true))));
    global0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0.c.x, 14u)]), var_0.d.x, _wgslsmith_f_op_f32(select(global0.x, -1000f, 2075f < var_0.d.x)), arg_0.d.x) - vec4<f32>(133f, -174f, var_0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-451f - -787f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(-1154f + -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.d.x))), _wgslsmith_f_op_f32(f32(-1f) * -480f), var_0.d.x))));
    var var_1 = max(1u, max(~countOneBits(_wgslsmith_div_u32(arg_0.c.x, arg_0.c.x)), (~var_0.c.x & ~4294967295u) << (arg_0.c.x % 32u)));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1498f, 2395f, global0.x, 751f))) + vec4<f32>(var_0.d.x, arg_0.d.x, arg_0.d.x, var_0.d.x)) * vec4<f32>(1998f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_0.c.x, 14u)] + arg_0.d.x), _wgslsmith_f_op_f32(select(global0.x, 491f, false)), _wgslsmith_f_op_f32(var_0.d.x - arg_0.d.x))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(635f, 935f, -254f, -502f)) * vec4<f32>(global1[_wgslsmith_index_u32(arg_0.c.x, 14u)], var_0.d.x, global0.x, var_0.d.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1252f), -869f, global1[_wgslsmith_index_u32(~10876u, 14u)], _wgslsmith_f_op_f32(sign(var_0.d.x))))));
    let var_2 = arg_0;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-280f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(arg_0.c.x, 14u)], global0.x))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1000f, global1[_wgslsmith_index_u32(var_0.c.x, 14u)], false)), _wgslsmith_f_op_f32(arg_0.d.x + var_0.d.x)))) - var_2.d.x);
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    global3 = _wgslsmith_div_f32(-2155f, _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(arg_1.c.x ^ 0u), 0u), 14u)], _wgslsmith_f_op_f32(func_3(Struct_1(arg_1.a, ~28281i, vec3<u32>(arg_1.c.x, 48534u, 82620u), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 120f, -807f) + arg_1.d), arg_1.e & 0i))))));
    global1 = array<f32, 14>();
    global2 = array<vec2<bool>, 2>();
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-381f, -960f, arg_0, 1000f) * vec4<f32>(-594f, -250f, -682f, -1672f))))) + vec4<f32>(606f, arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1.d.x, _wgslsmith_f_op_f32(select(-2904f, arg_0, true)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), global0.x));
    var var_0 = firstLeadingBit(firstLeadingBit(arg_1.c.x));
    return Struct_1(_wgslsmith_sub_vec3_i32(-vec3<i32>(u_input.a, u_input.a >> (1u % 32u), 2147483647i), ~arg_1.a), arg_1.e, vec3<u32>(47408u >> (0u % 32u), min(~1u, reverseBits(~0u)), arg_1.c.x), vec3<f32>(-1878f, _wgslsmith_f_op_f32(-956f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-250f, arg_1.d.x)))), -338f), ~_wgslsmith_mult_i32(countOneBits(_wgslsmith_add_i32(u_input.a, u_input.b)), ~(-arg_1.a.x)));
}

fn func_4(arg_0: vec2<bool>, arg_1: u32, arg_2: Struct_1, arg_3: vec4<u32>) -> vec4<f32> {
    let var_0 = arg_2;
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global0.x * var_0.d.x), _wgslsmith_f_op_f32(240f - _wgslsmith_f_op_f32(func_3(var_0))), var_0.d.x, arg_2.d.x) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.x, -221f, -1769f, -191f))) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_2.d.x, 471f, arg_2.d.x, global0.x)))))));
    global3 = global1[_wgslsmith_index_u32(~arg_2.c.x, 14u)];
    var var_1 = var_0.d.xz;
    let var_2 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1510f - global1[_wgslsmith_index_u32(var_0.c.x, 14u)])), Struct_1(min(_wgslsmith_mult_vec3_i32(~vec3<i32>(1i, u_input.b, var_0.b), _wgslsmith_mult_vec3_i32(arg_2.a, vec3<i32>(4474i, 2147483647i, -24032i))), arg_2.a), arg_2.a.x, firstLeadingBit(~abs(vec3<u32>(var_0.c.x, arg_1, 0u))), vec3<f32>(_wgslsmith_div_f32(603f, 579f), var_0.d.x, var_1.x), var_0.e));
    return _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-704f, var_2.d.x, 685f, 220f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.x, var_1.x, var_1.x, -1248f)), vec4<f32>(global0.x, 457f, 567f, -1000f)))), vec4<f32>(global0.x, _wgslsmith_f_op_f32(trunc(global0.x)), -1917f, global0.x))));
}

fn func_1(arg_0: u32) -> bool {
    let var_0 = true;
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(vec2<bool>(true, false), arg_0, func_2(386f, Struct_1(vec3<i32>(-1i, u_input.a, 2147483647i), -2147483647i, vec3<u32>(30940u, 4294967295u, 35384u), global0.wyx, -35871i)), vec4<u32>(arg_0, 1u, arg_0, arg_0))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1627f, global1[_wgslsmith_index_u32(122581u, 14u)], -1817f, -646f)))))));
    return select(var_0, false, var_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec3<u32>(0u, _wgslsmith_mod_u32(_wgslsmith_add_u32(select(66978u, 0u, true), 0u), 90067u), 1u);
    let var_1 = ~(~firstLeadingBit(~vec2<i32>(u_input.a, u_input.a)));
    var var_2 = !select(!global2[_wgslsmith_index_u32(~(~1u), 2u)], vec2<bool>(true, func_1(var_0.x)), select(!select(global2[_wgslsmith_index_u32(var_0.x, 2u)], global2[_wgslsmith_index_u32(var_0.x, 2u)], vec2<bool>(false, false)), vec2<bool>(true, true), global0.x >= _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(var_0.x, 14u)]))));
    var var_3 = min(0i, ~1945i);
    var var_4 = false;
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1f * global0.x), global1[_wgslsmith_index_u32(reverseBits(1u), 14u)], all(vec4<bool>(var_2.x, true, any(vec4<bool>(true, var_2.x, var_2.x, var_2.x)), true)))) * global1[_wgslsmith_index_u32(31346u, 14u)]);
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.zy >> (~reverseBits(var_0.xx) % vec2<u32>(32u)), _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, var_1.x, ~(-62322i), 49325i), ~(-vec4<i32>(-1i, u_input.b, var_1.x, var_1.x))), 1i, ~(~1i)), vec4<f32>(global1[_wgslsmith_index_u32(min(_wgslsmith_sub_u32(func_2(global0.x, Struct_1(vec3<i32>(var_1.x, u_input.b, u_input.b), u_input.a, vec3<u32>(var_0.x, var_0.x, var_0.x), vec3<f32>(global0.x, 1000f, global1[_wgslsmith_index_u32(var_0.x, 14u)]), var_1.x)).c.x, 13682u), var_0.x), 14u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-2215f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 14u)] + global1[_wgslsmith_index_u32(40874u, 14u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(global0.x)))) * 1145f), 286f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global0.x + -544f), _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_0.x, var_0.x, 32021u), 14u)])), global0.x, -836f)));
}

