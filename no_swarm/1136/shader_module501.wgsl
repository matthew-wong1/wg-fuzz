struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: f32,
    d: vec4<u32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<u32>,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 22>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: bool, arg_3: vec4<u32>) -> vec3<u32> {
    var var_0 = false;
    global0 = array<i32, 22>();
    var_0 = false;
    var var_1 = Struct_1(vec3<u32>(min(1465u & arg_3.x, 4294967295u), 24897u, select(u_input.e.x ^ ~arg_3.x, ~_wgslsmith_add_u32(arg_3.x, 1u), false)), any(!select(vec4<bool>(false, false, arg_2, arg_0.x), !vec4<bool>(true, arg_2, true, arg_2), true)), arg_1.x, firstTrailingBit(vec4<u32>(~(~34256u), _wgslsmith_dot_vec4_u32(~arg_3, vec4<u32>(u_input.c, 0u, arg_3.x, arg_3.x)), ~u_input.c, 23556u)), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.x), -828f, !select(arg_2, arg_2, arg_2))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(ceil(arg_1.x)))), _wgslsmith_f_op_f32(abs(-303f))));
    let var_2 = !(!arg_0);
    return ~_wgslsmith_add_vec3_u32(~vec3<u32>(~var_1.a.x, arg_3.x, reverseBits(17424u)), vec3<u32>(_wgslsmith_mult_u32(abs(arg_3.x), u_input.c), 0u, 18466u));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: f32) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.b.e.x)));
    global0 = array<i32, 22>();
    var_0 = 1707f;
    var var_1 = min(-1i, u_input.a.x) >> (arg_0.x % 32u);
    var_0 = arg_1.b.c;
    return ~arg_0.xxw;
}

fn func_4(arg_0: bool, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: f32) -> Struct_2 {
    global0 = array<i32, 22>();
    global0 = array<i32, 22>();
    global0 = array<i32, 22>();
    var var_0 = arg_1;
    var var_1 = Struct_1(arg_2.c, true, _wgslsmith_f_op_f32(floor(-865f)), _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(abs(vec4<u32>(arg_2.e.a.x, arg_2.e.a.x, 4294967295u, 1u)), vec4<u32>(arg_2.b.d.x, 4294967295u, _wgslsmith_dot_vec3_u32(arg_2.e.d.xzx, vec3<u32>(42463u, arg_2.c.x, u_input.c)), ~arg_2.b.d.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(abs(88051u), ~1u, 4294967295u, arg_2.b.a.x), ~(~vec4<u32>(42722u, arg_2.c.x, u_input.d, arg_2.e.d.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2144f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a * arg_3) - _wgslsmith_f_op_f32(-arg_2.a)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -536f), _wgslsmith_f_op_f32(sign(-1000f)))))));
    return Struct_2(_wgslsmith_f_op_f32(sign(-2093f)), arg_2.e, var_1.a, true, arg_2.e);
}

fn func_1() -> Struct_2 {
    let var_0 = (u_input.a >> (~(~vec3<u32>(0u, u_input.e.x, 10656u) >> (vec3<u32>(42427u, u_input.d, u_input.d) % vec3<u32>(32u))) % vec3<u32>(32u))) ^ u_input.a;
    global0 = array<i32, 22>();
    let var_1 = false;
    global0 = array<i32, 22>();
    var var_2 = vec4<bool>(true, true, true, any(vec4<bool>(var_1, all(vec3<bool>(var_1, false, var_1)), false, ~u_input.c >= ~u_input.c)));
    return func_4(var_1, select(vec2<bool>(false, var_2.x), vec2<bool>(any(!vec3<bool>(var_2.x, false, var_1)), var_1), select(var_2.xx, vec2<bool>(u_input.e.x >= 38072u, false == var_1), any(vec3<bool>(var_2.x, var_2.x, true)))), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -713f)) + _wgslsmith_f_op_f32(-1000f * -873f)), Struct_1(vec3<u32>(39160u ^ u_input.d, min(u_input.e.x, 4294967295u), max(4294967295u, 0u)), !var_2.x, 333f, vec4<u32>(_wgslsmith_add_u32(u_input.e.x, u_input.d), ~u_input.e.x, ~44852u, 0u), vec3<f32>(1f, 1f, 1f)), max(~_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 715u, u_input.d), vec3<u32>(u_input.c, u_input.e.x, 34728u)), abs(func_2(vec2<bool>(true, false), vec3<f32>(1292f, 334f, -974f), var_2.x, vec4<u32>(u_input.e.x, u_input.d, u_input.d, u_input.d)))), false, Struct_1(func_3(~vec4<u32>(0u, 4294967295u, u_input.d, u_input.c), Struct_2(-312f, Struct_1(vec3<u32>(4294967295u, u_input.c, u_input.e.x), var_2.x, -901f, vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.e.x), vec3<f32>(844f, -246f, 347f)), vec3<u32>(41568u, 4294967295u, u_input.d), true, Struct_1(vec3<u32>(4294967295u, u_input.c, u_input.d), true, -1000f, vec4<u32>(4294967295u, 10151u, u_input.c, u_input.e.x), vec3<f32>(-1846f, -586f, 1428f))), _wgslsmith_div_f32(238f, 354f)), !(!var_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1210f + -438f) - _wgslsmith_f_op_f32(max(-577f, 679f))), vec4<u32>(4294967295u, u_input.c, u_input.d, u_input.e.x) & vec4<u32>(14642u, u_input.c, 4294967295u, u_input.e.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(923f, -339f, -194f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1011f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-932f)))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(1039f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 12442u;
    global0 = array<i32, 22>();
    global0 = array<i32, 22>();
    var var_1 = func_1();
    let var_2 = func_4(false, vec2<bool>(var_1.e.b, select(var_1.e.b, _wgslsmith_mod_i32(-36984i, global0[_wgslsmith_index_u32(var_0, 22u)]) < u_input.a.x, var_1.e.b && true)), func_1(), var_1.e.e.x).e;
    let x = u_input.a;
    s_output = StorageBuffer(select(var_0, ~u_input.e.x, true), _wgslsmith_sub_vec4_i32(firstLeadingBit(~vec4<i32>(0i, -27067i, -24947i, global0[_wgslsmith_index_u32(u_input.c, 22u)])), vec4<i32>(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(var_2.a.x, var_0), 22u)], _wgslsmith_dot_vec2_i32(u_input.a.zx, u_input.b), _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, global0[_wgslsmith_index_u32(var_2.d.x, 22u)]), global0[_wgslsmith_index_u32(u_input.d, 22u)]) >> (_wgslsmith_sub_vec4_u32(~vec4<u32>(var_1.c.x, var_2.a.x, u_input.c, u_input.e.x), vec4<u32>(61749u, var_0, u_input.d, u_input.c)) % vec4<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_2.e.x)), _wgslsmith_f_op_f32(trunc(-506f)))) * _wgslsmith_f_op_f32(var_2.e.x + _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1773f, -646f), 1000f)))), _wgslsmith_add_vec4_u32(vec4<u32>(var_2.d.x, var_0, ~abs(u_input.c), 4294967295u), ~(~countOneBits(var_1.b.d))), 4294967295u);
}

