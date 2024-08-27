struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: u32,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec4<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec2<i32>;

var<private> global2: bool = true;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: vec4<f32>) -> Struct_1 {
    var var_0 = -(47476i ^ global0.b.c.a);
    global2 = true;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)) + -1082f);
    var var_2 = _wgslsmith_f_op_f32(var_1 - arg_0.x);
    var_2 = var_1;
    return global0.b.b;
}

fn func_3(arg_0: Struct_2) -> f32 {
    global2 = global0.a;
    let var_0 = false;
    global1 = _wgslsmith_clamp_vec2_i32(u_input.d.zx, u_input.a.zw, u_input.a.yy);
    global0 = Struct_3(global0.a, Struct_2(u_input.b.yy, func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1574f, global0.e, global0.e) * vec4<f32>(624f, global0.e, -380f, -943f))), func_2(vec4<f32>(_wgslsmith_f_op_f32(-global0.e), -168f, _wgslsmith_f_op_f32(select(-1000f, -1000f, false)), _wgslsmith_f_op_f32(-global0.e)))), u_input.b.x & u_input.b.x, ~countOneBits(global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.e, -1000f)))));
    var var_1 = any(!(!(!vec3<bool>(true, var_0, true))));
    return -149f;
}

fn func_1() -> vec4<bool> {
    let var_0 = global0.e;
    let var_1 = Struct_2(vec2<u32>(_wgslsmith_dot_vec2_u32(~u_input.b.xy, abs(vec2<u32>(u_input.b.x, 73711u))) >> (51657u % 32u), u_input.b.x), global0.b.c, func_2(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(-2055f)), global0.e, _wgslsmith_f_op_f32(f32(-1f) * -507f), _wgslsmith_f_op_f32(abs(global0.e))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1220f, global0.e, -1172f, global0.e))))));
    var var_2 = 101379u;
    let var_3 = 2148f;
    global0 = Struct_3(all(vec3<bool>(true, !global0.a && global0.a, true)), global0.b, 0u, 1037i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_2(u_input.b.xy, Struct_1(-100655i, vec3<u32>(1u, 52603u, 21329u), 0u), var_1.c))), -2094f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-848f, 106f)))))) + _wgslsmith_f_op_f32(f32(-1f) * -1444f)));
    return vec4<bool>(!all(select(vec2<bool>(false, true), !vec2<bool>(global0.a, global0.a), !vec2<bool>(global0.a, true))), global0.a, any(vec2<bool>(false, global0.a)), !(1312f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-773f + var_3))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(!select(func_1(), vec4<bool>(true, global0.a, global0.a, global0.a), true)));
    var var_1 = var_0.xyz;
    var var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.e, -281f, -1804f, _wgslsmith_f_op_f32(f32(-1f) * -882f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.e, global0.e, global0.e, -798f) + vec4<f32>(-1143f, -461f, -1000f, global0.e)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(204f, global0.e, -825f, global0.e) * vec4<f32>(-663f, global0.e, global0.e, global0.e)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.e, global0.e, global0.e, -200f))), vec4<f32>(-272f, _wgslsmith_f_op_f32(sign(160f)), _wgslsmith_f_op_f32(481f - 1725f), _wgslsmith_f_op_f32(698f + global0.e)))), vec4<bool>(650f > global0.e, false, false, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~global0.b.c.b, vec3<u32>(u_input.b.x, global0.b.a.x, u_input.b.x)), ~vec3<u32>(u_input.b.x, global0.c, 1u)) & ~(~global0.c << (abs(22758u) % 32u)), var_2.wwz, u_input.a, ~(~vec4<u32>(global0.b.c.c, global0.c, 27684u << (global0.b.b.b.x % 32u), u_input.b.x)));
}

