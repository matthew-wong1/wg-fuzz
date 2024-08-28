struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: i32,
    d: vec2<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec2<bool>;

var<private> global2: array<Struct_2, 29>;

var<private> global3: array<vec4<i32>, 27>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> Struct_3 {
    global2 = array<Struct_2, 29>();
    var var_0 = Struct_2(global0.e.a, -(~global0.c));
    var var_1 = Struct_2(~vec2<u32>(1u, var_0.a.x), _wgslsmith_div_i32(global0.e.b, 44576i));
    let var_2 = -(vec3<i32>(_wgslsmith_mult_i32(var_0.b, 1i), -(-17128i ^ global0.c), -44098i) << (vec3<u32>(min(firstTrailingBit(var_1.a.x), ~0u), var_0.a.x, global0.b.a.x | 24976u) % vec3<u32>(32u)));
    let var_3 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1441f, -886f)) * vec2<f32>(-326f, -356f)) - vec2<f32>(_wgslsmith_div_f32(-385f, -228f), _wgslsmith_f_op_f32(f32(-1f) * -1526f))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-572f, 1911f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -854f) + vec2<f32>(199f, -259f))))))));
    return Struct_3(1i, global0.b, var_1.b, vec2<u32>(firstLeadingBit(~var_0.a.x), 1u), Struct_2(vec2<u32>(4294967295u, _wgslsmith_add_u32(24453u, 28630u)), _wgslsmith_sub_i32(min(-var_2.x, _wgslsmith_div_i32(-2147483647i, 2147483647i)), ~(-5841i << (global0.e.a.x % 32u)))));
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: Struct_3, arg_3: vec3<u32>) -> Struct_2 {
    let var_0 = global3[_wgslsmith_index_u32(41948u, 27u)];
    var var_1 = arg_2;
    global1 = vec2<bool>(var_1.b.a.x > _wgslsmith_mult_u32(0u, 1u), global1.x);
    let var_2 = !vec4<bool>(!any(select(vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(false, global1.x, true, global1.x), global1.x)), false, false, false);
    var var_3 = -751f;
    return Struct_2(vec2<u32>(arg_3.x, 80348u), ~abs(238i));
}

fn func_1() -> StorageBuffer {
    let var_0 = func_3(func_2(), -1949f, func_2(), ~vec3<u32>(global0.e.a.x << (abs(global0.d.x) % 32u), 51394u, 1u & global0.d.x));
    var var_1 = Struct_3(50233i, func_2().e, -2147483647i, vec2<u32>(~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(0u, global0.e.a.x), ~global0.b.a.x, global0.d.x), ~(global0.d.x ^ _wgslsmith_dot_vec2_u32(global0.e.a, var_0.a))), Struct_2(~var_0.a, min(32944i, _wgslsmith_mult_i32(countOneBits(var_0.b), ~1819i))));
    var var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-463f, 1224f), _wgslsmith_div_f32(2134f, 738f), _wgslsmith_f_op_f32(-122f * 842f), _wgslsmith_f_op_f32(select(-1470f, 780f, global1.x)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(1035f, 1708f, -464f, -728f) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1168f, 927f, -243f, 1000f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, 1698f, -203f, 1369f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1076f, 769f, 426f)), vec4<bool>(false, false, global1.x, false))))))));
    let var_3 = vec2<u32>(4713u, var_1.d.x);
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-720f, var_2.x, var_2.x, var_2.x) * vec4<f32>(1322f, var_2.x, var_2.x, var_2.x)))))));
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, 207f, var_2.x, -296f), vec4<f32>(-794f, -2131f, var_2.x, -588f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1468f, 1006f, var_2.x, 730f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<f32>(-572f, 510f, var_2.x, var_2.x), vec4<bool>(global1.x, true, global1.x, global1.x))))), global1.x)), var_2.yz, _wgslsmith_f_op_vec3_f32(-var_2.xzy), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

