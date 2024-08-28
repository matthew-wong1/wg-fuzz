struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
    c: vec2<u32>,
}

struct Struct_3 {
    a: f32,
    b: vec4<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: bool = true;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec2<u32> {
    let var_0 = vec3<bool>(!any(select(vec4<bool>(false, global0.b, global0.a, false), !vec4<bool>(false, global0.a, global0.b, true), true)), 5685i >= u_input.a.x, true);
    let var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -484f), -452f)))) + _wgslsmith_f_op_f32(336f - _wgslsmith_f_op_f32(f32(-1f) * -858f))), select(vec4<bool>(!any(vec3<bool>(var_0.x, global0.a, global0.b)), true, select(false || global0.b, -6408i < u_input.a.x, any(vec2<bool>(var_0.x, global0.a))), all(var_0)), vec4<bool>(true, (global0.b == var_0.x) || true, var_0.x, all(!vec2<bool>(global0.b, true))), true), Struct_1(select(true, !global0.a, true), global0.a));
    let var_2 = Struct_3(2495f, vec4<bool>(any(var_0.xy), true, global0.a, all(!vec4<bool>(true, true, true, global0.b))), Struct_1(!var_1.c.b, !(var_0.x || true)));
    var var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(var_1.a - -809f), _wgslsmith_f_op_f32(max(-1673f, var_1.a)), 1103f), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1396f, -975f, var_1.a))), true))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(var_2.a, var_2.a)), _wgslsmith_f_op_f32(ceil(var_1.a)), _wgslsmith_f_op_f32(-var_1.a)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.a, var_1.a, 1512f), vec3<f32>(-1000f, 482f, var_1.a))))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1596f, -747f, var_2.a)))));
    let var_4 = var_3.x;
    return vec2<u32>(~(~(~(~1u))), countOneBits(max(max(_wgslsmith_mult_u32(0u, 8321u), firstTrailingBit(1u)), ~_wgslsmith_add_u32(44082u, 60178u))));
}

fn func_2() -> vec4<bool> {
    let var_0 = Struct_3(-1000f, vec4<bool>(!global0.a, true, global0.b, !(true | global0.a)), Struct_1(global0.a, global0.b));
    var var_1 = _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(func_3(), vec2<u32>(~1u, reverseBits(10817u))), vec2<u32>(~abs(~111379u), min(27990u, firstTrailingBit(1u))));
    var var_2 = ~4294967295u;
    global1 = any(select(var_0.b, var_0.b, !select(var_0.b, var_0.b, global0.b))) | true;
    var var_3 = var_0.a;
    return select(select(var_0.b, select(vec4<bool>(any(vec3<bool>(true, false, false)), true, true, any(var_0.b)), var_0.b, global0.a), !any(vec3<bool>(var_0.b.x, false, true))), select(var_0.b, var_0.b, select(var_0.b, var_0.b, false)), !vec4<bool>(!global0.a, var_0.c.b, !(global0.b == global0.b), all(select(var_0.b.xy, var_0.b.zw, var_0.c.b))));
}

fn func_1(arg_0: i32, arg_1: f32) -> Struct_3 {
    global0 = Struct_1(global0.a, true);
    var var_0 = firstTrailingBit(_wgslsmith_add_u32(~(~0u), countOneBits(~4294967295u))) | _wgslsmith_add_u32(61232u & ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(58292u, 4294967295u)), 1u);
    let var_1 = true;
    let var_2 = i32(-1i) * -min(1i, arg_0 ^ (-1i | u_input.a.x));
    var var_3 = ~firstLeadingBit(abs(u_input.a.xz));
    return Struct_3(-1000f, select(select(vec4<bool>(global0.b, var_1, true, true), !func_2(), func_2()), vec4<bool>(var_1, !var_1 & (var_1 && false), false, var_1), true), Struct_1(all(!select(vec3<bool>(true, global0.b, false), vec3<bool>(var_1, var_1, false), vec3<bool>(global0.a, false, global0.b))), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = func_1(~max(_wgslsmith_add_i32(u_input.a.x, 0i), 0i), _wgslsmith_f_op_f32(min(631f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(263f, _wgslsmith_f_op_f32(766f * -1194f)))))));
    let var_2 = -_wgslsmith_mod_i32(select(u_input.a.x, u_input.a.x, func_2().x & (global0.b & var_1.b.x)), u_input.a.x);
    let var_3 = select(reverseBits(~select(vec2<i32>(0i, 2147483647i), u_input.a.yy, var_1.c.b)), u_input.a.yw >> (_wgslsmith_clamp_vec2_u32(reverseBits(~vec2<u32>(0u, 7112u)), vec2<u32>(4294967295u, firstLeadingBit(4294967295u)), ~vec2<u32>(1u, 1u)) % vec2<u32>(32u)), vec2<bool>(_wgslsmith_dot_vec3_i32(-vec3<i32>(var_2, 93211i, -28276i), _wgslsmith_mult_vec3_i32(vec3<i32>(var_2, -1i, u_input.a.x), vec3<i32>(var_2, var_2, -2147483647i))) < (_wgslsmith_add_i32(var_2, 0i) ^ var_2), true));
    let var_4 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -485f)))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(93432u), vec4<u32>(_wgslsmith_sub_u32(~1u, 30554u), 35330u, _wgslsmith_mod_u32(~firstTrailingBit(1u), _wgslsmith_div_u32(abs(21519u), ~1125u)), ~0u));
}

