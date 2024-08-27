struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_2, arg_3: vec2<bool>) -> u32 {
    let var_0 = vec2<i32>(firstTrailingBit(arg_2.a.c.x), -2147483647i);
    let var_1 = all(vec2<bool>(true, arg_3.x));
    let var_2 = Struct_3(var_1);
    global0 = u_input.b;
    global0 = -abs(firstTrailingBit(var_0));
    return 4294967295u;
}

fn func_2() -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1892f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-353f * 1719f), _wgslsmith_f_op_f32(ceil(-1089f)))))));
    let var_1 = select(~(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 50093u, 86160u, 90335u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 53850u)), 1u, _wgslsmith_clamp_u32(57059u, 10622u, 1u)) << (vec3<u32>(0u >> (1u % 32u), 1u, 1u) % vec3<u32>(32u))), vec3<u32>(1u, ~(~4294967295u), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(862u, 53409u, 49500u)), vec3<u32>(54702u, 35948u, 23235u))) << (vec3<u32>(firstLeadingBit(18130u), func_3(Struct_2(Struct_1(vec4<i32>(global0.x, global0.x, u_input.b.x, u_input.a.x), vec2<f32>(var_0.x, var_0.x), u_input.b), -2147483647i, 1499f, Struct_1(vec4<i32>(0i, 2147483647i, 6937i, global0.x), vec2<f32>(var_0.x, var_0.x), u_input.b)), Struct_4(Struct_2(Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, 1i, u_input.b.x), vec2<f32>(2039f, var_0.x), vec2<i32>(-16469i, 2147483647i)), 13248i, 320f, Struct_1(vec4<i32>(8669i, 1i, u_input.a.x, global0.x), vec2<f32>(var_0.x, -527f), vec2<i32>(u_input.a.x, 2147483647i))), 617f), Struct_2(Struct_1(vec4<i32>(global0.x, u_input.b.x, u_input.b.x, u_input.b.x), var_0, u_input.b), global0.x, var_0.x, Struct_1(vec4<i32>(u_input.b.x, u_input.b.x, -33459i, -2147483647i), vec2<f32>(var_0.x, -998f), u_input.a)), vec2<bool>(true, true)), ~_wgslsmith_clamp_u32(4294967295u, 1u, 68791u)) % vec3<u32>(32u)), select(select(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), any(vec3<bool>(true, true, true))), !vec3<bool>(true, all(vec4<bool>(false, false, true, false)), global0.x >= global0.x), true));
    var var_2 = (_wgslsmith_div_i32(_wgslsmith_mod_i32(10653i, _wgslsmith_clamp_i32(0i, u_input.a.x, u_input.b.x)), global0.x) & 2147483647i) & -38581i;
    let var_3 = _wgslsmith_mod_u32(0u, ~(11027u >> (firstTrailingBit(1u) % 32u)));
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.x)) + var_0.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.x - var_0.x), var_0.x)))));
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, -833f))), var_0.x), 997f, var_0.x) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(850f, var_4.x, 1025f) * _wgslsmith_div_vec3_f32(vec3<f32>(-1264f, 102f, 1888f), vec3<f32>(var_4.x, 442f, var_0.x)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1633f, var_4.x, -825f)) + _wgslsmith_div_vec3_f32(vec3<f32>(-1971f, var_0.x, -1186f), vec3<f32>(1000f, -778f, 1272f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, var_0.x, -426f), vec3<f32>(var_4.x, var_0.x, 480f), true)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.x, var_0.x, var_0.x) + vec3<f32>(1000f, var_4.x, var_4.x))), vec3<bool>(true, true, true)))));
}

