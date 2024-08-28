struct Struct_1 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<u32>) -> vec2<u32> {
    global0 = Struct_2(arg_0.xxw ^ _wgslsmith_sub_vec3_u32(vec3<u32>(max(1u, 36646u), _wgslsmith_mult_u32(u_input.c, 1u), abs(u_input.c)), _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(89228u, u_input.c, 0u), vec3<u32>(14490u, 4294967295u, 44648u)), abs(arg_0.wxw))), firstLeadingBit(_wgslsmith_div_vec2_u32(global0.a.xy >> (vec2<u32>(arg_0.x, 0u) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(firstTrailingBit(arg_0.yw), countOneBits(arg_0.yy)))), Struct_1(select(~vec2<u32>(global0.c.a.x, 33299u), arg_0.xx, select(vec2<bool>(global0.c.b, false), vec2<bool>(true, true), global0.c.b)), true));
    var var_0 = global0.c;
    var var_1 = true;
    global0 = Struct_2(vec3<u32>(u_input.d, ~reverseBits(40236u), _wgslsmith_dot_vec4_u32(vec4<u32>(global0.c.a.x, global0.c.a.x, 4294967295u, 0u), vec4<u32>(11106u, 7936u, 57282u, 22443u))) ^ vec3<u32>(arg_0.x, 3421u, select(~u_input.c, 61353u, false)), arg_0.zy, Struct_1(~vec2<u32>(var_0.a.x, ~global0.c.a.x), any(!select(vec4<bool>(global0.c.b, var_0.b, true, var_0.b), vec4<bool>(true, false, false, global0.c.b), vec4<bool>(false, true, false, var_0.b)))));
    var_1 = false;
    return vec2<u32>(~global0.b.x, abs(4294967295u)) & ~(~arg_0.wz);
}

