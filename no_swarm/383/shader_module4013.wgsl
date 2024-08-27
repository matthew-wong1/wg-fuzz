struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: bool,
    d: bool,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: bool,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: f32,
    c: Struct_1,
    d: Struct_3,
}

struct Struct_5 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 30>;

var<private> global1: f32;

var<private> global2: array<Struct_3, 2>;

var<private> global3: array<vec2<u32>, 19> = array<vec2<u32>, 19>(vec2<u32>(4294967295u, 31601u), vec2<u32>(4294967295u, 13796u), vec2<u32>(43787u, 50766u), vec2<u32>(55877u, 122312u), vec2<u32>(1u, 5280u), vec2<u32>(4294967295u, 3056u), vec2<u32>(24637u, 5087u), vec2<u32>(59242u, 0u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 64973u), vec2<u32>(0u, 63027u), vec2<u32>(26642u, 13837u), vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 4294967295u), vec2<u32>(33733u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(26826u, 4294967295u), vec2<u32>(73573u, 48349u));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: f32) -> vec4<i32> {
    var var_0 = !vec4<bool>(false, any(vec4<bool>(all(vec3<bool>(arg_0.c.c, true, false)), false && arg_0.c.d, arg_0.c.d, all(vec4<bool>(true, arg_0.c.c, arg_0.c.d, arg_0.c.d)))), (arg_0.c.b.x == 11415i) & (arg_0.c.c || (false & arg_0.c.c)), select(all(!vec2<bool>(arg_0.c.c, false)), any(select(vec2<bool>(arg_0.c.d, arg_0.c.d), vec2<bool>(false, arg_0.c.c), false)), !(arg_0.c.c && arg_0.c.c)));
    let var_1 = !arg_0.c.c;
    global3 = array<vec2<u32>, 19>();
    global0 = array<u32, 30>();
    return arg_0.c.b >> (arg_0.c.e % vec4<u32>(32u));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<bool>, arg_2: vec3<i32>) -> Struct_4 {
    global1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-1512f))))));
    let var_0 = _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(1u, 1u), ~u_input.b.x, _wgslsmith_mod_u32(3145u, global0[_wgslsmith_index_u32(0u, 30u)]), ~u_input.a.x) >> (~(~vec4<u32>(4294967295u, 4294967295u, 0u, u_input.a.x)) % vec4<u32>(32u)), u_input.b), u_input.b);
    global0 = array<u32, 30>();
    return Struct_4(vec3<i32>(arg_2.x, _wgslsmith_mod_i32(arg_2.x, _wgslsmith_add_i32(firstTrailingBit(arg_2.x), _wgslsmith_add_i32(0i, arg_0.x))), ~40309i), 1f, Struct_1(4198u, ~(func_3(Struct_4(arg_2, 657f, Struct_1(u_input.a.x, vec4<i32>(arg_0.x, 0i, arg_2.x, 20237i), arg_1.x, true, vec4<u32>(var_0.x, u_input.a.x, 0u, 1u)), Struct_3(-989f)), vec2<f32>(-135f, -845f), -486f) | vec4<i32>(arg_2.x, arg_2.x, arg_0.x, 32954i)), false, any(arg_1), vec4<u32>(reverseBits(~6101u), 36788u, abs(var_0.x), u_input.c)), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1271f)))));
}

