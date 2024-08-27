struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: vec2<i32>,
    d: i32,
    e: f32,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: vec2<bool>, arg_3: Struct_3) -> f32 {
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(562f, -733f))))))), _wgslsmith_f_op_f32(floor(-895f))));
}

fn func_2(arg_0: Struct_1) -> i32 {
    let var_0 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.b.x, _wgslsmith_f_op_f32(ceil(-1236f))) - _wgslsmith_f_op_f32(606f * arg_0.c)));
    var var_1 = _wgslsmith_clamp_vec2_u32(firstTrailingBit(~firstTrailingBit(vec2<u32>(1u, 1u))), select(firstTrailingBit(countOneBits(vec2<u32>(18349u, 9607u))), ~(~vec2<u32>(70084u, 42943u)), select(select(vec2<bool>(arg_0.a, true), vec2<bool>(arg_0.a, false), vec2<bool>(arg_0.a, false)), select(vec2<bool>(arg_0.a, true), vec2<bool>(false, arg_0.a), vec2<bool>(arg_0.a, arg_0.a)), !vec2<bool>(arg_0.a, arg_0.a))) | max(~(~vec2<u32>(119358u, 4294967295u)), vec2<u32>(1u, 1u)), _wgslsmith_sub_vec2_u32(~countOneBits(vec2<u32>(1u, 5784u)), vec2<u32>(1u, _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(4294967295u, 0u)), vec2<u32>(1u, 1u)))));
    var var_2 = arg_0.b.x;
    var_1 = vec2<u32>(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(~var_1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 27512u, var_1.x, 10831u), vec4<u32>(1u, 25047u, 0u, var_1.x)), var_1.x, 1u)), _wgslsmith_mult_vec4_u32(~vec4<u32>(var_1.x, 4294967295u, 1u, 9670u), ~abs(vec4<u32>(3915u, var_1.x, var_1.x, var_1.x)))), var_1.x | 0u);
    var var_3 = Struct_4(1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, 962f, -880f)), Struct_3(Struct_2(arg_0, u_input.a.zw), 4294967295u), vec2<bool>(true, true), Struct_3(Struct_2(Struct_1(arg_0.a, vec4<f32>(-1317f, var_0.a, arg_0.c, arg_0.c), arg_0.c), u_input.a.zy), ~76877u))) * 699f), select(vec2<i32>(abs(-59155i) ^ u_input.a.x, _wgslsmith_mult_i32(u_input.a.x, -12191i)), u_input.a.ww, vec2<bool>(!any(vec3<bool>(true, arg_0.a, arg_0.a)), true)), 11010i, 1020f);
    return _wgslsmith_mult_i32(abs(1i), abs(12522i));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: u32) -> Struct_5 {
    let var_0 = ~_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(~func_2(Struct_1(false, vec4<f32>(arg_1.x, arg_1.x, -1473f, -1091f), arg_1.x)), _wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x), firstTrailingBit(u_input.a.x)), -u_input.a.x, u_input.a.x));
    let var_1 = Struct_5(arg_1.x);
    var var_2 = Struct_3(Struct_2(Struct_1(all(select(vec3<bool>(false, false, false), arg_0, arg_0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, arg_1.x, var_1.a, arg_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(202f * -207f))), vec2<i32>(-24722i, -35123i)), arg_2);
    var var_3 = _wgslsmith_dot_vec4_u32(min(vec4<u32>(~(arg_2 | arg_2), arg_2, ~reverseBits(63608u), arg_2), select(abs(vec4<u32>(arg_2, arg_2, 36950u, arg_2)), firstLeadingBit(vec4<u32>(arg_2, 10535u, 46711u, var_2.b)) & (vec4<u32>(var_2.b, 0u, var_2.b, 79663u) >> (vec4<u32>(1u, 55459u, 46323u, 34295u) % vec4<u32>(32u))), arg_0.x)), abs(~abs(vec4<u32>(85570u, var_2.b, 26440u, var_2.b))));
    var_2 = Struct_3(Struct_2(Struct_1(false, var_2.a.a.b, var_2.a.a.b.x), ~(-vec2<i32>(-10392i, -18269i))), arg_2);
    return Struct_5(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.a.c) + _wgslsmith_f_op_f32(step(778f, 536f))))))));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_5, arg_2: Struct_1) -> f32 {
    let var_0 = ~(~u_input.a.x) >= 1i;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1.a)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1000f)), -561f)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1056f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(select(vec2<bool>(true, true), vec2<bool>(true, false), true), func_1(vec3<bool>(true, true, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(124f, 1565f, -1000f, 2111f)), 0u), Struct_1(true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(750f, 395f, 284f, -177f)), _wgslsmith_f_op_f32(-1291f - -742f))))));
    var var_1 = all(vec3<bool>(true, true, true));
    var_1 = true;
    let var_2 = vec4<u32>(0u, _wgslsmith_div_u32(firstTrailingBit(~(~31218u)), 0u), ~12388u, 87984u);
    var_1 = true;
    var_1 = !((~0u <= var_2.x) & false);
    var_1 = all(!select(select(vec2<bool>(false, false), vec2<bool>(true, true), -1i < u_input.a.x), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), false), true), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(42463u, var_2.x), abs(var_2.x), var_2.x);
}

