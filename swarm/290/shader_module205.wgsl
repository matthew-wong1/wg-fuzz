struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_1 = Struct_1(vec2<u32>(0u, 54437u));

var<private> global2: Struct_1;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1) -> vec2<u32> {
    global0 = !all(select(select(vec2<bool>(false, false), vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))), !select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(true, true)));
    let var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-arg_0.wx), _wgslsmith_f_op_vec2_f32(-arg_0.xx)));
    let var_1 = vec4<i32>(~abs(-1i >> (global2.a.x % 32u)) ^ (_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 16296i, 2147483647i, 2147483647i), _wgslsmith_clamp_vec4_i32(vec4<i32>(40942i, -10304i, u_input.e.x, u_input.a), vec4<i32>(u_input.a, 0i, u_input.c.x, u_input.c.x), vec4<i32>(u_input.c.x, u_input.e.x, -1i, u_input.c.x))) & -2147483647i), abs(45648i), u_input.a, u_input.e.x | ~countOneBits(firstLeadingBit(u_input.c.x)));
    let var_2 = true;
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(arg_0)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(arg_0)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -717f, -477f, -288f) + vec4<f32>(-164f, var_0.x, -566f, var_0.x))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-741f, arg_0.x, arg_0.x, 1248f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, var_0.x, arg_0.x, 1000f))))));
    return _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.b.yy >> (~_wgslsmith_div_vec2_u32(vec2<u32>(32450u, global2.a.x), u_input.b.xy) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_mult_u32(31185u, u_input.d), global1.a.x)), select(arg_1.a, ~_wgslsmith_add_vec2_u32(global1.a, select(vec2<u32>(global1.a.x, global2.a.x), global1.a, vec2<bool>(var_2, var_2))), !select(any(vec2<bool>(var_2, false)), false, var_2)));
}

fn func_2() -> Struct_1 {
    let var_0 = u_input.e.x;
    global1 = Struct_1(global2.a | ~func_3(vec4<f32>(-1176f, -862f, -530f, -1613f), Struct_1(global2.a)));
    global0 = false;
    var var_1 = vec4<bool>(false || (true | any(vec4<bool>(true, true, true, true))), false, !any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), all(vec2<bool>(any(vec2<bool>(true, true)), global1.a.x < 4294967295u)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1321f));
    return Struct_1(_wgslsmith_add_vec2_u32(~(~vec2<u32>(0u, global2.a.x)), _wgslsmith_add_vec2_u32(global2.a, ~max(u_input.b.zx, global2.a))));
}

fn func_1() -> Struct_2 {
    global2 = func_2();
    global2 = Struct_1(max(u_input.b.zx & func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(524f, 1004f, -1000f, 336f)), Struct_1(vec2<u32>(global1.a.x, 0u))), vec2<u32>(select(global1.a.x, global2.a.x, true), firstLeadingBit(8200u)) ^ vec2<u32>(1u, 1u)));
    global0 = false;
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-293f, 470f, 1624f, -256f))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1281f))), _wgslsmith_f_op_f32(-var_0.x)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(899f, var_0.x)) * _wgslsmith_f_op_vec2_f32(-var_0.xx)) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1350f, 234f) + vec2<f32>(var_0.x, 1288f)), _wgslsmith_f_op_vec2_f32(var_0.xx * var_0.ww), select(vec2<bool>(false, false), vec2<bool>(false, false), false))))), false);
    return Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.yx + vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_1.a.x))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1543f, 959f)) * var_0.zy) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_0.xx, vec2<f32>(-795f, var_0.x), false))))), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~global1.a.x, abs(abs(abs(vec4<i32>(-6727i, 1i, 0i, -4983i))) | select(countOneBits(vec4<i32>(-11691i, u_input.c.x, u_input.a, 0i)), vec4<i32>(u_input.c.x, u_input.c.x, -16683i, 1i) ^ vec4<i32>(u_input.e.x, u_input.c.x, u_input.a, u_input.e.x), vec4<bool>(true, var_0.b, var_0.b, var_0.b))));
}

