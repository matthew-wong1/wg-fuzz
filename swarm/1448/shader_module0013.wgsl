struct Struct_1 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: vec2<bool>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1u, vec2<i32>(-37071i, 14267i));

var<private> global1: vec4<u32> = vec4<u32>(57346u, 34413u, 15529u, 59172u);

var<private> global2: Struct_1;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: vec3<u32>) -> bool {
    global0 = arg_1;
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(155f)))) + _wgslsmith_f_op_f32(abs(-2090f))), _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f - 856f))))))) + -582f);
    let var_1 = u_input.a.yz;
    var var_2 = arg_0.x;
    var var_3 = _wgslsmith_mod_u32(~(~(select(global2.a, 25165u, arg_2.x) << ((1u ^ arg_0.x) % 32u))), _wgslsmith_dot_vec4_u32(vec4<u32>(global0.a, 46874u ^ _wgslsmith_div_u32(12142u, global1.x), _wgslsmith_mod_u32(35132u, arg_3.x), abs(arg_0.x)), ~firstTrailingBit(~vec4<u32>(10163u, 0u, 0u, 4294967295u))));
    return ((countOneBits(_wgslsmith_clamp_u32(global2.a, 47171u, arg_3.x)) ^ abs(firstTrailingBit(40188u))) << ((firstTrailingBit(~global1.x) << (abs(9062u) % 32u)) % 32u)) < ~_wgslsmith_clamp_u32(~5362u, global2.a, ~global1.x);
}

fn func_2(arg_0: u32, arg_1: bool) -> vec4<u32> {
    let var_0 = reverseBits(-vec4<i32>(1i, -36202i, countOneBits(i32(-1i) * -6457i), global0.b.x));
    let var_1 = Struct_2(vec3<u32>(56728u, 4294967295u, 1u), select(select(!vec4<bool>(true, arg_1, false, arg_1), vec4<bool>(true, func_3(vec3<u32>(1u, 12263u, 10097u), Struct_1(0u, vec2<i32>(global2.b.x, var_0.x)), vec2<bool>(arg_1, false), vec3<u32>(arg_0, arg_0, global1.x)), arg_1, !arg_1), !vec4<bool>(false, false, arg_1, true)), select(select(select(vec4<bool>(true, arg_1, arg_1, arg_1), vec4<bool>(false, arg_1, arg_1, false), vec4<bool>(arg_1, arg_1, arg_1, arg_1)), select(vec4<bool>(arg_1, arg_1, arg_1, false), vec4<bool>(false, arg_1, false, true), arg_1), any(vec2<bool>(true, false))), !select(vec4<bool>(true, arg_1, true, false), vec4<bool>(arg_1, arg_1, arg_1, true), vec4<bool>(arg_1, true, arg_1, true)), select(!vec4<bool>(arg_1, true, arg_1, arg_1), !vec4<bool>(arg_1, arg_1, arg_1, false), false)), vec4<bool>(arg_1, arg_1, arg_1, true)), vec2<bool>(arg_1, !arg_1), select(!(!vec4<bool>(arg_1, true, arg_1, arg_1)), vec4<bool>(false, all(!vec3<bool>(arg_1, arg_1, arg_1)), any(select(vec4<bool>(arg_1, true, arg_1, arg_1), vec4<bool>(false, arg_1, false, arg_1), vec4<bool>(false, arg_1, arg_1, arg_1))), all(!vec3<bool>(true, arg_1, arg_1))), any(select(select(vec4<bool>(arg_1, false, arg_1, true), vec4<bool>(arg_1, arg_1, arg_1, arg_1), arg_1), vec4<bool>(false, arg_1, false, arg_1), !vec4<bool>(true, false, arg_1, false)))));
    let var_2 = -global2.b.x;
    global1 = ~(vec4<u32>(var_1.a.x, global1.x, global2.a, global1.x) ^ (min(vec4<u32>(global1.x, 66355u, global1.x, var_1.a.x) ^ vec4<u32>(global1.x, global0.a, arg_0, 4294967295u), _wgslsmith_div_vec4_u32(vec4<u32>(1u, arg_0, 4294967295u, arg_0), vec4<u32>(global0.a, arg_0, 16062u, 1u))) ^ ~firstLeadingBit(vec4<u32>(u_input.a.x, global0.a, global2.a, 1u))));
    let var_3 = global2.a << (var_1.a.x % 32u);
    return vec4<u32>(4294967295u, abs(3811u), ~global0.a, global1.x);
}

