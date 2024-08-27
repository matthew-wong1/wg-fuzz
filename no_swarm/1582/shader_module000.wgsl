struct Struct_1 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 7> = array<vec3<i32>, 7>(vec3<i32>(1i, -58379i, -12701i), vec3<i32>(0i, -1i, -1i), vec3<i32>(2147483647i, 2147483647i, i32(-2147483648)), vec3<i32>(2147483647i, -21635i, 73040i), vec3<i32>(-26577i, i32(-2147483648), -32044i), vec3<i32>(36988i, 0i, 0i), vec3<i32>(0i, 2960i, 1i));

var<private> global1: vec2<f32>;

var<private> global2: Struct_2;

var<private> global3: u32;

var<private> global4: i32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec4<f32> {
    let var_0 = ~(~min(min(vec2<u32>(209u, global2.b.a), vec2<u32>(global2.b.a, global2.b.a)), ~vec2<u32>(global2.b.a, global2.b.a)) | ~(~vec2<u32>(global2.b.a, 62153u) << (~vec2<u32>(16962u, global2.b.a) % vec2<u32>(32u))));
    global4 = global2.a;
    global3 = global2.b.a | reverseBits(1u);
    global4 = global2.a;
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2.b.b * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-734f, global1.x, global2.b.b.x, global2.b.b.x)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1182f, global2.b.b.x, _wgslsmith_div_f32(-433f, global2.b.b.x), _wgslsmith_f_op_f32(min(1218f, global1.x))))), global2.b.b, !(!any(vec3<bool>(true, true, true)))));
}

fn func_2() -> Struct_2 {
    global1 = global2.b.b.zy;
    var var_0 = _wgslsmith_f_op_f32(max(global2.b.b.x, _wgslsmith_div_f32(2391f, global1.x)));
    let var_1 = Struct_2(-(u_input.a.x << (abs(global2.b.a) % 32u)) | global2.a, Struct_1(global2.b.a, _wgslsmith_f_op_vec4_f32(func_3())));
    global0 = array<vec3<i32>, 7>();
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-261f + var_1.b.b.x) + 500f)))));
    return var_1;
}

fn func_1() -> Struct_1 {
    global3 = 1u;
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-292f + global1.x), _wgslsmith_f_op_f32(global1.x + global1.x))));
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.b.b.wy - _wgslsmith_div_vec2_f32(vec2<f32>(global1.x, global1.x), global2.b.b.wx)) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global1.x) - vec2<f32>(1898f, -145f)))))) * global2.b.b.xx);
    var var_1 = func_2();
    var var_2 = ~0u;
    return global2.b;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = ~101834u;
    var var_0 = global2.b;
    let var_1 = true;
    let var_2 = 87527u;
    var var_3 = func_1();
    global4 = _wgslsmith_div_i32(~1i ^ _wgslsmith_add_i32(-2649i << ((1u >> (0u % 32u)) % 32u), -(global2.a & 0i)), _wgslsmith_sub_i32(-_wgslsmith_div_i32(2147483647i, 1i), global2.a));
    global2 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(firstTrailingBit(firstLeadingBit(global2.a))) | _wgslsmith_sub_i32(_wgslsmith_div_i32(1i, ~0i), -59337i), u_input.a, vec2<i32>(-_wgslsmith_mod_i32(u_input.a.x, min(-2147483647i, global2.a)), ~_wgslsmith_clamp_i32(~u_input.a.x, ~global2.a, 2147483647i)), _wgslsmith_mult_i32(~firstLeadingBit(max(0i, global2.a)), global2.a), vec4<u32>(var_2, 16649u, 36584u, var_0.a));
}

