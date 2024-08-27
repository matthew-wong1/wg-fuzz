struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 2>;

var<private> global1: u32 = 10572u;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> i32 {
    global0 = array<Struct_3, 2>();
    global0 = array<Struct_3, 2>();
    let var_0 = Struct_2(Struct_1(_wgslsmith_mod_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(12584u, u_input.c.x), u_input.c.wx), u_input.c.zw), 1u, false));
    let var_1 = var_0.a.a;
    global0 = array<Struct_3, 2>();
    return -u_input.b.x;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_4, arg_2: u32) -> vec2<i32> {
    let var_0 = Struct_1(arg_0.a, 1u, false);
    global1 = arg_0.b;
    var var_1 = arg_2;
    var var_2 = arg_1;
    let var_3 = func_3();
    return _wgslsmith_sub_vec2_i32(countOneBits(-u_input.b.yz | -arg_1.a), -(select(u_input.b.zz, vec2<i32>(var_3, 2147483647i), vec2<bool>(var_2.b, var_2.b)) & max(var_2.a, u_input.b.xz))) >> (abs(_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(var_0.b, u_input.a)), vec2<u32>(countOneBits(u_input.c.x), ~var_0.b))) % vec2<u32>(32u));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_2) -> Struct_4 {
    var var_0 = -((~abs(vec2<i32>(u_input.b.x, arg_0.x)) << (~u_input.c.zx % vec2<u32>(32u))) ^ min(~(~u_input.b.xy), _wgslsmith_mod_vec2_i32(func_2(Struct_1(vec2<u32>(4294967295u, u_input.c.x), u_input.a, true), Struct_4(vec2<i32>(u_input.b.x, 17598i), arg_1.a.c), arg_1.a.a.x), u_input.b.yz)));
    var var_1 = Struct_4(firstLeadingBit(u_input.b.zx ^ abs(arg_0)) << (min(~_wgslsmith_add_vec2_u32(vec2<u32>(45052u, arg_1.a.a.x), vec2<u32>(u_input.c.x, arg_1.a.a.x)), vec2<u32>(73611u >> (0u % 32u), 1u)) % vec2<u32>(32u)), arg_1.a.c);
    var var_2 = vec4<f32>(_wgslsmith_div_f32(-1231f, -713f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-257f + _wgslsmith_f_op_f32(-330f * 324f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(598f)) + -1000f), 1f, all(select(vec4<bool>(var_1.b, arg_1.a.c, var_1.b, arg_1.a.c), vec4<bool>(false, true, false, true), false)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -697f)), -780f);
    let var_3 = var_1.a.x;
    var_1 = Struct_4(arg_0, false);
    return Struct_4(u_input.b.xx ^ (var_1.a ^ u_input.b.xy), false);
}

fn func_4(arg_0: Struct_4, arg_1: u32, arg_2: Struct_4) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1635f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -358f)))), 259f, 413f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1332f, 739f, 1054f, 1539f))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1117f, 268f, 151f, -298f), vec4<f32>(-1219f, -1000f, 2467f, -250f)))))))));
    let var_1 = Struct_3(Struct_1(select(_wgslsmith_div_vec2_u32(vec2<u32>(arg_1, 4294967295u), u_input.c.xy) & _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 15582u), vec2<u32>(u_input.c.x, arg_1)), ~firstTrailingBit(vec2<u32>(arg_1, u_input.a)), false), 0u, arg_0.b));
    global1 = _wgslsmith_mod_u32(select(select(~countOneBits(arg_1), ~max(54331u, 57419u), true), 1u, false & (_wgslsmith_add_i32(arg_2.a.x, u_input.b.x) < _wgslsmith_mult_i32(12372i, -1i))), u_input.c.x);
    let var_2 = _wgslsmith_add_vec3_u32(min(~u_input.c.xzx, _wgslsmith_sub_vec3_u32(vec3<u32>(2296u, 4294967295u, 41240u) | _wgslsmith_mod_vec3_u32(u_input.c.yyw, vec3<u32>(39537u, 1u, arg_1)), _wgslsmith_mult_vec3_u32(~u_input.c.xzz, u_input.c.zwz))), ~(vec3<u32>(18360u, ~u_input.a, _wgslsmith_clamp_u32(37882u, 79041u, u_input.a)) ^ u_input.c.wyy));
    let var_3 = Struct_3(Struct_1(vec2<u32>(~arg_1, ~6103u), ~_wgslsmith_div_u32(_wgslsmith_clamp_u32(4294967295u, u_input.c.x, u_input.a), ~61162u), !all(vec3<bool>(arg_0.b, true, arg_2.b)) != ((arg_2.a.x ^ -1i) > -u_input.b.x)));
    return var_3.a;
}

