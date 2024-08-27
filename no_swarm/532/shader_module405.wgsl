struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<i32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-2646i, 1i, 1i, 26054i);

var<private> global1: vec4<f32>;

var<private> global2: f32 = 1182f;

var<private> global3: vec3<u32> = vec3<u32>(68282u, 4294967295u, 4294967295u);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> vec2<i32> {
    let var_0 = arg_3;
    global1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, var_0.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.x))))), _wgslsmith_div_f32(107f, _wgslsmith_f_op_f32(select(1f, -782f, true | arg_1.d.x)))));
    global1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(-1207f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a * -1000f) + _wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_f_op_f32(arg_1.a - _wgslsmith_f_op_f32(1000f * 180f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) - arg_3.a) - 1051f), arg_3.a) * _wgslsmith_div_vec4_f32(vec4<f32>(1000f, _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1.x * global1.x))), 1f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.a, global1.x, -1621f, arg_3.a), vec4<f32>(-198f, var_0.a, 1216f, global1.x))), vec4<f32>(_wgslsmith_f_op_f32(var_0.a - arg_1.a), _wgslsmith_f_op_f32(ceil(arg_3.a)), _wgslsmith_div_f32(arg_1.a, global1.x), _wgslsmith_f_op_f32(1120f * arg_1.a)))));
    var var_1 = firstTrailingBit(0u);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_1.a, -338f), 233f))), 4294967295u << (u_input.a % 32u), -var_0.c, select(arg_3.d, select(arg_1.d, !var_0.d, !var_0.d.x), vec3<bool>(false, true, _wgslsmith_f_op_f32(global1.x - 2303f) < _wgslsmith_f_op_f32(f32(-1f) * -549f))));
    return -var_2.c;
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_2(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true != (global1.x > global1.x)), min(_wgslsmith_clamp_vec2_i32(u_input.b, select(func_3(6016i, Struct_1(1970f, u_input.a, vec2<i32>(-1i, 2147483647i), vec3<bool>(false, false, true)), 1u, Struct_1(-1000f, 0u, global0.zw, vec3<bool>(true, true, true))), vec2<i32>(u_input.b.x, 47293i), vec2<bool>(true, true)), vec2<i32>(_wgslsmith_mult_i32(global0.x, u_input.b.x), u_input.b.x)), u_input.b));
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(global1.x))));
    global2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_1)), -484f)))));
    let var_2 = Struct_1(var_1, 45196u, ~(-global0.wx), var_0.a);
    var var_3 = var_2.b;
    return Struct_2(vec3<bool>(var_0.a.x, any(!var_2.d.yx), false), ~var_2.c);
}

fn func_4(arg_0: Struct_2) -> bool {
    let var_0 = vec4<u32>(select(4294967295u, global3.x, arg_0.a.x), select(22858u, ~(global3.x & _wgslsmith_div_u32(u_input.a, 0u)), true), ~0u, 59237u);
    global3 = vec3<u32>(_wgslsmith_dot_vec3_u32(~(~var_0.wxw >> (_wgslsmith_mod_vec3_u32(vec3<u32>(33847u, u_input.a, 4294967295u), u_input.c.zwz) % vec3<u32>(32u))), vec3<u32>(1u, _wgslsmith_mod_u32(0u, ~global3.x), firstTrailingBit(u_input.a))), 1u, 41310u >> (_wgslsmith_mod_u32(max(firstLeadingBit(u_input.a), firstTrailingBit(var_0.x)), u_input.a) % 32u));
    global0 = -(reverseBits(~(vec4<i32>(10925i, global0.x, u_input.b.x, global0.x) ^ vec4<i32>(1i, 53295i, arg_0.b.x, u_input.b.x))) >> (((~var_0 & (var_0 >> (u_input.c % vec4<u32>(32u)))) << (u_input.c % vec4<u32>(32u))) % vec4<u32>(32u)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1106f, global1.x))))) * -171f);
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + _wgslsmith_f_op_f32(-global1.x));
    return arg_0.a.x;
}

fn func_1(arg_0: vec2<f32>, arg_1: i32, arg_2: f32) -> StorageBuffer {
    let var_0 = arg_0.x;
    var var_1 = vec4<bool>(false, true, !(_wgslsmith_sub_i32(arg_1 | 24085i, i32(-1i) * -2147483647i) > global0.x), func_4(func_2()));
    var_1 = vec4<bool>(true, true, var_1.x, (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-519f - var_0)) > var_0) || (var_1.x || var_1.x));
    return StorageBuffer(1i, abs(1u), vec3<i32>(global0.x, ~u_input.b.x, u_input.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1619f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0))), var_1.x != (arg_2 > arg_2))) - -428f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec3<bool>(false, !(!all(vec2<bool>(false, false))), false), -(~(-global0.yy)));
    let x = u_input.a;
    s_output = func_1(global1.ww, global0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(global1.x, 892f)))));
}

