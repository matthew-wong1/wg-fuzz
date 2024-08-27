struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: Struct_1,
    d: vec4<bool>,
    e: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: vec2<bool>,
    c: vec3<f32>,
    d: f32,
    e: vec4<u32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 30> = array<i32, 30>(1i, -41582i, -25640i, 3837i, -8050i, 0i, -31754i, 0i, 2147483647i, 17580i, -46526i, 2147483647i, -5104i, 62733i, 1i, 2147483647i, -1i, -55733i, -12244i, -1i, -13802i, i32(-2147483648), i32(-2147483648), -1i, -26363i, 1i, -41371i, -1063i, -4428i, 2147483647i);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec4<u32> {
    var var_0 = Struct_4(vec3<bool>(true, !(~u_input.c.x != 1u), true), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(abs(_wgslsmith_clamp_u32(0u, 44474u, 69090u)) << (_wgslsmith_mult_u32(5327u, abs(u_input.b.x)) % 32u), _wgslsmith_mult_u32(abs(u_input.b.x) << (firstLeadingBit(0u) % 32u), u_input.d), 0u), 30u)]);
    var var_1 = Struct_3(true, !select(!var_0.a.xz, !var_0.a.zx, select(var_0.a.xx, select(var_0.a.zy, var_0.a.xy, var_0.a.x), true)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(576f * _wgslsmith_f_op_f32(f32(-1f) * -216f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1303f) * _wgslsmith_f_op_f32(f32(-1f) * -1204f)), _wgslsmith_div_f32(-1797f, 1f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-267f * _wgslsmith_f_op_f32(1000f - -297f)))), max(~vec4<u32>(u_input.d, countOneBits(62563u), _wgslsmith_dot_vec2_u32(u_input.b.yx, u_input.b.zz), u_input.d >> (4294967295u % 32u)), ~_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(u_input.d, 36059u, u_input.b.x, u_input.c.x)), vec4<u32>(0u, 89499u, u_input.b.x, 7399u), vec4<u32>(u_input.c.x, 0u, u_input.b.x, 2831u) | vec4<u32>(1u, 0u, 0u, 1u))));
    let var_2 = var_0.a;
    var var_3 = Struct_1(~(~var_1.e.x));
    var_1 = Struct_3(u_input.d != ~23187u, var_0.a.zy, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.c) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2070f), var_1.d, -601f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.d))) - var_1.c.x))), _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(~var_1.e, vec4<u32>(var_3.a, ~32066u, var_1.e.x, _wgslsmith_mod_u32(var_3.a, var_1.e.x))), vec4<u32>(u_input.d, var_1.e.x, ~u_input.d >> (var_3.a % 32u), u_input.b.x & min(15955u, var_1.e.x))));
    return ~vec4<u32>(1u, ~0u, countOneBits(u_input.b.x), 0u);
}

fn func_2() -> Struct_3 {
    global0 = array<i32, 30>();
    global0 = array<i32, 30>();
    var var_0 = Struct_2(-(~(~min(vec4<i32>(global0[_wgslsmith_index_u32(u_input.d, 30u)], u_input.a, global0[_wgslsmith_index_u32(54359u, 30u)], u_input.a), vec4<i32>(1i, 0i, 0i, -37010i)))), func_3(), Struct_1(7532u), vec4<bool>(!all(vec2<bool>(false, false)), !(!select(false, true, false)), true, true == (59109u == (1u >> (u_input.d % 32u)))), abs(select(_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, 4294967295u), u_input.c), vec2<u32>(u_input.c.x, 1u), ~u_input.c), vec2<u32>(select(17852u, 30969u, true), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, u_input.b.x), u_input.b.zz)), true)));
    var var_1 = Struct_1(~_wgslsmith_clamp_u32(var_0.b.x, 0u ^ var_0.b.x, u_input.d));
    var var_2 = Struct_4(!var_0.d.yxw, _wgslsmith_dot_vec3_i32(max(-(~vec3<i32>(1i, global0[_wgslsmith_index_u32(var_0.e.x, 30u)], 1i)), vec3<i32>(2147483647i ^ var_0.a.x, -1i, -2147483647i)), var_0.a.xyy));
    return Struct_3(all(var_0.d), vec2<bool>(true, select(false, select(var_0.d.x, any(var_0.d.yxz), false), all(var_2.a))), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1084f - -935f), -1847f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(264f, 456f) - _wgslsmith_f_op_f32(-652f + 995f)))), _wgslsmith_f_op_f32(f32(-1f) * -138f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-687f - -557f), _wgslsmith_f_op_f32(trunc(-759f))))), 1000f, var_0.b);
}

