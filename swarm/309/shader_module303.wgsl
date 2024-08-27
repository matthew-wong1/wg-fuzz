struct Struct_1 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_2,
    c: vec2<u32>,
    d: u32,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(Struct_1(vec2<f32>(-1000f, 288f), 1000f), vec3<f32>(-834f, 175f, 297f));

var<private> global1: Struct_4;

var<private> global2: array<f32, 2> = array<f32, 2>(-834f, 1108f);

var<private> global3: Struct_5;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: bool) -> u32 {
    var var_0 = global1.a;
    global0 = Struct_5(Struct_1(_wgslsmith_f_op_vec2_f32(round(global0.a.a)), global1.b.d.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global3.b * global3.b) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.a.x, global2[_wgslsmith_index_u32(arg_0.x, 2u)], global3.a.b) * arg_1.a))))));
    var var_1 = u_input.d;
    let var_2 = Struct_3(!(!vec3<bool>(false, !var_0.x, select(false, false, true))));
    let var_3 = global3.a.a.x;
    return ~_wgslsmith_sub_u32(var_1.x | _wgslsmith_mod_u32(999u ^ arg_0.x, arg_0.x), var_1.x);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: Struct_5) -> vec2<f32> {
    let var_0 = -vec3<i32>(~34678i, -29811i, -1i >> (arg_2.x % 32u));
    var var_1 = abs(var_0.yx);
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.a.a.x, _wgslsmith_f_op_f32(arg_3.a.b * _wgslsmith_f_op_f32(-global0.b.x)), _wgslsmith_f_op_f32(-global0.b.x))), arg_1.d, Struct_1(_wgslsmith_div_vec2_f32(arg_3.b.yz, _wgslsmith_f_op_vec2_f32(select(arg_3.b.zx, arg_1.d.a, vec2<bool>(global1.a.x, global1.a.x)))), 254f), global3.a);
    var var_3 = true;
    global0 = arg_3;
    return _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(414f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1110f))) - -129f))));
}

fn func_1() -> vec2<u32> {
    let var_0 = firstTrailingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(16621u, (global1.d | 1942u) | func_2(vec3<u32>(0u, u_input.e, u_input.c.x), global1.b, global1.a.x)), vec2<u32>(select(~66378u, ~global1.c.x, global1.a.x), global1.c.x), global1.c));
    let var_1 = _wgslsmith_div_i32(~u_input.b.x, -(~_wgslsmith_sub_i32(_wgslsmith_sub_i32(-1i, 3980i), _wgslsmith_add_i32(u_input.a, 0i))));
    global1 = Struct_4(!global1.a, Struct_2(vec3<f32>(global3.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 2u)])), -314f), Struct_1(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-108f, -1623f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.a.a.x - -1000f), global3.a.b)), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(vec3<u32>(1u, 29322u, 4294967295u), Struct_2(global0.b, Struct_1(vec2<f32>(global0.b.x, 239f), global3.a.b), Struct_1(vec2<f32>(global0.b.x, global0.a.b), 169f), global3.a), u_input.d, Struct_5(global3.a, global0.b)))), -710f), global0.a), vec2<u32>(~0u, countOneBits(~_wgslsmith_add_u32(50237u, 1u))), firstTrailingBit(_wgslsmith_add_u32(_wgslsmith_sub_u32(var_0.x, ~var_0.x), u_input.c.x)));
    let var_2 = Struct_4(global1.a, global1.b, ~_wgslsmith_div_vec2_u32(global1.c, _wgslsmith_div_vec2_u32(vec2<u32>(1u, var_0.x), u_input.d.zy)), 4294967295u);
    let var_3 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(select(u_input.d, u_input.d, vec4<bool>(false, false, true, var_2.a.x)), vec4<u32>(var_0.x, 4294967295u, u_input.e, 8946u) | u_input.d), vec4<u32>(~4294967295u, countOneBits(37647u), global1.c.x, ~global1.d)), var_0.x, ~max(global1.d, 27508u)) != max(var_2.c.x, 1u);
    return u_input.c.zy;
}

fn func_4(arg_0: bool, arg_1: vec2<u32>, arg_2: u32) -> Struct_5 {
    let var_0 = !arg_0;
    return Struct_5(global0.a, global3.b);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_4(global1.a.x, _wgslsmith_add_vec2_u32(global1.c, ~func_1()), 18193u << (0u % 32u));
    let var_0 = vec3<bool>(!any(global1.a), true, any(!(!(!global1.a))));
    let var_1 = _wgslsmith_mult_u32(4294967295u, 1u);
    var var_2 = Struct_3(vec3<bool>(var_0.x, all(!(!vec4<bool>(false, true, var_0.x, true))), all(!var_0.xx)));
    var var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.b, _wgslsmith_f_op_f32(step(-785f, global0.a.b)), _wgslsmith_f_op_f32(-global3.a.a.x)) - vec3<f32>(global2[_wgslsmith_index_u32(var_1 ^ global1.c.x, 2u)], -984f, global2[_wgslsmith_index_u32(select(u_input.e, 12466u, var_0.x), 2u)]))), Struct_1(global1.b.c.a, global1.b.a.x), global0.a, func_4(all(!(!global1.a)), _wgslsmith_div_vec2_u32(vec2<u32>(var_1 ^ global1.d, u_input.d.x), (global1.c ^ vec2<u32>(8658u, var_1)) << ((vec2<u32>(global1.d, u_input.d.x) << (u_input.c.yy % vec2<u32>(32u))) % vec2<u32>(32u))), u_input.e >> (abs(4294967295u) % 32u)).a);
    var_2 = Struct_3(var_0);
    var var_4 = func_4(false, global1.c, ~abs(global1.d));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(global1.b.a.x, _wgslsmith_f_op_f32(-global0.a.b), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(30745u, 2u)])), -2496f, var_2.a.x))), u_input.d, global0.a.b);
}

