struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: f32 = 840f;

var<private> global2: array<vec2<u32>, 11> = array<vec2<u32>, 11>(vec2<u32>(50749u, 0u), vec2<u32>(4294967295u, 41418u), vec2<u32>(4294967295u, 25896u), vec2<u32>(0u, 1u), vec2<u32>(0u, 1u), vec2<u32>(0u, 40305u), vec2<u32>(7501u, 36835u), vec2<u32>(4294967295u, 30056u), vec2<u32>(4294967295u, 19876u), vec2<u32>(8409u, 3782u), vec2<u32>(29053u, 0u));

var<private> global3: Struct_1;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = vec4<u32>(~countOneBits(~(global3.a << (48200u % 32u))), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(arg_1.www, _wgslsmith_add_vec3_u32(vec3<u32>(arg_1.x, arg_1.x, global3.a), vec3<u32>(61244u, 4294967295u, arg_1.x) | u_input.c)), global3.a, ~(~arg_2.a) << (1u % 32u)), 28797u, ~max(abs(~arg_1.x), global3.a));
    var var_1 = Struct_1(_wgslsmith_mult_u32(u_input.c.x, min(reverseBits(global3.a << (arg_1.x % 32u)), arg_2.a)), arg_2.b, vec3<i32>(reverseBits(-1i), 1i, abs(12712i)));
    global3 = arg_2;
    let var_2 = _wgslsmith_div_u32(~reverseBits(_wgslsmith_mult_u32(20372u, arg_2.a)) << (0u % 32u), var_0.x);
    let var_3 = ~_wgslsmith_mult_u32(~(~4294967295u), 1u);
    return vec2<bool>(false, 1u <= (arg_1.x & abs(~0u)));
}

fn func_2() -> f32 {
    var var_0 = global3.b.x;
    global3 = Struct_1(countOneBits(_wgslsmith_div_u32(u_input.a.x | 10386u, ~global3.a)) >> (u_input.c.x % 32u), select(func_3(vec3<f32>(_wgslsmith_f_op_f32(round(581f)), -1858f, 1f), ~vec4<u32>(38765u, global3.a, 62441u, u_input.c.x), Struct_1(global3.a, vec2<bool>(global3.b.x, false), select(vec3<i32>(2147483647i, u_input.b, global3.c.x), global3.c, vec3<bool>(true, global3.b.x, true)))), vec2<bool>(true, false), true), max(global3.c, global3.c));
    global3 = Struct_1(1u, global3.b, vec3<i32>(abs(min(abs(1i), i32(-1i) * -69551i)), _wgslsmith_dot_vec4_i32(~vec4<i32>(-7340i, u_input.b, 15005i, global3.c.x), vec4<i32>(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -1i, -2147483647i, -2147483647i), vec4<i32>(u_input.b, u_input.b, u_input.b, global0.x)), ~u_input.b, -18622i)), -7825i));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(777f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-652f * -677f), -838f)))));
}

fn func_1(arg_0: u32) -> i32 {
    let var_0 = ~0i;
    let var_1 = _wgslsmith_mult_vec3_i32(global3.c, min(vec3<i32>(-43802i, _wgslsmith_dot_vec2_i32(global3.c.yy, global3.c.zx), u_input.b), (firstLeadingBit(global3.c) ^ (vec3<i32>(global0.x, var_0, global3.c.x) << (vec3<u32>(33335u, u_input.c.x, 4294967295u) % vec3<u32>(32u)))) & vec3<i32>(countOneBits(28430i), _wgslsmith_div_i32(0i, global0.x), -2950i ^ var_0)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1288f + 624f) + -100f), -350f, _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(995f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1273f)))));
    global0 = _wgslsmith_div_vec2_i32(firstLeadingBit(countOneBits(~(-vec2<i32>(-1i, -2147483647i)))), var_1.zx);
    global1 = _wgslsmith_f_op_f32(round(912f));
    return -_wgslsmith_dot_vec2_i32(max(var_1.xy, ~(~var_1.yx)), _wgslsmith_add_vec2_i32(global3.c.yx, _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(global3.c.x, -1i), vec2<i32>(0i, 2147483647i)), vec2<i32>(-1i, var_0))));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: u32, arg_3: f32) -> Struct_1 {
    var var_0 = Struct_1(~4972u, !global3.b, vec3<i32>(u_input.b, max(reverseBits(_wgslsmith_add_i32(global3.c.x, u_input.b)), abs(global3.c.x << (19087u % 32u))), -76637i));
    global3 = Struct_1(~(~_wgslsmith_mult_u32(~81140u, u_input.c.x)), select(vec2<bool>(false & all(global3.b), arg_3 >= _wgslsmith_f_op_f32(func_2())), func_3(vec3<f32>(arg_3, arg_3, 233f), ~(~vec4<u32>(u_input.c.x, arg_0.a, 55131u, global3.a)), arg_0), arg_0.b), -firstTrailingBit(vec3<i32>(-26093i, -2147483647i, arg_0.c.x) << (_wgslsmith_add_vec3_u32(u_input.c, vec3<u32>(52701u, 4294967295u, var_0.a)) % vec3<u32>(32u))));
    return arg_0;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(951f, -1000f), vec2<f32>(1000f, 1606f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(570f, 1481f))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(760f)), _wgslsmith_f_op_f32(ceil(-961f)))))));
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * -1085f)));
    var var_2 = select(select(vec4<bool>(true, true, true, select(true, true, !arg_1.b.x)), !(!select(vec4<bool>(arg_0.b.x, true, arg_1.b.x, true), vec4<bool>(false, arg_1.b.x, arg_1.b.x, false), true)), arg_1.b.x), vec4<bool>(!(_wgslsmith_div_f32(var_1, var_0.x) != -1124f), true, arg_1.b.x && all(!vec2<bool>(global3.b.x, false)), true), ~1897u > ((_wgslsmith_div_u32(2279u, arg_2) & 21407u) & reverseBits(arg_0.a)));
    let var_3 = Struct_1(6314u, !(!arg_0.b), ~vec3<i32>(~(-41925i) << (arg_0.a % 32u), u_input.b, _wgslsmith_add_i32(-20444i, -arg_1.c.x)));
    let var_4 = -1286f;
    return StorageBuffer(abs(-func_4(arg_0, -15422i >> (var_3.a % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(11064u, global3.a, 0u, var_3.a), vec4<u32>(1u, 0u, arg_2, 1u)), var_1).c.x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1000f, _wgslsmith_f_op_f32(abs(121f))))), var_0));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global3.c.zy;
    global0 = global3.c.yx;
    let x = u_input.a;
    s_output = func_5(func_4(Struct_1(~0u, vec2<bool>(true, all(vec3<bool>(global3.b.x, false, true))), ~_wgslsmith_mod_vec3_i32(vec3<i32>(global0.x, -1464i, -2147483647i), vec3<i32>(global3.c.x, global3.c.x, global0.x))), func_1(1u), global3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(739f, -638f)))), Struct_1(global3.a, vec2<bool>(all(vec2<bool>(false, false)), global3.b.x), select(vec3<i32>(71370i, -47792i, u_input.b) | global3.c, global3.c << (_wgslsmith_clamp_vec3_u32(u_input.c, u_input.c, u_input.c) % vec3<u32>(32u)), !global3.b.x && global3.b.x)), 22553u);
}

