struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: vec4<f32> = vec4<f32>(-425f, -1000f, 109f, -1000f);

var<private> global2: array<i32, 27> = array<i32, 27>(-14399i, 1i, i32(-2147483648), -51650i, 1442i, 32451i, -20770i, -1i, i32(-2147483648), -1i, -1i, -35062i, -5507i, -1i, -60805i, 70189i, 51658i, 14967i, 1i, 16159i, 1i, 1i, 2147483647i, -8680i, 9168i, -1i, 24651i);

var<private> global3: vec2<f32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: vec2<u32>) -> f32 {
    global3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-843f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(312f)))))));
    var var_0 = global3.x;
    global0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.x, _wgslsmith_f_op_f32(global3.x + _wgslsmith_f_op_f32(f32(-1f) * -613f))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.x)) - _wgslsmith_f_op_f32(arg_1 * 577f))))), vec2<f32>(_wgslsmith_f_op_f32(step(-857f, global0.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.x * 1291f)))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.x)));
}

fn func_2() -> Struct_2 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(select(2741f, _wgslsmith_f_op_f32(-global1.x), true | !any(vec3<bool>(false, true, true)))), 1000f, global0.x, _wgslsmith_f_op_f32(max(global1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-327f, -2028f) + global3.x), _wgslsmith_f_op_f32(func_3(u_input.b, _wgslsmith_f_op_f32(ceil(506f)), vec2<u32>(u_input.a.x, u_input.a.x)))))));
    global1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(var_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, global3.x, global1.x, 1214f) + vec4<f32>(-150f, global1.x, global1.x, global3.x)) - _wgslsmith_f_op_vec4_f32(ceil(var_0)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global3.x, _wgslsmith_f_op_f32(ceil(global3.x)), _wgslsmith_f_op_f32(f32(-1f) * -1066f), 458f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(-1966f, global1.x, false)), _wgslsmith_f_op_f32(min(1520f, -247f)), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(func_3(-2194i, 742f, u_input.a))))), false));
    global1 = vec4<f32>(-1595f, 2338f, _wgslsmith_f_op_f32(trunc(-842f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.x)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global3.x)), _wgslsmith_f_op_f32(-global3.x)))));
    global1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_0, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(425f, -707f, global0.x, global0.x) - var_0), var_0)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-507f, -151f, 533f, -701f), var_0)))))));
    return Struct_2(vec4<bool>(!all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), true)), any(vec3<bool>(true, true, global3.x > global0.x)), all(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false)))), all(vec2<bool>(u_input.d.x <= 0i, true))), abs(firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, -1i, 1i, 0i), vec4<i32>(u_input.e, -1i, global2[_wgslsmith_index_u32(u_input.a.x, 27u)], global2[_wgslsmith_index_u32(4294967295u, 27u)]), vec4<i32>(1i, global2[_wgslsmith_index_u32(1u, 27u)], global2[_wgslsmith_index_u32(4294967295u, 27u)], global2[_wgslsmith_index_u32(u_input.a.x, 27u)])))) | vec4<i32>(-2147483647i, -2147483647i, -51308i, -55535i), Struct_1(vec3<f32>(-765f, _wgslsmith_f_op_f32(select(var_0.x, -558f, true)), -310f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(2632f, -318f, -255f))) * global1.xwx)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0 * var_0) + var_0)), global0.x, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-860f - 694f))), var_0.yxy, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(var_0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 246f, global3.x, var_0.x))))));
}

fn func_1() -> Struct_1 {
    let var_0 = -1641f;
    global2 = array<i32, 27>();
    global0 = global1.zw;
    var var_1 = 41213i;
    let var_2 = func_2();
    return Struct_1(global1.yyx, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(global1.wzx)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(global1.ywx)), vec3<f32>(-287f, global3.x, -613f)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -219f), _wgslsmith_f_op_f32(abs(1380f)), -376f)))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-698f)), _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(-func_2().c.b.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-592f + global0.x), var_2.d)))), global0.x));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(func_2().a, vec4<i32>(firstLeadingBit(0i) | (u_input.d.x ^ _wgslsmith_dot_vec3_i32(u_input.d, u_input.d)), -_wgslsmith_mod_i32(_wgslsmith_sub_i32(-1i, -1i), _wgslsmith_sub_i32(2147483647i, global2[_wgslsmith_index_u32(1u, 27u)])), min(-32672i, select(i32(-1i) * -34134i, i32(-1i) * -12168i, true)), reverseBits(~(~31463i))), arg_0, global0.x, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(703f - 256f) * global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-850f * global1.x) - _wgslsmith_f_op_f32(472f - arg_0.a.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.x + arg_0.c.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(596f, global1.x, 2269f) + _wgslsmith_f_op_vec3_f32(global1.zzz - vec3<f32>(global0.x, global3.x, global1.x))) * global1.zwx), vec4<f32>(_wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(abs(1210f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), arg_0.a.x), global3.x, 1195f)));
    var var_1 = vec3<bool>(true, (global2[_wgslsmith_index_u32(countOneBits(abs(u_input.c.x)), 27u)] > (~(-2147483647i) | global2[_wgslsmith_index_u32(u_input.c.x, 27u)])) | true, var_0.a.x);
    var var_2 = select(vec2<bool>(!(!(!var_1.x)), false), var_0.a.zw, select(select(var_1.zz, !select(vec2<bool>(var_1.x, false), var_1.xz, true), (36071u & u_input.c.x) >= _wgslsmith_clamp_u32(u_input.a.x, 0u, 1u)), vec2<bool>(var_0.a.x, var_1.x), vec2<bool>(!(false && var_0.a.x), global3.x < var_0.d)));
    var var_3 = func_2();
    global2 = array<i32, 27>();
    return Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(886f, -1390f, -898f) - var_0.e.a)) - vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(514f + global0.x), func_1().a.x)))), _wgslsmith_div_vec3_f32(global1.zwy, var_0.c.c.zwx), var_0.c.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = func_4(func_1());
    global2 = array<i32, 27>();
    let var_2 = func_2();
    let var_3 = var_1;
    global0 = vec2<f32>(_wgslsmith_f_op_f32(floor(var_1.a.x)), _wgslsmith_f_op_f32(-func_2().c.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(~select(vec4<u32>(firstTrailingBit(u_input.a.x), 95669u, _wgslsmith_mod_u32(43890u, u_input.c.x), u_input.a.x), ~(~vec4<u32>(31359u, 7847u, u_input.c.x, 42388u)), all(!var_2.a)), abs(~(~max(vec3<u32>(16898u, 0u, u_input.a.x), vec3<u32>(u_input.a.x, 4294967295u, 60504u)))), 0i);
}

