struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<u32>,
    d: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: bool,
    d: vec2<u32>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>) -> vec4<bool> {
    let var_0 = Struct_1(102163u, _wgslsmith_f_op_f32(f32(-1f) * -120f) >= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -777f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.a.x))))), select(vec4<u32>(4294967295u >> (arg_1.x % 32u), 1u, u_input.a, 24639u), max(_wgslsmith_clamp_vec4_u32(vec4<u32>(28267u, 0u, 1u, arg_1.x), vec4<u32>(0u, 1u, 3292u, arg_1.x), vec4<u32>(0u, arg_0.d.x, 0u, 5759u)), vec4<u32>(arg_1.x, arg_0.d.x, 1642u, 8816u) >> (vec4<u32>(u_input.a, 0u, 62791u, 0u) % vec4<u32>(32u))), !arg_0.c | !arg_0.c) << (_wgslsmith_add_vec4_u32(~(~vec4<u32>(0u, 4294967295u, 0u, 63042u)), max(min(vec4<u32>(arg_0.d.x, 0u, 4294967295u, arg_0.d.x), vec4<u32>(1u, u_input.a, 14483u, u_input.a)), _wgslsmith_add_vec4_u32(vec4<u32>(1u, arg_1.x, u_input.a, arg_1.x), vec4<u32>(u_input.a, 13558u, u_input.a, 52804u)))) % vec4<u32>(32u)), _wgslsmith_sub_u32(reverseBits(select(0u, ~26584u, true)), arg_0.d.x));
    var var_1 = arg_0;
    var var_2 = Struct_1(min(var_0.a << (~1u % 32u), select(4294967295u, 4294967295u, all(vec4<bool>(false, true, true, var_1.c)))), true, ~vec4<u32>(arg_1.x, 4294967295u, var_0.a, var_1.d.x), ~arg_1.x);
    let var_3 = 2147483647i;
    let var_4 = Struct_2(_wgslsmith_f_op_vec2_f32(trunc(arg_0.b)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.a.x, arg_0.a.x))), -215f))), any(!vec2<bool>(all(vec3<bool>(var_2.b, arg_0.c, arg_0.c)), true)), arg_1.yy >> (~_wgslsmith_div_vec2_u32(vec2<u32>(var_1.d.x, 39458u), ~vec2<u32>(4294967295u, 0u)) % vec2<u32>(32u)), 2147483647i);
    return vec4<bool>(any(!(!vec4<bool>(false, var_2.b, var_1.c, var_4.c))), !all(!vec3<bool>(arg_0.c, true, var_2.b)), false, -1i == reverseBits(~(~arg_0.e)));
}

fn func_2(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_1) -> i32 {
    var var_0 = !(!arg_2.b);
    var_0 = any(select(!select(vec4<bool>(false, false, false, arg_0.x), vec4<bool>(arg_2.b, arg_2.b, arg_0.x, arg_2.b), true), !vec4<bool>(arg_0.x, all(vec4<bool>(true, arg_0.x, true, true)), false, true), func_3(Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(564f, 989f) - vec2<f32>(-1234f, 421f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(909f, -364f) + vec2<f32>(-740f, 1873f)), !arg_0.x, _wgslsmith_add_vec2_u32(vec2<u32>(arg_2.d, 1u), vec2<u32>(4294967295u, u_input.a)), arg_1 ^ -30325i), _wgslsmith_mult_vec3_u32(~arg_2.c.xww, countOneBits(arg_2.c.ywz)))));
    var_0 = false;
    var var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-160f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1222f))), 2039f))));
    return abs(-(42103i | min(20322i, arg_1)));
}

