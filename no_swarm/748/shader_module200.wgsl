struct Struct_1 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: bool,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: i32,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4) -> i32 {
    var var_0 = ~(~vec4<u32>(38679u, 16099u, 4294967295u, 10339u));
    let var_1 = ~(~(-2147483647i));
    let var_2 = 58299u;
    let var_3 = !all(select(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, false), !select(vec2<bool>(false, true), vec2<bool>(false, false), false)));
    var_0 = vec4<u32>(u_input.b.x, select(var_2, var_0.x, var_3), 7110u, 1u);
    return abs(_wgslsmith_dot_vec2_i32(max(vec2<i32>(~1716i, u_input.a), reverseBits(vec2<i32>(82669i, -2147483647i))), vec2<i32>(~(i32(-1i) * -40925i), reverseBits(var_1 ^ 41888i))));
}

fn func_2() -> vec4<i32> {
    var var_0 = ~vec4<i32>(~firstTrailingBit(u_input.a), -(~9611i & ~u_input.a), min(_wgslsmith_mult_i32(u_input.a, i32(-1i) * -66226i), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, -21782i)), 2147483647i)), func_3(Struct_4(_wgslsmith_f_op_f32(1000f * 1470f), _wgslsmith_clamp_i32(u_input.a, -39772i, u_input.a))));
    var_0 = vec4<i32>(-13111i, i32(-1i) * -_wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.a, -1i), _wgslsmith_clamp_i32(1i, 39842i, var_0.x), -5676i), ~(-15377i), _wgslsmith_mult_i32(1i, select(-1i, _wgslsmith_add_i32(1293i, var_0.x), true)));
    var var_1 = Struct_3(any(select(select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), any(vec3<bool>(true, true, true)))), Struct_2(Struct_1(vec2<f32>(-387f, 1148f), u_input.b.x), max(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -42517i, u_input.a, var_0.x), vec4<i32>(u_input.a, u_input.a, -2147483647i, -54760i)), -_wgslsmith_mod_i32(2147483647i, u_input.a)), true), vec4<u32>(_wgslsmith_mod_u32(u_input.b.x, abs(u_input.b.x)), countOneBits(~(~1u)), ~(abs(1u) << (~4294967295u % 32u)), abs(4294967295u)), Struct_1(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(ceil(398f)), 2169f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-389f, -460f) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1291f, -811f), vec2<f32>(-678f, 626f)))))), 10709u));
    let var_2 = select(-vec3<i32>(u_input.a, max(var_0.x, u_input.a) << (abs(u_input.b.x) % 32u), _wgslsmith_mod_i32(u_input.a >> (25332u % 32u), reverseBits(0i))), _wgslsmith_sub_vec3_i32(var_0.zzz, ~vec3<i32>(max(u_input.a, var_1.b.b), i32(-1i) * -21714i, 39397i)), !vec3<bool>(var_1.a, _wgslsmith_f_op_f32(floor(-385f)) >= _wgslsmith_f_op_f32(291f * 909f), false && all(vec2<bool>(false, var_1.a))));
    var_0 = _wgslsmith_mult_vec4_i32(min(abs(vec4<i32>(-11050i, var_1.b.b, -2147483647i, var_1.b.b)), select(vec4<i32>(-1i, var_1.b.b, var_1.b.b, var_0.x), vec4<i32>(2147483647i, u_input.a, 0i, var_2.x), var_1.b.c) & vec4<i32>(var_1.b.b, var_0.x, var_0.x, -1i)) ^ _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(3328i, 2147483647i, var_1.b.b, -1i) & vec4<i32>(-10386i, var_1.b.b, -13558i, u_input.a), ~vec4<i32>(-16045i, -125926i, 1i, 22169i)), -(~vec4<i32>(var_2.x, var_2.x, var_1.b.b, var_2.x))), -(vec4<i32>(-1i) * -firstLeadingBit(vec4<i32>(2147483647i, 24402i, var_1.b.b, var_0.x))));
    return vec4<i32>(1i, ~(-2147483647i), u_input.a, func_3(Struct_4(-772f, ~(~1i))));
}

fn func_1(arg_0: Struct_2) -> StorageBuffer {
    let var_0 = arg_0.a.b;
    var var_1 = arg_0.b;
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -369f);
    var var_3 = select(abs(reverseBits(vec4<i32>(u_input.a, 36594i, arg_0.b, u_input.a))), -_wgslsmith_clamp_vec4_i32(max(vec4<i32>(arg_0.b, 51364i, u_input.a, -2147483647i), vec4<i32>(arg_0.b, u_input.a, -2147483647i, u_input.a)) >> (vec4<u32>(var_0, var_0, u_input.b.x, 0u) % vec4<u32>(32u)), reverseBits(~vec4<i32>(0i, -2147483647i, u_input.a, u_input.a)), func_2()), arg_0.c);
    var var_4 = -1431f;
    return StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.a.a.x, arg_0.a.a.x, arg_0.a.a.x, 1454f), vec4<f32>(arg_0.a.a.x, 1733f, -965f, var_2), vec4<bool>(true, arg_0.c, arg_0.c, arg_0.c)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.a.a.x, 207f, -711f, 1971f), vec4<f32>(arg_0.a.a.x, -1000f, 142f, var_2)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, var_2, -277f, 812f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.a.x, var_2, -652f, arg_0.a.a.x))))), vec4<u32>(~_wgslsmith_clamp_u32(23811u, arg_0.a.b & var_0, firstLeadingBit(42388u)), var_0, u_input.b.x & u_input.b.x, abs(max(u_input.b.x, var_0) & (4294967295u >> (1u % 32u)))), 1i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(974f, arg_0.a.a.x, 2540f, arg_0.a.a.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, -235f, -194f, 137f))))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-121f, 2023f, 275f, arg_0.a.a.x) + vec4<f32>(var_2, -1130f, 343f, arg_0.a.a.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(872f, -706f, 1403f, 510f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1341f, -1127f, arg_0.a.a.x, -555f)), select(arg_0.c, arg_0.c, true)))))), 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -979f), -259f), u_input.b.x), ~countOneBits(u_input.a), true));
}

