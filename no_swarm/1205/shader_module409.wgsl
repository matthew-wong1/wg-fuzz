struct Struct_1 {
    a: f32,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_2,
    d: f32,
    e: vec4<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<i32>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 5> = array<vec4<f32>, 5>(vec4<f32>(-1000f, -184f, -898f, 346f), vec4<f32>(333f, -912f, -901f, -153f), vec4<f32>(-588f, -152f, -386f, 442f), vec4<f32>(-558f, -2178f, -785f, -1193f), vec4<f32>(-473f, 966f, 919f, 460f));

var<private> global1: array<vec2<bool>, 8>;

var<private> global2: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(-117f, 0u, 40978u), Struct_1(968f, 0u, 7105u), Struct_1(-311f, 4294967295u, 3465u), Struct_1(159f, 3426u, 4294967295u), Struct_1(-1860f, 4294967295u, 1u), Struct_1(-136f, 40358u, 0u), Struct_1(-598f, 79443u, 8215u));

var<private> global3: array<Struct_2, 32>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_5, arg_1: f32, arg_2: vec4<f32>) -> f32 {
    global3 = array<Struct_2, 32>();
    let var_0 = Struct_2(global2[_wgslsmith_index_u32(u_input.a.x, 7u)], Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -379f) + 594f), _wgslsmith_clamp_u32(firstLeadingBit(countOneBits(3337u)), arg_0.a.x, 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(reverseBits(102584u), 1u), vec2<u32>(0u, reverseBits(4294967295u)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-417f, -570f, true))), _wgslsmith_mod_u32(~(~4102u), 11009u), arg_0.a.x), Struct_1(arg_2.x, 1u, _wgslsmith_mod_u32(0u, min(abs(9228u), ~u_input.a.x))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(36719u, 5u)] * arg_2) - _wgslsmith_f_op_vec4_f32(arg_2 - arg_2))), global0[_wgslsmith_index_u32(32371u, 5u)]));
    var var_2 = !any(!global1[_wgslsmith_index_u32(42299u, 8u)]);
    var var_3 = -reverseBits(i32(-1i) * -9498i);
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - var_0.a.a) - _wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.x)) - var_1.x)))));
}

fn func_2() -> u32 {
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_5(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), Struct_3(Struct_1(1000f, u_input.a.x, 0u), vec4<bool>(false, false, false, true), Struct_2(Struct_1(3787f, 0u, 84356u), global2[_wgslsmith_index_u32(u_input.a.x, 7u)], global2[_wgslsmith_index_u32(u_input.a.x, 7u)], Struct_1(-936f, 42119u, 37578u)), 223f, vec4<bool>(true, true, true, false))), -1231f, global0[_wgslsmith_index_u32(0u, 5u)])), _wgslsmith_f_op_f32(832f - 575f)), -1690f)), _wgslsmith_dot_vec4_u32(max(~vec4<u32>(2561u, 35947u, 4428u, u_input.a.x), ~vec4<u32>(u_input.a.x, 59092u, u_input.a.x, u_input.a.x)), select(countOneBits(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 4294967295u)), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u) & vec4<u32>(u_input.a.x, 70387u, 88479u, u_input.a.x), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), false))), ~1u), select(vec4<bool>(true, true, true, true), !select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), true)))), Struct_2(global2[_wgslsmith_index_u32(1u, 7u)], Struct_1(-182f, 31375u, ~1u), global2[_wgslsmith_index_u32(u_input.a.x, 7u)], global2[_wgslsmith_index_u32(abs(_wgslsmith_mult_u32(_wgslsmith_div_u32(9537u, u_input.a.x), u_input.a.x)), 7u)]), -353f, !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false)), true));
    let var_1 = !global1[_wgslsmith_index_u32(~(~(~(0u << (u_input.a.x % 32u)))), 8u)];
    var var_2 = Struct_3(var_0.a, !vec4<bool>(!var_1.x, all(select(vec3<bool>(var_1.x, var_0.b.x, true), var_0.e.yzx, var_0.e.zwz)), var_0.b.x, all(select(vec4<bool>(var_1.x, false, var_1.x, var_0.e.x), var_0.b, var_0.e.x))), Struct_2(var_0.c.a, Struct_1(_wgslsmith_f_op_f32(trunc(578f)), _wgslsmith_mult_u32(~4294967295u, countOneBits(u_input.a.x)), abs(_wgslsmith_mod_u32(u_input.a.x, var_0.c.c.b))), Struct_1(-1000f, 1u, min(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 0u, 4294967295u, 0u), vec4<u32>(var_0.a.c, u_input.a.x, 64519u, 15717u)))), Struct_1(-2464f, 1u >> (1u % 32u), 10185u)), -1205f, var_0.b);
    var var_3 = -2147483647i ^ ~select(_wgslsmith_mult_i32(1i, 0i), -countOneBits(1i), false);
    global3 = array<Struct_2, 32>();
    return firstLeadingBit(~var_0.c.c.b);
}

