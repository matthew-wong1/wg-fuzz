struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: i32,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<i32>,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<bool, 2>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> vec3<bool> {
    return vec3<bool>(global1[_wgslsmith_index_u32(25419u, 2u)], !arg_0.c, true);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: f32) -> vec2<bool> {
    var var_0 = Struct_1(1i, ~_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, arg_0.b, -27965i) << ((vec3<u32>(arg_1.a, arg_1.a, arg_1.a) & vec3<u32>(1u, arg_1.a, 4294967295u)) % vec3<u32>(32u)), vec3<i32>(arg_1.c.a, _wgslsmith_mult_i32(27824i, -20106i), _wgslsmith_mult_i32(arg_1.e.a, -41029i))), any(func_1(arg_1.c, -22353i)), !(!(!global1[_wgslsmith_index_u32(arg_1.a, 2u)])) | true);
    let var_1 = abs(arg_1.a);
    let var_2 = ~firstLeadingBit(1u);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(322f)));
    let var_4 = any(select(!(!(!vec2<bool>(false, global1[_wgslsmith_index_u32(6413u, 2u)]))), select(vec2<bool>(true, true), vec2<bool>(var_0.d, arg_1.c.d & false), vec2<bool>(true, true)), -1840f == arg_1.d.x));
    return !func_1(Struct_1(2147483647i, _wgslsmith_mod_vec3_i32(min(arg_1.e.b, vec3<i32>(-2147483647i, var_0.a, var_0.b.x)), ~vec3<i32>(1i, arg_1.e.a, arg_0.b)), arg_1.a < var_2, true), -var_0.b.x).yz;
}

fn func_4(arg_0: Struct_4, arg_1: vec4<i32>, arg_2: vec3<bool>, arg_3: vec2<bool>) -> vec3<bool> {
    global0 = vec4<f32>(_wgslsmith_f_op_f32(step(2067f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-356f)) - -1749f) + 1733f))), arg_0.a.d.x, _wgslsmith_f_op_f32(min(1222f, arg_0.a.d.x)), arg_0.a.d.x);
    let var_0 = Struct_1(37770i, -_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(arg_1.x, u_input.a, 2147483647i), vec3<i32>(arg_1.x, arg_0.c.a, arg_1.x)), vec3<i32>(-29546i, _wgslsmith_mult_i32(u_input.b.x, -1i), 1i)), all(vec3<bool>(all(!vec4<bool>(false, arg_2.x, global1[_wgslsmith_index_u32(arg_0.d.x, 2u)], arg_0.c.c)), global1[_wgslsmith_index_u32(56781u, 2u)], (arg_0.b.x < arg_1.x) | all(arg_2.yz))), select(true, !(!all(vec4<bool>(arg_3.x, false, arg_3.x, arg_0.a.c.c))), arg_0.a.e.c));
    global1 = array<bool, 2>();
    var var_1 = arg_0;
    global1 = array<bool, 2>();
    return select(!arg_2, select(arg_2, arg_2, !arg_0.c.c), -733f > _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.a.d.x))))));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: vec4<f32>) -> u32 {
    var var_0 = vec2<bool>(all(func_4(Struct_4(Struct_3(4294967295u, 2147483647i, Struct_1(arg_1.x, vec3<i32>(u_input.b.x, -1i, -35149i), true, global1[_wgslsmith_index_u32(1u, 2u)]), global0.zz, Struct_1(u_input.a, vec3<i32>(arg_0.b, arg_0.b, u_input.a), false, false)), _wgslsmith_sub_vec4_i32(arg_1, vec4<i32>(-2147483647i, u_input.a, -2147483647i, 19327i)), Struct_1(-10840i, vec3<i32>(u_input.a, arg_1.x, u_input.a), true, global1[_wgslsmith_index_u32(36157u, 2u)]), ~vec3<u32>(10559u, 19109u, 34219u)), arg_1, vec3<bool>(true, false, true), func_3(arg_0, Struct_3(10597u, 0i, Struct_1(2147483647i, vec3<i32>(u_input.b.x, -2147483647i, 5057i), false, false), arg_2.xx, Struct_1(37191i, vec3<i32>(arg_1.x, arg_1.x, 29093i), global1[_wgslsmith_index_u32(5905u, 2u)], false)), _wgslsmith_f_op_f32(1746f + 275f)))), global1[_wgslsmith_index_u32(~(29871u | ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 38789u), vec3<u32>(15977u, 4294967295u, 4294967295u))), 2u)]);
    var_0 = !vec2<bool>(!var_0.x, func_3(arg_0, Struct_3(countOneBits(4294967295u), 51387i, Struct_1(arg_1.x, arg_1.xwz, global1[_wgslsmith_index_u32(0u, 2u)], var_0.x), _wgslsmith_f_op_vec2_f32(global0.zw * vec2<f32>(215f, arg_0.a)), Struct_1(37963i, vec3<i32>(2147483647i, arg_0.b, u_input.a), var_0.x, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) * -251f)).x);
    let var_1 = firstTrailingBit(vec2<u32>(_wgslsmith_mod_u32(~(~55595u), _wgslsmith_sub_u32(~33846u, countOneBits(27718u))), (firstTrailingBit(25905u) & 40371u) >> (_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(19345u, 0u, 1u), vec3<u32>(0u, 125845u, 20608u)), _wgslsmith_mod_u32(60876u, 59116u)) % 32u)));
    global0 = arg_2;
    var var_2 = Struct_5(Struct_1(-31877i, u_input.b, !(var_1.x >= 21731u) && var_0.x, !(arg_2.x != global0.x) || true), -2147483647i);
    return ~var_1.x;
}

