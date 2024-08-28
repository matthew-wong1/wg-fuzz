struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 20>;

var<private> global1: Struct_3;

var<private> global2: Struct_1 = Struct_1(vec3<u32>(26687u, 65071u, 4294967295u), vec4<f32>(131f, 683f, 1873f, 427f));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<u32>) -> i32 {
    global1 = Struct_3(vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(global1.a.x, arg_0.b), 1i), ~(~global1.a.x), global1.a.x));
    global0 = array<f32, 20>();
    let var_0 = arg_0.a.b.yy;
    global2 = arg_0.a;
    global1 = Struct_3(~select(~vec3<i32>(arg_0.b, arg_0.b, arg_0.b), _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(global1.a, global1.a), global1.a), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false)));
    return arg_0.b;
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1075f + -319f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.x)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1000f, 1126f, false)), -760f))) * global2.b.x);
    let var_1 = 1902f;
    let var_2 = global1.a.x;
    var_0 = _wgslsmith_f_op_f32(-1046f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-776f, -1859f)) + _wgslsmith_f_op_f32(step(-278f, _wgslsmith_f_op_f32(-var_1)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1678f)))));
    let var_3 = vec4<f32>(-648f, -1876f, _wgslsmith_f_op_f32(ceil(var_1)), 221f);
    return _wgslsmith_add_i32(24569i, countOneBits(global1.a.x));
}

fn func_1(arg_0: u32, arg_1: Struct_3, arg_2: Struct_1) -> Struct_3 {
    let var_0 = Struct_2(arg_2, reverseBits(~func_2(Struct_2(arg_2, 2147483647i), vec3<u32>(global2.a.x, global2.a.x, arg_0))) & func_3());
    global0 = array<f32, 20>();
    var var_1 = 657f;
    var var_2 = var_0.a;
    var var_3 = vec4<u32>(arg_0, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(~var_0.a.a.yx, _wgslsmith_sub_vec2_u32(vec2<u32>(71695u, 0u), arg_2.a.xz)), _wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.a.a.x, global2.a.x, arg_0), var_0.a.a)), var_2.a.x, 43131u) >> (_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(u_input.b, 4294967295u, arg_0, 1u)), ~(~min(vec4<u32>(13394u, global2.a.x, arg_0, u_input.b), vec4<u32>(arg_0, 0u, 1u, 4294967295u))), ~vec4<u32>(4294967295u, _wgslsmith_clamp_u32(global2.a.x, arg_0, var_0.a.a.x), 1u, _wgslsmith_dot_vec3_u32(var_0.a.a, vec3<u32>(4294967295u, 4294967295u, arg_0)))) % vec4<u32>(32u));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(global1.a, -global1.a);
    global1 = func_1(_wgslsmith_add_u32(u_input.b, _wgslsmith_sub_u32(35995u, global2.a.x)), Struct_3(global1.a), Struct_1(~firstTrailingBit(min(vec3<u32>(global2.a.x, global2.a.x, 0u), vec3<u32>(0u, 1u, global2.a.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(641f, global0[_wgslsmith_index_u32(76499u, 20u)], 543f, global0[_wgslsmith_index_u32(global2.a.x, 20u)]))))))));
    var var_1 = ~(~countOneBits(_wgslsmith_sub_u32(global2.a.x, u_input.b) >> (countOneBits(32740u) % 32u)));
    var var_2 = 497f;
    var_2 = global2.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(~46371u);
}

