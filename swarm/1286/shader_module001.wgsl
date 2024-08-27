struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-27103i, -7130i, 0i);

var<private> global1: Struct_1;

var<private> global2: array<vec4<u32>, 28>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    var var_0 = Struct_1(arg_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(ceil(arg_2.b)))));
    global0 = vec3<i32>(-18926i, global0.x, _wgslsmith_dot_vec2_i32(~vec2<i32>(global0.x, u_input.a), global0.zz));
    var var_1 = arg_0.yww;
    global1 = Struct_1(~firstLeadingBit(var_0.a), _wgslsmith_f_op_f32(-global1.b));
    global1 = Struct_1(1u, _wgslsmith_f_op_f32(ceil(-136f)));
    return ~1u;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1) -> Struct_2 {
    global2 = array<vec4<u32>, 28>();
    let var_0 = true;
    let var_1 = arg_1;
    let var_2 = Struct_2(select(_wgslsmith_mult_i32(-1i, _wgslsmith_mod_i32(global0.x, 32276i) >> (u_input.b % 32u)), -2147483647i, func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(271f, global1.b, 118f, global1.b)), Struct_1(u_input.b, arg_1.b), Struct_1(arg_1.a, var_1.b)) > 4294967295u), Struct_1(max(firstLeadingBit(global1.a << (var_1.a % 32u)), global1.a), _wgslsmith_f_op_f32(global1.b + 1453f)), Struct_1(global1.a, var_1.b), var_1, arg_1);
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - vec3<f32>(arg_1.b, -467f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.b))))));
    return Struct_2(max(-_wgslsmith_add_i32(abs(17372i), -var_2.a), select(var_2.a, ~(~arg_0.x), var_0)), var_1, Struct_1(32041u << (global1.a % 32u), 2081f), var_1, Struct_1(min(1u, _wgslsmith_dot_vec4_u32(select(vec4<u32>(1u, global1.a, u_input.b, var_2.d.a), global2[_wgslsmith_index_u32(22264u, 28u)], vec4<bool>(var_0, var_0, var_0, var_0)), global2[_wgslsmith_index_u32(var_1.a, 28u)])), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b - -796f))))));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec3<u32>) -> Struct_1 {
    var var_0 = Struct_1(~(~(~_wgslsmith_mult_u32(52219u, 60650u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1112f + arg_1.c.b) + _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global1.b, global1.b)))));
    let var_1 = 2147483647i;
    global1 = arg_1.c;
    var_0 = arg_1.d;
    let var_2 = countOneBits(vec2<u32>(61623u, _wgslsmith_mult_u32(~(~69026u), firstLeadingBit(func_3(vec4<f32>(global1.b, global1.b, global1.b, global1.b), arg_1.d, Struct_1(4294967295u, -202f))))));
    return Struct_1(_wgslsmith_add_u32(~_wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(46053u | u_input.b, 28u)], vec4<u32>(var_0.a, 0u, 0u, var_0.a)), ~global1.a), 458f);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<bool>, arg_2: i32) -> vec3<u32> {
    let var_0 = !vec4<bool>(!arg_1.x, arg_1.x, true, any(!arg_1));
    global1 = Struct_1(global1.a, global1.b);
    global1 = func_4(~(~(min(vec3<u32>(15783u, u_input.b, 10049u), vec3<u32>(608u, 4294967295u, global1.a)) & firstTrailingBit(vec3<u32>(global1.a, u_input.b, u_input.b)))), func_2(global0.zy, Struct_1(firstTrailingBit(~21406u), global1.b)), _wgslsmith_add_vec3_u32(abs(_wgslsmith_add_vec3_u32(abs(vec3<u32>(u_input.b, global1.a, u_input.b)), vec3<u32>(global1.a, 4294967295u, u_input.b))), ~(vec3<u32>(0u, 52942u, global1.a) << (~vec3<u32>(u_input.b, 16810u, u_input.b) % vec3<u32>(32u)))));
    global0 = min(abs(countOneBits(-vec3<i32>(-1i, 43498i, u_input.a) | ~vec3<i32>(arg_2, u_input.a, global0.x))), firstTrailingBit(vec3<i32>(~firstLeadingBit(-32129i), 8445i, -31446i)));
    let var_1 = select(vec2<bool>(arg_1.x, true), vec2<bool>(var_0.x & all(select(var_0, vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(false, var_0.x, false, var_0.x))), !any(!var_0.xxy)), var_0.x);
    return firstLeadingBit(~(~max(~vec3<u32>(global1.a, u_input.b, 0u), ~vec3<u32>(u_input.b, u_input.b, u_input.b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    global2 = array<vec4<u32>, 28>();
    global0 = ((_wgslsmith_add_vec3_i32(max(vec3<i32>(global0.x, 5973i, u_input.a), vec3<i32>(global0.x, -1i, 0i)), vec3<i32>(99315i, global0.x, global0.x)) >> (vec3<u32>(abs(u_input.b), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 135471u), vec2<u32>(u_input.b, u_input.b)), 82832u) % vec3<u32>(32u))) >> (~func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1454f, 1563f, global1.b)), vec2<bool>(true, true), max(36254i, -39089i)) % vec3<u32>(32u))) | -vec3<i32>(max(-1i, global0.x) | u_input.a, 1i, abs(-2147483647i));
    var_0 = all(vec4<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(569f))) < global1.b, false, all(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false))) || true));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-161f, global1.b, global1.b, 1000f))))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1770f, -491f, global1.b, global1.b))))) * vec4<f32>(_wgslsmith_f_op_f32(-global1.b), -598f, global1.b, global1.b))));
    var_0 = any(vec3<bool>(true, true, true));
    var var_2 = vec3<i32>(-countOneBits(-44618i), -40173i, 10333i) | -_wgslsmith_div_vec3_i32(vec3<i32>(10879i, 2147483647i, i32(-1i) * -1i), countOneBits(abs(vec3<i32>(global0.x, -1353i, 0i))));
    let var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(276f, -394f, global1.b) + vec3<f32>(-169f, global1.b, 1074f)), _wgslsmith_f_op_vec3_f32(var_1.wxz * var_1.yyw))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.wyx)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, vec3<i32>(-1i) * -countOneBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(23936i, -28998i, 0i), vec3<i32>(global0.x, u_input.a, var_2.x), vec3<i32>(-24922i, 9664i, var_2.x))), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_div_vec3_u32(vec3<u32>(1u, global1.a, u_input.b), vec3<u32>(31020u, u_input.b, 0u)), Struct_2(global0.x, Struct_1(u_input.b, var_1.x), Struct_1(4294967295u, var_3.x), Struct_1(global1.a, -1992f), Struct_1(33521u, 719f)), vec3<u32>(1u, u_input.b, global1.a)).b - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))), u_input.a);
}

