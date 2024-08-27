struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec4<bool>,
    d: vec4<u32>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8>;

var<private> global1: vec3<f32>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>) -> vec2<u32> {
    var var_0 = Struct_1(global1.x, u_input.e, vec4<bool>(any(vec4<bool>(true, true, true, true)), all(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false))), !all(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true))), any(vec2<bool>(true, true))), vec4<u32>(abs(firstLeadingBit(0u)), 1u, _wgslsmith_sub_u32(~0u, ~0u), firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(42253u, 0u, 18842u), vec3<u32>(37441u, 72219u, 4294967295u)))) ^ countOneBits(vec4<u32>(_wgslsmith_add_u32(0u, 0u), 36270u, 4294967295u, 1u)), -500f);
    let var_1 = select(select(var_0.c.zxy, !select(select(vec3<bool>(false, var_0.c.x, false), vec3<bool>(true, false, false), var_0.c.xyx), vec3<bool>(false, var_0.c.x, var_0.c.x), true), select(!vec3<bool>(var_0.c.x, true, var_0.c.x), vec3<bool>(false, select(false, true, true), any(var_0.c)), true)), !vec3<bool>(!(!var_0.c.x), true, true), select(!var_0.c.ywy, !(!(!vec3<bool>(true, var_0.c.x, var_0.c.x))), var_0.c.x));
    var var_2 = global1.x;
    let var_3 = _wgslsmith_dot_vec2_u32(~reverseBits(reverseBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.d.x, 64635u), var_0.d.zw, vec2<u32>(84817u, 4294967295u)))), ~vec2<u32>(firstTrailingBit(~23452u), ~reverseBits(var_0.d.x)));
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1036f, _wgslsmith_f_op_f32(step(-1700f, global1.x)), _wgslsmith_f_op_f32(select(var_0.a, 674f, var_0.c.x)), var_0.a) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, var_0.a, 1317f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1710f, -1336f, -157f, -617f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-443f, -2157f, global1.x, -1036f), vec4<f32>(global1.x, var_0.e, var_0.e, 123f), false))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(global1.x, 528f, 1000f, var_0.e), vec4<f32>(291f, global1.x, var_0.e, 858f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1096f, global1.x, 328f, var_0.a) + vec4<f32>(var_0.e, -420f, 1000f, var_0.a)), select(var_0.c, vec4<bool>(false, false, var_1.x, var_1.x), vec4<bool>(true, true, var_1.x, true)))))));
    return ~vec2<u32>(~countOneBits(reverseBits(4294967295u)), abs(0u));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: Struct_1) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.x))), vec4<i32>(0i, ~u_input.e.x, arg_2.b.x, 0i), vec4<bool>(arg_2.c.x & arg_2.c.x, all(arg_2.c.zxx), arg_2.c.x, true), select(~((arg_2.d << (vec4<u32>(arg_2.d.x, 1u, 66370u, arg_1.x) % vec4<u32>(32u))) << (vec4<u32>(arg_2.d.x, 48750u, 4294967295u, arg_1.x) % vec4<u32>(32u))), arg_2.d << ((~arg_2.d | _wgslsmith_clamp_vec4_u32(arg_1, arg_1, arg_2.d)) % vec4<u32>(32u)), arg_2.c.x), arg_2.a);
    let var_1 = func_3(-_wgslsmith_sub_vec4_i32(~abs(vec4<i32>(2147483647i, arg_0.x, 26047i, arg_2.b.x)), vec4<i32>(arg_0.x | u_input.c, 3310i, firstLeadingBit(11249i), _wgslsmith_mod_i32(var_0.b.x, 2147483647i))));
    global0 = array<Struct_1, 8>();
    var var_2 = var_0.c;
    var_2 = var_0.c;
    return 4294967295u;
}

fn func_1(arg_0: vec2<bool>, arg_1: f32) -> StorageBuffer {
    var var_0 = 777f;
    let var_1 = !(!all(vec3<bool>(arg_0.x, arg_0.x, false)));
    global0 = array<Struct_1, 8>();
    var var_2 = vec2<u32>(1u, 1u);
    var_2 = ~(vec2<u32>(var_2.x << ((23908u << (var_2.x % 32u)) % 32u), func_2(~u_input.a.zy, ~vec4<u32>(var_2.x, 1u, 0u, 4294967295u), global0[_wgslsmith_index_u32(17190u, 8u)])) << (vec2<u32>(var_2.x, ~_wgslsmith_mod_u32(var_2.x, var_2.x)) % vec2<u32>(32u)));
    return StorageBuffer(_wgslsmith_mod_i32(u_input.e.x ^ (~(-1i) | u_input.e.x), u_input.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(arg_1, 500f, arg_0.x)), global1.x)))), _wgslsmith_f_op_f32(trunc(global1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~1u;
    var_0 = ~0u;
    let x = u_input.a;
    s_output = func_1(!vec2<bool>(true, any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2012f * -2581f) + -909f));
}

