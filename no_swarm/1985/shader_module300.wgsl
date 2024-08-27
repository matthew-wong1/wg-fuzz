struct Struct_1 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-456f, -1475f, 568f);

var<private> global1: array<Struct_4, 18>;

var<private> global2: u32;

var<private> global3: array<f32, 14>;

var<private> global4: Struct_5 = Struct_5(true);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: vec3<i32>) -> vec3<u32> {
    global1 = array<Struct_4, 18>();
    let var_0 = true;
    global1 = array<Struct_4, 18>();
    let var_1 = 4556u;
    global2 = var_1;
    return abs(~vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.b, _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, arg_0, 0u, arg_0), vec4<u32>(u_input.a, arg_0, 27934u, 4294967295u))), u_input.b.x, 0u));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<u32>, arg_2: bool) -> vec3<bool> {
    let var_0 = func_3(59503u, 15394i | ((i32(-1i) * -2147483647i) | (-50383i << (~arg_1.x % 32u))), -vec3<i32>(min(-19874i, -37585i), _wgslsmith_dot_vec3_i32(vec3<i32>(-10500i, 45533i, 54068i), vec3<i32>(54294i, -50612i, 52014i)), 0i) << (u_input.b.xxy % vec3<u32>(32u)));
    let var_1 = Struct_2(arg_0.zz, Struct_1(firstTrailingBit(-min(-1015i, 22206i)), _wgslsmith_f_op_vec2_f32(global0.yy - _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1322f, global3[_wgslsmith_index_u32(var_0.x, 14u)]), global0.zx), _wgslsmith_f_op_vec2_f32(-global0.yz)))));
    let var_2 = Struct_4(arg_0, var_1.b, var_1, var_1);
    var var_3 = Struct_3(var_2.c.a.x, Struct_1(-26439i, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1236f, global3[_wgslsmith_index_u32(23612u, 14u)]), _wgslsmith_f_op_vec2_f32(sign(var_2.d.b.b))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.x, global3[_wgslsmith_index_u32(0u, 14u)]))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(43206u, 14u)], 386f))))));
    return arg_0.xzy;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: vec3<f32>) -> u32 {
    let var_0 = firstTrailingBit(arg_0 | (~(~vec3<i32>(arg_1.b.a, 0i, 1i)) ^ vec3<i32>(-16466i, arg_0.x | -2147483647i, arg_1.b.a)));
    let var_1 = ~u_input.b.x;
    var var_2 = _wgslsmith_clamp_i32(var_0.x, _wgslsmith_sub_i32(11829i, -1i), i32(-1i) * -1i);
    global0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_3 + vec3<f32>(arg_1.b.b.x, arg_1.b.b.x, -1248f))) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.x, global0.x, 699f))))), vec3<f32>(289f, global0.x, -687f)));
    let var_3 = arg_1;
    return ~6189u;
}

fn func_5(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_5, arg_3: vec2<bool>) -> Struct_5 {
    var var_0 = true;
    let var_1 = vec3<f32>(-128f, _wgslsmith_f_op_f32(f32(-1f) * -1025f), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.b.x, 14u)]));
    global3 = array<f32, 14>();
    global3 = array<f32, 14>();
    global4 = arg_2;
    return arg_2;
}

fn func_1(arg_0: vec3<bool>) -> f32 {
    let var_0 = -29376i;
    global2 = 64619u;
    global4 = func_5((abs(select(vec2<u32>(22196u, u_input.b.x), u_input.b.zx, arg_0.x)) & ~u_input.b.xx) & vec2<u32>(func_4(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0, -2147483647i, var_0), vec3<i32>(var_0, var_0, var_0)), Struct_2(arg_0.yx, Struct_1(1i, vec2<f32>(global0.x, 679f))), func_2(vec4<bool>(false, true, true, global4.a), u_input.b.xy, global4.a), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-405f, 796f, 316f)))), (u_input.a ^ u_input.a) | 1u), abs(~min(~(-2147483647i), var_0)), Struct_5(u_input.a <= ~_wgslsmith_div_u32(u_input.b.x, 0u)), vec2<bool>(arg_0.x != true, func_2(vec4<bool>(all(arg_0), global0.x != 1000f, any(vec4<bool>(arg_0.x, arg_0.x, true, global4.a)), true), vec2<u32>(_wgslsmith_mult_u32(u_input.b.x, u_input.a), u_input.b.x & u_input.b.x), false).x));
    var var_1 = Struct_3(arg_0.x, Struct_1(var_0, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(select(1869f, -1086f, false))) * global0.yx)));
    let var_2 = -select(-vec2<i32>(-var_0, var_0), firstTrailingBit(countOneBits(vec2<i32>(-1224i, -28356i))), !vec2<bool>(global4.a, false));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1687f * -518f) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(~countOneBits(0u), 14u)] * global0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(92348u, 14u)], global0.x, global3[_wgslsmith_index_u32(1u, 14u)]) - vec3<f32>(894f, 281f, -2019f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-113f, 1000f, global0.x) + vec3<f32>(1290f, global0.x, -455f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-2911f, -1000f, global0.x), vec3<f32>(global3[_wgslsmith_index_u32(61073u, 14u)], -563f, -866f))) * vec3<f32>(-1403f, 1025f, global0.x)))))));
    global4 = Struct_5(false);
    let var_0 = vec2<u32>(25095u, ~(~(~u_input.a << (4294967295u % 32u))));
    global1 = array<Struct_4, 18>();
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(select(!vec3<bool>(false, global4.a, global4.a), vec3<bool>(false, global4.a, false), false))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.a, 14u)]) * -628f)), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(57949u, 14u)]));
    let var_2 = vec4<i32>(firstTrailingBit(_wgslsmith_sub_i32(_wgslsmith_add_i32(-12014i, ~14910i), 1i)), _wgslsmith_sub_i32(_wgslsmith_mod_i32(_wgslsmith_add_i32(0i, _wgslsmith_sub_i32(-7910i, -8362i)), abs(abs(-33047i))), _wgslsmith_add_i32(firstTrailingBit(_wgslsmith_mod_i32(2147483647i, -59388i)), -select(-17859i, -21275i, global4.a))), -_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 2147483647i) << (u_input.b.xw % vec2<u32>(32u)), ~(-vec2<i32>(18426i, -7623i))), _wgslsmith_mult_i32(~0i, firstLeadingBit(-5354i)));
    let var_3 = global1[_wgslsmith_index_u32(var_0.x, 18u)];
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.zz));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(select(u_input.b.x, 26390u >> (1u % 32u), global4.a != var_3.a.x), 14u)], global0.x))));
}

