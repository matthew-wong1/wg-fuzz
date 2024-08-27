struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec2<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2) -> bool {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(1645f * -374f), -111f))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(363f, -1000f), vec2<f32>(-585f, 1214f), vec2<bool>(false, arg_0.a.a.x))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1451f, -495f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(902f, -687f), vec2<f32>(676f, -2202f)))))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1290f, -297f), vec2<f32>(-958f, -1109f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1364f, 246f)))))));
    let var_1 = _wgslsmith_mod_u32(~(~(~(~124264u))), 1u);
    var var_2 = arg_0.a.a.yz;
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(2010f, var_0.x, -1000f, 992f), vec4<f32>(384f, var_0.x, 1184f, var_0.x))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, -907f, 1100f, -1631f), vec4<f32>(var_0.x, -347f, -446f, var_0.x)), vec4<f32>(-1146f, var_0.x, -1252f, -382f))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_0.x)), _wgslsmith_f_op_f32(max(-878f, 777f)), -444f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1395f, -808f) - _wgslsmith_f_op_f32(-950f + 2124f))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-696f, 1019f, var_0.x, -292f) - vec4<f32>(-320f, var_0.x, 633f, -1000f))))))));
    var var_4 = false;
    return select(any(arg_0.a.a.zz), true, true);
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: Struct_1) -> u32 {
    let var_0 = u_input.b.x;
    var var_1 = Struct_1(vec3<bool>(arg_0.a.a.x, arg_2.a.x, arg_0.a.a.x != false));
    let var_2 = false;
    let var_3 = Struct_4(Struct_1(!vec3<bool>(any(vec3<bool>(true, true, arg_0.a.a.x)), func_3(Struct_2(arg_0.a)), true)));
    var_1 = Struct_1(vec3<bool>(all(vec3<bool>(false, false, true)) & true, any(!vec4<bool>(false, var_2, false, false)), select(true, var_1.a.x, true)));
    return _wgslsmith_div_u32(4294967295u, min(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(15876u, arg_1, arg_1), _wgslsmith_add_vec3_u32(vec3<u32>(23224u, arg_1, arg_1), vec3<u32>(45328u, arg_1, 0u))), _wgslsmith_mult_u32(arg_1, arg_1)), _wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(5446u, 53692u)), abs(firstTrailingBit(arg_1)))));
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: Struct_3, arg_3: vec2<f32>) -> f32 {
    let var_0 = firstTrailingBit(~u_input.a);
    var var_1 = ~firstLeadingBit(~select(vec2<u32>(23185u, 1u), vec2<u32>(24456u, 0u), arg_2.b.xy) ^ ~(~vec2<u32>(90565u, arg_0)));
    var_1 = abs(abs(~select(vec2<u32>(1u, 1u), vec2<u32>(4294967295u, arg_0), true) << (vec2<u32>(~4294967295u, _wgslsmith_sub_u32(var_1.x, 29142u)) % vec2<u32>(32u))));
    var_1 = min(_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 30270u, arg_0), vec3<u32>(53379u, var_1.x, 4294967295u)), ~arg_0), ~vec2<u32>(1u, 0u)), ~_wgslsmith_div_vec2_u32(vec2<u32>(var_1.x, 15469u), vec2<u32>(arg_0, var_1.x))) >> (vec2<u32>(_wgslsmith_add_u32(_wgslsmith_mult_u32(80592u << (var_1.x % 32u), 1u), 36302u), 58711u) % vec2<u32>(32u));
    let var_2 = arg_2.c.a;
    return -110f;
}

fn func_1(arg_0: f32, arg_1: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_4(~_wgslsmith_sub_u32(arg_1 << (arg_1 % 32u), ~arg_1), min(28193u, func_2(Struct_2(Struct_1(vec3<bool>(false, false, false))), arg_1, Struct_1(vec3<bool>(true, true, false)))) >= 1u, Struct_3(arg_0, vec3<bool>(true, true, true), Struct_2(Struct_1(vec3<bool>(false, true, true)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-549f, arg_0), vec2<f32>(arg_0, arg_0)) - vec2<f32>(-533f, -1456f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-999f, arg_0))))), -202f));
    return Struct_1(vec3<bool>(any(select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), true), vec4<bool>(true, true, true, true), true)), any(vec4<bool>(true, any(vec4<bool>(false, false, true, false)), -989f >= arg_0, true)), false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1872f)) + 780f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1781f)))), 19738u);
    var var_1 = func_3(Struct_2(Struct_1(!(!var_0.a))));
    var var_2 = Struct_2(func_1(1f, ~firstTrailingBit(~1467u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(1090f, -1260f)), _wgslsmith_f_op_f32(209f * -439f)) + vec2<f32>(1797f, _wgslsmith_f_op_f32(f32(-1f) * -837f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -132f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-297f)) - -237f))))), vec2<f32>(-738f, -1957f), countOneBits(firstTrailingBit(countOneBits(vec4<i32>(-51717i, 2147483647i, u_input.a.x, u_input.c.x)))));
}

