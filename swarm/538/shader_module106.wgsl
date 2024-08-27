struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec3<i32>,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
    c: f32,
    d: vec3<i32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: i32,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 4> = array<u32, 4>(39715u, 4011u, 29416u, 1129u);

var<private> global1: bool;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3() -> bool {
    global0 = array<u32, 4>();
    let var_0 = Struct_4(Struct_2(true, ~(~vec3<u32>(u_input.b.x, 4294967295u, global0[_wgslsmith_index_u32(u_input.c.x, 4u)])), 1732f, _wgslsmith_clamp_vec3_i32(~(-vec3<i32>(-13681i, u_input.d, 1i)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d, 1384i, u_input.d), -vec3<i32>(-1i, -2147483647i, u_input.d)), vec3<i32>(-u_input.a, -1i, u_input.a ^ u_input.d))), Struct_3(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1214f, 125f)))), u_input.d, Struct_2(any(vec3<bool>(false, global0[_wgslsmith_index_u32(5470u, 4u)] <= u_input.c.x, false)), u_input.b.ywy, _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(ceil(-1556f)))), vec3<i32>(~u_input.d, -2147483647i, -19707i)), Struct_1(u_input.b.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1790f, 321f) + vec2<f32>(543f, -1257f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(2167f, 782f) - vec2<f32>(-1268f, -1000f)))), -_wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(-6231i, -1i, u_input.d)), ~vec3<i32>(u_input.a, -57684i, 2147483647i)), true));
    global0 = array<u32, 4>();
    let var_1 = u_input.c;
    global1 = var_0.a.a | var_0.a.a;
    return 32401u < _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(abs(var_0.d.b.yz), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, var_1.x), firstTrailingBit(vec2<u32>(4294967295u, 4294967295u)))), 8319u);
}

fn func_2(arg_0: vec2<u32>, arg_1: i32) -> Struct_4 {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1015f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1403f) + -946f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(1657f, -512f)))))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    global1 = !(func_3() && select(2147483647i >= u_input.d, true, true)) || (-414f <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-326f - -1160f))), _wgslsmith_div_f32(2317f, -435f)));
    let var_0 = 1000f;
    let var_1 = (24675i | arg_1) != 0i;
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1210f)))));
    return Struct_4(Struct_2(true, ~vec3<u32>(5020u, 0u, 4294967295u), _wgslsmith_f_op_f32(f32(-1f) * -222f), ~(-(vec3<i32>(arg_1, u_input.a, arg_1) << (vec3<u32>(arg_0.x, global0[_wgslsmith_index_u32(u_input.b.x, 4u)], u_input.b.x) % vec3<u32>(32u))))), var_2, _wgslsmith_div_i32(reverseBits(u_input.a), -40178i), Struct_2(false, u_input.b.yxw, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(405f, var_2.a))), -reverseBits(select(vec3<i32>(arg_1, arg_1, arg_1), vec3<i32>(-1i, 2147483647i, 13774i), vec3<bool>(false, true, var_1)))), Struct_1(u_input.c.x, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(sign(var_2.a)), -598f))), vec3<i32>(-1i) * -vec3<i32>(u_input.d, 45251i, arg_1), false));
}

fn func_4(arg_0: Struct_4, arg_1: vec4<f32>) -> bool {
    let var_0 = func_2(arg_0.d.b.zx, ~(-min(_wgslsmith_div_i32(arg_0.d.d.x, arg_0.a.d.x), func_2(vec2<u32>(4967u, 43016u), 2147483647i).a.d.x)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(2202f)))))), _wgslsmith_f_op_f32(var_0.e.b.x * 1f)));
    var_1 = arg_0.a.c;
    var var_2 = _wgslsmith_mod_vec2_i32(arg_0.d.d.zx, vec2<i32>(2147483647i, -(~(-19011i))));
    var_2 = ~arg_0.a.d.yy & -((func_2(arg_0.a.b.xz, arg_0.d.d.x).a.d.xx | vec2<i32>(-1i, -6734i)) ^ arg_0.d.d.yy);
    return !func_3();
}

fn func_1(arg_0: i32) -> vec4<i32> {
    let var_0 = !(!vec4<bool>(true, func_4(func_2(u_input.b.yy, arg_0), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, -3498f, -1857f, 335f), vec4<f32>(-909f, -657f, -317f, -1000f), false))), ~u_input.b.x > ~global0[_wgslsmith_index_u32(u_input.b.x, 4u)], false));
    global0 = array<u32, 4>();
    var var_1 = vec2<bool>(false, var_0.x);
    var var_2 = func_2(vec2<u32>(_wgslsmith_clamp_u32(abs(~1u), 1u, _wgslsmith_mod_u32(33315u, global0[_wgslsmith_index_u32(4294967295u >> (global0[_wgslsmith_index_u32(u_input.b.x, 4u)] % 32u), 4u)])), ~func_2(u_input.c, u_input.a).a.b.x), ~(arg_0 | u_input.d));
    var var_3 = 4294967295u;
    return vec4<i32>(select(u_input.a, _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.a.d.x, 69018i, -2147483647i, u_input.d), ~vec4<i32>(-9839i, arg_0, 18693i, arg_0)), 0i, -var_2.c), !((u_input.b.x >= global0[_wgslsmith_index_u32(4294967295u, 4u)]) && var_2.a.a)), 12669i, var_2.d.d.x, firstTrailingBit(2509i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~_wgslsmith_mult_u32(~global0[_wgslsmith_index_u32(countOneBits(1u), 4u)], global0[_wgslsmith_index_u32(select(~66577u, 82948u, 4294967295u == u_input.b.x), 4u)]));
    let var_1 = func_1(_wgslsmith_mult_i32(-abs(u_input.d) >> ((~1u & _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 13965u, 4294967295u, 0u), u_input.b)) % 32u), -54693i));
    let x = u_input.a;
    s_output = StorageBuffer(min(~(-(-2147483647i >> (u_input.b.x % 32u))), ~(~var_1.x & (var_1.x >> (34972u % 32u)))), vec2<i32>(u_input.d, -(~23900i)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1776f), _wgslsmith_f_op_f32(select(-307f, _wgslsmith_f_op_f32(abs(609f)), true)))))), var_1.x);
}

