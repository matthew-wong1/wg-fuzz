struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<f32>,
    c: Struct_2,
    d: vec3<bool>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: Struct_3,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30>;

var<private> global1: Struct_4 = Struct_4(vec3<u32>(25925u, 4556u, 8915u), vec3<f32>(-1000f, 771f, -189f), Struct_3(334f, vec4<f32>(561f, -166f, 1023f, 335f), Struct_2(Struct_1(vec4<f32>(-631f, -522f, 330f, 848f))), vec3<bool>(true, false, true)), Struct_2(Struct_1(vec4<f32>(-1000f, 697f, -1901f, 364f))));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: vec2<u32>) -> bool {
    return true;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<u32>) -> f32 {
    global0 = array<Struct_1, 30>();
    global0 = array<Struct_1, 30>();
    var var_0 = global1.c.c;
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.x, _wgslsmith_f_op_f32(-global1.c.a), _wgslsmith_f_op_f32(global1.b.x + 245f), var_0.a.a.x) * global1.c.c.a.a)));
    let var_1 = !(false && global1.c.d.x);
    return _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-2334f)) * _wgslsmith_f_op_f32(round(-1000f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(552f + 1f)))), _wgslsmith_f_op_f32(trunc(var_0.a.a.x)));
}

fn func_2(arg_0: vec4<u32>, arg_1: i32, arg_2: u32) -> f32 {
    let var_0 = !(!(!any(global1.c.d)));
    let var_1 = global1.a.x;
    let var_2 = _wgslsmith_sub_u32(select(arg_0.x, arg_2, true), 23937u);
    let var_3 = vec3<i32>(2147483647i, _wgslsmith_dot_vec2_i32(firstTrailingBit(firstLeadingBit(vec2<i32>(5606i, -6723i))), u_input.a), arg_1);
    global0 = array<Struct_1, 30>();
    return _wgslsmith_f_op_f32(select(global1.d.a.a.x, _wgslsmith_f_op_f32(func_4(!vec4<bool>(func_3(arg_0.x, 360f, vec2<u32>(arg_0.x, global1.a.x)), any(vec4<bool>(false, false, var_0, true)), var_0 & false, !global1.c.d.x), vec3<u32>(67417u, 1u, 22281u))), func_3(34843u, 113f, arg_0.xw)));
}

fn func_5(arg_0: Struct_3, arg_1: i32, arg_2: f32) -> Struct_4 {
    global0 = array<Struct_1, 30>();
    let var_0 = _wgslsmith_mod_vec2_u32(global1.a.xz, min(~global1.a.yz, vec2<u32>(_wgslsmith_add_u32(~global1.a.x, ~global1.a.x), ~(~global1.a.x))));
    var var_1 = global1.c.c;
    var var_2 = Struct_2(Struct_1(var_1.a.a));
    let var_3 = false;
    return Struct_4(vec3<u32>(4053u, max(_wgslsmith_sub_u32(var_0.x, 21523u), ~var_0.x), ~(~global1.a.x)) ^ _wgslsmith_add_vec3_u32(global1.a, vec3<u32>(1u, global1.a.x, 11321u)), global1.b, arg_0, arg_0.c);
}

fn func_1(arg_0: vec2<i32>) -> Struct_2 {
    global0 = array<Struct_1, 30>();
    global1 = func_5(Struct_3(global1.b.x, vec4<f32>(_wgslsmith_f_op_f32(max(global1.d.a.a.x, _wgslsmith_div_f32(-336f, 1099f))), global1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(346f * -1274f) * _wgslsmith_f_op_f32(min(1116f, global1.c.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<u32>(global1.a.x, 1u, 4294967295u, global1.a.x), 39363i, global1.a.x)))), Struct_2(global0[_wgslsmith_index_u32(0u, 30u)]), global1.c.d), firstTrailingBit(min(u_input.a.x, 0i)), 1613f);
    let var_0 = func_5(Struct_3(-356f, func_5(global1.c, _wgslsmith_add_i32(u_input.a.x, abs(u_input.a.x)), global1.d.a.a.x).c.c.a.a, global1.d, vec3<bool>(global1.c.d.x, _wgslsmith_mult_i32(u_input.a.x, 2147483647i) > -1i, global1.c.d.x & true)), reverseBits(~_wgslsmith_mult_i32(~1i, -43739i << (global1.a.x % 32u))), _wgslsmith_f_op_f32(-182f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1118f * -441f))));
    global1 = func_5(func_5(func_5(global1.c, u_input.a.x, global1.c.b.x).c, min(_wgslsmith_dot_vec2_i32(arg_0, vec2<i32>(-1i, arg_0.x) << (vec2<u32>(var_0.a.x, 0u) % vec2<u32>(32u))), u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(542f, global1.d.a.a.x) - global1.b.x))).c, 2147483647i, 1552f);
    let var_1 = vec4<u32>(var_0.a.x, 1u, ~(~abs(global1.a.x)), 45349u >> (firstLeadingBit(4294967295u) % 32u)) ^ ~vec4<u32>(global1.a.x, 1u << (~var_0.a.x % 32u), _wgslsmith_add_u32(var_0.a.x, global1.a.x), 4294967295u);
    return Struct_2(global0[_wgslsmith_index_u32(firstTrailingBit(firstLeadingBit(1u)), 30u)]);
}