fn func_1(arg_0: Struct_3, arg_1: bool, arg_2: Struct_2) -> i32 {
    var var_0 = arg_2.a.yxw;
    let var_1 = func_2();
    var var_2 = !vec2<bool>(true, var_1.a);
    return var_0.x;
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: vec2<u32>) -> Struct_4 {
    global0 = array<i32, 30>();
    let var_0 = arg_0.d.x;
    var var_1 = arg_0;
    let var_2 = Struct_3(var_1.d.x, !(!var_1.d.zx), _wgslsmith_f_op_vec3_f32(vec3<f32>(-173f, -1008f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(776f, 120f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 1000f, 474f) + vec3<f32>(1f, 1f, 1f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(642f, 1914f, -1278f) - vec3<f32>(-505f, 1609f, -949f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(441f, 663f, -1091f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(1313f)), _wgslsmith_f_op_f32(f32(-1f) * -1922f)))), func_2().c.x, !all(select(vec3<bool>(arg_0.d.x, var_1.d.x, var_1.d.x), vec3<bool>(var_1.d.x, true, arg_0.d.x), true)))), arg_0.b);
    let var_3 = arg_0;
    return Struct_4(select(vec3<bool>(false, var_0, var_1.d.x), !vec3<bool>(true, any(vec3<bool>(var_3.d.x, false, true)), any(vec3<bool>(false, arg_0.d.x, var_0))), var_3.d.yxw), _wgslsmith_mult_i32(var_3.a.x, arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_2(vec4<i32>(_wgslsmith_add_i32(func_1(Struct_3(false, vec2<bool>(true, true), vec3<f32>(-651f, 794f, -329f), -1085f, vec4<u32>(4294967295u, u_input.c.x, 41029u, u_input.c.x)), false, Struct_2(vec4<i32>(u_input.a, -12341i, u_input.a, global0[_wgslsmith_index_u32(0u, 30u)]), vec4<u32>(u_input.c.x, u_input.b.x, u_input.d, u_input.c.x), Struct_1(u_input.b.x), vec4<bool>(true, true, true, true), vec2<u32>(4294967295u, u_input.c.x))), _wgslsmith_mod_i32(-13134i, u_input.a)), reverseBits(_wgslsmith_add_i32(-1996i, -33958i)), max(-19728i, _wgslsmith_add_i32(global0[_wgslsmith_index_u32(u_input.c.x, 30u)], global0[_wgslsmith_index_u32(1934u, 30u)])), _wgslsmith_dot_vec2_i32(min(vec2<i32>(-1i, global0[_wgslsmith_index_u32(4294967295u, 30u)]), vec2<i32>(u_input.a, 1i)), ~vec2<i32>(52996i, global0[_wgslsmith_index_u32(u_input.b.x, 30u)]))), ~vec4<u32>(reverseBits(u_input.b.x), u_input.c.x ^ 0u, ~u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(28957u, 73044u, 20463u), vec3<u32>(u_input.c.x, u_input.b.x, 1u))), Struct_1(abs(~0u)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)), vec2<u32>(~u_input.c.x, 1u)), -u_input.a, countOneBits(vec2<u32>(4294967295u, ~abs(u_input.d))));
    var var_1 = 0i;
    var var_2 = var_0.a.yx;
    var_1 = _wgslsmith_div_i32(-26242i, abs(~global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c.x | 0u, 45617u), 30u)]));
    var_0 = Struct_4(vec3<bool>(false, false, var_0.a.x), global0[_wgslsmith_index_u32(~6479u, 30u)]);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

