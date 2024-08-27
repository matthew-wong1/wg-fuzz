struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec3<bool>,
    d: vec4<u32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<u32>(0u, 12490u, 4294967295u), false, Struct_1(vec4<f32>(-3047f, -1000f, 481f, -2368f), vec4<f32>(-709f, -466f, 959f, 2035f), vec3<bool>(false, false, false), vec4<u32>(68297u, 4294967295u, 66001u, 1u), vec2<bool>(false, true)));

var<private> global1: array<bool, 18> = array<bool, 18>(true, true, true, false, false, true, false, false, true, false, true, true, true, false, true, false, true, true);

var<private> global2: vec3<u32> = vec3<u32>(0u, 16859u, 110849u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: vec4<f32>, arg_3: Struct_1) -> u32 {
    global0 = arg_0;
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(arg_2 * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(164f, global0.c.a.x, arg_3.a.x, arg_3.b.x))))), vec4<f32>(arg_3.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.c.a.x, -1842f) + _wgslsmith_f_op_f32(-arg_0.c.b.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-606f * _wgslsmith_f_op_f32(-arg_3.a.x)))), _wgslsmith_f_op_f32(-arg_2.x)), select(vec3<bool>(true, any(global0.c.c) & false, arg_3.e.x), vec3<bool>(any(vec3<bool>(global1[_wgslsmith_index_u32(global0.c.d.x, 18u)], false, false)), !any(global0.c.c.xx), all(select(arg_0.c.c, vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 18u)], global1[_wgslsmith_index_u32(arg_1, 18u)], false), arg_3.e.x))), (!arg_3.e.x == any(vec2<bool>(false, arg_0.c.e.x))) != !global1[_wgslsmith_index_u32(~arg_1, 18u)]), _wgslsmith_clamp_vec4_u32(vec4<u32>(47949u, abs(arg_0.c.d.x), ~global0.c.d.x, 4294967295u), ~(~vec4<u32>(27538u, 4294967295u, arg_0.c.d.x, 8860u)), vec4<u32>(30531u, countOneBits(global0.a.x), max(0u, 9375u), max(5303u, global0.a.x))) >> ((max(~arg_3.d, firstTrailingBit(vec4<u32>(global0.c.d.x, 60441u, arg_0.a.x, 23167u))) & ~(~global0.c.d)) % vec4<u32>(32u)), select(select(vec2<bool>(true, true), select(!arg_3.e, select(vec2<bool>(true, true), vec2<bool>(false, false), global0.c.e), true), global0.b), vec2<bool>((false != arg_0.c.c.x) || false, true), select(arg_0.c.c.xx, vec2<bool>(true, true), select(!vec2<bool>(arg_3.c.x, global1[_wgslsmith_index_u32(global0.a.x, 18u)]), vec2<bool>(global0.b, global0.b), arg_2.x > -1000f))));
    global2 = arg_0.c.d.zwy;
    global1 = array<bool, 18>();
    global1 = array<bool, 18>();
    return global0.a.x;
}

fn func_2() -> Struct_2 {
    global2 = abs(_wgslsmith_mult_vec3_u32(~vec3<u32>(global0.c.d.x, func_3(Struct_2(global0.c.d.wxw, global0.c.c.x, Struct_1(vec4<f32>(207f, global0.c.a.x, global0.c.b.x, 408f), global0.c.a, global0.c.c, global0.c.d, vec2<bool>(global0.c.e.x, false))), 19518u, global0.c.b, global0.c), global2.x), global0.a));
    let var_0 = global0.a;
    global0 = Struct_2(~(~(vec3<u32>(86624u, var_0.x, global0.c.d.x) | global0.c.d.zww)), false, global0.c);
    global1 = array<bool, 18>();
    global1 = array<bool, 18>();
    return Struct_2(global0.c.d.xxw, any(select(global0.c.e, global0.c.c.yz, all(vec4<bool>(global1[_wgslsmith_index_u32(0u, 18u)], global0.c.e.x, false, false)))), Struct_1(_wgslsmith_f_op_vec4_f32(-global0.c.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.a.x, _wgslsmith_f_op_f32(-604f * -670f), 1292f, _wgslsmith_f_op_f32(-global0.c.a.x))), !global0.c.c, vec4<u32>(global0.a.x, 25396u, _wgslsmith_add_u32(select(4294967295u, 2342u, true), 24102u), global0.c.d.x), !(!global0.c.e)));
}

fn func_1() -> f32 {
    var var_0 = func_2();
    global1 = array<bool, 18>();
    global1 = array<bool, 18>();
    global1 = array<bool, 18>();
    let var_1 = firstTrailingBit(vec4<u32>(25639u, 12816u, _wgslsmith_sub_u32(var_0.a.x, _wgslsmith_dot_vec2_u32(var_0.a.zx >> (global2.zx % vec2<u32>(32u)), ~global0.c.d.zx)), 36115u));
    return global0.c.b.x;
}

fn func_4(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: u32) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.c.b) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-231f, global0.c.a.x, -700f, global0.c.b.x))))), _wgslsmith_f_op_vec4_f32(arg_0.a.c.a - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(global0.c.b * _wgslsmith_f_op_vec4_f32(-vec4<f32>(391f, -742f, arg_1.x, 1183f)))))), select(global0.c.c, arg_0.a.c.c, func_2().c.c), arg_0.a.c.d, vec2<bool>(!(global0.c.c.x || global0.b), true));
    var var_1 = max(reverseBits(global2.yz), ~abs(global2.zy));
    global1 = array<bool, 18>();
    global1 = array<bool, 18>();
    return Struct_1(vec4<f32>(-1482f, var_0.b.x, _wgslsmith_div_f32(670f, 1402f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(884f, arg_0.b), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-682f + -460f), _wgslsmith_f_op_f32(-1060f + -187f)))), var_0.c, _wgslsmith_mod_vec4_u32(vec4<u32>(25402u, max(1u, func_3(arg_0.a, 1u, vec4<f32>(var_0.b.x, -865f, -3124f, -863f), Struct_1(var_0.a, var_0.b, vec3<bool>(global0.c.e.x, global1[_wgslsmith_index_u32(2537u, 18u)], global0.b), vec4<u32>(arg_2, global0.a.x, global0.a.x, var_0.d.x), arg_0.a.c.e))), global0.c.d.x, ~_wgslsmith_mult_u32(arg_0.a.c.d.x, arg_2)), vec4<u32>(5316u, abs(_wgslsmith_dot_vec2_u32(global2.yz, vec2<u32>(arg_2, 1u))), ~(0u ^ var_1.x), abs(var_0.d.x))), !(!arg_0.a.c.e));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_3(Struct_2(global0.a, true, Struct_1(vec4<f32>(global0.c.a.x, 763f, 353f, global0.c.b.x), _wgslsmith_div_vec4_f32(vec4<f32>(global0.c.a.x, global0.c.b.x, global0.c.a.x, -804f), global0.c.b), global0.c.c, global0.c.d, global0.c.e)), _wgslsmith_f_op_f32(func_1()), ~u_input.a, !(global0.c.a.x > 1470f)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c.b.x, global0.c.b.x)))))), _wgslsmith_sub_u32(firstLeadingBit(~1u), ~global2.x));
    let x = u_input.a;
    s_output = StorageBuffer(global2.x, 2147483647i);
}

