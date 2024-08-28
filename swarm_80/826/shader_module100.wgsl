struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: i32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: vec4<f32>,
    d: vec4<f32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 25>;

var<private> global1: array<i32, 14> = array<i32, 14>(1i, 4729i, -38499i, 9353i, -1i, 0i, 0i, -44599i, i32(-2147483648), 12063i, 2147483647i, 1i, 2147483647i, 1i);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec4<f32> {
    var var_0 = Struct_2(vec4<u32>(select(79007u, global0[_wgslsmith_index_u32(49438u, 25u)], all(vec3<bool>(true, false, false))), 6772u, countOneBits(0u), ~33462u));
    var var_1 = vec4<bool>(any(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false)))), false, all(vec2<bool>(all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false))), true)), any(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true))) != !any(vec2<bool>(true, true)));
    global1 = array<i32, 14>();
    let var_2 = Struct_3(u_input.b);
    let var_3 = ~(_wgslsmith_dot_vec2_i32(vec2<i32>(firstTrailingBit(u_input.b), -1i), ~vec2<i32>(global1[_wgslsmith_index_u32(12641u, 14u)], u_input.b)) ^ -33978i);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(764f, 323f, 506f, -137f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-692f, 1178f, 351f, -566f)))))));
}

fn func_2(arg_0: bool, arg_1: bool) -> Struct_2 {
    var var_0 = Struct_4(Struct_2(reverseBits(vec4<u32>(u_input.c ^ 1u, u_input.c, ~global0[_wgslsmith_index_u32(u_input.c, 25u)], ~34153u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1193f), _wgslsmith_div_f32(-1000f, -561f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(372f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -808f)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1287f, 1037f, -1542f, 346f)) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(2429f, 538f, -243f, -2101f), vec4<f32>(952f, -189f, 425f, -731f)))), vec4<f32>(_wgslsmith_f_op_f32(708f - 1050f), 1733f, _wgslsmith_f_op_f32(-1502f + 718f), 506f), select(!vec4<bool>(true, true, true, arg_1), select(vec4<bool>(false, true, true, arg_1), vec4<bool>(arg_0, arg_0, true, arg_0), vec4<bool>(true, true, arg_0, true)), select(vec4<bool>(true, false, false, true), vec4<bool>(arg_0, arg_0, true, arg_0), true)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3()) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1798f, -412f, 548f))))))), vec4<f32>(_wgslsmith_f_op_f32(min(1f, 917f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(323f * -1961f))) + 332f), 1352f, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3()).x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -404f)))), reverseBits(18736u));
    var var_1 = Struct_3(global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(~(~u_input.a), _wgslsmith_sub_u32(1u, ~u_input.c)), 14u)]);
    let var_2 = var_0.d.yyx;
    var var_3 = _wgslsmith_clamp_i32(_wgslsmith_div_i32(-2147483647i, -41252i), var_1.a, _wgslsmith_mod_i32(u_input.b, ~global1[_wgslsmith_index_u32(~u_input.a, 14u)]));
    let var_4 = Struct_4(var_0.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.d.x))) + 475f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2.x, -1360f, 1302f, -778f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3())), select(!vec4<bool>(arg_0, true, arg_1, arg_0), !vec4<bool>(true, true, arg_0, arg_1), vec4<bool>(true, arg_1, false, true))))), _wgslsmith_f_op_vec4_f32(var_0.d + vec4<f32>(var_2.x, var_2.x, var_2.x, _wgslsmith_f_op_f32(-var_0.b))), var_0.a.a.x);
    return var_4.a;
}

