struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
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

var<private> global0: vec3<u32>;

var<private> global1: vec4<u32>;

var<private> global2: array<vec2<i32>, 19>;

var<private> global3: vec2<bool>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> bool {
    return global3.x;
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec2<u32>) -> vec4<bool> {
    var var_0 = 31224u;
    let var_1 = abs(~_wgslsmith_mod_vec3_i32(countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, 17472i), u_input.a.wyx)), u_input.a.xyy));
    let var_2 = vec2<bool>(global3.x, global3.x);
    global3 = !vec2<bool>(true, global3.x);
    let var_3 = vec2<bool>(var_2.x, false);
    return vec4<bool>(!global3.x, func_3(arg_1), ~_wgslsmith_div_u32(arg_1.a, abs(global1.x)) >= arg_2.x, all(!select(vec4<bool>(var_2.x, true, global3.x, false), vec4<bool>(true, true, true, true), all(var_2))));
}

fn func_1() -> Struct_2 {
    var var_0 = all(func_2(global0.x, Struct_1(firstTrailingBit(select(1u, global0.x, global3.x))), global1.zw));
    global0 = vec3<u32>(global0.x, (global1.x & global0.x) << (max(_wgslsmith_clamp_u32(global1.x, global0.x, 49886u), abs(global0.x)) % 32u), global1.x);
    global0 = global1.xwx;
    let var_1 = Struct_3(~vec3<i32>(0i, abs(select(47172i, u_input.b, global3.x)), i32(-1i) * -1i), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-330f)) * _wgslsmith_f_op_f32(f32(-1f) * -556f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-783f + 665f)) + -1398f), -188f));
    var var_2 = 0i;
    return Struct_2(select(!vec4<bool>(!global3.x, all(vec4<bool>(false, true, global3.x, false)), false, global1.x == global1.x), select(!func_2(global0.x, Struct_1(1u), vec2<u32>(global0.x, global1.x)), vec4<bool>(true, true, true, true), global3.x), !vec4<bool>(global3.x, global3.x, false, global3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.b.x)) - -186f), Struct_1(global1.x), Struct_1(_wgslsmith_div_u32(global1.x, global0.x)), global1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -957f), _wgslsmith_f_op_f32(1996f - 1300f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(394f)), _wgslsmith_f_op_f32(793f * 502f)) + vec2<f32>(-1523f, 1006f))))));
    global3 = vec2<bool>(true, global3.x);
    let var_1 = func_1();
    let var_2 = u_input.c.x << (var_1.e % 32u);
    global2 = array<vec2<i32>, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(913f);
}

