struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-25454i, -28681i);

var<private> global1: array<Struct_3, 7>;

var<private> global2: vec3<f32> = vec3<f32>(497f, 813f, 478f);

var<private> global3: array<i32, 7> = array<i32, 7>(2632i, -37623i, 2523i, 0i, -1i, 38081i, -1330i);

var<private> global4: Struct_1;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1) -> bool {
    let var_0 = _wgslsmith_clamp_i32(u_input.b, min(-u_input.c.x, global0.x) ^ global0.x, ~(-(~(-7306i))));
    var var_1 = ~(~25691u);
    var var_2 = 5685u;
    var var_3 = u_input.d.x >= 115420u;
    var var_4 = vec2<bool>(arg_0.x, 90394u > u_input.a.x);
    return arg_0.x;
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: vec4<f32>) -> vec4<f32> {
    global1 = array<Struct_3, 7>();
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2.wyz) - vec3<f32>(arg_2.x, global2.x, -363f)) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, global2.x, global2.x) * vec3<f32>(global4.a.x, 1534f, global4.a.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(477f, arg_2.x, global4.a.x)), vec3<bool>(true, true, true)))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-577f))), -513f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2128f)))), _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1.x, 1i, _wgslsmith_add_i32(2147483647i, firstTrailingBit(27692i))), ~_wgslsmith_mod_vec3_i32(vec3<i32>(25367i, arg_1.x, 11976i), vec3<i32>(global0.x, global3[_wgslsmith_index_u32(4294967295u, 7u)], 1i)), -vec3<i32>(u_input.b, _wgslsmith_clamp_i32(arg_1.x, arg_1.x, 52504i), -45698i ^ global3[_wgslsmith_index_u32(arg_0.x, 7u)])));
    var var_1 = vec3<i32>(-1i) * -vec3<i32>(-74609i, _wgslsmith_add_i32(0i, u_input.c.x | global0.x), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, -41629i), _wgslsmith_sub_vec2_i32(arg_1, var_0.b.yx)));
    var var_2 = -vec4<i32>(-_wgslsmith_div_i32(_wgslsmith_sub_i32(13391i, -1i), 44184i), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(var_0.b, firstTrailingBit(var_0.b)), min(min(var_0.b, var_0.b), vec3<i32>(global3[_wgslsmith_index_u32(4294967295u, 7u)], arg_1.x, 20879i))), global0.x << (~u_input.d.x % 32u), ~(~global3[_wgslsmith_index_u32(~85092u, 7u)]));
    let var_3 = arg_0.x;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.a.x, global4.a.x, -481f, global2.x))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-global4.a), vec4<f32>(_wgslsmith_f_op_f32(-1019f + 581f), _wgslsmith_f_op_f32(min(var_0.a.x, global2.x)), _wgslsmith_f_op_f32(450f + -112f), _wgslsmith_f_op_f32(global4.a.x - arg_2.x)))))));
}

fn func_2() -> vec4<f32> {
    global1 = array<Struct_3, 7>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(func_3(~_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, u_input.a.x) | u_input.a, u_input.d.zx, vec2<u32>(1u, u_input.a.x)), u_input.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-238f, global2.x, global2.x, -1272f)))));
    global0 = u_input.c;
    global2 = _wgslsmith_div_vec3_f32(vec3<f32>(global4.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x - 1029f))), -455f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a.xxz) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1203f))), -201f, -605f)));
    global0 = -vec2<i32>(~global0.x << (select(u_input.a.x, countOneBits(u_input.d.x), false) % 32u), countOneBits(u_input.c.x ^ -2147483647i) & global0.x);
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(1161f * _wgslsmith_f_op_f32(select(930f, -180f, u_input.a.x < u_input.d.x))), -486f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.a.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (!all(vec4<bool>(true, false, true, false)) && any(vec3<bool>(true, true, true))) == true;
    global1 = array<Struct_3, 7>();
    let var_1 = !(!vec4<bool>(!func_1(vec4<bool>(false, false, false, true), Struct_1(global4.a)), true, any(vec2<bool>(true, true)), !select(false, false, true)));
    let var_2 = true;
    let var_3 = Struct_2(_wgslsmith_div_vec3_f32(global4.a.xxw, _wgslsmith_div_vec3_f32(vec3<f32>(-2254f, _wgslsmith_f_op_f32(global2.x + -1095f), _wgslsmith_f_op_f32(abs(-118f))), vec3<f32>(_wgslsmith_f_op_f32(global4.a.x * global2.x), global2.x, global4.a.x))), reverseBits(vec3<i32>(-global0.x | ~2147483647i, global3[_wgslsmith_index_u32(~(u_input.a.x << (u_input.d.x % 32u)), 7u)], ~(-5011i))));
    global4 = Struct_1(_wgslsmith_f_op_vec4_f32(func_2()));
    global1 = array<Struct_3, 7>();
    let var_4 = 2687i;
    let var_5 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), 1f)), global2.x, global4.a.x, global2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5.x)) * 1009f) * -552f), vec2<i32>(-1i) * -_wgslsmith_clamp_vec2_i32(min(var_3.b.zy, var_3.b.zy), vec2<i32>(15504i, var_3.b.x), reverseBits(vec2<i32>(-36058i, var_4))), u_input.a.x, vec4<f32>(-212f, 1000f, var_5.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_3.a.x - _wgslsmith_div_f32(-688f, var_5.x))))));
}

