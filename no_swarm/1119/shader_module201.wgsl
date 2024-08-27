struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: vec4<f32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: u32,
    d: vec2<bool>,
    e: i32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: vec3<bool>,
    d: i32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 2>;

var<private> global1: Struct_2 = Struct_2(vec2<bool>(false, true), Struct_1(false, vec2<bool>(false, true), vec4<f32>(-1983f, 164f, 421f, 1534f), vec2<i32>(-1i, -1i)), 46529u, vec2<bool>(true, true), -18211i);

var<private> global2: array<i32, 31> = array<i32, 31>(i32(-2147483648), i32(-2147483648), -55499i, 14483i, 1i, 29359i, i32(-2147483648), -22220i, 44882i, 14304i, 0i, 40860i, 73648i, 1i, 17099i, i32(-2147483648), -28072i, 3266i, 2147483647i, 684i, -1i, -1i, -44023i, 1i, -9599i, 2147483647i, 1i, 10365i, -18142i, 1i, -65777i);

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec2<bool> {
    let var_0 = Struct_3(vec4<u32>(1u, 0u, 11937u, _wgslsmith_add_u32(11300u, global1.c)), _wgslsmith_mult_vec3_u32(firstTrailingBit(abs(_wgslsmith_add_vec3_u32(vec3<u32>(1u, global1.c, 0u), vec3<u32>(1u, 46765u, global1.c)))), firstTrailingBit(vec3<u32>(~43880u, 1u, 0u))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(global1.b.c)) * vec4<f32>(900f, _wgslsmith_f_op_f32(-global1.b.c.x), _wgslsmith_f_op_f32(-1182f + _wgslsmith_f_op_f32(global1.b.c.x - -473f)), 573f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global1.b.c.x), global1.b.c.x, _wgslsmith_f_op_f32(step(global1.b.c.x, global1.b.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.c.x)))));
    var var_2 = 44198u >> (min(countOneBits(~62058u) << (~min(var_0.a.x, 62495u) % 32u), 90546u) % 32u);
    var var_3 = _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, u_input.a, 2147483647i & -reverseBits(global1.e)), vec3<i32>(global2[_wgslsmith_index_u32(abs(var_0.a.x), 31u)], ~(-20850i), u_input.a ^ global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(countOneBits(var_0.a.wwz), _wgslsmith_mult_vec3_u32(vec3<u32>(34827u, global1.c, global1.c), var_0.a.yyw)), 31u)]), select(_wgslsmith_clamp_vec3_i32(max(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(global1.e, -2091i, 2147483647i)), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, global1.e, -5411i), vec3<i32>(-1i, -2147483647i, -12305i))), -(vec3<i32>(global1.b.d.x, global2[_wgslsmith_index_u32(56201u, 31u)], global1.e) ^ vec3<i32>(-2147483647i, u_input.a, global2[_wgslsmith_index_u32(var_0.a.x, 31u)])), ~(-vec3<i32>(global2[_wgslsmith_index_u32(2663u, 31u)], -941i, global2[_wgslsmith_index_u32(var_0.a.x, 31u)]))), min(_wgslsmith_div_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(var_0.a.x, 31u)], global2[_wgslsmith_index_u32(global1.c, 31u)], u_input.a), abs(vec3<i32>(global1.e, global1.e, global2[_wgslsmith_index_u32(global1.c, 31u)]))), _wgslsmith_clamp_vec3_i32(~vec3<i32>(0i, 0i, 1i), vec3<i32>(u_input.a, global2[_wgslsmith_index_u32(global1.c, 31u)], 2147483647i), vec3<i32>(u_input.a, 26348i, 35472i) & vec3<i32>(global1.e, -1i, u_input.a))), !select(vec3<bool>(false, false, global1.a.x), select(vec3<bool>(global1.b.a, global1.d.x, global1.a.x), vec3<bool>(false, false, global1.d.x), vec3<bool>(global1.d.x, false, false)), true)));
    var var_4 = Struct_4(global1.b, !(false & (1u == global1.c)) && global1.b.a, select(!vec3<bool>(global1.b.a & global1.d.x, !global1.b.b.x, global1.d.x), select(!select(vec3<bool>(global1.b.b.x, global1.a.x, true), vec3<bool>(global1.b.a, false, false), vec3<bool>(global1.d.x, global1.d.x, false)), select(select(vec3<bool>(global1.a.x, true, global1.b.b.x), vec3<bool>(global1.a.x, global1.d.x, true), global1.b.b.x), vec3<bool>(global1.b.a, false, global1.d.x), !vec3<bool>(false, global1.b.b.x, global1.a.x)), global1.b.a), all(!vec3<bool>(true, global1.d.x, global1.b.a))), -1i, global1.b.b);
    return global1.a;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>) -> f32 {
    var var_0 = Struct_4(Struct_1(arg_0.a.x, vec2<bool>(true, arg_0.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(arg_0.b.c.x)), -986f, _wgslsmith_f_op_f32(-arg_0.b.c.x), global1.b.c.x)), global0[_wgslsmith_index_u32(max(firstLeadingBit(global1.c) << (firstLeadingBit(0u) % 32u), ~_wgslsmith_sub_u32(50341u, arg_1.x)), 2u)]), any(vec3<bool>(abs(0u) == _wgslsmith_dot_vec4_u32(arg_1, arg_1), arg_0.b.b.x, true)), vec3<bool>(!func_3().x, !global1.d.x, arg_0.d.x), i32(-1i) * -1i, global1.d);
    global2 = array<i32, 31>();
    var var_1 = Struct_4(var_0.a, global1.a.x, var_0.c, -14044i, !global1.d);
    var var_2 = arg_0;
    global0 = array<vec2<i32>, 2>();
    return var_1.a.c.x;
}

