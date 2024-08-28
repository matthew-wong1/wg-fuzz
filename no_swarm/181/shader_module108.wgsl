struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec4<i32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: u32;

var<private> global2: vec2<bool> = vec2<bool>(true, true);

var<private> global3: array<f32, 10>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32, arg_1: Struct_4) -> vec2<bool> {
    let var_0 = Struct_3(all(vec4<bool>(true, true, global2.x, !global2.x)));
    global2 = !vec2<bool>(true, all(!select(arg_1.c.c.e, arg_1.c.e.e, vec2<bool>(arg_1.c.c.e.x, var_0.a))));
    var var_1 = var_0;
    var var_2 = _wgslsmith_div_vec4_i32(~vec4<i32>(arg_1.c.a.d.x, (-1i ^ u_input.b.x) | arg_0, -1i, ~_wgslsmith_div_i32(0i, arg_1.c.c.d.x)), vec4<i32>(-21215i, abs(_wgslsmith_dot_vec3_i32(u_input.b, _wgslsmith_sub_vec3_i32(arg_1.c.a.d.wwy, vec3<i32>(u_input.e, -1i, arg_0)))), 204i, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(-arg_0, reverseBits(arg_0)), (1i & arg_0) & firstTrailingBit(u_input.e), -2884i)));
    var_2 = abs(arg_1.c.a.d) >> (_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(u_input.d, ~arg_1.c.e.a), u_input.d) % vec4<u32>(32u));
    return select(!arg_1.c.a.e, !select(arg_1.c.e.e, select(!arg_1.c.e.e, vec2<bool>(global2.x, false), select(false, true, global2.x)), vec2<bool>(false, false)), any(select(select(!vec3<bool>(var_1.a, var_1.a, true), vec3<bool>(global2.x, var_0.a, false), !arg_1.c.a.e.x), !select(vec3<bool>(false, global2.x, true), vec3<bool>(global2.x, true, false), vec3<bool>(true, true, false)), all(vec4<bool>(global2.x, var_1.a, var_1.a, var_1.a)))));
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_1(countOneBits(u_input.d), vec4<f32>(343f, -560f, 1787f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(u_input.d.x ^ 0u, 10u)], global3[_wgslsmith_index_u32(u_input.c, 10u)])), 1586f)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.d.x ^ 20556u, 10u)]) + 438f), _wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(~(~0u), 10u)])), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-836f * 565f) * global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.d.x, 0u), 10u)]))), -486f), min(_wgslsmith_add_vec4_i32(~(~vec4<i32>(479i, 2147483647i, 0i, 1i)), ~min(vec4<i32>(108008i, 24262i, u_input.b.x, 1i), vec4<i32>(38047i, u_input.b.x, u_input.e, 1i))), ~_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-44373i, -21988i, u_input.b.x, u_input.e), vec4<i32>(-1i, 6921i, u_input.b.x, u_input.e)), vec4<i32>(-21320i, 2147483647i, u_input.e, u_input.e) | vec4<i32>(-6798i, -2147483647i, 33521i, u_input.b.x))), select(!select(!vec2<bool>(true, global2.x), select(vec2<bool>(global2.x, false), vec2<bool>(global2.x, true), vec2<bool>(false, false)), all(vec2<bool>(false, false))), !vec2<bool>(!global2.x, global2.x), select(vec2<bool>(!global2.x, false), vec2<bool>(-676f != global3[_wgslsmith_index_u32(1u, 10u)], true & global2.x), func_3(7198i, Struct_4(vec2<u32>(1u, 1u), vec2<u32>(1u, u_input.d.x), Struct_2(Struct_1(u_input.d, vec4<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 10u)], global3[_wgslsmith_index_u32(u_input.c, 10u)], 425f, global3[_wgslsmith_index_u32(u_input.c, 10u)]), vec4<f32>(global3[_wgslsmith_index_u32(u_input.c, 10u)], 158f, 163f, global3[_wgslsmith_index_u32(u_input.c, 10u)]), vec4<i32>(1i, -9841i, 2147483647i, u_input.e), vec2<bool>(global2.x, global2.x)), vec3<f32>(global3[_wgslsmith_index_u32(16807u, 10u)], global3[_wgslsmith_index_u32(11321u, 10u)], global3[_wgslsmith_index_u32(u_input.a.x, 10u)]), Struct_1(u_input.d, vec4<f32>(-1245f, 758f, global3[_wgslsmith_index_u32(u_input.a.x, 10u)], global3[_wgslsmith_index_u32(u_input.c, 10u)]), vec4<f32>(117f, global3[_wgslsmith_index_u32(19753u, 10u)], -203f, global3[_wgslsmith_index_u32(64430u, 10u)]), vec4<i32>(u_input.e, u_input.e, u_input.b.x, u_input.b.x), vec2<bool>(global2.x, global2.x)), 1u, Struct_1(vec4<u32>(u_input.c, 4294967295u, u_input.d.x, u_input.d.x), vec4<f32>(global3[_wgslsmith_index_u32(u_input.d.x, 10u)], global3[_wgslsmith_index_u32(4294967295u, 10u)], -369f, global3[_wgslsmith_index_u32(u_input.d.x, 10u)]), vec4<f32>(-209f, global3[_wgslsmith_index_u32(u_input.c, 10u)], global3[_wgslsmith_index_u32(1u, 10u)], global3[_wgslsmith_index_u32(u_input.c, 10u)]), vec4<i32>(3648i, 47050i, 2147483647i, u_input.b.x), vec2<bool>(true, true))))))));
    let var_1 = 4294967295u >> (abs(0u) % 32u);
    let var_2 = Struct_4(~u_input.a.xx, u_input.d.zy, Struct_2(Struct_1(firstTrailingBit(u_input.d), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2319f), global3[_wgslsmith_index_u32(reverseBits(1u), 10u)], _wgslsmith_f_op_f32(f32(-1f) * -231f), _wgslsmith_f_op_f32(-710f - global3[_wgslsmith_index_u32(u_input.c, 10u)])), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.c - vec4<f32>(-1445f, var_0.c.x, var_0.c.x, -110f))), -vec4<i32>(-1i, var_0.d.x, 0i, u_input.e), select(var_0.e, select(var_0.e, var_0.e, global2.x), vec2<bool>(global2.x, true))), var_0.c.xyy, var_0, abs(0u), var_0));
    var var_3 = ~(-44891i);
    var var_4 = Struct_3(true);
    return Struct_3(false);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>) -> vec4<i32> {
    global3 = array<f32, 10>();
    global0 = select(arg_0.e.x || true, !((global2.x | true) | arg_0.e.x), true & ((_wgslsmith_f_op_f32(-537f * global3[_wgslsmith_index_u32(u_input.d.x, 10u)]) <= _wgslsmith_f_op_f32(abs(-953f))) || !(!arg_0.e.x)));
    let var_0 = func_2();
    var var_1 = Struct_4(countOneBits(vec2<u32>(_wgslsmith_mult_u32(u_input.d.x | arg_0.a.x, countOneBits(arg_0.a.x)), select(4294967295u, 43180u, var_0.a) & ~54511u)), abs(vec2<u32>(arg_0.a.x, _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(arg_0.a.x, u_input.c, 4294967295u)))) | firstTrailingBit(~u_input.d.wz), Struct_2(Struct_1(_wgslsmith_mult_vec4_u32(~vec4<u32>(13623u, 1u, 11859u, arg_0.a.x), reverseBits(vec4<u32>(12352u, arg_0.a.x, 103975u, u_input.c))), arg_0.c, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(arg_0.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, arg_1.x, -870f, 401f))), select(arg_0.d, abs(arg_0.d), true), select(vec2<bool>(global2.x, var_0.a), arg_0.e, select(vec2<bool>(false, global2.x), vec2<bool>(true, global2.x), arg_0.e))), arg_0.b.xyx, Struct_1(vec4<u32>(~arg_0.a.x, u_input.a.x, u_input.d.x, 1u), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_0.c.x, arg_0.b.x, arg_0.b.x) * vec4<f32>(-1971f, arg_1.x, arg_1.x, -170f)), arg_0.b)), vec4<f32>(arg_0.c.x, _wgslsmith_f_op_f32(arg_0.c.x * arg_0.b.x), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.c, 1u), 10u)], _wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(22366u, 10u)], -1477f, true))), arg_0.d, func_3(12723i >> (arg_0.a.x % 32u), Struct_4(vec2<u32>(u_input.a.x, 8137u), arg_0.a.zz, Struct_2(arg_0, arg_0.b.xyz, arg_0, arg_0.a.x, Struct_1(arg_0.a, vec4<f32>(arg_0.b.x, global3[_wgslsmith_index_u32(u_input.c, 10u)], arg_0.b.x, -1414f), arg_0.c, arg_0.d, arg_0.e))))), u_input.d.x & abs(_wgslsmith_sub_u32(0u, 0u)), Struct_1(vec4<u32>(abs(68875u), 1u, 29685u, 4294967295u), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-arg_0.b))), vec4<f32>(global3[_wgslsmith_index_u32(4294967295u, 10u)], _wgslsmith_f_op_f32(arg_0.b.x - global3[_wgslsmith_index_u32(1u, 10u)]), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(645f * arg_1.x)), _wgslsmith_div_vec4_i32(arg_0.d, -arg_0.d), vec2<bool>(all(vec4<bool>(var_0.a, false, false, global2.x)), !arg_0.e.x))));
    var var_2 = arg_0.d.wx;
    return max(vec4<i32>(~_wgslsmith_dot_vec3_i32(~var_1.c.e.d.yzy, ~var_1.c.a.d.yyx), var_2.x | 1i, ((-2147483647i ^ u_input.e) & arg_0.d.x) << (1u % 32u), max(-1i, u_input.e)), select(vec4<i32>(~22725i & _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.x, u_input.e, var_2.x), vec3<i32>(arg_0.d.x, u_input.b.x, u_input.b.x)), -(~(-1i)), ~countOneBits(var_1.c.a.d.x), _wgslsmith_mult_i32(abs(2147483647i), _wgslsmith_div_i32(-17143i, 2147483647i))), reverseBits(~(~var_1.c.c.d)), vec4<bool>(!var_1.c.a.e.x, true, false, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(_wgslsmith_div_i32(u_input.e, 1i) & -_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.b.xy, vec2<i32>(u_input.b.x, u_input.e)), ~vec2<i32>(44177i, u_input.b.x)), -_wgslsmith_sub_i32(2322i, countOneBits(u_input.e)), ~_wgslsmith_sub_i32(min(~u_input.b.x, _wgslsmith_mult_i32(u_input.e, -1i)), -1i));
    let var_1 = countOneBits(min(~_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.e, var_0.x, var_0.x, 47159i), vec4<i32>(35603i, u_input.b.x, u_input.e, 2147483647i)), func_1(Struct_1(vec4<u32>(4294967295u, u_input.d.x, u_input.a.x, 4294967295u), vec4<f32>(-1674f, global3[_wgslsmith_index_u32(u_input.c, 10u)], global3[_wgslsmith_index_u32(u_input.a.x, 10u)], global3[_wgslsmith_index_u32(u_input.d.x, 10u)]), vec4<f32>(global3[_wgslsmith_index_u32(0u, 10u)], -488f, global3[_wgslsmith_index_u32(u_input.a.x, 10u)], -151f), vec4<i32>(-68834i, u_input.e, 11968i, 20606i), vec2<bool>(false, global2.x)), vec2<f32>(global3[_wgslsmith_index_u32(1u, 10u)], 1604f))), ~_wgslsmith_sub_vec4_i32(-vec4<i32>(-7704i, var_0.x, u_input.e, -20252i), ~vec4<i32>(u_input.e, var_0.x, var_0.x, var_0.x))));
    global1 = u_input.d.x;
    var_0 = max(vec3<i32>(_wgslsmith_mult_i32(-_wgslsmith_dot_vec3_i32(var_1.yzx, vec3<i32>(u_input.b.x, var_1.x, var_0.x)), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-17773i, 2147483647i), var_0.xz), max(u_input.e, u_input.e))), _wgslsmith_clamp_i32(-10493i, var_0.x, var_1.x) & abs(-20831i), u_input.e), func_1(Struct_1(u_input.d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 10u)], -3109f, 1716f, 310f)), vec4<f32>(global3[_wgslsmith_index_u32(10283u, 10u)], 1276f, global3[_wgslsmith_index_u32(u_input.d.x, 10u)], global3[_wgslsmith_index_u32(0u, 10u)]), var_1 << (u_input.d % vec4<u32>(32u)), select(vec2<bool>(true, true), vec2<bool>(true, global2.x), vec2<bool>(false, false))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1172f, 455f), vec2<f32>(global3[_wgslsmith_index_u32(98707u, 10u)], 1000f)))).wzy & u_input.b);
    let var_2 = vec2<u32>(max(u_input.c, 8363u), 4294967295u >> (~(~u_input.d.x) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(u_input.d, ~select(vec4<u32>(var_2.x, u_input.a.x, u_input.d.x, var_2.x), ~u_input.d, !vec4<bool>(false, false, false, global2.x))));
}

