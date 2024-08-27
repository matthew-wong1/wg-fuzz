struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: u32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_3,
    d: i32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(vec2<u32>(4294967295u, 48991u), vec4<f32>(947f, 434f, -1744f, 1382f));

var<private> global1: Struct_3;

var<private> global2: array<Struct_3, 29>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: u32) -> i32 {
    var var_0 = all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), true)) & ((!(-435f != global0.b.x) & false) || select(true, any(vec4<bool>(true, true, true, true)), true));
    var var_1 = all(vec4<bool>(all(select(vec2<bool>(false, false), vec2<bool>(true, true), true)), true, (_wgslsmith_sub_u32(global0.a.x, 4294967295u) >= abs(4294967295u)) || false, true));
    var var_2 = false;
    let var_3 = Struct_3(arg_2, _wgslsmith_mult_i32(-(~global1.b), 0i), 4294967295u);
    let var_4 = Struct_4(vec4<bool>(global0.b.x <= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-1366f, -1544f)))), true, any(vec3<bool>(all(vec4<bool>(true, false, true, false)), any(vec4<bool>(false, true, false, true)), arg_1 > -48246i)), global1.a <= 5072u), Struct_1(global0.b.x), Struct_3(u_input.b, var_3.b | ((33489i & arg_1) & _wgslsmith_div_i32(global1.b, arg_1)), var_3.c), max(~abs(2147483647i & global1.b), countOneBits(37518i)));
    return 0i;
}

fn func_2(arg_0: Struct_5) -> Struct_5 {
    let var_0 = _wgslsmith_clamp_i32(countOneBits(-1i), -func_3(countOneBits(-2636i), _wgslsmith_div_i32(global1.b, 6163i), global1.c << (1u % 32u)) | 1683i, _wgslsmith_mod_i32(-_wgslsmith_mult_i32(1i, 9470i), -2147483647i));
    var var_1 = arg_0;
    let var_2 = u_input.c;
    var var_3 = Struct_4(vec4<bool>(false, !all(vec4<bool>(true, true, true, false)), !(!all(vec2<bool>(true, true))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.b.x))) != _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-1080f, -317f)), _wgslsmith_f_op_f32(-arg_0.b.x), all(vec2<bool>(true, false))))), Struct_1(-1562f), global2[_wgslsmith_index_u32(global1.c, 29u)], -1i);
    global0 = Struct_5(select(abs(_wgslsmith_sub_vec2_u32(abs(vec2<u32>(arg_0.a.x, arg_0.a.x)), _wgslsmith_div_vec2_u32(vec2<u32>(var_1.a.x, global1.c), vec2<u32>(u_input.b, var_3.c.a)))), countOneBits(var_1.a), all(vec4<bool>(var_3.a.x, !var_3.a.x, var_1.b.x != 471f, any(var_3.a.zy)))), _wgslsmith_div_vec4_f32(global0.b, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.b.x, var_3.b.a, arg_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1611f))))));
    return Struct_5(vec2<u32>(var_3.c.c, var_1.a.x) | ~vec2<u32>(~19385u, _wgslsmith_div_u32(arg_0.a.x, global1.c)), _wgslsmith_f_op_vec4_f32(floor(arg_0.b)));
}

fn func_4(arg_0: Struct_5, arg_1: u32) -> Struct_3 {
    let var_0 = countOneBits(~(~vec4<u32>(4294967295u, max(1u, arg_0.a.x), firstLeadingBit(55268u), u_input.b)));
    var var_1 = Struct_3(53861u, ~_wgslsmith_add_i32(abs(u_input.c.x), global1.b), firstLeadingBit(global1.a));
    var var_2 = _wgslsmith_dot_vec4_u32(~vec4<u32>(select(~71572u, 4294967295u, true), ~(~35761u), (45814u & arg_1) | u_input.b, ~(global0.a.x & global0.a.x)), var_0);
    let var_3 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~_wgslsmith_mod_u32(min(69156u, ~var_1.c), var_1.a), ~_wgslsmith_div_u32(0u, ~select(var_1.a, var_0.x, false))), 29u)];
    var_2 = select(countOneBits(_wgslsmith_dot_vec4_u32(var_0, var_0)), _wgslsmith_div_u32(_wgslsmith_div_u32(10477u, global1.a), arg_0.a.x << (~select(37718u, var_0.x, true) % 32u)), any(vec4<bool>(true, true, true, true)));
    return Struct_3(u_input.b, var_3.b, ~(~(~99285u & _wgslsmith_dot_vec4_u32(var_0, vec4<u32>(55538u, 102444u, arg_1, var_1.a)))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_5, arg_2: vec2<f32>, arg_3: vec3<u32>) -> Struct_2 {
    let var_0 = arg_1;
    global0 = func_2(var_0);
    let var_1 = Struct_4(vec4<bool>(u_input.c.x >= func_4(arg_1, ~global0.a.x).b, all(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true))) | true, true, true), Struct_1(196f), Struct_3(41771u, -19450i, u_input.a), _wgslsmith_div_i32(arg_0.b << (_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(40344u, arg_3.x, global0.a.x), arg_3), 38915u) % 32u), arg_0.b));
    let var_2 = all(var_1.a.yxw);
    global1 = func_4(Struct_5(vec2<u32>(var_0.a.x, global1.c), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(1717f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.b.a + -323f), 525f), arg_1.b.x, -225f)), _wgslsmith_mod_u32(1u, max(firstTrailingBit(41u), min(_wgslsmith_clamp_u32(arg_3.x, 1u, 15567u), 1u))));
    return Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1.b.a, global0.b.x), vec2<f32>(var_0.b.x, arg_2.x))) - _wgslsmith_f_op_vec2_f32(select(arg_1.b.xx, arg_1.b.xy, vec2<bool>(var_1.a.x, var_1.a.x))))) - _wgslsmith_f_op_vec2_f32(round(arg_2))));
}

