struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<u32>(0u, 16678u, 37115u), vec3<bool>(false, false, true), Struct_1(0u), Struct_1(18092u));

var<private> global1: f32;

var<private> global2: vec4<f32>;

var<private> global3: bool;

var<private> global4: Struct_2 = Struct_2(vec3<u32>(39030u, 4294967295u, 0u), vec3<bool>(true, false, false), Struct_1(1u), Struct_1(0u));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32) -> u32 {
    let var_0 = ~(~(~0u));
    let var_1 = countOneBits(_wgslsmith_mult_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(4294967295u, _wgslsmith_mod_u32(var_0, global4.d.a)), ~2576u), 46147u));
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + arg_0) * -1345f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(560f + global2.x), _wgslsmith_f_op_f32(-arg_0), all(vec4<bool>(global0.b.x, false, global0.b.x, global4.b.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0))), 855f, 983f) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-global2.x), arg_0, 487f, -699f))))));
    let var_3 = Struct_2(~select(_wgslsmith_mult_vec3_u32(vec3<u32>(4030u, global0.c.a, global4.c.a), global0.a & u_input.b), ~(~vec3<u32>(var_1, 1405u, u_input.b.x)), vec3<bool>(global4.b.x, false & global0.b.x, global0.b.x)), !select(vec3<bool>(true, false & global4.b.x, true), select(select(vec3<bool>(false, false, global0.b.x), global4.b, vec3<bool>(global0.b.x, false, true)), vec3<bool>(global4.b.x, global4.b.x, global0.b.x), select(global4.b, global0.b, global4.b.x)), any(!vec4<bool>(global4.b.x, false, true, false))), Struct_1(0u), global4.c);
    var var_4 = var_3.d;
    return var_0;
}

fn func_2(arg_0: vec3<f32>) -> vec2<u32> {
    var var_0 = Struct_2(max(vec3<u32>(reverseBits(global0.a.x) | _wgslsmith_mult_u32(4294967295u, 1u), _wgslsmith_mult_u32(u_input.b.x, global0.c.a), ~u_input.d.x), global0.a), vec3<bool>(14017u < ~_wgslsmith_add_u32(global4.a.x, 120967u), (_wgslsmith_f_op_f32(-arg_0.x) > _wgslsmith_f_op_f32(abs(1000f))) && false, any(!vec4<bool>(true, global4.b.x, true, true))), Struct_1(func_3(arg_0.x)), Struct_1(19258u));
    var var_1 = -1i;
    var var_2 = any(select(var_0.b.yx, select(!select(vec2<bool>(global4.b.x, global0.b.x), vec2<bool>(var_0.b.x, global0.b.x), false), select(!var_0.b.yx, !vec2<bool>(var_0.b.x, true), global4.b.x), vec2<bool>(global0.b.x, !var_0.b.x)), all(!vec4<bool>(global0.b.x, true, global0.b.x, false)) || true));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1886f))) * 261f)), 610f, global2.x, global2.x);
    var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global2.x, -1000f, -134f, global2.x), vec4<f32>(-2158f, -896f, arg_0.x, 547f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(762f, arg_0.x, var_3.x, 463f) * vec4<f32>(-256f, var_3.x, arg_0.x, 542f)), vec4<bool>(var_0.b.x, global0.b.x, false, false))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1496f, global2.x, 556f, arg_0.x))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + _wgslsmith_f_op_f32(abs(arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), global2.x, 614f)));
    return min(vec2<u32>(~(global0.d.a << (~6188u % 32u)), 20281u), firstLeadingBit(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 44445u, u_input.b.x) >> (vec3<u32>(4294967295u, 4294967295u, var_0.a.x) % vec3<u32>(32u)), abs(vec3<u32>(1u, var_0.d.a, global4.c.a))), 29540u)));
}

fn func_1() -> Struct_2 {
    global2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1000f - global2.x), global2.x, -455f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(global2.x))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 207f, 875f, 1000f) + vec4<f32>(1999f, 1033f, 529f, -115f))) + vec4<f32>(_wgslsmith_f_op_f32(-global2.x), global2.x, 1544f, _wgslsmith_div_f32(global2.x, -1000f)))));
    var var_0 = ~func_2(_wgslsmith_f_op_vec3_f32(trunc(global2.yxw)));
    let var_1 = ~u_input.d;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global2.wy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.zy * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global2.x, -273f)))))) - global2.ww);
    let var_3 = global4.c;
    return Struct_2(min(global0.a, vec3<u32>(global0.a.x, ~var_3.a | global0.c.a, global4.a.x)), vec3<bool>(any(vec2<bool>(all(vec4<bool>(true, false, global4.b.x, false)), any(vec2<bool>(false, global4.b.x)))), true && (var_0.x <= ~4294967295u), false), Struct_1(~77232u), global0.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.xz;
    global0 = func_1();
    var var_1 = vec4<bool>(true, global4.b.x, true, false);
    var var_2 = 0u;
    var var_3 = func_1();
    let var_4 = _wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)));
    global3 = any(vec3<bool>(var_3.b.x, global4.b.x, select(select(var_1.x & var_3.b.x, !var_3.b.x, var_3.b.x), all(select(vec2<bool>(var_3.b.x, global4.b.x), global0.b.zy, vec2<bool>(false, true))), 0u == global0.c.a)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x);
}

