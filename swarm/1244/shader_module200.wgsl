struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
    d: bool,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec2<f32>,
    d: bool,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: bool,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 12> = array<u32, 12>(1322u, 76593u, 3041u, 55221u, 12955u, 12492u, 8499u, 12302u, 1u, 1u, 6014u, 11525u);

var<private> global1: vec3<u32>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec3<bool> {
    global1 = select(~vec3<u32>(4294967295u, firstTrailingBit(global1.x & 21448u), max(_wgslsmith_add_u32(global1.x, global1.x), select(62916u, global1.x, true))), reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(~u_input.a, _wgslsmith_clamp_u32(u_input.a, u_input.a, 0u), _wgslsmith_dot_vec2_u32(global1.zy, vec2<u32>(24701u, 0u))), abs(~vec3<u32>(u_input.a, 1u, 1u)))), !(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global1.x), ~vec2<u32>(9270u, u_input.a)) != global1.x));
    global1 = vec3<u32>(79222u, ~(max(41417u, _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 12u)], 12u)], 12u)], u_input.a, u_input.a)) >> ((global1.x ^ u_input.a) % 32u)), _wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(1u, 12u)], 11293u), ~_wgslsmith_div_vec2_u32(global1.zz, firstLeadingBit(vec2<u32>(85282u, 23168u)))));
    var var_0 = abs(1u);
    var_0 = global0[_wgslsmith_index_u32(13299u, 12u)];
    var var_1 = min(countOneBits(~_wgslsmith_mult_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(19897i, 0i, -20007i))), _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(reverseBits(vec3<i32>(-7918i, 0i, 0i)), vec3<i32>(1i, 35080i, 41612i) >> (vec3<u32>(0u, u_input.a, global1.x) % vec3<u32>(32u))), vec3<i32>(-1i) * -vec3<i32>(-1i, 8780i, 1i)), firstLeadingBit(~vec3<i32>(-55978i, 2147483647i, -54821i))));
    return vec3<bool>(any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), all(vec3<bool>(false, false, false)))) && true, select(!select(true, false, true) && all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false)), select(true, false, true) | select(true, true, true), all(vec2<bool>(true, true))), all(!vec3<bool>(select(true, true, false), true, true)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_4) -> Struct_2 {
    var var_0 = 0u;
    return Struct_2(countOneBits(select(vec3<u32>(arg_0.b >> (1u % 32u), ~22036u, _wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global1.x, 12u)], 42621u, global1.x, 74108u), vec4<u32>(4294967295u, 4294967295u, global0[_wgslsmith_index_u32(arg_1.d.a.x, 12u)], arg_1.d.a.x))), vec3<u32>(global1.x, u_input.a | arg_1.d.b.x, 9229u), func_3())), select(arg_1.d.b, ~arg_1.d.b, select(select(select(vec3<bool>(arg_0.a, arg_0.a, arg_0.a), vec3<bool>(arg_1.d.d, true, arg_1.c), arg_1.d.d), vec3<bool>(true, false, arg_0.a), select(vec3<bool>(false, arg_1.d.d, arg_0.a), vec3<bool>(false, arg_1.d.d, true), vec3<bool>(arg_0.a, arg_0.a, arg_0.a))), !func_3(), !(!vec3<bool>(arg_0.a, arg_0.a, true)))), arg_0.c.x, all(!select(!vec4<bool>(true, arg_0.a, arg_1.d.d, arg_1.c), !vec4<bool>(false, arg_1.d.d, true, arg_0.a), select(true, false, false))));
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-756f + -845f)), -1i, false, arg_0);
    let var_1 = var_0.d;
    global1 = arg_0.b;
    global0 = array<u32, 12>();
    var var_2 = Struct_3(-1i, Struct_1(!(0i >= arg_0.c), 0u, _wgslsmith_sub_vec3_i32(max(vec3<i32>(-1i, var_1.c, arg_0.c) >> (vec3<u32>(1u, var_0.d.b.x, u_input.a) % vec3<u32>(32u)), ~vec3<i32>(var_1.c, var_1.c, 969i)), vec3<i32>(abs(arg_0.c), countOneBits(6986i), -arg_0.c))), vec2<f32>(_wgslsmith_f_op_f32(ceil(var_0.a)), var_0.a), false);
    return Struct_2(_wgslsmith_add_vec3_u32(vec3<u32>(firstLeadingBit(1u), countOneBits(~global1.x), ~var_0.d.b.x), vec3<u32>(42718u, ~arg_0.b.x, 1u)), arg_0.b, _wgslsmith_dot_vec2_i32(-(~_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0.c, 7978i), var_2.b.c.yx, vec2<i32>(-5761i, 1i))), var_2.b.c.xz), ~(~firstLeadingBit(-20103i)) > -_wgslsmith_mod_i32(max(-2147483647i, 2147483647i), _wgslsmith_div_i32(var_1.c, var_0.b)));
}

