struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -457f;

var<private> global1: array<u32, 27> = array<u32, 27>(0u, 1u, 1u, 4294967295u, 4294967295u, 4294967295u, 1u, 22528u, 1u, 1u, 91010u, 67055u, 4294967295u, 0u, 1u, 79193u, 0u, 38457u, 4294967295u, 46686u, 1u, 0u, 4294967295u, 0u, 1u, 135243u, 0u);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: Struct_2, arg_1: bool) -> bool {
    let var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2017f - -1019f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(854f)) - _wgslsmith_f_op_f32(f32(-1f) * -148f))), -221f, any(!(!vec2<bool>(false, arg_1))))));
    return true;
}

fn func_2(arg_0: Struct_1) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    let var_1 = u_input.a;
    let var_2 = Struct_2(vec2<i32>(u_input.a, _wgslsmith_add_i32(select(var_1, -27173i, arg_0.a.x) & -504i, ~u_input.b.x)), vec4<i32>(0i, u_input.b.x, ~u_input.b.x, ~(-var_1)));
    global0 = _wgslsmith_f_op_f32(275f * _wgslsmith_f_op_f32(-var_0));
    global1 = array<u32, 27>();
    return vec4<i32>(-14989i, _wgslsmith_dot_vec4_i32(-abs(vec4<i32>(15892i, u_input.a, -46162i, u_input.a) >> (u_input.c % vec4<u32>(32u))), var_2.b), ~_wgslsmith_mult_i32(_wgslsmith_div_i32(0i ^ u_input.a, var_2.b.x), 2147483647i), _wgslsmith_sub_i32(-4748i, var_1));
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> vec4<f32> {
    let var_0 = firstTrailingBit(countOneBits(u_input.c.x));
    let var_1 = min(~vec4<u32>(~_wgslsmith_dot_vec3_u32(u_input.c.yyx, u_input.c.zwy), _wgslsmith_sub_u32(firstTrailingBit(u_input.c.x), select(0u, global1[_wgslsmith_index_u32(1u, 27u)], arg_1)), var_0, 23745u), select(_wgslsmith_clamp_vec4_u32(firstLeadingBit(u_input.c), u_input.c, vec4<u32>(var_0, 1u, global1[_wgslsmith_index_u32(39398u, 27u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(20664u, 27u)], 27u)]) ^ _wgslsmith_clamp_vec4_u32(u_input.c, u_input.c, u_input.c)), u_input.c, any(vec4<bool>(true, arg_1, false, true)) | false));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(670f - -1843f)) - -1477f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -767f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1321f * -2375f) + _wgslsmith_f_op_f32(floor(-673f))))));
    global1 = array<u32, 27>();
    let var_2 = Struct_1(select(!select(vec3<bool>(arg_1, arg_1, arg_1), select(vec3<bool>(false, arg_1, true), vec3<bool>(true, arg_1, arg_1), arg_1), arg_1 || true), !vec3<bool>(false, !arg_1, !arg_1), vec3<bool>(arg_1, true, !arg_1)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(106f)))), _wgslsmith_f_op_f32(step(-162f, _wgslsmith_f_op_f32(trunc(1429f)))), _wgslsmith_f_op_f32(-1600f + -1191f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-600f)) + 1096f))));
}

fn func_4(arg_0: f32, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: vec4<f32>) -> vec4<i32> {
    var var_0 = ~u_input.c.xwy;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_vec4_f32(func_3(arg_2, true)).x, arg_0)) * 1597f));
    global0 = -1000f;
    let var_2 = func_2(Struct_1(vec3<bool>(true, any(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), true)), ~(-1i) == arg_2.b.x)));
    var_0 = u_input.c.xzy;
    return vec4<i32>((i32(-1i) * -arg_2.a.x) ^ _wgslsmith_mult_i32(1i | arg_1.x, 2147483647i), func_2(Struct_1(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false)))).x, reverseBits(2147483647i), u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(u_input.c.x, ~(abs(28652u) << (_wgslsmith_clamp_u32(reverseBits(global1[_wgslsmith_index_u32(1u, 27u)]), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~54578u, 27u)], 27u)], 1u) % 32u)), global1[_wgslsmith_index_u32(u_input.c.x, 27u)]);
    var var_1 = any(!vec2<bool>(!(u_input.a < -53247i), !func_1(Struct_2(u_input.b.zx, vec4<i32>(745i, u_input.a, u_input.b.x, -1i)), true)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-463f)) + _wgslsmith_f_op_f32(-185f + -609f)), _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(-1000f * -2076f), any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), true))))) + 1f);
    var var_3 = func_4(-1152f, _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(-u_input.b.yz, _wgslsmith_mod_vec2_i32(vec2<i32>(-12994i, 1i), vec2<i32>(-20293i, 39547i)), u_input.b.zz & u_input.b.xy), -(u_input.b.zx & u_input.b.zz)), -abs(vec2<i32>(u_input.b.x, 37521i))), Struct_2(vec2<i32>(u_input.b.x, _wgslsmith_add_i32(~u_input.b.x, u_input.b.x << (u_input.c.x % 32u))), countOneBits(func_2(Struct_1(vec3<bool>(true, false, true))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-299f, 1650f, -1135f, -151f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1536f, -1630f, -1089f, 183f) + vec4<f32>(304f, -492f, -571f, -1404f)))))) + _wgslsmith_f_op_vec4_f32(func_3(Struct_2(u_input.b.xz, vec4<i32>(u_input.b.x, 0i, u_input.b.x, -3259i)), any(vec4<bool>(true, true, true, true))))));
    global0 = 287f;
    var var_4 = firstTrailingBit((u_input.c.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(79410u, u_input.c.x, u_input.c.x, var_0.x), select(vec4<u32>(0u, 2345u, var_0.x, u_input.c.x), vec4<u32>(22761u, global1[_wgslsmith_index_u32(4294967295u, 27u)], u_input.c.x, 4294967295u), vec4<bool>(false, false, false, true))) % 32u)) ^ 0u);
    let var_5 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -376f)) * _wgslsmith_f_op_f32(f32(-1f) * -1033f)), -341f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-322f - _wgslsmith_f_op_f32(-225f + -2280f)) + 1586f)));
    var_4 = 63342u;
    let var_6 = Struct_2(u_input.b.xy, select(~(-vec4<i32>(73615i, var_3.x, -1i, u_input.b.x)) & countOneBits(vec4<i32>(var_3.x, 6628i, var_3.x, var_3.x)), vec4<i32>(-var_3.x, _wgslsmith_div_i32(var_3.x, -2147483647i), u_input.a, u_input.b.x << (u_input.c.x % 32u)) >> (~u_input.c % vec4<u32>(32u)), select(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true)), vec4<bool>(false, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32((_wgslsmith_dot_vec2_u32(var_0.yz, var_0.xy) & ~var_0.x) >> (~(~var_0.x) % 32u), global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(78294u, 9822u), 27u)], 27u)]), ~reverseBits(u_input.c.x), 1u, _wgslsmith_div_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(~var_0.x, firstLeadingBit(0u), 4294967295u, abs(u_input.c.x))), 27u)], u_input.c.x), vec2<u32>(~var_0.x, u_input.c.x));
}

