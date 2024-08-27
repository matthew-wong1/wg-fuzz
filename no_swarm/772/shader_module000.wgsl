struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: bool,
    d: f32,
    e: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 2> = array<vec2<i32>, 2>(vec2<i32>(0i, -8862i), vec2<i32>(0i, 0i));

var<private> global1: vec4<u32>;

var<private> global2: array<vec4<f32>, 12>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32, arg_1: vec2<f32>, arg_2: u32) -> vec2<f32> {
    var var_0 = Struct_1(vec2<u32>(arg_2, ~(~arg_2)), select(vec2<bool>(true, true), vec2<bool>(true, true), !select(arg_1.x != arg_1.x, true, any(vec4<bool>(true, true, false, false)))), global1.wyy | global1.yzx);
    global1 = _wgslsmith_clamp_vec4_u32(~(vec4<u32>(6329u, global1.x, 4294967295u, global1.x) << (vec4<u32>(6036u, arg_2, u_input.b, u_input.b) % vec4<u32>(32u))) & ~(~vec4<u32>(41690u, 1u, 62824u, 4294967295u)), vec4<u32>(_wgslsmith_clamp_u32(~var_0.c.x, var_0.a.x >> (arg_2 % 32u), var_0.c.x & global1.x), min(72912u | var_0.a.x, arg_2 << (0u % 32u)), 18513u, ~_wgslsmith_mod_u32(u_input.b, 143256u)), ~(_wgslsmith_clamp_vec4_u32(vec4<u32>(22792u, 27842u, arg_2, 4294967295u), vec4<u32>(global1.x, u_input.b, 65242u, 1u), vec4<u32>(39784u, var_0.c.x, global1.x, 1u)) ^ max(vec4<u32>(u_input.b, 7379u, 4294967295u, 46126u), vec4<u32>(47517u, global1.x, var_0.a.x, var_0.c.x)))) ^ _wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(11588u, 28310u, arg_2, arg_2)) ^ ~abs(vec4<u32>(arg_2, global1.x, 17542u, 19407u)), abs(_wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(0u, 1u, u_input.b, 74057u)), ~vec4<u32>(4294967295u, 4294967295u, global1.x, u_input.b), ~vec4<u32>(22629u, global1.x, var_0.a.x, 4294967295u))));
    var var_1 = firstLeadingBit(max(-abs(u_input.a.xxz), firstLeadingBit(u_input.a.wxx)));
    var_0 = Struct_1(var_0.c.yy, vec2<bool>(arg_2 != arg_2, true), vec3<u32>(countOneBits(firstLeadingBit(var_0.c.x)), ~(~u_input.b), firstTrailingBit(4294967295u)) << (var_0.c % vec3<u32>(32u)));
    global0 = array<vec2<i32>, 2>();
    return vec2<f32>(420f, arg_1.x);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_3) -> f32 {
    var var_0 = _wgslsmith_sub_vec2_i32(vec2<i32>(arg_2.a.b.x << (firstTrailingBit(u_input.b) % 32u), -8561i), firstLeadingBit(vec2<i32>(-1i, _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(arg_2.a.b.x, arg_0.b.x, arg_1.a.b.x, u_input.a.x))))) ^ arg_0.b.xx;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_0.a.x)), -1000f), arg_0.a.x)) * 1006f));
    global1 = vec4<u32>(arg_2.a.c.c.x, 1u, abs(countOneBits(_wgslsmith_div_u32(arg_0.d.a.x, arg_2.a.d.c.x))) & 0u, arg_1.a.c.a.x);
    var_0 = ~_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(~global0[_wgslsmith_index_u32(1622u, 2u)], _wgslsmith_mod_vec2_i32(vec2<i32>(arg_0.b.x, 2147483647i), arg_1.a.b.zy), ~arg_0.b.yz), vec2<i32>(-1i, arg_1.a.b.x)), _wgslsmith_sub_vec2_i32(u_input.a.xx, select(vec2<i32>(37822i, var_0.x), abs(vec2<i32>(-2147483647i, -1i)), arg_1.a.c.b)), arg_2.a.b.zz);
    var var_2 = arg_0.c.b.x;
    return _wgslsmith_f_op_vec2_f32(func_3(arg_1.c.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.a.a) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1957f, -1212f)) * _wgslsmith_f_op_vec2_f32(arg_1.a.a + arg_2.a.a)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.a) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1345f, arg_1.a.a.x))))), u_input.b)).x;
}