fn func_1(arg_0: bool, arg_1: vec3<bool>) -> f32 {
    let var_0 = Struct_5(_wgslsmith_clamp_vec4_u32(~vec4<u32>(~29100u, ~u_input.a.x, ~u_input.a.x, func_2()), ~_wgslsmith_div_vec4_u32(vec4<u32>(0u, 563u, u_input.a.x, 0u), vec4<u32>(u_input.a.x, 32850u, u_input.a.x, u_input.a.x)), countOneBits(vec4<u32>(42989u, u_input.a.x, 0u, u_input.a.x) >> (vec4<u32>(u_input.a.x, u_input.a.x, 1u, 4294967295u) % vec4<u32>(32u))) << (abs(vec4<u32>(u_input.a.x, 48146u, 5175u, 44206u)) % vec4<u32>(32u))), Struct_3(Struct_1(-680f, _wgslsmith_dot_vec3_u32(vec3<u32>(80309u, u_input.a.x, 52955u) & vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_mult_vec3_u32(vec3<u32>(7566u, 1u, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 36770u))), _wgslsmith_add_u32(u_input.a.x, 18432u)), vec4<bool>(false == (arg_0 | true), true, !all(vec4<bool>(true, true, false, arg_0)), true), global3[_wgslsmith_index_u32(firstTrailingBit(45141u), 32u)], -1596f, select(vec4<bool>(all(arg_1), arg_0 || arg_0, false, all(vec4<bool>(true, arg_1.x, true, true))), vec4<bool>(true, true, true, false && arg_0), any(vec3<bool>(arg_0, arg_1.x, arg_1.x)))));
    var var_1 = _wgslsmith_mult_vec3_i32(~(-(~vec3<i32>(40193i, 28709i, -2147483647i))), max(vec3<i32>(1i, _wgslsmith_mod_i32(-28436i, -24i), 2147483647i), _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, 30092i, 0i), vec3<i32>(-1i, 1i, 2322i)) >> ((vec3<u32>(u_input.a.x, 4294967295u, var_0.b.a.c) | var_0.a.yzw) % vec3<u32>(32u)))) ^ (vec3<i32>(1i, 1i, 1i) >> (((var_0.a.yzx << ((vec3<u32>(0u, u_input.a.x, 4294967295u) << (vec3<u32>(u_input.a.x, 31495u, u_input.a.x) % vec3<u32>(32u))) % vec3<u32>(32u))) & select(_wgslsmith_mod_vec3_u32(var_0.a.wwx, var_0.a.yzw), select(var_0.a.wyz, vec3<u32>(var_0.a.x, var_0.b.c.b.b, var_0.b.c.a.c), vec3<bool>(arg_1.x, false, false)), arg_1)) % vec3<u32>(32u)));
    global3 = array<Struct_2, 32>();
    global1 = array<vec2<bool>, 8>();
    let var_2 = u_input.a;
    return _wgslsmith_f_op_f32(func_3(Struct_5(var_0.a, Struct_3(Struct_1(_wgslsmith_f_op_f32(sign(832f)), u_input.a.x, ~53821u), !var_0.b.b, Struct_2(global2[_wgslsmith_index_u32(select(var_0.b.a.c, var_0.b.a.b, var_0.b.b.x), 7u)], Struct_1(var_0.b.a.a, u_input.a.x, u_input.a.x), global2[_wgslsmith_index_u32(0u, 7u)], var_0.b.c.b), _wgslsmith_f_op_f32(-var_0.b.a.a), vec4<bool>(arg_0, arg_1.x, true, select(false, arg_0, arg_0)))), _wgslsmith_f_op_f32(-var_0.b.a.a), _wgslsmith_div_vec4_f32(global0[_wgslsmith_index_u32(4294967295u, 5u)], _wgslsmith_f_op_vec4_f32(round(global0[_wgslsmith_index_u32(firstLeadingBit(1u), 5u)])))));
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: Struct_4) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.a.a + -555f), 346f, any(vec4<bool>(arg_0.e.x, arg_1, false, true)))))));
    var var_1 = vec2<i32>(arg_2.b.x << (arg_2.a.b.b % 32u), 2147483647i);
    var var_2 = Struct_5(vec4<u32>(arg_0.a.c, _wgslsmith_dot_vec2_u32(u_input.a, ~u_input.a & abs(vec2<u32>(0u, arg_2.a.b.c))), ~arg_0.a.c, _wgslsmith_mult_u32(firstLeadingBit(1u), _wgslsmith_div_u32(4294967295u, 13394u)) | ~(arg_0.a.c & arg_0.c.a.c)), arg_0);
    var_1 = vec2<i32>(_wgslsmith_add_i32(-16757i, min(firstLeadingBit(var_1.x), var_1.x)) << (_wgslsmith_sub_u32(u_input.a.x, ~1u) % 32u), -arg_2.b.x ^ max(~1i, i32(-1i) * -3848i));
    let var_3 = arg_0.e.x;
    return arg_0.c;
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: bool) -> StorageBuffer {
    let var_0 = Struct_4(arg_1, arg_2.xz);
    global3 = array<Struct_2, 32>();
    var var_1 = var_0.a.a;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(abs(1000f)), u_input.a.x, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(1u, 0u, arg_1.c.b, 42496u)) << (~vec4<u32>(var_0.a.d.b, 0u, 65720u, 27838u) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, var_1.c, 14824u, 4294967295u), vec4<u32>(92309u, var_1.c, arg_1.c.c, 4294967295u)), 53887u << (1u % 32u), _wgslsmith_add_u32(0u, 0u), 13553u)), max(abs(vec4<u32>(arg_1.d.b, arg_0, var_1.c, 4294967295u) | vec4<u32>(0u, var_1.c, var_0.a.d.c, var_0.a.a.c)), ~(~vec4<u32>(4294967295u, 34948u, 0u, arg_0)))));
    var var_3 = select(global1[_wgslsmith_index_u32(~18069u, 8u)], global1[_wgslsmith_index_u32(~26497u, 8u)], vec2<bool>(!any(vec3<bool>(false, true, arg_3)), false));
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-317f - 2106f), _wgslsmith_f_op_f32(f32(-1f) * -962f)) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a.a, 782f) - vec2<f32>(var_2.a, -405f)))))), -abs(firstTrailingBit(vec4<i32>(0i, arg_2.x, var_0.b.x, arg_2.x))), _wgslsmith_mult_vec4_u32(~vec4<u32>(~1u, ~4294967295u, 15628u, firstTrailingBit(var_0.a.c.c)), _wgslsmith_sub_vec4_u32(vec4<u32>(64394u, u_input.a.x, _wgslsmith_sub_u32(26117u, var_1.c), var_0.a.b.c | var_1.c), ~select(vec4<u32>(101095u, 0u, arg_0, var_2.b), vec4<u32>(u_input.a.x, u_input.a.x, arg_1.d.c, 1u), var_3.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 7>();
    global1 = array<vec2<bool>, 8>();
    var var_0 = ~(~_wgslsmith_div_vec3_u32(vec3<u32>(9316u, u_input.a.x, u_input.a.x), vec3<u32>(1u, u_input.a.x, 53527u))) ^ ~_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(611u, u_input.a.x, u_input.a.x) ^ vec3<u32>(u_input.a.x, 17869u, 11512u), min(vec3<u32>(0u, 1680u, u_input.a.x), vec3<u32>(56172u, u_input.a.x, u_input.a.x))), vec3<u32>(u_input.a.x, firstTrailingBit(0u), 5904u));
    let var_1 = u_input.a.x;
    global3 = array<Struct_2, 32>();
    global1 = array<vec2<bool>, 8>();
    var var_2 = Struct_1(-1000f, var_1, ~(~4294967295u));
    let var_3 = global2[_wgslsmith_index_u32(~(~4294967295u), 7u)];
    let var_4 = ~countOneBits(vec3<i32>(-1i, select(-85099i, 2147483647i, true), firstLeadingBit(-2147483647i))) & ~min(-select(vec3<i32>(-826i, -2147483647i, 16044i), vec3<i32>(-9718i, 1i, -39264i), vec3<bool>(false, true, false)), vec3<i32>(1i, 1i, 1i));
    let x = u_input.a;
    s_output = func_5(u_input.a.x, func_4(Struct_3(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~var_2.c, 19808u), 7u)], vec4<bool>(true, true, true, true), Struct_2(Struct_1(486f, 25312u, var_1), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.x, 17327u), 7u)], global2[_wgslsmith_index_u32(0u, 7u)], Struct_1(-1198f, var_0.x, var_3.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(true, vec3<bool>(false, false, true)))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false))), var_3.a != _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-618f * 1339f))), Struct_4(Struct_2(Struct_1(var_3.a, 31836u, var_1), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_3.b, var_2.b), 7u)], global2[_wgslsmith_index_u32(_wgslsmith_div_u32(var_2.c, 4294967295u), 7u)], Struct_1(var_2.a, var_0.x, u_input.a.x)), min(min(vec2<i32>(var_4.x, var_4.x), vec2<i32>(var_4.x, var_4.x)), countOneBits(var_4.yy)))), min(var_4, -_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, -10250i, var_4.x), -vec3<i32>(-21394i, -1i, -1i), ~vec3<i32>(-21034i, 2147483647i, -2147483647i))), !any(!select(vec2<bool>(true, true), global1[_wgslsmith_index_u32(27602u, 8u)], global1[_wgslsmith_index_u32(var_1, 8u)])));
}