fn func_2() -> bool {
    global0 = array<vec2<i32>, 2>();
    var var_0 = _wgslsmith_f_op_f32(func_4(Struct_2(func_3(), global1.b, select(1u, global1.c, 1u > (global1.c & global1.c)), !(!vec2<bool>(global1.a.x, global1.b.b.x)), ~_wgslsmith_add_i32(global2[_wgslsmith_index_u32(global1.c, 31u)], u_input.a)), ~select(abs(min(vec4<u32>(180962u, 4294967295u, global1.c, global1.c), vec4<u32>(global1.c, 4294967295u, global1.c, global1.c))), _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global1.c, global1.c, global1.c, 0u), vec4<u32>(global1.c, 0u, 107358u, global1.c)), _wgslsmith_sub_vec4_u32(vec4<u32>(global1.c, 62752u, global1.c, 53582u), vec4<u32>(global1.c, 0u, global1.c, global1.c))), !any(vec2<bool>(global1.b.a, global1.d.x)))));
    global0 = array<vec2<i32>, 2>();
    global1 = Struct_2(global1.b.b, Struct_1(global1.a.x, global1.a, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1270f, -2080f, global1.b.c.x, global1.b.c.x), _wgslsmith_f_op_vec4_f32(global1.b.c * global1.b.c))))), firstLeadingBit(~vec2<i32>(0i, u_input.a))), 4294967295u, select(!(!global1.d), select(global1.d, vec2<bool>(true, global1.d.x), global1.b.b.x), select(global1.d, vec2<bool>(global1.b.b.x, false), vec2<bool>(true, true))), u_input.a);
    return all(global1.d);
}

fn func_1() -> Struct_4 {
    var var_0 = Struct_3(vec4<u32>(firstTrailingBit(_wgslsmith_dot_vec2_u32(~vec2<u32>(50498u, global1.c), _wgslsmith_div_vec2_u32(vec2<u32>(global1.c, 1u), vec2<u32>(7058u, global1.c)))), 32920u, global1.c, _wgslsmith_dot_vec2_u32(~vec2<u32>(29557u, 35881u), firstLeadingBit(vec2<u32>(1u, 20277u) << (vec2<u32>(global1.c, global1.c) % vec2<u32>(32u))))), vec3<u32>(_wgslsmith_div_u32(reverseBits(abs(global1.c)), global1.c), 4294967295u, ~global1.c));
    let var_1 = Struct_4(Struct_1(any(!(!vec4<bool>(global1.d.x, global1.a.x, global1.a.x, false))), vec2<bool>(!(!global1.b.b.x), global1.a.x), global1.b.c, select(~global0[_wgslsmith_index_u32(firstLeadingBit(var_0.a.x), 2u)], global1.b.d, !(!global1.b.a))), true, vec3<bool>(true & func_2(), !global1.b.a, select(true, true && global1.a.x, false)), ~global2[_wgslsmith_index_u32(1u, 31u)], global1.b.b);
    var var_2 = Struct_3(~(~var_0.a), var_0.b);
    var_2 = Struct_3(~max(var_2.a, ~_wgslsmith_div_vec4_u32(vec4<u32>(111889u, global1.c, 68216u, global1.c), vec4<u32>(1u, global1.c, var_0.b.x, 17529u))), vec3<u32>(countOneBits(select(var_2.b.x, 4294967295u, var_1.e.x)), 60755u, global1.c) & _wgslsmith_mult_vec3_u32(var_2.b, _wgslsmith_mod_vec3_u32(var_2.b >> (vec3<u32>(0u, 38120u, 0u) % vec3<u32>(32u)), var_0.a.xxz)));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.a.c.x * _wgslsmith_f_op_f32(-global1.b.c.x)), _wgslsmith_f_op_f32(max(var_1.a.c.x, 1f)))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.b.c.x + 252f), _wgslsmith_f_op_f32(abs(1267f)), true))));
    return var_1;
}

