struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: bool,
    d: vec3<i32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: f32,
    c: Struct_2,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: Struct_3,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 23> = array<bool, 23>(true, true, true, false, false, true, true, true, false, false, true, false, true, false, false, false, true, false, false, true, true, true, true);

var<private> global1: array<Struct_3, 8> = array<Struct_3, 8>(Struct_3(false, Struct_1(vec2<u32>(4095u, 4294967295u), vec4<u32>(62652u, 29378u, 0u, 0u), false, vec3<i32>(-1i, 10632i, 0i), 0u), Struct_1(vec2<u32>(4294967295u, 4145u), vec4<u32>(1u, 27440u, 25713u, 1u), false, vec3<i32>(52431i, 15052i, 28603i), 10689u), vec2<bool>(true, false)), Struct_3(true, Struct_1(vec2<u32>(4294967295u, 109912u), vec4<u32>(1u, 4294967295u, 4294967295u, 47426u), false, vec3<i32>(-28221i, 2147483647i, 2147483647i), 57378u), Struct_1(vec2<u32>(1u, 43657u), vec4<u32>(1u, 10847u, 4294967295u, 79619u), true, vec3<i32>(0i, 2147483647i, -15042i), 7812u), vec2<bool>(true, true)), Struct_3(false, Struct_1(vec2<u32>(4294967295u, 83164u), vec4<u32>(1u, 1u, 25246u, 1u), false, vec3<i32>(-35300i, 0i, 71549i), 54640u), Struct_1(vec2<u32>(89818u, 8016u), vec4<u32>(71840u, 4294967295u, 45081u, 4294967295u), false, vec3<i32>(-25020i, 18167i, 13567i), 58762u), vec2<bool>(true, false)), Struct_3(false, Struct_1(vec2<u32>(0u, 7320u), vec4<u32>(41456u, 4294967295u, 7218u, 4294967295u), true, vec3<i32>(-1i, 32221i, 63127i), 4294967295u), Struct_1(vec2<u32>(4882u, 88409u), vec4<u32>(59928u, 6175u, 4294967295u, 0u), false, vec3<i32>(20187i, -1i, 2147483647i), 4294967295u), vec2<bool>(true, false)), Struct_3(true, Struct_1(vec2<u32>(46330u, 82976u), vec4<u32>(51474u, 1u, 50623u, 39817u), false, vec3<i32>(-1i, 0i, 1i), 48379u), Struct_1(vec2<u32>(23050u, 30696u), vec4<u32>(58008u, 4294967295u, 38933u, 0u), false, vec3<i32>(-630i, 11486i, 2147483647i), 3330u), vec2<bool>(true, false)), Struct_3(true, Struct_1(vec2<u32>(52296u, 39605u), vec4<u32>(12737u, 12036u, 56811u, 57125u), true, vec3<i32>(2147483647i, 46079i, 35197i), 1u), Struct_1(vec2<u32>(4294967295u, 1u), vec4<u32>(1u, 20641u, 76254u, 85750u), true, vec3<i32>(-24768i, 1i, 12958i), 21824u), vec2<bool>(true, false)), Struct_3(false, Struct_1(vec2<u32>(0u, 0u), vec4<u32>(29938u, 21775u, 0u, 0u), true, vec3<i32>(12073i, 1i, 8714i), 52429u), Struct_1(vec2<u32>(4294967295u, 8895u), vec4<u32>(47523u, 0u, 1u, 4294967295u), true, vec3<i32>(i32(-2147483648), -17932i, 32900i), 4294967295u), vec2<bool>(false, false)), Struct_3(false, Struct_1(vec2<u32>(0u, 3283u), vec4<u32>(4294967295u, 6508u, 56617u, 1u), false, vec3<i32>(i32(-2147483648), -9150i, 25241i), 0u), Struct_1(vec2<u32>(1u, 0u), vec4<u32>(8180u, 73058u, 0u, 65899u), false, vec3<i32>(0i, 15226i, 9869i), 3009u), vec2<bool>(false, true)));

var<private> global2: array<bool, 18>;

