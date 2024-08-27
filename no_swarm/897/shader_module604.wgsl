struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: vec4<bool>,
    d: f32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 27>;

var<private> global1: array<vec3<i32>, 5>;

var<private> global2: bool = false;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: vec3<bool>, arg_3: Struct_3) -> vec2<bool> {
    let var_0 = arg_3;
    let var_1 = var_0.b.x;
    global1 = array<vec3<i32>, 5>();
    global1 = array<vec3<i32>, 5>();
    return !select(vec2<bool>(true, any(vec4<bool>(true, true, true, true))), select(select(arg_2.zz, !arg_0.a.a, select(arg_2.xz, vec2<bool>(arg_3.a, false), var_0.a)), vec2<bool>(select(false, true, arg_3.a), arg_2.x), !vec2<bool>(true, arg_2.x)), arg_0.a.c.zy);
}

fn func_2(arg_0: bool, arg_1: i32) -> vec2<bool> {
    var var_0 = _wgslsmith_mod_u32(u_input.c, 1u << (u_input.c % 32u));
    global2 = arg_0 && arg_0;
    var var_1 = Struct_1(func_3(Struct_2(Struct_1(vec2<bool>(arg_0, arg_0), -u_input.a, vec4<bool>(false, arg_0, true, arg_0), _wgslsmith_f_op_f32(f32(-1f) * -404f), u_input.a.xyz)), ~32395i, vec3<bool>(true, !arg_0, arg_0), Struct_3(arg_0 | arg_0, _wgslsmith_sub_vec4_u32(u_input.b, u_input.b) ^ ~vec4<u32>(7035u, u_input.c, 0u, u_input.b.x))), vec4<i32>(-1i) * -vec4<i32>(arg_1 << (u_input.c % 32u), -20022i, ~global0[_wgslsmith_index_u32(17088u, 27u)], 9669i), !select(vec4<bool>(any(vec4<bool>(true, true, true, true)), arg_0, arg_0, !arg_0), vec4<bool>(arg_0 != arg_0, func_3(Struct_2(Struct_1(vec2<bool>(true, arg_0), u_input.a, vec4<bool>(true, arg_0, true, arg_0), -2262f, vec3<i32>(global0[_wgslsmith_index_u32(54561u, 27u)], -2147483647i, arg_1))), global0[_wgslsmith_index_u32(43907u, 27u)], vec3<bool>(arg_0, arg_0, arg_0), Struct_3(arg_0, u_input.b)).x, false, !arg_0), any(vec3<bool>(arg_0, arg_0, arg_0))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1018f, _wgslsmith_f_op_f32(f32(-1f) * -535f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1224f), _wgslsmith_f_op_f32(f32(-1f) * -374f))), arg_1 != global0[_wgslsmith_index_u32(u_input.c, 27u)])), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-210f)))))), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, _wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.c, 4294967295u), ~54093u)), 5u)]);
    let var_2 = select(var_1.c, select(var_1.c, select(!select(vec4<bool>(var_1.a.x, false, var_1.a.x, arg_0), vec4<bool>(arg_0, arg_0, false, arg_0), arg_0), var_1.c, !arg_0 & all(var_1.c)), select(vec4<bool>(u_input.b.x <= 40998u, true, false, true), vec4<bool>(var_1.d >= var_1.d, true, !var_1.c.x, true), select(!var_1.c, var_1.c, !var_1.c))), any(var_1.c.ww));
    var var_3 = Struct_2(Struct_1(select(!vec2<bool>(var_1.c.x, arg_0), !vec2<bool>(var_2.x, false), var_2.x & (var_2.x & arg_0)), -vec4<i32>(-1i, -2147483647i, -68012i, -20648i) >> (vec4<u32>(u_input.b.x & 14291u, ~4294967295u, u_input.b.x, select(u_input.c, u_input.c, arg_0)) % vec4<u32>(32u)), !var_2, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.d))), _wgslsmith_f_op_f32(-var_1.d)), select(~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.b.www, u_input.b.xzx), 5u)], vec3<i32>(-1i) * -u_input.a.zzy, false | (arg_0 & true))));
    return vec2<bool>(all(func_3(Struct_2(var_3.a), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, var_3.a.b.x), var_1.b.ww), var_1.c.wxx, Struct_3(!var_3.a.c.x, u_input.b))), all(!(!(!vec3<bool>(arg_0, true, var_2.x)))));
}

