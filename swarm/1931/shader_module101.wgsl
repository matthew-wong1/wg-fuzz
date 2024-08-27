struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: f32,
    d: Struct_1,
    e: u32,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 46378u;

var<private> global1: Struct_4;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<f32>) -> vec4<f32> {
    let var_0 = -442f;
    global0 = 1u;
    let var_1 = -974f;
    global1 = Struct_4(firstTrailingBit(~vec2<i32>(global1.a.x, 88017i)) ^ global1.a);
    let var_2 = vec3<u32>(min(u_input.b, ~43857u), select(~1u, u_input.a.x, false & (false || (247f >= var_1))), 1u);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1037f, -876f, var_1, var_1)))));
}

fn func_2(arg_0: vec3<u32>) -> f32 {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(ceil(-391f)), _wgslsmith_f_op_f32(1267f * -1525f), 1305f, _wgslsmith_f_op_f32(select(1227f, -330f, true)))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1605f, 457f, -635f, -161f))))))));
    let var_1 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-447f - _wgslsmith_div_f32(1297f, -1000f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_div_f32(862f, var_0.x))), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1000f, -259f)), var_0.x))), var_0.x, Struct_1(any(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)))), 8009u);
    var_0 = _wgslsmith_f_op_vec4_f32(func_3(vec2<f32>(1114f, -1399f)));
    let var_2 = vec4<bool>(!all(select(!vec3<bool>(var_1.d.a, true, false), select(vec3<bool>(var_1.d.a, var_1.d.a, var_1.d.a), vec3<bool>(var_1.d.a, var_1.d.a, false), vec3<bool>(false, var_1.d.a, false)), var_1.d.a | false)), !(!any(vec3<bool>(var_1.d.a, false, false))), true, (firstTrailingBit(0u) << (~289u % 32u)) > var_1.e);
    global1 = Struct_4(global1.a);
    return _wgslsmith_f_op_f32(-1f);
}

fn func_1(arg_0: vec3<u32>, arg_1: i32, arg_2: vec4<u32>, arg_3: Struct_4) -> u32 {
    global0 = 4294967295u;
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -420f) - _wgslsmith_div_f32(_wgslsmith_div_f32(1000f, 454f), _wgslsmith_f_op_f32(func_2(vec3<u32>(0u, u_input.a.x, 39529u))))))), _wgslsmith_f_op_f32(exp2(1f)), 1f);
    var var_1 = _wgslsmith_f_op_vec2_f32(-var_0.zx);
    var_1 = _wgslsmith_f_op_vec4_f32(func_3(vec2<f32>(-224f, -732f))).zy;
    return ~arg_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(min(u_input.a, vec3<u32>(u_input.b, countOneBits(reverseBits(u_input.b)), u_input.b)), u_input.c, ~abs(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x) & vec4<u32>(u_input.b, u_input.b, 69866u, 6586u)), Struct_4(_wgslsmith_div_vec2_i32(global1.a << (min(u_input.a.xz, vec2<u32>(u_input.a.x, 2021u)) % vec2<u32>(32u)), abs(global1.a))));
    global0 = 0u;
    global1 = Struct_4(~min(~_wgslsmith_div_vec2_i32(global1.a, vec2<i32>(u_input.c, u_input.c)), _wgslsmith_clamp_vec2_i32(global1.a, global1.a, global1.a)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(564f, 2324f))) - -1418f), -598f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 951f) + 368f), -367f))), vec2<i32>(u_input.c, -(~u_input.c) >> (func_1(vec3<u32>(u_input.b, 0u, 54538u), _wgslsmith_add_i32(global1.a.x, 1i), ~vec4<u32>(31424u, u_input.b, 47641u, 20207u), Struct_4(global1.a)) % 32u)), _wgslsmith_add_vec4_i32(~_wgslsmith_div_vec4_i32(select(vec4<i32>(global1.a.x, global1.a.x, -9422i, u_input.c), vec4<i32>(-1i, 0i, global1.a.x, 41630i), vec4<bool>(false, false, true, true)), vec4<i32>(0i, -13202i, global1.a.x, u_input.c) ^ vec4<i32>(u_input.c, u_input.c, -10307i, global1.a.x)), vec4<i32>(1i, global1.a.x, select(select(-60i, -30896i, true), 27728i, true), -global1.a.x)), _wgslsmith_sub_vec4_i32(~vec4<i32>(_wgslsmith_clamp_i32(global1.a.x, global1.a.x, 1i), -2147483647i, ~global1.a.x, abs(1i)), vec4<i32>(-25697i, u_input.c & -13814i, -global1.a.x ^ _wgslsmith_div_i32(global1.a.x, u_input.c), global1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-554f * -668f) + _wgslsmith_f_op_f32(1118f - 328f)))));
}

