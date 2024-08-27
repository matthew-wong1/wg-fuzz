struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: bool,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec3<f32>,
    c: Struct_1,
    d: vec2<bool>,
    e: f32,
}

struct Struct_5 {
    a: u32,
    b: Struct_3,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 8> = array<vec2<i32>, 8>(vec2<i32>(21281i, -11735i), vec2<i32>(7260i, -15154i), vec2<i32>(i32(-2147483648), -52263i), vec2<i32>(i32(-2147483648), 51732i), vec2<i32>(-1i, 467i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(-1i, -35329i), vec2<i32>(2147483647i, -43223i));

var<private> global1: array<vec2<u32>, 31>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2) -> u32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(727f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1f))));
    global1 = array<vec2<u32>, 31>();
    let var_1 = vec4<u32>(~(~56774u) | _wgslsmith_sub_u32(57408u << (arg_1.b.c.x % 32u), ~arg_1.b.c.x), select(18354u, 67191u, true), ~arg_1.b.c.x, 60459u) & _wgslsmith_sub_vec4_u32(reverseBits(reverseBits(vec4<u32>(arg_1.b.c.x, 1u, 16118u, 38681u))) >> ((~vec4<u32>(arg_0.x, 3536u, 4294967295u, arg_0.x) << (vec4<u32>(40343u, 48243u, 34992u, arg_0.x) % vec4<u32>(32u))) % vec4<u32>(32u)), abs(~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, arg_0.x, arg_0.x, 12087u), vec4<u32>(arg_0.x, arg_1.c.c.x, arg_0.x, 4294967295u))));
    let var_2 = Struct_2(arg_1.a, Struct_1(max(max(vec2<i32>(1i, 2475i), vec2<i32>(u_input.b, 0i)), vec2<i32>(~u_input.b, arg_1.b.a.x)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.b.b.x, 1430f, false)) + var_0), -728f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0))), arg_1.c.b.x), vec2<u32>(~_wgslsmith_add_u32(arg_0.x, arg_1.c.c.x), ~6653u)), arg_1.c);
    let var_3 = vec4<i32>(var_2.b.a.x >> (_wgslsmith_mod_u32(~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 74602u), var_1.xxy)) % 32u), _wgslsmith_sub_i32(select(u_input.a, 1i, arg_1.a), ~arg_1.c.a.x) ^ (i32(-1i) * -2147483647i), _wgslsmith_dot_vec3_i32(select(select(vec3<i32>(1i, u_input.a, -30031i), vec3<i32>(var_2.c.a.x, 2147483647i, 1i), vec3<bool>(var_2.a, var_2.a, true)), ~vec3<i32>(0i, arg_1.b.a.x, -11497i), false | arg_1.a), countOneBits(vec3<i32>(-19713i, var_2.b.a.x, -1i))), u_input.a) & abs(_wgslsmith_add_vec4_i32(~_wgslsmith_mult_vec4_i32(vec4<i32>(var_2.b.a.x, 0i, var_2.c.a.x, var_2.c.a.x), vec4<i32>(-12719i, u_input.a, 1i, 2147483647i)), select(reverseBits(vec4<i32>(0i, u_input.b, 65284i, -21243i)), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, var_2.b.a.x, -25646i, u_input.a), vec4<i32>(0i, arg_1.b.a.x, arg_1.b.a.x, 15442i)), !vec4<bool>(arg_1.a, false, arg_1.a, var_2.a))));
    return _wgslsmith_dot_vec3_u32(abs(~max(vec3<u32>(var_1.x, 1644u, 4294967295u), var_1.wwx)) ^ vec3<u32>(1u | _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 45414u), vec2<u32>(0u, arg_1.c.c.x)), select(var_2.b.c.x, var_1.x, false), ~(~55358u)), var_1.yyw);
}

