struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: i32,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: vec2<bool>,
    e: vec2<i32>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(vec4<bool>(true, false, true, true), Struct_1(false, i32(-2147483648)), -29297i, 0u), Struct_2(vec4<bool>(true, true, true, false), Struct_1(false, -10282i), -24046i, 25617u), Struct_2(vec4<bool>(true, false, false, true), Struct_1(true, 2147483647i), 1i, 4294967295u), Struct_2(vec4<bool>(false, true, true, true), Struct_1(true, 21471i), -1i, 78845u), Struct_2(vec4<bool>(false, true, true, true), Struct_1(true, -66559i), 2147483647i, 21636u), Struct_2(vec4<bool>(true, false, true, false), Struct_1(false, -55340i), 12496i, 75526u), Struct_2(vec4<bool>(false, false, false, false), Struct_1(true, 24374i), -1i, 1u), Struct_2(vec4<bool>(false, false, false, false), Struct_1(true, 2147483647i), -11861i, 45191u), Struct_2(vec4<bool>(true, false, true, true), Struct_1(false, 0i), 0i, 16907u), Struct_2(vec4<bool>(false, false, true, false), Struct_1(false, 1i), 0i, 4294967295u), Struct_2(vec4<bool>(false, true, true, false), Struct_1(false, -27462i), -13610i, 23589u), Struct_2(vec4<bool>(true, false, false, true), Struct_1(true, 1i), -1i, 1u), Struct_2(vec4<bool>(true, true, true, false), Struct_1(false, i32(-2147483648)), 1i, 4294967295u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: f32, arg_1: Struct_3) -> u32 {
    global0 = array<Struct_2, 13>();
    let var_0 = u_input.b.x;
    let var_1 = true;
    let var_2 = all(!vec4<bool>(true, true, var_1, 4294967295u < ~arg_1.a.d));
    let var_3 = !vec2<bool>(var_2, !any(vec3<bool>(true, var_2, var_2)));
    return (1u & reverseBits(_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_1.a.d, arg_1.a.d), vec2<u32>(1u, 1u)))) << (1671u % 32u);
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_2) -> Struct_1 {
    global0 = array<Struct_2, 13>();
    var var_0 = Struct_4(arg_0.d >> (_wgslsmith_dot_vec3_u32(max(vec3<u32>(arg_2.d, arg_0.d, arg_0.d), min(vec3<u32>(39673u, 0u, arg_2.d), vec3<u32>(0u, arg_0.d, 30671u))), ~vec3<u32>(arg_2.d, 0u, 72486u)) % 32u), ~select(select(_wgslsmith_sub_u32(arg_2.d, arg_2.d), _wgslsmith_div_u32(arg_2.d, 70250u), true), select(arg_0.d, ~arg_0.d, true), _wgslsmith_sub_i32(72138i, -47172i) > ~arg_0.c), Struct_1(true, u_input.b.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.d, arg_0.d, arg_2.d) & vec3<u32>(25095u, 4294967295u, arg_0.d), vec3<u32>(4294967295u, arg_2.d, 4294967295u)) % 32u)), !select(arg_0.a.xx, select(vec2<bool>(false, arg_2.a.x), vec2<bool>(true, arg_0.b.a), select(vec2<bool>(true, false), arg_2.a.yy, arg_0.a.x)), true | any(arg_0.a)), _wgslsmith_div_vec2_i32(arg_1.xx, ~u_input.a & (arg_1.yy | abs(u_input.a))));
    let var_1 = vec4<u32>(_wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(5692u, arg_0.d, arg_0.d, var_0.a) << (vec4<u32>(29889u, arg_2.d, 61381u, 4294967295u) % vec4<u32>(32u)), ~vec4<u32>(59016u, arg_0.d, 4238u, arg_2.d), ~vec4<u32>(4294967295u, arg_0.d, var_0.b, 0u)), vec4<u32>(var_0.a, _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(arg_2.d, 54503u)), vec2<u32>(10673u, 0u)), arg_2.d, abs(arg_0.d))), _wgslsmith_mult_u32(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1874f, 265f)) + 1f), Struct_3(Struct_2(arg_2.a, arg_2.b, u_input.b.x, arg_0.d))), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1u, arg_0.d), vec2<u32>(arg_0.d, arg_2.d) ^ vec2<u32>(0u, 1u)), vec2<u32>(_wgslsmith_mult_u32(1u, var_0.b), firstTrailingBit(arg_2.d)))), select(reverseBits(_wgslsmith_sub_u32(3205u, max(var_0.a, 4294967295u))), abs(55320u), var_0.c.a), ~_wgslsmith_div_u32(48258u, arg_2.d));
    let var_2 = vec3<u32>(~14560u, 4294967295u, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(arg_0.d, 50686u), ~var_0.a), ~(~var_0.a), arg_0.d) << (_wgslsmith_mult_u32(arg_0.d | _wgslsmith_add_u32(var_0.b, arg_2.d), var_1.x) % 32u));
    let var_3 = -2784f;
    return Struct_1(arg_2.a.x, -2147483647i);
}

