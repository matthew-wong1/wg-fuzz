struct Struct_1 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(652f, 303f, -2272f, 1112f);

var<private> global1: f32 = -1000f;

var<private> global2: vec3<u32>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
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

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> u32 {
    let var_0 = Struct_3(Struct_1(abs(~_wgslsmith_clamp_vec4_i32(u_input.d, u_input.d, vec4<i32>(2147483647i, 1i, u_input.b.x, -2147483647i))), arg_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.x))))));
    global1 = 1308f;
    let var_1 = vec4<u32>(0u, 4294967295u, ~1u ^ u_input.e, var_0.a.b.x);
    let var_2 = !(!select(select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false), all(vec4<bool>(true, true, false, false))), !select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), true)));
    var var_3 = vec4<i32>(21983i, u_input.d.x, -2147483647i, var_0.a.a.x);
    return 19549u;
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_4(Struct_1(~u_input.d, max(vec3<u32>(firstTrailingBit(u_input.c.x), u_input.e, 8112u << (u_input.c.x % 32u)), max(vec3<u32>(77739u, u_input.e, global2.x), u_input.c)), -702f), ~vec4<u32>(~12935u, ~countOneBits(1u), ~_wgslsmith_dot_vec2_u32(global2.yy, vec2<u32>(u_input.c.x, global2.x)), u_input.e ^ 4294967295u), u_input.b.x, u_input.a);
    global2 = vec3<u32>(global2.x, func_3(_wgslsmith_add_u32(15865u, var_0.b.x), Struct_1(u_input.d, u_input.c, var_0.a.c)), firstTrailingBit(38932u));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -887f), -614f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(global0.x, -1281f)), global0.x))) + 289f));
    let var_1 = Struct_3(var_0.a);
    var var_2 = var_1;
    return Struct_2(select(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true)), vec4<bool>(any(vec3<bool>(false, true, true)), var_2.a.c > var_2.a.c, true, true)), select(vec4<bool>(true, true, var_1.a.b.x != 1u, true), vec4<bool>(all(vec2<bool>(true, true)), true, all(vec2<bool>(true, true)), true), true), !vec4<bool>(true, any(vec3<bool>(true, false, false)), true, all(vec4<bool>(false, false, true, true)))), var_2.a);
}

fn func_1(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_1, arg_3: vec4<u32>) -> u32 {
    var var_0 = func_2();
    global0 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.b.c, 1340f, -344f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-358f + _wgslsmith_f_op_f32(ceil(arg_1))))))));
    global1 = 1f;
    return _wgslsmith_sub_u32(61904u, 0u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-552f, 615f, global0.x, global0.x) * vec4<f32>(-1629f, -999f, 637f, 792f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-968f, -749f, global0.x, global0.x), vec4<f32>(global0.x, global0.x, 1000f, -1251f)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, global0.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-677f, global0.x, global0.x, 1916f))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1176f * global0.x)), global0.x, _wgslsmith_div_f32(global0.x, global0.x), -1305f)));
    global2 = countOneBits(~(~vec3<u32>(u_input.e ^ global2.x, global2.x << (global2.x % 32u), func_1(vec4<bool>(false, false, true, true), global0.x, Struct_1(u_input.b, vec3<u32>(global2.x, global2.x, 17529u), global0.x), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, global2.x)))));
    var var_0 = any(vec2<bool>(true, true));
    var_0 = all(!(!(!select(vec2<bool>(false, true), vec2<bool>(false, false), false))));
    var_0 = false;
    let var_1 = global0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-672f, global0.x)), _wgslsmith_div_vec2_u32(vec2<u32>(1u, u_input.e) ^ vec2<u32>(~u_input.c.x, ~0u), global2.zy));
}