fn func_1(arg_0: vec3<u32>) -> vec3<bool> {
    global2 = true;
    var var_0 = Struct_1(select(!(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false))), !func_2(true, global0[_wgslsmith_index_u32(u_input.b.x, 27u)]), func_3(Struct_2(Struct_1(vec2<bool>(true, true), u_input.a, vec4<bool>(false, false, false, false), -475f, vec3<i32>(u_input.a.x, -1i, global0[_wgslsmith_index_u32(arg_0.x, 27u)]))), (43475i ^ u_input.a.x) | ~3547i, !select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), Struct_3(func_3(Struct_2(Struct_1(vec2<bool>(false, true), u_input.a, vec4<bool>(true, true, true, false), 441f, global1[_wgslsmith_index_u32(arg_0.x, 5u)])), u_input.a.x, vec3<bool>(false, true, true), Struct_3(true, u_input.b)).x, vec4<u32>(4294967295u, u_input.b.x, arg_0.x, 1u) >> (u_input.b % vec4<u32>(32u))))), vec4<i32>(_wgslsmith_mod_i32(2147483647i, 2147483647i), u_input.a.x, -2147483647i, u_input.a.x), vec4<bool>(select(false, !all(vec2<bool>(false, false)), true), u_input.a.x != 0i, true, all(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false)), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false)), true))), _wgslsmith_f_op_f32(floor(-838f)), ~select(global1[_wgslsmith_index_u32(~u_input.b.x, 5u)], ~firstLeadingBit(vec3<i32>(8996i, u_input.a.x, global0[_wgslsmith_index_u32(53389u, 27u)])), 41135u >= arg_0.x));
    var var_1 = var_0.c.x;
    let var_2 = max(~u_input.b.x, u_input.b.x);
    global0 = array<i32, 27>();
    return vec3<bool>(true, select(true, any(var_0.c.wyz) & var_0.a.x, all(var_0.c)), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(select(!vec2<bool>(true, all(vec4<bool>(false, true, false, false))), vec2<bool>(any(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true))), true), true), abs(-u_input.a), vec4<bool>(true, any(!func_1(vec3<u32>(u_input.b.x, u_input.c, u_input.b.x))), select(any(vec4<bool>(true, true, false, true)), true, true) && func_2(select(true, false, true), 1i).x, false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-563f + 469f))) - -842f), select(vec3<i32>(u_input.a.x, _wgslsmith_mod_i32(-39094i, -2147483647i), countOneBits(_wgslsmith_mod_i32(u_input.a.x, 0i))), vec3<i32>(-20637i, 0i, -max(-2147483647i, -1i)), vec3<bool>(all(vec4<bool>(true, false, false, false)), all(vec2<bool>(false, false)), true)));
    var var_1 = -1575f;
    let var_2 = Struct_3(true, ~(~_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.b.x, 1059u, u_input.b.x, 0u), ~u_input.b)));
    let var_3 = Struct_3(!(var_0.d < _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(var_0.d))))), vec4<u32>(abs(~var_2.b.x), _wgslsmith_mult_u32(countOneBits(_wgslsmith_clamp_u32(var_2.b.x, var_2.b.x, 4294967295u)), 1u << (abs(var_2.b.x) % 32u)), 4294967295u, u_input.c));
    let var_4 = Struct_3(_wgslsmith_div_i32(firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 1i, global0[_wgslsmith_index_u32(67488u, 27u)], u_input.a.x), var_0.b)), global0[_wgslsmith_index_u32(reverseBits(var_3.b.x), 27u)] << (_wgslsmith_add_u32(var_2.b.x, 82381u) % 32u)) > u_input.a.x, var_2.b);
    let var_5 = Struct_2(Struct_1(func_2(any(!vec2<bool>(var_4.a, var_2.a)), ~_wgslsmith_mult_i32(-8201i, -16275i)), abs(-vec4<i32>(u_input.a.x, -34135i, -13545i, u_input.a.x)), var_0.c, _wgslsmith_f_op_f32(min(var_0.d, 337f)), _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(var_2.b.x, 27u)], -18056i), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(78267u, var_4.b.x), 5u)] ^ vec3<i32>(global0[_wgslsmith_index_u32(13623u, 27u)], global0[_wgslsmith_index_u32(15437u, 27u)], var_0.b.x))));
    global2 = _wgslsmith_div_u32(1u, _wgslsmith_add_u32(0u, ~87465u)) < reverseBits(~firstTrailingBit(var_3.b.x));
    global0 = array<i32, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, _wgslsmith_f_op_f32(-var_5.a.d));
}

