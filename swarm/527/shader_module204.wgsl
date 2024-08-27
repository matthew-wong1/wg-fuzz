struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7>;

var<private> global1: Struct_1;

var<private> global2: array<vec3<f32>, 19> = array<vec3<f32>, 19>(vec3<f32>(1256f, -1762f, -922f), vec3<f32>(-1000f, 1000f, -1000f), vec3<f32>(971f, -1106f, 503f), vec3<f32>(-259f, -1000f, 1057f), vec3<f32>(-607f, 163f, 263f), vec3<f32>(2949f, -865f, 477f), vec3<f32>(364f, 372f, 1194f), vec3<f32>(-1000f, -313f, -1260f), vec3<f32>(1417f, -244f, -1000f), vec3<f32>(205f, -270f, 590f), vec3<f32>(-1000f, -1022f, -1218f), vec3<f32>(-1000f, -601f, 255f), vec3<f32>(-2191f, -1612f, -1634f), vec3<f32>(-786f, -830f, 147f), vec3<f32>(-1256f, -452f, 636f), vec3<f32>(1401f, 1000f, 1055f), vec3<f32>(1122f, -531f, -869f), vec3<f32>(2191f, 1083f, 1118f), vec3<f32>(-1397f, 1503f, 904f));

var<private> global3: array<Struct_1, 14>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    let var_0 = select(vec2<bool>(false, !select(arg_2.c, any(vec3<bool>(true, arg_2.c, false)), arg_0.x >= u_input.a)), select(select(select(!vec2<bool>(arg_1.c, false), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(arg_2.c, true), vec2<bool>(arg_1.c, arg_2.c))), select(vec2<bool>(false, arg_2.c), !vec2<bool>(true, arg_2.c), vec2<bool>(false, true)), !(!global1.c)), select(!(!vec2<bool>(false, arg_1.c)), select(vec2<bool>(global1.c, true), vec2<bool>(arg_1.c, true), true), !vec2<bool>(false, arg_1.c)), select(select(vec2<bool>(global1.c, global1.c), !vec2<bool>(true, arg_2.c), vec2<bool>(true, true)), !vec2<bool>(arg_1.c, arg_1.c), vec2<bool>(true, true))), vec2<bool>(all(vec3<bool>(!global1.c, true, all(vec4<bool>(false, arg_2.c, false, false)))), !arg_2.c));
    let var_1 = Struct_1(~(~(~global1.a) & 4294967295u), ~(~(~(~4049u))), false);
    var var_2 = vec4<f32>(438f, -1785f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(1837f, 354f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1670f)))), -144f);
    var var_3 = ~arg_2.b & _wgslsmith_sub_u32(27156u & ~var_1.a, arg_1.a);
    var var_4 = var_2.zx;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - 378f);
}

fn func_4(arg_0: f32, arg_1: bool) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(0u, 19u)]) - vec3<f32>(arg_0, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), -1148f)), 1275f));
    global1 = global3[_wgslsmith_index_u32(abs(global1.a), 14u)];
    global0 = array<Struct_1, 7>();
    let var_1 = (~(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -2147483647i, u_input.a), vec3<i32>(u_input.a, 2147483647i, 27171i))) & -_wgslsmith_mult_i32(min(2147483647i, 0i), u_input.a & 0i)) << (1u % 32u);
    var var_2 = reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(~global1.a, _wgslsmith_sub_u32(global1.a, ~6638u), _wgslsmith_mult_u32(_wgslsmith_add_u32(18255u, 63221u), global1.b)), vec3<u32>(~max(1u, 1u), global1.b, 59960u)));
    return min(~vec3<u32>(32675u, 0u, countOneBits(100167u)), select(select(firstTrailingBit(vec3<u32>(76222u, 44490u, 29148u)), ~(~vec3<u32>(4294967295u, 105879u, 4294967295u)), (arg_1 || global1.c) & any(vec3<bool>(global1.c, arg_1, false))), vec3<u32>(var_2.x, global1.b, 53474u), all(vec4<bool>(var_2.x > var_2.x, arg_1 | false, u_input.a < -29089i, true))));
}

