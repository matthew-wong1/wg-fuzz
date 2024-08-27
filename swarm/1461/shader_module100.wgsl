struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: u32,
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

var<private> global0: i32 = -74851i;

var<private> global1: Struct_1;

var<private> global2: array<u32, 18>;

var<private> global3: vec4<i32>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<f32>) -> i32 {
    return -_wgslsmith_div_i32(1i, global1.a.x);
}

fn func_2() -> vec2<f32> {
    global1 = Struct_1(reverseBits(global3.yxy), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.c.wzw + _wgslsmith_f_op_vec3_f32(vec3<f32>(951f, 1000f, 135f) * vec3<f32>(-1000f, 1557f, -812f)))) * _wgslsmith_f_op_vec3_f32(-global1.b)), global1.c);
    global1 = Struct_1(max(vec3<i32>(func_3(_wgslsmith_f_op_vec3_f32(max(global1.b, global1.b))), _wgslsmith_mod_i32(28257i, -18089i), abs(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, global1.a.x), global1.a.yx))), global1.a), global1.c.wwy, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(617f, global1.c.x, global1.c.x, 1109f), _wgslsmith_f_op_vec4_f32(exp2(global1.c))))));
    let var_0 = Struct_1(vec3<i32>(-23226i, -global3.x, ~global3.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.c.wxx)), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1972f - 509f))))), global1.b.x, -989f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.b.x))))));
    let var_1 = _wgslsmith_dot_vec4_i32(-vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_add_i32(global1.a.x, -1i), reverseBits(-61583i)), max(~51641i, reverseBits(var_0.a.x)), countOneBits(_wgslsmith_mod_i32(-22231i, var_0.a.x)), global1.a.x), vec4<i32>(~(-2147483647i), min(var_0.a.x, global3.x), func_3(var_0.c.zzz), -1i));
    global1 = Struct_1(select(abs(vec3<i32>(~(-13751i), var_1, func_3(var_0.b))), ~(~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, global3.x, -2147483647i), vec3<i32>(var_1, global1.a.x, u_input.b))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true)), vec3<bool>(-582f == var_0.b.x, true, true))), global1.b, _wgslsmith_div_vec4_f32(vec4<f32>(1000f, var_0.b.x, var_0.b.x, -733f), _wgslsmith_div_vec4_f32(var_0.c, global1.c)));
    return _wgslsmith_f_op_vec2_f32(var_0.b.yz * _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(var_0.c.x, -1220f)), _wgslsmith_f_op_f32(sign(-641f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.x, -2761f))))));
}

fn func_4(arg_0: vec2<f32>) -> vec3<f32> {
    let var_0 = ~select(~0i, ~func_3(global1.c.wzy) << (abs(u_input.c.x >> (4294967295u % 32u)) % 32u), !(any(vec3<bool>(true, true, true)) || true));
    global2 = array<u32, 18>();
    global3 = ~(max(~vec4<i32>(2147483647i, global3.x, u_input.a, 21873i), ~vec4<i32>(global1.a.x, global1.a.x, global1.a.x, global3.x)) ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(~(-5980i), -1i, -u_input.a, global3.x), ~_wgslsmith_mult_vec4_i32(vec4<i32>(global1.a.x, global3.x, 4146i, 25666i), vec4<i32>(0i, -20418i, u_input.a, 12694i)), abs(_wgslsmith_sub_vec4_i32(vec4<i32>(global1.a.x, var_0, u_input.b, 33876i), vec4<i32>(var_0, global3.x, var_0, -53130i)))));
    let var_1 = _wgslsmith_mod_vec3_i32(-global1.a, firstTrailingBit(firstLeadingBit(~(~vec3<i32>(38908i, 2147483647i, 0i)))));
    let var_2 = !(!(firstTrailingBit(~global2[_wgslsmith_index_u32(u_input.c.x, 18u)]) > u_input.d));
    return _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.b - _wgslsmith_f_op_vec3_f32(global1.c.zyx * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0.x, -134f, -899f))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -107f), -1458f, -1104f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1350f, _wgslsmith_div_f32(global1.b.x, 1319f), _wgslsmith_f_op_f32(round(-151f))))))));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec3<bool>) -> vec2<i32> {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.c.yxz)), _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_vec2_f32(func_2()))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-417f, _wgslsmith_f_op_f32(f32(-1f) * -1778f), global1.c.x) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(arg_1.c.xwy, vec3<f32>(382f, -543f, arg_1.c.x))), _wgslsmith_f_op_vec3_f32(global1.b * vec3<f32>(global1.c.x, -1490f, 1896f)))))), _wgslsmith_f_op_vec3_f32(step(global1.c.xzy, global1.b)));
    var var_1 = arg_1;
    global2 = array<u32, 18>();
    let var_2 = arg_1;
    let var_3 = -896f;
    return -global3.zw;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -2147483647i;
    let var_1 = max(u_input.d, u_input.c.x);
    global0 = -2147483647i;
    var_0 = global1.a.x;
    global3 = _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(global3.x, 1i), func_1(vec3<u32>(0u, 15695u, 1u), Struct_1(global1.a, vec3<f32>(global1.c.x, global1.c.x, -711f), vec4<f32>(global1.c.x, -595f, global1.c.x, -1079f)), vec3<bool>(true, false, false))), _wgslsmith_mult_i32(9094i, 1i), global3.x, ~(-2147483647i)) | vec4<i32>(min(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 10136i, 0i), vec3<i32>(global1.a.x, u_input.a, u_input.a)), global3.x), _wgslsmith_sub_i32(global1.a.x | global1.a.x, -1i), -22755i, ~(global1.a.x | 1i)), abs(countOneBits(-_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, 8617i, global3.x, u_input.b), vec4<i32>(global3.x, global3.x, u_input.b, -17558i)))), ~(vec4<i32>(-global3.x, global3.x, 43206i, _wgslsmith_clamp_i32(global1.a.x, u_input.b, global3.x)) | vec4<i32>(-global1.a.x, -24870i, ~global3.x, ~1i)));
    var var_2 = select(~global3.zzw, -global3.yww, any(vec4<bool>(true, true, true, true))) >> (firstLeadingBit(vec3<u32>(41456u, _wgslsmith_div_u32(u_input.d, 70896u), global2[_wgslsmith_index_u32(firstLeadingBit(u_input.d) << (u_input.d % 32u), 18u)])) % vec3<u32>(32u));
    global2 = array<u32, 18>();
    global3 = -max(~min(vec4<i32>(-2147483647i, global1.a.x, global1.a.x, global1.a.x) >> (vec4<u32>(49640u, var_1, 1u, 1u) % vec4<u32>(32u)), -vec4<i32>(u_input.b, global1.a.x, global3.x, global1.a.x)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, func_3(global1.c.xyx), _wgslsmith_div_i32(-2147483647i, global1.a.x), abs(-34996i)), max(min(vec4<i32>(global1.a.x, -38643i, var_2.x, u_input.b), vec4<i32>(0i, var_2.x, u_input.a, global1.a.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, global3.x, global3.x, -2335i), vec4<i32>(global3.x, -12336i, -2147483647i, var_2.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(58174u);
}

