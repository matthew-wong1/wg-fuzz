struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec4<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(false, true, vec3<i32>(-2649i, -76874i, i32(-2147483648))), Struct_1(false, true, vec3<i32>(-1i, -1i, -17907i)), Struct_1(false, true, vec3<i32>(16028i, i32(-2147483648), i32(-2147483648))), Struct_1(false, true, vec3<i32>(-13516i, -6895i, 0i)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> i32 {
    var var_0 = ~77629u;
    var var_1 = arg_1;
    var_0 = 21990u;
    let var_2 = Struct_1(false, true, vec3<i32>(var_1.c.x, 1i & _wgslsmith_add_i32(var_1.c.x, 35541i), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(arg_1.c, var_1.c), u_input.c.x, 34202i), _wgslsmith_mod_vec3_i32(max(vec3<i32>(arg_1.c.x, -6795i, 2147483647i), var_1.c), firstLeadingBit(vec3<i32>(arg_1.c.x, 1i, var_1.c.x))))));
    var var_3 = Struct_1(true, false, select(vec3<i32>(10786i ^ _wgslsmith_clamp_i32(arg_1.c.x, -28872i, -1i), -1i, abs(1i)), select(_wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(arg_1.c.x, 0i, var_1.c.x)), ~var_2.c), vec3<i32>(u_input.c.x & -80910i, -arg_1.c.x, var_2.c.x), any(!vec3<bool>(var_1.b, false, false))), !any(vec2<bool>(var_1.b, false))));
    return -2381i;
}

fn func_4(arg_0: vec3<i32>, arg_1: i32) -> u32 {
    var var_0 = countOneBits(-2147483647i);
    var var_1 = !(!vec3<bool>(-4049i > arg_1, any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), false)), !all(vec3<bool>(true, true, false))));
    global0 = array<Struct_1, 4>();
    return 4569u;
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    let var_0 = select(vec3<bool>(arg_2.a, 1i < arg_1.c.x, arg_1.b), vec3<bool>(arg_2.b, all(!vec3<bool>(arg_3.a, arg_3.b, arg_1.a)), !(!arg_1.a)), vec3<bool>(arg_3.b, _wgslsmith_div_u32(88103u, min(u_input.b, 4294967295u)) < ~(u_input.b ^ 10140u), all(vec3<bool>(select(false, arg_3.b, true), !arg_3.a, all(vec2<bool>(true, false))))));
    global0 = array<Struct_1, 4>();
    let var_1 = true;
    global0 = array<Struct_1, 4>();
    var var_2 = select(var_1 == var_1, !arg_1.a, false);
    return arg_0;
}

fn func_2(arg_0: u32) -> vec4<bool> {
    let var_0 = ~(vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, arg_0, arg_0), u_input.a), 7073u) << (~vec2<u32>(u_input.b, arg_0) % vec2<u32>(32u)));
    var var_1 = global0[_wgslsmith_index_u32(u_input.b, 4u)];
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -839f) + -646f) + 1030f) < _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_f32(f32(-1f) * -1112f), global0[_wgslsmith_index_u32(func_4(~vec3<i32>(-27367i, -32453i, var_1.c.x), func_3(false, global0[_wgslsmith_index_u32(58328u, 4u)])), 4u)], global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(30205u | u_input.b, firstTrailingBit(25747u)), 4u)], global0[_wgslsmith_index_u32(~100600u, 4u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1042f, -2039f))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(110f * -472f)))), var_1.b));
    var_1 = global0[_wgslsmith_index_u32(arg_0, 4u)];
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(745f - _wgslsmith_f_op_f32(select(788f, -817f, var_1.b))) * -1916f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-256f))))));
    return vec4<bool>(var_1.a, any(vec3<bool>(true, var_1.b, false)), any(vec2<bool>(all(!vec4<bool>(false, var_1.b, false, false)), var_1.a)), all(vec3<bool>(true, true, any(vec2<bool>(false, var_1.b)))) || var_1.b);
}

