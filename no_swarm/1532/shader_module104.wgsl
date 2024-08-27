struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec2<u32>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: i32) -> bool {
    return true;
}

fn func_3(arg_0: Struct_2) -> bool {
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-151f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1316f - -343f))), vec4<i32>(u_input.b, _wgslsmith_sub_i32(u_input.b | u_input.d.x, firstLeadingBit(9392i)), ~u_input.b, -712i), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -553f, 1000f, 624f), vec4<f32>(-273f, -1438f, 1236f, -1766f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1098f, -1000f, -457f, -1000f) - vec4<f32>(-2299f, 197f, -267f, -105f))), vec4<f32>(_wgslsmith_f_op_f32(929f - 792f), -984f, _wgslsmith_f_op_f32(abs(256f)), -1044f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-972f, 1000f, 534f, -694f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1732f, 1000f, -248f, -1595f))) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1009f, -1312f, -502f, 142f)))))), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1526f + 3087f), _wgslsmith_f_op_f32(floor(-1265f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(316f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(sign(1249f))))), Struct_2(vec3<u32>(7149u, 10649u, global1.x ^ select(1u, arg_0.a.x, true))));
    let var_1 = Struct_2(vec3<u32>(0u, var_0.c.a.x, arg_0.a.x) >> (abs(vec3<u32>(var_0.c.a.x, var_0.c.a.x, 23110u)) % vec3<u32>(32u)));
    let var_2 = 413f;
    var var_3 = var_0;
    let var_4 = true;
    return -768f >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.b.x)) * var_0.a.a)));
}

fn func_1() -> f32 {
    var var_0 = !vec4<bool>(true, !(!func_2(u_input.d.x)), !(any(vec2<bool>(false, true)) | func_3(Struct_2(u_input.c))), any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true)));
    var var_1 = _wgslsmith_clamp_vec4_i32(u_input.d, select(~(~vec4<i32>(u_input.b, u_input.e.x, 996i, 0i)), u_input.d, !(!vec4<bool>(false, var_0.x, var_0.x, var_0.x))) >> ((_wgslsmith_sub_vec4_u32(vec4<u32>(global1.x, global1.x, 158916u, 16458u) & vec4<u32>(u_input.c.x, u_input.a, u_input.a, global1.x), vec4<u32>(38847u, u_input.a, u_input.a, global1.x)) ^ ~vec4<u32>(u_input.c.x, global1.x, 65135u, u_input.c.x)) % vec4<u32>(32u)), vec4<i32>(u_input.e.x, u_input.e.x, select(abs(58369i), _wgslsmith_sub_i32(-14930i, -12812i), any(vec3<bool>(false, var_0.x, var_0.x))), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.e.x, u_input.d.x, -5594i) >> (vec4<u32>(4294967295u, u_input.c.x, 44292u, u_input.c.x) % vec4<u32>(32u)), u_input.d)) & ~(vec4<i32>(u_input.e.x, u_input.b, 5499i, 1i) ^ (vec4<i32>(u_input.e.x, 49675i, -20143i, u_input.e.x) & u_input.d)));
    return _wgslsmith_f_op_f32(f32(-1f) * -1997f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(func_1());
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-235f - -1188f))), vec4<i32>(u_input.e.x, u_input.e.x, -u_input.e.x, max(_wgslsmith_mult_i32(u_input.e.x, 2147483647i), 0i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(802f, 1720f, 781f, 718f))))) - vec4<f32>(_wgslsmith_f_op_f32(-773f - 403f), _wgslsmith_f_op_f32(-1043f - -494f), -1917f, _wgslsmith_div_f32(-1573f, 1210f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1552f, -1206f, 373f, 1061f)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -487f), -365f, _wgslsmith_div_f32(-2115f, 657f), _wgslsmith_f_op_f32(abs(1305f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(158f, 1237f, -1252f, 605f))))), Struct_2(~u_input.c));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_u32(~(u_input.a >> (global1.x % 32u)), abs(_wgslsmith_div_u32(global1.x, var_0.c.a.x))), u_input.c.x, 0i);
}

