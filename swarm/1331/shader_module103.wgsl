struct Struct_1 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 25>;

var<private> global1: u32;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1(arg_0: vec2<i32>, arg_1: bool, arg_2: vec3<bool>) -> f32 {
    let var_0 = Struct_2(Struct_1(!(!(arg_0.x == 1i)), !select(!vec3<bool>(false, arg_1, arg_1), !vec3<bool>(arg_2.x, true, true), arg_2)));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(346f, 933f)))) + vec2<f32>(-1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -449f))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-1295f, _wgslsmith_f_op_f32(abs(476f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -836f)))));
    let var_2 = var_0.a;
    global1 = firstLeadingBit(~48909u ^ _wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(u_input.b, u_input.b), vec3<u32>(_wgslsmith_sub_u32(40977u, u_input.b.x), 0u, u_input.b.x)));
    global0 = array<i32, 25>();
    return -1000f;
}

fn func_2() -> f32 {
    var var_0 = Struct_2(Struct_1(any(vec4<bool>(true, true, true, true)), select(vec3<bool>(false, u_input.b.x == 16505u, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), !select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false)))));
    var var_1 = 362f;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, -503f))));
}

fn func_3(arg_0: vec3<f32>, arg_1: u32, arg_2: vec4<u32>, arg_3: Struct_2) -> u32 {
    let var_0 = Struct_2(Struct_1(arg_3.a.a, vec3<bool>(any(!vec4<bool>(arg_3.a.b.x, true, true, true)), false, true)));
    let var_1 = u_input.b.xy;
    var var_2 = _wgslsmith_sub_i32(countOneBits(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(20912i, -12786i, u_input.a, -1i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), 1i)), u_input.a) > (-1i | u_input.a);
    var var_3 = -_wgslsmith_add_vec3_i32(-countOneBits(vec3<i32>(29945i, 9357i, global0[_wgslsmith_index_u32(2751u, 25u)]) ^ vec3<i32>(u_input.a, u_input.a, u_input.a)), select(select(_wgslsmith_add_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(var_1.x, 25u)], 0i, 2147483647i), vec3<i32>(u_input.a, -31865i, global0[_wgslsmith_index_u32(1u, 25u)])), select(vec3<i32>(-2147483647i, 9144i, u_input.a), vec3<i32>(global0[_wgslsmith_index_u32(arg_1, 25u)], u_input.a, u_input.a), vec3<bool>(arg_3.a.b.x, true, arg_3.a.a)), vec3<bool>(var_0.a.b.x, var_0.a.a, arg_3.a.b.x)), vec3<i32>(global0[_wgslsmith_index_u32(20454u, 25u)], -global0[_wgslsmith_index_u32(4294967295u, 25u)], _wgslsmith_sub_i32(u_input.a, u_input.a)), select(select(vec3<bool>(arg_3.a.a, var_0.a.b.x, var_0.a.a), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), select(arg_3.a.b, vec3<bool>(true, var_0.a.a, arg_3.a.a), true), select(vec3<bool>(true, var_0.a.b.x, false), vec3<bool>(true, arg_3.a.a, true), arg_3.a.b))));
    global0 = array<i32, 25>();
    return max(_wgslsmith_dot_vec4_u32(arg_2, ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, arg_1, 59254u, var_1.x), vec4<u32>(var_1.x, 8426u, var_1.x, 44665u), vec4<u32>(0u, 0u, 32695u, 4294967295u)))), var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~func_3(vec3<f32>(_wgslsmith_f_op_f32(func_1(~vec2<i32>(global0[_wgslsmith_index_u32(0u, 25u)], 25598i), true, select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false)))), 492f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - -2476f)), (1u & (4294967295u << (u_input.b.x % 32u))) & 4294967295u, vec4<u32>(u_input.b.x, 17735u, u_input.b.x, ~_wgslsmith_add_u32(9963u, u_input.b.x)), Struct_2(Struct_1(true, vec3<bool>(false, false, false))));
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1351f, 310f)))))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(651f, 261f)), _wgslsmith_f_op_f32(abs(-491f)))) - vec2<f32>(_wgslsmith_f_op_f32(136f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-847f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-724f)))));
    var var_1 = Struct_1(false, select(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), true), select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), true), select(select(vec3<bool>(true, true, false), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), any(vec3<bool>(false, true, true))), vec3<bool>(true, true, true), any(vec4<bool>(false, false, false, true)) | true)));
    var_1 = Struct_1(var_1.b.x, vec3<bool>(!(var_0.x >= -1000f), !(!var_1.b.x), false));
    global1 = _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, ~firstLeadingBit(32794u), func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -808f, var_0.x) + vec3<f32>(var_0.x, var_0.x, var_0.x)), 25923u, _wgslsmith_sub_vec4_u32(vec4<u32>(81189u, 19421u, 36277u, u_input.b.x), vec4<u32>(1u, u_input.b.x, 50407u, 1u)), Struct_2(Struct_1(var_1.a, vec3<bool>(false, false, var_1.b.x)))), u_input.b.x >> ((4294967295u & u_input.b.x) % 32u)), firstTrailingBit(select(vec4<u32>(4294967295u, u_input.b.x, 63504u, u_input.b.x), vec4<u32>(23509u, 1u, u_input.b.x, 4294967295u), vec4<bool>(true, var_1.a, false, false)) >> (~vec4<u32>(u_input.b.x, 0u, u_input.b.x, 4294967295u) % vec4<u32>(32u)))), 1u);
    let var_2 = _wgslsmith_div_u32(~(~(u_input.b.x << (_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)) % 32u))), ~countOneBits(4294967295u));
    var var_3 = _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(_wgslsmith_clamp_i32(u_input.a, 18997i, 0i), global0[_wgslsmith_index_u32(4294967295u & var_2, 25u)])) >> (vec2<u32>(_wgslsmith_div_u32(~55011u, 117450u), max(var_2, select(u_input.b.x, var_2, false))) % vec2<u32>(32u)), countOneBits(vec2<i32>(_wgslsmith_dot_vec3_i32(max(vec3<i32>(2147483647i, 1i, -23768i), vec3<i32>(u_input.a, u_input.a, global0[_wgslsmith_index_u32(9489u, 25u)])), vec3<i32>(0i, 1i, global0[_wgslsmith_index_u32(var_2, 25u)])), -27666i)));
    let var_4 = select(!var_1.b, var_1.b, var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~max(func_3(vec3<f32>(var_0.x, var_0.x, var_0.x), 15696u, vec4<u32>(20556u, u_input.b.x, var_2, u_input.b.x), Struct_2(Struct_1(var_4.x, var_1.b))), var_2), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(5542u, u_input.b.x, var_2, 52563u), vec4<u32>(4486u, 1u, 0u, var_2)), vec4<u32>(0u, 6020u, var_2, var_2)), abs(~vec4<u32>(35586u, var_2, var_2, 47476u))), 17934u), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x) * 307f), -726f) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(floor(124f)))))));
}

