struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec2<f32>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: Struct_2) -> vec2<f32> {
    global0 = u_input.c;
    let var_0 = !(!(!vec4<bool>(false, true, !arg_1.d, any(vec2<bool>(true, true)))));
    global0 = u_input.d.zx;
    global0 = _wgslsmith_sub_vec2_u32(u_input.c, u_input.c);
    global0 = _wgslsmith_div_vec2_u32(u_input.d.yx, vec2<u32>(92587u, arg_3.a >> ((global0.x | ~4294967295u) % 32u)));
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.yw))), arg_2.zz);
}

fn func_2() -> i32 {
    global0 = u_input.c;
    let var_0 = -49317i;
    let var_1 = Struct_1(select(!select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), true), select(true, false, false)), vec2<bool>(true, !select(false, false, false)), !(!select(vec2<bool>(false, true), vec2<bool>(false, true), false))), !all(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, false), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(global0.x, Struct_1(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), true, vec2<f32>(1f, 1f), true, _wgslsmith_f_op_f32(1853f * -1332f)), vec4<f32>(-509f, -1537f, _wgslsmith_f_op_f32(-1065f + 2204f), _wgslsmith_f_op_f32(f32(-1f) * -587f)), Struct_2(16655u >> (0u % 32u), vec4<i32>(var_0, var_0, var_0, var_0), ~(-1i), u_input.b ^ 46485u)))), (u_input.e ^ ~(~global0.x)) <= ~0u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1479f), _wgslsmith_f_op_f32(step(729f, 887f))))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1248f, 2094f)))))));
    global0 = u_input.c >> (u_input.d.xw % vec2<u32>(32u));
    var var_2 = var_1;
    return -var_0;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: bool) -> i32 {
    global0 = select(u_input.c, vec2<u32>(~min(u_input.e, 4294967295u) << (41240u % 32u), max(max(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, u_input.d.x), vec2<u32>(u_input.a, 35478u)), max(0u, u_input.d.x)), u_input.a)), !arg_1.a);
    global0 = ~abs(_wgslsmith_sub_vec2_u32((u_input.c | vec2<u32>(63160u, 11085u)) & u_input.c, u_input.d.yx));
    var var_0 = global0.x;
    return func_2();
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: Struct_3) -> Struct_3 {
    var var_0 = ~vec4<u32>(4294967295u, ~4294967295u, ~(~_wgslsmith_sub_u32(u_input.c.x, global0.x)), 0u);
    let var_1 = arg_2;
    var_0 = ~(~min(firstLeadingBit(reverseBits(vec4<u32>(4294967295u, global0.x, 0u, 4294967295u))), min(vec4<u32>(var_0.x, global0.x, u_input.b, u_input.a), ~u_input.d)));
    var var_2 = arg_1.b.zw;
    var_0 = vec4<u32>(select(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 4294967295u), abs(vec2<u32>(var_0.x, 44809u))), 4294967295u, !any(vec2<bool>(false, true))), firstTrailingBit(select(47192u, 1u, var_1.a.b)), 1u, _wgslsmith_dot_vec2_u32(var_0.xx, _wgslsmith_sub_vec2_u32(firstTrailingBit(u_input.d.yz), ~u_input.c))) << (vec4<u32>(~(1u & _wgslsmith_mod_u32(15220u, u_input.d.x)), _wgslsmith_div_u32(47301u, 1u), 4294967295u, 43140u) % vec4<u32>(32u));
    return Struct_3(var_1.a, _wgslsmith_div_i32(firstTrailingBit(_wgslsmith_sub_i32(49238i, 1i)), select(_wgslsmith_sub_i32(-1i, arg_0), arg_2.b, false)), var_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(~_wgslsmith_mult_i32(abs(max(2147483647i, -1i)), func_1(Struct_1(vec2<bool>(false, true), false, vec2<f32>(-1332f, -1000f), true, 199f), Struct_1(vec2<bool>(false, true), false, vec2<f32>(-142f, 1308f), true, 2332f), any(vec2<bool>(false, false)), all(vec2<bool>(false, false)))), Struct_2(65260u, vec4<i32>(-1i, -3032i, -min(2147483647i, 19243i), _wgslsmith_sub_i32(_wgslsmith_mod_i32(-37073i, 67217i), countOneBits(18551i))), _wgslsmith_clamp_i32(6267i, abs(1978i << (0u % 32u)), -30423i), firstTrailingBit(_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(u_input.d.x, 1845u, global0.x, global0.x)))), Struct_3(Struct_1(!select(vec2<bool>(true, true), vec2<bool>(false, false), true), true & all(vec4<bool>(true, false, true, false)), vec2<f32>(-2659f, 237f), true, -299f), ~7203i, true));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1224f, var_0.a.c.x))));
    var_0 = func_4(firstTrailingBit(~(i32(-1i) * -var_0.b)), Struct_2(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(max(u_input.d.ww, vec2<u32>(1u, u_input.d.x)), ~u_input.c), 62458u, ~global0.x), vec4<i32>(43029i, var_0.b, ~(-3897i | var_0.b), func_2()), var_0.b, abs(41610u)), func_4(_wgslsmith_dot_vec4_i32(~vec4<i32>(0i, 29204i, var_0.b, 1i), firstTrailingBit(vec4<i32>(var_0.b, -4361i, var_0.b, var_0.b))), Struct_2(~(~u_input.b), reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(-47668i, 1i, var_0.b, var_0.b), vec4<i32>(var_0.b, var_0.b, var_0.b, 6974i))), 6891i, abs(~global0.x)), Struct_3(var_0.a, var_0.b, !(1i < var_0.b))));
    var_0 = Struct_3(func_4(countOneBits(func_1(func_4(var_0.b, Struct_2(20207u, vec4<i32>(-55417i, -19273i, -1i, var_0.b), var_0.b, 118549u), Struct_3(var_0.a, 0i, true)).a, Struct_1(var_0.a.a, var_0.c, vec2<f32>(459f, -606f), true, var_1.x), var_0.c, false)), Struct_2(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(1u, 4294967295u)), 15504u), -vec4<i32>(3472i, 1i, 1i, var_0.b) | abs(vec4<i32>(2147483647i, var_0.b, var_0.b, var_0.b)), -1i, u_input.e), func_4(1i, Struct_2(u_input.d.x, abs(vec4<i32>(var_0.b, 6147i, var_0.b, var_0.b)), func_2(), 4114u << (u_input.d.x % 32u)), Struct_3(Struct_1(var_0.a.a, var_0.a.b, vec2<f32>(var_0.a.e, 337f), var_0.c, var_1.x), var_0.b, !var_0.c))).a, (~var_0.b >> (_wgslsmith_mod_u32(max(38437u, 8436u), _wgslsmith_add_u32(global0.x, global0.x)) % 32u)) & reverseBits(var_0.b), !all(select(vec2<bool>(var_0.c, false), !vec2<bool>(false, var_0.c), true | var_0.a.b)));
    global0 = _wgslsmith_add_vec2_u32(~countOneBits(_wgslsmith_sub_vec2_u32(u_input.c, u_input.c)) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(abs(u_input.c.x), u_input.c.x), ~_wgslsmith_clamp_vec2_u32(u_input.d.zz, vec2<u32>(26601u, 30583u), u_input.d.ww)) % vec2<u32>(32u)), max(~(~max(vec2<u32>(4294967295u, 1u), vec2<u32>(u_input.a, u_input.d.x))), u_input.d.wy));
    let x = u_input.a;
    s_output = StorageBuffer(-(~vec4<i32>(-2147483647i, var_0.b, i32(-1i) * -6998i, var_0.b ^ 37756i)));
}