fn func_2(arg_0: vec4<u32>) -> u32 {
    global0 = array<Struct_1, 7>();
    var var_0 = func_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(abs(vec2<i32>(1i, 9534i)), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 44213u), 14u)], global0[_wgslsmith_index_u32(1u & arg_0.x, 7u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -872f)))), true);
    global2 = array<vec3<f32>, 19>();
    var var_1 = global0[_wgslsmith_index_u32(max(~(select(54359u, _wgslsmith_clamp_u32(0u, 0u, var_0.x), true) ^ 51367u), 1u), 7u)];
    var var_2 = Struct_1(var_0.x, ~(~_wgslsmith_dot_vec2_u32(var_0.yy | arg_0.xz, vec2<u32>(4294967295u, var_0.x))), select(global1.c, any(select(vec3<bool>(false, var_1.c, false), !vec3<bool>(true, true, global1.c), !global1.c)), true));
    return ~_wgslsmith_sub_u32(1u, ~_wgslsmith_dot_vec2_u32(min(vec2<u32>(1u, 0u), var_0.yx), _wgslsmith_clamp_vec2_u32(var_0.yy, var_0.xz, arg_0.wz)));
}

fn func_1(arg_0: vec3<i32>, arg_1: f32, arg_2: vec4<f32>, arg_3: f32) -> vec2<f32> {
    let var_0 = ~1u;
    var var_1 = ~vec2<u32>(firstTrailingBit(var_0) | global1.a, 35859u) & (firstLeadingBit(~_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, var_0), vec2<u32>(global1.a, var_0))) | vec2<u32>(reverseBits(func_2(vec4<u32>(global1.a, var_0, 0u, 44703u))), (53533u >> (global1.b % 32u)) | reverseBits(23260u)));
    var var_2 = global0[_wgslsmith_index_u32(var_1.x, 7u)];
    global3 = array<Struct_1, 14>();
    var var_3 = -140f;
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(arg_2.xz)), vec2<f32>(_wgslsmith_f_op_f32(func_3(arg_0.zy, Struct_1(1u, 14524u, !var_2.c), Struct_1(20333u, _wgslsmith_clamp_u32(42688u, 0u, 1u), var_2.c))), _wgslsmith_f_op_f32(func_3(arg_0.zx, Struct_1(_wgslsmith_add_u32(global1.a, global1.b), ~15812u, false), Struct_1(var_1.x, 1u, false)))), vec2<bool>(global1.c != true, ~u_input.a < u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(min(~(~35647u), global1.b), abs(max(_wgslsmith_clamp_u32(1u, global1.a, 62318u) | global1.b, ~(~global1.a))), true);
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(211f, 379f))) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-249f, -1171f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-974f, 1100f) + vec2<f32>(-1000f, -1351f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-361f, 357f)) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1019f), _wgslsmith_f_op_f32(trunc(-841f))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(vec3<i32>(-1i, u_input.a, u_input.a), -476f, vec4<f32>(-247f, 1804f, -389f, 2776f), 1000f)))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(var_0.b, 19u)]);
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2.x + var_2.x))), var_2.x)), _wgslsmith_f_op_f32(func_3(select(vec2<i32>(u_input.a, 0i), countOneBits(vec2<i32>(-32226i, -2147483647i)), select(!vec2<bool>(global1.c, var_0.c), select(vec2<bool>(false, var_0.c), vec2<bool>(false, false), var_0.c), !vec2<bool>(global1.c, true))), global3[_wgslsmith_index_u32(~var_0.b, 14u)], global3[_wgslsmith_index_u32(reverseBits(abs(var_0.a)), 14u)])), var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2065f - 1f) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.x - -167f), _wgslsmith_f_op_f32(max(var_2.x, -932f))))));
    var var_4 = 1u;
    let var_5 = Struct_1(93764u, ~select(var_0.a, _wgslsmith_clamp_u32(global1.b, var_0.b, var_0.b), global1.c) | ~_wgslsmith_div_u32(global1.a, _wgslsmith_add_u32(0u, 17080u)), var_0.b == global1.b);
    var var_6 = countOneBits(reverseBits(~vec4<i32>(-u_input.a, _wgslsmith_add_i32(18462i, u_input.a), max(u_input.a, u_input.a), max(u_input.a, u_input.a))));
    let var_7 = vec2<bool>(all(!(!select(vec3<bool>(true, var_0.c, false), vec3<bool>(var_5.c, true, var_0.c), var_5.c))), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1381f, var_1.x, var_2.x, -368f))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(var_3.x, 1000f, var_3.x, -2543f), vec4<f32>(var_3.x, var_2.x, -675f, -363f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, var_2.x, 420f, var_3.x)), any(vec3<bool>(var_0.c, true, var_7.x))))))), vec4<i32>(select(-28540i, var_6.x, true), var_6.x << (~_wgslsmith_mult_u32(var_5.b, 175051u) % 32u), u_input.a, min(_wgslsmith_add_i32(var_6.x, 2147483647i), countOneBits(~(-6777i)))), i32(-1i) * -_wgslsmith_sub_i32(u_input.a & 1i, ~var_6.x));
}