fn func_6(arg_0: vec4<bool>, arg_1: i32) -> Struct_1 {
    let var_0 = arg_1;
    var var_1 = -1i;
    let var_2 = _wgslsmith_add_vec3_i32(firstTrailingBit(~min(vec3<i32>(var_0, var_0, arg_1) >> (vec3<u32>(u_input.a.x, u_input.b, u_input.a.x) % vec3<u32>(32u)), vec3<i32>(var_0, var_0, -22922i))), vec3<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(-7721i, u_input.c.x), ~_wgslsmith_sub_vec2_i32(u_input.c, vec2<i32>(-13653i, var_0))), arg_1, arg_1));
    global0 = array<Struct_1, 4>();
    global0 = array<Struct_1, 4>();
    return global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~(~64587u)), u_input.a.x), 4u)];
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    var var_0 = func_6(select(vec4<bool>(true, select(false, true, all(vec2<bool>(arg_1.b, true))), arg_0.a, false), func_2(select(55620u, u_input.a.x, false) | u_input.a.x), vec4<bool>(arg_1.b, false, arg_0.a, arg_0.a)), 44223i);
    var var_1 = 2147483647i;
    var_1 = -1i;
    global0 = array<Struct_1, 4>();
    var_0 = func_6(!select(vec4<bool>(all(vec2<bool>(var_0.b, arg_0.b)), all(vec4<bool>(false, arg_1.a, false, false)), arg_0.a, arg_0.b), select(!vec4<bool>(var_0.b, arg_0.b, false, true), !vec4<bool>(var_0.a, arg_0.a, var_0.a, false), true), abs(u_input.a.x) > 5648u), _wgslsmith_clamp_i32(1i, _wgslsmith_mod_i32(~_wgslsmith_dot_vec2_i32(arg_1.c.zy, vec2<i32>(arg_0.c.x, 0i)), abs(6315i)), arg_0.c.x));
    return arg_1.c.x & ~arg_1.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 4>();
    var var_0 = Struct_1(true, true, _wgslsmith_add_vec3_i32(vec3<i32>(-15199i, abs(func_1(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], Struct_1(true, true, vec3<i32>(-2147483647i, u_input.c.x, u_input.c.x)))), firstLeadingBit(u_input.c.x)), vec3<i32>(~(-1i), ~(-1974i), _wgslsmith_mod_i32(-7358i, u_input.c.x)) & ~(~vec3<i32>(1i, 2147483647i, u_input.c.x))));
    var var_1 = Struct_1(!all(vec3<bool>(true, true, false)), select(true, func_2(44242u).x, false | func_6(select(vec4<bool>(false, true, true, var_0.a), vec4<bool>(true, var_0.b, var_0.a, var_0.b), vec4<bool>(true, true, false, false)), 47809i).b), vec3<i32>(_wgslsmith_dot_vec2_i32(-min(u_input.c, u_input.c), vec2<i32>(var_0.c.x, -2147483647i)), var_0.c.x, -13302i));
    var var_2 = func_6(vec4<bool>(!var_1.a, false, true, var_1.a), -22004i);
    global0 = array<Struct_1, 4>();
    var_2 = func_6(vec4<bool>(var_2.b, any(!(!vec2<bool>(false, var_0.b))), any(vec2<bool>(true, false)), var_1.a), var_0.c.x << ((u_input.a.x & u_input.a.x) % 32u));
    var_2 = Struct_1(true, all(!vec3<bool>(var_2.a, var_0.b, var_2.b)) || all(!select(vec2<bool>(var_1.a, var_1.a), vec2<bool>(var_2.b, var_0.b), vec2<bool>(var_0.b, var_1.b))), abs(-vec3<i32>(-var_0.c.x, var_2.c.x & var_0.c.x, abs(2147483647i))));
    var_2 = Struct_1(var_1.a, var_1.a, vec3<i32>(~u_input.d.x, _wgslsmith_mod_i32(~var_2.c.x, -1i) | var_1.c.x, max(select(var_1.c.x, u_input.c.x | 5607i, true), firstTrailingBit(-9998i))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(var_2.c.x << (4294967295u % 32u), ~_wgslsmith_add_i32(-var_1.c.x, -14065i), 1i >> (reverseBits(_wgslsmith_add_u32(67979u, u_input.a.x)) % 32u)), _wgslsmith_f_op_f32(abs(-1476f)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(538f)) - -1000f)), 974f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1572f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(1068f)), _wgslsmith_div_f32(1836f, -976f))), !select(var_1.a, true, var_2.a))), _wgslsmith_f_op_f32(-1306f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-801f - 625f)))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1463f, -487f)) - _wgslsmith_f_op_f32(112f + -1000f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-2112f + -1508f)))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(338f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -943f))))));
}

