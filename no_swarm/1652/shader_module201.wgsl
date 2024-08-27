struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec2<i32>(37525i, 2147483647i));

var<private> global1: array<Struct_3, 20>;

var<private> global2: array<vec4<bool>, 2> = array<vec4<bool>, 2>(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true));

var<private> global3: i32;

var<private> global4: vec4<f32> = vec4<f32>(1063f, -424f, -1799f, -492f);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec4<u32>) -> vec2<i32> {
    let var_0 = reverseBits(57543i) >> (0u % 32u);
    global4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global4.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))), _wgslsmith_f_op_f32(f32(-1f) * -1157f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-149f - -996f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global4.x, global4.x, -1036f, -586f), vec4<f32>(182f, -514f, global4.x, -1226f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, 440f, global4.x, global4.x))))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, global4.x, -340f, global4.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(655f, global4.x, global4.x, -1126f) * vec4<f32>(-1855f, global4.x, 678f, 1095f))), vec4<f32>(_wgslsmith_f_op_f32(-global4.x), -916f, 803f, _wgslsmith_f_op_f32(-261f * 250f))))));
    var var_1 = Struct_1(-692f);
    var var_2 = Struct_3(_wgslsmith_add_vec2_i32(vec2<i32>(-1i, arg_0), -u_input.c.yz | vec2<i32>(abs(0i), min(var_0, 81829i))));
    var var_3 = abs(select(vec4<u32>(_wgslsmith_mod_u32(arg_1.x, arg_1.x), u_input.b, _wgslsmith_mod_u32(0u, 1u), ~55461u) & vec4<u32>(min(1u, arg_1.x), min(arg_1.x, 0u), ~26370u, 0u), vec4<u32>(_wgslsmith_dot_vec4_u32(arg_1 << (arg_1 % vec4<u32>(32u)), vec4<u32>(36147u, 0u, 716u, 4294967295u)), u_input.b, arg_1.x, _wgslsmith_add_u32(~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, arg_1.x, 38282u), arg_1.yzz))), true));
    return var_2.a;
}

fn func_2(arg_0: Struct_3) -> vec2<i32> {
    var var_0 = _wgslsmith_add_vec2_u32(abs(reverseBits(~(~vec2<u32>(42017u, u_input.b)))), vec2<u32>(56311u, u_input.b));
    let var_1 = ~(~(~var_0.x) >> (u_input.b % 32u));
    var var_2 = Struct_2(~(~u_input.b) | 0u);
    let var_3 = vec4<bool>(true, all(select(vec2<bool>(true, true), vec2<bool>(false, any(vec4<bool>(false, false, false, false))), all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true))))), all(vec3<bool>(true, true, true)), true);
    let var_4 = ~_wgslsmith_mult_vec2_u32(abs(~(~vec2<u32>(0u, 16455u))), _wgslsmith_mult_vec2_u32(select(vec2<u32>(var_1, 40625u) >> (vec2<u32>(2095u, var_2.a) % vec2<u32>(32u)), vec2<u32>(51043u, var_2.a) >> (vec2<u32>(0u, 0u) % vec2<u32>(32u)), var_3.x || var_3.x), vec2<u32>(select(var_2.a, 0u, true), 22478u >> (0u % 32u))));
    return ((func_3(61552i, vec4<u32>(u_input.b, var_4.x, 0u, 4294967295u)) | vec2<i32>(arg_0.a.x, _wgslsmith_add_i32(global0.a.x, u_input.a))) & ~arg_0.a) << (var_4 % vec2<u32>(32u));
}

fn func_1() -> f32 {
    let var_0 = Struct_3(func_2(Struct_3(_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-33863i, -20749i), vec2<i32>(global0.a.x, u_input.a)), global0.a & global0.a))));
    global1 = array<Struct_3, 20>();
    var var_1 = vec4<u32>(firstTrailingBit(~(~105725u)), ~_wgslsmith_mult_u32(u_input.b, 63033u), ~(~firstLeadingBit(u_input.b)) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(firstLeadingBit(1u), 1u), firstLeadingBit(vec2<u32>(2862u, u_input.b) >> (vec2<u32>(18823u, 1u) % vec2<u32>(32u)))) % 32u), u_input.b);
    var var_2 = _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, u_input.b, 71543u), vec3<u32>(var_1.x, var_1.x, var_1.x)), ~70371u), u_input.b, 0u), ~(~4294967295u), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.x, 58196u, u_input.b, 1u), ~vec4<u32>(36277u, 9322u, u_input.b, var_1.x)), _wgslsmith_mult_u32(0u, var_1.x)), ~countOneBits(~u_input.b)), select(abs(~(vec4<u32>(53849u, var_1.x, u_input.b, u_input.b) & vec4<u32>(var_1.x, var_1.x, u_input.b, u_input.b))), _wgslsmith_add_vec4_u32(min(vec4<u32>(4294967295u, 8499u, 0u, u_input.b) >> (vec4<u32>(u_input.b, 4294967295u, var_1.x, 1u) % vec4<u32>(32u)), abs(vec4<u32>(85519u, var_1.x, u_input.b, u_input.b))), _wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(u_input.b, var_1.x, 83548u, 12331u)), vec4<u32>(var_1.x, var_1.x, var_1.x, 64079u) & vec4<u32>(u_input.b, 1u, 4294967295u, 15081u))), true && select(true, true, true)));
    var var_3 = 0u;
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global4.x + 1425f), global4.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(103f))))));
    global3 = 28028i;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global4.x)) - _wgslsmith_f_op_f32(step(217f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(603f * var_0.a))))));
    global2 = array<vec4<bool>, 2>();
    let var_2 = !vec3<bool>(any(vec3<bool>(true, all(vec4<bool>(true, true, true, true)), true)), any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(-global4.x) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a - -1342f) + _wgslsmith_f_op_f32(func_1())));
    let x = u_input.a;
    s_output = StorageBuffer((countOneBits(4294967295u) & ~u_input.b) ^ 1u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global4.x)) - _wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(625f - 688f))), _wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(func_1()))), select(u_input.c, _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, u_input.a, -9475i), u_input.c), firstTrailingBit(u_input.c)), all(!select(vec3<bool>(var_2.x, false, true), vec3<bool>(var_2.x, var_2.x, var_2.x), false))));
}

