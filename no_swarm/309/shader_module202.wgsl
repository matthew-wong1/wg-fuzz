struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: u32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 21>;

var<private> global1: vec4<bool>;

var<private> global2: Struct_3 = Struct_3(vec2<bool>(true, false), Struct_1(-9173i, vec4<i32>(33958i, -27105i, 2147483647i, 1i), 1i), 4294967295u, vec3<f32>(588f, 198f, 1000f));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: bool, arg_1: i32) -> bool {
    var var_0 = any(vec4<bool>(all(select(vec2<bool>(false, false), select(global1.yy, vec2<bool>(true, arg_0), vec2<bool>(false, global1.x)), any(global1.wyx))), global1.x, false, !any(vec2<bool>(true, false))));
    let var_1 = _wgslsmith_f_op_vec2_f32(exp2(global2.d.xz));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-734f, -1299f))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_1, vec2<f32>(var_1.x, var_1.x)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(278f, -1148f), vec2<f32>(-204f, global2.d.x), true)))), false))));
    var_2 = _wgslsmith_f_op_vec2_f32(sign(var_1));
    var_2 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -244f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -868f) + -122f));
    return !arg_0;
}

fn func_2(arg_0: vec4<u32>, arg_1: bool) -> u32 {
    global1 = !(!select(select(!vec4<bool>(false, arg_1, global1.x, true), !vec4<bool>(true, global1.x, arg_1, true), select(vec4<bool>(global1.x, false, global2.a.x, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, global1.x, true))), vec4<bool>(any(vec3<bool>(global2.a.x, arg_1, true)), !arg_1, global2.a.x && global2.a.x, func_3(global2.a.x, 2147483647i)), !select(vec4<bool>(false, false, global2.a.x, true), vec4<bool>(true, arg_1, global2.a.x, arg_1), vec4<bool>(false, global1.x, arg_1, global1.x))));
    let var_0 = global2.b;
    return abs(4294967295u);
}

fn func_1() -> vec3<bool> {
    let var_0 = ~global2.b.a;
    let var_1 = func_2(~vec4<u32>(global2.c, 4294967295u, _wgslsmith_mod_u32(u_input.c, 1u), _wgslsmith_add_u32(countOneBits(1u), u_input.c ^ 2207u)), false);
    let var_2 = select(select(!vec4<bool>(global1.x, false, true, 2147483647i >= global2.b.b.x), select(select(vec4<bool>(global1.x, global2.a.x, global2.a.x, false), select(vec4<bool>(global1.x, true, false, false), vec4<bool>(true, false, true, global2.a.x), true), global2.a.x & global2.a.x), !select(vec4<bool>(global2.a.x, global1.x, global2.a.x, global2.a.x), vec4<bool>(true, false, false, true), vec4<bool>(true, global1.x, true, true)), false), select(!vec4<bool>(false, global2.a.x, global2.a.x, false), vec4<bool>(false, global1.x, false, !global2.a.x), vec4<bool>(true, true, true, true))), vec4<bool>(false, false, (firstLeadingBit(var_0) > ~2147483647i) | all(vec3<bool>(global1.x, false, global2.a.x)), false), !vec4<bool>(global1.x, all(!vec4<bool>(true, true, global1.x, true)), var_0 != _wgslsmith_mult_i32(u_input.b, -1i), !global2.a.x == (global2.a.x | true)));
    let var_3 = vec2<bool>(true, !global2.a.x | any(vec3<bool>(global2.a.x, global2.a.x, false)));
    return select(!var_2.xww, var_2.xwy, select(!(!(var_2.x || true)), false, global2.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(vec3<bool>(global2.d.x < _wgslsmith_f_op_f32(-global2.d.x), true, u_input.b != 38794i), func_1(), global1.zwz);
    global2 = global0[_wgslsmith_index_u32(~21514u, 21u)];
    var var_1 = abs(vec4<i32>(30780i, _wgslsmith_add_i32(-19688i, min(i32(-1i) * -1i, u_input.a << (1u % 32u))), 1i, -52884i));
    let var_2 = -18840i;
    var_1 = vec4<i32>(-var_1.x, -55266i, _wgslsmith_sub_i32(_wgslsmith_div_i32(var_1.x, u_input.b ^ reverseBits(var_1.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(abs(15591i), var_1.x, u_input.a), var_1.xyx >> ((vec3<u32>(global2.c, global2.c, 61522u) >> (vec3<u32>(global2.c, 4294967295u, 0u) % vec3<u32>(32u))) % vec3<u32>(32u)))), 769i);
    var var_3 = var_0.xx;
    var var_4 = Struct_3(!select(vec2<bool>(true, global2.a.x), func_1().zz, any(vec4<bool>(false, false, var_0.x, false))), Struct_1(var_2, vec4<i32>(var_1.x, ~_wgslsmith_mod_i32(19030i, -1i), ~countOneBits(global2.b.c), min(u_input.a & -20852i, _wgslsmith_add_i32(-1918i, global2.b.c))), ~0i), global2.c, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-global2.d.x), -496f, 304f))));
    global1 = !vec4<bool>(var_4.a.x, var_4.a.x, global2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -810f) * _wgslsmith_f_op_f32(-var_4.d.x)) == _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(var_4.d.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(min(77435u, ~abs(_wgslsmith_div_u32(u_input.c, u_input.c))), _wgslsmith_div_vec2_u32(abs(~(vec2<u32>(34365u, 20845u) << (vec2<u32>(u_input.c, var_4.c) % vec2<u32>(32u)))), ~vec2<u32>(u_input.c, global2.c)));
}