var<private> global3: bool;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
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

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    var var_0 = Struct_1(_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(arg_1.b.zy, u_input.b) & u_input.b.x, ~abs(0u)), ~vec2<u32>(arg_1.a.x, 5795u)), _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(~1u, firstTrailingBit(u_input.b.x), max(1u, 86722u), u_input.b.x), arg_2.b), arg_1.b | _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.b.x, arg_1.e, arg_2.b.x), arg_2.b), _wgslsmith_clamp_vec4_u32(vec4<u32>(74228u, arg_2.b.x, 4294967295u, 12392u), arg_2.b, vec4<u32>(arg_2.b.x, 4294967295u, 4294967295u, 39880u)), _wgslsmith_div_vec4_u32(arg_1.b, vec4<u32>(0u, 25524u, arg_1.e, arg_1.e))), arg_1.b), arg_2.c, arg_2.d, 3674u);
    var var_1 = arg_1.d.zx;
    let var_2 = Struct_5(min(~(vec4<u32>(arg_2.b.x, 4294967295u, 9092u, 4294967295u) | vec4<u32>(11139u, u_input.b.x, 4294967295u, 26535u)), vec4<u32>(~var_0.b.x, _wgslsmith_add_u32(var_0.a.x, 18688u), 1u, _wgslsmith_mult_u32(u_input.b.x, var_0.a.x))) >> ((_wgslsmith_mod_vec4_u32(~arg_1.b, arg_1.b) & ~var_0.b) % vec4<u32>(32u)), ~(~(~(~var_0.a))), Struct_3(false, Struct_1(arg_2.b.zw, firstLeadingBit(firstLeadingBit(vec4<u32>(4294967295u, var_0.b.x, var_0.e, arg_2.b.x))), any(!vec4<bool>(false, arg_2.c, false, true)), abs(arg_1.d), select(~4294967295u, abs(var_0.b.x), true)), arg_2, vec2<bool>(true, global0[_wgslsmith_index_u32(~(~4294967295u), 23u)])), _wgslsmith_add_u32(_wgslsmith_div_u32(select(u_input.b.x, ~40953u, false), ~63031u), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(var_0.b.yxy, vec3<u32>(arg_1.b.x, 0u, arg_2.a.x)) << (_wgslsmith_div_u32(var_0.a.x, 26658u) % 32u), 3831u)), arg_1);
    var var_3 = -100f;
    var var_4 = global2[_wgslsmith_index_u32(max(var_0.a.x ^ arg_1.b.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_2.b.x, ~105230u, ~var_0.a.x), vec4<u32>(max(26166u, 18394u), _wgslsmith_clamp_u32(var_0.a.x, var_2.c.c.a.x, 1u), abs(1u), 4294967295u))), 18u)];
    return -_wgslsmith_div_i32(-_wgslsmith_mod_i32(var_2.e.d.x, 0i), -arg_0) << (min(countOneBits(var_0.e), 4125u) % 32u);
}

fn func_2(arg_0: vec3<bool>) -> bool {
    var var_0 = Struct_1(vec2<u32>(u_input.b.x, ~_wgslsmith_add_u32(u_input.b.x, 2932u)) << (abs(vec2<u32>(_wgslsmith_div_u32(u_input.b.x, u_input.b.x), u_input.b.x)) % vec2<u32>(32u)), vec4<u32>(~_wgslsmith_div_u32(57486u ^ u_input.b.x, ~u_input.b.x), reverseBits(select(u_input.b.x, u_input.b.x, !global2[_wgslsmith_index_u32(u_input.b.x, 18u)])), 4294967295u, 28426u), false, u_input.a, ~1u);
    var var_1 = !vec4<bool>(all(arg_0), global0[_wgslsmith_index_u32(42261u, 23u)], (max(u_input.a.x, 23355i) << (1u % 32u)) > ~_wgslsmith_sub_i32(u_input.a.x, var_0.d.x), false);
    let var_2 = _wgslsmith_mod_i32(_wgslsmith_sub_i32(-u_input.a.x, _wgslsmith_div_i32(0i, u_input.a.x)), ~(i32(-1i) * -func_3(13897i, Struct_1(vec2<u32>(u_input.b.x, 31590u), vec4<u32>(4294967295u, 1u, var_0.a.x, 3604u), arg_0.x, u_input.a, 4294967295u), Struct_1(vec2<u32>(u_input.b.x, 45395u), var_0.b, arg_0.x, vec3<i32>(-7721i, -2607i, var_0.d.x), u_input.b.x))));
    let var_3 = Struct_2(Struct_1(u_input.b, ~(var_0.b & var_0.b) | vec4<u32>(firstLeadingBit(u_input.b.x), 0u >> (u_input.b.x % 32u), abs(u_input.b.x), u_input.b.x), global0[_wgslsmith_index_u32(~var_0.b.x | (~1u | u_input.b.x), 23u)], select(vec3<i32>(1i, func_3(var_2, Struct_1(vec2<u32>(u_input.b.x, u_input.b.x), var_0.b, true, vec3<i32>(var_0.d.x, 58098i, -49848i), u_input.b.x), Struct_1(vec2<u32>(4294967295u, var_0.a.x), var_0.b, false, u_input.a, 0u)), ~0i), var_0.d, !select(arg_0, vec3<bool>(var_1.x, global0[_wgslsmith_index_u32(var_0.e, 23u)], arg_0.x), var_1.zwz)), _wgslsmith_mult_u32(u_input.b.x, 4294967295u)));
    let var_4 = global1[_wgslsmith_index_u32(~u_input.b.x, 8u)];
    return false || global0[_wgslsmith_index_u32(var_4.b.a.x, 23u)];
}

