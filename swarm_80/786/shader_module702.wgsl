struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: vec4<f32>,
    d: u32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec3<bool>(true, false, true), vec4<bool>(true, false, true, false));

var<private> global1: u32;

var<private> global2: Struct_4;

var<private> global3: f32 = -584f;

var<private> global4: array<Struct_3, 12> = array<Struct_3, 12>(Struct_3(vec3<bool>(false, false, true), vec4<bool>(true, true, true, true)), Struct_3(vec3<bool>(false, true, true), vec4<bool>(true, true, true, true)), Struct_3(vec3<bool>(true, false, false), vec4<bool>(false, false, true, false)), Struct_3(vec3<bool>(false, true, false), vec4<bool>(false, true, true, true)), Struct_3(vec3<bool>(true, true, true), vec4<bool>(false, false, true, true)), Struct_3(vec3<bool>(false, true, true), vec4<bool>(true, true, true, false)), Struct_3(vec3<bool>(false, true, true), vec4<bool>(true, false, true, false)), Struct_3(vec3<bool>(false, false, true), vec4<bool>(true, false, true, true)), Struct_3(vec3<bool>(true, true, false), vec4<bool>(false, true, true, false)), Struct_3(vec3<bool>(false, true, false), vec4<bool>(true, false, true, true)), Struct_3(vec3<bool>(false, true, true), vec4<bool>(true, true, false, false)), Struct_3(vec3<bool>(false, false, false), vec4<bool>(true, true, true, false)));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    global0 = global2.a;
    var var_0 = Struct_3(vec3<bool>((_wgslsmith_f_op_f32(select(arg_2.a.x, 734f, false)) != -1825f) && arg_1, !(0i < u_input.b.x), global0.b.x || global0.a.x), vec4<bool>(false, false, true, true));
    let var_1 = Struct_3(vec3<bool>(arg_1, (u_input.b.x > ~u_input.b.x) && (-2147483647i <= _wgslsmith_clamp_i32(0i, u_input.c.x, u_input.b.x)), all(global0.a.zx)), vec4<bool>(all(!vec3<bool>(false, arg_1, false)) & arg_2.b.x, false, all(arg_2.b) || arg_2.b.x, false));
    global4 = array<Struct_3, 12>();
    let var_2 = arg_2;
    return Struct_1(var_2.a, select(vec3<bool>(true, true, false), select(vec3<bool>(true, arg_0 < arg_0, all(var_0.b.ww)), vec3<bool>(false, true, true == arg_1), vec3<bool>(arg_2.b.x, true, var_2.b.x)), vec3<bool>(all(var_0.b.xxy), true, all(global0.b))), var_2.c, arg_2.d, ~var_2.e);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3) -> vec2<i32> {
    let var_0 = Struct_3(vec3<bool>(!all(!vec2<bool>(arg_1.a.x, false)), global0.a.x, !any(vec3<bool>(arg_1.a.x, global0.a.x, true))), select(global2.a.b, !vec4<bool>(true, func_2(294f, arg_0.a.b.x, arg_0.b).b.x, all(global0.b), true), global0.b));
    return abs(u_input.b.ww);
}

fn func_1(arg_0: f32) -> f32 {
    let var_0 = max(u_input.b.x, u_input.c.x);
    var var_1 = u_input.a.x;
    let var_2 = func_3(Struct_2(func_2(arg_0, true, Struct_1(vec2<f32>(1087f, arg_0), global0.a, vec4<f32>(-1943f, arg_0, arg_0, arg_0), 43992u, u_input.c.zzw)), func_2(_wgslsmith_div_f32(314f, 560f), true, Struct_1(vec2<f32>(1265f, arg_0), global2.a.a, vec4<f32>(arg_0, 582f, 273f, -103f), u_input.a.x, u_input.c.zzz))), global2.a) << (_wgslsmith_mult_vec2_u32((select(u_input.a, u_input.a, false) ^ u_input.a) & u_input.a, vec2<u32>(u_input.a.x, u_input.a.x)) % vec2<u32>(32u));
    let var_3 = Struct_4(Struct_3(!(!global0.a), vec4<bool>(1598f != _wgslsmith_f_op_f32(ceil(arg_0)), global2.a.a.x, true, false)), any(!vec3<bool>(true, all(vec2<bool>(false, global0.a.x)), any(vec4<bool>(false, global0.b.x, true, true)))));
    let var_4 = _wgslsmith_f_op_f32(f32(-1f) * -1242f);
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-340f + var_4))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_4), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1397f, arg_0))), global0.b.x))), 326f));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_f_op_f32(func_1(-280f));
    let var_0 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(u_input.b.x, _wgslsmith_mult_i32(countOneBits(u_input.c.x), u_input.c.x), -_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.c.x, u_input.b.x), u_input.b.yz), 1i >> (1u % 32u)));
}

