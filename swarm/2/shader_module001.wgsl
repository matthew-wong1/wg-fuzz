struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec4<f32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_2,
    d: u32,
    e: vec3<f32>,
}

struct Struct_5 {
    a: Struct_2,
    b: u32,
    c: Struct_4,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 6>;

var<private> global1: Struct_3;

var<private> global2: vec4<f32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3() -> f32 {
    global2 = vec4<f32>(global1.b.b, global1.c.c.c.x, _wgslsmith_f_op_f32(global1.c.c.b + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x + 1000f))))), global2.x);
    let var_0 = global1.c.c.a;
    global0 = array<bool, 6>();
    let var_1 = false;
    let var_2 = var_1;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-910f)));
}

fn func_2(arg_0: i32) -> bool {
    global1 = Struct_3(select(!vec4<bool>(true != global1.c.a.x, true, -1949f >= global1.b.b, false), global1.a, global1.c.c.b == _wgslsmith_f_op_f32(-_wgslsmith_div_f32(306f, 1026f))), Struct_1(~max(-vec4<i32>(2147483647i, 2147483647i, 0i, global1.b.a.x), global1.c.c.a), global1.b.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(global1.b.c, global1.c.c.c), global1.b.c) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.c.c.c - vec4<f32>(global2.x, -142f, global1.c.c.b, 757f)))), global1.c.c.d), global1.c);
    var var_0 = Struct_4(global1.c.c, Struct_3(select(!vec4<bool>(true, global1.c.a.x, global1.a.x, true), select(!global1.c.a, vec4<bool>(true, global0[_wgslsmith_index_u32(29267u, 6u)], global0[_wgslsmith_index_u32(u_input.d, 6u)], global0[_wgslsmith_index_u32(global1.c.c.d.x, 6u)]), global1.a), true), global1.b, global1.c), global1.c, u_input.b.x >> (11526u % 32u), vec3<f32>(_wgslsmith_f_op_f32(max(-472f, global2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * _wgslsmith_f_op_f32(global1.c.c.c.x - _wgslsmith_f_op_f32(-global1.b.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.c.c.b, global2.x, true))))));
    global1 = Struct_3(global1.c.a, var_0.b.b, global1.c);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -468f) * global1.b.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(301f, _wgslsmith_f_op_f32(global1.b.c.x * var_0.c.c.c.x)))))), _wgslsmith_f_op_f32(func_3()), global2.x);
    return all(!var_0.b.c.a.wxz);
}

