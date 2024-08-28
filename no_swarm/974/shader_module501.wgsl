struct Struct_1 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<vec3<f32>, 9> = array<vec3<f32>, 9>(vec3<f32>(-511f, -347f, -1154f), vec3<f32>(646f, -1069f, 557f), vec3<f32>(2318f, 1558f, -1364f), vec3<f32>(-824f, 1024f, 139f), vec3<f32>(1400f, -1407f, 1033f), vec3<f32>(-1518f, 578f, 810f), vec3<f32>(790f, 462f, 1000f), vec3<f32>(-435f, -882f, 1026f), vec3<f32>(-121f, 293f, 604f));

var<private> global2: array<f32, 6>;

var<private> global3: Struct_1;

var<private> global4: vec4<bool> = vec4<bool>(true, false, false, false);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = arg_0;
    var_0 = Struct_1(var_0.a, global3.a);
    var var_1 = false & !global4.x;
    let var_2 = arg_0;
    return var_0.b;
}

fn func_2() -> Struct_1 {
    let var_0 = vec4<u32>(0u, 20566u, 81892u, ~_wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(global0.yw, global0.xx), _wgslsmith_div_u32(4294967295u, u_input.b.x >> (4294967295u % 32u))));
    global3 = Struct_1(10114i, -_wgslsmith_mult_i32(-u_input.d | (i32(-1i) * -30289i), ~_wgslsmith_sub_i32(global3.b, -58471i)));
    global3 = Struct_1(-func_3(Struct_1(55939i, 1i)), ~(countOneBits(54023i) & u_input.d));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1307f)))), -749f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(u_input.b.x, 6u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(var_0.x, 6u)])) * global2[_wgslsmith_index_u32(~var_0.x, 6u)]), global4.x))), _wgslsmith_f_op_f32(abs(770f)));
    global2 = array<f32, 6>();
    return Struct_1(max(u_input.a.x, u_input.c.x), _wgslsmith_mult_i32(func_3(Struct_1(_wgslsmith_mult_i32(-65882i, u_input.d), select(u_input.d, global3.b, false))), 2147483647i));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global0 = _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.b.x, 4294967295u, global0.x | global0.x, u_input.b.x), ~(~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.b.x, 1u), vec4<u32>(46156u, 11124u, 77550u, 2599u)))), vec4<u32>(u_input.b.x, _wgslsmith_add_u32(17348u, global0.x), ~global0.x, ~(_wgslsmith_sub_u32(4294967295u, u_input.b.x) >> (~global0.x % 32u))));
    let var_0 = !all(select(vec2<bool>(false, global4.x & global4.x), select(vec2<bool>(global4.x, false), !global4.yz, global4.x), global4.wz));
    var var_1 = func_2();
    global4 = !select(!(!vec4<bool>(true, false, global4.x, true)), select(vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 6u)] > global2[_wgslsmith_index_u32(global0.x, 6u)], false, true, any(global4.wyw)), select(vec4<bool>(false, var_0, false, true), !vec4<bool>(false, global4.x, global4.x, true), false), !select(vec4<bool>(var_0, false, true, var_0), vec4<bool>(true, false, false, true), vec4<bool>(var_0, global4.x, true, false))), !(!(true | global4.x)));
    global0 = vec4<u32>(abs(global0.x), u_input.b.x, _wgslsmith_mult_u32(~firstLeadingBit(global0.x), global0.x), 68466u) | (vec4<u32>(u_input.b.x << (1u % 32u), firstTrailingBit(global0.x << (18358u % 32u)), 4294967295u, countOneBits(u_input.b.x) ^ ~global0.x) | max(select(vec4<u32>(global0.x, global0.x, u_input.b.x, 133u), _wgslsmith_mult_vec4_u32(vec4<u32>(76716u, 27112u, 0u, 0u), vec4<u32>(0u, 27027u, 4294967295u, 107u)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, global4.x, var_0, var_0), var_0)), vec4<u32>(select(global0.x, 54334u, var_0), 0u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, global0.x), vec3<u32>(u_input.b.x, global0.x, 2345u)), 97405u)));
    return arg_0;
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: vec4<f32>) -> Struct_1 {
    var var_0 = vec4<bool>((((41823u < u_input.b.x) || (u_input.b.x != 8922u)) | global4.x) || global4.x, any(global4.zx), true, global4.x || global4.x);
    var var_1 = true;
    var var_2 = vec4<bool>(any(select(select(vec4<bool>(true, true, var_0.x, true), vec4<bool>(global4.x, global4.x, global4.x, false), vec4<bool>(global4.x, true, global4.x, false)), !vec4<bool>(false, var_0.x, true, var_0.x), true)) & ((reverseBits(u_input.b.x) ^ ~global0.x) == _wgslsmith_add_u32(~96750u, 28056u)), any(vec3<bool>(u_input.a.x < 93252i, var_0.x, false)), !(((arg_2.x == arg_2.x) | true) || any(select(global4.zxw, vec3<bool>(global4.x, global4.x, true), true))), all(!vec4<bool>(true, global4.x, false, global4.x)) && (_wgslsmith_f_op_f32(select(-806f, global2[_wgslsmith_index_u32(select(global0.x, 4294967295u, false), 6u)], var_0.x)) == _wgslsmith_f_op_f32(f32(-1f) * -526f)));
    global4 = select(!vec4<bool>(var_0.x, true, !var_2.x && all(var_0.yxx), all(var_0.zyw)), vec4<bool>(false, var_0.x, global4.x, var_2.x), any(vec3<bool>(!global4.x | (arg_1.a < global3.a), any(var_0.ywx), var_2.x & global4.x)));
    global1 = array<vec3<f32>, 9>();
    return arg_1;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_sub_i32(u_input.a.x, _wgslsmith_dot_vec4_i32(u_input.a, -vec4<i32>(-2147483647i, global3.a, arg_0.a, -3050i))), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(max(0i, 1i), ~u_input.a.x, u_input.c.x, ~1i), max(~vec4<i32>(arg_0.b, u_input.c.x, 40232i, 2147483647i), ~u_input.a)), u_input.a));
    var var_1 = func_5(-13711i, func_4(func_2()), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(u_input.b.x, 6u)])), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(42967u, 6u)] + global2[_wgslsmith_index_u32(4294967295u, 6u)]), 100f, 1105f)))));
    global2 = array<f32, 6>();
    let var_2 = Struct_1(-2147483647i, ~(~(-reverseBits(var_1.a))));
    global4 = vec4<bool>(true, true, true, !(false != all(!vec4<bool>(true, false, global4.x, false))));
    return func_4(arg_0);
}

