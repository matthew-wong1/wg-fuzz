struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: i32) -> u32 {
    var var_0 = any(!vec4<bool>(true, !all(vec3<bool>(false, false, true)), all(vec4<bool>(true, false, false, false)) || true, _wgslsmith_f_op_f32(floor(arg_0.b.x)) == _wgslsmith_f_op_f32(step(1319f, arg_0.b.x))));
    var_0 = true;
    let var_1 = arg_0.b.x;
    let var_2 = Struct_1(reverseBits(arg_1 | _wgslsmith_sub_vec4_u32(vec4<u32>(17812u, 1u, arg_1.x, 1u), vec4<u32>(u_input.c, u_input.a, arg_1.x, arg_1.x))) & vec4<u32>(224u, _wgslsmith_dot_vec4_u32(max(vec4<u32>(2474u, 1u, arg_0.a.x, 1u), arg_0.a), vec4<u32>(25504u, 44254u, arg_0.a.x, arg_0.a.x)), 28391u, 7762u), _wgslsmith_f_op_vec3_f32(-arg_0.b));
    let var_3 = Struct_1(vec4<u32>(min(~_wgslsmith_mult_u32(var_2.a.x, arg_1.x), ~(~arg_1.x)), 21974u, ~(~arg_1.x), var_2.a.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(var_2.b)) * vec3<f32>(1224f, _wgslsmith_f_op_f32(sign(var_2.b.x)), var_2.b.x)));
    return 0u;
}

fn func_2(arg_0: vec4<bool>) -> Struct_1 {
    var var_0 = select(select(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a << (u_input.b % 32u), ~u_input.a, ~u_input.c), vec3<u32>(17500u, 43726u, 1u)), abs(vec3<u32>(u_input.c, u_input.a, 94638u) >> (vec3<u32>(u_input.b, u_input.b, 26102u) % vec3<u32>(32u))) >> (((vec3<u32>(4294967295u, 43243u, u_input.c) | vec3<u32>(1u, 4294967295u, u_input.c)) & _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, 66126u, 27838u), vec3<u32>(u_input.b, 4294967295u, u_input.b), vec3<u32>(4294967295u, 44345u, u_input.c))) % vec3<u32>(32u)), all(!arg_0) && (-u_input.d == _wgslsmith_sub_i32(1i, 2147483647i))), vec3<u32>(~u_input.b, func_3(Struct_1(vec4<u32>(4294967295u, 4294967295u, 1u, u_input.a) | vec4<u32>(u_input.a, 69551u, 13034u, 839u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1596f, 1000f, 971f))), vec4<u32>(u_input.b, reverseBits(1u), 6207u, 1u), u_input.e), 25448u), arg_0.xxx);
    let var_1 = arg_0.x && (~0u <= _wgslsmith_dot_vec2_u32(var_0.yy, max(vec2<u32>(var_0.x, var_0.x) >> (var_0.zx % vec2<u32>(32u)), select(vec2<u32>(var_0.x, 47548u), var_0.xz, vec2<bool>(false, false)))));
    var_0 = ~vec3<u32>(firstLeadingBit(~var_0.x), _wgslsmith_mod_u32(~0u, 1u), u_input.a);
    var var_2 = Struct_1(select(firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, 5899u, var_0.x, u_input.c), vec4<u32>(var_0.x, var_0.x, u_input.b, u_input.c)) << (select(vec4<u32>(57597u, u_input.c, u_input.b, 54128u), vec4<u32>(4294967295u, 20064u, 0u, 22181u), true) % vec4<u32>(32u))), reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 76865u, u_input.a, u_input.a), vec4<u32>(21423u, 7030u, u_input.c, 4294967295u)) & ~vec4<u32>(u_input.a, 0u, var_0.x, 24691u)), false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(965f - 1358f), 1f, -1000f))));
    var_2 = Struct_1(var_2.a, vec3<f32>(var_2.b.x, -1046f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.b.x, -327f))));
    return Struct_1(vec4<u32>(1u, 56579u, max(var_2.a.x, 4294967295u), ~max(~u_input.b, 49269u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.b * var_2.b)));
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> vec2<bool> {
    return select(!vec2<bool>(all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), false)), _wgslsmith_f_op_f32(arg_0.b.x * -1000f) >= _wgslsmith_f_op_f32(arg_0.b.x + 2032f)), !(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false))), !(u_input.b != func_3(arg_0, arg_0.a, arg_1 | 2147483647i)));
}

fn func_1(arg_0: vec4<u32>, arg_1: f32, arg_2: Struct_1, arg_3: f32) -> u32 {
    let var_0 = vec2<bool>(!all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), false)), true);
    var var_1 = select(!vec4<bool>(false, any(vec4<bool>(true, var_0.x, true, true)), var_0.x, all(vec3<bool>(true, var_0.x, true)) | true), vec4<bool>(true, true, (_wgslsmith_div_f32(arg_1, arg_2.b.x) == -413f) == true, any(!select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(false, true, var_0.x, true), vec4<bool>(var_0.x, var_0.x, true, var_0.x)))), vec4<bool>(any(select(!vec3<bool>(var_0.x, false, var_0.x), select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, var_0.x, var_0.x), var_0.x), all(vec3<bool>(false, false, false)))), !(!(var_0.x & true)), var_0.x, -2147483647i < u_input.e));
    let var_2 = Struct_1(arg_0, arg_2.b);
    var_1 = !vec4<bool>(!(!var_1.x | all(vec3<bool>(false, var_0.x, var_0.x))), !(_wgslsmith_f_op_f32(var_2.b.x - arg_3) >= _wgslsmith_f_op_f32(-arg_3)), any(select(select(var_1.wwx, var_1.zyz, false), !vec3<bool>(var_0.x, false, false), select(true, true, false))), all(var_0));
    var_1 = vec4<bool>(!(!var_1.x), var_1.x, any(!func_4(func_2(vec4<bool>(var_0.x, true, true, true)), countOneBits(u_input.d))), false);
    return _wgslsmith_add_u32(55994u, arg_2.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.a, 4294967295u, 0u), u_input.a), 58202u, ~u_input.b, u_input.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-701f, 270f, 392f)) - vec3<f32>(-678f, -435f, 1056f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(770f, -705f, 516f)))));
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_sub_u32(var_0.a.x, ~func_1(~var_0.a, var_0.b.x, Struct_1(vec4<u32>(u_input.a, 1u, var_0.a.x, 24619u), var_0.b), _wgslsmith_f_op_f32(2041f + 210f))), ~var_0.a);
}

