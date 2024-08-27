struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_3,
    d: Struct_1,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 24>;

var<private> global1: bool = true;

var<private> global2: Struct_1 = Struct_1(1000f, true);

var<private> global3: Struct_3;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_3, arg_1: f32) -> i32 {
    global1 = !any(select(select(vec4<bool>(global2.b, global2.b, arg_0.a, global0[_wgslsmith_index_u32(global3.c.b.x, 24u)]), !vec4<bool>(global2.b, arg_0.c.d.b, true, global0[_wgslsmith_index_u32(arg_0.c.c, 24u)]), any(vec4<bool>(false, arg_0.a, global2.b, true))), vec4<bool>(!global0[_wgslsmith_index_u32(u_input.a.x, 24u)], true, true, global3.c.d.b), !vec4<bool>(false, arg_0.c.d.b, arg_0.c.d.b, true)));
    let var_0 = Struct_4(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -518f) * 242f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global2.a, global2.a)) * _wgslsmith_f_op_f32(arg_1 - 1069f))), global0[_wgslsmith_index_u32(6461u, 24u)]), vec4<bool>(global2.b, !(global3.c.d.b | !global0[_wgslsmith_index_u32(52526u, 24u)]), !(true | all(vec4<bool>(arg_0.c.e.b, true, global2.b, global2.b))), true), Struct_3(global3.a, _wgslsmith_add_i32(arg_0.b, -1i), Struct_2(global3.c.a, global3.c.b, ~_wgslsmith_dot_vec4_u32(vec4<u32>(87016u, u_input.a.x, 80278u, 4294967295u), arg_0.c.b), Struct_1(_wgslsmith_f_op_f32(-arg_0.c.d.a), true), global3.c.e)), Struct_1(_wgslsmith_f_op_f32(-global2.a), true), global3.c.b.yx);
    global2 = global3.c.d;
    let var_1 = Struct_1(1000f, global3.c.e.b);
    global2 = Struct_1(-511f, !any(!vec2<bool>(arg_0.a, global3.c.d.b)));
    return _wgslsmith_mod_i32(var_0.c.b, ~(-arg_0.b));
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_div_vec4_i32(~vec4<i32>(firstTrailingBit(25299i) & u_input.b.x, -3732i, -45726i >> (reverseBits(0u) % 32u), func_3(Struct_3(false, global3.b, global3.c), global2.a)), countOneBits(min(vec4<i32>(2147483647i, -global3.b, _wgslsmith_dot_vec2_i32(vec2<i32>(-10305i, 1i), u_input.b.wy), 22692i), abs(-u_input.b))));
    var var_1 = _wgslsmith_div_u32(global3.c.b.x, ~u_input.a.x);
    let var_2 = select(select(select(select(select(vec4<bool>(global3.a, false, true, global3.c.d.b), vec4<bool>(false, global3.a, false, false), global3.a), !vec4<bool>(global3.c.e.b, global2.b, global3.a, global0[_wgslsmith_index_u32(u_input.a.x, 24u)]), vec4<bool>(global0[_wgslsmith_index_u32(36172u, 24u)], global3.c.d.b, true, false)), !vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 24u)], global3.a, true), select(select(vec4<bool>(false, global2.b, global0[_wgslsmith_index_u32(u_input.a.x, 24u)], true), vec4<bool>(true, false, global2.b, global0[_wgslsmith_index_u32(0u, 24u)]), vec4<bool>(global0[_wgslsmith_index_u32(global3.c.c, 24u)], true, global3.c.d.b, global0[_wgslsmith_index_u32(u_input.a.x, 24u)])), vec4<bool>(global2.b, global0[_wgslsmith_index_u32(0u, 24u)], global2.b, global3.a), global0[_wgslsmith_index_u32(u_input.a.x, 24u)] && false)), select(vec4<bool>(false || global0[_wgslsmith_index_u32(5490u, 24u)], true, all(vec4<bool>(global0[_wgslsmith_index_u32(global3.c.c, 24u)], global0[_wgslsmith_index_u32(1u, 24u)], false, false)), !global2.b), vec4<bool>(global3.c.e.b != false, all(vec4<bool>(global0[_wgslsmith_index_u32(global3.c.b.x, 24u)], global0[_wgslsmith_index_u32(u_input.a.x, 24u)], true, true)), 109f < global3.c.a.x, global3.a), false), global2.a < _wgslsmith_f_op_f32(select(-981f, 1290f, global3.b >= u_input.b.x))), vec4<bool>(true, true, true, true), vec4<bool>(true != any(vec4<bool>(true, true, true, true)), !(!global3.a), global2.b, u_input.a.x > global3.c.c));
    global2 = Struct_1(global3.c.a.x, true);
    let var_3 = vec4<i32>(_wgslsmith_add_i32(u_input.b.x, ~(-17025i)), var_0.x, -_wgslsmith_mult_i32(global3.b, _wgslsmith_mult_i32(var_0.x, 41198i) << (reverseBits(4294967295u) % 32u)), 2147483647i);
    return 18755u;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool) -> Struct_1 {
    let var_0 = i32(-1i) * -global3.b;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -296f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1676f))) + -226f)), all(!vec4<bool>(arg_2, global0[_wgslsmith_index_u32(arg_1.b.x, 24u)], false, -1386f >= arg_0.e.a)));
    return Struct_1(641f, global0[_wgslsmith_index_u32(global3.c.c, 24u)]);
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: i32) -> bool {
    let var_0 = vec2<u32>(31848u, u_input.a.x);
    let var_1 = Struct_1(-532f, true);
    let var_2 = arg_1.b;
    let var_3 = Struct_2(global3.c.a, ~reverseBits(arg_1.c.b), 22221u, func_4(Struct_2(global3.c.a, _wgslsmith_mult_vec4_u32(arg_1.c.b, global3.c.b), func_2(), arg_1.c.d, Struct_1(_wgslsmith_f_op_f32(1357f + -736f), !global3.c.d.b)), arg_1.c, true), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -356f), false));
    var var_4 = arg_1;
    return !(!any(select(vec3<bool>(global3.a, var_3.e.b, false), vec3<bool>(true, true, true), global2.b || true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a))), all(select(vec4<bool>(!global2.b, false, true, global3.c.d.b || global0[_wgslsmith_index_u32(u_input.a.x, 24u)]), select(vec4<bool>(global3.c.e.b, true, global0[_wgslsmith_index_u32(4294967295u, 24u)], global2.b), !vec4<bool>(false, global2.b, global2.b, true), global3.c.e.a <= global2.a), any(select(vec4<bool>(global2.b, global2.b, false, false), vec4<bool>(global2.b, global0[_wgslsmith_index_u32(global3.c.b.x, 24u)], true, global2.b), global0[_wgslsmith_index_u32(0u, 24u)])))));
    let var_1 = !select(!select(vec2<bool>(false, false), select(vec2<bool>(global2.b, false), vec2<bool>(false, true), global2.b), true), vec2<bool>(global0[_wgslsmith_index_u32((global3.c.b.x >> (global3.c.b.x % 32u)) & ~12666u, 24u)], global0[_wgslsmith_index_u32(global3.c.c, 24u)]), global2.b);
    let var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.c.a.x, 295f, global3.c.a.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-250f, 534f, 1664f) - vec3<f32>(1247f, global2.a, global3.c.d.a))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a, var_0.a, -1000f) - global3.c.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(516f, 123f, global2.a) - vec3<f32>(-903f, -817f, global2.a)), global3.c.a))))));
    var var_3 = vec2<bool>(any(select(var_1, !(!vec2<bool>(global0[_wgslsmith_index_u32(global3.c.b.x, 24u)], false)), vec2<bool>(true, func_1(vec4<u32>(1u, global3.c.b.x, global3.c.c, 4294967295u), Struct_3(global2.b, global3.b, Struct_2(vec3<f32>(var_2.x, global2.a, var_2.x), global3.c.b, u_input.a.x, Struct_1(1000f, global3.c.e.b), global3.c.d)), global3.b)))), (global2.b | func_4(global3.c, Struct_2(vec3<f32>(var_2.x, global2.a, global3.c.e.a), global3.c.b, u_input.a.x, Struct_1(global2.a, true), Struct_1(global2.a, var_0.b)), !var_1.x).b) || true);
    var var_4 = ((_wgslsmith_clamp_u32(~21331u, _wgslsmith_dot_vec2_u32(u_input.a.xy, vec2<u32>(u_input.a.x, global3.c.b.x)), global3.c.b.x) & global3.c.b.x) | firstLeadingBit(28764u)) > _wgslsmith_sub_u32(_wgslsmith_add_u32(31946u, _wgslsmith_add_u32(0u, global3.c.c)), 29133u);
    let var_5 = func_4(Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global3.c.a, var_2, vec3<bool>(true, global2.b, var_0.b))) * _wgslsmith_f_op_vec3_f32(-var_2)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, var_0.a, global3.c.a.x))), ~(select(vec4<u32>(21068u, u_input.a.x, u_input.a.x, global3.c.b.x), global3.c.b, vec4<bool>(true, var_1.x, false, global0[_wgslsmith_index_u32(u_input.a.x, 24u)])) ^ ~vec4<u32>(u_input.a.x, 0u, 0u, 1u)), _wgslsmith_div_u32(1u | global3.c.c, global3.c.b.x | 70865u), func_4(Struct_2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.a, -291f, -154f), vec3<f32>(var_0.a, 1571f, global2.a))), ~global3.c.b, global3.c.c, func_4(Struct_2(global3.c.a, vec4<u32>(1u, 44875u, 23082u, global3.c.b.x), global3.c.b.x, global3.c.e, global3.c.d), Struct_2(var_2, vec4<u32>(u_input.a.x, u_input.a.x, 6635u, 12152u), u_input.a.x, global3.c.d, Struct_1(var_2.x, global2.b)), var_1.x), func_4(global3.c, Struct_2(vec3<f32>(1806f, global3.c.e.a, global3.c.d.a), global3.c.b, 64745u, Struct_1(2735f, true), global3.c.e), var_3.x)), Struct_2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global3.c.d.a, 1362f, var_0.a))), abs(vec4<u32>(21940u, global3.c.b.x, u_input.a.x, 109294u)), ~global3.c.b.x, global3.c.e, global3.c.d), true), func_4(global3.c, Struct_2(_wgslsmith_f_op_vec3_f32(global3.c.a + var_2), vec4<u32>(30361u, 51645u, 29078u, u_input.a.x), u_input.a.x | u_input.a.x, func_4(global3.c, global3.c, true), Struct_1(global2.a, global3.c.e.b)), true)), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.a))), var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a))), select(abs(abs(global3.c.b)), global3.c.b, var_0.b), ~(~global3.c.b.x) & reverseBits(_wgslsmith_add_u32(11369u, 0u)), global3.c.e, func_4(Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, var_2.x, -561f) + vec3<f32>(var_2.x, var_2.x, 115f)), global3.c.b, 1u, func_4(Struct_2(var_2, global3.c.b, u_input.a.x, Struct_1(-285f, true), Struct_1(-1204f, global3.c.e.b)), Struct_2(var_2, vec4<u32>(36585u, 24671u, 4294967295u, 3276u), u_input.a.x, Struct_1(1475f, global0[_wgslsmith_index_u32(u_input.a.x, 24u)]), Struct_1(var_2.x, false)), false), func_4(global3.c, global3.c, global2.b)), Struct_2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_2.x, -2309f, -898f))), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 1u, global3.c.c, 107797u), vec4<u32>(7249u, global3.c.c, global3.c.b.x, 76453u)), _wgslsmith_dot_vec2_u32(u_input.a.yx, vec2<u32>(1u, 10216u)), Struct_1(578f, false), func_4(Struct_2(global3.c.a, global3.c.b, global3.c.b.x, Struct_1(252f, true), Struct_1(global2.a, global2.b)), global3.c, false)), any(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 24u)], global3.a)))), func_4(global3.c, Struct_2(_wgslsmith_f_op_vec3_f32(var_2 - _wgslsmith_f_op_vec3_f32(vec3<f32>(-250f, -1889f, global2.a) - vec3<f32>(global3.c.a.x, var_2.x, 1000f))), global3.c.b, _wgslsmith_add_u32(global3.c.b.x, firstLeadingBit(4294967295u)), func_4(global3.c, global3.c, -21866i <= u_input.b.x), func_4(global3.c, Struct_2(vec3<f32>(1000f, global3.c.d.a, var_2.x), vec4<u32>(0u, u_input.a.x, 1u, u_input.a.x), 2104u, global3.c.e, Struct_1(-1531f, true)), true)), true).b);
    let var_6 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1f))))), !var_1.x);
    global3 = Struct_3(var_3.x, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(~min(vec4<i32>(u_input.b.x, global3.b, global3.b, u_input.b.x), vec4<i32>(global3.b, global3.b, u_input.b.x, global3.b)), u_input.b), _wgslsmith_div_i32(global3.b, -8338i)), Struct_2(_wgslsmith_f_op_vec3_f32(exp2(global3.c.a)), _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(global3.c.b, global3.c.b), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 52209u, global3.c.c, global3.c.b.x), global3.c.b), ~vec4<u32>(global3.c.c, 67546u, 35343u, 1u)) ^ ~_wgslsmith_mult_vec4_u32(vec4<u32>(global3.c.c, u_input.a.x, 32140u, 0u), global3.c.b), 29586u, var_6, var_5));
    let var_7 = !(!(!(!select(vec3<bool>(true, false, false), vec3<bool>(global3.a, false, global0[_wgslsmith_index_u32(16571u, 24u)]), var_1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(_wgslsmith_div_u32(global3.c.b.x, global3.c.c), ~u_input.a.x) << (_wgslsmith_add_u32(countOneBits(func_2()), _wgslsmith_dot_vec3_u32(u_input.a, u_input.a << (vec3<u32>(20222u, 4294967295u, 120182u) % vec3<u32>(32u)))) % 32u));
}

