struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: f32,
    d: vec3<u32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec2<bool>,
}

struct Struct_5 {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25>;

var<private> global1: vec4<u32> = vec4<u32>(24039u, 1u, 0u, 4294967295u);

var<private> global2: array<i32, 3> = array<i32, 3>(29642i, -84130i, -46292i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    let var_0 = select(vec4<bool>(true, true, true, true), select(vec4<bool>(true & any(vec3<bool>(false, false, false)), !(global2[_wgslsmith_index_u32(global1.x, 3u)] == 48005i), any(vec3<bool>(true, true, true)), true), vec4<bool>(true, any(vec4<bool>(true, true, true, true)), !any(vec2<bool>(false, true)), true), !(any(vec4<bool>(false, true, true, false)) && true)), all(!vec4<bool>(false, true, true, all(vec4<bool>(false, true, false, true)))));
    var var_1 = ~firstLeadingBit(u_input.a);
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(1293f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-710f, 875f))) * _wgslsmith_f_op_f32(round(1f)))), _wgslsmith_f_op_f32(trunc(-1652f)));
    global2 = array<i32, 3>();
    let var_3 = Struct_4(var_0.ww, vec2<bool>(true, var_0.x));
    return 21025u;
}

fn func_2(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: bool) -> Struct_3 {
    let var_0 = arg_0;
    global0 = array<Struct_1, 25>();
    var var_1 = true;
    var var_2 = ~func_3();
    let var_3 = -362f;
    return Struct_3(_wgslsmith_sub_i32(global2[_wgslsmith_index_u32(5344u, 3u)], global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, u_input.a) >> (vec2<u32>(global1.x, 1u) % vec2<u32>(32u)), u_input.b.yy) & global1.x, 3u)]), 12539u, -494f, vec3<u32>(~abs(67866u) | u_input.b.x, u_input.b.x, firstTrailingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, u_input.b.x, 1u), u_input.b.yxy))));
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: Struct_5) -> vec4<u32> {
    global2 = array<i32, 3>();
    let var_0 = Struct_4(select(arg_2.d.zx, vec2<bool>(true, arg_2.d.x | false), arg_2.d.yx), select(!select(select(arg_2.d.yz, arg_2.d.zx, arg_2.d.zx), select(arg_2.d.yy, arg_2.d.yy, vec2<bool>(true, arg_2.d.x)), arg_2.d.zx), !arg_2.d.zy, vec2<bool>(true, true)));
    let var_1 = var_0;
    global0 = array<Struct_1, 25>();
    var var_2 = _wgslsmith_div_vec2_u32(~(max(_wgslsmith_sub_vec2_u32(arg_0.d.yx, vec2<u32>(9751u, global1.x)), arg_0.d.xz & arg_0.d.xy) >> (reverseBits(firstTrailingBit(arg_2.c)) % vec2<u32>(32u))), _wgslsmith_mod_vec2_u32(vec2<u32>(~(~10036u), 13430u), ~u_input.b.zw));
    return abs(_wgslsmith_add_vec4_u32(min((vec4<u32>(0u, var_2.x, arg_0.b, 0u) & vec4<u32>(4294967295u, 90909u, global1.x, 0u)) & select(u_input.b, u_input.b, true), u_input.b), ~u_input.b));
}

fn func_1() -> bool {
    global2 = array<i32, 3>();
    let var_0 = vec4<u32>(global1.x, global1.x, ~52464u, 1u);
    global1 = firstTrailingBit(_wgslsmith_clamp_vec4_u32(~func_4(func_2(Struct_4(vec2<bool>(true, true), vec2<bool>(true, false)), vec3<bool>(true, true, true), false), _wgslsmith_f_op_f32(trunc(-1594f)), Struct_5(17546u, var_0.x, var_0.zy, vec3<bool>(true, false, false))), var_0 | max(abs(vec4<u32>(4294967295u, global1.x, u_input.a, 0u)), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, var_0.x, global1.x, 53972u), vec4<u32>(var_0.x, global1.x, 4294967295u, 1u))), ~select(select(vec4<u32>(global1.x, 4294967295u, var_0.x, 19067u), var_0, vec4<bool>(false, true, false, true)), ~vec4<u32>(32895u, 28552u, 1u, 85123u), vec4<bool>(true, true, true, true))));
    return any(vec3<bool>(false || (_wgslsmith_f_op_f32(round(-735f)) < _wgslsmith_f_op_f32(min(246f, -968f))), true, all(select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true))))));
}