fn func_2(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_1) -> vec4<u32> {
    global0 = array<vec2<i32>, 2>();
    let var_0 = vec2<f32>(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(func_4(Struct_2(_wgslsmith_f_op_vec2_f32(func_3(u_input.a.x, vec2<f32>(337f, 345f), 2725u)), max(vec3<i32>(-34921i, -1i, -38489i), u_input.a.zyy), Struct_1(vec2<u32>(arg_2.a.x, arg_2.a.x), arg_1.yy, global1.ywx), Struct_1(vec2<u32>(global1.x, global1.x), vec2<bool>(false, false), arg_2.c)), Struct_4(Struct_2(vec2<f32>(188f, -420f), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), Struct_1(vec2<u32>(arg_2.a.x, 61354u), vec2<bool>(arg_1.x, true), arg_2.c), arg_2), min(arg_2.a.x, u_input.b), _wgslsmith_div_vec2_i32(u_input.a.wy, global0[_wgslsmith_index_u32(1u, 2u)])), Struct_3(Struct_2(vec2<f32>(-468f, -660f), vec3<i32>(1i, u_input.a.x, u_input.a.x), arg_2, arg_2), -1000f, true, _wgslsmith_f_op_f32(min(-759f, 506f)), _wgslsmith_f_op_f32(floor(152f)))))), _wgslsmith_f_op_f32(ceil(1273f)));
    global0 = array<vec2<i32>, 2>();
    var var_1 = Struct_1(~global1.wy, !(!(!arg_2.b)), arg_2.c ^ (countOneBits(global1.wwx) & vec3<u32>(~4294967295u, u_input.b, 4294967295u)));
    let var_2 = 1i;
    return vec4<u32>(~(~u_input.b), _wgslsmith_mod_u32(4294967295u, var_1.a.x), ~4294967295u ^ global1.x, u_input.b);
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: Struct_2) -> Struct_1 {
    var var_0 = func_2(!(!(!arg_2.c.b.x)), !vec4<bool>(true, false, all(select(vec3<bool>(false, false, arg_2.c.b.x), vec3<bool>(arg_2.d.b.x, true, arg_2.d.b.x), arg_2.d.b.x)), !any(vec4<bool>(arg_2.c.b.x, arg_2.d.b.x, false, arg_2.c.b.x))), arg_2.c);
    global1 = ~(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_2.c.c.x, 0u, 13630u, global1.x), vec4<u32>(global1.x, 0u, var_0.x, u_input.b), vec4<u32>(global1.x, u_input.b, 22208u, 1u)), firstLeadingBit(vec4<u32>(global1.x, 0u, global1.x, 1u)), ~vec4<u32>(5843u, arg_2.c.a.x, 20174u, arg_2.d.c.x)), vec4<u32>(4294967295u, ~var_0.x, ~global1.x, ~u_input.b)) & vec4<u32>(var_0.x, firstTrailingBit(_wgslsmith_div_u32(1u, 1u)), arg_2.d.c.x, arg_1));
    let var_1 = arg_2;
    let var_2 = Struct_2(var_1.a, vec3<i32>(_wgslsmith_dot_vec3_i32(arg_2.b, vec3<i32>(u_input.a.x, arg_2.b.x ^ 575i, ~u_input.a.x)), 1i, countOneBits(-76935i)), var_1.d, Struct_1(~arg_2.d.a, select(select(select(var_1.c.b, var_1.c.b, vec2<bool>(var_1.c.b.x, true)), !vec2<bool>(arg_2.d.b.x, false), !arg_2.d.b), !arg_2.d.b, false), _wgslsmith_mult_vec3_u32((vec3<u32>(77035u, u_input.b, var_0.x) << (vec3<u32>(var_0.x, var_1.d.c.x, global1.x) % vec3<u32>(32u))) ^ vec3<u32>(var_0.x, var_1.d.a.x, 53301u), vec3<u32>(abs(arg_2.d.c.x), ~0u, 32348u))));
    var_0 = max(_wgslsmith_clamp_vec4_u32(select(firstLeadingBit(~vec4<u32>(38595u, global1.x, var_0.x, 1u)), ~(~vec4<u32>(74381u, 4294967295u, 4294967295u, global1.x)), false), reverseBits(~vec4<u32>(u_input.b, 51829u, 3057u, var_0.x)), ~vec4<u32>(16846u | u_input.b, arg_2.d.a.x, 45380u, ~124627u)), ~(~vec4<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(42083u, u_input.b, 35782u, 1u), vec4<u32>(var_1.d.a.x, arg_2.d.a.x, arg_2.c.a.x, arg_1)), 0u, 1u)));
    return Struct_1(max((global1.wy | reverseBits(global1.wy)) << (~func_2(false, vec4<bool>(arg_2.d.b.x, var_1.c.b.x, true, var_2.d.b.x), Struct_1(global1.xy, var_2.c.b, global1.zxx)).yz % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(vec2<u32>(~arg_1, 1u), _wgslsmith_add_vec2_u32(vec2<u32>(global1.x, 58721u), ~var_0.zy))), select(!select(vec2<bool>(false, var_2.d.b.x), var_2.d.b, !var_2.c.b), arg_2.d.b, !(!select(var_2.c.b.x, false, false))), var_0.xyy);
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: Struct_4) -> Struct_2 {
    let var_0 = Struct_3(arg_2.a, arg_2.a.a.x, all(!select(vec3<bool>(arg_1.d.b.x, false, arg_2.a.c.b.x), !vec3<bool>(true, arg_1.d.b.x, arg_2.a.d.b.x), true)), arg_2.a.a.x, -401f);
    global1 = ~_wgslsmith_mult_vec4_u32(select(~vec4<u32>(46057u, 1u, arg_2.a.c.a.x, arg_2.b), _wgslsmith_mult_vec4_u32(func_2(arg_1.c.b.x, vec4<bool>(var_0.a.c.b.x, false, true, arg_1.d.b.x), arg_2.a.c), ~vec4<u32>(58659u, arg_1.d.a.x, 4294967295u, arg_2.a.c.c.x)), !select(vec4<bool>(arg_2.a.d.b.x, arg_2.a.d.b.x, arg_1.d.b.x, arg_2.a.c.b.x), vec4<bool>(false, var_0.a.c.b.x, arg_2.a.d.b.x, var_0.c), var_0.a.d.b.x)), firstTrailingBit(~(~vec4<u32>(0u, 0u, 26316u, arg_1.c.a.x))));
    global0 = array<vec2<i32>, 2>();
    return Struct_2(arg_1.a, vec3<i32>(_wgslsmith_mod_i32(5754i, var_0.a.b.x), ~(-2147483647i << (arg_2.b % 32u)) << (_wgslsmith_div_u32(14329u, _wgslsmith_div_u32(var_0.a.c.a.x, global1.x)) % 32u), arg_1.b.x), func_1(var_0.b, max(min(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.c.c.x, 1u, 10752u), var_0.a.c.c), ~var_0.a.c.c.x), 20981u), Struct_2(arg_2.a.a, ~(vec3<i32>(u_input.a.x, -807i, -31833i) & arg_1.b), arg_1.c, var_0.a.c)), func_1(var_0.d, 0u, Struct_2(arg_1.a, arg_1.b, func_1(_wgslsmith_f_op_f32(max(arg_2.a.a.x, -222f)), abs(arg_1.d.c.x), Struct_2(vec2<f32>(arg_2.a.a.x, -1479f), u_input.a.wwy, arg_1.d, arg_2.a.c)), func_1(1379f, 0u, Struct_2(var_0.a.a, arg_1.b, Struct_1(vec2<u32>(u_input.b, arg_2.a.c.a.x), vec2<bool>(true, false), vec3<u32>(78339u, arg_2.b, u_input.b)), Struct_1(vec2<u32>(var_0.a.c.a.x, global1.x), vec2<bool>(false, false), global1.zzy))))));
}

