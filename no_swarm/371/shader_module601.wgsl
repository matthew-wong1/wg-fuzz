struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 5>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: f32, arg_1: vec4<bool>, arg_2: vec4<bool>) -> vec3<bool> {
    let var_0 = Struct_4(Struct_1(true));
    var var_1 = Struct_4(var_0.a);
    var_1 = var_0;
    return !vec3<bool>(any(select(arg_1, vec4<bool>(false, var_0.a.a, false, false), arg_2)), true, true);
}

fn func_2(arg_0: Struct_3, arg_1: i32, arg_2: Struct_3) -> vec3<bool> {
    global0 = array<vec3<u32>, 5>();
    let var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(reverseBits(34964i), ~(arg_1 << (0u % 32u)) & -1i, -arg_0.b.x), countOneBits(vec3<i32>(0i, 24866i, firstTrailingBit(0i))) ^ -arg_2.b.wwx);
    let var_1 = true;
    let var_2 = arg_2;
    var var_3 = Struct_2(Struct_1(true));
    return !(!func_3(arg_2.d.x, vec4<bool>(true, false, true, var_3.a.a), !(!vec4<bool>(var_3.a.a, var_1, var_3.a.a, var_3.a.a))));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: u32, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = Struct_4(Struct_1(((arg_2 << (arg_2 % 32u)) | (arg_2 & 4294967295u)) < ~18264u));
    return select(vec3<bool>(true, true, var_0.a.a), vec3<bool>(true, false, false), select(select(!vec3<bool>(arg_3.a, arg_3.a, false), vec3<bool>(true, var_0.a.a, arg_3.a && true), vec3<bool>(arg_3.a, true, true)), select(select(vec3<bool>(false, true, false), select(vec3<bool>(false, arg_3.a, var_0.a.a), vec3<bool>(var_0.a.a, var_0.a.a, true), var_0.a.a), vec3<bool>(arg_3.a, var_0.a.a, var_0.a.a)), select(select(vec3<bool>(arg_3.a, var_0.a.a, false), vec3<bool>(false, var_0.a.a, false), var_0.a.a), !vec3<bool>(arg_3.a, false, arg_3.a), vec3<bool>(arg_3.a, true, var_0.a.a)), select(any(vec3<bool>(false, arg_3.a, true)), arg_2 > arg_2, arg_3.a)), func_2(Struct_3(vec2<u32>(33938u, arg_2), u_input.a, ~arg_2, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-501f, 1285f), vec2<f32>(400f, -1330f)))), u_input.b, Struct_3(vec2<u32>(47074u, 23301u), vec4<i32>(20728i, 1i, -1i, -12398i), 18207u, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(385f, 1000f)))))));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: vec3<u32>, arg_3: f32) -> bool {
    global0 = array<vec3<u32>, 5>();
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-560f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_3 + arg_1.x), _wgslsmith_f_op_f32(1000f - arg_1.x)))) < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f + arg_3)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 5>();
    let var_0 = vec4<bool>(all(vec2<bool>(false, !all(vec3<bool>(false, true, false)))), func_4(select(vec3<bool>(true, any(vec2<bool>(true, true)), all(vec2<bool>(true, false))), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false), select(func_1(2147483647i, -20915i, 4294967295u, Struct_1(false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(305f, -369f, 452f, -1840f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-151f, -580f, 1114f, -740f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-111f, -454f, 2038f, 670f) - vec4<f32>(1308f, 679f, 1063f, -1315f)))), min(~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 0u), vec3<u32>(1u, 2011u, 1u)), 5u)], vec3<u32>(1u, firstLeadingBit(4294967295u), ~77872u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-203f, -1606f), _wgslsmith_f_op_f32(-465f + -1179f), true)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-262f)))))), true, all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false))) || all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true)));
    let var_1 = u_input.a.x;
    var var_2 = Struct_1(func_4(!vec3<bool>(true, func_2(Struct_3(vec2<u32>(4294967295u, 0u), u_input.a, 0u, vec2<f32>(1144f, -957f)), -2147483647i, Struct_3(vec2<u32>(32170u, 13319u), u_input.a, 57716u, vec2<f32>(393f, -891f))).x, any(vec2<bool>(false, var_0.x))), vec4<f32>(1f, 1f, 1f, 1f), min(select(global0[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(4294967295u, 5u)], true), vec3<u32>(1u, 1u, 1u)) >> (vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(7304u, 16072u, 0u), vec3<u32>(1u, 7724u, 15495u)), 4294967295u, ~4294967295u) % vec3<u32>(32u)), _wgslsmith_f_op_f32(f32(-1f) * -1710f)));
    let var_3 = ~(~(vec3<i32>(var_1, -37003i, _wgslsmith_mult_i32(2147483647i, 1i)) ^ u_input.a.yxz));
    global0 = array<vec3<u32>, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(290f)), _wgslsmith_clamp_u32(4294967295u, _wgslsmith_dot_vec4_u32(~min(vec4<u32>(48644u, 24718u, 21349u, 27414u), vec4<u32>(18528u, 0u, 4294967295u, 35158u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), firstTrailingBit(vec4<u32>(0u, 1u, 40072u, 26455u)), ~vec4<u32>(57443u, 4294967295u, 4294967295u, 14958u))), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~global0[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(65535u, 5u)] | global0[_wgslsmith_index_u32(1u, 5u)]), 14805u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-884f, 611f, -1100f, 1000f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-579f, 258f, 1505f, -721f) - vec4<f32>(-1229f, 500f, 623f, 1080f))))) + vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-565f)), _wgslsmith_f_op_f32(f32(-1f) * -602f))), -1456f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1137f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(385f - -592f))))));
}

