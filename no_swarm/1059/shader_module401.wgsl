struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<u32>, arg_1: u32) -> u32 {
    let var_0 = Struct_2(select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))), vec2<bool>(~1u == (arg_0.x << (4294967295u % 32u)), any(vec2<bool>(true, true))), vec2<bool>(false, true)), ~arg_0.x, abs(~arg_0.wyz));
    var var_1 = arg_0.x;
    var var_2 = var_0;
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1285f, 1884f, false))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(452f, -939f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(530f)) + _wgslsmith_f_op_f32(f32(-1f) * -806f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1466f - -1552f)))) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -845f), _wgslsmith_div_f32(-124f, -1000f)), -342f), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-818f, -122f)))))));
    return 1u;
}

fn func_2(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_1) -> bool {
    var var_0 = _wgslsmith_mod_vec2_u32(arg_0.c.zy, vec2<u32>(arg_0.b ^ ~1u, func_3(vec4<u32>(arg_0.b, 9728u, 40341u, 18958u), 4294967295u) << (func_3(vec4<u32>(4294967295u, arg_0.c.x, 6204u, 31540u), 106742u) % 32u)) ^ ~(~vec2<u32>(4294967295u, arg_0.c.x)));
    let var_1 = 1u;
    let var_2 = Struct_1(vec3<bool>(any(!(!arg_1)), false, false));
    var var_3 = !(!vec2<bool>(u_input.b.x < _wgslsmith_sub_i32(-1i, 2147483647i), ~arg_0.b > var_0.x));
    var_0 = abs(abs(arg_0.c.yx)) & vec2<u32>(arg_0.c.x, _wgslsmith_clamp_u32(var_1, _wgslsmith_sub_u32(~22254u, _wgslsmith_mult_u32(var_1, 0u)), 44387u));
    return true;
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1) -> u32 {
    let var_0 = !select(arg_1.a, select(arg_0.xww, select(arg_0.yzw, !arg_0.zzz, !arg_1.a.x), true), vec3<bool>(func_2(Struct_2(vec2<bool>(true, false), 47191u, vec3<u32>(1u, 4294967295u, 1u)), arg_0.yyz, Struct_1(vec3<bool>(true, arg_0.x, true))) & false, arg_1.a.x, !all(vec2<bool>(false, arg_0.x))));
    var var_1 = Struct_2(vec2<bool>(true, all(select(var_0, vec3<bool>(arg_1.a.x, arg_0.x, arg_0.x), false))), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_clamp_vec4_u32(~vec4<u32>(5929u, 56779u, 4294967295u, 26059u), vec4<u32>(5883u, 1u, 4155u, 44523u), vec4<u32>(67550u, 27443u, 4294967295u, 4294967295u))), countOneBits(~abs(_wgslsmith_mult_vec3_u32(vec3<u32>(80241u, 23250u, 4294967295u), vec3<u32>(32366u, 0u, 1u)))));
    var var_2 = Struct_2(!(!arg_0.zw), max(11889u << (var_1.c.x % 32u), 23148u), var_1.c);
    var_2 = Struct_2(select(vec2<bool>(true, true), select(select(arg_0.wx, arg_1.a.xx, vec2<bool>(var_1.a.x, arg_0.x)), arg_0.zy, any(!vec4<bool>(var_1.a.x, false, true, true))), !select(select(vec2<bool>(var_0.x, var_2.a.x), vec2<bool>(true, true), false), vec2<bool>(arg_0.x, false), !vec2<bool>(false, var_1.a.x))), _wgslsmith_dot_vec2_u32(vec2<u32>(reverseBits(var_1.b), 9451u) ^ var_2.c.yy, vec2<u32>(var_1.b, 1u) & var_1.c.zx), var_1.c);
    var_2 = Struct_2(var_1.a, var_1.c.x, firstLeadingBit(_wgslsmith_div_vec3_u32(countOneBits(vec3<u32>(var_1.b, 0u, 0u)), var_1.c)));
    return max((countOneBits(19507u) | (~1u & ~var_1.c.x)) | _wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(var_2.c.x, var_1.b, 1u, var_1.c.x), vec4<u32>(66864u, var_1.c.x, 1u, var_2.b)), ~max(vec4<u32>(7528u, 4294967295u, 22952u, var_1.c.x), vec4<u32>(var_1.b, var_1.c.x, 1u, var_2.b))), ~(~(var_2.c.x ^ firstTrailingBit(19106u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), ~_wgslsmith_mod_vec4_u32(reverseBits(~vec4<u32>(4294967295u, 4294967295u, 55125u, 4294967295u)), vec4<u32>(1u, select(1u, 4294967295u, false), ~4294967295u, ~1u)));
    let var_1 = firstTrailingBit(u_input.a);
    var var_2 = vec3<u32>(~var_0.x, 0u, var_0.x);
    let var_3 = !(var_2.x < ((reverseBits(5851u) << (var_0.x % 32u)) & _wgslsmith_mod_u32(1u, _wgslsmith_sub_u32(var_2.x, var_0.x))));
    var_2 = vec3<u32>(_wgslsmith_dot_vec3_u32(~(~var_0.ywy), ~var_0.zxz), ~var_0.x, 0u >> ((~func_1(vec4<bool>(true, false, true, var_3), Struct_1(vec3<bool>(false, var_3, var_3))) << (~var_2.x % 32u)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(50223i, abs(~(~select(2567u, 0u, var_3))), var_2.x, vec3<u32>(var_0.x ^ var_0.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.x, var_2.x, var_0.x), ~vec3<u32>(var_0.x, var_0.x, var_0.x)), ~1u | firstTrailingBit(97191u)) >> (vec3<u32>(var_2.x, max(4294967295u, _wgslsmith_div_u32(37075u, 1u)), ~(~61185u)) % vec3<u32>(32u)));
}

