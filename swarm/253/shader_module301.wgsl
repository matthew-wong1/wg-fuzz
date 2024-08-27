struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: f32,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<u32>,
    c: i32,
    d: vec2<f32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 12>;

var<private> global1: vec3<f32> = vec3<f32>(-131f, -1779f, -2265f);

var<private> global2: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(vec4<u32>(0u, 47932u, 12038u, 4294967295u)), Struct_2(vec4<u32>(4294967295u, 4294967295u, 62257u, 4294967295u)), Struct_2(vec4<u32>(1u, 42820u, 52821u, 4294967295u)), Struct_2(vec4<u32>(4294967295u, 1u, 58067u, 4294967295u)), Struct_2(vec4<u32>(1u, 69354u, 0u, 22617u)), Struct_2(vec4<u32>(4294967295u, 59153u, 1u, 28226u)), Struct_2(vec4<u32>(4294967295u, 65214u, 4294967295u, 36666u)), Struct_2(vec4<u32>(86728u, 0u, 4294967295u, 0u)), Struct_2(vec4<u32>(7000u, 15750u, 48048u, 1u)), Struct_2(vec4<u32>(0u, 1u, 42009u, 1u)), Struct_2(vec4<u32>(96421u, 25571u, 6425u, 61789u)), Struct_2(vec4<u32>(0u, 44018u, 28625u, 16247u)), Struct_2(vec4<u32>(46352u, 1u, 68493u, 0u)), Struct_2(vec4<u32>(4294967295u, 4294967295u, 65784u, 769u)), Struct_2(vec4<u32>(4294967295u, 1u, 12005u, 36379u)), Struct_2(vec4<u32>(1u, 4294967295u, 15629u, 44373u)), Struct_2(vec4<u32>(11855u, 7922u, 47530u, 36663u)));

var<private> global3: array<vec2<u32>, 10>;

var<private> global4: array<u32, 19> = array<u32, 19>(78347u, 4294967295u, 87835u, 4294967295u, 14354u, 4294967295u, 4294967295u, 39704u, 85887u, 1u, 10553u, 1u, 1u, 31369u, 11854u, 0u, 946u, 86133u, 70395u);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: bool) -> f32 {
    global0 = array<f32, 12>();
    var var_0 = false;
    var_0 = true;
    let var_1 = firstTrailingBit(10356i);
    global2 = array<Struct_2, 17>();
    return _wgslsmith_f_op_f32(max(143f, -1439f));
}

fn func_2(arg_0: vec2<u32>) -> vec3<i32> {
    let var_0 = Struct_3(-319f, vec4<i32>(1995i, u_input.e, reverseBits(u_input.e), u_input.d.x), Struct_1(!(177f == global0[_wgslsmith_index_u32(firstLeadingBit(0u), 12u)])));
    global1 = vec3<f32>(-1000f, _wgslsmith_f_op_f32(abs(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)));
    global3 = array<vec2<u32>, 10>();
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_div_f32(global1.x, global1.x), _wgslsmith_f_op_f32(297f * global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b.x, 19u)], 12u)]), 530f))), vec3<f32>(global1.x, _wgslsmith_f_op_f32(global1.x - 208f), _wgslsmith_f_op_f32(func_3(0i, 1000f, var_0.c.a)))) + vec3<f32>(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(arg_0.x, 12u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1507f))), global1.x));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.x)))), 393f, _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(~(~0u), 12u)]))));
    return vec3<i32>(abs(firstTrailingBit(-1i)), ~(-1i), abs(_wgslsmith_div_i32(u_input.e, -(~(-25483i)))));
}

fn func_1(arg_0: vec4<f32>) -> vec4<i32> {
    let var_0 = _wgslsmith_mult_vec4_u32(u_input.b, u_input.b);
    let var_1 = ~(-countOneBits(-func_2(vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(9734u, 19u)], 19u)], 19u)], 57655u))));
    var var_2 = _wgslsmith_sub_i32(0i, _wgslsmith_mod_i32(u_input.d.x, -1i));
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_0.x * 860f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(var_1.x, _wgslsmith_f_op_f32(sign(185f)), true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1.x + -381f))))));
    var var_4 = !select(select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(false, true), true), select(vec2<bool>(true, true), vec2<bool>(true, true), false)), vec2<bool>((var_1.x == u_input.d.x) & (var_0.x > 8636u), ~global4[_wgslsmith_index_u32(var_0.x, 19u)] <= u_input.b.x), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), false), true), vec2<bool>(true, true)));
    return vec4<i32>(var_1.x, -(((var_1.x | 0i) & _wgslsmith_div_i32(-55621i, -44158i)) | _wgslsmith_mod_i32(max(87118i, u_input.e), var_1.x)), firstTrailingBit(_wgslsmith_mod_i32(~_wgslsmith_clamp_i32(u_input.e, var_1.x, u_input.e), 14317i & u_input.d.x)), select(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, u_input.e, u_input.d.x), var_1 >> (u_input.b.yyw % vec3<u32>(32u))), func_2(~u_input.b.zx)), u_input.d.x, var_4.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(32821i, -14320i, u_input.e, u_input.e), vec4<i32>(u_input.e, u_input.e, 73474i, u_input.d.x), vec4<i32>(u_input.e, u_input.e, -2147483647i, 0i) ^ vec4<i32>(2147483647i, -28691i, 0i, u_input.d.x)), func_1(vec4<f32>(global1.x, -857f, global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a, 19u)], 12u)], -414f))) | ~abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1406i, u_input.d.x, 54500i, -1i), vec4<i32>(15860i, -2147483647i, u_input.e, u_input.d.x), vec4<i32>(u_input.d.x, u_input.e, u_input.d.x, 21277i))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global1.x), global1.x));
    global3 = array<vec2<u32>, 10>();
    var var_2 = var_0.x;
    let var_3 = func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(889f, -2050f)) - global1.x), global0[_wgslsmith_index_u32(u_input.c, 12u)], _wgslsmith_f_op_f32(floor(1f)), -381f))).wzz;
    var var_4 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(0i | func_1(vec4<f32>(var_1.x, global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b.x, 19u)], 12u)], global1.x, -3133f)).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-312f, -302f, true))), false)), var_1.x, true))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(var_3.x, var_0.x, _wgslsmith_mod_i32(u_input.d.x >> (countOneBits(u_input.c) % 32u), -2147483647i), -max(_wgslsmith_mod_i32(25822i, u_input.d.x), select(-70112i, var_0.x, false))));
}

