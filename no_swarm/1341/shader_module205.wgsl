struct Struct_1 {
    a: f32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: i32,
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

var<private> global0: vec4<f32>;

var<private> global1: array<vec2<bool>, 16>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> u32 {
    var var_0 = Struct_1(global0.x, u_input.a);
    let var_1 = abs(_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(~u_input.a, var_0.b, var_0.b), _wgslsmith_add_vec2_u32(vec2<u32>(~29128u, 1u), u_input.a)));
    let var_2 = abs(-countOneBits(abs(-u_input.c.x)));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)), var_0.b);
    let var_4 = !(!vec2<bool>(all(global1[_wgslsmith_index_u32(0u, 16u)]) | false, true));
    return ~1u;
}

fn func_2(arg_0: f32, arg_1: vec4<f32>, arg_2: f32, arg_3: Struct_1) -> vec4<f32> {
    var var_0 = _wgslsmith_mod_vec3_u32(~(_wgslsmith_sub_vec3_u32(vec3<u32>(20181u, arg_3.b.x, arg_3.b.x), ~vec3<u32>(101147u, u_input.a.x, 7932u)) | ~vec3<u32>(arg_3.b.x, u_input.a.x, 1u)), vec3<u32>(~func_3(), u_input.b, ~firstLeadingBit(4294967295u)));
    global1 = array<vec2<bool>, 16>();
    var var_1 = u_input.e;
    var var_2 = u_input.d.x;
    let var_3 = Struct_2(var_0.zz);
    return arg_1;
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<f32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = !(false || all(vec3<bool>(true, true, true)));
    var_0 = true;
    var var_1 = reverseBits(_wgslsmith_mult_i32(1i, (0i ^ abs(u_input.c.x)) ^ (~u_input.e | (u_input.e & 52486i))));
    let var_2 = 0u;
    var_1 = -88676i << (~(~min(42566u, var_2) & (var_2 & max(20353u, var_2))) % 32u);
    return Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -944f), _wgslsmith_mod_vec2_u32(~(~vec2<u32>(u_input.a.x, 25000u)), vec2<u32>(~var_2, var_2)));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    var var_0 = arg_1;
    let var_1 = _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(select(~(~vec4<u32>(u_input.b, 18616u, u_input.a.x, 4294967295u)), vec4<u32>(arg_1.b.x, var_0.b.x, u_input.b, 1u) << (countOneBits(vec4<u32>(31682u, arg_1.b.x, var_0.b.x, 4294967295u)) % vec4<u32>(32u)), vec4<bool>(all(vec3<bool>(arg_2, arg_2, arg_2)), true, arg_2, any(global1[_wgslsmith_index_u32(4294967295u, 16u)]))), firstLeadingBit(vec4<u32>(45187u ^ u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 15569u, 4294967295u, 1u), vec4<u32>(u_input.b, arg_1.b.x, var_0.b.x, 35274u)), arg_1.b.x, 39867u))), ~vec4<u32>(arg_1.b.x, firstTrailingBit(~9197u), 1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 19694u, u_input.b, u_input.a.x), firstTrailingBit(vec4<u32>(4294967295u, 1u, arg_1.b.x, arg_1.b.x)))));
    var var_2 = vec2<u32>(_wgslsmith_mult_u32(var_1.x, 1u), abs(~(1u | arg_1.b.x)));
    let var_3 = arg_1;
    var var_4 = var_2.x;
    return var_3;
}

fn func_1(arg_0: i32) -> vec3<i32> {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-835f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(-global0.x), 125f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(global0.x * 1037f), _wgslsmith_f_op_f32(abs(global0.x)), _wgslsmith_f_op_f32(trunc(1000f)), 1574f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.x, 681f, -415f, global0.x), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(133f, -100f, 354f, -2003f)))))))));
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, _wgslsmith_f_op_f32(round(global0.x))));
    let var_1 = ~(vec4<i32>(firstLeadingBit(32508i), 1i & arg_0, ~arg_0, u_input.e) >> (vec4<u32>(3932u, ~(~u_input.a.x), u_input.b, u_input.b) % vec4<u32>(32u)));
    var var_2 = func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, global0.x, var_0.x, global0.x), vec4<f32>(var_0.x, -1656f, var_0.x, var_0.x))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(899f, -1191f, global0.x, var_0.x))))), func_4(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-775f, global0.x, global0.x, global0.x), vec4<f32>(global0.x, -905f, 306f, 446f), true)) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-186f, -105f, -1000f, -1021f)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(613f, vec4<f32>(var_0.x, -752f, global0.x, var_0.x), var_0.x, Struct_1(global0.x, u_input.a))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-217f, -1000f, global0.x, 1000f))), vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-251f - var_0.x), _wgslsmith_f_op_f32(-556f + -745f), var_0.x)), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2086f))), vec2<u32>(~u_input.a.x, _wgslsmith_sub_u32(4294967295u, u_input.b)))), any(vec4<bool>(all(vec4<bool>(false, false, false, false)), any(vec3<bool>(true, true, true)), true, true)) && true);
    let var_3 = !select(select(select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false)), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false))), true), !vec4<bool>(global0.x > -967f, true, true, any(vec4<bool>(false, false, false, true))), all(vec3<bool>(all(global1[_wgslsmith_index_u32(1u, 16u)]), true, true)));
    return vec3<i32>(_wgslsmith_mod_i32(firstLeadingBit(i32(-1i) * -1i), _wgslsmith_add_i32(-max(var_1.x, -42515i), abs(~arg_0))), var_1.x, _wgslsmith_mult_i32(_wgslsmith_add_i32(1i, u_input.e), ~1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(_wgslsmith_clamp_i32(u_input.c.x, max(u_input.c.x ^ u_input.c.x, u_input.e & u_input.d.x), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, u_input.e, -2147483647i), u_input.d, u_input.c), func_1(2147483647i))) ^ -(~u_input.c.x), u_input.e, 1i, 1i);
    var var_1 = u_input.b;
    var var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(global0.zwx))));
    let var_3 = true;
    let var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -867f), _wgslsmith_f_op_f32(var_2.x - global0.x))), var_2.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1732f * var_2.x)))))));
    var var_5 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(2226f))) * -550f))));
}

