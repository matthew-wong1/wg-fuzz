struct Struct_1 {
    a: i32,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: Struct_1,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: vec3<u32>,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> bool {
    global0 = array<i32, 24>();
    var var_0 = Struct_2(vec2<u32>(_wgslsmith_mult_u32(u_input.a, u_input.a | 4294967295u), u_input.b.x), countOneBits(abs(vec2<i32>(_wgslsmith_add_i32(global0[_wgslsmith_index_u32(63960u, 24u)], global0[_wgslsmith_index_u32(1u, 24u)]), global0[_wgslsmith_index_u32(22923u, 24u)]))), Struct_1(42990i, 0u | u_input.b.x, 348f), select(select(vec3<bool>(true, true, true), vec3<bool>(u_input.a <= u_input.a, true, all(vec3<bool>(false, true, false))), vec3<bool>(true, false, true)), vec3<bool>(!all(vec3<bool>(true, false, true)), true, false), all(vec3<bool>(true, true, true))), Struct_1(global0[_wgslsmith_index_u32(~u_input.a, 24u)], 0u, -730f));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1000f * var_0.e.c), -1184f, 896f, _wgslsmith_f_op_f32(floor(1986f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.e.c, -1102f, var_0.c.c, -317f) - vec4<f32>(var_0.c.c, 724f, -646f, var_0.e.c)))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.c.c, -885f, 492f, var_0.c.c))))))));
    var var_2 = Struct_3(firstLeadingBit(vec3<i32>(~(~(-65766i)), global0[_wgslsmith_index_u32(select(u_input.b.x, ~83934u, !var_0.d.x), 24u)], max(~2147483647i, _wgslsmith_sub_i32(var_0.e.a, global0[_wgslsmith_index_u32(0u, 24u)])))), vec3<bool>(all(vec2<bool>(var_0.d.x, true)), false, var_0.d.x), _wgslsmith_add_vec3_u32(vec3<u32>(~4294967295u, 22432u, ~_wgslsmith_clamp_u32(0u, 17552u, u_input.a)), (~u_input.b.zzy >> (u_input.b.yxz % vec3<u32>(32u))) & ~(~u_input.b.wzx)), Struct_1(~var_0.b.x, u_input.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-733f, var_1.x)), _wgslsmith_f_op_f32(trunc(-198f)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-var_1.zzx))));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(var_2.e.zy * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.c, -394f)))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -1678f)), _wgslsmith_f_op_vec2_f32(var_2.e.yx + vec2<f32>(1000f, var_1.x)), select(vec2<bool>(var_2.b.x, true), var_2.b.zy, false))), vec2<f32>(-1060f, _wgslsmith_f_op_f32(-210f + -723f)), vec2<bool>(select(var_0.d.x, true, true), true))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.e.x, var_0.e.c))), var_2.e.yx)));
    return select(var_0.d.x, true, true);
}

fn func_2() -> i32 {
    global0 = array<i32, 24>();
    let var_0 = vec2<bool>(func_3(), false);
    let var_1 = abs(2954u) >> (~u_input.a % 32u);
    let var_2 = 1u;
    let var_3 = firstLeadingBit(-vec2<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(-27367i, global0[_wgslsmith_index_u32(1u, 24u)]), select(vec2<i32>(global0[_wgslsmith_index_u32(14955u, 24u)], -1i), vec2<i32>(0i, 0i), vec2<bool>(var_0.x, false))), -(~(-16605i))));
    return 6984i;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: Struct_4) -> Struct_1 {
    var var_0 = vec2<i32>(-1i) * -(~vec2<i32>(19240i ^ global0[_wgslsmith_index_u32(u_input.a, 24u)], arg_0.x));
    var var_1 = reverseBits(_wgslsmith_dot_vec2_u32(select(vec2<u32>(arg_2.a.x, u_input.b.x), vec2<u32>(0u, arg_2.b.b) >> (vec2<u32>(arg_1.x, 1u) % vec2<u32>(32u)), vec2<bool>(true, true)), min(arg_1.wy & u_input.b.wx, arg_1.xy << (vec2<u32>(arg_1.x, 49245u) % vec2<u32>(32u))))) ^ 42373u;
    var_0 = ~select(_wgslsmith_clamp_vec2_i32(arg_0.zx, abs(arg_0.yx), ~arg_0.xy) >> (vec2<u32>(31781u, arg_1.x) % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(arg_0.zx, arg_0.yz), select(true, firstTrailingBit(arg_2.b.a) != arg_2.b.a, false));
    let var_2 = false;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.c))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1358f + arg_2.b.c))) + _wgslsmith_f_op_f32(arg_2.b.c + _wgslsmith_f_op_f32(1870f + -719f)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2.b.c, arg_2.b.c, false)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(132f, arg_2.b.c))));
    return arg_2.b;
}

