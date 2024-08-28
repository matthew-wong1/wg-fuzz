struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> Struct_1 {
    var var_0 = abs(u_input.c ^ ~u_input.c);
    let var_1 = Struct_2(Struct_1(vec3<f32>(-2287f, _wgslsmith_f_op_f32(ceil(2007f)), global0.a.x), ~63635u, global0.c), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(1838f - -449f), global0.a.x, -728f), countOneBits(u_input.b), vec3<bool>(!any(vec3<bool>(global0.c.x, false, global0.c.x)), true, countOneBits(1u) >= select(global0.b, u_input.b, global0.c.x))), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global0.b, 4294967295u, _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(var_0.x, u_input.c.x, u_input.b, 0u)), u_input.d.x & var_0.x), _wgslsmith_mod_vec4_u32(u_input.c >> (u_input.c % vec4<u32>(32u)), vec4<u32>(4294967295u, 0u, global0.b, 4294967295u))), u_input.c), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global0.a.x, 575f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -743f)) - global0.a.xx)) * vec2<f32>(global0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-485f)) - _wgslsmith_f_op_f32(-593f - 1445f)))));
    return var_1.a;
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<bool>) -> vec3<bool> {
    return select(global0.c, global0.c, false);
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: Struct_3) -> vec3<bool> {
    var var_0 = u_input.a.x;
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.a) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_2.a.a.x, global0.a.x, global0.a.x), vec3<f32>(arg_2.a.a.x, 1000f, global0.a.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a.a.x, arg_2.a.a.x, arg_2.a.a.x) - _wgslsmith_f_op_vec3_f32(select(global0.a, vec3<f32>(arg_2.a.a.x, global0.a.x, -1000f), arg_2.a.c.x))))), ~_wgslsmith_mod_u32(arg_2.a.b, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(u_input.c, u_input.c), vec4<u32>(1u, arg_1, u_input.d.x, 0u))), global0.c);
    var var_1 = abs(countOneBits(arg_0));
    global0 = func_2();
    let var_2 = ~(~(~u_input.c));
    return func_3(reverseBits(vec4<i32>(firstTrailingBit(~(-27158i)), 1i, u_input.a.x, -2147483647i)), select(vec4<bool>(arg_0 < ~(-6998i), global0.c.x, arg_2.a.b > ~1598u, true), !(!select(vec4<bool>(false, arg_2.a.c.x, arg_2.a.c.x, true), vec4<bool>(false, arg_2.a.c.x, arg_2.a.c.x, global0.c.x), arg_2.a.c.x)), all(select(!arg_2.a.c.xx, select(global0.c.xz, vec2<bool>(true, true), false), all(vec4<bool>(arg_2.a.c.x, false, true, global0.c.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec3<f32>(-356f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -528f)))), 1325f), global0.b, select(!func_1(-1i, ~u_input.c.x, Struct_3(Struct_1(vec3<f32>(1180f, global0.a.x, global0.a.x), global0.b, global0.c))), !vec3<bool>(true, true, u_input.c.x != global0.b), select(!global0.c, select(global0.c, !global0.c, true), false)));
    var var_1 = Struct_3(func_2());
    let var_2 = Struct_2(func_2(), Struct_1(var_1.a.a, abs(~_wgslsmith_clamp_u32(var_1.a.b, 0u, 1u)), !vec3<bool>(var_0.c.x, !var_0.c.x, func_2().c.x)), reverseBits(max(u_input.c, _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global0.b, global0.b, u_input.d.x, 14527u), u_input.c), u_input.c))), _wgslsmith_f_op_vec2_f32(ceil(var_0.a.zy)));
    let var_3 = vec2<u32>(func_2().b & var_0.b, global0.b);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(-u_input.a.x));
}