fn func_1() -> Struct_1 {
    var var_0 = countOneBits(-_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(global2.b.x, -51598i, global0.b.x, global0.b.x)), vec4<i32>(-36426i, 14245i, 25471i, -1i)) >> (countOneBits(~u_input.a.x << (global2.a % 32u)) % 32u));
    let var_1 = ~vec3<u32>(u_input.a.x, 4294967295u, global0.a);
    let var_2 = 0i;
    var var_3 = ~max(-32376i, -34900i);
    global1 = func_2(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(global0.a, global1.x, 0u, global0.a), _wgslsmith_add_vec4_u32(vec4<u32>(27520u, 0u, global2.a, u_input.a.x), vec4<u32>(global1.x, 2492u, global2.a, global2.a))), vec4<u32>(0u | global0.a, reverseBits(u_input.a.x), _wgslsmith_mult_u32(30024u, u_input.a.x), 0u)), true) >> (~(~(~select(vec4<u32>(73336u, global2.a, 1u, 49934u), vec4<u32>(29944u, u_input.a.x, 1u, 1u), false))) % vec4<u32>(32u));
    return Struct_1(0u, _wgslsmith_sub_vec2_i32(-(~(-global2.b)), select(vec2<i32>(abs(global0.b.x), global2.b.x ^ global0.b.x), vec2<i32>(_wgslsmith_add_i32(0i, global0.b.x), global2.b.x), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec4<bool>) -> vec4<bool> {
    global0 = func_1();
    global0 = func_1();
    global1 = countOneBits(_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(func_2(global1.x, arg_1.x), ~firstTrailingBit(vec4<u32>(global0.a, global1.x, global1.x, 4294967295u))), select(vec4<u32>(global2.a, 57475u, global2.a, 62445u), vec4<u32>(arg_0.a, _wgslsmith_dot_vec4_u32(vec4<u32>(92406u, 0u, 4294967295u, 20172u), vec4<u32>(global1.x, arg_0.a, arg_0.a, 1u)), 90592u, 1u), !select(vec4<bool>(false, true, arg_1.x, false), arg_2, vec4<bool>(false, arg_1.x, false, arg_1.x)))));
    var var_0 = func_1();
    global2 = func_1();
    return select(vec4<bool>(true, false, true, !(true || all(vec2<bool>(arg_2.x, true)))), !(!arg_2), 4294967295u >= global1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_i32(-25015i, select(13112i, global0.b.x, false));
    let var_1 = Struct_2(vec3<u32>(global0.a, 1u, ~0u), func_4(func_1(), vec2<bool>(true, true), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), true))), vec2<bool>(true, true), !vec4<bool>(_wgslsmith_mod_u32(0u, global1.x) >= (global0.a | 0u), all(vec2<bool>(true, true)), true, !func_4(Struct_1(1u, vec2<i32>(global0.b.x, global2.b.x)), vec2<bool>(false, false), vec4<bool>(true, true, true, true)).x));
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1067f, _wgslsmith_f_op_f32(max(244f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(222f)) - _wgslsmith_f_op_f32(f32(-1f) * -794f))))));
    let var_3 = ~u_input.a.x;
    global0 = Struct_1(_wgslsmith_dot_vec3_u32(func_2(~(~1u), !func_4(Struct_1(global1.x, global2.b), var_1.d.yy, var_1.b).x).zzy, _wgslsmith_mult_vec3_u32(vec3<u32>(global0.a, ~global1.x, _wgslsmith_sub_u32(var_1.a.x, var_1.a.x)), min(~u_input.a, ~vec3<u32>(global1.x, global2.a, u_input.a.x)))), _wgslsmith_mult_vec2_i32(countOneBits(vec2<i32>(~(-2147483647i), ~global0.b.x)), max(_wgslsmith_div_vec2_i32(firstTrailingBit(global2.b), ~global0.b), countOneBits(_wgslsmith_mod_vec2_i32(vec2<i32>(global2.b.x, -1i), global0.b)))));
    var var_4 = _wgslsmith_div_vec2_f32(var_2, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_2.x, 724f), _wgslsmith_f_op_vec2_f32(round(var_2)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(firstTrailingBit(func_2(global2.a, var_1.b.x).x << (_wgslsmith_mult_u32(41931u, 62686u) % 32u)), select(~4294967295u ^ u_input.a.x, func_2(func_2(1u, false).x, var_1.d.x).x, true)), 41042u, ~(((global2.a | var_3) << ((var_1.a.x >> (36733u % 32u)) % 32u)) >> (abs(~global1.x) % 32u)), vec4<u32>(7822u, _wgslsmith_mod_u32(func_1().a, ~(~4294967295u)), 0u, firstLeadingBit(4294967295u)), global2.a);
}

