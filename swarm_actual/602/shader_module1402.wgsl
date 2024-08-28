struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec4<f32> = vec4<f32>(-1000f, 251f, -1248f, -178f);

var<private> global2: vec3<f32> = vec3<f32>(-1234f, 335f, 1433f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = Struct_2(global0.a & arg_0.b.x, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(398f, global0.b.x, 121f, 2746f), vec4<f32>(399f, 629f, global0.c.x, global1.x)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_0.c.wwx, global0.b.yyx)))));
    global1 = _wgslsmith_f_op_vec4_f32(global0.b + vec4<f32>(-1439f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(2013f, _wgslsmith_f_op_f32(-195f + 305f)))), _wgslsmith_div_f32(arg_0.c.x, _wgslsmith_f_op_f32(-global0.c.x)), arg_0.c.x));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.x, -1000f, -937f, 151f))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.x, var_0.b.x, -469f, -132f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.x, -116f, 328f, global1.x) * var_0.b)))));
    var_0 = Struct_2(var_0.a, vec4<f32>(_wgslsmith_f_op_f32(round(global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x * arg_0.c.x) - _wgslsmith_f_op_f32(var_0.b.x * global0.b.x))), -1259f, 160f), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(var_0.c.x - 943f), _wgslsmith_f_op_f32(global1.x * var_0.c.x), _wgslsmith_f_op_f32(1353f + global1.x)))))));
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-455f, -548f, _wgslsmith_f_op_f32(f32(-1f) * -578f)))));
    return global1.x;
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_2) -> vec4<i32> {
    global1 = vec4<f32>(-1409f, 1826f, _wgslsmith_div_f32(arg_1.b.x, global1.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-1407f, 1701f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1007f)) - _wgslsmith_f_op_f32(func_3(Struct_1(-1i, u_input.c.zy, vec4<f32>(global2.x, 249f, global2.x, -2128f))))))));
    var var_0 = u_input.a.yxx;
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, global2.x)), _wgslsmith_f_op_vec3_f32(-arg_1.b.wzz)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -672f) + 636f), global0.c.x, _wgslsmith_f_op_f32(ceil(arg_1.b.x)))));
    global0 = Struct_2(_wgslsmith_dot_vec2_u32(min(max(~u_input.c.zx, vec2<u32>(global0.a, 4294967295u)), vec2<u32>(abs(1u), var_0.x)), u_input.c.zx), _wgslsmith_f_op_vec4_f32(trunc(arg_1.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(round(-947f)), global2.x, 1408f)))));
    global0 = Struct_2(reverseBits(~4294967295u) ^ global0.a, vec4<f32>(777f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1007f * -447f) - _wgslsmith_f_op_f32(exp2(global2.x))))), _wgslsmith_f_op_f32(func_3(Struct_1(-57065i, vec2<u32>(arg_1.a, u_input.c.x) & var_0.xz, arg_1.b))), arg_1.c.x), global0.c);
    return min(vec4<i32>(u_input.d, -46791i, 58684i, ~(-2147483647i)), vec4<i32>(~max(u_input.d, u_input.d), u_input.d, _wgslsmith_mult_i32(u_input.d, ~firstTrailingBit(u_input.d)), ~_wgslsmith_mod_i32(u_input.d, select(u_input.d, -40919i, arg_0.x))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>) -> f32 {
    var var_0 = firstTrailingBit(-select(~(vec4<i32>(17627i, -19994i, 2147483647i, arg_0.a) | vec4<i32>(1i, 2147483647i, 16431i, 2963i)), min(firstLeadingBit(vec4<i32>(arg_0.a, 0i, u_input.d, arg_0.a)), func_2(vec3<bool>(false, true, true), Struct_2(arg_0.b.x, global0.b, vec3<f32>(473f, global1.x, 300f)))), select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), false), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true)), any(vec4<bool>(true, false, true, false)))));
    let var_1 = !(!(_wgslsmith_f_op_f32(arg_0.c.x + arg_0.c.x) < _wgslsmith_f_op_f32(-global2.x))) || !(!(all(vec4<bool>(true, false, false, false)) | true));
    global2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.x * _wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(global2.x + 213f)))), global1.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.x))));
    let var_2 = Struct_1(-var_0.x, firstTrailingBit(~arg_0.b), _wgslsmith_f_op_vec4_f32(-arg_0.c));
    let var_3 = var_1;
    return _wgslsmith_f_op_f32(global2.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.c.x - global1.x), global1.x));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(global0.b.xww, vec3<f32>(_wgslsmith_f_op_f32(func_1(Struct_1(-2147483647i, vec2<u32>(30847u, global0.a), global0.b), -vec2<i32>(-2147483647i, -18000i))), _wgslsmith_f_op_f32(-global0.b.x), global1.x))));
    let var_0 = Struct_2(u_input.c.x, vec4<f32>(-119f, _wgslsmith_f_op_f32(floor(232f)), _wgslsmith_f_op_f32(select(1000f, global1.x, true)), _wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) + _wgslsmith_f_op_f32(global1.x * 672f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-global0.c.x), global0.c.x)));
    var var_1 = -4419i;
    global0 = Struct_2(1u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.c.x, 1093f, -828f, global1.x), _wgslsmith_f_op_vec4_f32(-global0.b))))), var_0.b.xxw);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1405f, var_0.b.x, 482f, 146f)))) - vec4<f32>(_wgslsmith_div_f32(global2.x, global0.c.x), _wgslsmith_f_op_f32(max(global1.x, -409f)), -868f, global0.b.x)))) + _wgslsmith_f_op_vec4_f32(abs(var_0.b)));
    let var_3 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-440f)) * -997f)), var_2.x)));
    var var_4 = _wgslsmith_f_op_f32(-global0.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.yx, -u_input.d, u_input.a.zxx ^ ~(~u_input.b << (u_input.c.xyw % vec3<u32>(32u))));
}

