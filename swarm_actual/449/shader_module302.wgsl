struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: i32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec2<i32>(19900i, -45729i), 11373u, 139817u, 500i, vec2<f32>(-1125f, -1156f)), Struct_1(vec2<i32>(1i, 2147483647i), 1u, 19220u, 35440i, vec2<f32>(-253f, 562f)), Struct_1(vec2<i32>(1i, i32(-2147483648)), 1u, 4419u, 16252i, vec2<f32>(-1416f, -167f)), Struct_1(vec2<i32>(-41383i, 2147483647i), 1u, 4294967295u, i32(-2147483648), vec2<f32>(1000f, 1129f)));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<f32>, arg_1: i32) -> vec2<i32> {
    var var_0 = global1[_wgslsmith_index_u32(~(~(global0.b | abs(_wgslsmith_div_u32(65738u, 2362u)))), 4u)];
    let var_1 = vec3<u32>(~(~_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.b.xw, vec2<u32>(1u, var_0.b), u_input.b.zx), u_input.b.yx)), _wgslsmith_add_u32(u_input.b.x, ~(~var_0.c)), ~var_0.b);
    var var_2 = ~firstLeadingBit(~(~max(var_1.xz, vec2<u32>(8477u, 4294967295u))));
    global0 = Struct_1(vec2<i32>(_wgslsmith_add_i32(9605i, _wgslsmith_add_i32(max(global0.a.x, global0.a.x), arg_1)), _wgslsmith_mod_i32(global0.a.x, 42248i)), max(global0.b, var_0.c), var_2.x, 0i, _wgslsmith_f_op_vec2_f32(-var_0.e));
    var var_3 = all(vec3<bool>(true, any(select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(true, false), true), true)), false));
    return countOneBits(u_input.a.yz);
}

fn func_2() -> Struct_1 {
    var var_0 = u_input.b;
    let var_1 = u_input.a.yy;
    var var_2 = _wgslsmith_f_op_f32(trunc(global0.e.x));
    global0 = Struct_1(countOneBits(func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(831f, -478f, -1827f, 359f) * vec4<f32>(-682f, -117f, global0.e.x, 1000f)), u_input.c)) & vec2<i32>(-1i, var_1.x), ~60624u, firstTrailingBit(4294967295u), -2883i, global0.e);
    let var_3 = ~(~_wgslsmith_mod_u32(var_0.x >> (0u % 32u), global0.b) << (u_input.b.x % 32u));
    return Struct_1(select(reverseBits(vec2<i32>(-1i, 12169i) & _wgslsmith_div_vec2_i32(vec2<i32>(-15887i, var_1.x), u_input.a.yz)), vec2<i32>(-5385i, select(~36310i, abs(-2147483647i), false)), all(vec3<bool>(select(true, false, false), any(vec4<bool>(true, false, false, false)), false))), ~_wgslsmith_dot_vec4_u32(u_input.b, u_input.b), countOneBits(u_input.b.x), global0.a.x, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.e.x, global0.e.x)))));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> vec2<bool> {
    global1 = array<Struct_1, 4>();
    let var_0 = !all(vec4<bool>(true, false, false, false));
    global0 = Struct_1(_wgslsmith_mult_vec2_i32(abs(_wgslsmith_sub_vec2_i32(select(arg_0.a, vec2<i32>(arg_0.d, -1i), false), firstTrailingBit(u_input.a.xx))), vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.a.yx, arg_0.a) | -arg_1, 2147483647i)), u_input.b.x, firstLeadingBit(global0.c), i32(-1i) * -2147483647i, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(-1941f, -998f)), arg_0.e.x)))));
    return vec2<bool>(any(vec4<bool>(all(select(vec3<bool>(false, false, var_0), vec3<bool>(var_0, var_0, true), true)), all(select(vec3<bool>(var_0, true, var_0), vec3<bool>(true, var_0, true), vec3<bool>(false, var_0, var_0))), true, any(select(vec2<bool>(var_0, true), vec2<bool>(var_0, var_0), false)))), arg_2.d < countOneBits(u_input.c));
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    var var_0 = arg_0;
    let var_1 = ~14760u;
    var var_2 = any(func_4(Struct_1(abs(vec2<i32>(1i, 22015i)), 23881u, var_1, -9521i, global0.e), _wgslsmith_mult_i32(var_0.a.x, var_0.a.x), func_2()));
    global1 = array<Struct_1, 4>();
    var_2 = func_4(Struct_1(var_0.a, arg_0.b, ~1u | max(var_0.b, arg_0.b), arg_0.d, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.e.x) * 116f), global0.e.x)), global0.a.x, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(countOneBits(51831u), 47795u), 4u)]).x;
    return arg_0;
}

