struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: bool,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: Struct_3 = Struct_3(vec4<i32>(-1i, 2147483647i, 1i, 0i), Struct_1(true), vec3<u32>(1u, 44398u, 5046u));

var<private> global1: f32 = -575f;

var<private> global2: array<u32, 23> = array<u32, 23>(32928u, 50590u, 55884u, 25025u, 8018u, 17882u, 4294967295u, 0u, 49534u, 10045u, 65353u, 4294967295u, 0u, 1u, 4294967295u, 4294967295u, 0u, 16918u, 4294967295u, 51279u, 19614u, 4294967295u, 45097u);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<bool>) -> vec4<bool> {
    var var_0 = false;
    var var_1 = vec4<u32>(min(4294967295u, _wgslsmith_mod_u32(~(~12443u), select(4294967295u, ~59888u, true))), global0.c.x, 0u, ~(~(_wgslsmith_clamp_u32(4294967295u, 0u, 4294967295u) & _wgslsmith_mod_u32(1u, global0.c.x))));
    global2 = array<u32, 23>();
    let var_2 = -arg_0.zx;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-800f * _wgslsmith_f_op_f32(1357f - -1246f))))));
    return !(!(!(!(!vec4<bool>(global0.b.a, false, false, arg_1.x)))));
}

fn func_2(arg_0: u32, arg_1: bool) -> bool {
    var var_0 = Struct_1(!all(select(vec2<bool>(true, true), vec2<bool>(arg_1, false), all(vec3<bool>(arg_1, true, arg_1)))));
    let var_1 = select(!(!func_3(global0.a, !vec2<bool>(global0.b.a, false))), vec4<bool>(true & (global0.b.a && !global0.b.a), !(!(!arg_1)), any(select(vec3<bool>(true, global0.b.a, true), vec3<bool>(global0.b.a, false, arg_1), vec3<bool>(global0.b.a, global0.b.a, true))) && any(func_3(vec4<i32>(0i, -39358i, global0.a.x, global0.a.x), vec2<bool>(global0.b.a, var_0.a)).zyy), true), !(!(!vec4<bool>(true, global0.b.a, arg_1, false))));
    global2 = array<u32, 23>();
    var var_2 = ~(~global0.a);
    return all(var_1.wx);
}

fn func_1(arg_0: i32, arg_1: vec3<f32>) -> f32 {
    var var_0 = global0.b.a;
    let var_1 = all(select(vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -350f) >= arg_1.x, false, func_2(~global0.c.x, !global0.b.a), true), !select(vec4<bool>(global0.b.a, global0.b.a, global0.b.a, global0.b.a), !vec4<bool>(global0.b.a, true, false, false), vec4<bool>(false, global0.b.a, global0.b.a, global0.b.a)), vec4<bool>(true, global0.b.a, false, true)));
    global1 = arg_1.x;
    let var_2 = Struct_3(global0.a, global0.b, ~vec3<u32>(~0u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(759u, 0u, global0.c.x, global0.c.x), vec4<u32>(25699u, 4294967295u, global2[_wgslsmith_index_u32(14406u, 23u)], 1u)), reverseBits(global0.c.x)));
    global0 = var_2;
    return _wgslsmith_f_op_f32(select(arg_1.x, _wgslsmith_f_op_f32(1000f + arg_1.x), !var_1));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!(!vec3<bool>(!global0.b.a, global0.a.x <= global0.a.x, true)), !vec3<bool>(select(false, global0.b.a, true) & (false || global0.b.a), global0.b.a, all(vec2<bool>(false, global0.b.a)) | global0.b.a), !global0.b.a);
    var var_1 = global0.a.x;
    var_1 = global0.a.x;
    var_1 = -2147483647i;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1029f * -453f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-462f)), _wgslsmith_f_op_f32(func_1(24442i, vec3<f32>(916f, 182f, -1436f)))))));
    var_0 = vec3<bool>(global0.b.a, (_wgslsmith_mult_i32(global0.a.x & global0.a.x, global0.a.x) & -12887i) >= _wgslsmith_mult_i32(~(global0.a.x | global0.a.x), ~_wgslsmith_mult_i32(global0.a.x, global0.a.x)), global0.b.a);
    var_0 = func_3(select(max(_wgslsmith_mult_vec4_i32(global0.a, vec4<i32>(global0.a.x, 2147483647i, global0.a.x, global0.a.x)), min(global0.a, global0.a)) << (~min(vec4<u32>(global2[_wgslsmith_index_u32(u_input.a, 23u)], 0u, 1u, global2[_wgslsmith_index_u32(3531u, 23u)]), vec4<u32>(8107u, 17492u, global2[_wgslsmith_index_u32(u_input.a, 23u)], global0.c.x)) % vec4<u32>(32u)), -vec4<i32>(global0.a.x, ~global0.a.x, ~2147483647i, abs(global0.a.x)), !(!(!vec4<bool>(true, true, var_0.x, global0.b.a)))), !vec2<bool>(true, var_0.x)).xyw;
    var var_2 = Struct_2(!vec4<bool>(!func_2(global2[_wgslsmith_index_u32(6653u, 23u)], true), any(vec2<bool>(true, true)), select(var_0.x, global0.b.a, false) | !var_0.x, func_2(u_input.a, false)), vec4<u32>(1u, ~(~global2[_wgslsmith_index_u32(27746u, 23u)] ^ 1u), 63267u, reverseBits(~0u)), var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-847f, 413f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2711f, 142f))))));
}

