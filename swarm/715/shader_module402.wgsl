struct Struct_1 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 5697u;

var<private> global1: i32;

var<private> global2: bool = true;

var<private> global3: vec3<f32> = vec3<f32>(-1035f, 1000f, -631f);

var<private> global4: vec2<u32> = vec2<u32>(4294967295u, 52186u);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<f32>) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x + -763f)), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(max(-1633f, -176f)), _wgslsmith_f_op_f32(f32(-1f) * -490f))), vec4<bool>(!any(vec3<bool>(true, true, true)), -1418f >= global3.x, true, true && any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)))), vec2<u32>(global4.x, global4.x));
    let var_1 = vec4<i32>(_wgslsmith_dot_vec4_i32(select(-abs(u_input.b), vec4<i32>(-26847i, u_input.b.x, -13010i, u_input.b.x) << (reverseBits(vec4<u32>(34991u, u_input.a, 0u, 4294967295u)) % vec4<u32>(32u)), true), _wgslsmith_mult_vec4_i32(u_input.b, reverseBits(u_input.b))), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, -1i), u_input.b.xzz), u_input.b.x, -u_input.b.x);
    var var_2 = _wgslsmith_f_op_f32(max(-1139f, _wgslsmith_f_op_f32(sign(var_0.a.x))));
    return 0u;
}

fn func_2(arg_0: Struct_2) -> bool {
    global4 = vec2<u32>(_wgslsmith_div_u32(u_input.a ^ abs(~global4.x), ~func_3(global3.yy)), global4.x);
    let var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, -876f, -391f, 1000f) * vec4<f32>(global3.x, 901f, global3.x, global3.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, global3.x, -556f, 1000f) - vec4<f32>(509f, 1451f, global3.x, global3.x)), true)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global3.x, global3.x, -950f)) + vec4<f32>(-151f, global3.x, -1148f, 1277f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-252f, global3.x, -217f, global3.x))) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global3.x, -804f, global3.x, global3.x)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1793f, _wgslsmith_f_op_f32(min(global3.x, global3.x)), _wgslsmith_div_f32(214f, global3.x), _wgslsmith_f_op_f32(-global3.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-227f, 626f, global3.x, global3.x)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global3.x, global3.x, global3.x, global3.x), vec4<f32>(-1042f, global3.x, -117f, global3.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, global3.x, global3.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.x, global3.x, global3.x, global3.x), vec4<f32>(375f, 1372f, global3.x, -1406f), false)))))));
    global3 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(round(var_1.x)), 114f, var_1.x)));
    global2 = global3.x <= var_1.x;
    return true;
}

fn func_1() -> StorageBuffer {
    global0 = global4.x;
    var var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(552f * global3.x)), 247f, _wgslsmith_f_op_f32(-global3.x), global3.x), vec4<bool>(true, all(vec4<bool>(true, true, true, true)), ~_wgslsmith_dot_vec3_i32(u_input.b.wzw, vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)) == u_input.b.x, func_2(Struct_2(all(vec2<bool>(true, false))))), vec2<u32>(1u, 1u));
    global1 = ~10175i >> (var_0.c.x % 32u);
    global4 = countOneBits(select(var_0.c, ~select(var_0.c, vec2<u32>(u_input.a, 1u), true), var_0.b.ww) | ~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 60388u), vec2<u32>(global4.x, 65417u)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(var_0.a.xwx)), var_0.a.wzy, any(!var_0.b.zz)))));
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-679f, -423f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.xz - var_1.zy))))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = ~reverseBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, ~u_input.a), vec2<u32>(select(global4.x, u_input.a, true), abs(u_input.a)), vec2<u32>(reverseBits(0u), 70687u)));
    let x = u_input.a;
    s_output = func_1();
}

