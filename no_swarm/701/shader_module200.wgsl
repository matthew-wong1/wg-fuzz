struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec2<u32>,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
    e: vec4<u32>,
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

var<private> global0: array<Struct_3, 4>;

var<private> global1: f32 = 637f;

var<private> global2: array<vec3<bool>, 12> = array<vec3<bool>, 12>(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: f32, arg_3: i32) -> vec3<bool> {
    global0 = array<Struct_3, 4>();
    global0 = array<Struct_3, 4>();
    let var_0 = ~abs(arg_0);
    global2 = array<vec3<bool>, 12>();
    return !select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), any(vec4<bool>(false, true, true, true))), global2[_wgslsmith_index_u32(arg_0, 12u)], !vec3<bool>(u_input.c == u_input.c, all(vec4<bool>(true, false, true, false)), true));
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: vec3<bool>) -> u32 {
    return ~(_wgslsmith_add_u32(u_input.e.x, 11751u & _wgslsmith_mult_u32(0u, u_input.e.x)) | 4039u);
}

fn func_2(arg_0: Struct_2, arg_1: vec4<u32>) -> f32 {
    let var_0 = Struct_2(50135u, vec2<u32>(~func_4(~u_input.e.x, _wgslsmith_f_op_f32(-777f + 396f), func_3(u_input.e.x, global0[_wgslsmith_index_u32(arg_0.d.c.x, 4u)], arg_0.c.x, -1i)), ~_wgslsmith_dot_vec3_u32(arg_1.xyx, vec3<u32>(arg_1.x, 36666u, u_input.e.x))), vec2<f32>(_wgslsmith_f_op_f32(exp2(arg_0.d.a.x)), 127f), arg_0.d);
    let var_1 = vec4<i32>(~(-var_0.d.d), abs(-1i), ~(var_0.d.d | var_0.d.d), _wgslsmith_mult_i32(abs(u_input.c), _wgslsmith_add_i32(-u_input.d, ~firstLeadingBit(-2147483647i))));
    global2 = array<vec3<bool>, 12>();
    let var_2 = Struct_3(select(min(_wgslsmith_mult_vec2_i32(var_1.yx, vec2<i32>(7800i, var_0.d.d)) | var_1.yz, var_1.yw), -abs(abs(var_1.zw)), any(select(!global2[_wgslsmith_index_u32(u_input.e.x, 12u)], vec3<bool>(true, false, false), vec3<bool>(true, true, true)))), ~_wgslsmith_add_vec4_u32(u_input.e, _wgslsmith_mod_vec4_u32(min(vec4<u32>(4294967295u, u_input.e.x, u_input.e.x, var_0.d.c.x), vec4<u32>(arg_0.b.x, 4294967295u, var_0.d.c.x, u_input.e.x)), arg_1)));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d.b.x, arg_0.d.a.x, var_0.d.a.x, var_0.d.a.x) * vec4<f32>(arg_0.c.x, arg_0.c.x, -1050f, arg_0.d.a.x))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.d.a.x, -724f, var_0.c.x, arg_0.c.x))))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1580f * _wgslsmith_f_op_f32(-arg_0.c.x)));
}

fn func_1(arg_0: bool) -> vec2<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-676f, 130f, 1000f))))) * vec3<f32>(_wgslsmith_f_op_f32(select(-419f, -502f, false)), 104f, -1821f))), vec3<f32>(2060f, _wgslsmith_f_op_f32(func_2(Struct_2(u_input.e.x, _wgslsmith_div_vec2_u32(vec2<u32>(4804u, 41999u), u_input.e.wx), _wgslsmith_f_op_vec2_f32(-vec2<f32>(302f, 761f)), Struct_1(vec3<f32>(1148f, -408f, 857f), vec3<f32>(484f, -582f, 563f), vec2<u32>(22340u, 59600u), 1i)), _wgslsmith_add_vec4_u32(u_input.e, vec4<u32>(u_input.e.x, 1u, 4294967295u, u_input.e.x)))), 1948f), select(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.e.x, 1u), ~u_input.e.xz, vec2<u32>(u_input.e.x, u_input.e.x)) << (_wgslsmith_div_vec2_u32(countOneBits(vec2<u32>(4294967295u, 4294967295u)), ~vec2<u32>(14975u, u_input.e.x)) % vec2<u32>(32u)), firstLeadingBit(u_input.e.yx), true), firstTrailingBit(0i));
    global2 = array<vec3<bool>, 12>();
    global1 = _wgslsmith_f_op_f32(-1129f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2(Struct_2(var_0.c.x, vec2<u32>(u_input.e.x, 81315u), var_0.a.yz, var_0), ~u_input.e)))));
    global1 = 592f;
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_2(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c.x, 4294967295u), abs(vec2<u32>(1u, var_0.c.x))), select(u_input.e.zy, vec2<u32>(4396u, 4294967295u) ^ vec2<u32>(u_input.e.x, var_0.c.x), vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(-var_0.b.zx), Struct_1(vec3<f32>(var_0.a.x, var_0.b.x, -655f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(904f, var_0.a.x, var_0.b.x)), max(var_0.c, vec2<u32>(29769u, 0u)), 1i)), u_input.e)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-618f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1121f * var_0.b.x) * _wgslsmith_f_op_f32(-var_0.b.x)))) + 1170f));
    return vec2<bool>(false, true);
}

