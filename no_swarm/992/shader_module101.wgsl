struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1662f;

var<private> global1: f32 = 418f;

var<private> global2: vec4<f32> = vec4<f32>(-331f, 615f, -659f, -1068f);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    global0 = 314f;
    return global2.x;
}

fn func_2() -> f32 {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.x - global2.x), -281f)))));
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, -255f, _wgslsmith_f_op_f32(func_3()), global2.x))), Struct_1(_wgslsmith_mod_i32(~(i32(-1i) * -35149i), max(countOneBits(11868i), _wgslsmith_dot_vec3_i32(vec3<i32>(-23725i, -42666i, -7900i), vec3<i32>(39073i, -18690i, 2147483647i)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.x, 732f) - global2.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-696f)))), -703f), _wgslsmith_dot_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(51189u, 40839u, u_input.a), vec3<u32>(85043u, u_input.a, 29045u)), select(reverseBits(vec3<u32>(4294967295u, u_input.a, 55679u)), select(vec3<u32>(22044u, u_input.a, 3521u), vec3<u32>(1u, u_input.a, u_input.a), vec3<bool>(true, true, false)), true))), select(vec3<u32>(~select(46231u, 19228u, false), max(u_input.a, 0u) >> (max(u_input.a, u_input.a) % 32u), reverseBits(u_input.a)), max(vec3<u32>(u_input.a, 1u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a) & vec3<u32>(48684u, u_input.a, 46520u)) << ((_wgslsmith_div_vec3_u32(vec3<u32>(0u, u_input.a, 0u), vec3<u32>(u_input.a, 109604u, 13279u)) << (firstTrailingBit(vec3<u32>(119723u, u_input.a, 1u)) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<bool>(true, !(u_input.a >= u_input.a), true)));
    var var_2 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(var_0.a)))))));
    global0 = 1746f;
    return _wgslsmith_f_op_f32(f32(-1f) * -281f);
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(827f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), 227f, !all(vec2<bool>(true, true)))));
    let var_1 = global2.x;
    var var_2 = any(select(vec2<bool>(true, (u_input.a != 0u) || any(vec3<bool>(false, false, false))), select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, true), vec2<bool>(true, true)), any(select(vec3<bool>(false, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true)))));
    let var_3 = var_0;
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - -151f) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0))))));
    return _wgslsmith_f_op_f32(-global2.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(global2.x, 527f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x + 1268f)), _wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())))));
}