fn func_2() -> Struct_1 {
    let var_0 = abs(_wgslsmith_sub_i32(u_input.a, ~11254i));
    let var_1 = _wgslsmith_div_vec2_u32(vec2<u32>(~0u, u_input.c), (vec2<u32>(_wgslsmith_mod_u32(31400u, global0.a.x), 1u) >> ((func_3(vec4<u32>(global0.c.a.x, global0.c.a.x, u_input.d, 4294967295u)) & _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.d, u_input.d), global0.b, vec2<u32>(u_input.d, u_input.d))) % vec2<u32>(32u))) | select(~(vec2<u32>(22381u, 4294967295u) >> (global0.a.yz % vec2<u32>(32u))), global0.b, !global0.c.b));
    var var_2 = _wgslsmith_add_u32(abs(global0.a.x), 35248u);
    global0 = Struct_2(vec3<u32>(6732u, var_1.x, _wgslsmith_dot_vec3_u32(select(~global0.a, global0.a, true), abs(vec3<u32>(1u, u_input.c, global0.b.x)))), ~(~(~global0.b)), Struct_1(_wgslsmith_clamp_vec2_u32(var_1, global0.b | ~vec2<u32>(80486u, 30539u), vec2<u32>(reverseBits(4294967295u), 18882u)), reverseBits(u_input.d) > ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 39310u), global0.a.zz)));
    let var_3 = true;
    return global0.c;
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = vec4<i32>(5395i, -u_input.b.x, 2147483647i, countOneBits(_wgslsmith_sub_i32(u_input.b.x, ~(-8808i)))) | ((-vec4<i32>(9465i, -2147483647i, -77552i, arg_0) & u_input.e) | u_input.e);
    let var_1 = _wgslsmith_sub_u32(~min(~1u, u_input.d), 1u);
    var var_2 = ~78592u;
    var_2 = select(21326u, ~firstLeadingBit(u_input.c), all(vec3<bool>(true, func_2().b, 1i > _wgslsmith_div_i32(u_input.e.x, 2147483647i))));
    global0 = Struct_2(max(vec3<u32>(select(4294967295u, _wgslsmith_mult_u32(global0.c.a.x, 17863u), arg_1 > arg_1), var_1, _wgslsmith_add_u32(14633u, u_input.d) >> (arg_2.a.x % 32u)), vec3<u32>(u_input.c, ~(~13526u), 58963u)), abs(min(~(global0.b & arg_2.a), vec2<u32>(reverseBits(4294967295u), arg_2.a.x))), arg_2);
    return func_2();
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = Struct_2(vec3<u32>(arg_1.a.x, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(global0.a, vec3<u32>(1u, 5746u, 2906u)), vec3<u32>(u_input.d, global0.b.x, 34962u) >> (global0.a % vec3<u32>(32u))) & (_wgslsmith_mult_u32(1u, 1u) >> ((26205u | global0.c.a.x) % 32u)), global0.a.x), vec2<u32>(70689u >> (func_2().a.x % 32u), global0.a.x), arg_1);
    var var_1 = Struct_1(var_0.b, (var_0.b.x & countOneBits(_wgslsmith_dot_vec3_u32(var_0.a, var_0.a))) > var_0.c.a.x);
    global0 = var_0;
    global0 = Struct_2(abs(~_wgslsmith_div_vec3_u32(~global0.a, global0.a)), _wgslsmith_clamp_vec2_u32(var_0.b, countOneBits(~var_1.a), vec2<u32>(8436u, 4294967295u)), global0.c);
    var var_2 = var_0;
    return !(!vec3<bool>(var_2.c.b, any(!vec4<bool>(false, var_2.c.b, true, arg_1.b)), global0.c.b));
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    let var_0 = 47063u;
    var var_1 = arg_0;
    let var_2 = func_5(_wgslsmith_div_vec3_i32(select(u_input.e.xzy, vec3<i32>(u_input.b.x, u_input.a, _wgslsmith_div_i32(1i, u_input.b.x)), var_1.c.b), u_input.b.yxx), func_4(-(u_input.e.x >> (~55721u % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -894f) - 513f)), func_2()));
    var var_3 = ~_wgslsmith_clamp_u32(~_wgslsmith_dot_vec3_u32(global0.a, _wgslsmith_clamp_vec3_u32(arg_0.a, vec3<u32>(1u, global0.b.x, 48095u), vec3<u32>(28305u, 1u, 8690u))), firstLeadingBit(~(~u_input.c)), _wgslsmith_dot_vec3_u32(vec3<u32>(global0.c.a.x, var_1.c.a.x, _wgslsmith_clamp_u32(47003u, 19707u, var_1.a.x)), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, global0.c.a.x), var_1.b), func_4(9921i, -891f, global0.c).a.x, abs(var_1.c.a.x))));
    let var_4 = _wgslsmith_f_op_f32(max(-513f, -942f));
    return Struct_2(vec3<u32>(max(0u, abs(8728u)), (0u ^ global0.b.x) >> (~4294967295u % 32u), _wgslsmith_mod_u32(~global0.c.a.x, global0.c.a.x)) | vec3<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.d, arg_0.b.x), var_1.b.x), global0.b.x, 1u), vec2<u32>(u_input.d, func_3(abs(vec4<u32>(58215u, u_input.d, var_1.a.x, 0u)) & ~vec4<u32>(1811u, 4294967295u, 2997u, 8074u)).x), func_2());
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2, arg_2: u32) -> i32 {
    global0 = Struct_2(firstTrailingBit(global0.a), vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_div_u32(~arg_0.b.x, firstLeadingBit(15158u)), u_input.d), arg_1.b.x), arg_1.c);
    global0 = Struct_2(vec3<u32>(4294967295u, arg_1.c.a.x, 29568u) >> (~(~vec3<u32>(1u, 1u, arg_2)) % vec3<u32>(32u)), arg_1.c.a, func_2());
    global0 = Struct_2(vec3<u32>(u_input.c, ~_wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.d, global0.c.a.x), _wgslsmith_add_u32(10530u, global0.c.a.x)), _wgslsmith_div_u32(9526u, arg_1.a.x)), abs(abs(vec2<u32>(global0.a.x, u_input.d) | _wgslsmith_div_vec2_u32(arg_1.c.a, global0.c.a))), arg_0.c);
    global0 = Struct_2(vec3<u32>(~(~(~0u)), ~arg_2, arg_2), countOneBits(vec2<u32>(arg_0.a.x, _wgslsmith_sub_u32(_wgslsmith_sub_u32(1u, 0u), ~u_input.c))), arg_0.c);
    var var_0 = 1i;
    return u_input.b.x;
}