fn func_1(arg_0: u32, arg_1: vec3<i32>) -> f32 {
    var var_0 = ~global1.xx;
    let var_1 = func_4(func_2(Struct_1(!(2147483647i == arg_1.x), 0u, arg_1), Struct_4(358f, -arg_1.x, true, Struct_2(vec3<u32>(32185u, u_input.a, 1u) >> (vec3<u32>(14559u, 4294967295u, arg_0) % vec3<u32>(32u)), vec3<u32>(0u, 8311u, arg_0) ^ vec3<u32>(36005u, 96999u, global1.x), reverseBits(arg_1.x), 0i == arg_1.x))));
    var var_2 = var_0.x;
    var var_3 = _wgslsmith_f_op_f32(sign(-302f));
    var_0 = select((_wgslsmith_mod_vec2_u32(reverseBits(vec2<u32>(4294967295u, global1.x)), ~global1.zx) << (vec2<u32>(func_4(var_1).b.x, 4294967295u) % vec2<u32>(32u))) | vec2<u32>(58953u, _wgslsmith_mod_u32(max(var_1.a.x, 4564u), _wgslsmith_dot_vec3_u32(var_1.a, var_1.a))), global1.yy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1970f), -732f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-308f * 415f), _wgslsmith_f_op_f32(min(1000f, 176f)))) >= -435f);
    return _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2288f + 904f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1175f * 1697f))) + _wgslsmith_f_op_f32(f32(-1f) * -1328f))), -411f, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(652f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(4294967295u, vec3<i32>(~1i, -21421i, _wgslsmith_add_i32(-958i, -30228i))))));
    let var_1 = false;
    global1 = ~(~vec3<u32>(~u_input.a, _wgslsmith_sub_u32(u_input.a, 70663u) & _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(7654u, 12u)], 18904u), select(27631u, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, global0[_wgslsmith_index_u32(14110u, 12u)], 25911u, global0[_wgslsmith_index_u32(22941u, 12u)]), vec4<u32>(global0[_wgslsmith_index_u32(7732u, 12u)], 0u, u_input.a, 6944u)), 12u)], false)));
    var var_2 = Struct_3(abs(1i), Struct_1(func_3().x, global1.x, vec3<i32>(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(-2147483647i, 2147483647i, -12606i, 14353i)), vec4<i32>(0i, 0i, -9202i, -2147483647i) >> (vec4<u32>(10697u, global1.x, global1.x, global1.x) % vec4<u32>(32u))), 44i, -1i)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(940f)), -1478f, func_4(Struct_2(vec3<u32>(0u, 28157u, 4294967295u), vec3<u32>(68121u, global0[_wgslsmith_index_u32(38882u, 12u)], u_input.a), 2147483647i, false)).d))), _wgslsmith_f_op_f32(f32(-1f) * -194f)), !(!(!func_2(Struct_1(var_1, 1u, vec3<i32>(28000i, 23536i, 2147483647i)), Struct_4(-989f, -3052i, false, Struct_2(vec3<u32>(4294967295u, u_input.a, 93287u), vec3<u32>(global0[_wgslsmith_index_u32(47929u, 12u)], 98411u, u_input.a), -17228i, true))).d)));
    let var_3 = Struct_1(var_2.c.x <= _wgslsmith_div_f32(var_2.c.x, var_2.c.x), 69434u, vec3<i32>(var_2.a << (55462u % 32u), (i32(-1i) * -27267i) ^ var_2.b.c.x, max(_wgslsmith_sub_i32(var_2.a, var_2.a), -(9037i | var_2.b.c.x))));
    var_2 = Struct_3(var_2.a, var_3, vec2<f32>(_wgslsmith_f_op_f32(517f - _wgslsmith_f_op_f32(-var_2.c.x)), _wgslsmith_f_op_f32(max(820f, _wgslsmith_f_op_f32(var_2.c.x * _wgslsmith_f_op_f32(f32(-1f) * -778f))))), func_3().x);
    var var_4 = Struct_4(var_2.c.x, -var_2.b.c.x, select(!var_3.a, var_2.b.a, func_4(Struct_2(vec3<u32>(global1.x, 4294967295u, var_3.b), vec3<u32>(global0[_wgslsmith_index_u32(var_2.b.b, 12u)], var_2.b.b, global0[_wgslsmith_index_u32(43158u, 12u)]), -83747i, true)).d && any(vec4<bool>(var_1, var_3.a, true, true))), Struct_2(vec3<u32>(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(var_3.b, 12u)], global1.x), firstTrailingBit(0u), var_2.b.b), reverseBits(vec3<u32>(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(var_3.b, 12u)], 0u), var_2.b.b, 21077u)), -130i, false));
    var_2 = Struct_3(_wgslsmith_clamp_i32(var_4.b, var_2.b.c.x, reverseBits((var_4.d.c ^ var_3.c.x) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, var_3.c.x), var_3.c.zy))), var_2.b, _wgslsmith_f_op_vec2_f32(-var_2.c), _wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.a, 36228u, var_2.b.b) | u_input.a, global0[_wgslsmith_index_u32(global1.x, 12u)]) != (min(countOneBits(0u), firstLeadingBit(2768u)) & u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(~(max(_wgslsmith_add_i32(-1i, var_3.c.x), var_2.a) ^ var_2.b.c.x), vec2<u32>(global1.x, var_4.d.a.x));
}

