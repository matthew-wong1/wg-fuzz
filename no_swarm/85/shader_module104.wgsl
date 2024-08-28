struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
    c: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: Struct_3,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 19>;

var<private> global1: array<vec4<u32>, 17>;

var<private> global2: vec2<i32> = vec2<i32>(-41481i, -1i);

var<private> global3: array<vec4<u32>, 21> = array<vec4<u32>, 21>(vec4<u32>(4507u, 70677u, 36892u, 12677u), vec4<u32>(0u, 3919u, 0u, 432u), vec4<u32>(1u, 55640u, 34480u, 0u), vec4<u32>(25655u, 316u, 9771u, 0u), vec4<u32>(71271u, 15760u, 1u, 4294967295u), vec4<u32>(39300u, 4294967295u, 0u, 22276u), vec4<u32>(1u, 38703u, 19985u, 611u), vec4<u32>(57441u, 4294967295u, 33046u, 4294967295u), vec4<u32>(1u, 67433u, 9775u, 1u), vec4<u32>(10713u, 4294967295u, 63314u, 76509u), vec4<u32>(0u, 19455u, 4294967295u, 0u), vec4<u32>(44159u, 4294967295u, 3238u, 4294967295u), vec4<u32>(1u, 35899u, 1u, 2765u), vec4<u32>(0u, 0u, 4294967295u, 75027u), vec4<u32>(33540u, 1u, 13245u, 4357u), vec4<u32>(1u, 86176u, 84472u, 71102u), vec4<u32>(41606u, 53771u, 0u, 274u), vec4<u32>(4294967295u, 41019u, 10319u, 80658u), vec4<u32>(115733u, 7164u, 63781u, 13216u), vec4<u32>(0u, 197u, 4294967295u, 35811u), vec4<u32>(54381u, 4294967295u, 4294967295u, 0u));

var<private> global4: u32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_4, arg_3: f32) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-261f, _wgslsmith_div_f32(1414f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(712f - arg_3) * _wgslsmith_div_f32(arg_2.a.a.c.x, 121f))))));
    global1 = array<vec4<u32>, 17>();
    var var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_2.b.a.a.x * 1403f), arg_3)))), arg_3, arg_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.b.a.a.x, arg_2.a.a.c.x) * _wgslsmith_f_op_f32(select(arg_3, arg_3, true))))), _wgslsmith_div_vec3_i32(vec3<i32>(arg_2.a.a.b.x, 0i, u_input.a.x), -_wgslsmith_mod_vec3_i32(arg_2.a.a.b, select(vec3<i32>(-7308i, u_input.a.x, global2.x), u_input.a.yww, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-arg_2.a.a.a.wzy), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(444f, -641f, -1176f))))))));
    global3 = array<vec4<u32>, 21>();
    let var_2 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(arg_2.a.a.a * var_1.a)))), _wgslsmith_f_op_vec4_f32(min(arg_2.a.a.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1586f, 193f, -365f, arg_2.b.a.c.x) * var_1.a) * arg_2.a.a.a)))), vec3<i32>(-1i) * -(~(-u_input.a.xyx)), var_1.a.yxy);
    return 24329i;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<u32>) -> vec2<bool> {
    let var_0 = Struct_3(1i, arg_0.yww, -67247i);
    var var_1 = Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(arg_0, arg_0) * _wgslsmith_f_op_vec4_f32(-arg_0)), vec3<i32>(14705i, 0i, ~(-14024i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(380f, 1070f, var_0.b.x))), u_input.b.x, vec2<i32>(-1i) * -vec2<i32>(23738i, var_0.c), func_3(vec4<bool>(true, true, true, any(vec2<bool>(false, false))), 22575u, Struct_4(Struct_2(Struct_1(vec4<f32>(391f, -113f, -1246f, arg_0.x), vec3<i32>(-2147483647i, 1i, var_0.c), var_0.b), 47788u, vec2<i32>(u_input.a.x, 29908i), 23085i), Struct_2(Struct_1(vec4<f32>(var_0.b.x, 1810f, var_0.b.x, arg_0.x), u_input.a.wyw, vec3<f32>(var_0.b.x, arg_0.x, arg_0.x)), u_input.b.x, u_input.a.yw, 85i)), -451f)), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, 372f, arg_0.x, var_0.b.x) + vec4<f32>(var_0.b.x, -1193f, arg_0.x, -338f))), countOneBits(vec3<i32>(global2.x, global2.x, -2147483647i)), vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), 1756f, _wgslsmith_f_op_f32(select(arg_0.x, 1551f, true)))), 0u, vec2<i32>(max(1i, ~global2.x), abs(global2.x)), _wgslsmith_div_i32(-2147483647i, u_input.a.x)));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -238f);
    global4 = select(_wgslsmith_div_u32(~var_1.a.b | 4294967295u, ~_wgslsmith_clamp_u32(_wgslsmith_add_u32(var_1.b.b, u_input.c.x), ~arg_1.x, ~0u)), 4294967295u, true);
    let var_3 = global0[_wgslsmith_index_u32(0u, 19u)];
    return vec2<bool>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(var_1.b.a.c.x)))) >= _wgslsmith_f_op_f32(var_1.a.a.c.x + arg_0.x), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
}

