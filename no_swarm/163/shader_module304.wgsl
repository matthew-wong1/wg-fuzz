struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<bool>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<i32>,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 1> = array<vec2<bool>, 1>(vec2<bool>(true, true));

var<private> global1: i32 = -24314i;

var<private> global2: array<vec2<f32>, 6>;

var<private> global3: Struct_2;

var<private> global4: i32;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: u32, arg_3: u32) -> vec3<u32> {
    let var_0 = false;
    let var_1 = ~(vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_add_u32(arg_0.e.b, 4294967295u), 24031u), ~41111u) & ~(~(~vec2<u32>(arg_0.b.b, arg_2))));
    var var_2 = 0u;
    global1 = -46352i;
    var_2 = arg_2;
    return vec3<u32>(4163u, 1u, 1u & _wgslsmith_add_u32(~_wgslsmith_mod_u32(arg_2, var_1.x), firstTrailingBit(var_1.x)));
}

fn func_4(arg_0: vec3<u32>, arg_1: bool) -> bool {
    global1 = global3.b.a;
    let var_0 = u_input.a;
    var var_1 = abs(arg_0.yz);
    var var_2 = countOneBits(~global3.e.a) >= var_0.x;
    var_1 = vec2<u32>(arg_0.x, _wgslsmith_sub_u32(~global3.e.b, _wgslsmith_clamp_u32(~44046u, arg_0.x, 9270u)));
    return false;
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: f32, arg_3: i32) -> Struct_1 {
    var var_0 = Struct_3(~global3.e.b, select(func_4(func_3(Struct_2(global3.a, arg_0, vec3<i32>(arg_0.a, -24765i, arg_0.a), vec4<bool>(false, arg_0.c.x, false, arg_0.d), Struct_1(arg_3, arg_1, arg_0.c, global3.b.d, arg_0.c.x)), _wgslsmith_f_op_f32(-arg_2), arg_0.b ^ arg_0.b, arg_1), 0i <= u_input.a.x), all(!(!vec4<bool>(true, false, global3.b.d, false))), select(all(global3.d.xyw), arg_0.d, all(vec2<bool>(false, arg_0.d))) != arg_0.d), Struct_1(arg_3, arg_1, select(select(select(arg_0.c, vec2<bool>(global3.b.e, false), arg_0.c), select(vec2<bool>(global3.d.x, true), arg_0.c, vec2<bool>(arg_0.d, arg_0.d)), !arg_0.d), !(!vec2<bool>(global3.d.x, true)), true), false, false | arg_0.c.x), arg_0);
    var var_1 = vec2<u32>(~arg_1, ~(var_0.c.b >> (arg_0.b % 32u)) & _wgslsmith_sub_u32(1u, var_0.a));
    let var_2 = reverseBits(~(~vec4<i32>(u_input.a.x, 1i, -2147483647i, u_input.a.x) << (min(abs(vec4<u32>(var_0.a, 11570u, var_1.x, 77083u)), ~vec4<u32>(arg_0.b, 4294967295u, var_0.d.b, var_0.d.b)) % vec4<u32>(32u))));
    var var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(global3.a, arg_2))))))));
    var_0 = Struct_3(1u, ~1u < arg_1, var_0.d, Struct_1(i32(-1i) * -15393i, 0u >> ((~4294967295u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.d.b, arg_0.b, var_0.d.b), vec3<u32>(global3.b.b, 18222u, 1u)) % 32u)) % 32u), select(vec2<bool>(false, true), vec2<bool>(any(vec4<bool>(global3.b.d, false, var_0.d.e, true)), all(global3.d.wxy)), !select(global3.d.yw, var_0.d.c, var_0.c.d)), all(vec4<bool>(arg_0.e, var_0.c.e, false, global3.b.d)) && false, any(!global3.d.zxy)));
    return global3.b;
}

fn func_5(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_2, arg_3: bool) -> i32 {
    let var_0 = Struct_3(abs(global3.b.b), arg_3, func_2(global3.e, _wgslsmith_sub_u32(1u, global3.b.b), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1260f, 1276f) + 909f), _wgslsmith_dot_vec2_i32(arg_2.c.zx, reverseBits(u_input.a.xz))), Struct_1(-(i32(-1i) * -1i), 38800u, !arg_2.b.c, !select(true, global3.b.c.x, true), select(true, !arg_0.x, arg_0.x)));
    var var_1 = var_0.a >> (select(~max(0u << (arg_2.e.b % 32u), firstLeadingBit(3324u)), 93995u, func_2(Struct_1(-8030i, min(var_0.d.b, 1u), func_2(Struct_1(u_input.a.x, 1u, var_0.c.c, false, global3.d.x), 203u, global3.a, 0i).c, true, true), 3288u, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1042f + -302f))), -31306i ^ func_2(Struct_1(-13179i, 0u, global0[_wgslsmith_index_u32(35222u, 1u)], global3.e.e, arg_3), var_0.a, -641f, -55667i).a).c.x) % 32u);
    let var_2 = firstTrailingBit(abs(vec2<i32>(firstTrailingBit(15067i), global3.c.x << (global3.e.b % 32u))));
    var var_3 = -127f;
    let var_4 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a, global3.a, 419f, 364f)))))));
    return countOneBits(abs(firstLeadingBit(arg_2.e.a)));
}

