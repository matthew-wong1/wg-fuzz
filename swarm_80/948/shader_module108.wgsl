struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 551f;

var<private> global1: i32;

var<private> global2: array<f32, 16>;

var<private> global3: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(42467u, -26736i, 24701u), Struct_1(42221u, 0i, 4294967295u), Struct_1(0u, i32(-2147483648), 1u), Struct_1(36421u, -1i, 29391u), Struct_1(23275u, -1i, 9102u), Struct_1(4294967295u, -78863i, 0u), Struct_1(0u, -8292i, 11154u), Struct_1(26749u, 2147483647i, 4294967295u), Struct_1(4294967295u, -31891i, 92125u), Struct_1(72281u, 16133i, 91502u), Struct_1(0u, 0i, 91840u), Struct_1(1u, -1i, 55603u), Struct_1(4294967295u, -5883i, 0u), Struct_1(29109u, -1i, 1u), Struct_1(4294967295u, 51686i, 0u), Struct_1(4294967295u, 1105i, 37037u), Struct_1(4294967295u, 0i, 4294967295u), Struct_1(3430u, 2147483647i, 86593u), Struct_1(4294967295u, i32(-2147483648), 0u), Struct_1(3597u, -1i, 1u), Struct_1(1u, -19000i, 67947u), Struct_1(1u, -3711i, 67147u), Struct_1(59027u, -20924i, 40264u), Struct_1(0u, i32(-2147483648), 1u));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: bool) -> u32 {
    var var_0 = ~(~1u);
    var var_1 = Struct_1(reverseBits(_wgslsmith_clamp_u32(abs(_wgslsmith_dot_vec2_u32(u_input.c.xx, u_input.c.zx)), min(firstTrailingBit(0u), 0u), _wgslsmith_dot_vec2_u32(abs(u_input.c.yy), ~vec2<u32>(u_input.c.x, 4294967295u)))), countOneBits(u_input.d), u_input.c.x);
    let var_2 = Struct_1(reverseBits(4294967295u), ~_wgslsmith_add_i32(max(~(-2147483647i), max(7621i, u_input.d)), arg_0), ~(~(u_input.c.x << (var_1.a % 32u))) >> (countOneBits(var_1.a) % 32u));
    let var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f + global2[_wgslsmith_index_u32(1u, 16u)])))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -331f)))), global2[_wgslsmith_index_u32(76173u, 16u)]));
    let var_4 = ~_wgslsmith_sub_i32(var_2.b, -(i32(-1i) * -1i));
    return 1u;
}

fn func_2(arg_0: Struct_1) -> u32 {
    var var_0 = arg_0.b;
    global0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.c.x, 16u)] * global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c.x, 65487u), 16u)])));
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(64605u, arg_0.a) >> (~u_input.c.x % 32u), 16u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 16u)])), global2[_wgslsmith_index_u32(~u_input.c.x, 16u)], _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-1193f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(0u, 16u)])), -577f, global2[_wgslsmith_index_u32(u_input.c.x, 16u)], _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(41382u, 16u)] - global2[_wgslsmith_index_u32(1u, 16u)])))), (4294967295u != ~_wgslsmith_add_u32(arg_0.c, u_input.c.x)) | true));
    var var_2 = arg_0;
    global1 = arg_0.b;
    return ~61482u >> ((_wgslsmith_mult_u32(firstLeadingBit(~59465u), _wgslsmith_mod_u32(_wgslsmith_add_u32(4294967295u, 0u), _wgslsmith_mult_u32(arg_0.c, 4294967295u))) >> (select(func_3(-u_input.e.x, true), arg_0.c, true) % 32u)) % 32u);
}

fn func_4(arg_0: u32, arg_1: u32) -> vec3<f32> {
    var var_0 = -32733i;
    global2 = array<f32, 16>();
    let var_1 = 1u;
    let var_2 = any(vec4<bool>((all(vec3<bool>(true, true, false)) & false) | (~u_input.c.x == _wgslsmith_div_u32(u_input.c.x, 67691u)), true, select(true, true, !(arg_1 >= 48451u)), !(u_input.a.x >= u_input.a.x) | true));
    var var_3 = vec2<u32>(func_3(u_input.d, all(vec4<bool>(var_2, var_2, true, true))), ~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~u_input.c, u_input.c), firstLeadingBit(vec3<u32>(1u, 164991u, 0u) << (vec3<u32>(var_1, 31863u, arg_0) % vec3<u32>(32u)))));
    return _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(1475f)), -1237f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(1u, 16u)])), _wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(var_3.x, 16u)])))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1134f, -672f, -118f) + vec3<f32>(-274f, global2[_wgslsmith_index_u32(5703u, 16u)], -1545f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(1u, 16u)], global2[_wgslsmith_index_u32(var_3.x, 16u)], 435f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-567f, 476f, 976f) + vec3<f32>(672f, 946f, global2[_wgslsmith_index_u32(2211u, 16u)])) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global2[_wgslsmith_index_u32(var_3.x, 16u)], global2[_wgslsmith_index_u32(arg_1, 16u)], 840f))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(459f, 686f, 1039f) * vec3<f32>(global2[_wgslsmith_index_u32(var_1, 16u)], 1000f, -1000f))))))));
}

