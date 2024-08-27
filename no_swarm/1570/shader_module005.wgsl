struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: vec2<f32>,
    d: bool,
    e: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 2>;

var<private> global1: array<Struct_4, 8> = array<Struct_4, 8>(Struct_4(Struct_3(Struct_2(vec3<f32>(776f, 860f, 269f), -3164f, vec2<f32>(-1315f, -333f), false, vec2<u32>(1u, 0u)), 55078i, Struct_1(-1062f))), Struct_4(Struct_3(Struct_2(vec3<f32>(1000f, -2166f, 1324f), -732f, vec2<f32>(567f, -1187f), true, vec2<u32>(2963u, 182u)), 1i, Struct_1(429f))), Struct_4(Struct_3(Struct_2(vec3<f32>(864f, 980f, -210f), 787f, vec2<f32>(-309f, -644f), true, vec2<u32>(25206u, 50196u)), 47087i, Struct_1(1154f))), Struct_4(Struct_3(Struct_2(vec3<f32>(1087f, 509f, -1053f), 1107f, vec2<f32>(-1119f, 667f), true, vec2<u32>(41389u, 1u)), 0i, Struct_1(-662f))), Struct_4(Struct_3(Struct_2(vec3<f32>(1257f, 593f, 157f), -1068f, vec2<f32>(1884f, 1000f), false, vec2<u32>(55065u, 1u)), 0i, Struct_1(-1199f))), Struct_4(Struct_3(Struct_2(vec3<f32>(437f, -462f, 932f), -1000f, vec2<f32>(2141f, 1587f), true, vec2<u32>(8785u, 1u)), i32(-2147483648), Struct_1(196f))), Struct_4(Struct_3(Struct_2(vec3<f32>(3109f, -709f, 580f), -743f, vec2<f32>(1060f, 412f), false, vec2<u32>(1u, 4294967295u)), -1i, Struct_1(781f))), Struct_4(Struct_3(Struct_2(vec3<f32>(-137f, -938f, -1267f), 586f, vec2<f32>(1016f, 913f), false, vec2<u32>(29786u, 1u)), 2347i, Struct_1(2356f))));

var<private> global2: i32 = 43079i;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: vec3<i32>, arg_1: bool) -> f32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(min(-471f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-592f - -486f))))), -536f);
    global0 = array<Struct_3, 2>();
    let var_1 = true;
    return 295f;
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> StorageBuffer {
    var var_0 = any(!vec3<bool>(true, all(vec2<bool>(false, false)) || any(vec2<bool>(true, false)), any(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false)))));
    global0 = array<Struct_3, 2>();
    var_0 = _wgslsmith_mult_i32(u_input.b.x, ~u_input.a.x) >= (u_input.a.x >> (u_input.c.x % 32u));
    var var_1 = false;
    let var_2 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1049f, _wgslsmith_div_f32(-452f, 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 - arg_0.a) * -1838f)))));
    return StorageBuffer(~(~47216u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.a, arg_1, 349f, var_2.x))) * vec4<f32>(var_2.x, arg_0.a, 649f, -1273f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, arg_0.a, 980f, 768f)), vec4<f32>(192f, arg_1, arg_1, 2036f)))), _wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(u_input.a.x, 17950i)), ~u_input.a.x)), ~max(u_input.a.zw << (u_input.c.zy % vec2<u32>(32u)), ~u_input.b.zz)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(529f, arg_0.a, true)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.x;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(735f, -416f) - _wgslsmith_f_op_f32(f32(-1f) * -480f)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(1513f))))) * _wgslsmith_f_op_f32(abs(-1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(490f * _wgslsmith_f_op_f32(floor(-454f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1939f, 570f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i), false))))), 171f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(444f + -1000f) - _wgslsmith_f_op_f32(1072f + -377f))) + _wgslsmith_f_op_f32(f32(-1f) * -203f)));
    let var_2 = -23668i;
    global1 = array<Struct_4, 8>();
    var var_3 = u_input.b;
    var_0 = ~4294967295u;
    var_0 = ~(~(u_input.c.x ^ u_input.c.x));
    let x = u_input.a;
    s_output = func_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1f)) - _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(-var_1.x));
}