fn func_6(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: Struct_4, arg_3: Struct_3) -> Struct_4 {
    var var_0 = Struct_3(arg_0.a.a.x, arg_2.c.c.a.a, arg_2.c.c, vec3<bool>(arg_2.c.d.x, true, !(19550u <= arg_2.a.x)));
    var var_1 = _wgslsmith_f_op_vec2_f32(var_0.b.zy + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.a.x)), var_0.b.x)));
    var_1 = _wgslsmith_f_op_vec2_f32(arg_3.c.a.a.xw - _wgslsmith_f_op_vec2_f32(step(arg_3.b.xz, vec2<f32>(_wgslsmith_f_op_f32(-591f + 1034f), _wgslsmith_f_op_f32(-arg_0.a.a.x)))));
    let var_2 = vec4<bool>(false, true, false, false);
    var var_3 = _wgslsmith_f_op_vec4_f32(-var_0.c.a.a);
    return Struct_4(~(min(arg_1, _wgslsmith_mod_vec3_u32(global1.a, arg_1)) >> (arg_1 % vec3<u32>(32u))), var_0.b.zzx, arg_3, Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), arg_0.a.a.x, arg_0.a.a.x, _wgslsmith_f_op_f32(arg_2.b.x * arg_3.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    var var_1 = func_6(func_1(-vec2<i32>(-1i, -25243i) | (-u_input.a | vec2<i32>(-1166i, 2147483647i))), _wgslsmith_div_vec3_u32(vec3<u32>(~1u, 47520u, _wgslsmith_mult_u32(global1.a.x, 1u)) << (vec3<u32>(min(global1.a.x, 58144u), 4294967295u >> (global1.a.x % 32u), 1u) % vec3<u32>(32u)), ~vec3<u32>(~global1.a.x, ~global1.a.x, firstLeadingBit(global1.a.x))), Struct_4(vec3<u32>(global1.a.x, _wgslsmith_div_u32(1u, ~0u), global1.a.x), _wgslsmith_f_op_vec3_f32(-global1.d.a.a.zyz), global1.c, func_5(func_5(Struct_3(252f, global1.c.c.a.a, global1.d, global1.c.d), u_input.a.x, global1.b.x).c, ~u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1488f))).d), func_5(func_5(global1.c, _wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), max(0i, u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.c.a.a.x))).c, ~(~u_input.a.x), global1.b.x).c);
    var_0 = _wgslsmith_clamp_i32(2147483647i, abs(u_input.a.x & u_input.a.x), _wgslsmith_div_i32(1i, -firstLeadingBit(-1i)));
    var var_2 = vec4<bool>(func_5(func_6(global1.d, _wgslsmith_mult_vec3_u32(select(global1.a, vec3<u32>(global1.a.x, var_1.a.x, 41652u), global1.c.d), vec3<u32>(52298u, var_1.a.x, 985u)), func_6(Struct_2(global0[_wgslsmith_index_u32(0u, 30u)]), _wgslsmith_div_vec3_u32(var_1.a, vec3<u32>(global1.a.x, 4294967295u, var_1.a.x)), Struct_4(vec3<u32>(13765u, global1.a.x, 18143u), var_1.d.a.a.xwz, var_1.c, Struct_2(Struct_1(global1.c.b))), func_5(global1.c, u_input.a.x, global1.b.x).c), global1.c).c, -_wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.a.x, u_input.a.x), u_input.a.x), 1076f).c.d.x, global1.c.d.x, global1.c.d.x, any(func_6(Struct_2(Struct_1(vec4<f32>(global1.d.a.a.x, -926f, 647f, var_1.b.x))), ~vec3<u32>(global1.a.x, 0u, global1.a.x), func_6(func_5(var_1.c, u_input.a.x, global1.c.a).c.c, ~vec3<u32>(global1.a.x, 4294967295u, 0u), Struct_4(vec3<u32>(1u, 104854u, global1.a.x), vec3<f32>(var_1.d.a.a.x, 911f, var_1.c.b.x), Struct_3(571f, var_1.c.c.a.a, Struct_2(Struct_1(var_1.d.a.a)), vec3<bool>(false, var_1.c.d.x, var_1.c.d.x)), global1.d), global1.c), var_1.c).c.d));
    var var_3 = vec3<i32>(-1i) * -(-vec3<i32>(0i, u_input.a.x, 7434i) ^ _wgslsmith_mult_vec3_i32(~vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i), vec3<i32>(0i, u_input.a.x, u_input.a.x)));
    var_3 = _wgslsmith_sub_vec3_i32(firstLeadingBit((-vec3<i32>(0i, u_input.a.x, 64541i) >> (var_1.a % vec3<u32>(32u))) >> (~(~vec3<u32>(global1.a.x, 73056u, var_1.a.x)) % vec3<u32>(32u))), ~(~_wgslsmith_mod_vec3_i32(vec3<i32>(var_3.x, var_3.x, 1i), vec3<i32>(u_input.a.x, 35061i, u_input.a.x)) << (abs(vec3<u32>(0u, 4294967295u, global1.a.x)) % vec3<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(round(var_1.d.a.a)), u_input.a.x | ~(u_input.a.x << (_wgslsmith_add_u32(0u, global1.a.x) % 32u)));
}