fn func_5(arg_0: Struct_2, arg_1: vec4<bool>) -> Struct_4 {
    var var_0 = Struct_3(arg_0.a);
    global1 = ~(~((~u_input.c.x ^ u_input.c.x) ^ 1u));
    var_0 = Struct_3(Struct_1(vec2<u32>(_wgslsmith_add_u32(~var_0.a.a.x, arg_0.a.a.x), _wgslsmith_mod_u32(firstTrailingBit(u_input.c.x), _wgslsmith_sub_u32(arg_0.a.b, 22049u))), abs(96484u >> (var_0.a.b % 32u)), true));
    var var_1 = ~u_input.c;
    let var_2 = arg_0;
    return func_1(-vec2<i32>(_wgslsmith_mult_i32(u_input.b.x << (46440u % 32u), u_input.b.x), func_3()), arg_0);
}

fn func_6(arg_0: u32, arg_1: Struct_4, arg_2: Struct_4) -> Struct_4 {
    var var_0 = Struct_4(arg_2.a << (max(_wgslsmith_clamp_vec2_u32(u_input.c.zy, _wgslsmith_mod_vec2_u32(vec2<u32>(49842u, arg_0), u_input.c.zz), u_input.c.wx), ~(~vec2<u32>(32496u, 10650u))) % vec2<u32>(32u)), arg_1.b);
    var var_1 = Struct_2(Struct_1(vec2<u32>(4294967295u, _wgslsmith_sub_u32(u_input.a, 60119u)) ^ u_input.c.wz, func_4(Struct_4(vec2<i32>(arg_1.a.x, -1i) & arg_1.a, var_0.b), arg_0, arg_2).a.x, !func_5(Struct_2(Struct_1(u_input.c.yw, 4294967295u, var_0.b)), select(vec4<bool>(false, true, var_0.b, arg_2.b), vec4<bool>(arg_1.b, true, var_0.b, arg_1.b), var_0.b)).b));
    global0 = array<Struct_3, 2>();
    let var_2 = 1f;
    var var_3 = 1u;
    return Struct_4(arg_2.a, !select(!(false == var_1.a.c), true, arg_1.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(u_input.a, Struct_4(-u_input.b.zz, true), func_5(Struct_2(func_4(func_1(vec2<i32>(u_input.b.x, 24816i), Struct_2(Struct_1(u_input.c.xz, 21766u, true))), ~0u, func_1(u_input.b.zz, Struct_2(Struct_1(u_input.c.ww, u_input.c.x, true))))), vec4<bool>(all(vec4<bool>(true, true, true, true)), select(true, true, true), true, func_4(Struct_4(u_input.b.yy, true), 1u, Struct_4(u_input.b.yx, true)).c)));
    global1 = 4294967295u;
    var var_1 = max(_wgslsmith_mod_vec4_i32(select(vec4<i32>(func_1(u_input.b.xx, Struct_2(Struct_1(u_input.c.yz, 24024u, var_0.b))).a.x, var_0.a.x | u_input.b.x, ~(-6549i), select(-2147483647i, u_input.b.x, false)), -vec4<i32>(var_0.a.x, var_0.a.x, 0i, 1i), !var_0.b), vec4<i32>(abs(-4390i), reverseBits(countOneBits(23517i)), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(u_input.b, u_input.b), select(u_input.b.x, u_input.b.x, var_0.b)), 1i)), vec4<i32>(-1i) * -_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.a.x, u_input.b.x, var_0.a.x, var_0.a.x), vec4<i32>(u_input.b.x, u_input.b.x, -22881i, -66746i)));
    global1 = ~(~1u) | countOneBits(~u_input.a);
    let var_2 = global0[_wgslsmith_index_u32(~u_input.a, 2u)];
    var_1 = _wgslsmith_mod_vec4_i32(abs(-firstTrailingBit(vec4<i32>(u_input.b.x, 76559i, var_1.x, -25950i)) & vec4<i32>(func_5(Struct_2(var_2.a), vec4<bool>(true, false, var_2.a.c, false)).a.x, -27413i, -u_input.b.x, _wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, -13708i))), -_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_div_i32(var_0.a.x, var_1.x), _wgslsmith_dot_vec3_i32(u_input.b, u_input.b), u_input.b.x, 10441i), ~min(vec4<i32>(-1i, -7692i, var_0.a.x, 11239i), vec4<i32>(var_1.x, var_1.x, -30416i, 2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, func_4(Struct_4(-vec2<i32>(0i, var_1.x), var_2.a.c & false), 0u, var_0).a & firstTrailingBit(vec2<u32>(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.a.a.x, 4294967295u), var_2.a.a))), ~(_wgslsmith_div_vec4_u32(u_input.c, vec4<u32>(62541u, u_input.a, 5749u, 4294967295u)) >> (~u_input.c % vec4<u32>(32u))) >> (min(_wgslsmith_mod_vec4_u32(u_input.c, u_input.c << (u_input.c % vec4<u32>(32u))), reverseBits(~vec4<u32>(u_input.a, u_input.c.x, u_input.a, 1u))) % vec4<u32>(32u)));
}