fn func_1(arg_0: u32, arg_1: vec4<f32>) -> Struct_1 {
    var var_0 = func_4(vec3<i32>(_wgslsmith_clamp_i32(-max(-26998i, global0[_wgslsmith_index_u32(47337u, 24u)]), func_2(), global0[_wgslsmith_index_u32(~(~u_input.a), 24u)]), _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(firstLeadingBit(arg_0), 24u)], _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(42719u, 24u)], global0[_wgslsmith_index_u32(~36248u, 24u)])), global0[_wgslsmith_index_u32(max(u_input.b.x, _wgslsmith_sub_u32(~arg_0, max(1u, u_input.b.x))), 24u)]), ~vec4<u32>(~(~56142u), u_input.b.x, _wgslsmith_mult_u32(arg_0, arg_0) & ~0u, _wgslsmith_dot_vec4_u32(u_input.b, u_input.b ^ u_input.b)), Struct_4(vec4<u32>(~1u, ~57338u, u_input.b.x, ~arg_0) << (~(~u_input.b) % vec4<u32>(32u)), Struct_1(reverseBits(global0[_wgslsmith_index_u32(~0u, 24u)]), _wgslsmith_div_u32(abs(arg_0), select(50014u, 0u, true)), _wgslsmith_f_op_f32(select(arg_1.x, arg_1.x, true)))));
    global0 = array<i32, 24>();
    let var_1 = Struct_2(countOneBits(~firstLeadingBit(vec2<u32>(22845u, 3674u))), _wgslsmith_sub_vec2_i32(~countOneBits(min(vec2<i32>(var_0.a, global0[_wgslsmith_index_u32(var_0.b, 24u)]), vec2<i32>(28370i, var_0.a))), _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, 11335i), vec2<i32>(-67218i, var_0.a)), _wgslsmith_clamp_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(var_0.b, 24u)], var_0.a), vec2<i32>(4862i, global0[_wgslsmith_index_u32(arg_0, 24u)]), vec2<i32>(3074i, global0[_wgslsmith_index_u32(var_0.b, 24u)]))) | ~(-vec2<i32>(var_0.a, var_0.a))), func_4(vec3<i32>(firstLeadingBit(22846i), global0[_wgslsmith_index_u32(~(~40628u), 24u)], -(~23032i)), ~vec4<u32>(func_4(vec3<i32>(var_0.a, 4717i, global0[_wgslsmith_index_u32(42451u, 24u)]), vec4<u32>(u_input.a, 15729u, var_0.b, u_input.a), Struct_4(u_input.b, Struct_1(1i, 0u, arg_1.x))).b, arg_0, ~u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(u_input.a, 41773u, var_0.b))), Struct_4(~firstLeadingBit(vec4<u32>(u_input.b.x, var_0.b, 0u, 51948u)), func_4(vec3<i32>(-926i, 15747i, var_0.a), _wgslsmith_mult_vec4_u32(u_input.b, vec4<u32>(var_0.b, 24098u, 1u, 24035u)), Struct_4(vec4<u32>(88571u, arg_0, var_0.b, arg_0), Struct_1(0i, 57962u, var_0.c))))), select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), !vec3<bool>(false, true, any(vec4<bool>(false, false, false, true))), select(vec3<bool>(all(vec3<bool>(false, true, true)), all(vec2<bool>(true, false)), all(vec3<bool>(false, false, false))), vec3<bool>(true, true, true), true)), func_4(~firstLeadingBit(-vec3<i32>(-1i, 565i, -2147483647i)), max(u_input.b, min(u_input.b, u_input.b)) | (vec4<u32>(4294967295u, var_0.b, 4294967295u, 72125u) | _wgslsmith_add_vec4_u32(vec4<u32>(0u, 4294967295u, 1u, 1u), vec4<u32>(var_0.b, arg_0, u_input.a, var_0.b))), Struct_4(_wgslsmith_sub_vec4_u32(u_input.b, _wgslsmith_clamp_vec4_u32(vec4<u32>(25125u, u_input.b.x, 0u, 0u), vec4<u32>(arg_0, 69238u, 63359u, 27912u), vec4<u32>(73938u, arg_0, 0u, var_0.b))), Struct_1(_wgslsmith_sub_i32(var_0.a, -2147483647i), var_0.b, arg_1.x))));
    var var_2 = !var_1.d.x;
    var_2 = true;
    return Struct_1(reverseBits(~global0[_wgslsmith_index_u32(17600u, 24u)] << (26459u % 32u)), _wgslsmith_add_u32(_wgslsmith_mod_u32(countOneBits(~89237u), _wgslsmith_dot_vec2_u32(u_input.b.xz, vec2<u32>(arg_0, 25550u)) >> (var_1.c.b % 32u)), _wgslsmith_mult_u32(4294967295u, func_4(vec3<i32>(-1i, 0i, 2147483647i), vec4<u32>(u_input.a, 0u, 32503u, 7819u), Struct_4(vec4<u32>(var_0.b, 5227u, arg_0, u_input.a), var_1.e)).b) >> (var_1.c.b % 32u)), -145f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 24>();
    let var_0 = Struct_4(firstTrailingBit(u_input.b), func_1(_wgslsmith_clamp_u32(1u ^ _wgslsmith_sub_u32(u_input.a, 33902u), select(~1u, u_input.a, true), u_input.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1003f, 1367f, 514f, -788f) - vec4<f32>(1326f, 891f, -542f, 1000f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1165f, 870f, -518f, 585f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(884f, 574f, -814f, 298f) + vec4<f32>(-1000f, 217f, -799f, -1763f))))));
    let var_1 = ~var_0.b.b;
    let var_2 = var_0.b.b;
    var var_3 = Struct_2(vec2<u32>(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(var_1, var_1, var_1, 0u)), vec4<u32>(func_1(u_input.b.x, vec4<f32>(var_0.b.c, var_0.b.c, -1536f, -1676f)).b, ~4294967295u, 3435u, ~20807u)), var_0.b.b), abs(vec2<i32>(func_4(vec3<i32>(1i, var_0.b.a, global0[_wgslsmith_index_u32(var_2, 24u)]) & vec3<i32>(-21767i, var_0.b.a, -1i), max(var_0.a, u_input.b), Struct_4(var_0.a, var_0.b)).a, ~(i32(-1i) * -1i))), func_1(~4294967295u, vec4<f32>(-1152f, 1050f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.b.c))), var_0.b.c)), !select(vec3<bool>(true, true, true), vec3<bool>(func_3(), true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true))), func_4(vec3<i32>(~(-460i) & var_0.b.a, ~_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(26827u, 24u)], -2147483647i), _wgslsmith_dot_vec3_i32(~vec3<i32>(-2147483647i, 2147483647i, var_0.b.a), vec3<i32>(6480i, global0[_wgslsmith_index_u32(61802u, 24u)], var_0.b.a))), _wgslsmith_div_vec4_u32(vec4<u32>(var_2, u_input.a, var_1, var_2) & countOneBits(u_input.b), min(~vec4<u32>(u_input.b.x, var_0.b.b, var_1, 0u), vec4<u32>(var_2, 17925u, 25558u, 4294967295u))), var_0));
    var var_4 = Struct_1(30984i, 28845u ^ func_4(abs(_wgslsmith_mult_vec3_i32(vec3<i32>(var_3.c.a, var_0.b.a, global0[_wgslsmith_index_u32(39337u, 24u)]), vec3<i32>(-51359i, var_0.b.a, -1i))), _wgslsmith_div_vec4_u32(firstTrailingBit(var_0.a), ~vec4<u32>(16111u, 0u, 45062u, u_input.b.x)), var_0).b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.c))), _wgslsmith_div_f32(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b.c + 104f), -1907f))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(4294967295u), vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_add_u32(1u, ~var_4.b), var_3.e.b), firstLeadingBit(var_4.b)));
}

