struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<bool>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: f32,
    d: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<bool>,
    c: Struct_1,
    d: bool,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<f32, 7>;

var<private> global2: array<vec4<u32>, 22> = array<vec4<u32>, 22>(vec4<u32>(40519u, 71194u, 1u, 64733u), vec4<u32>(1u, 0u, 4294967295u, 0u), vec4<u32>(4294967295u, 0u, 59140u, 0u), vec4<u32>(25186u, 0u, 1u, 4609u), vec4<u32>(1u, 45303u, 33096u, 4294967295u), vec4<u32>(24549u, 85564u, 1u, 67534u), vec4<u32>(16510u, 4294967295u, 1u, 4294967295u), vec4<u32>(1u, 35982u, 4294967295u, 0u), vec4<u32>(4294967295u, 0u, 11518u, 35090u), vec4<u32>(17904u, 23654u, 4294967295u, 4294967295u), vec4<u32>(10185u, 28330u, 0u, 64148u), vec4<u32>(0u, 1u, 23920u, 0u), vec4<u32>(76910u, 1u, 56456u, 4294967295u), vec4<u32>(61456u, 1u, 21194u, 4294967295u), vec4<u32>(1551u, 0u, 9600u, 4294967295u), vec4<u32>(60041u, 29040u, 3195u, 56942u), vec4<u32>(24165u, 28702u, 16862u, 38930u), vec4<u32>(4294967295u, 24993u, 52031u, 89055u), vec4<u32>(15091u, 5581u, 54590u, 1u), vec4<u32>(0u, 12236u, 0u, 0u), vec4<u32>(1u, 1u, 49453u, 4294967295u), vec4<u32>(1u, 0u, 0u, 4294967295u));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec3<f32>) -> f32 {
    var var_0 = Struct_5(Struct_3(arg_0), vec2<bool>(u_input.a.x <= global0.d, any(vec3<bool>(all(vec2<bool>(global0.b.c.x, global0.b.c.x)), false, true))), global0.b, !(!(global0.a < 11244u)), Struct_3(-arg_0));
    global1 = array<f32, 7>();
    var var_1 = var_0.e;
    let var_2 = global0.b;
    let var_3 = any(!vec4<bool>(all(vec3<bool>(var_0.c.c.x, var_2.c.x, false)), false, true, !any(vec4<bool>(false, false, true, global0.b.c.x))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1.x * -1094f), _wgslsmith_f_op_f32(var_0.c.a - -1421f))), var_0.c.a)), var_0.c.a)));
}