fn func_1() -> bool {
    global1 = array<i32, 14>();
    var var_0 = Struct_4(func_2(true, false), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(548f, -726f, true)))))), vec4<f32>(-142f, 1222f, -489f, 296f), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1590f, -209f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-1165f)), _wgslsmith_f_op_f32(f32(-1f) * -571f), any(vec3<bool>(false, true, true)))), _wgslsmith_f_op_f32(select(207f, _wgslsmith_f_op_f32(max(-416f, 1021f)), false)))), -554f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1280f, _wgslsmith_f_op_f32(min(2174f, 1197f)))) + _wgslsmith_f_op_f32(floor(-275f)))), firstTrailingBit(firstTrailingBit(global0[_wgslsmith_index_u32(u_input.a, 25u)] & 26601u)) << (u_input.c % 32u));
    let var_1 = Struct_1(true, ~var_0.a.a, -global1[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(13909u, 25u)], 14u)], _wgslsmith_div_vec4_u32(var_0.a.a, firstLeadingBit(vec4<u32>(global0[_wgslsmith_index_u32(~var_0.e, 25u)], 30611u << (global0[_wgslsmith_index_u32(var_0.a.a.x, 25u)] % 32u), countOneBits(1u), u_input.a))));
    var_0 = Struct_4(func_2(true, !any(vec2<bool>(false, false))), var_0.c.x, var_0.c, vec4<f32>(-1000f, var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1045f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -231f), _wgslsmith_f_op_f32(-var_0.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.c.x)))), _wgslsmith_mult_u32(~u_input.c, _wgslsmith_div_u32(var_1.d.x, global0[_wgslsmith_index_u32(u_input.a, 25u)] | _wgslsmith_dot_vec3_u32(var_1.d.yzy, var_1.d.xxw))));
    var var_2 = vec3<i32>(var_1.c << (var_0.a.a.x % 32u), 14525i, min(_wgslsmith_dot_vec4_i32(-vec4<i32>(global1[_wgslsmith_index_u32(u_input.c, 14u)], -1988i, 2147483647i, u_input.b), ~vec4<i32>(u_input.b, -1i, u_input.b, u_input.b) >> (var_1.d % vec4<u32>(32u))), u_input.b));
    return any(!(!vec3<bool>(!var_1.a, true, all(vec2<bool>(false, var_1.a)))));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: vec2<bool>, arg_3: vec2<u32>) -> StorageBuffer {
    global0 = array<u32, 25>();
    global1 = array<i32, 14>();
    let var_0 = Struct_4(Struct_2(vec4<u32>(firstLeadingBit(~1u), 1u, global0[_wgslsmith_index_u32(arg_0.a.x, 25u)], abs(arg_0.a.x))), -147f, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1797f, 2524f, 1140f, -918f), vec4<f32>(-1141f, -120f, 1480f, -103f)))) - vec4<f32>(_wgslsmith_f_op_vec4_f32(func_3()).x, _wgslsmith_div_f32(-1111f, -2229f), -433f, _wgslsmith_f_op_f32(ceil(199f)))), vec4<f32>(_wgslsmith_div_f32(1032f, _wgslsmith_f_op_vec4_f32(func_3()).x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(858f, -275f))), -340f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(973f, -1000f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -761f))), -615f, -512f, -1000f)), ~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, 0u), arg_3) << (~vec2<u32>(arg_0.a.x, arg_0.a.x) % vec2<u32>(32u)), ~arg_3));
    let var_1 = max(~(min(var_0.a.a.ywx, firstTrailingBit(arg_0.a.xxy)) >> (vec3<u32>(func_2(arg_2.x, false).a.x, ~u_input.a, ~1u) % vec3<u32>(32u))), countOneBits(~var_0.a.a.www));
    let var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_0.d), vec4<f32>(-1023f, 1000f, _wgslsmith_f_op_f32(floor(var_0.c.x)), -1689f), vec4<bool>(true, all(!vec3<bool>(arg_2.x, true, true)), u_input.b != arg_1.x, all(!vec4<bool>(arg_2.x, true, arg_2.x, arg_2.x))))), _wgslsmith_f_op_vec4_f32(abs(var_0.c))));
    return StorageBuffer(func_2(true, false).a.x ^ 2711u, _wgslsmith_dot_vec2_i32(-arg_1.wx, -vec2<i32>(~arg_1.x, _wgslsmith_dot_vec3_i32(arg_1.zxz, vec3<i32>(0i, 1i, u_input.b)))), ~_wgslsmith_add_i32(18857i, -5067i >> (max(global0[_wgslsmith_index_u32(arg_0.a.x, 25u)], 0u) % 32u)), var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(Struct_2(vec4<u32>(firstTrailingBit(_wgslsmith_add_u32(31499u, 81114u)), ~countOneBits(17596u), 4294967295u, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(0u, u_input.c)), firstLeadingBit(vec2<u32>(global0[_wgslsmith_index_u32(0u, 25u)], u_input.a))))), -_wgslsmith_div_vec4_i32(-(~vec4<i32>(-77532i, 2147483647i, 0i, u_input.b)), _wgslsmith_mod_vec4_i32(~vec4<i32>(2147483647i, u_input.b, -2147483647i, u_input.b), _wgslsmith_div_vec4_i32(vec4<i32>(-29237i, 1i, 44707i, 2823i), vec4<i32>(-2147483647i, -32847i, global1[_wgslsmith_index_u32(9911u, 14u)], global1[_wgslsmith_index_u32(32934u, 14u)])))), !vec2<bool>(all(vec2<bool>(true, false)), func_1()), abs(~vec2<u32>(~u_input.a, firstLeadingBit(u_input.a))));
}