fn func_4(arg_0: vec3<f32>, arg_1: f32, arg_2: Struct_3, arg_3: vec2<i32>) -> vec2<bool> {
    global0 = vec2<i32>(1i, ~select(~(-2147483647i) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, -30948i), vec2<i32>(5137i, 0i)), _wgslsmith_mod_i32(1i, _wgslsmith_clamp_i32(2147483647i, u_input.a.x, arg_3.x)), true));
    global0 = select(~min(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b.x, -1i), u_input.a), _wgslsmith_add_vec2_i32(arg_3 | u_input.b, vec2<i32>(arg_3.x, 0i))), u_input.a, vec2<bool>(!(!arg_2.a | true), arg_2.a));
    let var_0 = select(vec2<bool>(true, arg_2.a), !(!select(!vec2<bool>(true, arg_2.a), !vec2<bool>(arg_2.a, arg_2.a), !arg_2.a)), true);
    var var_1 = arg_0;
    var_1 = _wgslsmith_f_op_vec3_f32(-arg_0);
    return vec2<bool>(select(!(~17553u >= func_3(Struct_2(Struct_1(vec4<i32>(-11192i, global0.x, 0i, arg_3.x), vec2<f32>(1666f, arg_0.x), vec2<i32>(497i, -1i)), -1i, arg_0.x, Struct_1(vec4<i32>(global0.x, 9105i, u_input.a.x, -1i), var_1.xz, arg_3)), Struct_4(Struct_2(Struct_1(vec4<i32>(23836i, 0i, u_input.a.x, global0.x), vec2<f32>(arg_0.x, arg_1), vec2<i32>(-22563i, u_input.b.x)), global0.x, 382f, Struct_1(vec4<i32>(arg_3.x, -46636i, -19924i, arg_3.x), vec2<f32>(arg_1, arg_0.x), vec2<i32>(15715i, -26092i))), -1703f), Struct_2(Struct_1(vec4<i32>(2147483647i, -49134i, 27253i, u_input.a.x), vec2<f32>(arg_1, -2174f), vec2<i32>(1i, arg_3.x)), -27448i, -1423f, Struct_1(vec4<i32>(1i, global0.x, -2147483647i, 2147483647i), var_1.xy, vec2<i32>(2147483647i, arg_3.x))), var_0)), select(all(vec3<bool>(var_0.x, true, arg_2.a)), select(true, arg_2.a, arg_3.x > 0i), all(select(vec3<bool>(false, var_0.x, arg_2.a), vec3<bool>(arg_2.a, false, var_0.x), arg_2.a))), var_0.x && arg_2.a), arg_2.a);
}

fn func_1(arg_0: vec2<bool>) -> Struct_2 {
    let var_0 = Struct_4(Struct_2(Struct_1(-vec4<i32>(global0.x, global0.x, u_input.b.x, -26183i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-725f, -1639f)))), select(vec2<i32>(-1i, 1i), -u_input.b, vec2<bool>(false, true))), 2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -412f) + _wgslsmith_f_op_f32(1612f - -757f))), Struct_1(~(vec4<i32>(global0.x, u_input.a.x, 10680i, -18198i) & vec4<i32>(global0.x, -8575i, global0.x, global0.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-459f, 1217f) + vec2<f32>(-1835f, 188f))), vec2<i32>(~1854i, global0.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1486f)), -809f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-991f))))));
    let var_1 = var_0.a.b;
    global0 = abs(~_wgslsmith_mult_vec2_i32((u_input.a >> (vec2<u32>(0u, 24024u) % vec2<u32>(32u))) ^ ~var_0.a.a.c, vec2<i32>(var_1, 22775i) >> (vec2<u32>(31848u, 7423u) % vec2<u32>(32u))));
    let var_2 = !func_4(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(func_2()))), _wgslsmith_f_op_f32(max(var_0.a.c, var_0.b)), Struct_3(!(!arg_0.x)), u_input.a);
    global0 = -vec2<i32>(max(-u_input.a.x, i32(-1i) * -2147483647i), 0i);
    return Struct_2(Struct_1(vec4<i32>(_wgslsmith_sub_i32(-global0.x, u_input.a.x), ~(-33704i), _wgslsmith_dot_vec2_i32(u_input.a, var_0.a.a.c ^ vec2<i32>(u_input.a.x, var_1)), 2147483647i), var_0.a.a.b, countOneBits(select(vec2<i32>(1i, 7610i), vec2<i32>(-1i, -6731i), func_4(vec3<f32>(var_0.a.c, var_0.a.c, var_0.a.d.b.x), 951f, Struct_3(var_2.x), u_input.b)))), ~max(9611i, 0i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(302f * var_0.b)))), var_0.a.d);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(-(u_input.b << (~(~vec2<u32>(4294967295u, 692u)) % vec2<u32>(32u))));
    global0 = ~(~u_input.a);
    var var_0 = func_1(vec2<bool>(true, true));
    var var_1 = !vec3<bool>(!all(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false))), any(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false))), any(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), true)));
    var_1 = vec3<bool>(true, any(!var_1.xz), var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(u_input.a), var_0.d.c, _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.d.a.x, ~21128i, 1091i, ~u_input.b.x), reverseBits(var_0.d.a)), _wgslsmith_clamp_vec4_i32(~(-var_0.a.a), vec4<i32>(global0.x, 19393i, -14514i, var_0.b) << (min(vec4<u32>(4294967295u, 1u, 4294967295u, 1u), vec4<u32>(4294967295u, 0u, 15089u, 12427u)) % vec4<u32>(32u)), var_0.a.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.d.b.x - _wgslsmith_f_op_f32(floor(var_0.a.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1431f, -515f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.c + var_0.c), var_0.c), _wgslsmith_f_op_f32(-var_0.a.b.x)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(519f, var_0.d.b.x, var_0.c, var_0.c), vec4<f32>(1307f, -856f, var_0.a.b.x, var_0.a.b.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-247f, var_0.c, var_0.c, 510f) * vec4<f32>(-1062f, 724f, var_0.c, var_0.d.b.x)))));
}

