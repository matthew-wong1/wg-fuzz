struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<f32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<f32>, arg_1: bool) -> vec4<f32> {
    let var_0 = u_input.c.x ^ u_input.e.x;
    var var_1 = Struct_3(vec3<f32>(-779f, 557f, _wgslsmith_f_op_f32(arg_0.x + -478f)), ~14402i);
    let var_2 = Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_add_u32(55643u, 1u), ~15725u), ~vec2<u32>(0u, 21396u) | reverseBits(~vec2<u32>(9959u, u_input.a))), vec3<bool>(false, global0.b.x && !all(vec3<bool>(arg_1, arg_1, arg_1)), global0.c), arg_1);
    let var_3 = Struct_1(~(_wgslsmith_sub_vec2_u32(vec2<u32>(14792u, 4294967295u), var_2.a) | (~var_2.a ^ max(vec2<u32>(4294967295u, var_2.a.x), global0.a))), !(!(!select(vec3<bool>(true, var_2.b.x, global0.c), vec3<bool>(arg_1, arg_1, false), var_2.b.x))), all(vec4<bool>(!(!arg_1), true || (arg_0.x == global1.x), any(!vec3<bool>(false, arg_1, var_2.b.x)), all(select(vec4<bool>(var_2.b.x, false, global0.c, true), vec4<bool>(global0.b.x, true, global0.b.x, false), vec4<bool>(true, true, true, global0.b.x))))));
    let var_4 = Struct_2(Struct_1(var_2.a, vec3<bool>(!(!global0.c), true, _wgslsmith_f_op_f32(f32(-1f) * -1318f) >= _wgslsmith_f_op_f32(sign(1000f))), any(select(select(vec4<bool>(false, var_2.c, global0.c, false), vec4<bool>(false, false, arg_1, false), true), select(vec4<bool>(var_2.b.x, true, false, true), vec4<bool>(var_3.c, arg_1, false, global0.b.x), arg_1), !vec4<bool>(false, false, false, arg_1)))), Struct_1(_wgslsmith_div_vec2_u32(~(vec2<u32>(var_2.a.x, var_3.a.x) ^ vec2<u32>(34612u, global0.a.x)), _wgslsmith_mult_vec2_u32(~vec2<u32>(0u, global0.a.x), ~var_3.a)), !(!select(vec3<bool>(arg_1, true, var_3.c), vec3<bool>(false, true, var_3.c), var_2.c)), var_2.c), Struct_1(var_3.a, select(!vec3<bool>(var_2.b.x, true, var_3.b.x), vec3<bool>(true, false, all(vec2<bool>(var_2.b.x, var_2.b.x))), true), !(_wgslsmith_div_f32(arg_0.x, 284f) <= global1.x)));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, -658f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.a.x, 176f, -988f, 700f), vec4<f32>(-1000f, -933f, arg_0.x, global1.x), false))) - vec4<f32>(_wgslsmith_f_op_f32(1000f + var_1.a.x), _wgslsmith_f_op_f32(-var_1.a.x), global1.x, _wgslsmith_div_f32(1663f, 132f)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(1072f + _wgslsmith_f_op_f32(arg_0.x * arg_0.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(256f * global1.x), var_1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x - var_1.a.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -322f, _wgslsmith_f_op_f32(floor(global1.x)), _wgslsmith_f_op_f32(752f * -1439f)) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, 1770f, var_1.a.x, 953f)), vec4<f32>(715f, -742f, 354f, -758f), false)))));
}

fn func_2() -> vec4<f32> {
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(661f, global1.x, global1.x, -136f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(375f, global1.x, 1000f, global1.x))) + _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec3_f32(select(global1.xwx, vec3<f32>(global1.x, -1109f, global1.x), !global0.b)), global0.c == all(global0.b)))));
    let var_0 = 1050f;
    var var_1 = false;
    global0 = Struct_1(~(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, u_input.a), ~global0.a) >> (global0.a % vec2<u32>(32u))), vec3<bool>(any(select(vec3<bool>(false, global0.c, true), vec3<bool>(global0.c, global0.c, global0.b.x), global0.b)) || true, global0.c, global0.c), all(select(!select(vec4<bool>(global0.b.x, false, global0.c, false), vec4<bool>(global0.c, false, false, global0.c), vec4<bool>(true, global0.c, global0.b.x, true)), !select(vec4<bool>(global0.b.x, false, true, false), vec4<bool>(true, true, global0.c, true), global0.c), global0.b.x)));
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-119f - var_0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -602f) + 780f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1.x, var_0)) + _wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(max(var_0, global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1044f * _wgslsmith_f_op_f32(-158f + global1.x)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-356f + var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1297f, 2272f, global0.b.x))), global1.x)));
}

fn func_1() -> Struct_1 {
    let var_0 = global0.a;
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2())) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -225f), _wgslsmith_f_op_f32(-global1.x), -876f, _wgslsmith_f_op_f32(-global1.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1.x, 372f, -1178f, 1120f), vec4<f32>(global1.x, global1.x, -1103f, -431f))))))));
    global0 = Struct_1(global0.a, !select(vec3<bool>(global0.c, false, false), vec3<bool>(true, true, true), global0.b), true);
    var var_1 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_2()).x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-174f)) + _wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(-1005f + _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - global1.x))))), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(min(~u_input.c, _wgslsmith_div_vec4_i32(vec4<i32>(u_input.e.x, u_input.d.x, 3428i, u_input.d.x), u_input.c)), u_input.c), u_input.c.x));
    var var_2 = _wgslsmith_f_op_vec2_f32(step(var_1.a.xx, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-var_1.a.xx)))));
    return Struct_1(vec2<u32>(0u, 88229u), global0.b, false);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    var var_0 = firstTrailingBit(abs(~global0.a.x));
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(global1.xxw, global1.wyx)) * _wgslsmith_f_op_vec3_f32(ceil(global1.ywz))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, 331f, global1.x) - _wgslsmith_f_op_vec3_f32(global1.xww - global1.wxx)), any(vec4<bool>(global0.c, global0.b.x, global0.b.x, true)))))), -1i);
    var var_2 = 240f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global1.x), ~4294967295u, abs(global0.a), var_1.a.x);
}