fn func_6(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_1 {
    global0 = ~max(~vec4<u32>(~global0.x, u_input.b.x & global0.x, _wgslsmith_sub_u32(36629u, 27674u), u_input.b.x), vec4<u32>(global0.x, ~(~0u), ~(4294967295u & u_input.b.x), ~(~0u)));
    global3 = Struct_1(global3.a, i32(-1i) * -16834i);
    global1 = array<vec3<f32>, 9>();
    return Struct_1(-5791i, firstLeadingBit(-2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_1(Struct_1(~_wgslsmith_add_i32(u_input.d, -46749i), 1i), ~vec4<u32>(1u, ~1u, ~global0.x, firstLeadingBit(global0.x))), !(!select(vec4<bool>(false, true, global4.x, global4.x), !vec4<bool>(true, global4.x, true, false), vec4<bool>(global4.x, true, global4.x, global4.x))));
    let var_1 = func_2();
    global0 = vec4<u32>(_wgslsmith_div_u32(u_input.b.x, u_input.b.x), 0u, (_wgslsmith_dot_vec4_u32(vec4<u32>(94315u, global0.x, 110041u, 1u) & vec4<u32>(u_input.b.x, 7284u, 52421u, global0.x), _wgslsmith_mult_vec4_u32(vec4<u32>(29832u, 1u, 53683u, global0.x), vec4<u32>(29650u, u_input.b.x, global0.x, 4294967295u))) ^ ~global0.x) << (~(~u_input.b.x) % 32u), u_input.b.x);
    var var_2 = var_0;
    let var_3 = var_1;
    var_2 = Struct_1(u_input.c.x, i32(-1i) * -(i32(-1i) * -var_0.b));
    global3 = Struct_1(_wgslsmith_div_i32(var_0.b, var_0.b), var_0.b);
    var var_4 = func_5(_wgslsmith_add_i32(firstTrailingBit(_wgslsmith_div_i32(1i, 17158i)), _wgslsmith_sub_i32(71821i, firstTrailingBit(-var_1.b))), var_3, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1034f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-138f)) + -1000f), -290f, _wgslsmith_f_op_f32(max(350f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.b.x, 6u)] + 1000f))))));
    let var_5 = vec2<f32>(140f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(select(u_input.b.x, u_input.b.x, global4.x), ~u_input.b.x, global0.x), 6u)], global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(u_input.b.x, u_input.b.x), 6u)]) + -1633f));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_add_u32(10378u, 19795u), 4294967295u, ~max(4294967295u, u_input.b.x)), var_5.x, max(~(~_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(0u, u_input.b.x))), ~vec2<u32>(0u ^ global0.x, min(global0.x, u_input.b.x))));
}

