struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<f32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 14>;

var<private> global1: u32;

var<private> global2: i32 = 1i;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32) -> u32 {
    var var_0 = 613f;
    var_0 = arg_0;
    return ~_wgslsmith_dot_vec3_u32(u_input.b.wxw, max(u_input.b.xzy, vec3<u32>(u_input.b.x, _wgslsmith_div_u32(42188u, 47795u), reverseBits(u_input.b.x))));
}

fn func_2(arg_0: u32) -> Struct_3 {
    global0 = array<f32, 14>();
    let var_0 = Struct_2(u_input.b.x, Struct_1(-14541i, true, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(step(-1000f, 256f)), _wgslsmith_f_op_f32(f32(-1f) * -1058f), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(4294967295u, 14u)], 506f), 1441f), vec4<f32>(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b.x, 1u), 14u)], _wgslsmith_f_op_f32(ceil(1106f)), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(arg_0, 14u)], 434f), _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(u_input.b.x, 14u)], global0[_wgslsmith_index_u32(71643u, 14u)]))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(12702u, 14u)])) - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 14u)])), global0[_wgslsmith_index_u32(u_input.b.x, 14u)], _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(4084u, 14u)], global0[_wgslsmith_index_u32(arg_0, 14u)])))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-1250f)), global0[_wgslsmith_index_u32(u_input.b.x, 14u)])))), Struct_1(u_input.a, false, vec4<f32>(global0[_wgslsmith_index_u32(func_3(_wgslsmith_f_op_f32(min(1000f, 803f))), 14u)], global0[_wgslsmith_index_u32(~u_input.b.x, 14u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -837f) - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b.x, 14u)] - 1378f)), _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(u_input.b.x, 14u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(58627u, 14u)])))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0[_wgslsmith_index_u32(arg_0, 14u)], -824f, global0[_wgslsmith_index_u32(30577u, 14u)], 740f)))) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 14u)], global0[_wgslsmith_index_u32(arg_0, 14u)], 111f, 1455f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(26205u, 14u)], global0[_wgslsmith_index_u32(arg_0, 14u)], -1043f, 1603f)))))), Struct_1(u_input.c.x, !(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0, 14u)]) == global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b.x, 4294967295u), 14u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(885f, global0[_wgslsmith_index_u32(u_input.b.x, 14u)], global0[_wgslsmith_index_u32(0u, 14u)], global0[_wgslsmith_index_u32(u_input.b.x, 14u)])), vec4<f32>(global0[_wgslsmith_index_u32(arg_0, 14u)], 1674f, global0[_wgslsmith_index_u32(4294967295u, 14u)], global0[_wgslsmith_index_u32(4294967295u, 14u)])))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 14u)], global0[_wgslsmith_index_u32(47832u >> (arg_0 % 32u), 14u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 3070u, arg_0, u_input.b.x), u_input.b), 14u)], _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 14u)] + global0[_wgslsmith_index_u32(4294967295u, 14u)])))));
    global1 = var_0.a;
    let var_1 = !select(vec2<bool>(true, any(!vec4<bool>(true, true, var_0.b.b, var_0.d.b))), vec2<bool>(!(var_0.d.a > -1i), true), vec2<bool>(false, true));
    let var_2 = Struct_2(min(~_wgslsmith_clamp_u32(1u, arg_0, 0u >> (var_0.a % 32u)), _wgslsmith_mult_u32(~arg_0, ~(~0u))), Struct_1(var_0.b.a, true, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -192f), _wgslsmith_div_f32(var_0.d.c.x, -871f), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1340f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-563f, -254f, -156f, 721f) + var_0.d.c), var_0.b.c, vec4<bool>(true, true, true, true)))), vec4<f32>(_wgslsmith_f_op_f32(trunc(1440f)), var_0.b.d.x, var_0.d.c.x, _wgslsmith_f_op_f32(round(970f)))), Struct_1(_wgslsmith_dot_vec3_i32(abs(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.d.a, u_input.c.x, -33608i), vec3<i32>(u_input.c.x, -9876i, 0i))), vec3<i32>(-21111i, 62158i, -1i) | vec3<i32>(2147483647i, -36352i, u_input.a)), true, _wgslsmith_f_op_vec4_f32(-var_0.d.c), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(22848u, 14u)]), _wgslsmith_f_op_f32(-var_0.b.d.x)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b.x, 4294967295u), 14u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.c.x)))), var_0.c);
    return Struct_3(u_input.b, var_2.c, _wgslsmith_mult_vec2_i32(firstTrailingBit(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, var_2.d.a, var_2.c.a), vec3<i32>(1i, -892i, var_2.b.a)), firstLeadingBit(2147483647i))), -(vec2<i32>(0i, 10031i) & vec2<i32>(u_input.a, 0i)) ^ min(u_input.c, u_input.c | vec2<i32>(var_0.d.a, 22375i))), var_2, Struct_2(arg_0, Struct_1(-1i, true, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_2.c.d), vec4<f32>(var_0.b.c.x, -1219f, var_0.d.d.x, 643f), !vec4<bool>(var_2.d.b, true, var_2.b.b, true))), vec4<f32>(_wgslsmith_f_op_f32(max(var_0.d.d.x, global0[_wgslsmith_index_u32(var_0.a, 14u)])), 270f, _wgslsmith_f_op_f32(var_2.c.d.x + 462f), _wgslsmith_f_op_f32(sign(-573f)))), var_0.b, var_0.c));
}