fn func_1() -> Struct_2 {
    let var_0 = select(!select(!select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true), select(false, true, true) & (u_input.c.x <= 20748u)), select(!select(vec2<bool>(true, true), vec2<bool>(true, true), false), !vec2<bool>(all(vec2<bool>(true, true)), true), !(!func_2(vec4<f32>(1000f, -230f, -666f, -650f), u_input.b.xy))), true);
    let var_1 = max(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(39426u, u_input.b.x, 1u), u_input.b), 58682u, 4759u) | firstTrailingBit(max(vec3<u32>(48745u, u_input.b.x, u_input.b.x), u_input.b)), u_input.b), ~(~1u));
    global4 = 1u;
    var var_2 = firstLeadingBit(u_input.c);
    global3 = array<vec4<u32>, 21>();
    return Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, -1000f, 331f, -961f), vec4<f32>(-431f, -2097f, 227f, 749f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-375f, -1341f, -126f, -1000f)))))), ~vec3<i32>(_wgslsmith_mod_i32(global2.x, 1i), u_input.a.x, 1i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2252f, -511f, 1059f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(963f, -154f, 1581f))), var_0.x)) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1506f, 1000f, -211f))))), ~1u, vec2<i32>(i32(-1i) * -1i, ~51441i), 1i);
}

fn func_4(arg_0: Struct_2) -> vec2<i32> {
    let var_0 = arg_0.a.a.x;
    global1 = array<vec4<u32>, 17>();
    let var_1 = ~_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.b, 1u, 32214u), min(u_input.b, vec3<u32>(arg_0.b, 11856u, 2658u)), u_input.b), _wgslsmith_mod_vec3_u32(u_input.b, vec3<u32>(1u, 4294967295u, arg_0.b))), select(_wgslsmith_mult_u32(0u, _wgslsmith_add_u32(1u, arg_0.b)), u_input.c.x, true));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-809f, arg_0.a.a.x, 1236f, -273f) - arg_0.a.a))), _wgslsmith_add_vec3_i32(u_input.a.zxy, vec3<i32>(-13847i, u_input.a.x, ~68140i)), _wgslsmith_f_op_vec3_f32(-arg_0.a.a.xxy)), ~u_input.c.x, vec2<i32>(u_input.a.x, abs(reverseBits(arg_0.c.x))) | vec2<i32>(abs(global2.x & -34031i), _wgslsmith_clamp_i32(arg_0.a.b.x, -1i, -u_input.a.x)), _wgslsmith_sub_i32(u_input.a.x, select(-arg_0.c.x, -11714i, false) >> (var_1 % 32u)));
    global2 = min(var_2.a.b.yy, select(vec2<i32>(countOneBits(func_1().c.x), 2147483647i), min(vec2<i32>(arg_0.c.x, 1i), select(arg_0.a.b.zx, vec2<i32>(-52554i, -12838i), vec2<bool>(false, false))) << (~(~vec2<u32>(u_input.c.x, 6045u)) % vec2<u32>(32u)), vec2<bool>(any(vec3<bool>(true, true, false)) && false, all(vec3<bool>(true, true, true)))));
    return ~vec2<i32>(~firstTrailingBit(arg_0.a.b.x), -1i) | u_input.a.zx;
}

