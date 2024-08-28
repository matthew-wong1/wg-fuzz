struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_1,
    c: f32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: array<vec2<bool>, 2> = array<vec2<bool>, 2>(vec2<bool>(true, true), vec2<bool>(false, false));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> f32 {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(global0.c * _wgslsmith_f_op_f32(-global0.b.b.x)));
    var var_1 = _wgslsmith_mult_vec4_i32(-abs(u_input.a), ~firstLeadingBit(countOneBits(vec4<i32>(u_input.a.x, 56230i, 17934i, -1i)))) & u_input.a;
    var_1 = ~vec4<i32>(u_input.a.x, global0.d.x, ~10935i, min(_wgslsmith_mult_i32(firstTrailingBit(var_1.x), -2147483647i), -2147483647i));
    global0 = Struct_5(Struct_4(global0.c), global0.b, global0.c, ~(~vec2<i32>(-26034i, abs(-2147483647i))));
    var var_2 = true;
    return _wgslsmith_f_op_f32(-155f + -2545f);
}

fn func_2() -> vec4<f32> {
    let var_0 = _wgslsmith_dot_vec2_i32(u_input.a.xz, u_input.a.zy);
    global1 = array<vec2<bool>, 2>();
    let var_1 = global0.b.a.wyw;
    global0 = Struct_5(Struct_4(global0.c), global0.b, global0.a.a, firstTrailingBit(-abs(u_input.a.xy) ^ u_input.a.yz));
    global0 = Struct_5(Struct_4(global0.a.a), global0.b, _wgslsmith_f_op_f32(-global0.c), firstTrailingBit(select(-vec2<i32>(var_0, u_input.a.x), global0.d, global1[_wgslsmith_index_u32(countOneBits(var_1.x), 2u)])));
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.a, _wgslsmith_f_op_f32(abs(global0.c)), global0.b.c.x, _wgslsmith_f_op_f32(func_3())) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.c, 1338f, global0.a.a, global0.c))), vec4<f32>(_wgslsmith_f_op_f32(-global0.b.b.x), _wgslsmith_f_op_f32(select(1232f, _wgslsmith_f_op_f32(f32(-1f) * -1076f), 71402i > var_0)), _wgslsmith_f_op_f32(-global0.c), -519f)));
}

fn func_1(arg_0: bool, arg_1: vec2<u32>) -> vec4<u32> {
    let var_0 = Struct_1(vec4<u32>(global0.b.a.x >> (u_input.c.x % 32u), ~_wgslsmith_mod_u32(abs(0u), ~global0.b.a.x), ~4294967295u, 4294967295u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.b.b)))), _wgslsmith_f_op_vec4_f32(func_2()));
    let var_1 = Struct_4(var_0.b.x);
    global0 = Struct_5(Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.c))))), var_0, 413f, abs(_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(-48909i, u_input.a.x), abs(1i)), vec2<i32>(~global0.d.x, -u_input.a.x))));
    let var_2 = ~(~2147483647i | min(global0.d.x, min(_wgslsmith_div_i32(global0.d.x, u_input.a.x), u_input.a.x)));
    global0 = Struct_5(Struct_4(var_0.c.x), global0.b, 1212f, _wgslsmith_mod_vec2_i32(-firstTrailingBit(_wgslsmith_div_vec2_i32(vec2<i32>(50828i, u_input.a.x), u_input.a.wy)), vec2<i32>(max(0i, ~1i), global0.d.x)));
    return vec4<u32>(~0u, global0.b.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(abs(4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(16472u, 4294967295u), vec2<u32>(4294967295u, var_0.a.x)), _wgslsmith_mult_u32(global0.b.a.x, var_0.a.x)) | reverseBits(_wgslsmith_mult_vec3_u32(u_input.c.zww, vec3<u32>(26487u, var_0.a.x, 18942u))), ~abs(var_0.a.xyx)), min(~41791u, var_0.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<bool>, 2>();
    global1 = array<vec2<bool>, 2>();
    var var_0 = global1[_wgslsmith_index_u32(select(~_wgslsmith_dot_vec4_u32(func_1(global0.b.a.x < 39638u, ~vec2<u32>(global0.b.a.x, global0.b.a.x)), ~(~global0.b.a)), ~firstTrailingBit(_wgslsmith_clamp_u32(u_input.c.x, global0.b.a.x, global0.b.a.x)), !all(vec3<bool>(true, false, true))), 2u)];
    var var_1 = !(4197u == (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.b.x), vec2<u32>(10026u, u_input.b.x)) & ~31580u)) & !select(!any(global1[_wgslsmith_index_u32(28684u, 2u)]), global0.d.x != _wgslsmith_clamp_i32(-31924i, 42843i, -31961i), all(select(vec4<bool>(true, true, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, true), var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1908f, -1000f, -1338f) + vec4<f32>(global0.a.a, -539f, global0.c, 365f)))) - vec4<f32>(1959f, _wgslsmith_f_op_f32(max(-1095f, global0.b.c.x)), _wgslsmith_f_op_f32(-global0.c), global0.b.c.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(global0.b.c, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-2170f, 296f, global0.a.a, global0.c))))))), ~_wgslsmith_mult_vec3_u32(vec3<u32>(~global0.b.a.x, 17620u, _wgslsmith_div_u32(global0.b.a.x, u_input.c.x)), global0.b.a.ywy), min(vec2<u32>(38299u, global0.b.a.x), u_input.b.xx), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-855f * global0.a.a))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1035f, global0.a.a))) - _wgslsmith_f_op_f32(-332f + 462f)));
}

