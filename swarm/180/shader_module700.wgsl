struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: f32,
    d: vec2<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec3<f32>,
    d: vec3<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -22945i;

var<private> global1: f32 = -659f;

var<private> global2: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(-15606i), Struct_1(i32(-2147483648)), Struct_1(2147483647i), Struct_1(-1048i), Struct_1(-12540i), Struct_1(2147483647i), Struct_1(1731i), Struct_1(3334i), Struct_1(2147483647i), Struct_1(-4308i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> i32 {
    global0 = ~2147483647i;
    let var_0 = ~_wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.b, ~_wgslsmith_div_u32(6683u, 4294967295u)), 11299u);
    global0 = -u_input.a.x;
    var var_1 = max(vec2<u32>(var_0, u_input.b), (vec2<u32>(37533u, ~u_input.b) >> (select(select(vec2<u32>(var_0, u_input.b), vec2<u32>(36964u, var_0), false), vec2<u32>(var_0, u_input.b), vec2<bool>(true, true)) % vec2<u32>(32u))) & countOneBits(~vec2<u32>(var_0, var_0) >> (~vec2<u32>(var_0, 4294967295u) % vec2<u32>(32u))));
    var var_2 = u_input.a.x;
    return 6640i;
}

fn func_2(arg_0: f32, arg_1: u32) -> Struct_3 {
    global0 = func_3() << (arg_1 % 32u);
    global2 = array<Struct_1, 10>();
    let var_0 = u_input.a;
    global0 = -(~u_input.a.x << (~reverseBits(_wgslsmith_clamp_u32(1u, 0u, 27187u)) % 32u));
    let var_1 = any(vec3<bool>(any(vec4<bool>(true, true, true, true)), all(vec3<bool>(true, true, true)), true));
    return Struct_3(vec4<i32>(-(u_input.a.x << (u_input.b % 32u)), countOneBits(-5347i), 32444i, -_wgslsmith_dot_vec3_i32(var_0, u_input.a)) << (~(_wgslsmith_div_vec4_u32(vec4<u32>(arg_1, u_input.b, u_input.b, 30569u), vec4<u32>(1u, 0u, arg_1, 0u)) << (max(vec4<u32>(arg_1, arg_1, arg_1, arg_1), vec4<u32>(1u, 0u, 4266u, arg_1)) % vec4<u32>(32u))) % vec4<u32>(32u)), abs(firstLeadingBit(~vec4<u32>(1u, 63119u, arg_1, u_input.b) ^ vec4<u32>(0u, arg_1, 4294967295u, 1u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-465f, arg_0, !var_1)) - arg_0), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(floor(arg_0))))), global2[_wgslsmith_index_u32(~4294967295u, 10u)]);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d.x))));
    global2 = array<Struct_1, 10>();
    global2 = array<Struct_1, 10>();
    var var_1 = arg_1.b.yw | arg_1.b.zx;
    let var_2 = arg_1.e;
    return abs(var_2.a);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<u32>) -> u32 {
    var var_0 = u_input.a.x;
    global2 = array<Struct_1, 10>();
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(arg_0.x)))));
    let var_1 = max(~arg_1.x, ~(707u & _wgslsmith_clamp_u32(34730u, 32888u, _wgslsmith_mod_u32(u_input.b, 1u))));
    global0 = _wgslsmith_mod_i32(_wgslsmith_div_i32(-26078i, u_input.a.x), ~(-func_4(_wgslsmith_div_vec3_f32(vec3<f32>(519f, -1099f, arg_0.x), vec3<f32>(-2481f, -245f, -186f)), func_2(1516f, var_1))));
    return arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(~(~((vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, 18623i) & vec4<i32>(24830i, 1i, u_input.a.x, 22914i)) << (~vec4<u32>(23942u, u_input.b, 0u, u_input.b) % vec4<u32>(32u)))), _wgslsmith_mult_vec4_u32(~_wgslsmith_mult_vec4_u32(max(vec4<u32>(81574u, 0u, u_input.b, u_input.b), vec4<u32>(1u, 19596u, 1u, u_input.b)), select(vec4<u32>(1u, 63493u, u_input.b, 34356u), vec4<u32>(u_input.b, 0u, 14982u, 0u), true)), vec4<u32>(_wgslsmith_clamp_u32(u_input.b, 13675u, func_1(vec2<f32>(1000f, -1175f), vec3<u32>(u_input.b, u_input.b, 0u))), 30724u, u_input.b, ~u_input.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1483f + 1356f))) - 1f), _wgslsmith_f_op_vec2_f32(-func_2(-526f, 4294967295u).d), global2[_wgslsmith_index_u32(23246u, 10u)]);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-169f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c + 1f)));
    let var_2 = u_input.b;
    var var_3 = global2[_wgslsmith_index_u32(41312u, 10u)];
    let var_4 = u_input.a.x;
    var var_5 = Struct_1(-22480i | func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(668f, 224f)) + func_2(316f, 0u).c), var_0.b.x).e.a);
    let var_6 = Struct_3(select(vec4<i32>(-func_4(vec3<f32>(-357f, var_0.d.x, var_1), Struct_3(vec4<i32>(-33271i, 29418i, 32402i, u_input.a.x), vec4<u32>(1u, var_0.b.x, 13114u, 15255u), 1039f, var_0.d, global2[_wgslsmith_index_u32(0u, 10u)])), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-58127i, -1i), vec2<i32>(1i, var_5.a)), vec2<i32>(-16265i, 29689i)), 1i, var_0.a.x), vec4<i32>(var_0.e.a, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(var_0.a.xyw, u_input.a), 0i), func_2(var_0.d.x, var_2).a.x, max(-1i, 0i)), true), abs(~min(vec4<u32>(var_0.b.x, 61551u, u_input.b, var_2), var_0.b) | ~_wgslsmith_div_vec4_u32(var_0.b, vec4<u32>(var_2, var_0.b.x, var_2, 0u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.c, -560f)))), _wgslsmith_f_op_vec2_f32(abs(var_0.d)), Struct_1(2147483647i));
    var var_7 = Struct_2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-var_6.d.x), var_0.d.x, 1003f, _wgslsmith_f_op_f32(-var_1)))), global2[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec2_u32(~(~var_0.b.yw), abs(var_0.b.ww))), 10u)], var_6.b.wzy, var_6.e);
    global0 = ~0i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1315f)) * var_7.a.x), -1000f))), max(vec2<u32>(_wgslsmith_dot_vec4_u32(select(var_6.b, var_6.b, true), ~var_6.b), abs(var_2 << (4294967295u % 32u))), _wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(var_6.b.zy ^ var_7.c.yx, firstTrailingBit(var_7.c.zx), vec2<u32>(var_0.b.x, 1u)), var_0.b.xw)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(966f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_7.a.x * 2313f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1673f)))))), vec3<u32>(~_wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.b, 57753u), 0u << (var_0.b.x % 32u)), var_2, ~(~71967u)), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) * func_2(var_0.d.x, 5644u).d.x)), var_2).b);
}

