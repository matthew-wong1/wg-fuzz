struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<f32>,
    d: bool,
    e: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: u32,
    d: vec2<f32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: u32;

var<private> global2: vec2<u32>;

var<private> global3: Struct_3;

var<private> global4: i32 = 0i;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: bool) -> u32 {
    global4 = _wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.d, u_input.a.x), ~(-1i));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(832f - _wgslsmith_f_op_f32(-global3.d.x)));
    var var_1 = Struct_2(global3.a.c.x, global3.e.x);
    global0 = (~_wgslsmith_dot_vec3_u32(~vec3<u32>(global2.x, global2.x, u_input.b.x), ~vec3<u32>(1u, global3.c, 0u)) >> (4294967295u % 32u)) >> (firstTrailingBit(~0u) % 32u);
    var var_2 = global3.a.e.x;
    return u_input.e.x;
}

fn func_3(arg_0: bool) -> u32 {
    let var_0 = global3.a;
    let var_1 = Struct_3(global3.a, global3.b, 4294967295u, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-379f, _wgslsmith_f_op_f32(global3.d.x * global3.d.x)))), vec2<f32>(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-281f)))), global3.e.wx)), !(!global3.e));
    let var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_1.a.a)), var_1.d.x), var_1.a.e.x, _wgslsmith_div_vec3_f32(vec3<f32>(-1607f, -783f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.a)) - -675f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(297f, 241f, var_0.c.x)))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(global3.a.c)))))), all(select(var_1.e.xy, !vec2<bool>(arg_0, false), select(global3.e.yz, !global3.e.ww, true))), vec2<i32>(_wgslsmith_mod_i32(2147483647i, u_input.c), 0i));
    var var_3 = var_1;
    global0 = ~14921u;
    return ~((0u | (func_1(true) >> (37410u % 32u))) ^ 4294967295u);
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec2<bool>) -> u32 {
    global3 = Struct_3(Struct_1(-1393f, -(-17558i & _wgslsmith_mult_i32(arg_1.e.x, arg_1.e.x)), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(559f, -227f)), _wgslsmith_f_op_f32(1000f + arg_1.c.x)), global3.d.x, _wgslsmith_f_op_f32(floor(global3.d.x))), all(global3.e.xyy) | false, arg_1.e), global3.b, ~global3.c, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.c.zy))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global3.d, vec2<f32>(-1000f, 1000f)))))), global3.e);
    global2 = vec2<u32>(~func_3(global3.b.b && true), 17279u);
    let var_0 = ~firstLeadingBit(countOneBits(abs(arg_0 & global2.x)));
    var var_1 = arg_1.a;
    var var_2 = vec3<i32>(~0i, min(~max(1i, -32727i), global3.a.b), _wgslsmith_div_i32(arg_1.e.x, reverseBits(39303i) >> (~(~global2.x) % 32u)));
    return 35800u;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<i32>) -> Struct_2 {
    global3 = Struct_3(global3.a, Struct_2(1f, global3.b.b || all(global3.e.yzw)), ~1u, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.b.a, _wgslsmith_f_op_f32(-global3.a.a)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(global3.d)))), global3.d), select(!vec4<bool>(all(vec3<bool>(global3.b.b, false, global3.b.b)), false, !global3.b.b, true), vec4<bool>(any(vec4<bool>(global3.b.b, true, global3.a.d, global3.e.x)), false, all(global3.e.wwx), global3.e.x), vec4<bool>(all(select(global3.e.xzy, global3.e.xwx, global3.a.d)), true, global3.a.d, true)));
    global2 = vec2<u32>(func_1(global3.b.b) >> (func_4(func_3(false), global3.a, select(global3.e.yz, global3.e.yw, true)) % 32u), ~(~(_wgslsmith_clamp_u32(4294967295u, 4294967295u, u_input.b.x) | (global3.c | global2.x))));
    global4 = -arg_0.x;
    let var_0 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(792f)))), false);
    global3 = Struct_3(Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-480f)), -580f)))), select(~(-arg_0.x), 0i, global3.e.x & false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1132f, -101f, 475f), _wgslsmith_f_op_vec3_f32(-global3.a.c)))), true, max(u_input.a.wz, max(-arg_0.xz, select(vec2<i32>(6953i, global3.a.e.x), global3.a.e, global3.a.d)))), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1815f), true), global2.x, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(global3.a.c.zx + vec2<f32>(1155f, -2349f)))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(517f, var_0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a + var_0.a)))), select(global3.e, !(!global3.e), vec4<bool>(global3.a.d, global3.b.b, !global3.e.x, var_0.b)));
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.a, -347f, false)))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.b.a, _wgslsmith_f_op_f32(-262f - 1000f)))), global3.b.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_u32(firstLeadingBit(global2.x), global3.c);
    global2 = u_input.e.wx;
    let var_1 = true;
    global3 = Struct_3(global3.a, func_2(vec3<i32>(~(global3.a.b | u_input.c), global3.a.b, u_input.d << (func_1(false) % 32u)), _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.a, u_input.a, u_input.a), -vec4<i32>(0i, -2147483647i, global3.a.e.x, -1i)) << (u_input.b % vec4<u32>(32u))), ~var_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-195f, 1060f))))), !(!global3.e));
    var var_2 = Struct_3(Struct_1(_wgslsmith_f_op_f32(max(536f, global3.a.a)), _wgslsmith_dot_vec3_i32(vec3<i32>(abs(u_input.d), -2147483647i, -1i), vec3<i32>(_wgslsmith_add_i32(-1i, u_input.d), 1i, firstLeadingBit(31989i))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(561f, global3.d.x))), global3.b.a), var_1, _wgslsmith_sub_vec2_i32(-u_input.a.zw | vec2<i32>(global3.a.e.x, -9379i), abs(u_input.a.zx))), func_2(u_input.a.xwx, _wgslsmith_mult_vec4_i32(-u_input.a, _wgslsmith_mult_vec4_i32(vec4<i32>(32589i, -17319i, 24058i, -29561i), vec4<i32>(global3.a.b, global3.a.b, global3.a.b, u_input.d))) ^ vec4<i32>(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(34006i, global3.a.e.x, -48219i, global3.a.e.x), u_input.a), abs(-2147483647i), global3.a.e.x)), 0u, vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.a)))), global3.b.a), vec4<bool>(func_2(vec3<i32>(-2147483647i, global3.a.b, 0i), reverseBits(u_input.a)).b & false, func_2(-_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, global3.a.e.x, 21629i), u_input.a.ywz), u_input.a).b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(637f, global3.d.x)) >= -473f, false | !global3.a.d));
    global0 = _wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(global2.x, firstTrailingBit(u_input.b.x)), global2.x, 1u), global3.c), var_2.c);
    global1 = 0u;
    var var_3 = !select(var_2.e.wy, vec2<bool>(false, !global3.a.d), var_2.e.x && true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(step(global3.a.c, global3.a.c)));
}

