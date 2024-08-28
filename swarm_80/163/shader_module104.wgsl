struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: f32) -> f32 {
    let var_0 = !select(!(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false))), vec4<bool>(true, true, true, true), !all(vec3<bool>(true, true, true)));
    let var_1 = 684f;
    var var_2 = arg_0.x;
    var_2 = _wgslsmith_sub_i32(2147483647i, countOneBits(~(_wgslsmith_mod_i32(arg_0.x, arg_0.x) >> (~u_input.a.x % 32u))));
    var_2 = select(0i, -9199i, var_0.x);
    return -1015f;
}

fn func_2(arg_0: f32) -> f32 {
    return _wgslsmith_f_op_f32(func_3(-(~_wgslsmith_add_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, 1i, 1i))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), arg_0), Struct_2(Struct_1(vec2<f32>(arg_0, _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -134f) - 233f), ~u_input.a.x)), _wgslsmith_f_op_f32(1024f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + arg_0) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(arg_0)), _wgslsmith_div_f32(-236f, arg_0), 4294967295u <= u_input.a.x))))));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_0.a, arg_0.a)), vec2<f32>(-370f, _wgslsmith_f_op_f32(min(arg_0.b, arg_0.b)))));
    var_0 = arg_0.a;
    var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(arg_0.c))), -855f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(arg_0.a)), vec2<f32>(_wgslsmith_div_f32(var_0.x, 1798f), _wgslsmith_f_op_f32(-arg_0.c)))), vec2<f32>(arg_0.a.x, var_0.x)));
    var_0 = _wgslsmith_f_op_vec2_f32(arg_0.a + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_0.a), arg_0.a, !select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true), true))));
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.x, 1258f));
    return arg_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec3_u32(min(vec3<u32>(~1u, ~0u, 102312u), _wgslsmith_mod_vec3_u32(~(u_input.a.xxz >> (vec3<u32>(42924u, u_input.b, 1326u) % vec3<u32>(32u))), ~u_input.a.wwz)), abs(vec3<u32>(u_input.b, u_input.a.x, 4294967295u)));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1(Struct_1(vec2<f32>(-709f, -1000f), -1000f, -416f, 74347u), vec3<i32>(-20936i, 15161i, -38664i))))) - 430f), 1354f);
    var var_2 = any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, all(vec3<bool>(false, true, true))), !(!any(vec3<bool>(true, false, false)))));
    var_2 = true;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-282f + -584f) + 509f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-150f)))) * _wgslsmith_f_op_f32(f32(-1f) * -1175f)));
    var var_4 = Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1242f + 822f))), _wgslsmith_f_op_f32(451f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3), _wgslsmith_f_op_f32(574f + var_3))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1070f + -806f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-145f)))), _wgslsmith_dot_vec4_u32(firstTrailingBit(firstLeadingBit(u_input.a)), u_input.a)));
    let var_5 = Struct_4(!vec2<bool>(select(any(vec4<bool>(true, true, true, false)), true, true), all(select(vec2<bool>(false, true), vec2<bool>(true, false), true))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(var_4.a.a)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_4.a.b))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_4.a.c, 1837f))))), 1229f, _wgslsmith_f_op_f32(420f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(2473f, var_4.a.a.x)), _wgslsmith_div_f32(var_3, 2369f))), ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 45719u, u_input.a.x) ^ u_input.a.yyw, u_input.a.wzw)), Struct_3(11690u, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(func_1(var_4.a, vec3<i32>(33777i, 4000i, -37452i))), 1252f), _wgslsmith_f_op_f32(var_3 + var_3), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-949f * -1000f))), ~var_4.a.d)));
    var_4 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-var_4.a.a)))), _wgslsmith_f_op_f32(ceil(500f)), _wgslsmith_f_op_f32(-var_5.c.b.c), ~abs(0u)));
    var_2 = select(true, select(~19967u >= _wgslsmith_dot_vec3_u32(u_input.a.yzx, vec3<u32>(25137u, var_4.a.d, 1u)), !var_5.a.x, var_5.a.x), var_5.a.x) && !all(vec4<bool>(var_5.a.x | false, false, var_5.a.x && var_5.a.x, var_5.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1427f, var_4.a.a.x, -840f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(485f, 657f, -1200f))))))));
}

