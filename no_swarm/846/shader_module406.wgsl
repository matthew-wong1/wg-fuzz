struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<i32>, 20>;

var<private> global2: array<f32, 15>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    var var_0 = !global0.b.yx;
    let var_1 = select(!vec4<bool>(global0.b.x || true, true, false, false), !global0.b, vec4<bool>(global0.b.x, true, !var_0.x, false));
    let var_2 = u_input.a;
    var var_3 = global0.a;
    var var_4 = Struct_1(global2[_wgslsmith_index_u32(~u_input.e, 15u)], vec4<bool>(true, any(!(!global0.b.wz)), var_1.x, var_0.x));
    return var_4.b.x;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>) -> bool {
    global0 = Struct_1(arg_0.a, !arg_1.b);
    var var_0 = _wgslsmith_mod_i32(-1i, u_input.c.x);
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-952f))), vec4<bool>(true, any(!arg_1.b.yy), func_3(), true));
    var var_1 = arg_0;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-719f, global2[_wgslsmith_index_u32(arg_2.x, 15u)])))), _wgslsmith_f_op_f32(step(arg_1.a, arg_1.a)));
    return ~(u_input.a << (countOneBits(59296u) % 32u)) > ~(~_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a, u_input.a, u_input.d, 0i), vec4<i32>(u_input.c.x, -2147483647i, 1i, -90192i) >> (arg_2 % vec4<u32>(32u))));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: vec2<f32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = vec4<bool>(true, true, global0.b.x, any(select(vec4<bool>(arg_0.x | arg_0.x, arg_2.x != global0.a, true, !arg_0.x), !arg_3.b, arg_3.b)));
    return Struct_1(arg_2.x, vec4<bool>(arg_3.b.x, select(true, any(vec4<bool>(true, true, false, arg_0.x)) & any(vec3<bool>(arg_0.x, true, true)), true), any(vec2<bool>(true, arg_0.x & true)), false));
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = func_4(vec3<bool>(func_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -2445f), global0.b), Struct_1(_wgslsmith_f_op_f32(-global0.a), select(vec4<bool>(false, global0.b.x, false, false), vec4<bool>(global0.b.x, global0.b.x, global0.b.x, false), vec4<bool>(false, global0.b.x, false, false))), vec4<u32>(_wgslsmith_sub_u32(36458u, 3239u), u_input.b.x, abs(16646u), ~u_input.e)), 50766u <= u_input.e, all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, global0.b.x), global0.b.x))), abs(_wgslsmith_mult_vec2_i32(~vec2<i32>(0i, 2147483647i) >> (~u_input.b.zz % vec2<u32>(32u)), ~u_input.c.yx)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, 1000f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.a, 1000f))), vec2<bool>(global0.b.x, true))) + _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.a, global2[_wgslsmith_index_u32(u_input.b.x, 15u)])))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(130874u, 15u)], global0.a) * vec2<f32>(-1190f, -281f)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(select(4294967295u, 4294967295u, true), 15u)] + _wgslsmith_f_op_f32(-global0.a)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1000f * global2[_wgslsmith_index_u32(u_input.e, 15u)])))), select(vec4<bool>(false, any(global0.b.xyz), false, all(vec4<bool>(false, false, false, false))), !global0.b, vec4<bool>(any(global0.b.xy), !global0.b.x, all(global0.b), true))));
    let var_1 = 2139f;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -883f) + _wgslsmith_f_op_f32(-var_0.a)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a))), vec4<bool>(true, any(select(!vec2<bool>(var_0.b.x, true), !var_0.b.zy, true)), any(global0.b), var_0.b.x));
    global2 = array<f32, 15>();
    global0 = func_4(!global0.b.wyx, _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, -15801i), u_input.c.zx, -vec2<i32>(-2147483647i, _wgslsmith_clamp_i32(u_input.c.x, 0i, 1i))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1409f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-2014f, var_2.a), vec2<f32>(1049f, -804f), global0.b.zw))))))), Struct_1(1645f, select(!(!global0.b), vec4<bool>(func_4(vec3<bool>(false, false, var_2.b.x), u_input.c.xz, vec2<f32>(-724f, -529f), var_2).b.x, false | var_2.b.x, true, !global0.b.x), !var_2.b)));
    return Struct_1(var_1, select(vec4<bool>(true, false, var_0.b.x, global0.b.x), !vec4<bool>(all(vec4<bool>(true, var_2.b.x, true, true)), func_3(), global0.b.x, false), var_0.b.x));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>) -> Struct_1 {
    let var_0 = vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(select(2095f, 876f, any(vec3<bool>(true, global0.b.x == true, !global0.b.x)))));
    var var_1 = _wgslsmith_mult_i32(u_input.a, u_input.c.x);
    var var_2 = u_input.b.x;
    var var_3 = u_input.b.x;
    var var_4 = _wgslsmith_clamp_u32(~(~(~1u)), countOneBits(firstLeadingBit(~4294967295u)) << (0u % 32u), u_input.b.x);
    return func_4(!(!(!(!arg_0.b.ywx))), _wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, _wgslsmith_sub_i32(select(46063i, u_input.c.x, arg_0.b.x), u_input.a)), min(abs(u_input.c.yz), min(vec2<i32>(u_input.a, 1i), vec2<i32>(u_input.c.x, -1i) & vec2<i32>(18815i, 0i)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 1069f) - arg_1), _wgslsmith_f_op_vec2_f32(-arg_1)) * arg_1))), arg_0);
}

fn func_6(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    global2 = array<f32, 15>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(arg_1.a, _wgslsmith_div_f32(global0.a, -1032f))), global2[_wgslsmith_index_u32(u_input.b.x, 15u)])), _wgslsmith_f_op_f32(-func_5(arg_1, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1198f, global0.a))).a)));
    var var_1 = firstLeadingBit(vec4<u32>(1u << (u_input.e % 32u), ~(~11928u), min(reverseBits(4294967295u << (u_input.e % 32u)), u_input.b.x), 24317u));
    global2 = array<f32, 15>();
    var_1 = vec4<u32>(arg_0, 0u, _wgslsmith_add_u32(var_1.x, u_input.e), ~max(reverseBits(abs(27582u)), var_1.x));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(59401u, func_5(func_1(22748i), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(u_input.b.x, 15u)])), 1000f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2099f, -110f))))));
    var var_1 = !(!global0.b.zw);
    var var_2 = var_0.b.x;
    let var_3 = global2[_wgslsmith_index_u32(6909u, 15u)];
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.zz, 1382f, reverseBits(max(~(vec2<u32>(u_input.b.x, 0u) << (vec2<u32>(0u, u_input.e) % vec2<u32>(32u))), abs(vec2<u32>(0u, u_input.e)))));
}

