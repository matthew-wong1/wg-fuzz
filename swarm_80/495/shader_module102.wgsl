struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: i32,
    b: vec2<bool>,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 8> = array<vec3<f32>, 8>(vec3<f32>(535f, 484f, 557f), vec3<f32>(1760f, -1230f, -186f), vec3<f32>(188f, -990f, 903f), vec3<f32>(203f, -678f, 1000f), vec3<f32>(2262f, -484f, 187f), vec3<f32>(-265f, 1000f, -985f), vec3<f32>(-741f, -504f, 536f), vec3<f32>(-266f, 1052f, -1000f));

var<private> global1: array<vec4<bool>, 12>;

var<private> global2: vec4<i32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_1) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.b)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(arg_0.b.x, arg_0.b.x)), -1000f, -1120f))));
    global2 = vec4<i32>(_wgslsmith_div_i32(-29153i & abs(u_input.b), countOneBits(1i ^ ~global2.x)), u_input.b, _wgslsmith_dot_vec4_i32(-_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, -1i, global2.x, -2147483647i), select(vec4<i32>(u_input.b, 11871i, u_input.b, global2.x), vec4<i32>(u_input.b, 33657i, 0i, u_input.b), true)), _wgslsmith_sub_vec4_i32(-vec4<i32>(global2.x, global2.x, -12493i, -2147483647i), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, 1755i, global2.x, 1i), vec4<i32>(global2.x, global2.x, -2147483647i, -1i)))), u_input.b);
    var var_1 = _wgslsmith_f_op_f32(max(298f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.x))))));
    let var_2 = Struct_3(Struct_2(arg_0, arg_0), _wgslsmith_f_op_vec3_f32(-arg_0.b), Struct_2(Struct_1(arg_0.a, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 47072u, 4294967295u), u_input.a), _wgslsmith_add_vec3_u32(vec3<u32>(arg_0.a.x, arg_0.a.x, arg_0.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 11476u))), 8u)]), arg_0));
    var var_3 = -(~(~_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, 23782i, global2.x), vec3<i32>(-12295i, 21137i, u_input.b)), select(vec3<i32>(0i, u_input.b, global2.x), global2.wwy, vec3<bool>(false, false, false)))));
    return global2.ywy;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<bool>, arg_2: u32, arg_3: Struct_2) -> bool {
    let var_0 = ~arg_3.a.a.x;
    var var_1 = vec3<u32>(arg_3.a.a.x, (_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_2, 16902u), vec2<u32>(4294967295u, 4294967295u)) | abs(arg_3.a.a.x)) << (1u % 32u), 64533u);
    let var_2 = all(!(!(!select(vec3<bool>(true, arg_1.x, arg_1.x), vec3<bool>(arg_1.x, arg_1.x, arg_1.x), false))));
    global2 = abs(vec4<i32>(_wgslsmith_dot_vec2_i32(select(_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, 56511i), vec2<i32>(arg_0.x, u_input.b)), -global2.yy, true), -vec2<i32>(arg_0.x, -2147483647i)), ~_wgslsmith_clamp_i32(global2.x, min(arg_0.x, arg_0.x), ~arg_0.x), i32(-1i) * -2147483647i, firstLeadingBit(min(u_input.b, ~global2.x))));
    var_1 = u_input.a;
    return true;
}

fn func_2(arg_0: vec3<bool>, arg_1: f32) -> vec2<i32> {
    var var_0 = arg_1;
    var var_1 = select(~_wgslsmith_dot_vec2_u32(select(u_input.a.xy, vec2<u32>(15765u, 26077u), arg_0.x), vec2<u32>(1u, 1u)), ~_wgslsmith_clamp_u32(countOneBits(41251u), _wgslsmith_dot_vec2_u32(vec2<u32>(84272u, u_input.a.x), u_input.a.xz), u_input.a.x), func_4(_wgslsmith_clamp_vec3_i32(func_3(Struct_1(u_input.a.xx, global0[_wgslsmith_index_u32(0u, 8u)])), vec3<i32>(u_input.b, global2.x, 20601i), vec3<i32>(-1i, -27412i, 4302i) >> (u_input.a % vec3<u32>(32u))), arg_0.xx, u_input.a.x, Struct_2(Struct_1(vec2<u32>(33712u, u_input.a.x), global0[_wgslsmith_index_u32(4294967295u, 8u)]), Struct_1(vec2<u32>(4294967295u, 0u), vec3<f32>(arg_1, arg_1, 373f))))) & (u_input.a.x | ~(79081u | u_input.a.x));
    var var_2 = Struct_4(1u);
    global1 = array<vec4<bool>, 12>();
    global1 = array<vec4<bool>, 12>();
    return global2.yz;
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -185f);
    global2 = reverseBits(vec4<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.b, -46454i, 23786i), -global2.xxy), 51179i, _wgslsmith_sub_i32(_wgslsmith_div_i32(~global2.x, 43327i), abs(select(1i, u_input.b, true))), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global2.x, u_input.b), func_2(vec3<bool>(true, false, true), 1573f)), -(global2.x >> (4294967295u % 32u)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -255f)))));
    let var_2 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -633f), var_1))), -244f, var_1, 1163f);
    var var_3 = u_input.a.xy;
    return Struct_2(Struct_1(_wgslsmith_add_vec2_u32(firstLeadingBit(~u_input.a.yz), ~vec2<u32>(4294967295u, 9619u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.xxz * var_2.yxz) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_2.x, var_2.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_2.zwy, vec3<f32>(var_1, -101f, -141f), vec3<bool>(true, true, true)))))), Struct_1(u_input.a.yz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1, var_1, var_2.x), var_2.zxx)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = Struct_5(-1i >> (u_input.a.x % 32u), !vec2<bool>(true || any(vec4<bool>(true, false, true, false)), all(vec4<bool>(true, true, true, true))), func_4(global2.zzy, select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true)), select(select(vec2<bool>(false, true), vec2<bool>(false, true), false), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)), all(global1[_wgslsmith_index_u32(var_0.a.a.x, 12u)])), true), _wgslsmith_dot_vec3_u32(u_input.a, reverseBits(max(u_input.a, vec3<u32>(0u, 4294967295u, 4294967295u)))), func_1()));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_div_u32(_wgslsmith_add_u32(u_input.a.x, var_0.a.a.x), var_0.b.a.x)), var_0.a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1609f), _wgslsmith_f_op_f32(1084f - var_0.b.b.x))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(var_0.b.b.x, 439f)))))), func_1().b.b, abs(var_1.a));
}