fn func_4(arg_0: Struct_4) -> i32 {
    let var_0 = ~_wgslsmith_add_u32(abs(1u), func_2(abs(vec2<i32>(68092i, arg_0.c.b.x)), !select(vec2<bool>(arg_0.c.d, arg_0.c.d), vec2<bool>(arg_0.c.c, arg_0.c.d), vec2<bool>(arg_0.c.c, false)), func_2(select(vec2<i32>(-1i, arg_0.a.x), arg_0.c.b.yz, arg_0.c.d), vec2<bool>(false, true), -arg_0.a).c.b.www).c.a);
    global3 = array<vec2<u32>, 19>();
    var var_1 = Struct_2(Struct_1(var_0, vec4<i32>(_wgslsmith_mod_i32(arg_0.c.b.x, -1i), ~arg_0.a.x, _wgslsmith_dot_vec2_i32(~arg_0.a.yx, arg_0.a.yy), countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a.x, arg_0.c.b.x), vec2<i32>(0i, arg_0.a.x)))), !(!arg_0.c.d), any(!vec3<bool>(true, arg_0.c.d, false)), _wgslsmith_add_vec4_u32(~select(vec4<u32>(32891u, var_0, global0[_wgslsmith_index_u32(4294967295u, 30u)], var_0), vec4<u32>(56092u, 4294967295u, 35723u, 1u), vec4<bool>(arg_0.c.c, false, arg_0.c.d, true)), u_input.b)), abs(2147483647i), true);
    var var_2 = func_2(vec2<i32>(-(~arg_0.a.x) | (i32(-1i) * -1i), 0i), vec2<bool>(func_2(func_3(func_2(vec2<i32>(var_1.b, 2147483647i), vec2<bool>(false, false), arg_0.a), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-679f, arg_0.b), vec2<f32>(-1000f, 822f))), _wgslsmith_f_op_f32(856f + arg_0.d.a)).wy, vec2<bool>(var_1.a.d, var_1.a.d), _wgslsmith_clamp_vec3_i32(-vec3<i32>(arg_0.c.b.x, var_1.b, 32050i), arg_0.a, arg_0.a)).c.d, var_1.c), arg_0.c.b.ywz);
    var_1 = Struct_2(func_2(var_1.a.b.wx, select(select(vec2<bool>(var_2.c.c, true), !vec2<bool>(var_2.c.d, true), !vec2<bool>(false, var_1.c)), select(select(vec2<bool>(var_2.c.d, true), vec2<bool>(arg_0.c.d, true), vec2<bool>(false, var_1.c)), vec2<bool>(var_2.c.c, arg_0.c.c), vec2<bool>(arg_0.c.c, arg_0.c.c)), select(true, true, var_2.c.c)), (arg_0.c.b.xwx >> (u_input.b.wzy % vec3<u32>(32u))) & vec3<i32>(_wgslsmith_mod_i32(arg_0.a.x, var_1.b), -2147483647i, var_1.b << (var_1.a.e.x % 32u))).c, abs(468i), var_1.c == all(!vec2<bool>(var_1.a.d, true)));
    return -2147483647i;
}

