struct Struct_1 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 9> = array<vec4<i32>, 9>(vec4<i32>(1619i, i32(-2147483648), 2147483647i, 0i), vec4<i32>(-1i, i32(-2147483648), -4307i, -1382i), vec4<i32>(-1i, -29129i, 1i, i32(-2147483648)), vec4<i32>(-8938i, -1i, i32(-2147483648), 34438i), vec4<i32>(-45604i, 2147483647i, 1i, 19099i), vec4<i32>(17309i, -30592i, -1i, 36168i), vec4<i32>(2147483647i, -1i, -36511i, 2147483647i), vec4<i32>(-43833i, 70331i, -28970i, i32(-2147483648)), vec4<i32>(0i, i32(-2147483648), 175i, 13960i));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<i32>) -> vec4<bool> {
    let var_0 = 35120u;
    let var_1 = true;
    var var_2 = Struct_4(~firstLeadingBit(u_input.c));
    var_2 = Struct_4(~u_input.b);
    let var_3 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1060f, _wgslsmith_div_f32(1034f, 688f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1290f) + -229f)), _wgslsmith_f_op_f32(trunc(466f)), any(vec2<bool>(false, arg_0.x < 27055u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1248f * 1347f), _wgslsmith_f_op_f32(round(1000f)), 580f, _wgslsmith_f_op_f32(abs(-1000f))))), u_input.b, Struct_1(~global0[_wgslsmith_index_u32(abs(1u), 9u)], var_0));
    return vec4<bool>(_wgslsmith_f_op_f32(sign(var_3.a)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_3.b.x)))), true, false, var_1);
}

fn func_2() -> vec3<bool> {
    global0 = array<vec4<i32>, 9>();
    let var_0 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -885f), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-627f - -1083f), _wgslsmith_f_op_f32(f32(-1f) * -868f), _wgslsmith_f_op_f32(round(-2306f)), 1546f))), vec4<f32>(1041f, 1f, -1254f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-676f * -690f), _wgslsmith_div_f32(-1102f, 433f))))), _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(1u, ~u_input.b, 0u)), vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, 1u), select(vec2<u32>(u_input.c, u_input.b), vec2<u32>(u_input.b, 52660u), false)), firstLeadingBit(23013u), _wgslsmith_clamp_u32(~33892u, 4294967295u, u_input.c))), Struct_1(reverseBits(vec4<i32>(u_input.a.x ^ 1i, _wgslsmith_sub_i32(-21951i, u_input.a.x), -u_input.a.x, ~u_input.a.x)), ~(~u_input.c) >> (~abs(u_input.b) % 32u)));
    global0 = array<vec4<i32>, 9>();
    let var_1 = any(vec2<bool>(!all(func_3(vec2<u32>(u_input.b, u_input.c), vec2<i32>(u_input.a.x, var_0.d.a.x))), any(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true)))));
    global0 = array<vec4<i32>, 9>();
    return vec3<bool>(any(func_3(~vec2<u32>(1u, 1u), min(vec2<i32>(1i, u_input.a.x) << (vec2<u32>(21057u, 75018u) % vec2<u32>(32u)), abs(var_0.d.a.xx))).xzz), true, var_1);
}

fn func_1() -> f32 {
    var var_0 = u_input.a.wxz;
    let var_1 = !func_2();
    var var_2 = Struct_3(Struct_1(u_input.a, (u_input.b ^ firstTrailingBit(54665u)) << (_wgslsmith_clamp_u32(~u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 15165u), vec2<u32>(32642u, u_input.b)), u_input.b) % 32u)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1867f, -834f), vec2<f32>(999f, 998f))) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1385f, -1364f), vec2<f32>(-641f, 594f)))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-364f, 339f) + vec2<f32>(-1000f, 1000f)), _wgslsmith_div_vec2_f32(vec2<f32>(408f, 552f), vec2<f32>(-2704f, 850f)), var_1.x))))));
    let var_3 = Struct_1(firstTrailingBit(var_2.a.a), var_2.a.b);
    var_2 = Struct_3(Struct_1(var_2.a.a, 45730u), var_2.b);
    return 1258f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(1224f * 363f), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-494f)) - _wgslsmith_f_op_f32(trunc(-1084f))), _wgslsmith_f_op_f32(func_1()), -104f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1606f) * _wgslsmith_f_op_f32(sign(583f)))), vec4<f32>(-308f, 606f, _wgslsmith_f_op_f32(1036f - 875f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(789f * -1243f)))), _wgslsmith_div_u32(select(~46518u, 43844u, false), 0u) & _wgslsmith_sub_u32(~u_input.b, ~_wgslsmith_add_u32(4294967295u, u_input.b)), Struct_1(vec4<i32>(-u_input.a.x, _wgslsmith_mod_i32(u_input.a.x, u_input.a.x), _wgslsmith_sub_i32(u_input.a.x, u_input.a.x), reverseBits(30565i)) & firstTrailingBit(_wgslsmith_mod_vec4_i32(u_input.a, global0[_wgslsmith_index_u32(4294967295u, 9u)])), ~70778u));
    var var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(var_0.b.wxy + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-551f, var_0.b.x, _wgslsmith_f_op_f32(trunc(var_0.a))), _wgslsmith_f_op_vec3_f32(round(var_0.b.yxw)), vec3<bool>(true, true, true))))));
    var var_2 = _wgslsmith_div_vec2_i32(var_0.d.a.wy, _wgslsmith_clamp_vec2_i32(u_input.a.wy, -countOneBits(u_input.a.xx), ~(~var_0.d.a.zx) & ~min(u_input.a.wy, vec2<i32>(0i, -4032i))));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -1057f))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(var_0.a)), -1026f, func_3(vec2<u32>(39048u, 7728u), vec2<i32>(-69462i, var_2.x)).x)), _wgslsmith_f_op_f32(ceil(var_0.b.x)), -664f, -975f), vec4<f32>(var_1.x, -407f, var_0.b.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1149f + var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -302f)))))), _wgslsmith_sub_u32(~u_input.c, _wgslsmith_div_u32(~(~u_input.c), 60868u)), Struct_1(firstLeadingBit(~var_0.d.a), 0u));
    let var_4 = Struct_3(Struct_1(~var_3.d.a, _wgslsmith_div_u32(104u, var_0.c)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(-714f, 446f)), var_1.x) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1806f, var_0.b.x))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.b.x * 1053f) * 991f), var_3.a)));
    let var_5 = var_4;
    let var_6 = Struct_3(Struct_1(vec4<i32>(max(var_3.d.a.x, ~var_2.x), max(var_4.a.a.x, max(26282i, 6858i)), _wgslsmith_add_i32(firstLeadingBit(var_3.d.a.x), u_input.a.x), -_wgslsmith_add_i32(0i, -2147483647i)), ~81481u), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.b.x, _wgslsmith_f_op_f32(ceil(var_5.b.x))), var_0.b.zx), vec2<f32>(1324f, -960f))));
    let var_7 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -598f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-var_3.b.yzy), var_0.b.zxw)), _wgslsmith_sub_u32(select(~abs(var_0.d.b), ~(~u_input.b), false), ~28093u), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_3.a))), _wgslsmith_f_op_f32(var_4.b.x + _wgslsmith_f_op_f32(1940f + -127f)), var_6.b.x) * var_0.b), _wgslsmith_mod_u32(var_6.a.b, 1u));
}