fn func_5(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: Struct_4) -> bool {
    global2 = _wgslsmith_mult_vec2_i32((arg_3.b.a.b.yx ^ _wgslsmith_mult_vec2_i32(reverseBits(vec2<i32>(arg_3.b.d, 26344i)), vec2<i32>(0i, 0i))) >> (countOneBits(~u_input.b.xy) % vec2<u32>(32u)), ~(~(-u_input.a.wx) & _wgslsmith_sub_vec2_i32(~arg_3.b.a.b.xy, vec2<i32>(-2147483647i, 22264i))));
    global0 = array<Struct_5, 19>();
    let var_0 = Struct_3(arg_2.c.x, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2.a.c.x, 719f))), arg_3.a.a.c.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.a.a.c.x * arg_3.a.a.c.x) - -746f)))), arg_2.c.x);
    var var_1 = -(_wgslsmith_clamp_i32(0i, -1i, arg_2.c.x) << (~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.b, 4294967295u, 4294967295u), vec3<u32>(arg_0.x, arg_0.x, u_input.c.x)) % 32u)) > (arg_3.b.a.b.x & var_0.a);
    global2 = reverseBits(-func_1().c);
    return any(vec4<bool>(true, true, func_4(func_1()).x < -2147483647i, true));
}

fn func_6(arg_0: bool, arg_1: Struct_3, arg_2: u32) -> Struct_3 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1000f)), 1327f))), 862f);
    global1 = array<vec4<u32>, 17>();
    var var_1 = abs(_wgslsmith_div_u32(arg_2, 27384u));
    var var_2 = !vec3<bool>(!all(!vec2<bool>(true, arg_0)), all(select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, arg_0, true, arg_0), vec4<bool>(arg_0, arg_0, arg_0, false)), !vec4<bool>(arg_0, true, true, true), select(vec4<bool>(true, arg_0, false, arg_0), vec4<bool>(arg_0, arg_0, false, false), true))), select(all(vec3<bool>(false, true, false)), arg_0, true | arg_0) & any(vec4<bool>(true, arg_0, false, false)));
    global0 = array<Struct_5, 19>();
    return Struct_3(reverseBits(global2.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.b.x, _wgslsmith_f_op_f32(sign(arg_1.b.x)), func_1().a.c.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.b))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1.b.x, 1127f, arg_1.b.x), vec3<f32>(1333f, -1091f, -211f))), arg_1.b))))), firstLeadingBit(func_1().c.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(vec3<u32>(67968u, u_input.c.x, firstLeadingBit(~3066u)), u_input.a, Struct_2(Struct_1(vec4<f32>(-232f, 1308f, -723f, 860f), -u_input.a.xyy, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2846f, 1088f, -355f))), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.c.x, 72277u, 0u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, u_input.c.x, 9593u, 1u), vec4<u32>(u_input.c.x, 1u, u_input.b.x, u_input.c.x))), func_4(func_1()), -13620i), Struct_4(Struct_2(Struct_1(vec4<f32>(-1017f, -977f, 129f, -376f), vec3<i32>(u_input.a.x, global2.x, -27346i), vec3<f32>(222f, 991f, 1108f)), 4294967295u | u_input.b.x, abs(vec2<i32>(0i, -1i)), 30435i), func_1())), Struct_3(global2.x, _wgslsmith_f_op_vec3_f32(sign(func_1().a.c)), 0i), ~countOneBits(4294967295u));
    let var_1 = u_input.a;
    global4 = u_input.b.x;
    let var_2 = max(_wgslsmith_mult_i32(-1i, _wgslsmith_div_i32(~5349i, var_1.x)), -2147483647i);
    let var_3 = ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(34212u, u_input.b.x << (1860u % 32u)), abs(4294967295u)) & 2491u;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.x, vec2<i32>(-((var_2 ^ global2.x) & ~var_1.x), -23004i ^ var_2), 0u, var_0.b.x);
}

