struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_1 = Struct_1(4294967295u, vec4<i32>(2147483647i, 66819i, -16303i, 12894i), vec3<i32>(i32(-2147483648), -35970i, 2147483647i));

var<private> global2: u32 = 1u;

var<private> global3: Struct_2 = Struct_2(vec4<bool>(false, true, false, true), 25576u);

var<private> global4: array<Struct_2, 17>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: vec4<f32>, arg_3: vec2<f32>) -> f32 {
    global3 = Struct_2(!vec4<bool>(global0.a.x, true, any(vec3<bool>(global0.a.x, arg_0.a.x, false)), true), global1.a);
    var var_0 = _wgslsmith_mod_i32(min(_wgslsmith_div_i32(global1.c.x, -35598i), -31407i), _wgslsmith_mult_i32(_wgslsmith_mod_i32(global1.c.x, -2147483647i), -1i) >> (4294967295u % 32u));
    global0 = global4[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(~countOneBits(global0.b), 104312u, _wgslsmith_mult_u32(global1.a, 62883u)), firstTrailingBit(~_wgslsmith_mult_u32(min(0u, 4294967295u), 1u))), 17u)];
    var_0 = global1.b.x & _wgslsmith_mult_i32(i32(-1i) * -29965i, _wgslsmith_clamp_i32(20958i, global1.b.x, max(17212i, 2147483647i) & ~global1.b.x));
    let var_1 = true;
    return -211f;
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -846f)) + _wgslsmith_f_op_f32(func_3(global4[_wgslsmith_index_u32(8799u, 17u)], vec2<f32>(-916f, -335f), vec4<f32>(-724f, 1183f, -742f, 2380f), vec2<f32>(1381f, 463f)))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -150f)), -869f)));
    let var_1 = Struct_1(~global3.b << (~(~(~0u)) % 32u), global1.b, firstLeadingBit(global1.b.ywx));
    var var_2 = var_1.c;
    let var_3 = global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, min(u_input.d, 70780u) << ((abs(~u_input.c.x) & 7767u) % 32u)), 17u)];
    let var_4 = _wgslsmith_sub_u32((abs(~global0.b) << (31002u % 32u)) ^ (~var_3.b ^ u_input.d), _wgslsmith_mod_u32(~(~(~var_3.b)), 17690u));
    return Struct_2(!global3.a, _wgslsmith_dot_vec2_u32(~(~_wgslsmith_div_vec2_u32(vec2<u32>(global3.b, 905u), u_input.c.xw)), ~_wgslsmith_clamp_vec2_u32(~u_input.b.zy, ~u_input.c.xy, ~vec2<u32>(global1.a, 4294967295u))));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>) -> Struct_1 {
    var var_0 = func_2();
    global3 = func_2();
    let var_1 = -10944i;
    let var_2 = func_2();
    var var_3 = _wgslsmith_sub_vec4_i32(min(arg_0.b, global1.b), min(_wgslsmith_mult_vec4_i32(~vec4<i32>(3911i, arg_0.b.x, var_1, 40410i) & -arg_0.b, select(reverseBits(global1.b), vec4<i32>(global1.b.x, -2147483647i, arg_0.b.x, 1i) << (vec4<u32>(global1.a, 0u, global0.b, arg_0.a) % vec4<u32>(32u)), global3.a)), arg_0.b));
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> vec4<i32> {
    var var_0 = vec4<i32>(23992i >> (_wgslsmith_dot_vec4_u32(~abs(vec4<u32>(arg_1, 0u, u_input.a, arg_1)), ~u_input.c) % 32u), global1.b.x, ~((global1.c.x & _wgslsmith_sub_i32(-37110i, arg_2.c.x)) & -18514i), _wgslsmith_add_i32(abs(firstTrailingBit(~(-41613i))), _wgslsmith_add_i32(reverseBits(arg_0.c.x), _wgslsmith_sub_i32(arg_0.b.x, -2147483647i) & 0i)));
    var var_1 = !(!vec2<bool>(false, global3.a.x | !global0.a.x));
    var var_2 = arg_0;
    let var_3 = true;
    global3 = func_2();
    return ~(_wgslsmith_div_vec4_i32(vec4<i32>(arg_2.c.x & 2147483647i, countOneBits(-2147483647i), abs(10552i), -28488i), select(~vec4<i32>(-13285i, arg_2.c.x, global1.c.x, -20153i), max(vec4<i32>(2147483647i, 0i, 28392i, 1i), vec4<i32>(-34452i, var_0.x, var_0.x, arg_2.c.x)), !vec4<bool>(true, false, global3.a.x, var_3))) << (vec4<u32>(_wgslsmith_mod_u32(global0.b, firstTrailingBit(var_2.a)), var_2.a, ~select(arg_2.a, global3.b, true), ~0u) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~_wgslsmith_mult_u32(16475u, _wgslsmith_sub_u32(global3.b, u_input.b.x >> (1437u % 32u))), vec4<i32>(-1i) * -func_4(func_1(Struct_1(global1.a, vec4<i32>(13528i, -1i, 1i, 18225i), global1.c), u_input.c), _wgslsmith_clamp_u32(global3.b, global1.a, u_input.c.x), func_1(Struct_1(global0.b, vec4<i32>(0i, global1.b.x, global1.c.x, global1.c.x), global1.c), u_input.c)), global1.b.xwz);
    let var_1 = ~_wgslsmith_dot_vec4_u32(reverseBits(~vec4<u32>(var_0.a, global0.b, global1.a, u_input.a)), _wgslsmith_mod_vec4_u32(~u_input.c, ~vec4<u32>(global0.b, global0.b, u_input.c.x, 1651u)));
    let var_2 = func_2();
    global2 = ~(~global3.b);
    var var_3 = func_2();
    global3 = func_2();
    var var_4 = Struct_1(~_wgslsmith_div_u32(max(~var_1, func_2().b), var_1), _wgslsmith_mod_vec4_i32(func_4(Struct_1(global3.b & var_2.b, global1.b, vec3<i32>(-7994i, var_0.c.x, -8438i)), 1u, func_1(func_1(Struct_1(var_1, var_0.b, vec3<i32>(global1.b.x, global1.c.x, global1.c.x)), vec4<u32>(1u, 4294967295u, 54910u, 89673u)), _wgslsmith_div_vec4_u32(vec4<u32>(0u, var_0.a, global1.a, var_0.a), u_input.c))), vec4<i32>(1i, _wgslsmith_sub_i32(~var_0.c.x, -2147483647i), ~1i, -_wgslsmith_mod_i32(var_0.c.x, 6094i))), var_0.b.yxz);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(27938u, 4294967295u, 42235u, ~3855u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -779f))), _wgslsmith_f_op_f32(349f - _wgslsmith_f_op_f32(844f - -324f)), -316f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(602f, 869f))))), abs(global1.c.yz));
}