fn func_1() -> f32 {
    global2 = array<bool, 18>();
    var var_0 = !vec4<bool>(all(vec3<bool>(true, select(true, global0[_wgslsmith_index_u32(u_input.b.x, 23u)], global0[_wgslsmith_index_u32(8686u, 23u)]), all(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 23u)], global2[_wgslsmith_index_u32(74918u, 18u)], global0[_wgslsmith_index_u32(15631u, 23u)])))), global0[_wgslsmith_index_u32(4294967295u, 23u)], ~_wgslsmith_sub_u32(u_input.b.x, u_input.b.x) > countOneBits(0u), func_2(!select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 23u)], global0[_wgslsmith_index_u32(u_input.b.x, 23u)], global0[_wgslsmith_index_u32(u_input.b.x, 23u)]), vec3<bool>(true, true, global2[_wgslsmith_index_u32(22457u, 18u)]), vec3<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 18u)], true, true))));
    let var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1069f, 774f)))), vec2<f32>(559f, -711f), !select(any(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 23u)], global2[_wgslsmith_index_u32(u_input.b.x, 18u)], false, false)), true, global0[_wgslsmith_index_u32(u_input.b.x, 23u)] || var_0.x))), 1000f, Struct_2(Struct_1(u_input.b, ~select(vec4<u32>(14980u, u_input.b.x, 32635u, u_input.b.x), vec4<u32>(u_input.b.x, 15550u, 4294967295u, 4294967295u), true), !(u_input.a.x < u_input.a.x), -(~vec3<i32>(2147483647i, 1i, -15547i)), 1u)));
    var var_2 = _wgslsmith_mult_vec3_i32(vec3<i32>(-67576i, var_1.c.a.d.x, var_1.c.a.d.x), vec3<i32>(~min(var_1.c.a.d.x, 5387i) ^ ~19389i, 5229i, firstTrailingBit(-11306i)));
    global0 = array<bool, 23>();
    return _wgslsmith_f_op_f32(select(var_1.b, -125f, var_0.x));
}

fn func_4(arg_0: Struct_4, arg_1: bool) -> Struct_2 {
    global2 = array<bool, 18>();
    var var_0 = 4294967295u;
    global2 = array<bool, 18>();
    let var_1 = 0u ^ _wgslsmith_add_u32(_wgslsmith_mult_u32(~arg_0.c.a.b.x, arg_0.c.a.e) ^ ~u_input.b.x, ~4294967295u ^ u_input.b.x);
    let var_2 = Struct_5(~vec4<u32>(~abs(26652u), 4294967295u, u_input.b.x, min(~45201u, 4294967295u ^ var_1)), ~vec2<u32>(~(~61782u), var_1 << (_wgslsmith_div_u32(u_input.b.x, 0u) % 32u)), Struct_3(true, arg_0.c.a, Struct_1(arg_0.c.a.b.yz, vec4<u32>(u_input.b.x, ~arg_0.c.a.e, _wgslsmith_mult_u32(1u, arg_0.c.a.b.x), firstTrailingBit(17276u)), true, abs(arg_0.c.a.d), 14243u & min(4294967295u, arg_0.c.a.e)), vec2<bool>(true, all(select(vec4<bool>(arg_0.c.a.c, false, arg_0.c.a.c, global0[_wgslsmith_index_u32(var_1, 23u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 23u)], arg_1, global2[_wgslsmith_index_u32(4294967295u, 18u)], global0[_wgslsmith_index_u32(12025u, 23u)]), vec4<bool>(global2[_wgslsmith_index_u32(var_1, 18u)], false, true, false))))), _wgslsmith_mult_u32(~0u, 1u), Struct_1(vec2<u32>(u_input.b.x << (var_1 % 32u), ~1u), _wgslsmith_mult_vec4_u32(arg_0.c.a.b, abs(_wgslsmith_div_vec4_u32(arg_0.c.a.b, vec4<u32>(1u, u_input.b.x, 4294967295u, var_1)))), false, -vec3<i32>(41670i, reverseBits(2147483647i), 48507i), ~35392u));
    return Struct_2(Struct_1(~_wgslsmith_mult_vec2_u32(~vec2<u32>(arg_0.c.a.a.x, 0u), ~vec2<u32>(1u, 6080u)), select(arg_0.c.a.b, firstTrailingBit(arg_0.c.a.b), vec4<bool>(true, false, all(vec3<bool>(arg_1, global2[_wgslsmith_index_u32(0u, 18u)], true)), false || var_2.c.a)), all(vec3<bool>(true, global2[_wgslsmith_index_u32(1u, 18u)], arg_0.c.a.c)) || (func_2(vec3<bool>(true, true, var_2.e.c)) || (arg_1 != global0[_wgslsmith_index_u32(20953u, 23u)])), (var_2.c.b.d >> (arg_0.c.a.b.xzy % vec3<u32>(32u))) << (arg_0.c.a.b.xyw % vec3<u32>(32u)), 31598u << (~(~var_2.c.b.a.x) % 32u)));
}