fn func_2() -> Struct_1 {
    var var_0 = ~vec2<u32>(global0.b.b, 1u);
    let var_1 = Struct_2(global0.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-584f + global0.c), _wgslsmith_f_op_f32(675f - 2030f), 1462f))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(695f, global0.b.a, global0.c)) + vec3<f32>(global0.c, global1[_wgslsmith_index_u32(var_0.x, 7u)], -591f)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 7u)], global0.b.a, global1[_wgslsmith_index_u32(global0.b.b, 7u)]) + vec3<f32>(global1[_wgslsmith_index_u32(var_0.x, 7u)], -278f, global1[_wgslsmith_index_u32(global0.b.b, 7u)])), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -545f, global1[_wgslsmith_index_u32(4294967295u, 7u)]) + vec3<f32>(global1[_wgslsmith_index_u32(var_0.x, 7u)], 1000f, global0.b.a)))))));
    var var_2 = var_1;
    return Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(-var_1.a.d.x & (i32(-1i) * -2147483647i), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_2.b, vec3<f32>(2496f, -1268f, 113f)) - vec3<f32>(var_2.a.a, 421f, -263f)))))), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, ~(~0u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a.b, var_2.a.b, global0.b.b) >> (vec3<u32>(var_0.x, 4294967295u, global0.b.b) % vec3<u32>(32u)), ~vec3<u32>(var_1.a.b, 18524u, 11250u))), vec3<u32>(~var_0.x, global0.a, 16896u)), !vec3<bool>(global0.b.c.x, !(!global0.b.c.x), var_2.a.c.x), global0.b.d ^ _wgslsmith_clamp_vec3_i32(vec3<i32>(~(-31957i), ~(-1i), u_input.a.x), select(var_1.a.d & vec3<i32>(var_2.a.d.x, global0.d, var_1.a.d.x), vec3<i32>(-1046i, 10173i, -2545i), var_2.a.c.x), _wgslsmith_div_vec3_i32(firstLeadingBit(var_1.a.d), -var_1.a.d)));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: vec3<u32>) -> u32 {
    global2 = array<vec4<u32>, 22>();
    var var_0 = Struct_3(_wgslsmith_add_i32(firstTrailingBit(_wgslsmith_mult_i32(-1i, 2147483647i)), arg_1.d.x));
    global0 = Struct_4(arg_1.b, func_2(), _wgslsmith_f_op_f32(-global0.b.a), ~var_0.a);
    let var_1 = arg_1.b;
    var var_2 = vec4<bool>(any(select(vec4<bool>(177f <= global1[_wgslsmith_index_u32(25537u, 7u)], func_2().c.x, any(arg_1.c.zy), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, arg_1.c.x), !vec4<bool>(true, arg_2.x, arg_1.c.x, true)), !vec4<bool>(arg_1.c.x, arg_2.x, arg_1.c.x, false))), arg_2.x, all(vec2<bool>(false, !global0.b.c.x)), all(select(select(vec4<bool>(true, arg_2.x, false, arg_2.x), vec4<bool>(arg_1.c.x, arg_1.c.x, false, false), true), vec4<bool>(arg_1.c.x, false, arg_1.c.x, global0.a <= var_1), arg_1.a >= -685f)));
    return arg_3.x;
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-628f * -567f), global0.a, select(vec3<bool>(arg_0, 443f <= global0.b.a, -18822i > global0.d), global0.b.c, !(!global0.b.c)), vec3<i32>((i32(-1i) * -13812i) ^ global0.b.d.x, ~u_input.a.x, -u_input.a.x | -8773i)), vec3<f32>(global0.b.a, 1918f, _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(ceil(-844f)))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1283f))));
    global0 = Struct_4(_wgslsmith_add_u32(_wgslsmith_clamp_u32(firstLeadingBit(17884u), ~global0.a, ~global0.b.b), _wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.a.b, 11362u, 4294967295u, 60584u), firstLeadingBit(global2[_wgslsmith_index_u32(global0.a, 22u)]))) | ~(~30229u), global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(47462u, 7u)] - -219f)), var_0.a.d.x);
    var var_2 = any(vec3<bool>(all(!global0.b.c.yy), arg_1, arg_0));
    global1 = array<f32, 7>();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(firstTrailingBit(_wgslsmith_sub_u32((20098u << (global0.b.b % 32u)) >> (_wgslsmith_mod_u32(global0.a, global0.a) % 32u), _wgslsmith_add_u32(~38337u, global0.a))), func_4(any(vec4<bool>(true, true, !global0.b.c.x, !global0.b.c.x)), global0.b.c.x != true, vec2<i32>((global0.d | global0.d) << (func_1(global0.b.d, Struct_1(-388f, global0.a, global0.b.c, global0.b.d), global0.b.c, vec3<u32>(global0.a, 1u, 17870u)) % 32u), firstTrailingBit(-u_input.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1762f + 492f)) + global0.c)), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(~(-vec4<i32>(-1i, u_input.a.x, 2147483647i, 10178i)), vec4<i32>(max(global0.d, -6321i), reverseBits(global0.d), global0.b.d.x, func_4(false, true, vec2<i32>(global0.b.d.x, global0.b.d.x)).d.x)), vec4<i32>(1i, -13088i, func_4(global0.b.c.x, true, global0.b.d.yz).d.x, -77544i) >> (vec4<u32>(4294967295u << (global0.b.b % 32u), ~global0.a, ~17406u, ~global0.b.b) % vec4<u32>(32u))));
    let var_1 = ~vec2<i32>(global0.b.d.x, _wgslsmith_mult_i32(global0.b.d.x, u_input.a.x));
    global0 = var_0;
    var var_2 = Struct_4(func_1(var_0.b.d, global0.b, vec3<bool>(func_4(7203u >= var_0.b.b, false, vec2<i32>(var_1.x, 12364i)).c.x, true, any(!vec2<bool>(true, global0.b.c.x))), ~countOneBits(abs(vec3<u32>(global0.b.b, var_0.b.b, global0.b.b)))), func_2(), _wgslsmith_f_op_f32(-func_2().a), i32(-1i) * -26835i);
    var var_3 = vec2<bool>(var_0.b.c.x, select(true, func_4((global0.b.d.x <= global0.b.d.x) && all(vec2<bool>(global0.b.c.x, var_2.b.c.x)), true, var_1).c.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-513f + var_0.b.a), var_0.b.a, all(vec3<bool>(true, var_2.b.c.x, true)))) != 1140f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(995f, _wgslsmith_f_op_f32(global0.b.a - _wgslsmith_f_op_f32(f32(-1f) * -364f)))), vec3<u32>(select(var_2.a, var_2.a | 27686u, true), 72903u, select(1u, var_0.a, true) ^ ~0u) | abs(~vec3<u32>(global0.a, var_2.b.b, var_2.b.b) >> (~vec3<u32>(global0.a, 26822u, 0u) % vec3<u32>(32u))), countOneBits(_wgslsmith_mult_vec4_u32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 32723u, var_2.b.b, global0.a), global2[_wgslsmith_index_u32(var_2.a << (0u % 32u), 22u)]), 22u)], global2[_wgslsmith_index_u32(1u, 22u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(2836f)) - _wgslsmith_div_f32(-653f, 619f)) * _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~1u, 7u)] * var_0.c))));
}