fn func_1() -> Struct_1 {
    global1 = _wgslsmith_div_i32(u_input.b.x, _wgslsmith_add_i32(-u_input.e.x, -40130i));
    let var_0 = false && !any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), select(false, false, true)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, 0u), func_2(global3[_wgslsmith_index_u32(29187u, 24u)]))))) + vec3<f32>(-1591f, 595f, _wgslsmith_f_op_f32(round(-1232f)))));
    return global3[_wgslsmith_index_u32(89375u, 24u)];
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> bool {
    var var_0 = Struct_1(~(u_input.c.x << ((u_input.c.x ^ 1u) % 32u)), min(arg_1.b & _wgslsmith_dot_vec3_i32(~u_input.a, vec3<i32>(0i, 0i, -7219i) | u_input.a), 0i), u_input.c.x);
    var_0 = Struct_1(~abs(func_3(-var_0.b, global2[_wgslsmith_index_u32(arg_1.c, 16u)] >= global2[_wgslsmith_index_u32(u_input.c.x, 16u)])), u_input.e.x, func_2(func_1()));
    var var_1 = ~abs(vec3<i32>(-25130i, arg_1.b, firstTrailingBit(-2147483647i)));
    var var_2 = select(true, true, true);
    let var_3 = _wgslsmith_div_vec2_u32(max(u_input.c.yy, vec2<u32>(_wgslsmith_add_u32(~4294967295u, _wgslsmith_div_u32(arg_0.c, 57850u)), var_0.a)), _wgslsmith_add_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(arg_1.a, 3342u), ~vec2<u32>(var_0.a, var_0.c)), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, arg_1.a) | select(u_input.c.zz, u_input.c.zx, vec2<bool>(arg_2, false)), vec2<u32>(4294967295u & var_0.a, ~arg_0.a))));
    return arg_2;
}

fn func_6(arg_0: Struct_1, arg_1: vec3<bool>) -> Struct_1 {
    let var_0 = 1792f;
    var var_1 = func_1();
    var var_2 = !vec2<bool>(!arg_1.x, any(arg_1) && arg_1.x);
    global1 = arg_0.b;
    let var_3 = arg_0;
    return Struct_1(var_3.a, 0i, ~77719u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.yz;
    var var_1 = ~u_input.c.x;
    var var_2 = global3[_wgslsmith_index_u32(~(~35574u), 24u)];
    let var_3 = func_6(Struct_1(u_input.c.x, -1i, 10578u), vec3<bool>(~var_2.b != abs(~u_input.a.x), func_5(Struct_1(1u, 34540i, ~u_input.c.x), func_1(), false & all(vec2<bool>(false, false))), func_5(global3[_wgslsmith_index_u32(func_1().a, 24u)], func_1(), true)));
    var var_4 = 0u;
    var var_5 = Struct_1(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(min(u_input.c, _wgslsmith_sub_vec3_u32(vec3<u32>(4511u, 51260u, 54442u), vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x))), _wgslsmith_clamp_vec3_u32(~vec3<u32>(var_0.x, var_2.a, var_3.a), u_input.c, vec3<u32>(var_2.a, u_input.c.x, var_3.c))), ~max(~71303u, 1u)), 28723i, func_6(Struct_1(~func_2(Struct_1(var_2.c, u_input.b.x, var_2.c)), u_input.b.x, ~1u), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true)).a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(u_input.e.xw, firstTrailingBit(firstLeadingBit(min(vec2<i32>(var_5.b, 40906i), vec2<i32>(var_5.b, 0i))))), vec4<i32>(_wgslsmith_mult_i32(29267i, 0i), -47305i, ~u_input.b.x, max(28910i, _wgslsmith_add_i32(1i & var_2.b, 2147483647i))), min(u_input.e, ~_wgslsmith_mult_vec4_i32(u_input.e, u_input.e)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-716f, global2[_wgslsmith_index_u32(var_2.c, 16u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-146f, global2[_wgslsmith_index_u32(var_5.a, 16u)])) + _wgslsmith_div_f32(global2[_wgslsmith_index_u32(var_5.a, 16u)], 730f)))));
}

