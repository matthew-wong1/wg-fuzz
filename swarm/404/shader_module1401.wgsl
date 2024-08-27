struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, true);

var<private> global1: vec3<bool> = vec3<bool>(false, false, true);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> u32 {
    global0 = global1.zz;
    var var_0 = Struct_1(vec2<u32>(~_wgslsmith_mult_u32(4873u, u_input.b), max(64990u, u_input.a.x)), ~vec2<i32>(1i, _wgslsmith_mult_i32(-1i << (u_input.b % 32u), 0i)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -748f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, -294f)) - _wgslsmith_f_op_f32(-763f * -1912f)))) * _wgslsmith_f_op_f32(f32(-1f) * -464f)));
    let var_2 = 1u >> (~(firstTrailingBit(reverseBits(u_input.a.x)) << (select(abs(u_input.b), 0u, !global0.x) % 32u)) % 32u);
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_div_f32(1654f, _wgslsmith_f_op_f32(exp2(var_1))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(578f, var_1, global1.x)), var_1))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1633f))), _wgslsmith_f_op_f32(f32(-1f) * -167f))));
    return firstLeadingBit(_wgslsmith_add_u32(~var_2, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, 4294967295u, var_0.a.x, var_2), vec4<u32>(4294967295u, 0u, var_0.a.x, 53457u) | u_input.a)));
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = true;
    let var_1 = _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(max(4294967295u, u_input.a.x) ^ ~65897u, func_3() << (abs(u_input.b) % 32u)), ~u_input.a.ww), select(u_input.a.wx, max(abs(~u_input.a.xx), _wgslsmith_sub_vec2_u32(u_input.a.wy | vec2<u32>(u_input.b, u_input.a.x), u_input.a.wx)), false));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)) - _wgslsmith_f_op_f32(1089f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(514f)) * -1153f))));
    let var_3 = Struct_1(select(var_1, vec2<u32>(~1u, ~u_input.b), -18798i < _wgslsmith_dot_vec4_i32(vec4<i32>(-33994i, -25673i, 1i, -1i), vec4<i32>(28755i, 1i, 56291i, -21774i))), _wgslsmith_add_vec2_i32(countOneBits(vec2<i32>(~(-49961i), -1i)), vec2<i32>(abs(-2147483647i >> (1u % 32u)), _wgslsmith_add_i32(0i, -2147483647i) >> (_wgslsmith_clamp_u32(4294967295u, 77853u, 15093u) % 32u))));
    let var_4 = _wgslsmith_mult_i32(var_3.b.x, -3785i);
    return var_3;
}

fn func_1() -> Struct_1 {
    global1 = !(!(!vec3<bool>(global0.x, global0.x | true, any(vec3<bool>(global1.x, true, false)))));
    var var_0 = func_2(u_input.a.x | 1u);
    var_0 = func_2(~33964u);
    let var_1 = func_2(~(~(~var_0.a.x)));
    var var_2 = Struct_1(vec2<u32>(~(~u_input.a.x), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(2519u, var_1.a.x, 31461u)), ~u_input.a.zyz)), vec2<i32>(-(~(2147483647i >> (u_input.a.x % 32u))), var_1.b.x));
    return Struct_1(~vec2<u32>(countOneBits(21156u), _wgslsmith_add_u32(~u_input.a.x, ~20418u)), vec2<i32>(func_2(18416u).b.x, 2147483647i));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    var var_0 = func_2(u_input.a.x);
    let var_1 = Struct_1(_wgslsmith_sub_vec2_u32(countOneBits(vec2<u32>(u_input.b, 1u)), ~vec2<u32>(64424u, 35463u) & _wgslsmith_add_vec2_u32(~var_0.a, arg_3.a)), func_1().b);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-770f, -418f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(994f, -447f)), _wgslsmith_f_op_f32(-160f * _wgslsmith_f_op_f32(sign(-123f)))))) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-311f, _wgslsmith_f_op_f32(f32(-1f) * -1774f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1285f))), -209f))));
    var_0 = Struct_1((reverseBits(_wgslsmith_sub_vec2_u32(var_0.a, arg_3.a)) | arg_2.a) >> (vec2<u32>(u_input.b << (_wgslsmith_mult_u32(arg_3.a.x, 4294967295u) % 32u), 51430u) % vec2<u32>(32u)), ((arg_3.b ^ vec2<i32>(arg_3.b.x, arg_1.x)) << ((abs(vec2<u32>(0u, arg_0.x)) & vec2<u32>(85001u, u_input.a.x)) % vec2<u32>(32u))) << (vec2<u32>(4294967295u, 76117u) % vec2<u32>(32u)));
    var var_3 = -16299i;
    return global1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -2147483647i;
    global1 = vec3<bool>(true, global0.x, !func_4(reverseBits(u_input.a.xx), vec3<i32>(var_0, _wgslsmith_mult_i32(26599i, var_0), firstTrailingBit(var_0)), Struct_1(~vec2<u32>(56837u, u_input.a.x), countOneBits(vec2<i32>(69782i, var_0))), func_1()));
    global1 = !vec3<bool>(global0.x, global0.x, all(global1.yx) & global1.x);
    var var_1 = Struct_1(vec2<u32>(_wgslsmith_mult_u32(1u >> ((u_input.b & 1u) % 32u), 50041u), u_input.a.x), _wgslsmith_mod_vec2_i32(vec2<i32>(var_0, 24866i) | vec2<i32>(var_0, 0i), func_1().b));
    var var_2 = var_1.a.x;
    var var_3 = ~(_wgslsmith_clamp_u32(abs(52802u) << (var_1.a.x % 32u), 1u, _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.b, var_1.a.x, 7808u, 4294967295u))) & ~105226u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-750f, _wgslsmith_f_op_f32(1118f * _wgslsmith_f_op_f32(select(1000f, 898f, true)))))), ~firstLeadingBit(4294967295u), ~u_input.a, min(var_0, -1i), vec3<i32>(_wgslsmith_add_i32(7304i, 1i), 1i, i32(-1i) * -42015i));
}