fn func_6(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_2) -> vec3<bool> {
    let var_0 = Struct_4(!vec4<bool>(true, all(vec3<bool>(true, true, true)), false, true), Struct_1(arg_0), Struct_3(~arg_1.x, -u_input.c.x, 36989u), _wgslsmith_mod_i32(global1.b, ~(-u_input.c.x & 12611i)));
    var var_1 = var_0.b;
    let var_2 = _wgslsmith_div_vec3_f32(global0.b.xyw, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global0.b.xxy), vec3<f32>(var_1.a, 1179f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a))), !select(!var_0.a.xzx, vec3<bool>(false, var_0.a.x, true), false))));
    var var_3 = var_0.b;
    global0 = func_2(func_2(Struct_5(vec2<u32>(~arg_1.x, global0.a.x), vec4<f32>(var_2.x, 114f, arg_0, var_1.a))));
    return var_0.a.xzz;
}

fn func_1() -> bool {
    global2 = array<Struct_3, 29>();
    var var_0 = !func_6(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.x - global0.b.x) - 305f))), vec3<u32>(36766u, u_input.b, 1u), func_5(func_4(func_2(Struct_5(global0.a, global0.b)), 40866u), func_2(Struct_5(vec2<u32>(global0.a.x, global1.c), global0.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-2159f, 215f), global0.b.xy)), firstLeadingBit(abs(vec3<u32>(57321u, global0.a.x, 1u)))));
    global0 = func_2(func_2(Struct_5(vec2<u32>(4294967295u << (global1.a % 32u), ~4294967295u), global0.b)));
    var var_1 = global0.b;
    let var_2 = vec3<u32>(1148u, _wgslsmith_mod_u32(27846u, ~global1.c), global0.a.x);
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(global1.a ^ global0.a.x, 29u)];
    var var_1 = global0.b.zw;
    let var_2 = all(select(select(vec3<bool>(true, false, true), vec3<bool>(true, select(false, true, false), true), _wgslsmith_f_op_f32(select(1000f, global0.b.x, true)) <= 601f), !select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true)), vec3<bool>(func_1(), 66566u > ~var_0.c, func_6(var_1.x, _wgslsmith_mod_vec3_u32(vec3<u32>(var_0.a, u_input.b, 13937u), vec3<u32>(u_input.b, global0.a.x, 0u)), Struct_2(global0.b.wx)).x)));
    var var_3 = Struct_3(global0.a.x, -1i, _wgslsmith_clamp_u32(4294967295u, ~63735u, u_input.a));
    global0 = Struct_5(~global0.a, global0.b);
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-920f, global0.b.x) - -691f);
    let var_5 = vec3<bool>(var_2, any(func_6(_wgslsmith_f_op_f32(f32(-1f) * -598f), vec3<u32>(global1.c, _wgslsmith_mult_u32(u_input.b, global0.a.x), var_3.c), Struct_2(vec2<f32>(976f, -772f)))), func_1());
    global0 = func_2(func_2(Struct_5(reverseBits(vec2<u32>(global0.a.x, var_0.c) | global0.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(global0.b))))));
    let var_6 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.b)), firstLeadingBit(_wgslsmith_sub_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, -1i, u_input.c.x, var_3.b), vec4<i32>(var_0.b, 2147483647i, -64606i, global1.b)), ~(~vec4<i32>(0i, 5233i, 0i, var_3.b)))), -var_0.b ^ ~firstTrailingBit(~(-4284i)));
}