fn func_1() -> Struct_1 {
    global4 = -func_5(global3.d.wyz, global3.d.x, Struct_2(global3.a, func_2(Struct_1(global3.c.x, global3.e.b, vec2<bool>(false, global3.b.e), false, false), global3.b.b, global3.a, _wgslsmith_add_i32(u_input.a.x, u_input.a.x)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i), vec3<i32>(u_input.a.x, u_input.a.x, 0i) >> (vec3<u32>(global3.b.b, global3.e.b, 0u) % vec3<u32>(32u))), vec4<bool>(select(global3.e.d, true, false), global3.e.c.x, true, !global3.d.x), func_2(func_2(global3.b, global3.e.b, 473f, global3.c.x), 86787u, _wgslsmith_f_op_f32(exp2(global3.a)), -1i)), false);
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a)) * global3.a);
    var_0 = global3.a;
    var var_1 = global3.c.x;
    global3 = Struct_2(global3.a, func_2(global3.e, 1u, _wgslsmith_div_f32(global3.a, _wgslsmith_f_op_f32(-968f - _wgslsmith_f_op_f32(exp2(global3.a)))), _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.a.x, -2147483647i), 55143i)), global3.c, select(select(select(select(vec4<bool>(true, global3.e.c.x, false, false), global3.d, global3.d), !vec4<bool>(true, false, true, global3.b.c.x), vec4<bool>(global3.e.e, global3.e.e, global3.e.c.x, global3.d.x)), global3.d, global3.d), !(!vec4<bool>(global3.b.c.x, true, global3.d.x, global3.d.x)), true), Struct_1(1i, 1u, vec2<bool>(global3.e.d, false), true, false));
    return global3.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = i32(-1i) * -692i;
    var var_1 = vec2<bool>(true, all(global3.e.c) || (countOneBits(global3.b.b >> (global3.e.b % 32u)) > global3.e.b));
    let var_2 = func_1();
    var var_3 = u_input.a;
    var var_4 = Struct_1(_wgslsmith_mod_i32(-var_0, -(firstTrailingBit(0i) << (_wgslsmith_mod_u32(1u, global3.b.b) % 32u))), ~4294967295u, vec2<bool>(true == (_wgslsmith_mult_i32(-24444i, var_3.x) <= 2045i), ~_wgslsmith_dot_vec4_i32(vec4<i32>(var_0, 0i, 1i, var_2.a), vec4<i32>(global3.b.a, 1i, var_0, 0i)) < ((-14480i >> (global3.e.b % 32u)) & 0i)), all(global3.d.zxw), select(true, any(!vec2<bool>(false, global3.e.c.x)), var_2.c.x) & var_2.e);
    global4 = -(~1i) ^ (-12405i | _wgslsmith_mult_i32(var_4.a, _wgslsmith_div_i32(_wgslsmith_mod_i32(2147483647i, 6158i), global3.e.a)));
    global0 = array<vec2<bool>, 1>();
    var var_5 = min(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i) * -(var_3.xz ^ vec2<i32>(27014i, 4846i)), global3.c.yz), min(-_wgslsmith_clamp_vec2_i32(-vec2<i32>(var_3.x, var_4.a), global3.c.zy, vec2<i32>(130i, 1i)), min(select(vec2<i32>(var_4.a, 0i), firstLeadingBit(vec2<i32>(u_input.a.x, u_input.a.x)), true), ~max(global3.c.yx, global3.c.yx))));
    let x = u_input.a;
    s_output = StorageBuffer(271f, ~vec4<u32>(~_wgslsmith_div_u32(global3.e.b, 0u), _wgslsmith_div_u32(~global3.e.b, ~80677u), ~var_4.b, var_4.b), vec4<u32>(select(_wgslsmith_div_u32(21995u, var_4.b | var_4.b), _wgslsmith_mod_u32(~global3.b.b, abs(0u)), all(vec3<bool>(global3.e.e, global3.e.d, true))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 14832u, var_2.b, 4294967295u), vec4<u32>(0u, 4294967295u, global3.e.b, 45760u)), abs(reverseBits(var_4.b | var_2.b)), global3.e.b));
}

