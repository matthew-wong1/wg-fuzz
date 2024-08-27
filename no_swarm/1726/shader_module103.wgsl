struct Struct_1 {
    a: i32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: Struct_1) -> f32 {
    var var_0 = Struct_1(-2147483647i, u_input.c);
    var var_1 = vec2<i32>(firstTrailingBit(~49605i), -1i);
    let var_2 = arg_0;
    var_1 = var_0.b;
    var_1 = vec2<i32>(var_2.b.x, -1i);
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(173f + _wgslsmith_f_op_f32(f32(-1f) * -583f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(2287f)) - _wgslsmith_f_op_f32(103f - -278f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(1593f, 526f))))));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: vec4<f32>) -> f32 {
    let var_0 = Struct_1(_wgslsmith_add_i32(arg_0.x, _wgslsmith_div_i32(-9225i, -15068i)), ~arg_1.zw);
    let var_1 = firstTrailingBit(firstLeadingBit(vec3<u32>(~0u, u_input.a.x, _wgslsmith_div_u32(3963u, firstTrailingBit(39963u)))));
    return _wgslsmith_div_f32(-264f, arg_2.x);
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec4<i32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1141f), _wgslsmith_div_f32(513f, -1211f), -350f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1580f, -1000f)), -240f)) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(223f, 351f, -1361f, 1533f))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(1313f, -1809f, 762f, -403f) * vec4<f32>(-940f, -1022f, -708f, 919f)), vec4<f32>(-1000f, -598f, -1510f, 1129f)))))));
    let var_1 = Struct_1(_wgslsmith_dot_vec3_i32(-reverseBits(vec3<i32>(arg_0.a, u_input.d.x, arg_2.x)) ^ _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.b, vec3<i32>(arg_0.b.x, 29351i, -2147483647i)), u_input.b), vec3<i32>(arg_2.x, _wgslsmith_div_i32(4661i >> (u_input.a.x % 32u), select(arg_0.a, arg_2.x, false)), arg_0.a ^ -u_input.b.x)), arg_2.xy);
    var var_2 = (select(~u_input.a.x | ~0u, _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(u_input.a.x, u_input.a.x, 0u, 31024u)), vec4<u32>(u_input.a.x, 5123u, u_input.a.x, u_input.a.x) & vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x)), !arg_1) != u_input.a.x) && (_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_0.x, var_0.x)), var_0.x) * _wgslsmith_div_f32(-728f, _wgslsmith_f_op_f32(-var_0.x))) > _wgslsmith_f_op_f32(floor(2581f)));
    var_2 = !(any(!select(vec2<bool>(false, false), vec2<bool>(true, true), false)) != true);
    var_2 = arg_1;
    return -1651f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(u_input.a);
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1(Struct_1(u_input.c.x, vec2<i32>(u_input.d.x, -14674i)))), _wgslsmith_f_op_f32(func_2(u_input.d, vec4<i32>(-2147483647i, 1i, u_input.d.x, u_input.b.x), vec4<f32>(461f, 1224f, -1251f, 466f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(u_input.d.x, vec2<i32>(-2147483647i, u_input.b.x)), true, reverseBits(vec4<i32>(17537i, u_input.d.x, u_input.b.x, 2147483647i)))))));
    var_0 = vec2<u32>(58409u, _wgslsmith_mod_u32(1u, _wgslsmith_dot_vec3_u32(firstLeadingBit(firstLeadingBit(vec3<u32>(4294967295u, 1u, 52557u))), ~vec3<u32>(var_0.x, var_0.x, 23628u))));
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(select(var_1.x, -127f, true)), -877f);
    var var_2 = Struct_1(_wgslsmith_div_i32(firstLeadingBit(i32(-1i) * -u_input.d.x), u_input.d.x), vec2<i32>(_wgslsmith_dot_vec3_i32(-u_input.b, u_input.b), u_input.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(vec3<u32>(31765u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 1u), vec2<u32>(u_input.a.x, u_input.a.x)), 77315u), ~_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.x, u_input.a.x, 1u) >> (vec3<u32>(22900u, u_input.a.x, 89786u) % vec3<u32>(32u)), ~vec3<u32>(u_input.a.x, u_input.a.x, var_0.x))), u_input.a);
}