fn func_2(arg_0: vec2<bool>) -> vec2<u32> {
    global1 = array<vec2<u32>, 31>();
    var var_0 = _wgslsmith_mult_vec4_u32(~(~min(~vec4<u32>(4294967295u, 4294967295u, 1u, 1u), vec4<u32>(15655u, 3288u, 1u, 0u))), vec4<u32>(_wgslsmith_div_u32(min(~0u, func_3(vec2<u32>(4294967295u, 4294967295u), Struct_2(arg_0.x, Struct_1(vec2<i32>(2147483647i, -12115i), vec4<f32>(1000f, 1000f, 534f, -1443f), global1[_wgslsmith_index_u32(4294967295u, 31u)]), Struct_1(global0[_wgslsmith_index_u32(83662u, 8u)], vec4<f32>(182f, 172f, 1379f, -535f), vec2<u32>(11763u, 42898u))))), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(17978u, 4294967295u, 0u), _wgslsmith_add_u32(1049u, 117277u), ~40346u)), 31683u, ~1u, 0u));
    let var_1 = select(select(!(!arg_0), !vec2<bool>(true, arg_0.x), arg_0), select(select(!select(vec2<bool>(arg_0.x, false), arg_0, false), vec2<bool>(any(vec3<bool>(true, false, arg_0.x)), !arg_0.x), arg_0), !select(arg_0, !arg_0, true), arg_0), true);
    var var_2 = Struct_4(firstLeadingBit(1u & func_3(vec2<u32>(84779u, var_0.x), Struct_2(arg_0.x, Struct_1(vec2<i32>(u_input.a, 2147483647i), vec4<f32>(-441f, 313f, 681f, -1520f), global1[_wgslsmith_index_u32(var_0.x, 31u)]), Struct_1(global0[_wgslsmith_index_u32(var_0.x, 8u)], vec4<f32>(-407f, 813f, 572f, -683f), var_0.yx)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(239f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-222f + 321f))))), 1000f), Struct_1(-vec2<i32>(u_input.b, u_input.b), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -858f) - -1229f), -647f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(263f + -643f)), -105f), reverseBits(min(var_0.yw, max(vec2<u32>(0u, 24003u), var_0.xy)))), vec2<bool>((_wgslsmith_mod_i32(-9952i, u_input.b) > _wgslsmith_div_i32(0i, -19066i)) == arg_0.x, _wgslsmith_f_op_f32(step(-920f, _wgslsmith_f_op_f32(916f * 1339f))) != _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(2197f, -286f)), _wgslsmith_f_op_f32(round(-1000f)), var_1.x & true))), 962f);
    let var_3 = _wgslsmith_mult_i32(reverseBits(u_input.b), var_2.c.a.x);
    return _wgslsmith_mult_vec2_u32(countOneBits(~_wgslsmith_add_vec2_u32(abs(var_2.c.c), max(vec2<u32>(1u, 4294967295u), var_2.c.c))), select(vec2<u32>(var_2.a, ~(~var_2.a)), max(_wgslsmith_sub_vec2_u32(countOneBits(vec2<u32>(9163u, 4294967295u)), ~vec2<u32>(1u, var_2.a)), var_0.xw), select(407i <= var_2.c.a.x, any(var_2.d), all(vec2<bool>(arg_0.x, arg_0.x))) | any(select(vec4<bool>(var_1.x, arg_0.x, var_2.d.x, var_1.x), vec4<bool>(false, var_1.x, var_1.x, true), vec4<bool>(var_1.x, true, false, arg_0.x)))));
}

