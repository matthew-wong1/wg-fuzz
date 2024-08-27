struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: u32, arg_3: u32) -> vec2<i32> {
    global0 = -943f;
    var var_0 = true;
    var_0 = false;
    var var_1 = _wgslsmith_mod_vec2_i32(-vec2<i32>(0i, arg_0.x), arg_0.zy);
    var var_2 = arg_1;
    return arg_0.wy;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    var var_0 = ~(-(vec2<i32>(-1i) * -vec2<i32>(1i, 1i)));
    var var_1 = arg_0;
    let var_2 = Struct_1(~u_input.b.yww);
    var_1 = Struct_1(min(vec3<u32>(~1u, arg_1.a.x, ~_wgslsmith_dot_vec2_u32(arg_2.a.xx, u_input.b.xx)), ~min(~vec3<u32>(10757u, arg_1.a.x, arg_2.a.x), arg_1.a << (vec3<u32>(arg_2.a.x, var_1.a.x, 4294967295u) % vec3<u32>(32u)))));
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f - -691f)));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-562f))) - 672f) * _wgslsmith_f_op_f32(-316f - -2178f))));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<i32>) -> u32 {
    global0 = 456f;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(arg_2, Struct_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_2.a.x, 18455u, arg_2.a.x), arg_1.a, arg_1.a)), Struct_1(~vec3<u32>(u_input.c, u_input.b.x, 0u)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(arg_0))))));
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -406f)));
    global0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(-1339f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(865f * arg_0))))));
    let var_0 = _wgslsmith_add_u32(arg_2.a.x, arg_2.a.x);
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(-_wgslsmith_mult_vec2_i32(vec2<i32>(1i, 1i), func_1(vec4<i32>(1i, -2147483647i, 0i, 19906i), Struct_1(vec3<u32>(4294967295u, u_input.a, u_input.b.x)), 10001u, 70263u)), vec2<i32>(-1i, _wgslsmith_add_i32(~14385i, -60510i)), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true))) << (_wgslsmith_sub_vec2_u32(~u_input.b.xw, vec2<u32>(~(~u_input.b.x), select(func_2(-833f, Struct_1(u_input.b.yyy), Struct_1(u_input.b.zwz), vec4<i32>(-37341i, 0i, 26408i, 31044i)), 1u, false))) % vec2<u32>(32u));
    var_0 = vec2<i32>(19177i, ~min(_wgslsmith_mult_i32(var_0.x, -var_0.x), reverseBits(var_0.x) | 1i));
    let var_1 = _wgslsmith_div_f32(-559f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(562f)), _wgslsmith_f_op_f32(f32(-1f) * -3082f)), -305f)) - _wgslsmith_f_op_f32(f32(-1f) * -396f)));
    var var_2 = abs(-reverseBits(~var_0.x));
    var var_3 = 517f;
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1955f + _wgslsmith_f_op_f32(select(2139f, _wgslsmith_f_op_f32(min(722f, var_1)), true))) + var_1)));
    let x = u_input.a;
    s_output = StorageBuffer(select(min(vec2<u32>(firstTrailingBit(u_input.c), ~u_input.b.x), reverseBits(vec2<u32>(u_input.c, 74219u))), ~u_input.b.xy, !any(vec3<bool>(true, true, true))));
}

