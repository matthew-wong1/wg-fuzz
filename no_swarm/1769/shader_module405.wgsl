struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(-261f);

var<private> global2: array<bool, 25> = array<bool, 25>(true, false, true, false, true, false, true, false, false, false, true, true, false, true, false, false, false, true, true, false, true, true, false, true, true);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(countOneBits(~(~u_input.c) ^ -u_input.c));
    let var_1 = Struct_2(u_input.c);
    var var_2 = var_0;
    var var_3 = ~abs(u_input.a.zz) & vec2<u32>(u_input.b.x, u_input.d);
    var var_4 = vec2<f32>(785f, 748f);
    return Struct_1(-619f);
}

fn func_3() -> vec3<bool> {
    let var_0 = u_input.c;
    let var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1469f, global0.a, -790f, -484f), vec4<f32>(500f, global0.a, 684f, global0.a)))))))));
    let var_2 = vec3<bool>(false, select(!global2[_wgslsmith_index_u32(47653u, 25u)], all(!(!vec2<bool>(true, global2[_wgslsmith_index_u32(16602u, 25u)]))), false), var_1.x == _wgslsmith_f_op_f32(var_1.x - -800f));
    return var_2;
}

fn func_1(arg_0: u32) -> f32 {
    let var_0 = global1.a;
    global0 = Struct_1(1426f);
    global1 = func_2();
    var var_1 = func_3();
    var var_2 = Struct_2(-1i);
    return 548f;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    global2 = array<bool, 25>();
    let var_0 = func_2();
    var var_1 = 0u;
    let var_2 = vec4<i32>(-1i, ~(-u_input.c) << (_wgslsmith_dot_vec3_u32(vec3<u32>(~0u, u_input.b.x, 32807u), vec3<u32>(4294967295u, 0u, reverseBits(28178u))) % 32u), u_input.c, -20498i);
    var var_3 = _wgslsmith_dot_vec2_i32(min(vec2<i32>(var_2.x, var_2.x) | firstTrailingBit(var_2.yx), ~firstLeadingBit(var_2.yw)), select(var_2.xx, vec2<i32>(0i, 2147483647i), !vec2<bool>(global2[_wgslsmith_index_u32(0u, 25u)], false)) << (_wgslsmith_mult_vec2_u32(arg_1, u_input.b.wx) % vec2<u32>(32u))) << (u_input.e % 32u);
    return arg_0;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: u32) -> Struct_1 {
    global1 = arg_1;
    let var_0 = arg_3;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1144f - 1830f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) - func_2().a)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.a, -852f)) - func_4(Struct_1(arg_1.a), vec2<u32>(4294967295u, 4294967295u), Struct_1(global0.a), global1.a).a) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(147f + -1765f), _wgslsmith_f_op_f32(f32(-1f) * -699f), all(vec2<bool>(true, true))))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global1.a, arg_0.a, true)), _wgslsmith_f_op_f32(-global0.a)) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1.a - -218f))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(994f, -2043f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(115f, -636f))))));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + arg_1.a)), var_1);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.a)) + _wgslsmith_f_op_f32(-global0.a)))), func_4(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -554f) + _wgslsmith_f_op_f32(func_1(u_input.d)))), ~(u_input.b.yy & vec2<u32>(u_input.e, 579u)), func_2(), _wgslsmith_f_op_f32(min(global1.a, 1021f))), -vec2<i32>(u_input.c, 1i), ~_wgslsmith_sub_u32(abs(_wgslsmith_add_u32(66869u, 27078u)), 41040u));
    var var_0 = u_input.b.xy;
    var var_1 = Struct_2(_wgslsmith_add_i32(_wgslsmith_clamp_i32(0i, ~(-23749i), -u_input.c & 0i), 0i));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(global1.a)), _wgslsmith_f_op_f32(-global1.a))) - func_4(Struct_1(_wgslsmith_div_f32(-934f, global1.a)), ~vec2<u32>(92421u, 80u), Struct_1(global0.a), -179f).a) + global1.a);
    var_0 = select(_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(~firstTrailingBit(u_input.a.yx), u_input.a.wz), min(u_input.a.xx, vec2<u32>(~u_input.a.x, 4294967295u))), u_input.a.zx, select(select(!vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.e, 25u)]), vec2<bool>(true, true), func_3().x & global2[_wgslsmith_index_u32(var_0.x, 25u)]), select(vec2<bool>(true, true), vec2<bool>(true, func_3().x), vec2<bool>(!global2[_wgslsmith_index_u32(var_0.x, 25u)], func_3().x)), func_3().zy));
    global2 = array<bool, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec4<u32>(4294967295u, var_0.x, 1u, ~48820u)));
}

