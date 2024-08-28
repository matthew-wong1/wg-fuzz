struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 12> = array<vec2<bool>, 12>(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true));

var<private> global1: array<u32, 20>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: bool, arg_1: vec3<u32>, arg_2: vec2<bool>, arg_3: vec4<f32>) -> f32 {
    global0 = array<vec2<bool>, 12>();
    let var_0 = vec3<u32>(1u << (1u % 32u), countOneBits(~max(45682u, u_input.d >> (u_input.a % 32u))), 14935u);
    var var_1 = _wgslsmith_f_op_vec3_f32(-arg_3.yxz);
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(arg_3.zxz, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1366f, var_1.x, 1831f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -263f, 1000f)))))) + vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-var_1.x), -822f));
    var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.x, _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-723f * arg_3.x), -2177f))), 312f));
    return _wgslsmith_f_op_f32(min(789f, var_1.x));
}

fn func_1() -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 618f)), _wgslsmith_f_op_f32(-350f - -1251f), _wgslsmith_f_op_f32(f32(-1f) * -630f), _wgslsmith_f_op_f32(select(-276f, -1728f, true))))) + vec4<f32>(_wgslsmith_f_op_f32(func_2(true, _wgslsmith_add_vec3_u32(~vec3<u32>(0u, global1[_wgslsmith_index_u32(0u, 20u)], 44690u), vec3<u32>(u_input.d, global1[_wgslsmith_index_u32(u_input.b, 20u)], u_input.b) >> (vec3<u32>(0u, u_input.a, 1u) % vec3<u32>(32u))), global0[_wgslsmith_index_u32(u_input.a, 12u)], _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1613f, 301f, -875f, 315f))))), _wgslsmith_f_op_f32(f32(-1f) * -176f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(409f - 346f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(188f - -1170f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1521f - -117f), -1967f)), -589f)));
    let var_1 = _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(~(~global1[_wgslsmith_index_u32(u_input.c.x, 20u)]), 1u), u_input.c.xy, abs(u_input.c.zz)), vec2<u32>(~countOneBits(reverseBits(4294967295u)), ~(global1[_wgslsmith_index_u32(0u, 20u)] | 90751u) >> (global1[_wgslsmith_index_u32(u_input.a, 20u)] % 32u)));
    global1 = array<u32, 20>();
    let var_2 = !(!all(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false))));
    return ~u_input.c;
}

fn func_3(arg_0: i32) -> f32 {
    global0 = array<vec2<bool>, 12>();
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -661f);
    global0 = array<vec2<bool>, 12>();
    let var_1 = vec4<u32>(reverseBits(_wgslsmith_dot_vec2_u32(u_input.c.zz, vec2<u32>(global1[_wgslsmith_index_u32(102959u, 20u)], u_input.b)) | global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(5170u, 20u)], 20u)], 20u)], 20u)] << (4294967295u % 32u), 20u)]) & countOneBits(~u_input.c.x), 16988u, ~(~(~(~3747u))), global1[_wgslsmith_index_u32(reverseBits(~28737u), 20u)]);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))));
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-2378f + _wgslsmith_f_op_f32(-2306f + -1030f));
    let var_1 = select(vec3<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(1i, 0i, 0i, -39103i), vec4<i32>(-703i, 2147483647i, 2147483647i, -33940i)) ^ -14674i, -1i, _wgslsmith_mult_i32(-28064i, ~(~(-1i)))), abs(vec3<i32>(firstTrailingBit(2147483647i) & ~56008i, _wgslsmith_sub_i32(-1i, 4987i), -_wgslsmith_dot_vec2_i32(vec2<i32>(24016i, 16391i), vec2<i32>(40679i, 0i)))), false);
    var var_2 = ~func_1();
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(1174f, _wgslsmith_f_op_f32(func_3(max(reverseBits(var_1.x), var_1.x)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(716f, 723f)))))) - _wgslsmith_f_op_f32(trunc(1512f))));
    var var_3 = abs(select(var_1.yz, var_1.yx, false));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1441f), 1073f))));
}

