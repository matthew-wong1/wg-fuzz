struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(57279u, 15315u);

var<private> global1: array<vec4<u32>, 24>;

var<private> global2: vec3<f32> = vec3<f32>(-590f, 1564f, -1019f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: bool) -> bool {
    var var_0 = Struct_3(!select(!(!vec3<bool>(arg_0, arg_3, true)), !vec3<bool>(arg_3, true, arg_0), select(!arg_0, true, false)), Struct_1(_wgslsmith_mod_u32(firstLeadingBit(_wgslsmith_add_u32(16463u, 56898u)), reverseBits(u_input.a.x))), arg_2.a);
    var var_1 = abs(global1[_wgslsmith_index_u32(arg_1.x, 24u)]);
    var var_2 = 9324i & u_input.c.x;
    var var_3 = !vec4<bool>(((global0.x >> (u_input.a.x % 32u)) < 108237u) | arg_0, true, !(true || any(vec4<bool>(true, true, true, var_0.a.x))), u_input.a.x == _wgslsmith_mod_u32(abs(1u), ~u_input.a.x));
    let var_4 = Struct_2(Struct_1(abs(reverseBits(arg_1.x))), _wgslsmith_f_op_f32(ceil(global2.x)));
    return arg_3;
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: Struct_3) -> u32 {
    let var_0 = !(!vec4<bool>(true, func_3(arg_0, u_input.a.yx, arg_1.a, true), arg_3.a.x, all(select(arg_3.a.zx, vec2<bool>(arg_0, false), arg_0))));
    var var_1 = Struct_2(arg_3.b, global2.x);
    global1 = array<vec4<u32>, 24>();
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(118f, 913f, _wgslsmith_f_op_f32(trunc(arg_1.b))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -2683f, global2.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, 2322f, arg_1.b)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, 2184f, var_1.b) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b, arg_1.b, -107f))))));
    global0 = abs(~(~vec2<u32>(max(921u, u_input.a.x), 1u)));
    return global0.x;
}

fn func_1() -> Struct_1 {
    global0 = _wgslsmith_clamp_vec2_u32(~vec2<u32>(4294967295u, reverseBits(func_2(true, Struct_2(Struct_1(0u), global2.x), vec3<i32>(10981i, 0i, u_input.c.x), Struct_3(vec3<bool>(false, true, false), Struct_1(4294967295u), 4294967295u)))), vec2<u32>(((u_input.a.x ^ 15524u) & max(global0.x, 0u)) >> (1u % 32u), global0.x), vec2<u32>(4294967295u, (1u | _wgslsmith_clamp_u32(0u, 0u, 18028u)) ^ 1u));
    var var_0 = Struct_3(select(select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), vec3<bool>(true, false, true), any(vec4<bool>(false, false, true, false))), vec3<bool>(true, true, true), vec3<bool>(true, true, all(vec3<bool>(false, false, false)))), select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true)), !vec3<bool>(true, any(vec2<bool>(false, true)), true)), Struct_1(select(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(8731u, 40010u, 0u)), countOneBits(vec3<u32>(1u, 4294967295u, 38216u))), _wgslsmith_sub_u32(max(u_input.a.x, u_input.a.x), 4294967295u), true)), 0u);
    let var_1 = var_0.b;
    var var_2 = ~(-vec2<i32>(~(-1i), 1024i));
    var_0 = Struct_3(!(!select(select(vec3<bool>(true, false, var_0.a.x), var_0.a, false), vec3<bool>(true, false, var_0.a.x), var_0.a)), var_0.b, 1u);
    return Struct_1(32345u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    global2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.x, _wgslsmith_f_op_f32(-global2.x), 1309f < global2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-383f, global2.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1563f)));
    var var_1 = func_1();
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1730f, -1226f, -1000f) * vec3<f32>(global2.x, global2.x, global2.x)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(973f, 1424f, 977f), vec3<f32>(-428f, -1099f, global2.x)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global2.x, 936f, 1375f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.x, -904f, global2.x), vec3<f32>(global2.x, -591f, 692f), false)))))));
    let var_3 = vec4<bool>(true, false, -752f >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2.x))), _wgslsmith_sub_u32(countOneBits(0u & global0.x), countOneBits(~global0.x)) <= abs(_wgslsmith_mod_u32(firstLeadingBit(4294967295u), var_1.a)));
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -357f)), -1793f, _wgslsmith_f_op_f32(-366f * global2.x)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, -1222f, global2.x) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(935f, 509f, -354f)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global2.x, 324f, -629f))))));
    let var_5 = _wgslsmith_f_op_f32(-global2.x);
    let var_6 = Struct_3(!(!var_3.wwz), Struct_1(~select(_wgslsmith_add_u32(var_1.a, 1358u), max(23708u, u_input.a.x), var_3.x)), global0.x ^ _wgslsmith_sub_u32(var_1.a, func_2(var_3.x | var_3.x, Struct_2(Struct_1(u_input.a.x), 283f), select(vec3<i32>(u_input.b, -74622i, -61329i), u_input.c, false), Struct_3(var_3.wyz, Struct_1(global0.x), u_input.a.x))));
    var var_7 = Struct_3(var_6.a, func_1(), var_6.b.a & ~1u);
    let x = u_input.a;
    s_output = StorageBuffer(var_5, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_5, -988f))), var_5, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_5))), _wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(step(var_2.x, _wgslsmith_f_op_f32(sign(-1000f)))))));
}

