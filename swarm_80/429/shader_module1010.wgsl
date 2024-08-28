struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(45544u);

var<private> global1: Struct_2;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: bool, arg_3: Struct_2) -> u32 {
    global1 = arg_0;
    return arg_3.a & _wgslsmith_mod_u32(arg_0.a, _wgslsmith_add_u32(global1.a, ~4294967295u));
}

fn func_2(arg_0: vec3<i32>) -> u32 {
    let var_0 = ~global1.a;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-262f, _wgslsmith_f_op_f32(571f * -1344f), _wgslsmith_f_op_f32(1029f * -159f), _wgslsmith_f_op_f32(f32(-1f) * -1492f)))) - vec4<f32>(298f, _wgslsmith_f_op_f32(abs(625f)), -1597f, _wgslsmith_f_op_f32(trunc(-1102f)))) + vec4<f32>(_wgslsmith_f_op_f32(-600f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(814f + 181f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 165f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1028f, -500f, true)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(1000f, 841f, true)), _wgslsmith_f_op_f32(round(-326f)))))), 1884f));
    global0 = Struct_2(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(firstTrailingBit(u_input.a.zx), u_input.a.ww), (vec2<u32>(43391u, var_0) & vec2<u32>(global1.a, u_input.a.x)) | max(u_input.a.yx, vec2<u32>(global0.a, global0.a))), select(vec2<u32>(global1.a, abs(4294967295u)), vec2<u32>(12513u, 1u) ^ vec2<u32>(var_0, u_input.a.x), _wgslsmith_add_i32(arg_0.x, 36195i) != abs(arg_0.x))));
    var var_2 = ~firstTrailingBit(u_input.a.x);
    var_2 = firstLeadingBit(var_0 >> (u_input.a.x % 32u));
    return reverseBits(func_3(Struct_2(var_0), vec2<i32>(-arg_0.x, ~(i32(-1i) * -2147483647i)), true, Struct_2(4294967295u)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3) -> f32 {
    var var_0 = Struct_1(_wgslsmith_add_vec4_u32(arg_1.b.a, u_input.a), vec3<u32>(global1.a, 46680u, 125960u));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(813f, 439f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(412f - -485f)))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -905f) + _wgslsmith_div_f32(-848f, -966f)), -251f))));
    var var_2 = Struct_2(global1.a & ~func_2(_wgslsmith_mod_vec3_i32(vec3<i32>(-27139i, 23947i, 15371i), vec3<i32>(2147483647i, -18777i, -74916i))));
    let var_3 = firstLeadingBit(abs((reverseBits(vec3<i32>(-2147483647i, 0i, 0i)) << (vec3<u32>(0u, 1u, arg_1.c.a) % vec3<u32>(32u))) ^ vec3<i32>(1i, 1i, 1i)));
    global1 = Struct_2(max(arg_0.b.x, ~u_input.a.x));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_1)), -1420f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = Struct_3(true, Struct_1(u_input.a, u_input.a.yyy), Struct_2(13420u));
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-206f, _wgslsmith_f_op_f32(func_1(Struct_1(vec4<u32>(37334u, 0u, var_1.c.a, 30693u), vec3<u32>(u_input.a.x, 35487u, global1.a)), var_1))))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(963f - 465f)), _wgslsmith_f_op_f32(round(-1216f))))), -313f));
    global1 = Struct_2(1u);
    let var_3 = var_1.b;
    var_0 = all(vec3<bool>(var_1.a, false, true));
    global1 = Struct_2(abs(91542u));
    let var_4 = abs(vec3<i32>(0i, reverseBits(-(i32(-1i) * -1i)), -2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(1093f, 1876i, ~vec2<i32>(var_4.x, var_4.x));
}

