struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
    c: Struct_1,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<f32>,
    d: vec3<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec2<f32>;

var<private> global2: vec3<i32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: vec4<f32>) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2.zyz), _wgslsmith_f_op_vec3_f32(floor(arg_2.www))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1.x, -280f, -889f)))))));
}

fn func_2(arg_0: vec4<u32>) -> vec4<f32> {
    global1 = vec2<f32>(_wgslsmith_f_op_f32(-global1.x), -296f);
    var var_0 = ~(~(~select(33399u, 1u, false))) ^ reverseBits(u_input.b.x);
    global1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-729f, global1.x)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-387f, global1.x) + vec2<f32>(global1.x, global1.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global1.x) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global1.x, global1.x)))))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, global1.x)))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_3(u_input.b.x, vec3<i32>(0i, -1i, global2.x), Struct_1(vec4<u32>(22638u, 1u, 15367u, arg_0.x), global2.xz, true, global1.x), -2147483647i, Struct_2(0u)), 0u, vec4<f32>(global1.x, global1.x, global1.x, 1535f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(607f, global1.x, 1286f), vec3<f32>(global1.x, 118f, global1.x)))))));
    var var_2 = true;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(918f, 225f, -896f, -1251f) - vec4<f32>(global1.x, var_1.x, var_1.x, 311f)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, -428f, global1.x, -1000f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-603f, var_1.x, -624f, -1115f)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-780f, 1109f, 899f, global1.x), vec4<f32>(global1.x, global1.x, var_1.x, global1.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -1456f, 1663f, var_1.x) * vec4<f32>(global1.x, 1796f, -298f, 1358f))))));
}

fn func_1(arg_0: Struct_2) -> u32 {
    let var_0 = 27531u;
    var var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(~vec4<u32>(66529u, 4294967295u, arg_0.a, var_0)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-132f, global1.x, global1.x, 104f)), vec4<f32>(633f, -564f, -835f, global1.x)))), vec4<f32>(1446f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x * -296f), 495f), _wgslsmith_f_op_f32(f32(-1f) * -1481f), global1.x)))));
    return min(countOneBits(78182u), countOneBits(_wgslsmith_add_u32(reverseBits(u_input.b.x), 1844u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -1i;
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-563f, global1.x)))) + vec2<f32>(-2377f, _wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, 349f)))))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1162f, global1.x), vec2<f32>(-541f, 1226f), vec2<bool>(true, true))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-446f, global1.x))))));
    global0 = _wgslsmith_mod_i32(~_wgslsmith_mod_i32(-select(global2.x, global2.x, false), 1i), global2.x);
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(666f * _wgslsmith_div_f32(-159f, global1.x)))))));
    global0 = 2147483647i;
    var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1095f)));
    let x = u_input.a;
    s_output = StorageBuffer(max(-11438i, _wgslsmith_dot_vec3_i32(vec3<i32>(global2.x, -1i, -2147483647i), -vec3<i32>(global2.x, 22415i, -7131i)) >> (select(select(1u, 0u, false), func_1(Struct_2(u_input.a.x)), 28522i != global2.x) % 32u)), vec2<u32>(u_input.a.x, 4294967295u), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-global1.x), global1.x))), vec3<f32>(_wgslsmith_f_op_f32(select(841f, _wgslsmith_f_op_vec4_f32(func_2(select(vec4<u32>(58957u, 56146u, u_input.a.x, u_input.a.x), vec4<u32>(43536u, u_input.b.x, u_input.b.x, u_input.a.x), vec4<bool>(false, false, true, false)))).x, ~0u > _wgslsmith_mult_u32(18140u, u_input.a.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(global1.x)))), 379f), ~_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.a.x, u_input.a.x), vec3<u32>(28390u, 91512u, u_input.b.x)), vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x)) << (vec3<u32>(4294967295u >> (~u_input.b.x % 32u), ~_wgslsmith_div_u32(12295u, u_input.b.x), countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(u_input.b.x, u_input.a.x)))) % vec3<u32>(32u)));
}