fn func_1() -> Struct_3 {
    global0 = array<f32, 14>();
    global0 = array<f32, 14>();
    global1 = select(firstLeadingBit(30653u), u_input.b.x, u_input.b.x >= 31973u);
    let var_0 = _wgslsmith_mod_u32(u_input.b.x, 4294967295u);
    let var_1 = 0i;
    return func_2(~(~var_0));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: vec2<bool>) -> Struct_3 {
    var var_0 = arg_1;
    var var_1 = !select(!vec3<bool>(true, !var_0.e.d.b, true), select(select(!vec3<bool>(arg_1.b.b, false, arg_1.e.b.b), select(vec3<bool>(false, arg_1.d.c.b, var_0.e.b.b), vec3<bool>(arg_2.x, var_0.b.b, false), arg_2.x), true), select(vec3<bool>(var_0.e.b.b, true, var_0.e.b.b), !vec3<bool>(true, arg_2.x, true), select(vec3<bool>(arg_1.b.b, true, true), vec3<bool>(var_0.d.b.b, arg_1.e.c.b, var_0.e.b.b), vec3<bool>(arg_2.x, true, false))), arg_2.x), select(select(vec3<bool>(true, true, arg_1.d.d.b), select(vec3<bool>(arg_2.x, true, true), vec3<bool>(true, var_0.e.b.b, arg_1.d.d.b), vec3<bool>(arg_1.d.b.b, false, arg_1.b.b)), 0u <= arg_1.e.a), vec3<bool>(true, var_0.e.d.b || true, false), 0i >= arg_0.x));
    let var_2 = func_1();
    var var_3 = _wgslsmith_mod_i32(var_2.d.d.a ^ _wgslsmith_add_i32(min(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, var_0.b.a, -1i), vec3<i32>(-2147483647i, 6974i, var_2.c.x)), var_2.e.d.a), _wgslsmith_add_i32(var_0.e.d.a ^ -20450i, func_2(var_0.e.a).d.d.a)), -1i);
    var_0 = func_2(~abs(reverseBits(0u)));
    return Struct_3(vec4<u32>(u_input.b.x, _wgslsmith_clamp_u32(7858u & ~u_input.b.x, ~52689u, _wgslsmith_dot_vec4_u32(var_2.a << (vec4<u32>(4294967295u, 44712u, arg_1.d.a, var_2.a.x) % vec4<u32>(32u)), u_input.b)), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(func_3(101f), arg_1.e.a >> (9282u % 32u)), ~82284u << (_wgslsmith_sub_u32(var_2.a.x, 4294967295u) % 32u), abs(63816u)), ~85850u), Struct_1(_wgslsmith_div_i32(func_1().d.c.a, _wgslsmith_dot_vec2_i32(func_2(36779u).c, vec2<i32>(-60211i, var_2.c.x))), arg_2.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2.d.b.d)) + vec4<f32>(_wgslsmith_f_op_f32(-arg_1.e.d.d.x), 1022f, _wgslsmith_f_op_f32(max(var_2.e.d.d.x, global0[_wgslsmith_index_u32(var_0.e.a, 14u)])), _wgslsmith_div_f32(var_2.b.c.x, var_2.d.c.c.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(916f, var_0.e.d.c.x, var_2.e.c.d.x, var_2.e.b.d.x)))))), func_2(4294967295u).c, var_2.e, Struct_2(func_1().e.a << (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_1.a.x, var_2.d.a, 0u), func_1().a) % 32u), arg_1.e.b, arg_1.b, func_2(4294967295u).d.c));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_3) -> StorageBuffer {
    let var_0 = u_input.b.xy;
    global0 = array<f32, 14>();
    let var_1 = Struct_2(~11567u, arg_1.d.b, func_4(vec2<i32>(u_input.a, u_input.a), Struct_3(vec4<u32>(4294967295u, 70782u, ~arg_1.a.x, arg_1.d.a), arg_1.d.b, u_input.c, arg_1.d, Struct_2(_wgslsmith_mult_u32(0u, u_input.b.x), Struct_1(u_input.c.x, true, vec4<f32>(global0[_wgslsmith_index_u32(49338u, 14u)], arg_0.x, global0[_wgslsmith_index_u32(32064u, 14u)], arg_1.d.d.d.x), vec4<f32>(arg_1.d.c.c.x, arg_0.x, 647f, arg_1.b.d.x)), func_1().e.b, Struct_1(u_input.c.x, arg_1.b.b, vec4<f32>(-189f, arg_1.d.b.d.x, arg_0.x, global0[_wgslsmith_index_u32(0u, 14u)]), vec4<f32>(global0[_wgslsmith_index_u32(arg_1.a.x, 14u)], global0[_wgslsmith_index_u32(0u, 14u)], -253f, -1000f)))), vec2<bool>(!(!arg_1.b.b), arg_1.b.b)).e.b, Struct_1(u_input.a, any(!(!vec3<bool>(arg_1.e.c.b, arg_1.b.b, true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1196f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 14u)]), -234f, arg_1.b.c.x)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(abs(757f)), _wgslsmith_f_op_f32(-231f * -794f), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(10516u, 4107u), 14u)], _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(var_0.x, 14u)])))))));
    global1 = _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~(~vec4<u32>(16247u, var_1.a, u_input.b.x, u_input.b.x)), vec4<u32>(arg_1.e.a, _wgslsmith_mod_u32(1u, var_1.a), u_input.b.x, ~select(var_0.x, 7351u, false))), arg_1.a);
    let var_2 = var_1.d.a;
    return StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.c.x) * 548f), arg_1.e.a, -670f, reverseBits(~0i));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~(-5910i);
    let x = u_input.a;
    s_output = func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(firstLeadingBit(0u), 14u)])), global0[_wgslsmith_index_u32(~1u, 14u)], _wgslsmith_f_op_f32(f32(-1f) * -1205f))), func_4(vec2<i32>(_wgslsmith_div_i32(28989i, 1i) >> (0u % 32u), 1i), func_1(), select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, false))));
}

