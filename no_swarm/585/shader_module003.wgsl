struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec2<u32>,
    d: vec4<i32>,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(0u, 12291u);

var<private> global1: vec4<f32> = vec4<f32>(246f, 1242f, 494f, -490f);

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec2<bool>(true, false), 146f, vec2<u32>(16449u, 1u), vec4<i32>(-1i, 0i, -1i, -32532i), true), Struct_1(vec2<bool>(false, true), -929f, vec2<u32>(91152u, 92918u), vec4<i32>(-34229i, 24759i, 1i, i32(-2147483648)), true), Struct_1(vec2<bool>(false, false), -1346f, vec2<u32>(26099u, 19495u), vec4<i32>(-1i, i32(-2147483648), 1i, 0i), false), Struct_1(vec2<bool>(false, true), 639f, vec2<u32>(4294967295u, 21143u), vec4<i32>(17954i, 1i, 2147483647i, 2147483647i), false), Struct_1(vec2<bool>(false, true), 574f, vec2<u32>(39619u, 13504u), vec4<i32>(-1i, -15988i, -12546i, i32(-2147483648)), false), Struct_1(vec2<bool>(false, false), -795f, vec2<u32>(17611u, 0u), vec4<i32>(12944i, -5166i, -229i, 2147483647i), false), Struct_1(vec2<bool>(false, false), -1116f, vec2<u32>(0u, 4294967295u), vec4<i32>(0i, 65692i, -40799i, 1i), false), Struct_1(vec2<bool>(false, true), -1616f, vec2<u32>(17110u, 4294967295u), vec4<i32>(-8969i, -1937i, -66736i, 2147483647i), true), Struct_1(vec2<bool>(true, false), -718f, vec2<u32>(34475u, 4294967295u), vec4<i32>(i32(-2147483648), 1i, 2147483647i, 2147483647i), true), Struct_1(vec2<bool>(true, true), -658f, vec2<u32>(8534u, 0u), vec4<i32>(0i, 2147483647i, 0i, -10835i), false), Struct_1(vec2<bool>(false, true), -599f, vec2<u32>(43830u, 1u), vec4<i32>(-30237i, 4706i, -7060i, 4234i), true), Struct_1(vec2<bool>(true, true), 678f, vec2<u32>(0u, 0u), vec4<i32>(i32(-2147483648), -65312i, 5180i, 15779i), true), Struct_1(vec2<bool>(false, true), -1477f, vec2<u32>(0u, 0u), vec4<i32>(2147483647i, 1i, 0i, i32(-2147483648)), false), Struct_1(vec2<bool>(true, true), 2010f, vec2<u32>(4294967295u, 0u), vec4<i32>(-28389i, 1i, i32(-2147483648), i32(-2147483648)), true), Struct_1(vec2<bool>(true, false), 1077f, vec2<u32>(9049u, 62840u), vec4<i32>(33148i, 0i, 0i, -7545i), false), Struct_1(vec2<bool>(false, false), -914f, vec2<u32>(1u, 73569u), vec4<i32>(2147483647i, -11543i, i32(-2147483648), 1i), true), Struct_1(vec2<bool>(true, false), -569f, vec2<u32>(4032u, 0u), vec4<i32>(2147483647i, 0i, i32(-2147483648), 2147483647i), true), Struct_1(vec2<bool>(true, false), -628f, vec2<u32>(4294967295u, 23118u), vec4<i32>(-1i, -24629i, -18038i, 1i), false), Struct_1(vec2<bool>(true, true), 1295f, vec2<u32>(0u, 99130u), vec4<i32>(-1i, i32(-2147483648), 1i, -7248i), false), Struct_1(vec2<bool>(true, false), -1111f, vec2<u32>(0u, 42689u), vec4<i32>(0i, 0i, 16801i, 3197i), false), Struct_1(vec2<bool>(true, false), -221f, vec2<u32>(1u, 70529u), vec4<i32>(i32(-2147483648), 1i, 0i, i32(-2147483648)), true), Struct_1(vec2<bool>(true, true), -151f, vec2<u32>(1u, 64329u), vec4<i32>(13926i, 8237i, 27151i, 39740i), false));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec4<i32>, arg_2: vec2<bool>) -> bool {
    var var_0 = Struct_1(arg_2, 1000f, firstTrailingBit(vec2<u32>(max(~global2.c.x, 1u), ~u_input.a.x)), global2.d >> (_wgslsmith_mod_vec4_u32(~(~vec4<u32>(global2.c.x, u_input.a.x, u_input.a.x, 44682u)), vec4<u32>(global2.c.x, max(global2.c.x, global2.c.x), u_input.a.x, _wgslsmith_div_u32(u_input.a.x, global2.c.x))) % vec4<u32>(32u)), arg_2.x);
    global2 = global3[_wgslsmith_index_u32(global0.x, 22u)];
    var_0 = Struct_1(global2.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2.b))), abs(var_0.c), _wgslsmith_mod_vec4_i32(abs(global2.d) | vec4<i32>(1i, -5040i, _wgslsmith_add_i32(global2.d.x, arg_1.x), -14519i), countOneBits(-vec4<i32>(var_0.d.x, arg_0, 1i, -31329i))), any(select(global2.a, select(select(var_0.a, vec2<bool>(true, global2.a.x), var_0.a), select(arg_2, var_0.a, var_0.e), false), global2.a)));
    let var_1 = global3[_wgslsmith_index_u32(~global2.c.x, 22u)];
    var var_2 = global3[_wgslsmith_index_u32(abs(~(~abs(var_0.c.x) ^ ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c.x, var_1.c.x, u_input.a.x), vec3<u32>(49359u, u_input.a.x, 10837u)))), 22u)];
    return !var_2.a.x;
}