fn func_1() -> u32 {
    let var_0 = Struct_4(_wgslsmith_add_u32(~(~1u), abs(~9847u >> (_wgslsmith_clamp_u32(74266u, 32031u, 0u) % 32u))), select(~1u, 1u >> (_wgslsmith_sub_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(37359u, 22469u))) % 32u), true), func_3(global0[_wgslsmith_index_u32(func_2(-856f, Struct_3(global0[_wgslsmith_index_u32(1u, 13u)])) >> (~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 65709u), vec2<u32>(43321u, 0u)) % 32u), 13u)], countOneBits(vec3<i32>(u_input.a.x & 1512i, u_input.b.x, u_input.a.x)), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, _wgslsmith_div_u32(_wgslsmith_mod_u32(4294967295u, 4294967295u), 1u)), 13u)]), select(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), true), all(vec2<bool>(false, false))), vec2<bool>(any(vec2<bool>(true, true)), true), select(select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), false), true), vec2<bool>(true, false), true)), u_input.a);
    let var_1 = _wgslsmith_f_op_f32(min(720f, _wgslsmith_f_op_f32(max(418f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1827f - 1000f))))))));
    global0 = array<Struct_2, 13>();
    var var_2 = var_0.a;
    var var_3 = global0[_wgslsmith_index_u32(4294967295u, 13u)];
    return var_0.a;
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: i32) -> vec3<i32> {
    let var_0 = arg_0.b.a;
    global0 = array<Struct_2, 13>();
    global0 = array<Struct_2, 13>();
    global0 = array<Struct_2, 13>();
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1014f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(2092f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-284f)), _wgslsmith_div_f32(180f, -997f))))));
    return abs(_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.b.b, 2147483647i, -858i) >> (vec3<u32>(1u, arg_0.d, 1u) % vec3<u32>(32u)), vec3<i32>(arg_2, arg_0.c, u_input.a.x)), ~vec3<i32>(arg_0.c, -1i, u_input.a.x))) | min(~min(abs(vec3<i32>(arg_0.c, arg_2, u_input.b.x)), vec3<i32>(-33929i, u_input.b.x, 2147483647i)), -vec3<i32>(arg_2, countOneBits(-21386i), ~2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 13>();
    var var_0 = Struct_5(_wgslsmith_mod_vec3_i32(-vec3<i32>(u_input.b.x, u_input.a.x, 1i) | vec3<i32>(1i, 1i, 1i), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, -15293i, -1i) >> (vec3<u32>(1u, 4294967295u, 151u) % vec3<u32>(32u)), ~vec3<i32>(5627i, u_input.b.x, 1i), -vec3<i32>(1i, -2147483647i, u_input.a.x))) | ~(~vec3<i32>(-2147483647i, u_input.b.x, 1i) << (vec3<u32>(10096u, 4294967295u, 1u) % vec3<u32>(32u))), -861f);
    var var_1 = func_4(global0[_wgslsmith_index_u32(func_1(), 13u)], func_2(-266f, Struct_3(Struct_2(vec4<bool>(true, false, false, false), func_3(Struct_2(vec4<bool>(true, true, false, false), Struct_1(false, var_0.a.x), -1i, 0u), var_0.a, Struct_2(vec4<bool>(true, true, true, true), Struct_1(false, var_0.a.x), u_input.b.x, 70375u)), -1i ^ u_input.b.x, firstTrailingBit(19907u)))), var_0.a.x);
    var_0 = Struct_5(var_0.a, -468f);
    var var_2 = Struct_5(abs(var_0.a) ^ ~_wgslsmith_mult_vec3_i32(var_0.a, ~vec3<i32>(u_input.a.x, var_1.x, var_0.a.x)), _wgslsmith_f_op_f32(var_0.b - _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -212f), _wgslsmith_f_op_f32(f32(-1f) * -1834f)), _wgslsmith_f_op_f32(var_0.b * _wgslsmith_f_op_f32(-var_0.b)))));
    var var_3 = Struct_5(abs(~vec3<i32>(-3146i, select(0i, 0i, false), _wgslsmith_sub_i32(var_0.a.x, -59940i))), var_2.b);
    let var_4 = global0[_wgslsmith_index_u32(4294967295u, 13u)];
    var_0 = Struct_5(var_2.a << ((vec3<u32>(10532u, _wgslsmith_add_u32(var_4.d, var_4.d), ~var_4.d) & firstLeadingBit(vec3<u32>(var_4.d, 12744u, 49747u))) % vec3<u32>(32u)), -100f);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b, min(vec4<u32>(0u, func_1(), _wgslsmith_dot_vec2_u32(vec2<u32>(47420u, var_4.d) << (vec2<u32>(1u, var_4.d) % vec2<u32>(32u)), vec2<u32>(4294967295u, var_4.d) << (vec2<u32>(var_4.d, 1u) % vec2<u32>(32u))), ~(~4294967295u)), ~(~(~vec4<u32>(87807u, 13695u, var_4.d, 1u)))), reverseBits(var_4.d) ^ var_4.d, select(vec3<u32>(firstLeadingBit(var_4.d), (var_4.d | var_4.d) & ~var_4.d, var_4.d), vec3<u32>(40220u, _wgslsmith_dot_vec2_u32(vec2<u32>(23641u, 70338u), _wgslsmith_clamp_vec2_u32(vec2<u32>(17376u, var_4.d), vec2<u32>(74878u, 1u), vec2<u32>(9278u, 1u))), ~max(var_4.d, var_4.d)), var_4.a.zyy));
}

