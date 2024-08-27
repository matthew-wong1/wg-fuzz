struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: i32,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_1,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 17>;

var<private> global1: Struct_5;

var<private> global2: bool = true;

var<private> global3: array<Struct_5, 17>;

var<private> global4: Struct_4 = Struct_4(29811u, 313f, i32(-2147483648), vec3<u32>(1u, 6061u, 0u), vec4<i32>(0i, 2147483647i, -33292i, -48553i));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<u32>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-global4.b);
    var var_1 = global1.c;
    return firstTrailingBit(~global1.b.a);
}

fn func_2() -> f32 {
    var var_0 = max(vec3<i32>(func_3(vec2<u32>(_wgslsmith_clamp_u32(0u, 0u, u_input.a), 0u)), ~func_3(~vec2<u32>(1u, 0u)), ~_wgslsmith_mod_i32(global4.e.x, 1i)), ~(-_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, 6332i, global4.e.x) | vec3<i32>(29343i, 32212i, -306i), firstLeadingBit(vec3<i32>(40700i, global1.b.a, -2147483647i)))));
    let var_1 = var_0.zy;
    let var_2 = global1.c.b;
    var var_3 = Struct_1(var_0.x, abs(~select(abs(global1.c.a.b), firstTrailingBit(1u), all(vec4<bool>(var_2.a.c.x, false, false, true)))), var_2.a.c);
    var_0 = select(_wgslsmith_add_vec3_i32((vec3<i32>(-1i, -7794i, global4.e.x) ^ -global4.e.xww) & vec3<i32>(_wgslsmith_mult_i32(var_0.x, -19983i), -20216i, _wgslsmith_sub_i32(46594i, var_0.x)), _wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(global1.c.b.a.a, -32632i, var_2.b)), global4.e.xzz << ((global4.d << (global4.d % vec3<u32>(32u))) % vec3<u32>(32u)))), vec3<i32>(global4.e.x, min(-countOneBits(var_3.a), _wgslsmith_div_i32(0i, 7023i)), global1.c.a.a), select(!select(select(vec3<bool>(var_2.a.c.x, var_2.a.c.x, true), vec3<bool>(global1.c.b.a.c.x, true, true), vec3<bool>(false, var_3.c.x, false)), select(vec3<bool>(var_2.a.c.x, false, false), vec3<bool>(false, var_3.c.x, var_2.a.c.x), var_2.a.c.x), all(vec3<bool>(var_3.c.x, true, true))), vec3<bool>(true, all(vec2<bool>(true, var_2.a.c.x)), !(0u < global1.b.b)), true));
    return _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~(~1u), 17u)]);
}

fn func_1(arg_0: Struct_1) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(841f + _wgslsmith_f_op_f32(f32(-1f) * -442f));
    global3 = array<Struct_5, 17>();
    let var_1 = _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(4294967295u, 17u)], _wgslsmith_f_op_f32(max(1000f, var_0))));
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.b))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global4.b))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-839f))))))));
    let var_3 = vec4<f32>(-914f, 357f, _wgslsmith_f_op_f32(func_2()), global4.b);
    return Struct_4(_wgslsmith_mult_u32(0u, ~global1.c.b.a.b), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -957f) * 779f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(476f))))), ~func_3(~vec2<u32>(3955u, global4.d.x)), vec3<u32>(~35655u, max(1u, 1u), _wgslsmith_clamp_u32(4294967295u, u_input.a & 1u, _wgslsmith_clamp_u32(_wgslsmith_add_u32(0u, 12349u), reverseBits(global1.b.b), ~46273u))), firstTrailingBit(firstTrailingBit(_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(global4.e, global4.e), select(global4.e, vec4<i32>(-49566i, 7978i, arg_0.a, global1.b.a), false)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(0u, 17u)], global0[_wgslsmith_index_u32(global4.a, 17u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) - _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(30361u, 17u)], global0[_wgslsmith_index_u32(u_input.a, 17u)], global1.c.a.c.x))), _wgslsmith_f_op_f32(global4.b * -513f)))));
    global0 = array<f32, 17>();
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(global1.c.a.b, 1u), 17u)];
    global4 = func_1(Struct_1(2147483647i, ~(~4294967295u), !select(select(vec2<bool>(true, true), vec2<bool>(var_1.a, true), var_1.c.a.c), !vec2<bool>(false, global1.b.c.x), global1.a)));
    global4 = Struct_4(firstLeadingBit(0u), global4.b, ~(-19489i), _wgslsmith_div_vec3_u32(global4.d, _wgslsmith_clamp_vec3_u32(firstTrailingBit(global4.d), _wgslsmith_mod_vec3_u32(vec3<u32>(var_1.c.b.a.b, global1.c.b.a.b, global1.c.b.a.b), vec3<u32>(global4.a, 4294967295u, global1.b.b)), global4.d)), abs(~global4.e >> ((~vec4<u32>(global4.d.x, var_1.b.b, 4294967295u, 40502u) | _wgslsmith_sub_vec4_u32(vec4<u32>(var_1.b.b, global4.a, 9534u, 11685u), vec4<u32>(global1.b.b, var_1.c.a.b, 4294967295u, 58852u))) % vec4<u32>(32u))));
    global0 = array<f32, 17>();
    var var_2 = Struct_2(Struct_1(~_wgslsmith_add_i32(func_1(Struct_1(global1.b.a, var_1.c.b.a.b, global1.c.b.a.c)).c, ~var_1.b.a), _wgslsmith_mult_u32(u_input.a, countOneBits(var_1.c.a.b) ^ ~global4.d.x), select(var_1.b.c, vec2<bool>(true, true), true || (var_1.a & global1.c.a.c.x))), var_1.b.a);
    var var_3 = _wgslsmith_dot_vec2_u32(~(~vec2<u32>(~global4.d.x, u_input.a)), ~(~(~_wgslsmith_sub_vec2_u32(global4.d.yy, global4.d.zx))));
    var var_4 = _wgslsmith_f_op_f32(round(367f));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(abs(~(~104400u))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(var_2.a.b, 17u)], 2369f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(global1.c.b.a.b, 17u)], -364f) * var_0.zz) - var_0.zx)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0[_wgslsmith_index_u32(global1.b.b, 17u)], global0[_wgslsmith_index_u32(70446u, 17u)], -696f), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(294f, var_0.x, -170f))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.b, 542f, global4.b))))), _wgslsmith_f_op_f32(var_0.x + -1003f), 1u);
}

