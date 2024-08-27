struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<f32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: Struct_3,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: i32;

var<private> global2: array<Struct_1, 23>;

var<private> global3: vec4<f32> = vec4<f32>(751f, 427f, -171f, -1929f);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<i32>) -> vec4<f32> {
    global0 = 1u;
    let var_0 = 97850u;
    var var_1 = !vec2<bool>(!all(vec3<bool>(true, true, true)), true);
    let var_2 = var_1.x;
    let var_3 = !(!(true && !var_1.x)) & true;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_div_f32(-1475f, global3.x), _wgslsmith_f_op_f32(global3.x + 592f), 173f, global3.x)))));
}

fn func_3(arg_0: Struct_3) -> Struct_2 {
    var var_0 = select(select(vec3<bool>(true, any(vec3<bool>(false, false, false)) & (u_input.a.x >= u_input.a.x), (4294967295u | u_input.b.x) >= ~arg_0.b.a.x), vec3<bool>(all(vec2<bool>(true, true)), any(vec4<bool>(false, true, true, true)), 48496u < ~u_input.b.x), all(select(vec2<bool>(true, true), vec2<bool>(true, false), false))), vec3<bool>(true, false, false), !select(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true), vec3<bool>(false, true, u_input.b.x == 39179u), true));
    return Struct_2(u_input.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, _wgslsmith_f_op_f32(1000f + arg_0.b.b.x), _wgslsmith_f_op_f32(min(-310f, global3.x)), _wgslsmith_f_op_f32(-global3.x)) * vec4<f32>(_wgslsmith_f_op_f32(max(global3.x, global3.x)), _wgslsmith_f_op_f32(sign(633f)), _wgslsmith_f_op_vec4_f32(func_2(u_input.a.yz, vec2<i32>(u_input.a.x, u_input.a.x))).x, _wgslsmith_f_op_f32(f32(-1f) * -333f)))));
}

fn func_1() -> Struct_1 {
    var var_0 = func_3(Struct_3(_wgslsmith_f_op_vec4_f32(func_2(u_input.a.yx, _wgslsmith_mult_vec2_i32(u_input.a.zx | u_input.a.yx, vec2<i32>(u_input.a.x, -14081i)))), Struct_2(u_input.b, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(-764f, -100f, -825f, global3.x), vec4<f32>(128f, -1117f, global3.x, -829f)))))));
    var var_1 = vec2<bool>(all(select(vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(false, false, true, false)), true), all(vec4<bool>(true, true, false, true)) && true)), true);
    let var_2 = vec2<bool>(true, all(!vec3<bool>(!var_1.x, any(vec2<bool>(var_1.x, true)), !var_1.x)));
    global1 = -(11267i << (_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, 4542u, u_input.b.x, 73206u), vec4<u32>(~var_0.a.x, var_0.a.x, u_input.b.x, ~var_0.a.x)) % 32u));
    global0 = select(_wgslsmith_mult_u32(~countOneBits(_wgslsmith_div_u32(4294967295u, 1u)), var_0.a.x), var_0.a.x, true == (u_input.a.x >= u_input.a.x));
    return global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(~firstTrailingBit(var_0.a.x & u_input.b.x), ~u_input.b.x), 23u)];
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec2<i32>, arg_3: Struct_1) -> Struct_3 {
    global0 = u_input.b.x;
    global0 = abs(73326u ^ _wgslsmith_add_u32(u_input.b.x, ~(~u_input.b.x)));
    var var_0 = vec3<u32>(u_input.b.x, 4294967295u, ~max(reverseBits(u_input.b.x), 0u) | 0u);
    return Struct_3(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -925f), arg_3.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global3.x)) + -1384f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_3.c.x))), -1319f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global3.x, -1799f, arg_0.c.x, -304f), vec4<f32>(-812f, 170f, -224f, 1015f)) - vec4<f32>(global3.x, 595f, -895f, arg_3.c.x)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, arg_3.c.x, -1244f, arg_0.c.x) + vec4<f32>(global3.x, -298f, global3.x, global3.x)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, arg_1.x, -232f, 1311f))))), arg_3.a.x)))), Struct_2(vec3<u32>(~max(4294967295u, var_0.x), 4294967295u, 57925u), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(192f, global3.x, -1263f, -820f) * vec4<f32>(arg_3.c.x, 161f, arg_3.c.x, -607f)), vec4<f32>(-1372f, arg_1.x, arg_3.c.x, 482f), true)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-536f, -1346f, 1024f, arg_3.c.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1564f, 689f, arg_0.c.x, arg_1.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-func_3(Struct_3(vec4<f32>(global3.x, global3.x, 580f, -1008f), Struct_2(u_input.b, vec4<f32>(793f, global3.x, global3.x, global3.x)))).b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1542f, 470f, false)) * -1464f), _wgslsmith_f_op_f32(-1967f * _wgslsmith_f_op_f32(ceil(global3.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(global3.wxz)) * global3.ywy) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(global3.zxw)))), select(vec3<bool>(all(vec2<bool>(false, false)), true, false), func_1().a, true))), ~select(firstTrailingBit(vec2<i32>(-1i, u_input.a.x)), ~firstTrailingBit(vec2<i32>(-50474i, 49720i)), vec2<bool>(true, true)), Struct_1(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false)), u_input.a.x << (u_input.b.x % 32u), _wgslsmith_f_op_vec3_f32(global3.yzz + _wgslsmith_f_op_vec3_f32(-global3.yzx))));
    var var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(var_0.b.b.wwx, global3.yzw)))));
    let var_2 = min(_wgslsmith_mod_vec4_u32(max(~max(vec4<u32>(5480u, 28120u, 4294967295u, var_0.b.a.x), vec4<u32>(4294967295u, u_input.b.x, var_0.b.a.x, 4294967295u)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 37653u), vec4<u32>(var_0.b.a.x, 0u, 4294967295u, var_0.b.a.x)) & ~vec4<u32>(4294967295u, 4294967295u, var_0.b.a.x, var_0.b.a.x)), vec4<u32>(~54475u, var_0.b.a.x, var_0.b.a.x, abs(~var_0.b.a.x))), select(firstTrailingBit(vec4<u32>(var_0.b.a.x, u_input.b.x, 0u, var_0.b.a.x)), firstLeadingBit(vec4<u32>(var_0.b.a.x, var_0.b.a.x, 14743u, u_input.b.x)), true) >> (~(select(vec4<u32>(var_0.b.a.x, 15369u, u_input.b.x, u_input.b.x), vec4<u32>(var_0.b.a.x, var_0.b.a.x, var_0.b.a.x, var_0.b.a.x), true) ^ ~vec4<u32>(118566u, var_0.b.a.x, var_0.b.a.x, u_input.b.x)) % vec4<u32>(32u)));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_1.zz))))));
    var var_4 = Struct_4(Struct_3(var_0.a, var_0.b), 2902u, var_0, var_0.b.a.x);
    let var_5 = -755f;
    let var_6 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-1021f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_2(vec2<i32>(45083i, 2147483647i), u_input.a.yx)).x - var_4.c.b.b.x) * -2050f)));
}

