struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: vec3<u32>) -> f32 {
    let var_0 = vec2<u32>(arg_1, min(arg_2.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 24158u, arg_1), arg_2)) << (u_input.a % 32u));
    let var_1 = vec4<u32>(var_0.x, arg_1, arg_1, select(~38752u, _wgslsmith_dot_vec2_u32(~arg_2.xx, ~vec2<u32>(u_input.a, 641u)) ^ arg_2.x, true));
    var var_2 = -vec2<i32>(1i, 1i);
    let var_3 = abs(abs(1i));
    let var_4 = true;
    return -929f;
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<f32>) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(arg_1, arg_1)))), arg_1.yxy, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-780f, arg_1.x, -990f) * arg_1.wwx)))), _wgslsmith_f_op_vec3_f32(arg_1.yxw + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(arg_1.yyy, arg_1.xyw)), arg_1.yxz, false))))));
    let var_1 = Struct_2(_wgslsmith_mod_vec3_u32(select(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<u32>(1u, u_input.a, 34318u), vec3<u32>(44246u, 1u, 1u)), min(~vec3<u32>(u_input.a, 0u, u_input.a), countOneBits(vec3<u32>(u_input.a, 1u, 4720u))), select(arg_0.x, arg_0.x, true) && !arg_0.x), _wgslsmith_mult_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 0u, 2116u), vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)), abs(~vec3<u32>(4839u, u_input.a, u_input.a)))), vec3<i32>(reverseBits(0i), ~_wgslsmith_mult_i32(~0i, _wgslsmith_add_i32(-5121i, -1i)), _wgslsmith_dot_vec4_i32(select(~vec4<i32>(-2147483647i, -2147483647i, -42010i, -2147483647i), ~vec4<i32>(-2147483647i, -2147483647i, -32120i, 2147483647i), true), _wgslsmith_clamp_vec4_i32(~vec4<i32>(-14064i, 46640i, -1i, -33839i), firstLeadingBit(vec4<i32>(0i, 21748i, -23823i, 0i)), -vec4<i32>(0i, 2147483647i, 34831i, 15271i)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-2780f, -104f, -266f))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-var_0.c))))));
    let var_3 = vec2<bool>(any(!select(select(vec3<bool>(arg_0.x, false, false), vec3<bool>(false, arg_0.x, false), arg_0.x), !vec3<bool>(false, true, arg_0.x), select(vec3<bool>(arg_0.x, true, true), vec3<bool>(true, true, true), vec3<bool>(true, arg_0.x, true)))), arg_0.x);
    let var_4 = ~2147483647i & (~(~48179i) << (var_1.a.x % 32u));
    return var_2.x;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_3(Struct_2(~vec3<u32>(~u_input.a, 25238u, u_input.a), -vec3<i32>(2147483647i, -6715i, -2147483647i) ^ (countOneBits(vec3<i32>(0i, 38306i, 54485i)) << (~vec3<u32>(u_input.a, u_input.a, 74453u) % vec3<u32>(32u)))));
    var var_1 = Struct_4(Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(388f, 1000f, 836f, -1000f) * vec4<f32>(540f, 627f, -1000f, 230f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(313f - -1013f), 2080f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-291f, -1335f, 596f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-504f, -534f, -1338f) * vec3<f32>(881f, 143f, -103f))) * vec3<f32>(_wgslsmith_f_op_f32(func_3(vec2<bool>(false, false), vec4<f32>(981f, -454f, 855f, -794f))), -1951f, _wgslsmith_f_op_f32(-369f + 340f)))));
    var var_2 = var_0.a;
    let var_3 = -_wgslsmith_mod_i32(-2147483647i >> ((_wgslsmith_dot_vec3_u32(vec3<u32>(29333u, u_input.a, 31393u), var_2.a) & _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.a.x, var_0.a.a.x, var_2.a.x), var_2.a)) % 32u), var_0.a.b.x);
    let var_4 = !vec3<bool>(true, !all(vec4<bool>(true, false, true, true)) || any(vec3<bool>(true, true, true)), !(any(vec4<bool>(false, true, true, true)) || true));
    return var_1.a;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<bool>, arg_2: f32, arg_3: Struct_4) -> i32 {
    let var_0 = ~select(4294967295u, (8003u >> (u_input.a % 32u)) & u_input.a, arg_1.x) >> ((max(select(u_input.a, u_input.a, !arg_1.x), u_input.a >> (~u_input.a % 32u)) ^ ~(~(~18917u))) % 32u);
    var var_1 = _wgslsmith_f_op_f32(floor(478f));
    let var_2 = Struct_2(_wgslsmith_sub_vec3_u32(max(~vec3<u32>(u_input.a, 1u, 27532u), ~vec3<u32>(u_input.a, 4294967295u, 45821u)), vec3<u32>(1u, ~var_0, var_0) & _wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(u_input.a, var_0, 1862u)), ~vec3<u32>(u_input.a, 1u, var_0))), arg_0 | vec3<i32>(116i, 9526i, firstLeadingBit(~arg_0.x)));
    var_1 = 185f;
    var var_3 = Struct_3(var_2);
    return select(arg_0.x, 2147483647i, (any(select(vec4<bool>(arg_1.x, false, arg_1.x, false), vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x), false)) && true) & arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~0i;
    var_0 = firstTrailingBit(_wgslsmith_mod_i32(1i, 1i));
    var_0 = _wgslsmith_mod_i32(13670i, reverseBits(1i));
    var_0 = 1i;
    var_0 = _wgslsmith_mod_i32(firstTrailingBit(-(22115i >> (0u % 32u))) >> (_wgslsmith_div_u32(~25720u, _wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.a, 36537u), ~u_input.a, u_input.a)) % 32u), func_4(vec3<i32>(_wgslsmith_add_i32(min(-1365i, -1i), ~1i), -1i, firstLeadingBit(2147483647i)), select(vec2<bool>(true, true), vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(false, true), false)), _wgslsmith_f_op_f32(1133f * _wgslsmith_f_op_f32(func_1(1f, countOneBits(17362u), max(vec3<u32>(52414u, u_input.a, u_input.a), vec3<u32>(u_input.a, 1u, u_input.a))))), Struct_4(func_2())));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<i32>(~1i, _wgslsmith_clamp_i32(min(-1i, 21389i), 22207i, reverseBits(-32425i)), func_4(vec3<i32>(5897i, -2147483647i, 2147483647i), select(vec2<bool>(false, true), vec2<bool>(false, false), true), 899f, Struct_4(Struct_1(vec4<f32>(-850f, 491f, 719f, -1060f), vec3<f32>(416f, 329f, 2031f), vec3<f32>(1231f, -820f, 389f))))), _wgslsmith_f_op_f32(select(1f, -828f, true)), ~vec3<u32>(u_input.a, ~u_input.a, select(u_input.a, 0u, true)) >> (reverseBits(vec3<u32>(u_input.a, 42912u, 0u) | ~vec3<u32>(19031u, 83106u, u_input.a)) % vec3<u32>(32u)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, ~u_input.a >> (~1u % 32u), 1u, _wgslsmith_mod_u32(4294967295u, u_input.a) | _wgslsmith_mod_u32(u_input.a, u_input.a)), vec4<u32>(10495u, (u_input.a & 0u) & (u_input.a << (4294967295u % 32u)), 4294967295u, _wgslsmith_clamp_u32(_wgslsmith_div_u32(50233u, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 0u, 101469u, 0u)), 71527u))));
}