fn func_1() -> u32 {
    let var_0 = ~_wgslsmith_dot_vec3_u32(~firstLeadingBit(max(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(4294967295u, u_input.a, u_input.a))), min(_wgslsmith_sub_vec3_u32(~vec3<u32>(2272u, u_input.a, u_input.a), firstLeadingBit(vec3<u32>(0u, 41377u, 48728u))), min(vec3<u32>(4294967295u, u_input.a, 0u) ^ vec3<u32>(1u, 4294967295u, u_input.a), ~vec3<u32>(u_input.a, 151778u, 1u))));
    var var_1 = Struct_1(var_0, true, vec4<u32>(~4294967295u, ~10180u ^ _wgslsmith_div_u32(u_input.a, ~13362u), ~1u, 45542u), max(_wgslsmith_mult_u32(select(1u, 4294967295u, all(vec3<bool>(true, false, false))), select(69443u & u_input.a, ~77061u, true)), var_0));
    var_1 = Struct_1(u_input.a, !all(select(vec3<bool>(var_1.b, false, var_1.b), vec3<bool>(var_1.b, true, false), false)) && (-1i <= func_2(vec2<bool>(var_1.b, false), -1i, Struct_1(var_0, false, var_1.c, 10754u))), select(firstLeadingBit(vec4<u32>(var_1.d, u_input.a, 4294967295u, 4294967295u) | var_1.c), vec4<u32>(1u, min(u_input.a, 1u), reverseBits(u_input.a), ~4294967295u), select(!vec4<bool>(var_1.b, true, true, var_1.b), !vec4<bool>(true, var_1.b, var_1.b, false), var_1.b)) & firstLeadingBit(~reverseBits(var_1.c)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(abs(7421u), var_1.d, u_input.a), var_1.c.www));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(728f, 532f, -1106f, 1000f), vec4<f32>(1073f, 932f, -233f, 1709f), vec4<bool>(var_1.b, var_1.b, false, var_1.b))), vec4<f32>(304f, -116f, -786f, -334f))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -332f), _wgslsmith_f_op_f32(trunc(-967f)), -479f, -220f)))));
    var_1 = Struct_1(~_wgslsmith_add_u32(21849u, _wgslsmith_clamp_u32(47285u, ~u_input.a, abs(52328u))), false, ~select(_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(var_1.c, var_1.c), ~vec4<u32>(19208u, var_0, var_0, 1u)), var_1.c, !vec4<bool>(true, var_1.b, var_1.b, false)), 55547u);
    return _wgslsmith_mult_u32(var_0, _wgslsmith_sub_u32(~4294967295u, u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(0u, false, ~countOneBits(vec4<u32>(~u_input.a, max(0u, 52975u), firstTrailingBit(u_input.a), u_input.a)), 40845u);
    let var_1 = vec4<u32>(func_1(), ~u_input.a, min(~0u, 58595u & (u_input.a | _wgslsmith_mod_u32(1u, u_input.a))), _wgslsmith_div_u32(firstTrailingBit(func_1()), _wgslsmith_clamp_u32(~0u, ~(~1u), u_input.a)));
    let var_2 = select(-2147483647i, func_2(vec2<bool>(all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, var_0.b, var_0.b, var_0.b), vec4<bool>(true, false, var_0.b, true))), func_3(Struct_2(vec2<f32>(1168f, 286f), vec2<f32>(642f, 240f), true, vec2<u32>(u_input.a, var_0.a), -2147483647i), min(vec3<u32>(4294967295u, 4294967295u, 47262u), vec3<u32>(var_1.x, 4294967295u, 4294967295u))).x), -316i, Struct_1(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.c.x, 4294967295u, var_0.d, 4294967295u), max(vec4<u32>(1848u, var_0.c.x, var_1.x, var_1.x), var_0.c)), _wgslsmith_f_op_f32(ceil(-167f)) >= -1000f, ~var_0.c, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, u_input.a, 119656u), max(var_1.wzw, var_0.c.yyx)))), var_0.b);
    var var_3 = i32(-1i) * -4306i;
    var_3 = (i32(-1i) * -((i32(-1i) * -73120i) ^ -var_2)) | (var_2 << (max(~_wgslsmith_dot_vec2_u32(var_1.zw, var_1.xy), 4294967295u) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(27363u, max(var_1.x, _wgslsmith_dot_vec2_u32(var_1.wy, var_1.zy << (var_0.c.xw % vec2<u32>(32u))))), ~u_input.a, _wgslsmith_div_u32(var_1.x, _wgslsmith_dot_vec3_u32(var_1.xyy, countOneBits(countOneBits(vec3<u32>(u_input.a, 3983u, u_input.a))))), abs(reverseBits(~vec3<u32>(4294967295u, var_1.x, var_1.x))));
}