fn func_6(arg_0: Struct_3) -> i32 {
    var var_0 = _wgslsmith_clamp_vec3_i32(select(vec3<i32>(2147483647i, -29335i, -12235i) << (vec3<u32>(_wgslsmith_add_u32(0u, 4294967295u), 0u, _wgslsmith_add_u32(0u, global1.x)) % vec3<u32>(32u)), vec3<i32>(0i, 20115i, ~(i32(-1i) * -1i)), !arg_0.a.c.b.x), _wgslsmith_add_vec3_i32(firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, 34743i, arg_0.a.b.x), arg_0.a.b)) ^ (select(vec3<i32>(u_input.a.x, -1i, -1i), vec3<i32>(-49914i, arg_0.a.b.x, 1i), true) << (vec3<u32>(51094u, global1.x, 45374u) % vec3<u32>(32u))), abs(-(arg_0.a.b & u_input.a.xyw))), ~u_input.a.xxy);
    global1 = ~_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(~arg_0.a.c.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), arg_0.a.d.c.xy), 1u, 19090u ^ global1.x), countOneBits(~vec4<u32>(0u, u_input.b, 4294967295u, 13234u))), firstLeadingBit(vec4<u32>(_wgslsmith_add_u32(arg_0.a.d.a.x, arg_0.a.d.c.x), firstTrailingBit(4968u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 20712u, 4294967295u, arg_0.a.c.a.x), vec4<u32>(0u, arg_0.a.d.c.x, 83001u, arg_0.a.d.c.x)), 0u ^ arg_0.a.c.c.x)));
    global1 = ~vec4<u32>(arg_0.a.d.c.x, 4294967295u, 1u, arg_0.a.c.a.x);
    global2 = array<vec4<f32>, 12>();
    var var_1 = Struct_1(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 22499u), _wgslsmith_mod_vec2_u32(~countOneBits(arg_0.a.d.c.zz), arg_0.a.d.a)), vec2<bool>(((arg_0.b != 1180f) && (var_0.x == var_0.x)) & arg_0.c, arg_0.a.d.b.x), ~arg_0.a.d.c);
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -472f), -1489f, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1652f, 542f), _wgslsmith_f_op_f32(-1564f + 651f), true)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-493f)) * _wgslsmith_f_op_f32(trunc(-2017f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-440f + -1006f)))));
    let var_1 = func_6(Struct_3(func_5(10033u & u_input.b, Struct_2(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-1995f, var_0.x))), ~u_input.a.xyz, func_1(var_0.x, 16876u, Struct_2(vec2<f32>(var_0.x, var_0.x), u_input.a.zzw, Struct_1(global1.yy, vec2<bool>(false, false), global1.zxz), Struct_1(vec2<u32>(u_input.b, global1.x), vec2<bool>(true, false), global1.zzy))), func_1(var_0.x, 52006u, Struct_2(vec2<f32>(var_0.x, var_0.x), u_input.a.xzy, Struct_1(global1.ww, vec2<bool>(false, true), global1.ywx), Struct_1(global1.zx, vec2<bool>(false, true), vec3<u32>(global1.x, global1.x, 80247u))))), Struct_4(Struct_2(vec2<f32>(-539f, -1588f), u_input.a.zyw, Struct_1(global1.wz, vec2<bool>(true, false), vec3<u32>(global1.x, u_input.b, 2474u)), Struct_1(vec2<u32>(55578u, global1.x), vec2<bool>(false, true), global1.ywy)), _wgslsmith_sub_u32(u_input.b, u_input.b), -vec2<i32>(2147483647i, u_input.a.x))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-448f + var_0.x)), var_0.x)), ~1i <= abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-12221i, u_input.a.x), vec2<i32>(u_input.a.x, u_input.a.x))), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-926f * var_0.x), var_0.x))))));
    var var_2 = func_5(func_5(_wgslsmith_dot_vec4_u32(select(~vec4<u32>(global1.x, u_input.b, global1.x, 97334u), firstLeadingBit(vec4<u32>(0u, 0u, 1u, u_input.b)), vec4<bool>(true, true, true, true)), vec4<u32>(u_input.b, 1u ^ global1.x, global1.x, select(u_input.b, global1.x, false))), func_5(u_input.b, Struct_2(vec2<f32>(874f, var_0.x), vec3<i32>(var_1, var_1, u_input.a.x), func_5(1u, Struct_2(vec2<f32>(1260f, var_0.x), u_input.a.yyw, Struct_1(global1.xz, vec2<bool>(false, true), global1.wzy), Struct_1(global1.ww, vec2<bool>(false, false), global1.yyy)), Struct_4(Struct_2(vec2<f32>(-1410f, var_0.x), u_input.a.zyz, Struct_1(global1.yy, vec2<bool>(false, true), vec3<u32>(36322u, 4294967295u, global1.x)), Struct_1(vec2<u32>(global1.x, global1.x), vec2<bool>(false, false), vec3<u32>(4294967295u, global1.x, 36415u))), global1.x, vec2<i32>(-7708i, 0i))).c, Struct_1(vec2<u32>(40590u, u_input.b), vec2<bool>(true, false), global1.www)), Struct_4(Struct_2(vec2<f32>(-685f, -727f), u_input.a.zzz, Struct_1(global1.wy, vec2<bool>(false, true), global1.zwz), Struct_1(global1.xz, vec2<bool>(false, false), global1.xzw)), abs(global1.x), vec2<i32>(u_input.a.x, var_1))), Struct_4(func_5(0u, func_5(15525u, Struct_2(vec2<f32>(605f, -933f), vec3<i32>(var_1, 36067i, 1i), Struct_1(global1.xx, vec2<bool>(true, false), vec3<u32>(1u, 35093u, 12470u)), Struct_1(global1.zz, vec2<bool>(true, false), vec3<u32>(global1.x, 4294967295u, 1u))), Struct_4(Struct_2(vec2<f32>(var_0.x, var_0.x), u_input.a.wxx, Struct_1(vec2<u32>(0u, u_input.b), vec2<bool>(false, false), vec3<u32>(0u, 1u, global1.x)), Struct_1(vec2<u32>(global1.x, global1.x), vec2<bool>(false, false), vec3<u32>(u_input.b, 30246u, global1.x))), u_input.b, u_input.a.wz)), Struct_4(Struct_2(vec2<f32>(var_0.x, var_0.x), vec3<i32>(u_input.a.x, -42371i, -2147483647i), Struct_1(global1.zy, vec2<bool>(false, true), vec3<u32>(global1.x, 1u, 4294967295u)), Struct_1(vec2<u32>(4294967295u, u_input.b), vec2<bool>(true, true), vec3<u32>(global1.x, u_input.b, 0u))), u_input.b, global0[_wgslsmith_index_u32(u_input.b, 2u)])), 4294967295u & func_2(true, vec4<bool>(true, true, true, true), Struct_1(global1.zy, vec2<bool>(false, false), global1.wxw)).x, vec2<i32>(~var_1, -u_input.a.x))).c.c.x, Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, var_0.x), vec2<f32>(var_0.x, var_0.x)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(490f, -240f) - vec2<f32>(var_0.x, -890f))), vec3<i32>(-2147483647i, u_input.a.x << (8086u % 32u), countOneBits(~(-66885i))), Struct_1(vec2<u32>(global1.x, 0u), vec2<bool>(true, true), global1.xzw), func_5(0u, func_5(~global1.x, func_5(4294967295u, Struct_2(vec2<f32>(-1033f, -475f), vec3<i32>(u_input.a.x, -34063i, var_1), Struct_1(global1.ww, vec2<bool>(false, false), vec3<u32>(1u, 83049u, global1.x)), Struct_1(vec2<u32>(41106u, 40106u), vec2<bool>(true, true), global1.xwx)), Struct_4(Struct_2(vec2<f32>(806f, var_0.x), u_input.a.xyw, Struct_1(vec2<u32>(u_input.b, global1.x), vec2<bool>(true, false), global1.yxx), Struct_1(vec2<u32>(13268u, 1u), vec2<bool>(false, true), vec3<u32>(0u, global1.x, 19021u))), u_input.b, u_input.a.xw)), Struct_4(Struct_2(vec2<f32>(-669f, 963f), u_input.a.ywz, Struct_1(vec2<u32>(u_input.b, 0u), vec2<bool>(true, true), global1.yyw), Struct_1(global1.zw, vec2<bool>(false, true), vec3<u32>(u_input.b, 90023u, u_input.b))), global1.x, global0[_wgslsmith_index_u32(21709u, 2u)])), Struct_4(func_5(1u, Struct_2(vec2<f32>(1479f, -192f), u_input.a.wwz, Struct_1(global1.zx, vec2<bool>(true, true), global1.yxx), Struct_1(global1.xx, vec2<bool>(true, true), vec3<u32>(90365u, 4294967295u, u_input.b))), Struct_4(Struct_2(vec2<f32>(-536f, var_0.x), u_input.a.wyx, Struct_1(global1.yy, vec2<bool>(false, true), global1.xzz), Struct_1(vec2<u32>(31714u, 66726u), vec2<bool>(false, false), global1.xwy)), 65335u, vec2<i32>(-25614i, -4889i))), 27280u, ~global0[_wgslsmith_index_u32(u_input.b, 2u)])).d), Struct_4(Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1376f, var_0.x)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1366f, 2129f) * vec2<f32>(762f, var_0.x))), countOneBits(-vec3<i32>(var_1, 65633i, u_input.a.x)), Struct_1(abs(vec2<u32>(global1.x, 1u)), select(vec2<bool>(false, false), vec2<bool>(true, false), false), vec3<u32>(4294967295u, global1.x, global1.x)), Struct_1(vec2<u32>(global1.x, u_input.b), vec2<bool>(true, true), ~vec3<u32>(global1.x, global1.x, 1u))), ~abs(u_input.b) ^ 1u, -global0[_wgslsmith_index_u32(u_input.b, 2u)])).a;
    var var_3 = Struct_3(func_5(~0u & func_1(_wgslsmith_f_op_f32(select(945f, var_0.x, true)), ~u_input.b, func_5(2102u, Struct_2(vec2<f32>(-1006f, var_2.x), vec3<i32>(u_input.a.x, var_1, var_1), Struct_1(global1.wz, vec2<bool>(true, false), global1.zwy), Struct_1(vec2<u32>(4294967295u, 0u), vec2<bool>(false, false), vec3<u32>(4056u, u_input.b, global1.x))), Struct_4(Struct_2(vec2<f32>(708f, var_0.x), u_input.a.zyx, Struct_1(global1.zw, vec2<bool>(true, false), vec3<u32>(8188u, global1.x, u_input.b)), Struct_1(global1.wy, vec2<bool>(true, true), global1.yzz)), 1u, vec2<i32>(u_input.a.x, 18902i)))).a.x, func_5(u_input.b, Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, 1000f)), reverseBits(u_input.a.xzy), func_5(3750u, Struct_2(vec2<f32>(-136f, var_0.x), u_input.a.xzy, Struct_1(global1.wx, vec2<bool>(true, false), vec3<u32>(global1.x, 1u, 0u)), Struct_1(global1.zy, vec2<bool>(false, true), global1.wzx)), Struct_4(Struct_2(vec2<f32>(365f, 1889f), vec3<i32>(var_1, var_1, 0i), Struct_1(global1.xz, vec2<bool>(false, false), vec3<u32>(u_input.b, 0u, global1.x)), Struct_1(vec2<u32>(global1.x, 0u), vec2<bool>(false, false), global1.yyz)), global1.x, u_input.a.zw)).c, Struct_1(vec2<u32>(u_input.b, global1.x), vec2<bool>(true, false), vec3<u32>(global1.x, u_input.b, 2119u))), Struct_4(func_5(u_input.b, Struct_2(vec2<f32>(540f, -358f), u_input.a.xwy, Struct_1(vec2<u32>(4294967295u, 22873u), vec2<bool>(true, true), global1.wzw), Struct_1(global1.wy, vec2<bool>(false, true), global1.wyy)), Struct_4(Struct_2(vec2<f32>(var_0.x, 273f), u_input.a.yxw, Struct_1(global1.wz, vec2<bool>(false, true), global1.wyy), Struct_1(vec2<u32>(u_input.b, u_input.b), vec2<bool>(true, false), global1.zwy)), 0u, vec2<i32>(u_input.a.x, 0i))), 4294967295u, global0[_wgslsmith_index_u32(global1.x, 2u)] << (global1.wy % vec2<u32>(32u)))), Struct_4(func_5(select(25699u, 21283u, false), Struct_2(vec2<f32>(var_0.x, 239f), vec3<i32>(u_input.a.x, 0i, var_1), Struct_1(global1.zx, vec2<bool>(false, false), global1.zwx), Struct_1(vec2<u32>(global1.x, u_input.b), vec2<bool>(true, false), vec3<u32>(6654u, 0u, 11689u))), Struct_4(Struct_2(vec2<f32>(var_0.x, var_2.x), vec3<i32>(u_input.a.x, -35306i, var_1), Struct_1(vec2<u32>(0u, 16231u), vec2<bool>(false, true), global1.yxw), Struct_1(vec2<u32>(u_input.b, u_input.b), vec2<bool>(true, true), vec3<u32>(global1.x, global1.x, global1.x))), global1.x, vec2<i32>(2147483647i, u_input.a.x))), ~_wgslsmith_add_u32(u_input.b, 1u), _wgslsmith_add_vec2_i32(u_input.a.xy >> (global1.zx % vec2<u32>(32u)), min(u_input.a.zz, vec2<i32>(-22097i, u_input.a.x))))), _wgslsmith_f_op_f32(-var_0.x), func_5(u_input.b, Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 1055f)), ~vec3<i32>(u_input.a.x, u_input.a.x, var_1), Struct_1(global1.zy, vec2<bool>(true, false), vec3<u32>(u_input.b, u_input.b, global1.x)), func_5(13801u, Struct_2(vec2<f32>(var_0.x, var_2.x), vec3<i32>(var_1, var_1, u_input.a.x), Struct_1(vec2<u32>(global1.x, global1.x), vec2<bool>(false, false), global1.yzw), Struct_1(vec2<u32>(1u, 4294967295u), vec2<bool>(false, true), global1.wyw)), Struct_4(Struct_2(vec2<f32>(var_2.x, var_2.x), u_input.a.zwz, Struct_1(global1.wz, vec2<bool>(true, true), vec3<u32>(u_input.b, u_input.b, global1.x)), Struct_1(global1.yz, vec2<bool>(true, false), vec3<u32>(global1.x, 1u, u_input.b))), u_input.b, u_input.a.xw)).d), Struct_4(Struct_2(vec2<f32>(2051f, var_0.x), vec3<i32>(10401i, -1i, -9824i), Struct_1(global1.wz, vec2<bool>(false, false), global1.zwx), Struct_1(vec2<u32>(4294967295u, 28363u), vec2<bool>(true, false), vec3<u32>(global1.x, 21770u, global1.x))), u_input.b, ~vec2<i32>(u_input.a.x, var_1))).d.b.x && (((-49896i >> (u_input.b % 32u)) >= (22815i << (global1.x % 32u))) & select(any(vec2<bool>(true, true)), false, select(true, true, true))), _wgslsmith_f_op_f32(f32(-1f) * -978f), var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(func_2(all(vec4<bool>(true, true, true, true)), !select(vec4<bool>(false, true, var_3.a.d.b.x, var_3.c), select(vec4<bool>(var_3.a.c.b.x, var_3.c, var_3.a.c.b.x, var_3.c), vec4<bool>(var_3.c, false, var_3.a.d.b.x, true), vec4<bool>(true, false, false, var_3.c)), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, var_3.c), vec4<bool>(true, var_3.a.d.b.x, false, false))), func_1(var_3.a.a.x, 0u, var_3.a)).wzz, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(step(var_3.a.a.x, 2508f)), var_3.e, _wgslsmith_f_op_f32(min(-619f, _wgslsmith_f_op_f32(-1401f * var_3.d)))))), _wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(u_input.b, 12u)]));
}