fn func_1(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: Struct_5) -> Struct_2 {
    var var_0 = 0u << (arg_0.a.x % 32u);
    global1 = array<vec2<u32>, 31>();
    let var_1 = countOneBits(vec3<i32>(arg_2.d.a.x >> (arg_0.a.x % 32u), -49106i, -2147483647i));
    let var_2 = Struct_2(false, Struct_1(arg_2.b.d.a, _wgslsmith_f_op_vec4_f32(arg_0.d.b * _wgslsmith_f_op_vec4_f32(arg_0.d.b - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, arg_0.d.b.x, -837f)))), min(arg_0.d.c, vec2<u32>(~474u, 4294967295u))), Struct_1(_wgslsmith_div_vec2_i32(arg_2.d.a, arg_0.c), _wgslsmith_f_op_vec4_f32(-arg_0.d.b), countOneBits(func_2(select(vec2<bool>(true, arg_0.b), vec2<bool>(true, false), false)))));
    global1 = array<vec2<u32>, 31>();
    return Struct_2(true, arg_0.d, arg_0.d);
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: vec3<bool>) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(arg_0.b.b, arg_0.c.b, vec4<bool>(!(!arg_0.a), true, all(arg_2.xx), arg_0.a))) + vec4<f32>(arg_0.b.b.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1741f))), arg_0.b.b.x, 1404f));
    global0 = array<vec2<i32>, 8>();
    let var_1 = Struct_3(_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(select(vec3<u32>(1u, arg_0.c.c.x, 715u), vec3<u32>(arg_0.b.c.x, arg_0.c.c.x, arg_0.b.c.x), true), countOneBits(vec3<u32>(arg_0.b.c.x, arg_0.c.c.x, arg_0.c.c.x)), vec3<u32>(arg_0.b.c.x, 4294967295u, 4294967295u)), _wgslsmith_mod_vec3_u32(min(vec3<u32>(0u, 15551u, arg_0.c.c.x), vec3<u32>(54731u, arg_0.b.c.x, 1u)), min(vec3<u32>(0u, 52047u, arg_0.c.c.x), vec3<u32>(arg_0.c.c.x, arg_0.c.c.x, 106884u)))) | vec3<u32>(56636u, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.c.c.x, 50133u), global1[_wgslsmith_index_u32(arg_0.c.c.x, 31u)]), arg_0.b.c.x), abs(arg_0.c.c.x)), arg_2.x, select(vec2<i32>(~countOneBits(-1i), -17669i), max(vec2<i32>(i32(-1i) * -1i, _wgslsmith_mod_i32(20128i, 71115i)), arg_0.c.a), arg_0.a), arg_0.c);
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.d.b.x, -898f)) + _wgslsmith_f_op_f32(f32(-1f) * -1693f))))), 625f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.b.b.x)) * var_1.d.b.x), _wgslsmith_f_op_f32(945f * _wgslsmith_f_op_f32(max(-863f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - arg_0.c.b.x) + _wgslsmith_div_f32(508f, -565f))))));
    var_0 = _wgslsmith_div_vec4_f32(var_1.d.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.c.b)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1580f, -1521f, -789f, -626f) - vec4<f32>(-380f, arg_0.b.b.x, var_1.d.b.x, var_0.x)))) - var_1.d.b)));
    return Struct_4(29673u, var_1.d.b.xxz, arg_0.b, arg_2.xz, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.d.b.x * var_1.d.b.x), _wgslsmith_f_op_f32(arg_0.c.b.x * var_1.d.b.x))), -1014f)), _wgslsmith_f_op_f32(1f * -276f)));
}

fn func_5(arg_0: u32, arg_1: Struct_4, arg_2: bool) -> i32 {
    global1 = array<vec2<u32>, 31>();
    var var_0 = 1000f;
    global0 = array<vec2<i32>, 8>();
    global0 = array<vec2<i32>, 8>();
    let var_1 = u_input.b;
    return var_1;
}

