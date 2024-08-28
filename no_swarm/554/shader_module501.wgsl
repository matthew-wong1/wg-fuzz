struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_2,
    c: f32,
    d: Struct_3,
    e: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> bool {
    var var_0 = 1i;
    var var_1 = select(!(!vec4<bool>(false, all(vec4<bool>(false, true, false, true)), true, true)), select(vec4<bool>(true, true, true, !any(vec4<bool>(true, true, false, false))), vec4<bool>(false, true, any(vec4<bool>(true, true, true, true)), any(vec3<bool>(false, false, false)) || true), !any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)))), true);
    var var_2 = Struct_5(i32(-1i) * -6712i, vec2<i32>(1710i, firstLeadingBit(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, 2966i), vec2<i32>(-34521i, 57873i)), vec2<i32>(496i, 1i)))));
    let var_3 = vec2<i32>(~(~_wgslsmith_div_i32(-20650i, var_2.a)), var_2.a);
    var_2 = Struct_5(var_3.x << (~25574u % 32u), vec2<i32>(1i, _wgslsmith_add_i32(var_3.x, var_3.x)));
    return var_1.x;
}

fn func_2() -> vec4<bool> {
    let var_0 = select(vec3<bool>(!(!(u_input.a > 4294967295u)), select(func_3(), false, any(vec2<bool>(true, true))), any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), any(vec4<bool>(false, false, false, true))))), vec3<bool>(true, all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), 1i == _wgslsmith_div_i32(select(-3152i, -44657i, false), _wgslsmith_div_i32(53196i, 24534i))), any(vec3<bool>(true, true, true)) || true);
    let var_1 = Struct_4(vec4<bool>(func_3(), var_0.x, true, select(0i, _wgslsmith_mod_i32(25454i, -19788i), true) > reverseBits(1i)), Struct_2(Struct_1(var_0), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(148f, 564f, -1359f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(3211f, 1499f, -1675f))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-110f, 2389f, -2706f) - vec3<f32>(-1217f, -692f, -1000f))))), Struct_1(vec3<bool>(true, false && var_0.x, true)), abs(_wgslsmith_mod_i32(-20721i >> (0u % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(-1i, -1i))))), 787f, Struct_3(vec2<bool>(!var_0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(14172i, 2147483647i, 1i), vec3<i32>(-1i, 11003i, 1i)) < _wgslsmith_div_i32(1i, 1i)), 0i), Struct_2(Struct_1(vec3<bool>(false, true, var_0.x)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1073f, -765f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-1000f)))), _wgslsmith_f_op_f32(abs(-1776f))), Struct_1(select(!var_0, select(vec3<bool>(var_0.x, true, true), var_0, var_0.x), select(false, var_0.x, var_0.x))), -_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(18831i, -21192i, 4776i, -2147483647i), vec4<i32>(6514i, 2147483647i, -59635i, 1i)), vec4<i32>(-2147483647i, -12876i, -28831i, 3574i))));
    var var_2 = true;
    var_2 = var_1.a.x;
    var_2 = var_1.a.x;
    return vec4<bool>(true, any(var_1.a) == all(vec2<bool>(any(vec4<bool>(var_0.x, var_0.x, true, var_0.x)), true)), var_0.x, func_3());
}

fn func_1() -> vec2<u32> {
    let var_0 = Struct_1(vec3<bool>(true, all(func_2()), !(_wgslsmith_add_u32(u_input.a, 1u) > _wgslsmith_dot_vec4_u32(vec4<u32>(76759u, 1u, 65693u, 6538u), vec4<u32>(0u, 1u, u_input.a, u_input.a)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(1178f)), _wgslsmith_f_op_f32(abs(-1000f)))) - 1000f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-380f, -183f))));
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.x))));
    var var_2 = abs(~(~1u));
    var_2 = reverseBits(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.a, 64407u) << (~vec2<u32>(u_input.a, 0u) % vec2<u32>(32u))), abs(select(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(17307u, u_input.a), vec2<u32>(4294967295u, 4294967295u)), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(1u, 0u)), vec2<bool>(true, false)))));
    return ~(~vec2<u32>(1u, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 7686u), vec3<u32>(u_input.a, u_input.a, u_input.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(vec2<u32>(1u, ~(~max(u_input.a, u_input.a))));
    var var_1 = Struct_1(vec3<bool>(true, true, true));
    let var_2 = -103f;
    var_0 = func_1();
    var_1 = Struct_1(!func_2().xxz);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(33232u, ~u_input.a, _wgslsmith_add_u32(~(~var_0.x), 994u)), _wgslsmith_sub_vec4_u32(vec4<u32>(abs(1u), var_0.x, ~min(4294967295u, 1u), select(var_0.x, 0u, var_1.a.x) >> (~30286u % 32u)), ~vec4<u32>(4294967295u, var_0.x, 87684u, var_0.x) >> (~abs(vec4<u32>(52237u, var_0.x, var_0.x, u_input.a)) % vec4<u32>(32u))), 0i, 29506i);
}