fn func_5(arg_0: bool, arg_1: i32, arg_2: Struct_2) -> vec2<f32> {
    let var_0 = false;
    global0 = array<bool, 23>();
    var var_1 = arg_2.a;
    var var_2 = global1[_wgslsmith_index_u32(arg_2.a.b.x, 8u)];
    global0 = array<bool, 23>();
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(319f, 2008f) - vec2<f32>(1045f, 303f)))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(658f, -1075f))), -337f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) * -266f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -461f) + 1977f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(576f, _wgslsmith_f_op_f32(round(-752f))) * vec2<f32>(_wgslsmith_f_op_f32(148f - 1000f), _wgslsmith_f_op_f32(f32(-1f) * -442f))))), any(select(vec4<bool>(!var_0, !global2[_wgslsmith_index_u32(0u, 18u)], true, global2[_wgslsmith_index_u32(0u & arg_2.a.a.x, 18u)]), vec4<bool>(true, true || var_0, arg_2.a.c, true), vec4<bool>(all(var_2.d), arg_2.a.b.x > 46618u, select(true, true, var_1.c), 50655i == var_1.d.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 18>();
    let var_0 = -u_input.a.x >> (51335u % 32u);
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -710f), _wgslsmith_f_op_f32(f32(-1f) * -954f)) + _wgslsmith_f_op_vec2_f32(func_5(true, abs(abs(u_input.a.x ^ var_0)), func_4(Struct_4(vec2<f32>(-779f, 981f), _wgslsmith_f_op_f32(func_1()), Struct_2(Struct_1(u_input.b, vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.b.x), false, vec3<i32>(-806i, 1i, var_0), 1u))), true))));
    global3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1()))) != 1645f;
    var var_2 = Struct_5(reverseBits(~vec4<u32>(4294967295u, ~u_input.b.x, u_input.b.x, 10265u)), vec2<u32>(1u, reverseBits(~(u_input.b.x >> (0u % 32u)))), global1[_wgslsmith_index_u32(func_4(Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(719f, var_1.x)), _wgslsmith_f_op_f32(-var_1.x), Struct_2(func_4(Struct_4(var_1, var_1.x, Struct_2(Struct_1(u_input.b, vec4<u32>(1u, 9075u, 4294967295u, 0u), true, vec3<i32>(u_input.a.x, u_input.a.x, var_0), 1u))), false).a)), global2[_wgslsmith_index_u32(countOneBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(105265u, u_input.b.x, 64214u), vec3<u32>(0u, 13796u, u_input.b.x))), 18u)]).a.e, 8u)], min(firstLeadingBit(u_input.b.x | select(u_input.b.x, 60256u, global0[_wgslsmith_index_u32(u_input.b.x, 23u)])), firstTrailingBit(countOneBits(u_input.b.x))), func_4(Struct_4(var_1, _wgslsmith_f_op_f32(1f - -2187f), Struct_2(Struct_1(vec2<u32>(u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, 4294967295u, 68548u, 0u), global2[_wgslsmith_index_u32(0u, 18u)], vec3<i32>(36771i, var_0, 3093i), u_input.b.x))), all(!(!vec4<bool>(global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(0u, 23u)], false, global0[_wgslsmith_index_u32(u_input.b.x, 23u)])))).a);
    global3 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~max(u_input.b.x, 1u), 80550u) ^ select(u_input.b.x, reverseBits(_wgslsmith_dot_vec3_u32(var_2.c.b.b.zwx, func_4(Struct_4(var_1, var_1.x, Struct_2(var_2.c.b)), var_2.c.a).a.b.zww)), select(false, any(vec3<bool>(true, true, true)), false)), 18u)];
    global0 = array<bool, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(602f * var_1.x), 793f, select(any(vec4<bool>(global0[_wgslsmith_index_u32(var_2.a.x, 23u)], var_2.c.a, true, false)), true, true))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-540f))))), vec4<i32>(var_2.e.d.x, ~u_input.a.x, var_2.c.b.d.x, 2147483647i), vec3<i32>(~countOneBits(0i), 10273i | u_input.a.x, 14326i));
}