fn func_6(arg_0: i32) -> Struct_2 {
    global1 = array<vec2<u32>, 31>();
    var var_0 = countOneBits(vec3<i32>(_wgslsmith_div_i32(arg_0, i32(-1i) * -2147483647i), -(-21275i << (0u % 32u)), select(-2147483647i, ~0i, true)) ^ firstLeadingBit(~vec3<i32>(37289i, -35020i, 2147483647i) & _wgslsmith_clamp_vec3_i32(vec3<i32>(-44393i, -1i, u_input.b), vec3<i32>(0i, -47223i, -2147483647i), vec3<i32>(2542i, u_input.b, u_input.b))));
    let var_1 = Struct_4(abs(55232u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2097f, 1000f, -375f))) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-430f, _wgslsmith_f_op_f32(-1305f + 462f), -1632f), vec3<f32>(_wgslsmith_f_op_f32(-1077f * 1000f), _wgslsmith_f_op_f32(f32(-1f) * -1484f), 333f)))), Struct_1(~firstTrailingBit(~var_0.zx), func_4(Struct_2(false, Struct_1(vec2<i32>(arg_0, 67263i), vec4<f32>(-690f, 334f, 691f, -1134f), vec2<u32>(4294967295u, 34561u)), Struct_1(vec2<i32>(u_input.a, 1i), vec4<f32>(436f, -2131f, 255f, 474f), global1[_wgslsmith_index_u32(0u, 31u)])), reverseBits(firstLeadingBit(-1i)), select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true), vec3<bool>(false, false, false), false)).c.b, global1[_wgslsmith_index_u32(0u, 31u)]), func_4(Struct_2(all(vec2<bool>(false, false)) & all(vec3<bool>(false, true, true)), func_4(func_1(Struct_3(vec3<u32>(4294967295u, 0u, 35271u), false, global0[_wgslsmith_index_u32(0u, 8u)], Struct_1(var_0.yz, vec4<f32>(857f, -130f, -302f, -193f), global1[_wgslsmith_index_u32(24461u, 31u)])), vec3<f32>(-431f, -203f, -1027f), Struct_5(18428u, Struct_3(vec3<u32>(0u, 35394u, 62067u), false, var_0.yz, Struct_1(vec2<i32>(17149i, 2147483647i), vec4<f32>(-972f, -2739f, -944f, -889f), global1[_wgslsmith_index_u32(4294967295u, 31u)])), 571u, Struct_1(vec2<i32>(-1i, -1i), vec4<f32>(-434f, -190f, -835f, -223f), vec2<u32>(1u, 35567u)))), u_input.a, vec3<bool>(true, true, false)).c, Struct_1(vec2<i32>(2147483647i, u_input.b), vec4<f32>(1f, 1f, 1f, 1f), vec2<u32>(12755u, 35308u))), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(~global0[_wgslsmith_index_u32(1u, 8u)], var_0.zx), var_0.x, countOneBits(u_input.a)), vec3<bool>(any(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false)), true & all(vec4<bool>(true, true, false, false)), func_1(Struct_3(vec3<u32>(1u, 35211u, 0u), false, global0[_wgslsmith_index_u32(0u, 8u)], Struct_1(var_0.zz, vec4<f32>(-1025f, -1000f, -583f, -940f), global1[_wgslsmith_index_u32(35055u, 31u)])), vec3<f32>(-1312f, 1424f, -1766f), Struct_5(1u, Struct_3(vec3<u32>(4903u, 4294967295u, 4294967295u), false, global0[_wgslsmith_index_u32(32123u, 8u)], Struct_1(var_0.yx, vec4<f32>(935f, 696f, -1918f, 147f), global1[_wgslsmith_index_u32(4294967295u, 31u)])), 1345u, Struct_1(vec2<i32>(u_input.b, 34634i), vec4<f32>(840f, 781f, -802f, -1000f), vec2<u32>(1u, 0u)))).a)).d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1343f, -515f)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(219f - -756f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))))));
    let var_2 = vec3<bool>(func_4(func_1(Struct_3(vec3<u32>(4294967295u, 0u, var_1.c.c.x), var_1.d.x & true, -vec2<i32>(var_0.x, 11321i), var_1.c), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.b), vec3<f32>(var_1.c.b.x, 1012f, var_1.e)), Struct_5(var_1.a, Struct_3(vec3<u32>(52614u, var_1.c.c.x, 24192u), var_1.d.x, global0[_wgslsmith_index_u32(4294967295u, 8u)], Struct_1(vec2<i32>(var_1.c.a.x, u_input.b), var_1.c.b, var_1.c.c)), func_1(Struct_3(vec3<u32>(var_1.c.c.x, 55690u, var_1.a), false, var_0.xx, Struct_1(vec2<i32>(28414i, -2147483647i), var_1.c.b, global1[_wgslsmith_index_u32(4294967295u, 31u)])), vec3<f32>(-849f, 1174f, var_1.c.b.x), Struct_5(var_1.a, Struct_3(vec3<u32>(26478u, 9345u, 18573u), true, global0[_wgslsmith_index_u32(var_1.a, 8u)], Struct_1(var_0.xy, var_1.c.b, var_1.c.c)), var_1.c.c.x, var_1.c)).c.c.x, Struct_1(global0[_wgslsmith_index_u32(1u, 8u)], vec4<f32>(var_1.c.b.x, var_1.e, var_1.e, var_1.c.b.x), global1[_wgslsmith_index_u32(1u, 31u)]))), _wgslsmith_div_i32(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(u_input.b, var_1.c.a.x), -29473i, arg_0), var_1.c.a.x), vec3<bool>(all(vec3<bool>(true, false, false)), var_1.d.x, any(func_4(Struct_2(true, Struct_1(vec2<i32>(var_0.x, var_1.c.a.x), var_1.c.b, vec2<u32>(1u, 2085u)), var_1.c), 2147483647i, vec3<bool>(false, true, var_1.d.x)).d))).d.x, var_1.d.x, true);
    var_0 = _wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(1i, var_0.x, abs(var_1.c.a.x) << (select(1u, 606u, var_2.x) % 32u))), reverseBits(vec3<i32>(abs(-14949i), _wgslsmith_mult_i32(var_0.x, var_1.c.a.x), -var_1.c.a.x)) ^ (vec3<i32>(-1i) * -vec3<i32>(-2147483647i, u_input.b, 2147483647i)));
    return func_1(Struct_3(~select(~vec3<u32>(1u, 87783u, 64365u), vec3<u32>(var_1.a, var_1.c.c.x, 19255u), !var_2), true, vec2<i32>(1i, reverseBits(var_1.c.a.x)), var_1.c), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(ceil(-1509f)), _wgslsmith_div_f32(var_1.b.x, -191f), 133f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(var_1.b.x)), 1577f, _wgslsmith_f_op_f32(round(-797f)))))), Struct_5(1u, Struct_3(vec3<u32>(func_2(var_1.d).x, var_1.a & 71151u, 26099u), any(!vec4<bool>(var_1.d.x, false, var_2.x, var_2.x)), vec2<i32>(func_1(Struct_3(vec3<u32>(var_1.a, var_1.a, var_1.a), true, vec2<i32>(var_0.x, -28444i), var_1.c), vec3<f32>(-1477f, -237f, -1596f), Struct_5(var_1.a, Struct_3(vec3<u32>(4433u, var_1.c.c.x, 1u), var_1.d.x, global0[_wgslsmith_index_u32(0u, 8u)], var_1.c), 18797u, Struct_1(vec2<i32>(var_0.x, -1216i), vec4<f32>(var_1.e, 142f, var_1.e, var_1.c.b.x), vec2<u32>(1u, 4294967295u)))).c.a.x, max(0i, -2147483647i)), var_1.c), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(global1[_wgslsmith_index_u32(~0u, 31u)], vec2<u32>(0u, 4294967295u)), _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(global1[_wgslsmith_index_u32(var_1.a, 31u)], global1[_wgslsmith_index_u32(4294967295u, 31u)]), ~vec2<u32>(var_1.a, 1u))), var_1.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(u_input.a < 0i);
    global0 = array<vec2<i32>, 8>();
    global1 = array<vec2<u32>, 31>();
    let var_1 = 886f;
    let var_2 = func_6(-func_5(reverseBits(59846u << (1u % 32u)), func_4(func_1(Struct_3(vec3<u32>(0u, 3083u, 9215u), true, global0[_wgslsmith_index_u32(102134u, 8u)], Struct_1(vec2<i32>(u_input.a, u_input.a), vec4<f32>(var_1, -1814f, 1766f, -1191f), global1[_wgslsmith_index_u32(1u, 31u)])), vec3<f32>(var_1, var_1, var_1), Struct_5(14066u, Struct_3(vec3<u32>(25569u, 1u, 0u), true, vec2<i32>(u_input.b, 42492i), Struct_1(vec2<i32>(-2147483647i, -1937i), vec4<f32>(var_1, var_1, var_1, 628f), vec2<u32>(62702u, 114452u))), 57750u, Struct_1(vec2<i32>(-1i, u_input.b), vec4<f32>(var_1, 2637f, 1050f, var_1), vec2<u32>(0u, 0u)))), u_input.a, select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, true, false), var_0)), any(vec4<bool>(var_0, var_0, var_0, var_0))));
    global1 = array<vec2<u32>, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_vec3_u32(vec3<u32>(~14784u, 53844u, 0u), firstLeadingBit(select(vec3<u32>(var_2.c.c.x, var_2.c.c.x, 4751u), vec3<u32>(var_2.c.c.x, var_2.c.c.x, 0u), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.b.b.x), var_1))))));
}