fn func_5(arg_0: u32, arg_1: bool, arg_2: vec3<bool>) -> vec4<f32> {
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(2610f)))), 1000f);
    let var_0 = Struct_4(Struct_2(u_input.e.x, ~select(vec2<u32>(100581u, 1u), firstTrailingBit(u_input.e.xy), arg_2.xy), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-338f, 169f))), _wgslsmith_f_op_f32(floor(-243f))), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1448f, -847f, 1000f)), vec3<f32>(1054f, -245f, 1038f)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1121f, 875f, 1469f), vec3<f32>(-697f, 708f, 287f))))), u_input.e.yz, u_input.d)));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(round(var_0.a.c.x)), _wgslsmith_f_op_f32(abs(-576f)));
    let var_2 = Struct_3(_wgslsmith_add_vec2_i32(-_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, u_input.c), vec2<i32>(u_input.c, u_input.b)), ~vec2<i32>(var_0.a.d.d, u_input.a)), select(-abs(vec2<i32>(u_input.b, var_0.a.d.d)), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(-56864i, var_0.a.d.d), vec2<i32>(1i, -8866i), vec2<i32>(u_input.b, var_0.a.d.d)), select(select(vec2<bool>(arg_2.x, false), arg_2.xx, true), vec2<bool>(false, true), vec2<bool>(arg_2.x, true)))), abs(~vec4<u32>(50752u, countOneBits(4294967295u), u_input.e.x, 1u)));
    let var_3 = firstTrailingBit(min(~var_2.a.x, _wgslsmith_sub_i32(-firstTrailingBit(-4029i), 0i)));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(310f + -163f), _wgslsmith_f_op_f32(floor(329f)), _wgslsmith_f_op_f32(trunc(var_1.x)), -1136f), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-2022f, var_0.a.d.b.x, var_1.x, var_1.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-902f, 1242f, var_1.x, var_1.x))))))) * _wgslsmith_div_vec4_f32(vec4<f32>(var_0.a.c.x, -122f, var_1.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(var_1.x, -1000f))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_0.a.c.x, 138f, -508f))), vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.d.b.x), var_0.a.c.x, _wgslsmith_f_op_f32(sign(var_0.a.d.b.x)), var_0.a.d.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(i32(-1i) * -_wgslsmith_div_i32(min(u_input.c, 41942i), -25412i));
    var var_1 = _wgslsmith_f_op_vec4_f32(func_5(~(~4294967295u), all(!select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, false), true)), vec3<bool>(any(func_1(true)), !(-1i == u_input.c), all(!func_3(60u, Struct_3(vec2<i32>(var_0, 1i), u_input.e), -1020f, var_0).zz))));
    let var_2 = -441f;
    var var_3 = ~u_input.e.yy;
    global0 = array<Struct_3, 4>();
    var var_4 = !all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, any(vec2<bool>(true, false)), var_0 > 2147483647i), vec4<bool>(true, true, true, true)));
    var var_5 = ~max(~(~_wgslsmith_clamp_vec4_u32(u_input.e, u_input.e, u_input.e)), vec4<u32>((var_3.x ^ u_input.e.x) << (var_3.x % 32u), u_input.e.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(var_3.x, 1u), ~u_input.e.xx), ~(~u_input.e.x)));
    var_1 = vec4<f32>(var_1.x, var_1.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.x - 1511f), var_1.x)), _wgslsmith_f_op_f32(-var_2))), 390f);
    var var_6 = Struct_2(_wgslsmith_div_u32(min(_wgslsmith_clamp_u32(u_input.e.x | 50377u, 0u, _wgslsmith_clamp_u32(var_3.x, 0u, 4294967295u)), var_5.x), u_input.e.x), min(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.e.x, ~1u), _wgslsmith_div_vec2_u32(~vec2<u32>(u_input.e.x, u_input.e.x), ~var_5.xw), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(var_5.x, var_5.x), vec2<u32>(16239u, u_input.e.x), var_5.xx)), vec2<u32>(~62354u, 50603u) | u_input.e.wz), var_1.xx, Struct_1(var_1.zzx, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(var_1.yzx))))), var_5.wz, ~u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~firstLeadingBit(firstLeadingBit(vec4<u32>(var_6.b.x, var_3.x, u_input.e.x, 1u)))));
}

