struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: vec2<f32>,
    d: vec4<i32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: u32) -> f32 {
    var var_0 = Struct_1(-(1i >> ((18198u << (firstLeadingBit(u_input.a) % 32u)) % 32u)), vec3<i32>(-1i) * -(~select(vec3<i32>(global0.a, global0.a, -2147483647i), vec3<i32>(-7349i, 45855i, global0.d.x), vec3<bool>(true, global0.e.x, global0.e.x))), vec2<f32>(-1595f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -704f)))), abs(~(-vec4<i32>(1i, global0.b.x, global0.b.x, -80841i))), vec2<bool>(true, false));
    let var_1 = Struct_1(var_0.b.x, vec3<i32>(-var_0.a, firstTrailingBit(var_0.d.x >> (u_input.a % 32u)) | var_0.d.x, global0.b.x), vec2<f32>(-446f, _wgslsmith_f_op_f32(global0.c.x + _wgslsmith_f_op_f32(max(global0.c.x, _wgslsmith_f_op_f32(select(global0.c.x, 540f, global0.e.x)))))), ~vec4<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(var_0.b.x, -13696i, global0.d.x), _wgslsmith_add_vec3_i32(vec3<i32>(29521i, var_0.d.x, global0.d.x), var_0.d.zxy)), max(_wgslsmith_div_i32(6112i, 16389i), -17186i), _wgslsmith_dot_vec4_i32(abs(var_0.d), vec4<i32>(global0.b.x, global0.d.x, global0.a, 1i)), _wgslsmith_add_i32(_wgslsmith_add_i32(1i, global0.b.x), global0.d.x)), vec2<bool>(true, global0.e.x));
    let var_2 = 1i;
    var_0 = var_1;
    var_0 = var_1;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x)) * 999f);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(429f, global0.c.x, _wgslsmith_f_op_f32(-global0.c.x)) - vec3<f32>(arg_0.c.x, -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(arg_0.c.x)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(380f, global0.c.x))))));
    let var_1 = 0u << (u_input.b % 32u);
    var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1043f - -1392f)), -1873f, var_0.x) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.x, global0.c.x, 1000f)) * _wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, 608f, -373f), vec3<f32>(-171f, global0.c.x, -1564f))))), vec3<f32>(_wgslsmith_f_op_f32(max(arg_0.c.x, _wgslsmith_f_op_f32(func_3(reverseBits(u_input.a))))), -1199f, _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(853f + global0.c.x)))));
    let var_2 = arg_0;
    var var_3 = 21269u;
    return 15582u;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    global0 = Struct_1(-65906i, vec3<i32>(-1i) * -arg_1.d.zzw, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.c - _wgslsmith_f_op_vec2_f32(-global0.c))), reverseBits((-vec4<i32>(global0.d.x, -1i, -1i, global0.b.x) & -global0.d) | arg_2.d), select(arg_2.e, !select(vec2<bool>(true, global0.e.x), !global0.e, arg_1.e.x), select(arg_2.e, arg_1.e, false)));
    let var_0 = _wgslsmith_add_i32(-27425i, ~select(-11035i, reverseBits(arg_2.d.x), any(vec2<bool>(arg_1.e.x, arg_2.e.x)) & arg_2.e.x));
    let var_1 = vec4<bool>(any(vec4<bool>(!(15292u <= arg_0.x), arg_1.e.x, false, ~arg_0.x >= (u_input.b ^ 39505u))), all(select(vec2<bool>(true, global0.e.x), select(select(vec2<bool>(true, true), vec2<bool>(false, global0.e.x), global0.e), !global0.e, true), (false != arg_2.e.x) || global0.e.x)), any(select(vec4<bool>(true, true, true, true), vec4<bool>(false | global0.e.x, any(vec2<bool>(false, global0.e.x)), true, !global0.e.x), select(arg_1.b.x <= 1i, 492f >= arg_3, false && arg_1.e.x))), false);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(global0.c.x, arg_2.c.x)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(287f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3 - -1000f))) * 754f));
    var var_3 = 4294967295u;
    return Struct_1(global0.b.x, arg_1.d.yxx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 - 1421f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3)))), -select(arg_2.d, ~vec4<i32>(global0.d.x, 1i, arg_2.d.x, 34976i), true), vec2<bool>(true, false));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-arg_0.c.x);
    let var_1 = arg_0;
    var var_2 = var_1.d.wy | -(~(~arg_2.b.xx >> (_wgslsmith_sub_vec2_u32(vec2<u32>(arg_3, arg_1.x), vec2<u32>(14987u, 1u)) % vec2<u32>(32u))));
    var_2 = abs(arg_2.d.xz);
    var var_3 = func_4(_wgslsmith_mod_vec2_u32(vec2<u32>(select(func_2(Struct_1(20344i, vec3<i32>(global0.a, global0.a, global0.a), vec2<f32>(-3187f, -116f), arg_0.d, var_1.e), vec4<bool>(arg_2.e.x, global0.e.x, false, false)), u_input.b, true), _wgslsmith_mult_u32(func_2(Struct_1(var_1.b.x, global0.d.xwx, vec2<f32>(global0.c.x, arg_0.c.x), vec4<i32>(-1i, 0i, arg_2.b.x, -2147483647i), var_1.e), vec4<bool>(var_1.e.x, false, true, false)), arg_3)), vec2<u32>(~_wgslsmith_mod_u32(u_input.b, arg_3), _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1.x, u_input.b, 48272u, arg_3), vec4<u32>(4294967295u, 0u, u_input.b, 0u)))), arg_0, var_1, _wgslsmith_div_f32(1000f, arg_2.c.x));
    return var_1;
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_1) -> vec2<f32> {
    let var_0 = ~_wgslsmith_sub_vec2_u32(~(~vec2<u32>(1u, 0u)), ~(~(~vec2<u32>(0u, u_input.b))));
    global0 = func_4(var_0, func_1(arg_1, var_0, arg_1, var_0.x & 49553u), Struct_1(~_wgslsmith_add_i32(-621i >> (u_input.b % 32u), global0.b.x), global0.b, vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(arg_1.c.x)))), _wgslsmith_f_op_f32(221f + _wgslsmith_f_op_f32(-global0.c.x))), arg_1.d, vec2<bool>(any(select(vec4<bool>(true, true, arg_0.x, false), vec4<bool>(arg_1.e.x, global0.e.x, arg_1.e.x, arg_0.x), true)), arg_1.e.x)), func_4(vec2<u32>(~var_0.x, 14723u), func_4(~(~var_0), arg_1, func_1(func_1(Struct_1(57695i, vec3<i32>(12957i, arg_1.a, arg_1.b.x), arg_1.c, arg_1.d, vec2<bool>(arg_1.e.x, false)), var_0, arg_1, 1u), vec2<u32>(u_input.b, 1u), func_1(arg_1, vec2<u32>(u_input.b, 7011u), Struct_1(24454i, vec3<i32>(arg_1.d.x, global0.a, -32196i), arg_1.c, vec4<i32>(global0.a, -40893i, arg_1.a, arg_1.a), vec2<bool>(true, false)), 21660u), _wgslsmith_mult_u32(u_input.b, 11633u)), _wgslsmith_f_op_f32(arg_1.c.x * global0.c.x)), Struct_1(-_wgslsmith_div_i32(0i, -23553i), func_4(vec2<u32>(var_0.x, 33715u), func_1(arg_1, vec2<u32>(u_input.b, 4294967295u), Struct_1(17078i, vec3<i32>(-1i, global0.d.x, -34637i), arg_1.c, global0.d, vec2<bool>(true, false)), u_input.b), arg_1, _wgslsmith_f_op_f32(f32(-1f) * -1322f)).d.wxx, vec2<f32>(_wgslsmith_f_op_f32(-arg_1.c.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), arg_1.d, !select(arg_0.yz, vec2<bool>(false, true), false)), global0.c.x).c.x);
    global0 = Struct_1(-arg_1.a, ~max(global0.b, _wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(17058i, global0.b.x, arg_1.d.x)), _wgslsmith_clamp_vec3_i32(vec3<i32>(0i, -2147483647i, global0.d.x), vec3<i32>(-28418i, 68548i, -27956i), vec3<i32>(-34173i, -2147483647i, arg_1.d.x)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.c.x, 190f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c.x, -1229f)) - _wgslsmith_f_op_vec2_f32(trunc(global0.c)))))), vec4<i32>(arg_1.b.x, 0i, -2147483647i, -(-1i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(19752i, 2147483647i, -23418i, -5489i), vec4<i32>(arg_1.a, -35735i, 0i, global0.a)))), vec2<bool>(!arg_1.e.x, any(select(select(global0.e, arg_1.e, false), select(vec2<bool>(true, arg_0.x), vec2<bool>(global0.e.x, arg_1.e.x), global0.e.x), vec2<bool>(arg_0.x, arg_1.e.x)))));
    let var_1 = func_4(var_0, Struct_1(firstTrailingBit(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(arg_1.b.yz, arg_1.b.zx), arg_1.a)), _wgslsmith_mod_vec3_i32(arg_1.d.wxw, -arg_1.d.wyx), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-func_1(Struct_1(0i, vec3<i32>(-32002i, 7620i, global0.a), arg_1.c, vec4<i32>(-30407i, -8810i, 52782i, 2147483647i), vec2<bool>(arg_1.e.x, global0.e.x)), vec2<u32>(7771u, var_0.x), Struct_1(-41284i, arg_1.d.wwx, vec2<f32>(-189f, arg_1.c.x), vec4<i32>(-94502i, global0.b.x, 27361i, -2147483647i), vec2<bool>(false, true)), u_input.b).c))), ~select(arg_1.d, arg_1.d, select(vec4<bool>(true, true, true, false), vec4<bool>(global0.e.x, arg_1.e.x, global0.e.x, true), false)), !arg_0.yy), func_4(countOneBits(select(abs(var_0), var_0, global0.e.x)), arg_1, func_4(vec2<u32>(86752u, u_input.a) & ~var_0, func_1(arg_1, select(vec2<u32>(4294967295u, u_input.b), var_0, false), Struct_1(-1i, global0.b, vec2<f32>(global0.c.x, arg_1.c.x), global0.d, vec2<bool>(arg_0.x, arg_1.e.x)), ~81724u), Struct_1(global0.d.x, func_1(Struct_1(1i, global0.d.yww, arg_1.c, vec4<i32>(66531i, 6167i, global0.a, arg_1.a), vec2<bool>(global0.e.x, true)), var_0, arg_1, 4294967295u).d.wxx, global0.c, select(vec4<i32>(0i, 3043i, 0i, 17466i), global0.d, vec4<bool>(arg_0.x, global0.e.x, true, arg_0.x)), func_1(arg_1, var_0, arg_1, 0u).e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x))), -148f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1028f * _wgslsmith_div_f32(2092f, -1426f))));
    var var_2 = Struct_1(-1i, select(var_1.d.yyy, -_wgslsmith_mult_vec3_i32(global0.b, ~vec3<i32>(global0.a, 2147483647i, 14916i)), select(false, arg_0.x, all(func_1(arg_1, var_0, var_1, var_0.x).e))), vec2<f32>(-450f, func_4(var_0, Struct_1(arg_1.b.x, vec3<i32>(arg_1.d.x, 1i, -2147483647i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1044f, arg_1.c.x)), vec4<i32>(-1i, 1986i, arg_1.d.x, global0.a), vec2<bool>(global0.e.x, global0.e.x)), func_1(Struct_1(var_1.a, var_1.d.zxx, arg_1.c, global0.d, vec2<bool>(arg_1.e.x, true)), vec2<u32>(0u, u_input.b), var_1, 1u >> (u_input.a % 32u)), 117f).c.x), vec4<i32>(_wgslsmith_clamp_i32(arg_1.a, -firstTrailingBit(var_1.b.x), max(var_1.b.x | 66554i, _wgslsmith_div_i32(arg_1.b.x, 1i))), arg_1.a, select(var_1.a, _wgslsmith_div_i32(-1i, firstTrailingBit(-2147483647i)), global0.e.x), _wgslsmith_dot_vec4_i32(abs(global0.d << (vec4<u32>(58250u, var_0.x, 4294967295u, 15339u) % vec4<u32>(32u))), firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, var_1.b.x, 2147483647i, global0.a), var_1.d)))), !(!vec2<bool>(false, arg_0.x)));
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(max(-1350f, _wgslsmith_f_op_f32(-var_1.c.x))), 2526f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1136f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.c.x, -254f) - 1203f))));
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    var var_0 = vec2<i32>(~(-func_4(vec2<u32>(3082u, 1u), arg_0, arg_0, global0.c.x).a) >> (u_input.a % 32u), 0i);
    let var_1 = global0.e.x;
    global0 = func_1(func_1(arg_0, vec2<u32>(_wgslsmith_mod_u32(u_input.a, 55375u) ^ u_input.a, ~u_input.b), Struct_1(33504i, vec3<i32>(global0.b.x, countOneBits(-25931i), abs(var_0.x)), vec2<f32>(_wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(f32(-1f) * -1738f)), global0.d, vec2<bool>(u_input.a < 30443u, all(vec4<bool>(false, true, arg_0.e.x, false)))), _wgslsmith_mult_u32(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 6790u, u_input.b, 38826u), ~vec4<u32>(0u, u_input.a, 24421u, 4294967295u)))), vec2<u32>(~(~(~u_input.a)), 4294967295u), Struct_1(global0.a, -(~vec3<i32>(arg_0.b.x, global0.b.x, global0.d.x)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.c * vec2<f32>(-1000f, global0.c.x))))), max(-global0.d << (min(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.b), vec4<u32>(17318u, u_input.b, 45833u, 29179u)) % vec4<u32>(32u)), global0.d), global0.e), 24674u);
    let var_2 = func_1(arg_0, _wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.a, 0u), _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.b), vec2<u32>(u_input.a, u_input.a)), ~vec2<u32>(13513u, 85312u))) ^ ~_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(23488u, 43868u)), _wgslsmith_div_vec2_u32(vec2<u32>(49521u, 1770u), vec2<u32>(96471u, 32219u))), Struct_1(-4607i, ~global0.b, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_div_f32(685f, arg_0.c.x)), arg_0.c), global0.d, global0.e), min(u_input.a, ~u_input.a));
    let var_3 = vec3<i32>(global0.a, func_4(~vec2<u32>(max(u_input.b, 4732u), 4294967295u), Struct_1(-2147483647i, arg_0.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(var_2.c)) * _wgslsmith_f_op_vec2_f32(select(arg_0.c, vec2<f32>(842f, var_2.c.x), false))), ~select(arg_0.d, arg_0.d, vec4<bool>(true, arg_0.e.x, true, var_2.e.x)), func_1(func_4(vec2<u32>(1u, 44491u), arg_0, arg_0, global0.c.x), ~vec2<u32>(u_input.a, 47466u), arg_0, 28367u).e), var_2, _wgslsmith_f_op_f32(max(var_2.c.x, _wgslsmith_div_f32(global0.c.x, _wgslsmith_f_op_f32(min(360f, -2685f)))))).a, var_2.a << (u_input.a % 32u));
    return func_1(Struct_1(firstTrailingBit(-1i), vec3<i32>(var_3.x, abs(-1i), select(~29464i, firstTrailingBit(global0.a), global0.e.x)), var_2.c, vec4<i32>(~(-49024i), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, -1i), global0.d.wz), 2147483647i, var_2.b.x) << ((reverseBits(vec4<u32>(u_input.a, 4294967295u, 44818u, 4294967295u)) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 0u, 4294967295u, u_input.b), vec4<u32>(u_input.b, 29642u, 5730u, 0u))) % vec4<u32>(32u)), select(vec2<bool>(any(vec3<bool>(arg_0.e.x, arg_0.e.x, arg_0.e.x)), arg_0.e.x), !vec2<bool>(true, var_2.e.x), vec2<bool>(true, true))), (~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 6135u), vec2<u32>(u_input.b, 77747u)) & vec2<u32>(min(u_input.b, 1u), u_input.a)) | ~(~vec2<u32>(u_input.a, 4294967295u)), func_4(vec2<u32>(1u, _wgslsmith_add_u32(u_input.b, _wgslsmith_div_u32(0u, u_input.b))), Struct_1(1i ^ (arg_0.d.x >> (4294967295u % 32u)), _wgslsmith_add_vec3_i32(~vec3<i32>(var_0.x, 2147483647i, var_2.b.x), _wgslsmith_mod_vec3_i32(arg_0.d.yzx, vec3<i32>(2147483647i, global0.b.x, 1i))), _wgslsmith_f_op_vec2_f32(-arg_0.c), vec4<i32>(~var_2.b.x, arg_0.d.x, max(1i, -2147483647i), func_4(vec2<u32>(1u, u_input.b), Struct_1(42199i, var_3, arg_0.c, global0.d, var_2.e), Struct_1(2147483647i, arg_0.d.wyx, global0.c, vec4<i32>(var_2.b.x, var_0.x, -19058i, var_3.x), arg_0.e), -1207f).d.x), vec2<bool>(true, true)), func_1(var_2, ~vec2<u32>(u_input.a, u_input.a) << (firstTrailingBit(vec2<u32>(44374u, 0u)) % vec2<u32>(32u)), func_4(~vec2<u32>(65036u, 0u), func_1(Struct_1(-45167i, global0.b, global0.c, arg_0.d, var_2.e), vec2<u32>(4294967295u, 12268u), Struct_1(var_0.x, vec3<i32>(global0.a, global0.b.x, arg_0.d.x), vec2<f32>(1000f, var_2.c.x), vec4<i32>(-1i, var_0.x, arg_0.b.x, var_2.d.x), vec2<bool>(arg_0.e.x, false)), u_input.a), func_1(Struct_1(-1i, vec3<i32>(0i, var_2.a, var_0.x), arg_0.c, global0.d, vec2<bool>(true, false)), vec2<u32>(u_input.a, u_input.a), Struct_1(arg_0.d.x, vec3<i32>(-2147483647i, 1i, 2147483647i), vec2<f32>(global0.c.x, 1000f), vec4<i32>(var_2.a, -18998i, var_0.x, var_3.x), var_2.e), 0u), _wgslsmith_f_op_f32(575f - var_2.c.x)), u_input.b), _wgslsmith_f_op_f32(global0.c.x + global0.c.x)), 57003u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(Struct_1(-2147483647i, vec3<i32>(_wgslsmith_clamp_i32(global0.d.x, _wgslsmith_dot_vec4_i32(global0.d, vec4<i32>(0i, global0.b.x, global0.b.x, global0.b.x)), firstTrailingBit(-1i)), -global0.b.x, global0.b.x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-255f, global0.c.x))), _wgslsmith_f_op_vec2_f32(func_5(!vec3<bool>(global0.e.x, false, global0.e.x), func_1(Struct_1(global0.d.x, vec3<i32>(-38378i, 13586i, -43015i), global0.c, global0.d, vec2<bool>(false, global0.e.x)), vec2<u32>(40011u, 9565u), Struct_1(global0.a, global0.b, vec2<f32>(global0.c.x, -1243f), vec4<i32>(-1i, global0.a, -6547i, 2147483647i), vec2<bool>(global0.e.x, global0.e.x)), 58402u)))), vec4<i32>(global0.d.x, i32(-1i) * -2147483647i, ~9259i, 25883i), vec2<bool>((true & global0.e.x) || global0.e.x, global0.e.x)));
    var var_0 = vec2<bool>(global0.e.x, !(!(any(global0.e) | true)));
    var var_1 = Struct_1(global0.d.x, vec3<i32>(min(23768i, global0.d.x >> (countOneBits(u_input.a) % 32u)), _wgslsmith_sub_i32(abs(-37911i & global0.a), _wgslsmith_add_i32(~global0.a, -global0.d.x)), countOneBits(31642i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global0.c.x, _wgslsmith_f_op_f32(-602f + -526f)), global0.c)), global0.d, !select(!vec2<bool>(var_0.x, false), vec2<bool>(true, u_input.b == 0u), any(vec2<bool>(false, false))));
    let var_2 = func_1(func_4(vec2<u32>(firstLeadingBit(0u), select(firstLeadingBit(u_input.a), 0u, true)), Struct_1(func_1(func_6(Struct_1(1i, var_1.d.wyy, var_1.c, vec4<i32>(-14058i, 0i, -30327i, var_1.d.x), vec2<bool>(true, global0.e.x))), min(vec2<u32>(66735u, 1u), vec2<u32>(0u, u_input.b)), func_4(vec2<u32>(67387u, u_input.b), Struct_1(global0.b.x, vec3<i32>(var_1.b.x, global0.b.x, global0.b.x), var_1.c, global0.d, global0.e), Struct_1(global0.a, var_1.d.yxw, var_1.c, global0.d, vec2<bool>(true, true)), 586f), ~u_input.b).d.x, vec3<i32>(min(global0.d.x, var_1.d.x), _wgslsmith_sub_i32(-11302i, global0.b.x), global0.d.x), var_1.c, _wgslsmith_sub_vec4_i32(abs(vec4<i32>(-1612i, -78531i, global0.a, var_1.d.x)), vec4<i32>(9613i, var_1.a, 1i, 18999i)), !func_4(vec2<u32>(1u, 0u), Struct_1(var_1.b.x, global0.d.zwx, global0.c, global0.d, vec2<bool>(var_0.x, var_0.x)), Struct_1(-2147483647i, vec3<i32>(global0.a, global0.a, var_1.b.x), var_1.c, global0.d, var_1.e), 750f).e), func_1(Struct_1(global0.b.x, vec3<i32>(var_1.b.x, global0.b.x, global0.a), _wgslsmith_f_op_vec2_f32(global0.c - var_1.c), _wgslsmith_clamp_vec4_i32(vec4<i32>(-31439i, global0.a, global0.b.x, 2147483647i), vec4<i32>(0i, global0.a, 0i, global0.b.x), global0.d), func_6(Struct_1(var_1.a, global0.b, vec2<f32>(1122f, 1781f), vec4<i32>(var_1.a, -2147483647i, global0.d.x, global0.d.x), vec2<bool>(global0.e.x, var_1.e.x))).e), ~(~vec2<u32>(u_input.a, u_input.b)), Struct_1(global0.d.x, vec3<i32>(global0.d.x, -50930i, 29864i) & vec3<i32>(var_1.a, global0.a, global0.d.x), _wgslsmith_f_op_vec2_f32(select(var_1.c, var_1.c, var_1.e.x)), -global0.d, vec2<bool>(var_0.x, var_0.x)), ~(~u_input.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.x) - _wgslsmith_f_op_f32(trunc(-294f))) + _wgslsmith_f_op_f32(abs(-385f)))), min(vec2<u32>(16898u, 3524u), ~vec2<u32>(_wgslsmith_mod_u32(0u, 32479u), 62685u & u_input.a)), func_6(func_6(func_6(func_4(vec2<u32>(1u, 72012u), Struct_1(29852i, var_1.b, global0.c, vec4<i32>(global0.b.x, -2147483647i, global0.d.x, var_1.d.x), var_1.e), Struct_1(var_1.b.x, vec3<i32>(global0.b.x, var_1.a, 2147483647i), global0.c, vec4<i32>(-1i, -60309i, 1i, var_1.a), vec2<bool>(false, global0.e.x)), var_1.c.x)))), abs(_wgslsmith_div_u32(~u_input.b, 0u)) << (10457u % 32u)).c;
    let var_3 = func_6(Struct_1(-13302i, func_6(Struct_1(var_1.d.x << (u_input.b % 32u), func_6(Struct_1(1i, global0.b, vec2<f32>(440f, var_1.c.x), vec4<i32>(-2635i, var_1.a, global0.a, var_1.a), var_1.e)).d.zww, _wgslsmith_f_op_vec2_f32(exp2(var_2)), _wgslsmith_sub_vec4_i32(var_1.d, vec4<i32>(global0.b.x, global0.b.x, -17018i, -2147483647i)), func_6(Struct_1(var_1.d.x, var_1.d.yxw, vec2<f32>(global0.c.x, var_2.x), global0.d, vec2<bool>(global0.e.x, var_1.e.x))).e)).d.wwx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(global0.c)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c.x, 1281f)))), global0.d, !vec2<bool>(!var_1.e.x, func_6(Struct_1(-32560i, global0.b, vec2<f32>(global0.c.x, -1000f), global0.d, vec2<bool>(global0.e.x, true))).e.x)));
    let var_4 = ~vec2<u32>(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(1u, 1u)), ~vec2<u32>(1u, u_input.a)), _wgslsmith_add_u32(0u, max(u_input.a, u_input.b)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_4.x, var_4.x | func_2(Struct_1(var_1.b.x, vec3<i32>(global0.d.x, var_1.d.x, 11344i), var_2, global0.d, vec2<bool>(global0.e.x, var_1.e.x)), select(vec4<bool>(var_3.e.x, var_1.e.x, false, true), vec4<bool>(global0.e.x, true, true, true), false)), ~var_4.x, _wgslsmith_sub_u32(39488u, ~var_4.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(func_4(_wgslsmith_add_vec2_u32(var_4, var_4), var_3, Struct_1(-1i, global0.d.wzx, vec2<f32>(var_3.c.x, var_3.c.x), vec4<i32>(var_3.a, 0i, -1i, 22587i), var_3.e), -1276f).c, var_1.c)) + vec2<f32>(_wgslsmith_f_op_f32(select(-708f, _wgslsmith_f_op_f32(f32(-1f) * -1221f), var_1.e.x)), -952f)));
}