fn func_2() -> vec2<u32> {
    global1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(2346f)), 261f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b) * _wgslsmith_div_f32(-1211f, -241f)), -1100f))));
    let var_0 = !(!(u_input.a.x < _wgslsmith_mult_u32(global0.x, 50839u)) & !(!func_3(global2.d.x, global2.d, global2.a)));
    var var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(firstLeadingBit(global0.x), ~firstLeadingBit(global0.x), 10561u >> (_wgslsmith_sub_u32(global2.c.x & 37342u, u_input.a.x) % 32u)), vec3<u32>(1u, ~1u, 21852u));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(384f, -1282f)), _wgslsmith_f_op_f32(f32(-1f) * -743f), true)) * _wgslsmith_f_op_f32(min(global2.b, _wgslsmith_f_op_f32(sign(-1199f))))))) + -172f);
    let var_3 = true;
    return ~u_input.a;
}

fn func_1() -> vec2<u32> {
    let var_0 = global2.c;
    global0 = ~global2.c;
    global0 = reverseBits(~func_2());
    global0 = u_input.a | firstLeadingBit(~vec2<u32>(22638u, 4294967295u & u_input.a.x));
    global2 = Struct_1(select(vec2<bool>(any(select(vec3<bool>(global2.a.x, true, false), vec3<bool>(false, true, true), false)), any(!vec4<bool>(global2.e, global2.a.x, global2.a.x, global2.a.x))), vec2<bool>(true, true || (var_0.x > 23225u)), all(!global2.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.b + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global2.b)) - global1.x)) * 320f), u_input.a, global2.d, !(!(global1.x < _wgslsmith_div_f32(1000f, global1.x))));
    return ~(~vec2<u32>(~(4294967295u >> (0u % 32u)), abs(_wgslsmith_mult_u32(0u, 9611u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    var var_0 = Struct_1(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, global2.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-127f * _wgslsmith_f_op_f32(-2067f + _wgslsmith_f_op_f32(global1.x + 140f)))), vec2<u32>(~global0.x, ~(~select(4294967295u, 1u, global2.e))), vec4<i32>(select(-global2.d.x, _wgslsmith_add_i32(global2.d.x & 0i, ~global2.d.x), global2.a.x || global2.a.x), 9058i, ~_wgslsmith_clamp_i32(~(-53683i), -11332i, 1i), ~(-30716i)), !(!(true && global2.a.x)));
    global0 = vec2<u32>(max(~0u, _wgslsmith_mult_u32(var_0.c.x >> (10037u % 32u), _wgslsmith_add_u32(u_input.a.x, 6786u))) ^ global2.c.x, ~4294967295u);
    let var_1 = abs(vec4<u32>(_wgslsmith_add_u32(69831u, var_0.c.x), _wgslsmith_sub_u32(var_0.c.x, max(_wgslsmith_sub_u32(global2.c.x, 78609u), _wgslsmith_add_u32(global2.c.x, 85428u))), global0.x, 4294967295u));
    let var_2 = global3[_wgslsmith_index_u32(var_1.x, 22u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(283f * global2.b))), -(~var_2.d.xxw) & (global2.d.xxy >> (~var_1.yyz % vec3<u32>(32u))));
}