fn func_5(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_1) -> u32 {
    global1 = array<Struct_1, 4>();
    var var_0 = firstLeadingBit(_wgslsmith_dot_vec4_i32(min(vec4<i32>(u_input.c, global0.d, u_input.a.x, arg_2.a.x) | vec4<i32>(global0.d, global0.a.x, global0.d, -31283i), min(vec4<i32>(-15472i, arg_2.d, 0i, 46427i), vec4<i32>(arg_2.a.x, global0.a.x, 1i, 1i))) << (~(~vec4<u32>(u_input.b.x, global0.c, 0u, global0.c)) % vec4<u32>(32u)), vec4<i32>(-1i) * -(~vec4<i32>(global0.d, 1i, 1i, 0i))));
    let var_1 = arg_1;
    let var_2 = global1[_wgslsmith_index_u32(78386u & _wgslsmith_div_u32(~arg_2.c, 35756u), 4u)];
    var var_3 = Struct_1(vec2<i32>(max(-1i, firstTrailingBit(u_input.c << (u_input.b.x % 32u))), -min(13493i, 2147483647i & u_input.c)), _wgslsmith_dot_vec4_u32(max(max(select(u_input.b, vec4<u32>(var_2.c, 75110u, 0u, u_input.b.x), false), vec4<u32>(0u, global0.b, 16998u, global0.c)), u_input.b), abs(~(u_input.b >> (u_input.b % vec4<u32>(32u))))), 4294967295u, _wgslsmith_add_i32(u_input.a.x, ~(-reverseBits(0i))), arg_2.e);
    return ~arg_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var_0 = !(!all(vec2<bool>(true, true)));
    let var_1 = global1[_wgslsmith_index_u32(func_5(select(vec4<bool>(!all(vec2<bool>(false, false)), true, all(vec4<bool>(true, true, true, true)), all(vec4<bool>(true, false, false, true))), vec4<bool>(true, false, false, all(vec4<bool>(true, false, true, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(global0.e.x + 550f) > global0.e.x)), _wgslsmith_f_op_f32(trunc(global0.e.x)), func_1(Struct_1(-vec2<i32>(global0.d, -1i), countOneBits(reverseBits(global0.c)), ~u_input.b.x >> (24627u % 32u), global0.a.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(1749f, global0.e.x) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.e.x, global0.e.x) * vec2<f32>(global0.e.x, -890f)))), _wgslsmith_mult_i32(-33873i, ~global0.a.x))), 4u)];
    var var_2 = func_1(Struct_1(_wgslsmith_mult_vec2_i32(-vec2<i32>(var_1.a.x, 2147483647i), vec2<i32>(~(-1i), ~global0.d)), ~u_input.b.x, _wgslsmith_div_u32(max(var_1.b, ~78090u), 4294967295u), -(_wgslsmith_add_i32(u_input.c, u_input.c) | ~(-4391i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1676f, _wgslsmith_f_op_f32(global0.e.x * -1092f)))), i32(-1i) * -(~58576i));
    let var_3 = vec4<bool>(any(vec3<bool>(true, !all(vec4<bool>(false, false, true, true)), all(vec2<bool>(false, false)))), select(true, false, true), true, all(select(func_4(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(1722u, 7257u), 4u)], ~(-15306i), global1[_wgslsmith_index_u32(1u, 4u)]), !select(vec2<bool>(false, true), vec2<bool>(true, true), false), false)));
    let var_4 = false;
    let var_5 = _wgslsmith_f_op_f32(var_2.e.x + 129f);
    global1 = array<Struct_1, 4>();
    let var_6 = true;
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_clamp_vec2_u32(u_input.b.yz, abs(_wgslsmith_div_vec2_u32(u_input.b.xx, vec2<u32>(1u, 46635u))), u_input.b.zw), abs(vec2<u32>(~1u, func_1(Struct_1(var_1.a, 1674u, u_input.b.x, 48242i, vec2<f32>(var_5, -294f)), var_2.a.x).c)), select(var_3.yx, vec2<bool>(any(vec3<bool>(var_3.x, var_4, false)), 0u > global0.c), !var_3.zx)), vec4<f32>(1182f, _wgslsmith_f_op_f32(min(995f, _wgslsmith_f_op_f32(-var_2.e.x))), var_1.e.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-727f, _wgslsmith_f_op_f32(select(-121f, 1162f, var_3.x))) + 627f)), u_input.b.zy, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.e.x, -706f, _wgslsmith_f_op_f32(ceil(351f)), global0.e.x) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.e.x, -1000f, -1000f, var_2.e.x)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-387f, -894f, 233f, 701f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.e.x, 1379f, var_2.e.x, -490f) - vec4<f32>(-579f, var_5, var_5, global0.e.x)))), var_3))));
}