fn func_7(arg_0: vec2<f32>, arg_1: i32) -> Struct_2 {
    let var_0 = ~u_input.e.wy;
    global0 = func_1(func_1(Struct_2(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, global0.c.a.x, global0.a.x) | global0.a, ~global0.a), _wgslsmith_sub_vec2_u32(~vec2<u32>(3680u, u_input.d), ~global0.a.xx), func_2())));
    let var_1 = Struct_1(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(global0.c.a, ~vec2<u32>(0u, global0.a.x) & select(vec2<u32>(global0.a.x, global0.a.x), global0.c.a, true)), global0.b), any(!(!(!vec3<bool>(global0.c.b, true, true)))));
    global0 = Struct_2(vec3<u32>(countOneBits(~var_1.a.x), u_input.d, 19848u), vec2<u32>(var_1.a.x, 0u), global0.c);
    var var_2 = arg_0.x;
    return func_1(Struct_2(vec3<u32>(min(global0.b.x, u_input.d), u_input.c | 1999u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_1.a.x, var_1.a.x, u_input.c), vec4<u32>(var_1.a.x, 1u, u_input.c, 859u))) & _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(44249u, 4294967295u, 40080u), global0.a), ~vec3<u32>(var_1.a.x, global0.b.x, 0u)), ~global0.c.a, Struct_1(global0.b >> (select(var_1.a, vec2<u32>(4294967295u, u_input.c), true) % vec2<u32>(32u)), _wgslsmith_mod_u32(0u, global0.b.x) > 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_7(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1063f, -1361f), _wgslsmith_f_op_vec2_f32(vec2<f32>(158f, 600f) + vec2<f32>(1566f, 1610f))))), ~func_6(func_1(Struct_2(global0.a, global0.c.a, global0.c)), func_1(Struct_2(global0.a, global0.c.a, Struct_1(global0.b, false))), 4294967295u));
    var var_0 = Struct_2(select(global0.a, global0.a, false), max(~global0.c.a >> (func_1(Struct_2(vec3<u32>(0u, 115595u, global0.b.x), global0.b, global0.c)).c.a % vec2<u32>(32u)), reverseBits(min(global0.b, vec2<u32>(u_input.c, global0.a.x))) >> (_wgslsmith_div_vec2_u32(global0.a.yx, global0.b) % vec2<u32>(32u))), global0.c);
    global0 = func_1(func_7(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(853f)), _wgslsmith_f_op_f32(abs(-391f)))), firstLeadingBit(44789i)));
    let var_1 = vec4<bool>(all(!select(select(vec4<bool>(true, false, var_0.c.b, var_0.c.b), vec4<bool>(global0.c.b, true, global0.c.b, false), global0.c.b), vec4<bool>(true, global0.c.b, global0.c.b, true), u_input.e.x >= 2147483647i)), func_5(_wgslsmith_mult_vec3_i32(vec3<i32>(max(u_input.b.x, u_input.e.x), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 1i, u_input.b.x, u_input.e.x), u_input.b), u_input.a), _wgslsmith_div_vec3_i32(vec3<i32>(-7642i, u_input.e.x, u_input.b.x) ^ vec3<i32>(u_input.e.x, u_input.b.x, u_input.b.x), u_input.b.wyy)), func_7(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1529f, -1561f)), _wgslsmith_div_vec2_f32(vec2<f32>(806f, -886f), vec2<f32>(-631f, 1789f))), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(u_input.e, vec4<i32>(0i, -26070i, 5701i, u_input.b.x)), _wgslsmith_mod_i32(u_input.b.x, -2147483647i))).c).x, var_0.c.b, select(true, any(vec4<bool>(select(true, true, false), true, true, true && var_0.c.b)), func_2().b));
    let var_2 = Struct_1(_wgslsmith_mod_vec2_u32(var_0.b, max(global0.a.yz, _wgslsmith_mod_vec2_u32(global0.a.xz, vec2<u32>(0u, 19216u)))) | vec2<u32>(global0.c.a.x, global0.a.x), all(select(func_5(vec3<i32>(22844i, 0i, u_input.a), Struct_1(vec2<u32>(4294967295u, global0.a.x), global0.c.b)), vec3<bool>(true, true, true), vec3<bool>(var_0.c.b, false, false))) & func_7(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(2793f, 413f)))), _wgslsmith_clamp_i32(reverseBits(u_input.b.x), u_input.e.x, i32(-1i) * -17459i)).c.b);
    let x = u_input.a;
    s_output = StorageBuffer(global0.b, _wgslsmith_f_op_f32(abs(514f)));
}