fn func_5(arg_0: Struct_4, arg_1: u32, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = select(any(arg_0.c.xx), true | !any(arg_3.b), true);
    var var_1 = Struct_4(Struct_1(all(select(select(arg_3.b, global1.b.b, false), vec2<bool>(false, false), vec2<bool>(false, arg_3.a))), vec2<bool>(arg_3.b.x, true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.b.c * _wgslsmith_div_vec4_f32(arg_3.c, vec4<f32>(158f, 589f, arg_2, global1.b.c.x))) + vec4<f32>(global1.b.c.x, _wgslsmith_f_op_f32(round(arg_3.c.x)), _wgslsmith_f_op_f32(-arg_2), _wgslsmith_div_f32(global1.b.c.x, arg_3.c.x))), min(_wgslsmith_clamp_vec2_i32(arg_0.a.d, vec2<i32>(global1.b.d.x, -18332i), arg_0.a.d) | vec2<i32>(-2147483647i, 11209i), vec2<i32>(abs(arg_3.d.x), global1.b.d.x ^ arg_0.a.d.x))), true, vec3<bool>(any(arg_0.c), _wgslsmith_f_op_f32(f32(-1f) * -606f) <= arg_0.a.c.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(734f)))) < 1000f), -22988i, func_3());
    let var_2 = Struct_4(global1.b, global1.d.x, !vec3<bool>(true, true, func_3().x), _wgslsmith_mod_i32(i32(-1i) * -(i32(-1i) * -21404i), ~reverseBits(-global1.b.d.x)), arg_0.c.yy);
    global2 = array<i32, 31>();
    let var_3 = Struct_2(var_2.e, func_1().a, ~arg_1, !var_1.a.b, 0i);
    return Struct_1(false, vec2<bool>(!global1.d.x, arg_0.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1271f, _wgslsmith_f_op_f32(-var_2.a.c.x), _wgslsmith_f_op_f32(min(arg_3.c.x, 1000f)), _wgslsmith_f_op_f32(2327f + 323f)))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(var_2.a.c))))), _wgslsmith_mult_vec2_i32(vec2<i32>(arg_0.a.d.x, u_input.a), ~max(abs(arg_3.d), ~arg_0.a.d)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-global1.b.c.wy))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-990f, global1.b.c.x))))) - global1.b.c.xz), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global1.b.c.x), _wgslsmith_f_op_f32(global1.b.c.x * global1.b.c.x))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -543f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.b.c.x))))));
    var var_1 = func_5(func_1(), _wgslsmith_dot_vec2_u32(~(~countOneBits(vec2<u32>(global1.c, global1.c))), ~(~(~vec2<u32>(33801u, 22307u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * -1456f)))), global1.b);
    var var_2 = Struct_1(true, func_3(), _wgslsmith_f_op_vec4_f32(round(global1.b.c)), _wgslsmith_sub_vec2_i32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global1.c, abs(global1.c), global1.c), 2u)], -vec2<i32>(global2[_wgslsmith_index_u32(46974u, 31u)], -42237i) | vec2<i32>(28251i, -49484i)) | vec2<i32>(51943i, 4777i));
    let var_3 = !(27157i >= -u_input.a);
    var var_4 = _wgslsmith_sub_i32(i32(-1i) * -var_1.d.x, u_input.a);
    let var_5 = Struct_2(var_1.b, global1.b, 56126u, var_2.b, countOneBits(4853i));
    var_2 = Struct_1(select(!func_3().x, all(!select(vec4<bool>(var_2.a, true, var_5.a.x, true), vec4<bool>(false, false, var_2.b.x, var_2.a), false)), !(!var_1.b.x)), func_5(Struct_4(func_1().a, var_5.d.x, select(!vec3<bool>(false, false, var_2.b.x), !vec3<bool>(true, global1.d.x, var_1.a), false), i32(-1i) * -22989i, var_5.b.b), _wgslsmith_mod_u32(1u, var_5.c), _wgslsmith_div_f32(func_1().a.c.x, 1019f), func_1().a).b, var_2.c, var_5.b.d);
    var var_6 = 1i;
    var var_7 = Struct_2(global1.d, func_5(Struct_4(func_5(func_1(), ~30839u, -2359f, func_1().a), func_3().x, select(vec3<bool>(false, true, var_3), !vec3<bool>(true, var_5.a.x, var_3), !global1.b.b.x), -var_1.d.x, vec2<bool>(var_1.b.x, var_1.b.x | true)), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(0u, var_5.c), select(vec2<u32>(69378u, global1.c), vec2<u32>(global1.c, 0u), true)), _wgslsmith_mult_vec2_u32(countOneBits(vec2<u32>(42494u, 1u)), vec2<u32>(var_5.c, global1.c) >> (vec2<u32>(4294967295u, 10309u) % vec2<u32>(32u)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -519f) * 847f), _wgslsmith_f_op_f32(-2319f + -1000f))), global1.b), _wgslsmith_clamp_u32(global1.c, ~(~25588u), ~_wgslsmith_div_u32(33202u, _wgslsmith_mult_u32(var_5.c, var_5.c))), func_1().a.b, var_1.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(-26313i, -u_input.a), 12682u, -17088i, -2147483647i);
}

