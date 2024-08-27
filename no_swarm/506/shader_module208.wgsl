struct Struct_1 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: i32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 21> = array<bool, 21>(false, false, true, true, true, false, false, false, false, true, false, false, false, false, true, false, false, true, true, true, false);

var<private> global1: vec4<i32>;

var<private> global2: Struct_2 = Struct_2(Struct_1(vec2<bool>(true, false), 322f), Struct_1(vec2<bool>(true, false), -280f), vec3<f32>(-103f, 144f, 1571f), 2147483647i);

var<private> global3: array<Struct_3, 6>;

var<private> global4: array<f32, 21> = array<f32, 21>(-1116f, -1000f, 591f, 233f, -384f, -1040f, 633f, -936f, -449f, -734f, 1000f, -2422f, 1859f, 1065f, -249f, 316f, 387f, -905f, -530f, 1507f, -188f);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2() -> vec4<i32> {
    let var_0 = -508f;
    return vec4<i32>(min(global2.d, 5139i), ~_wgslsmith_dot_vec3_i32(max(vec3<i32>(-31373i, global2.d, 20318i), global1.wxz), _wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(u_input.d.x, 3416i, u_input.d.x)), countOneBits(u_input.d))), 36397i, max(-29594i, global2.d));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1) -> i32 {
    global0 = array<bool, 21>();
    global4 = array<f32, 21>();
    var var_0 = 749f;
    global1 = vec4<i32>(-1i) * -((~vec4<i32>(global1.x, global2.d, global2.d, -73120i) | vec4<i32>(global1.x, -34413i, 24087i, u_input.d.x)) & _wgslsmith_clamp_vec4_i32(func_2(), vec4<i32>(global2.d, 16182i, u_input.d.x, u_input.d.x), vec4<i32>(-2147483647i, -2147483647i, -1i, 0i)));
    let var_1 = _wgslsmith_add_vec4_u32(u_input.a, ~arg_0);
    return -u_input.d.x;
}

fn func_3(arg_0: f32, arg_1: f32) -> i32 {
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1558f, global2.b.b, -412f, 1000f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1047f, arg_0, -904f, arg_0)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, global2.b.b, 785f, global2.a.b) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, arg_0, -1784f) + vec4<f32>(-1644f, -1845f, global2.c.x, arg_1))) + vec4<f32>(1319f, _wgslsmith_f_op_f32(sign(arg_0)), global2.c.x, 1675f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -429f, global2.a.b, 123f) + vec4<f32>(1371f, 738f, arg_0, -948f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.c.x, global4[_wgslsmith_index_u32(u_input.c.x, 21u)], -667f, arg_1) * vec4<f32>(arg_0, global4[_wgslsmith_index_u32(u_input.b, 21u)], 862f, 581f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1759f, -346f, global4[_wgslsmith_index_u32(99782u, 21u)], arg_1), vec4<f32>(1000f, global4[_wgslsmith_index_u32(u_input.c.x, 21u)], 413f, -1097f)) + _wgslsmith_div_vec4_f32(vec4<f32>(-469f, global4[_wgslsmith_index_u32(u_input.b, 21u)], arg_0, 1333f), vec4<f32>(arg_1, -910f, 2393f, global2.c.x)))))));
    global3 = array<Struct_3, 6>();
    global3 = array<Struct_3, 6>();
    let var_2 = u_input.c.x;
    return _wgslsmith_dot_vec4_i32(select(-vec4<i32>(select(-44437i, u_input.d.x, true), -2147483647i, u_input.d.x, _wgslsmith_mod_i32(u_input.d.x, -2147483647i)), _wgslsmith_clamp_vec4_i32(abs(~vec4<i32>(0i, 44758i, u_input.d.x, -2147483647i)), vec4<i32>(~0i, max(-12500i, 14132i), global2.d >> (var_2 % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, u_input.d.x, u_input.d.x, global2.d), vec4<i32>(global1.x, 16556i, u_input.d.x, u_input.d.x))), select(vec4<i32>(-57617i, 1i, global1.x, global2.d), vec4<i32>(global2.d, u_input.d.x, u_input.d.x, -1i), var_2 <= var_2)), false), _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32((vec4<i32>(2147483647i, global2.d, 43118i, global2.d) | vec4<i32>(2147483647i, global2.d, 0i, -2147483647i)) ^ select(vec4<i32>(global1.x, u_input.d.x, global1.x, global1.x), vec4<i32>(63539i, -2147483647i, 1i, -47936i), global0[_wgslsmith_index_u32(0u, 21u)]), _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(global1.x, global1.x, global1.x, global1.x)), min(vec4<i32>(u_input.d.x, global2.d, 17803i, 18925i), vec4<i32>(u_input.d.x, global2.d, -2147483647i, global2.d)), ~vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x))), abs(-vec4<i32>(global1.x, global1.x, global2.d, 1i)) ^ vec4<i32>(29072i, global2.d, firstLeadingBit(-1i), ~global1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = -vec4<i32>(abs(func_1(u_input.a, global2.b)), _wgslsmith_dot_vec4_i32(vec4<i32>(30134i, 2147483647i, -29835i, global1.x), ~vec4<i32>(0i, u_input.d.x, global2.d, global1.x)), 11913i, -4129i) ^ _wgslsmith_mod_vec4_i32(~(-vec4<i32>(global2.d, 22870i, global1.x, -2147483647i)), abs(vec4<i32>(abs(592i), func_3(global4[_wgslsmith_index_u32(u_input.a.x, 21u)], 301f), -18404i, min(42528i, u_input.d.x))));
    let var_0 = vec2<i32>(_wgslsmith_sub_i32(u_input.d.x, _wgslsmith_dot_vec2_i32(u_input.d.xx, u_input.d.xx & ~vec2<i32>(global1.x, -2147483647i))), 21297i);
    let var_1 = abs(~40639u);
    var var_2 = _wgslsmith_mod_vec2_u32(abs(abs(_wgslsmith_add_vec2_u32(u_input.a.wx, vec2<u32>(u_input.c.x, var_1)))) & firstLeadingBit(vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), 48941u)), min(~(~reverseBits(vec2<u32>(u_input.a.x, 4294967295u))), ~u_input.c));
    let var_3 = global2.b.a;
    global4 = array<f32, 21>();
    var var_4 = vec3<f32>(global4[_wgslsmith_index_u32(u_input.a.x, 21u)], _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(95458u, 21u)] * global4[_wgslsmith_index_u32(~(~1u), 21u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.c.x, _wgslsmith_f_op_f32(-754f + global4[_wgslsmith_index_u32(u_input.a.x, 21u)]))) - _wgslsmith_div_f32(1496f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2.c.x, 727f))))));
    let x = u_input.a;
    s_output = StorageBuffer(global1.wx, 1231f);
}

