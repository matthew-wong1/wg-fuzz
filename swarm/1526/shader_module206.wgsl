struct Struct_1 {
    a: vec3<bool>,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 16> = array<bool, 16>(false, false, true, true, true, false, false, false, true, false, false, false, false, false, false, true);

var<private> global1: Struct_1;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(max(-_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, -11507i, -67718i, u_input.b.x), vec4<i32>(1i, global1.b, 0i, u_input.b.x)), vec4<i32>(global1.b, global1.b, 16900i & global1.b, firstTrailingBit(u_input.b.x))), vec4<i32>(-1i) * -_wgslsmith_sub_vec4_i32(vec4<i32>(2858i, -19872i, u_input.b.x, u_input.b.x), vec4<i32>(27201i, 27303i, u_input.b.x, 1i))), -vec4<i32>(-1i, 2147483647i, select(select(-1i, global1.b, global1.a.x), ~(-2147483647i), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, u_input.a.x, 52980u), 16u)]), abs(_wgslsmith_clamp_i32(0i, -1i, u_input.b.x))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1605f, _wgslsmith_f_op_f32(f32(-1f) * -938f)))) * -1020f));
    var var_2 = Struct_1(global1.a, -39845i);
    var var_3 = Struct_1(!vec3<bool>(any(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 16u)], true, global0[_wgslsmith_index_u32(0u, 16u)])), any(vec2<bool>(global0[_wgslsmith_index_u32(0u, 16u)], var_2.a.x)), !(u_input.a.x <= u_input.a.x)), -58104i);
    global0 = array<bool, 16>();
    return -488f;
}

fn func_2() -> Struct_1 {
    global0 = array<bool, 16>();
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + vec4<f32>(_wgslsmith_div_f32(-2773f, -469f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -873f) * -1519f), -125f, _wgslsmith_div_f32(2180f, _wgslsmith_div_f32(-579f, _wgslsmith_f_op_f32(func_3())))));
    var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_0.x + var_0.x)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.x, var_0.x, 455f, var_0.x), vec4<f32>(628f, 830f, var_0.x, var_0.x))))), select(vec4<bool>(true, true, global0[_wgslsmith_index_u32(u_input.a.x, 16u)], global1.a.x), !vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 16u)], false, global1.a.x), u_input.a.x < u_input.a.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(var_0.x)), _wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(-var_0.x), -273f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -1000f, -331f)))), select(!vec4<bool>(global1.a.x, true, false, false), !vec4<bool>(global1.a.x, global1.a.x, false, false), vec4<bool>(true, any(global1.a), global0[_wgslsmith_index_u32(4294967295u, 16u)], any(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 16u)], global1.a.x))))))));
    global1 = Struct_1(select(global1.a, global1.a, ((i32(-1i) * -2147483647i) != abs(u_input.b.x)) || true), global1.b ^ (global1.b ^ ~(i32(-1i) * -2147483647i)));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(999f, var_0.x, -2145f, 529f) * vec4<f32>(1579f, -768f, var_0.x, 642f)) + vec4<f32>(280f, -643f, var_0.x, var_0.x)))))));
    return Struct_1(global1.a, _wgslsmith_sub_i32(u_input.b.x, ~countOneBits(firstLeadingBit(-30470i))));
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    global1 = Struct_1(func_2().a, -15275i);
    var var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1195f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(934f * 386f)))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1876f, _wgslsmith_f_op_f32(-798f + var_0.x))))))));
    let var_2 = arg_1;
    let var_3 = _wgslsmith_mult_u32(1u, u_input.a.x);
    return var_2;
}

fn func_1() -> vec3<bool> {
    global1 = Struct_1(!vec3<bool>(true, global1.a.x, global1.a.x), ~(-max(u_input.b.x, u_input.b.x)));
    var var_0 = func_4(1i, func_2());
    var var_1 = global1.a.zz;
    var_0 = func_4(-25652i, Struct_1(select(!vec3<bool>(var_1.x, var_1.x, var_1.x), select(vec3<bool>(var_0.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 16u)], true), select(vec3<bool>(var_1.x, global1.a.x, global1.a.x), global1.a, vec3<bool>(true, false, global1.a.x)), true), any(!vec4<bool>(var_1.x, var_0.a.x, false, false))), var_0.b));
    var_1 = global1.a.yx;
    return vec3<bool>(global1.a.x, !(_wgslsmith_add_u32(0u, countOneBits(9448u)) < (~u_input.a.x >> (u_input.a.x % 32u))), !select(true, true, true) | func_2().a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(func_1(), -50368i);
    var_0 = func_4(-66177i, Struct_1(vec3<bool>(global0[_wgslsmith_index_u32(1u, 16u)], func_1().x, all(global1.a)), var_0.b));
    global0 = array<bool, 16>();
    global1 = Struct_1(vec3<bool>(var_0.a.x, true, all(!(!vec4<bool>(true, true, global1.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 16u)])))), ~(-66355i));
    var_0 = Struct_1(global1.a, u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(3109f, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -922f) + 187f))), select(~max(vec3<u32>(u_input.a.x, 21459u, 0u), ~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(20391u, u_input.a.x, u_input.a.x) ^ vec3<u32>(22460u, 1u, 1u)), firstTrailingBit(u_input.a.wxx)), global1.a), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1f, 1f, 1f))), global1.b, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -208f)))), _wgslsmith_f_op_f32(ceil(1815f))));
}

