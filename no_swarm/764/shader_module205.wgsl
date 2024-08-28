struct Struct_1 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<u32>(0u, 1u), Struct_1(vec4<f32>(-264f, -2183f, -806f, 1451f), 1333f), false, Struct_1(vec4<f32>(-1607f, -1000f, 104f, 2130f), -239f), vec2<bool>(true, true));

var<private> global1: array<vec2<i32>, 1>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec3<i32>) -> bool {
    let var_0 = ~_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(abs(global0.a), vec2<u32>(global0.a.x, global0.a.x) | vec2<u32>(global0.a.x, 21692u)), _wgslsmith_clamp_vec2_u32(~global0.a, ~vec2<u32>(4294967295u, global0.a.x), vec2<u32>(4294967295u, 1u))), ~(~vec2<u32>(38641u, 0u)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-global0.d.a), -1000f);
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-global0.d.a), var_1.a.x);
    global0 = Struct_2(vec2<u32>(global0.a.x, _wgslsmith_div_u32(~0u, var_0.x & firstTrailingBit(var_0.x))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(global0.d.b - global0.b.a.x), -1000f, -493f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1180f + global0.b.a.x)))), _wgslsmith_div_f32(565f, var_2.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(245f, -440f)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(408f * var_1.b)))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(312f)) - _wgslsmith_f_op_f32(-var_2.b)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2639f)))), Struct_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(exp2(global0.b.b)), _wgslsmith_f_op_f32(step(-1205f, global0.d.a.x)), -446f, var_2.a.x))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_1.a.x, _wgslsmith_f_op_f32(-1204f - 795f)), global0.b.a.x, all(vec2<bool>(true, false)) && true))), !global0.e);
    var var_3 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-global0.d.b), 1268f, _wgslsmith_f_op_f32(floor(1f)))));
    return all(select(!(!(!vec3<bool>(true, false, global0.c))), !select(!vec3<bool>(false, global0.e.x, true), !vec3<bool>(false, false, global0.c), vec3<bool>(global0.c, global0.c, false)), all(!select(vec4<bool>(global0.e.x, global0.c, false, global0.c), vec4<bool>(false, true, false, global0.c), vec4<bool>(global0.c, global0.e.x, true, global0.c)))));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>) -> vec4<f32> {
    var var_0 = !(!func_3(vec3<i32>(u_input.b.x, u_input.d, u_input.a) & u_input.c.yzy)) != (false | !(!any(vec3<bool>(true, true, true))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-arg_0.a.zw);
    let var_2 = global0.a.x;
    var var_3 = firstLeadingBit(~(vec4<u32>(1u << (global0.a.x % 32u), ~global0.a.x, ~0u, 17709u) << (vec4<u32>(~global0.a.x, ~global0.a.x, _wgslsmith_add_u32(global0.a.x, 4294967295u), global0.a.x | 5931u) % vec4<u32>(32u))));
    var var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(var_1.x)), arg_0.b, -1566f, _wgslsmith_f_op_f32(max(688f, var_1.x))) + _wgslsmith_f_op_vec4_f32(arg_1 + global0.b.a)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -398f), _wgslsmith_f_op_f32(arg_1.x - arg_1.x))) * _wgslsmith_f_op_f32(arg_0.b * _wgslsmith_f_op_f32(-1169f * global0.b.b))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.x))))));
    return _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(arg_0.a)) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1429f, var_4.a.x, -825f, -1000f))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1))));
}

fn func_1() -> Struct_1 {
    global1 = array<vec2<i32>, 1>();
    var var_0 = global0.d;
    var var_1 = (-_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(u_input.d, 1i)), -u_input.c.yx) <= -1i) | global0.c;
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(Struct_1(_wgslsmith_f_op_vec4_f32(global0.d.a - var_0.a), _wgslsmith_f_op_f32(f32(-1f) * -555f)), var_0.a)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1140f, 367f, global0.b.a.x, 535f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_0.a, var_0.a) - vec4<f32>(-1166f, var_0.b, global0.b.b, 1942f)))), _wgslsmith_f_op_f32(-1206f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.d.a.x + 272f) - _wgslsmith_f_op_f32(-global0.d.b)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -638f) * 139f))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(695f, global0.b.a.x), -126f, 1213f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(977f - 855f))) + vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(var_0.a.x)), global0.d.b)), _wgslsmith_f_op_f32(var_0.b - global0.d.b), 1060f, global0.b.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1661f))), 453f)) - 901f));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<i32>, 1>();
    global0 = Struct_2(~global0.a, Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global0.d.b, global0.d.b, 196f)) * global0.b.a))), _wgslsmith_f_op_f32(-956f - 773f)), true, func_1(), select(vec2<bool>(false, true || global0.c), select(select(!global0.e, !global0.e, global0.e), !(!vec2<bool>(global0.c, global0.c)), select(global0.e, select(global0.e, vec2<bool>(true, global0.c), true), true)), vec2<bool>(true, true)));
    let var_0 = 0i;
    var var_1 = ~1u;
    var_1 = global0.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(-u_input.c, u_input.c), _wgslsmith_mod_i32(-13054i, -var_0), _wgslsmith_add_u32(~(~(~87140u)), global0.a.x));
}

