struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_3, 4> = array<Struct_3, 4>(Struct_3(810f, vec4<f32>(1007f, -396f, 767f, -984f)), Struct_3(-843f, vec4<f32>(366f, 1762f, 1066f, 451f)), Struct_3(1000f, vec4<f32>(296f, -275f, -1825f, -451f)), Struct_3(700f, vec4<f32>(1000f, -751f, -1000f, -859f)));

var<private> global2: i32 = 1901i;

var<private> global3: bool;

var<private> global4: vec3<u32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(407f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, 1351f)))))));
    let var_1 = !vec2<bool>(true == !(global0.a.b | false), !(min(arg_0.x, 33316u) >= 1u));
    let var_2 = _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(~(arg_0.yzy & vec3<u32>(1u, global4.x, 14994u)), _wgslsmith_div_vec3_u32(global0.a.c, ~(~global0.a.c))), max(vec3<u32>(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(0u, 4294967295u)), reverseBits(vec2<u32>(arg_0.x, 4294967295u))), min(~1u, select(0u, 4294967295u, global0.a.b)), reverseBits(1u) | _wgslsmith_mod_u32(global0.a.c.x, arg_0.x)), select(vec3<u32>(u_input.b, ~61750u, ~0u), select(arg_0.yzy, global0.a.c, var_1.x) << (vec3<u32>(224u, global4.x, global0.a.c.x) % vec3<u32>(32u)), false)));
    var var_3 = firstLeadingBit(-1i);
    global1 = array<Struct_3, 4>();
    return var_1.x | any(vec4<bool>(true, all(select(var_1, vec2<bool>(false, true), vec2<bool>(global0.a.b, var_1.x))), select(global0.a.b, any(vec3<bool>(var_1.x, false, false)), false), true));
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1545f, -1165f) - _wgslsmith_f_op_f32(-2630f - 436f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, 386f)) - 752f)))));
    let var_1 = arg_1.a.x;
    let var_2 = global4.x;
    let var_3 = Struct_1(_wgslsmith_add_vec4_i32(global0.a.a, vec4<i32>(global0.a.a.x, ~1i, var_1 >> (~arg_1.c.x % 32u), -2147483647i)), ~select(~global4.x, ~u_input.a, all(vec2<bool>(true, arg_1.b))) < 0u, vec3<u32>(~min(global0.a.c.x, 1u), _wgslsmith_clamp_u32(arg_1.c.x, ~(~43881u), u_input.b), ~(~1u)));
    global0 = Struct_2(Struct_1(vec4<i32>(firstLeadingBit(_wgslsmith_mult_i32(1247i, var_3.a.x)), countOneBits(0i), 1i, 0i), arg_1.b, var_3.c));
    return var_3.c.x;
}

fn func_2(arg_0: Struct_2) -> u32 {
    var var_0 = arg_0.a;
    var var_1 = global0.a.a.yz;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1294f + _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1000f, 878f), _wgslsmith_div_f32(-345f, 511f))))));
    global3 = true;
    var var_3 = 266f;
    return (countOneBits(_wgslsmith_dot_vec2_u32(~arg_0.a.c.zy, arg_0.a.c.yy)) >> (~(~(~4294967295u)) % 32u)) | func_4(func_3(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a, 7604u, var_0.c.x, 4294967295u), vec4<u32>(1u, var_0.c.x, 71030u, var_0.c.x) >> (vec4<u32>(12277u, 1u, arg_0.a.c.x, 34021u) % vec4<u32>(32u)))), global0.a);
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: vec4<f32>, arg_3: vec4<f32>) -> Struct_3 {
    global4 = global0.a.c;
    var var_0 = u_input.b;
    var var_1 = !(!((u_input.b > u_input.b) & global0.a.b)) & all(!(!select(vec3<bool>(arg_0.b, false, true), vec3<bool>(global0.a.b, arg_0.b, false), vec3<bool>(arg_0.b, arg_0.b, arg_0.b))));
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(475f * arg_2.x), -1216f, _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(812f + arg_3.x)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(576f - 955f), _wgslsmith_f_op_f32(max(arg_2.x, 138f)), _wgslsmith_f_op_f32(591f - 1000f)), arg_2) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1594f, 728f, arg_3.x, -641f)) + _wgslsmith_f_op_vec4_f32(-arg_2))));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_3.yyw) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_2.x, 216f, 1782f), vec3<f32>(-1125f, arg_2.x, arg_2.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.x, -1200f, arg_2.x)), !vec3<bool>(false, arg_0.b, false)))), arg_2.zxy));
    return global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(~global0.a.c.x, _wgslsmith_clamp_u32(global0.a.c.x, 23061u, arg_0.c.x), 28165u ^ global4.x, _wgslsmith_mult_u32(global0.a.c.x, 66635u)), vec4<u32>(~global0.a.c.x, ~4294967295u, 4294967295u, abs(func_2(Struct_2(arg_0))))) & global4.x, 4u)];
}

fn func_5(arg_0: bool, arg_1: Struct_3) -> vec2<f32> {
    global2 = ~global0.a.a.x << (func_4(true, global0.a) % 32u);
    global4 = ~vec3<u32>(global4.x, ~0u, global0.a.c.x);
    global1 = array<Struct_3, 4>();
    var var_0 = global0.a;
    var var_1 = ~vec4<u32>(u_input.a, u_input.a, u_input.b, 1u);
    return arg_1.b.xx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -971f;
    let var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(355f * -521f), _wgslsmith_f_op_f32(-144f * -734f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1223f * -594f)), -1346f)));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -714f);
    var var_2 = global0.a.b;
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(943f, var_1.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_5(!global0.a.b, func_1(Struct_1(global0.a.a, global0.a.b, global0.a.c), 1i, vec4<f32>(-706f, 2677f, var_1.x, var_1.x), vec4<f32>(var_1.x, var_1.x, -938f, var_1.x))))))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_1, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, 945f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(201f, var_1.x)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_vec2_f32(func_5(false, Struct_3(var_1.x, vec4<f32>(var_1.x, var_1.x, 1174f, var_1.x)))).x, _wgslsmith_f_op_f32(-228f * var_1.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_3.x + _wgslsmith_f_op_f32(-var_1.x)), 546f, var_3.x)));
}

