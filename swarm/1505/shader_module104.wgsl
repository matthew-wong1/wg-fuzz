struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(22967i, 2147483647i, 1i);

var<private> global1: Struct_1;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> u32 {
    global0 = ~(_wgslsmith_div_vec3_i32(max(vec3<i32>(u_input.a.x, 12241i, 1i), _wgslsmith_add_vec3_i32(vec3<i32>(-8107i, 0i, -83401i), u_input.a.wyx)), u_input.a.yzy) & ~vec3<i32>(global0.x, 1i, 1i));
    var var_0 = u_input.b;
    let var_1 = global1.b.xzy;
    let var_2 = _wgslsmith_f_op_vec3_f32(-global1.c.xww);
    var var_3 = _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x >> (global1.a.x % 32u), 1i) ^ -vec2<i32>(u_input.a.x, 23044i), -(~firstTrailingBit(u_input.a.zx)));
    return _wgslsmith_sub_u32(global1.a.x, ~_wgslsmith_clamp_u32(11562u, select(28490u, global1.a.x, var_1.x) << (min(global1.a.x, global1.a.x) % 32u), global1.a.x));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: u32, arg_3: vec2<bool>) -> Struct_1 {
    global1 = Struct_1(firstTrailingBit(global1.a), global1.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1.c + vec4<f32>(932f, _wgslsmith_f_op_f32(global1.c.x * global1.c.x), _wgslsmith_f_op_f32(f32(-1f) * -1678f), _wgslsmith_f_op_f32(round(144f)))) * vec4<f32>(_wgslsmith_f_op_f32(355f - _wgslsmith_f_op_f32(floor(arg_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -337f) * global1.c.x), _wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_f_op_f32(-304f * global1.c.x), arg_2 <= 1u)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.c.x - arg_0.x), arg_0.x, !arg_3.x)))));
    let var_0 = arg_1;
    let var_1 = var_0;
    var var_2 = arg_1;
    var var_3 = Struct_1(var_0.a, !global1.b, _wgslsmith_f_op_vec4_f32(global1.c * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(786f - var_1.c.x)), _wgslsmith_div_f32(472f, _wgslsmith_f_op_f32(global1.c.x - -185f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(var_1.c.x)))))));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = func_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(204f, 574f), _wgslsmith_f_op_vec2_f32(-global1.c.wx)))), _wgslsmith_f_op_vec2_f32(-global1.c.xw)), Struct_1(vec3<u32>(_wgslsmith_dot_vec3_u32(global1.a, global1.a) | abs(35861u), global1.a.x, 4294967295u), global1.b, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1000f + -1273f), _wgslsmith_div_f32(global1.c.x, global1.c.x), _wgslsmith_f_op_f32(global1.c.x - 2100f), 1f), global1.c)), ~select(1u, abs(1u) | func_1(), global1.b.x), vec2<bool>(global1.b.x, any(!global1.b.xzz) & all(vec4<bool>(false, global1.b.x, false, true))));
    var var_2 = any(global1.b.ywx);
    var_2 = var_1.b.x;
    let var_3 = ~countOneBits(_wgslsmith_div_vec3_i32(u_input.a.zxy, _wgslsmith_mult_vec3_i32(-u_input.a.yzx, vec3<i32>(u_input.b, -2147483647i, -30387i))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.x);
}