fn func_5(arg_0: u32, arg_1: vec4<u32>, arg_2: vec3<bool>, arg_3: u32) -> Struct_3 {
    global0 = array<Struct_1, 25>();
    let var_0 = -1517f;
    var var_1 = var_0;
    let var_2 = Struct_3(6269i, ~1u, 1672f, arg_1.zyx);
    var_1 = -840f;
    return func_2(Struct_4(arg_2.zz, !(!arg_2.xz)), arg_2, arg_2.x || arg_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = select(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(~u_input.b >> (_wgslsmith_add_vec4_u32(vec4<u32>(61775u, 0u, 0u, 1u), vec4<u32>(u_input.a, 0u, 74642u, global1.x)) % vec4<u32>(32u)), u_input.b), u_input.b), ~u_input.b & select(vec4<u32>(50494u, _wgslsmith_mult_u32(global1.x, global1.x), 1u, global1.x), firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(global1.x, 31511u, 4294967295u, u_input.a), u_input.b)), vec4<bool>(true, true, true, true)), !(!any(vec2<bool>(true, true))));
    global1 = u_input.b;
    let var_0 = vec3<bool>(true, !all(select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), select(vec2<bool>(true, false), vec2<bool>(false, true), true), global1.x <= u_input.b.x)), any(vec3<bool>(!all(vec4<bool>(true, true, false, false)), true, all(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false))))));
    var var_1 = func_5(~_wgslsmith_div_u32(1u, ~1u), u_input.b, select(vec3<bool>(!func_1(), all(vec2<bool>(var_0.x, true)), true), vec3<bool>(true, var_0.x, false), func_1()), ~min(_wgslsmith_dot_vec3_u32(reverseBits(u_input.b.xxw), vec3<u32>(1u, 1u, 1u)), ~(~1u)));
    var var_2 = func_2(Struct_4(vec2<bool>(var_0.x, true), !var_0.xz), vec3<bool>(!var_0.x, !(!var_0.x), var_0.x), all(select(vec2<bool>(true, true), !var_0.xx, true)));
    var_1 = Struct_3(-((_wgslsmith_add_i32(var_2.a, global2[_wgslsmith_index_u32(u_input.b.x, 3u)]) | 1i) | _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, global2[_wgslsmith_index_u32(var_1.d.x, 3u)]), vec2<i32>(1i, var_2.a)), 14374i)), 66649u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.c)) - _wgslsmith_div_f32(-1848f, 1299f))))), func_5(func_4(func_5(u_input.a, firstTrailingBit(u_input.b), vec3<bool>(var_0.x, false, true), ~var_2.b), _wgslsmith_div_f32(1624f, _wgslsmith_f_op_f32(min(358f, 328f))), Struct_5(_wgslsmith_add_u32(u_input.b.x, 1u), 4294967295u, countOneBits(vec2<u32>(u_input.b.x, 4294967295u)), select(vec3<bool>(var_0.x, false, false), var_0, vec3<bool>(var_0.x, var_0.x, true)))).x, u_input.b, var_0, 1u).d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_2.c, -1364f, var_1.c))))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, 495f, var_2.c), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c, -1631f, 794f) - vec3<f32>(var_1.c, var_1.c, -567f)), !var_0.x))))), var_2.c, 14760u, vec4<u32>(u_input.a, firstTrailingBit(~_wgslsmith_mod_u32(0u, u_input.b.x)), _wgslsmith_mult_u32(var_2.b, var_1.b), var_1.b | var_1.b), u_input.b.x);
}

