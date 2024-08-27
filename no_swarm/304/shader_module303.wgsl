struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<bool>,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: u32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_2,
    c: vec4<f32>,
    d: f32,
    e: i32,
}

struct Struct_5 {
    a: Struct_2,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec3<i32>,
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

var<private> global0: Struct_5;

var<private> global1: vec3<bool>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32) -> u32 {
    global1 = global0.a.b;
    global1 = vec3<bool>(global0.a.b.x, global0.a.b.x, _wgslsmith_dot_vec4_u32(min(~vec4<u32>(1u, 4294967295u, 1u, 1u), vec4<u32>(81245u, 4294967295u, global0.a.a.x, u_input.c)), min(~vec4<u32>(global0.a.a.x, 11731u, 1u, 50747u), _wgslsmith_add_vec4_u32(vec4<u32>(global0.a.a.x, 338u, 55962u, global0.a.a.x), vec4<u32>(global0.a.a.x, global0.a.a.x, global0.a.a.x, 14497u)))) != ~(~u_input.c));
    let var_0 = firstLeadingBit(~(-8454i));
    global1 = !select(vec3<bool>((false & global0.a.b.x) == !global0.a.b.x, global1.x | global0.a.b.x, any(vec3<bool>(global0.a.b.x, false, global1.x))), vec3<bool>(true || all(vec3<bool>(global0.a.b.x, global1.x, true)), !all(vec4<bool>(false, false, true, global1.x)), any(global0.a.b)), !select(global0.a.b, !global0.a.b, vec3<bool>(false, true, global1.x)));
    let var_1 = global0.a.b;
    return _wgslsmith_add_u32(75499u, ~6468u & _wgslsmith_sub_u32(~countOneBits(1u), global0.a.a.x));
}

fn func_2() -> Struct_2 {
    let var_0 = global0.a.a;
    var var_1 = 72014u;
    let var_2 = ~func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1770f, 190f) + _wgslsmith_div_f32(-1208f, global0.b))));
    var var_3 = Struct_3(2147483647i, select(u_input.c, ~select(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.a.a.x, 0u, 963u, var_2), vec4<u32>(42780u, var_2, 1u, 1u)), var_2, all(global0.a.b)), global0.a.b.x), _wgslsmith_mod_u32(22826u, u_input.c ^ 17395u));
    var var_4 = global0.a;
    return Struct_2(vec3<u32>(~_wgslsmith_dot_vec2_u32(var_4.a.zz, vec2<u32>(85663u, 4294967295u)) ^ (23351u | (var_3.b << (18162u % 32u))), 46122u, ~(~(~58208u))), vec3<bool>(!(_wgslsmith_mult_i32(u_input.d.x, 1i) < var_3.a), !(u_input.a.x == ~(-40147i)), false));
}

fn func_1(arg_0: i32) -> Struct_2 {
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = func_1(u_input.a.x);
    let var_2 = Struct_3(u_input.b.x, ~973u, reverseBits(~(~(~1u))));
    let var_3 = vec3<f32>(global0.b, -2136f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b * _wgslsmith_f_op_f32(global0.b + 1611f))), global0.b)));
    var var_4 = ~(~var_2.c);
    let x = u_input.a;
    s_output = StorageBuffer(23685u);
}