fn func_5(arg_0: vec3<bool>, arg_1: vec2<f32>, arg_2: vec3<bool>, arg_3: u32) -> u32 {
    global1 = array<bool, 2>();
    let var_0 = arg_3;
    global1 = array<bool, 2>();
    var var_1 = vec2<bool>(any(func_1(Struct_1(1i, u_input.b, true, func_1(Struct_1(u_input.a, u_input.b, false, global1[_wgslsmith_index_u32(78937u, 2u)]), u_input.a).x), firstLeadingBit(reverseBits(u_input.a))).zx), any(select(arg_2.xz, vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(true, true))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.x))))));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(~func_5(select(vec3<bool>(false, true, any(vec2<bool>(global1[_wgslsmith_index_u32(1u, 2u)], global1[_wgslsmith_index_u32(4294967295u, 2u)]))), vec3<bool>(all(vec2<bool>(false, global1[_wgslsmith_index_u32(1u, 2u)])), true && global1[_wgslsmith_index_u32(10127u, 2u)], global1[_wgslsmith_index_u32(7242u, 2u)]), global0.x == -983f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-global0.zw), global0.wx)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(931f, 1192f) * vec2<f32>(global0.x, 1000f)), global0.wy)), !func_1(Struct_1(u_input.a, u_input.b, global1[_wgslsmith_index_u32(1u, 2u)], false), _wgslsmith_sub_i32(u_input.a, u_input.b.x)), reverseBits(func_2(Struct_2(global0.x, u_input.b.x), min(vec4<i32>(u_input.a, u_input.a, -1i, u_input.b.x), vec4<i32>(32308i, 0i, u_input.a, -1i)), vec4<f32>(-575f, -304f, 1673f, global0.x)))), 2u)];
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.x)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(273f * -262f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -231f), -632f))), ~select(reverseBits(0i), -_wgslsmith_mult_i32(u_input.a, u_input.a), global1[_wgslsmith_index_u32(1u, 2u)]));
    let var_2 = global0.x;
    var var_3 = Struct_3(1u, 1i | max(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(0i, 17981i, 14154i, var_1.b)), -vec4<i32>(u_input.b.x, 0i, u_input.b.x, -26350i)), max(-1i, ~58569i)), Struct_1(_wgslsmith_div_i32(~(-14160i), -countOneBits(15450i)), u_input.b, u_input.a >= _wgslsmith_clamp_i32(53106i, select(62129i, var_1.b, false), 48353i), true), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.yz * vec2<f32>(var_1.a, -165f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)), global0.x)), Struct_1(var_1.b, u_input.b, true | (global1[_wgslsmith_index_u32(35299u, 2u)] | (global1[_wgslsmith_index_u32(22642u, 2u)] | true)), !(true || func_1(Struct_1(var_1.b, u_input.b, global1[_wgslsmith_index_u32(4294967295u, 2u)], global1[_wgslsmith_index_u32(4294967295u, 2u)]), 0i).x)));
    var_0 = var_1.b >= var_1.b;
    let var_4 = _wgslsmith_f_op_f32(-842f + _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(var_1.a - var_1.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.d.x) * var_1.a)))));
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -418f)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a & (i32(-1i) * -2147483647i));
}

