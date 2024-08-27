struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -927f;

var<private> global1: array<Struct_4, 24>;

var<private> global2: vec4<f32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<f32> {
    var var_0 = Struct_3(vec2<u32>(~u_input.c, u_input.a.x << (39261u % 32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.ww) + _wgslsmith_f_op_vec2_f32(-global2.ww)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1630f, global2.x))))))), Struct_2(Struct_1(~(~4294967295u), ~vec3<u32>(4294967295u, 1u, u_input.c), vec3<i32>(~2161i, 1i, _wgslsmith_sub_i32(0i, -2147483647i)), 10247u | u_input.a.x)));
    var var_1 = Struct_5(var_0.b.x, 14051u);
    let var_2 = ~(0u | (26600u >> (_wgslsmith_clamp_u32(~var_0.c.a.d, _wgslsmith_div_u32(u_input.c, var_1.b), ~var_1.b) % 32u)));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) - var_0.b.x);
    var var_3 = var_0.c;
    return vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -499f), _wgslsmith_f_op_f32(f32(-1f) * -169f), _wgslsmith_f_op_f32(max(1000f, -1434f)), global2.x);
}

fn func_4(arg_0: i32, arg_1: vec2<bool>, arg_2: vec4<f32>) -> bool {
    return select((~(~1u) > u_input.c) | false, any(vec3<bool>(!any(vec4<bool>(arg_1.x, false, false, true)), arg_1.x, select(4294967295u, 0u, arg_1.x) != u_input.a.x)), !any(vec3<bool>(false, true, !arg_1.x)));
}

fn func_2() -> Struct_3 {
    let var_0 = abs(-2147483647i);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.xxx) * vec3<f32>(-260f, _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(floor(-666f))))));
    var var_2 = !(!func_4(-2147483647i, select(vec2<bool>(true, true), vec2<bool>(true, true), true), _wgslsmith_f_op_vec4_f32(func_3())));
    let var_3 = !(!(!vec4<bool>(true, false, true, any(vec3<bool>(false, false, false)))));
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-951f, _wgslsmith_f_op_f32(f32(-1f) * -522f), _wgslsmith_f_op_f32(-368f + global2.x), _wgslsmith_f_op_f32(trunc(1075f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(379f, -1083f, 2612f, var_1.x)), _wgslsmith_div_vec4_f32(vec4<f32>(-991f, global2.x, -2181f, var_1.x), vec4<f32>(740f, var_1.x, -1730f, var_1.x))) + vec4<f32>(_wgslsmith_f_op_f32(var_1.x * global2.x), var_1.x, _wgslsmith_div_f32(-1155f, global2.x), var_1.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(3086f - global2.x), -535f, _wgslsmith_f_op_f32(var_1.x - var_1.x), _wgslsmith_div_f32(var_1.x, -946f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(791f, var_1.x, global2.x, global2.x)), !vec4<bool>(var_3.x, var_3.x, true, true))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.x, -448f, -1293f, var_1.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, var_1.x, -2119f, global2.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, -117f, -1050f, 257f) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(159f, -1704f, var_1.x, 425f))))))));
    return Struct_3(vec2<u32>(~u_input.a.x, u_input.a.x), _wgslsmith_f_op_vec2_f32(select(global2.ww, vec2<f32>(var_4.x, -407f), vec2<bool>(true, select(false, var_3.x, var_3.x) == any(var_3.yy)))), Struct_2(Struct_1(u_input.b, ~select(vec3<u32>(u_input.c, 35371u, u_input.a.x), vec3<u32>(4294967295u, 0u, 4294967295u), true), min(vec3<i32>(var_0, -937i, var_0), firstTrailingBit(vec3<i32>(29231i, -1i, var_0))), 1u)));
}

fn func_1() -> f32 {
    let var_0 = func_2();
    var var_1 = countOneBits(select(var_0.c.a.c.x & abs(var_0.c.a.c.x), -9911i, true));
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global2.x + global2.x)));
    global2 = _wgslsmith_div_vec4_f32(vec4<f32>(-593f, _wgslsmith_f_op_f32(f32(-1f) * -159f), func_2().b.x, 1448f), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, 893f, 744f, 680f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-710f, 181f, -321f, global2.x), vec4<f32>(795f, global2.x, global2.x, -1678f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-517f, var_2, 1000f, var_0.b.x))))))));
    global1 = array<Struct_4, 24>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(-862f + -750f))) * -1434f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.x;
    var var_1 = vec2<i32>(i32(-1i) * -41390i, _wgslsmith_dot_vec3_i32(max(-(~vec3<i32>(-24419i, 2147483647i, 0i)), -vec3<i32>(1i, 1i, 1i)), _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-7578i, 54460i, -1i) << (vec3<u32>(0u, 0u, u_input.a.x) % vec3<u32>(32u)), vec3<i32>(1i, 1i, 1i), countOneBits(vec3<i32>(1i, -12016i, 17152i))), vec3<i32>(1i, ~1i, abs(1i)))));
    global1 = array<Struct_4, 24>();
    var var_2 = u_input.a.x;
    var var_3 = _wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) + global2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(global2.x - global2.x), 701f, _wgslsmith_f_op_f32(sign(global2.x)))))), u_input.a, abs(~_wgslsmith_div_u32(~u_input.b, ~u_input.c)));
}