fn func_1(arg_0: vec4<u32>) -> vec4<i32> {
    let var_0 = all(vec4<bool>(false, ~countOneBits(u_input.d) != ~min(46634u, global1.b.d.x), all(vec3<bool>(func_2(1i), false, !global1.a.x)), global0[_wgslsmith_index_u32(1u, 6u)]));
    let var_1 = Struct_4(global1.c.c, Struct_3(global1.c.a, global1.b, Struct_2(global1.a, global1.b.a.x, global1.c.c)), global1.c, global1.b.d.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(global2.yyx))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, -1000f, 1725f) - vec3<f32>(-1286f, 1807f, global2.x))))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.c.b)), -605f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global2.x)) * global2.x))));
    var var_2 = ~abs(0u);
    var var_3 = Struct_3(vec4<bool>(abs(10734i) >= ~firstTrailingBit(19950i), true, global1.a.x, false), Struct_1(~(vec4<i32>(global1.c.c.a.x, -2147483647i, var_1.a.a.x, 15934i) ^ ~vec4<i32>(var_1.b.c.c.a.x, global1.b.a.x, global1.b.a.x, -13809i)), global2.x, var_1.c.c.c, ~var_1.a.d), Struct_2(select(!select(var_1.b.c.a, vec4<bool>(var_0, false, true, var_1.c.a.x), global1.c.a), !vec4<bool>(true, var_1.b.c.a.x, var_1.c.a.x, var_1.c.a.x), true), -52843i, Struct_1(vec4<i32>(-1i & u_input.c.x, u_input.a.x, ~1i, _wgslsmith_dot_vec2_i32(u_input.c.wx, vec2<i32>(u_input.c.x, global1.c.c.a.x))), 743f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.a.c) - global1.c.c.c), global1.b.d)));
    let var_4 = ~abs(7338i);
    return vec4<i32>(_wgslsmith_add_i32(var_1.b.b.a.x, ~_wgslsmith_div_i32(-global1.b.a.x, global1.b.a.x)), global1.c.c.a.x, ~var_1.c.c.a.x, u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(global1.a, 42475i, Struct_1(_wgslsmith_mod_vec4_i32(func_1(vec4<u32>(91821u, 1u, u_input.b.x, global1.b.d.x)) & vec4<i32>(-40103i, 0i, u_input.a.x, u_input.a.x), vec4<i32>(~u_input.a.x, firstLeadingBit(u_input.c.x), _wgslsmith_dot_vec3_i32(global1.b.a.zwx, global1.c.c.a.xwx), select(-2147483647i, u_input.a.x, true))), 1468f, global1.c.c.c, ~vec4<u32>(~u_input.d, global1.c.c.d.x, ~11204u, ~global1.c.c.d.x)));
    let var_1 = Struct_5(Struct_2(!(!vec4<bool>(true, var_0.a.x, false, global1.c.a.x)), 34293i, Struct_1(var_0.c.a, _wgslsmith_f_op_f32(-var_0.c.c.x), _wgslsmith_f_op_vec4_f32(-global1.b.c), var_0.c.d)), 1u, Struct_4(Struct_1(vec4<i32>(u_input.a.x, func_1(global1.b.d).x, -2147483647i, select(global1.c.b, var_0.c.a.x, global0[_wgslsmith_index_u32(4294967295u, 6u)])), -430f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-151f, -551f, -1585f, -245f)), vec4<u32>(global1.c.c.d.x, reverseBits(global1.c.c.d.x), u_input.d, var_0.c.d.x << (u_input.d % 32u))), Struct_3(global1.c.a, global1.b, Struct_2(select(global1.a, vec4<bool>(global1.a.x, true, true, global1.a.x), global1.c.a.x), 1i, Struct_1(vec4<i32>(global1.c.c.a.x, var_0.c.a.x, 13745i, -6831i), 2512f, vec4<f32>(1104f, 1845f, 463f, 961f), vec4<u32>(0u, var_0.c.d.x, var_0.c.d.x, var_0.c.d.x)))), Struct_2(!select(global1.c.a, vec4<bool>(false, var_0.a.x, var_0.a.x, true), var_0.a.x), _wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(0i, var_0.c.a.x, 36576i, 30746i)) ^ 2147483647i, var_0.c), _wgslsmith_mult_u32(_wgslsmith_div_u32(~var_0.c.d.x, 94023u), ~(~var_0.c.d.x)), vec3<f32>(global1.b.b, _wgslsmith_f_op_f32(-var_0.c.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.c.c.x, -493f, false))))), vec3<bool>(func_2(2147483647i ^ _wgslsmith_sub_i32(1i, var_0.c.a.x)), false, !(!global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global1.c.c.d.zwx, vec3<u32>(var_0.c.d.x, 4294967295u, 52573u)), 6u)])));
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_0.c.b)), _wgslsmith_f_op_f32(round(global2.x))) - -1123f)));
    var var_3 = var_1.c.c.a.zz;
    let var_4 = (var_3.x && all(var_1.c.b.c.a.yx)) && var_0.a.x;
    global0 = array<bool, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, vec2<u32>(firstTrailingBit(_wgslsmith_add_u32(var_1.a.c.d.x, var_1.a.c.d.x)), global1.c.c.d.x) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(70173u >> (var_0.c.d.x % 32u), 50022u | var_1.b), vec2<u32>(1u, var_0.c.d.x), _wgslsmith_mod_vec2_u32(~var_1.a.c.d.wx, var_1.a.c.d.xw)) % vec2<u32>(32u)), -func_1(~vec4<u32>(1u, 1u, var_1.c.c.c.d.x, var_0.c.d.x)).x, firstLeadingBit(abs(global1.b.a | _wgslsmith_div_vec4_i32(vec4<i32>(-1i, var_1.c.c.c.a.x, var_0.b, 1i), vec4<i32>(global1.b.a.x, u_input.a.x, var_0.c.a.x, var_1.c.b.b.a.x)))), u_input.b.x);
}