fn func_5(arg_0: i32) -> Struct_1 {
    global3 = array<vec2<u32>, 19>();
    let var_0 = func_2((firstTrailingBit(vec2<i32>(2147483647i, 1i) ^ vec2<i32>(arg_0, 2147483647i)) >> (max(countOneBits(vec2<u32>(4294967295u, u_input.b.x)), countOneBits(global3[_wgslsmith_index_u32(u_input.a.x, 19u)])) % vec2<u32>(32u))) >> (_wgslsmith_add_vec2_u32(u_input.b.wz, ~max(u_input.b.zw, u_input.a)) % vec2<u32>(32u)), select(!(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true))), vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(select(798f, -270f, true)) != _wgslsmith_f_op_f32(f32(-1f) * -335f))), vec3<i32>(-1i) * -vec3<i32>(arg_0 & arg_0, ~arg_0, func_2(vec2<i32>(-53803i, 6382i), vec2<bool>(false, true), vec3<i32>(39001i, 1i, arg_0)).a.x));
    global2 = array<Struct_3, 2>();
    let var_1 = ~_wgslsmith_sub_vec2_i32(~_wgslsmith_mod_vec2_i32(~var_0.a.yz, vec2<i32>(-40145i, var_0.c.b.x) | var_0.a.zy), firstTrailingBit(var_0.c.b.xz));
    global2 = array<Struct_3, 2>();
    return var_0.c;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: Struct_4, arg_3: bool) -> u32 {
    var var_0 = Struct_4(-(~_wgslsmith_div_vec3_i32(vec3<i32>(17113i, 1i, 1i), vec3<i32>(arg_2.c.b.x, arg_2.a.x, 63081i)) & max(arg_2.c.b.zxy, vec3<i32>(8431i, 0i, arg_2.c.b.x))), -533f, func_5(func_4(func_2(select(vec2<i32>(1i, 19564i), arg_0, vec2<bool>(false, false)), select(vec2<bool>(false, arg_2.c.d), vec2<bool>(true, arg_2.c.c), arg_2.c.c), arg_2.c.b.wzz))), func_2(arg_2.c.b.yw, !vec2<bool>(!arg_3, arg_3), arg_2.c.b.yxz).d);
    global1 = -472f;
    var var_1 = var_0.d.a;
    let var_2 = _wgslsmith_add_i32(_wgslsmith_mult_i32(arg_0.x, abs(i32(-1i) * -arg_2.a.x)), 1i);
    global2 = array<Struct_3, 2>();
    return _wgslsmith_clamp_u32(~(~3026u << (countOneBits(0u) % 32u)), global0[_wgslsmith_index_u32(4294967295u, 30u)], ~0u >> ((~4294967295u << (_wgslsmith_clamp_u32(6476u, 4679u, arg_1.x) % 32u)) % 32u)) | 70761u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-631f, 1154f, _wgslsmith_f_op_f32(max(-747f, -282f)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1135f, -479f), _wgslsmith_f_op_f32(f32(-1f) * -839f)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -134f), 479f, -140f, _wgslsmith_f_op_f32(-193f + _wgslsmith_f_op_f32(-462f - 180f)))));
    global2 = array<Struct_3, 2>();
    var var_1 = 2147483647i;
    var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 861f, var_0.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 1000f, -1145f, -493f) + vec4<f32>(-721f, var_0.x, var_0.x, var_0.x)))))));
    var var_2 = Struct_5(vec3<u32>(abs(global0[_wgslsmith_index_u32(u_input.b.x, 30u)]), global0[_wgslsmith_index_u32(~(~33643u), 30u)], ~_wgslsmith_sub_u32(8879u ^ u_input.a.x, 8357u)));
    global0 = array<u32, 30>();
    let var_3 = Struct_5(~vec3<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 30u)] >> (4294967295u % 32u), u_input.b.x, select(var_2.a.x, u_input.a.x, true)) >> (_wgslsmith_div_vec3_u32(vec3<u32>(74855u, 31165u >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(59854u, 30u)], 30u)] % 32u), func_1(vec2<i32>(-1665i, 0i), vec4<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 30u)], var_2.a.x, u_input.b.x, var_2.a.x), Struct_4(vec3<i32>(1i, 1i, 46500i), 700f, Struct_1(u_input.b.x, vec4<i32>(-23249i, 0i, -1i, 0i), true, true, vec4<u32>(12390u, global0[_wgslsmith_index_u32(var_2.a.x, 30u)], 16915u, var_2.a.x)), global2[_wgslsmith_index_u32(1u, 2u)]), true)), vec3<u32>(_wgslsmith_div_u32(u_input.a.x, var_2.a.x), _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 30u)], 30u)], 10805u, global0[_wgslsmith_index_u32(15157u, 30u)]), firstLeadingBit(34437u))) % vec3<u32>(32u)));
    var var_4 = Struct_2(Struct_1(reverseBits(u_input.a.x | (0u << (var_3.a.x % 32u))), ~_wgslsmith_sub_vec4_i32(-vec4<i32>(1i, -9302i, -67689i, 27057i), max(vec4<i32>(-2147483647i, 1i, 0i, 0i), vec4<i32>(-69058i, -796i, 2147483647i, -2147483647i))), true, true, vec4<u32>(select(_wgslsmith_div_u32(0u, 1u), u_input.a.x, u_input.c == var_3.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_2.a.x), ~var_2.a.yy), ~1u, 6776u)), _wgslsmith_mult_i32(-2147483647i, -63749i >> (u_input.a.x % 32u)), true);
    var var_5 = global2[_wgslsmith_index_u32(u_input.c, 2u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(countOneBits(reverseBits(_wgslsmith_div_i32(var_4.a.b.x, 4257i))), var_4.b, ~(-792i & countOneBits(var_4.a.b.x)), countOneBits(var_4.a.b.x)), ~vec2<i32>(2147483647i | _wgslsmith_sub_i32(var_4.a.b.x, 10833i), var_4.a.b.x), u_input.c);
}

