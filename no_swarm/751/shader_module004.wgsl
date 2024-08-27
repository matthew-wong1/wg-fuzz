struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec4<i32>) -> u32 {
    return countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(76307u & u_input.b.x, u_input.b.x, arg_1.c, _wgslsmith_mult_u32(u_input.b.x, 0u)) >> (reverseBits(~vec4<u32>(1u, 4294967295u, 1u, 23808u)) % vec4<u32>(32u)), vec4<u32>(14524u | arg_1.c, arg_1.c, reverseBits(u_input.b.x), _wgslsmith_sub_u32(arg_1.c, arg_1.c))));
}

fn func_2(arg_0: vec3<f32>, arg_1: f32) -> Struct_1 {
    let var_0 = !vec3<bool>(any(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false))), arg_1 != _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(2072f)), arg_1), ~(~90569u) <= ~func_3(vec3<i32>(-1i, u_input.c, 2147483647i), Struct_1(1000f, u_input.c, u_input.b.x, -17541i), vec4<i32>(u_input.c, -2147483647i, -16252i, 31953i)));
    let var_1 = arg_0.zz;
    var var_2 = arg_0;
    var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_0, arg_0, false))) - vec3<f32>(_wgslsmith_f_op_f32(floor(-1464f)), _wgslsmith_f_op_f32(var_1.x + arg_1), _wgslsmith_f_op_f32(f32(-1f) * -800f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-763f, 1380f, 390f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 154f, var_2.x))))));
    let var_3 = _wgslsmith_div_f32(var_2.x, arg_1);
    return Struct_1(arg_1, -43847i, _wgslsmith_sub_u32(4294967295u, ~u_input.b.x), 0i);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.a * _wgslsmith_f_op_f32(f32(-1f) * -2287f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1795f + -265f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_2.a - arg_1.a))));
    var var_1 = vec3<u32>(1u, ~13613u, 0u);
    var_1 = ~vec3<u32>(4294967295u, ~firstTrailingBit(30907u), u_input.b.x);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(abs(arg_1.a)), abs(_wgslsmith_dot_vec2_i32(~max(vec2<i32>(arg_1.d, -82549i), vec2<i32>(-67440i, 34461i)), abs(vec2<i32>(u_input.a, -25273i)) >> (var_1.xx % vec2<u32>(32u)))), u_input.b.x, 1i);
    var var_3 = arg_0;
    return all(vec3<bool>(false, any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false))), all(vec3<bool>(false, false, true)) && any(vec2<bool>(false, true)))) | (arg_2.a == _wgslsmith_f_op_f32(-1659f - _wgslsmith_f_op_f32(trunc(-2257f))));
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-655f, -1658f, 771f, 819f) - vec4<f32>(-1992f, 595f, -442f, -272f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-288f, -1030f, 1246f, -1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(402f, 1095f, -1000f, -2490f) + vec4<f32>(-1606f, 1151f, -1000f, -831f))))), vec4<f32>(2797f, _wgslsmith_f_op_f32(674f + _wgslsmith_f_op_f32(trunc(-871f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1382f)) - 597f), 1f))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-625f)), 554f)), ~u_input.c, 96339u, abs(u_input.c));
    var var_2 = select(vec2<bool>(!any(vec2<bool>(true, true)), false), select(vec2<bool>(true, true), vec2<bool>(all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false))), select(true, all(vec3<bool>(false, true, false)), true)), true), func_4(_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_add_u32(48569u, var_1.c), firstTrailingBit(39860u), 0u & u_input.b.x, _wgslsmith_clamp_u32(0u, var_1.c, 28916u)), ~(vec4<u32>(u_input.b.x, 43227u, u_input.b.x, 79961u) & vec4<u32>(var_1.c, var_1.c, var_1.c, var_1.c)), ~firstTrailingBit(vec4<u32>(31848u, var_1.c, 0u, u_input.b.x))), var_1, func_2(var_0.wxy, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(var_0.x - var_0.x)))));
    let var_3 = var_1.c;
    var var_4 = !select(!select(select(vec2<bool>(true, var_2.x), vec2<bool>(var_2.x, var_2.x), vec2<bool>(true, false)), !vec2<bool>(var_2.x, var_2.x), any(vec3<bool>(false, var_2.x, false))), select(!(!vec2<bool>(false, var_2.x)), vec2<bool>(var_2.x, any(vec2<bool>(var_2.x, false))), vec2<bool>(true, var_2.x)), vec2<bool>(!(var_0.x > 708f), all(select(vec4<bool>(var_2.x, false, false, true), vec4<bool>(var_2.x, var_2.x, var_2.x, false), var_2.x))));
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, ~_wgslsmith_mod_u32(63416u, 6564u), _wgslsmith_mult_u32(firstLeadingBit(u_input.b.x), ~u_input.b.x)), _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x), u_input.b), ~vec3<u32>(5843u, 3119u, u_input.b.x)) ^ u_input.b, vec3<u32>(_wgslsmith_div_u32(8249u, _wgslsmith_dot_vec2_u32(u_input.b.zx, u_input.b.zx)), ~(~u_input.b.x), _wgslsmith_sub_u32(func_1(), ~u_input.b.x))), vec3<u32>(4294967295u, firstLeadingBit(_wgslsmith_mult_u32(54062u, abs(1u))), 56799u));
    var_0 = vec3<u32>(~abs(var_0.x), var_0.x, u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(~13751i, u_input.a), -((vec3<i32>(-1i) * -vec3<i32>(u_input.a, u_input.c, u_input.c)) ^ vec3<i32>(-u_input.c, u_input.c & u_input.c, 0i & u_input.c)), vec4<f32>(_wgslsmith_f_op_f32(max(139f, _wgslsmith_f_op_f32(f32(-1f) * -1783f))), 1559f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1584f + 1246f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1119f - 717f)) * _wgslsmith_f_op_f32(sign(680f)))), -vec2<i32>(u_input.c, u_input.a), ~firstLeadingBit(~(~vec3<u32>(0u, u_input.b.x, 0u))));
}

