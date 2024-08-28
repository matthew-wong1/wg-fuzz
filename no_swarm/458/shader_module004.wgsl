struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec4<bool>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 5> = array<vec4<i32>, 5>(vec4<i32>(49557i, 24786i, i32(-2147483648), i32(-2147483648)), vec4<i32>(-39407i, -27052i, 2147483647i, -3607i), vec4<i32>(26477i, 13288i, -3006i, 2147483647i), vec4<i32>(i32(-2147483648), 2147483647i, 2147483647i, -1i), vec4<i32>(-7856i, -1i, -65943i, 30433i));

var<private> global1: array<Struct_1, 16>;

var<private> global2: bool = true;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<bool> {
    var var_0 = Struct_1(1075f, _wgslsmith_div_vec4_f32(vec4<f32>(-1073f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(424f, -247f), -584f)), _wgslsmith_f_op_f32(-104f - -519f), _wgslsmith_f_op_f32(ceil(1f))), vec4<f32>(_wgslsmith_f_op_f32(select(-347f, -502f, true)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f * 529f), -924f, true)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(716f, 1052f)))), select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec2<bool>(false, true)) & (u_input.a >= u_input.a), true, false, true), true), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1040f, 856f, 146f))) - vec3<f32>(-134f, -596f, -1190f))))));
    let var_1 = select(firstTrailingBit(max(vec3<u32>(54377u, 33697u, ~4294967295u), countOneBits(~vec3<u32>(0u, u_input.a, u_input.a)))), max(vec3<u32>(countOneBits(1851u), firstLeadingBit(53562u), ~_wgslsmith_clamp_u32(0u, 4294967295u, 4294967295u)), vec3<u32>(~(~u_input.a), 56408u, firstTrailingBit(_wgslsmith_sub_u32(u_input.a, 45516u)))), select(select(!select(var_0.c.yzw, vec3<bool>(true, true, var_0.c.x), var_0.c.x), select(var_0.c.yxy, var_0.c.yyx, !var_0.c.x), vec3<bool>(var_0.c.x, u_input.b > 0i, all(var_0.c))), select(var_0.c.wwz, !select(vec3<bool>(true, true, false), vec3<bool>(var_0.c.x, var_0.c.x, var_0.c.x), vec3<bool>(var_0.c.x, var_0.c.x, var_0.c.x)), select(var_0.c.x, false, var_0.c.x) & any(var_0.c.wxw)), all(var_0.c.zy)));
    let var_2 = var_0.d.x;
    var var_3 = true;
    global0 = array<vec4<i32>, 5>();
    return vec3<bool>(true, all(vec4<bool>(any(var_0.c.yzx) & true, var_0.c.x, true, var_0.c.x)), true);
}

fn func_2() -> vec4<i32> {
    var var_0 = ~_wgslsmith_clamp_u32(abs(u_input.a), 4294967295u, 2228u);
    var var_1 = global1[_wgslsmith_index_u32(~u_input.a << (select(u_input.a, ~(u_input.a << (u_input.a % 32u)), all(select(func_3(), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))) % 32u), 16u)];
    return -vec4<i32>(26360i, i32(-1i) * -u_input.c.x, u_input.b, u_input.b | -77641i);
}

fn func_1() -> vec4<u32> {
    global1 = array<Struct_1, 16>();
    var var_0 = _wgslsmith_sub_vec4_i32(~abs(vec4<i32>(u_input.c.x, abs(u_input.c.x), 9631i, firstLeadingBit(u_input.b))), ~select(u_input.c | vec4<i32>(u_input.c.x, -8667i, -2147483647i, 0i), func_2(), vec4<bool>(true, true, true, true)));
    global0 = array<vec4<i32>, 5>();
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1f + -596f)));
    var var_2 = u_input.a;
    return select(select(_wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), vec4<u32>(4294967295u, u_input.a, 1u, u_input.a) >> (vec4<u32>(84105u, u_input.a, u_input.a, 4294967295u) % vec4<u32>(32u)), vec4<bool>(true, true, true, true)) << (~vec4<u32>(1u, 47327u, 4294967295u, u_input.a) % vec4<u32>(32u)), ~vec4<u32>(4294967295u ^ u_input.a, u_input.a, ~u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 31702u, u_input.a), vec3<u32>(0u, 0u, u_input.a))), all(vec2<bool>(true, true))) & ~abs(~(~vec4<u32>(27336u, 24923u, u_input.a, 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(select(firstTrailingBit(abs(func_1())), firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 69613u, 59513u, u_input.a), vec4<u32>(1u, u_input.a, u_input.a, 1u)) | reverseBits(vec4<u32>(u_input.a, u_input.a, 4294967295u, 0u))), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false)), true), vec4<bool>(true, true, true, any(vec4<bool>(false, false, true, false))), !any(vec3<bool>(true, false, true)))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-296f, -1000f), _wgslsmith_f_op_f32(trunc(875f)), _wgslsmith_f_op_f32(f32(-1f) * -712f), _wgslsmith_f_op_f32(-269f + 2331f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(238f, -759f, 707f, -739f)))), !(any(vec3<bool>(false, true, false)) && true))), select(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), false), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1064f, 235f, -277f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(639f, -116f, 1000f), vec3<f32>(1833f, 579f, -1227f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(438f, -119f, -358f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(593f, 214f, 442f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(888f, 693f, 1000f))) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-680f, -934f, 303f)))))));
    global1 = array<Struct_1, 16>();
    var var_2 = func_3().xy;
    var_2 = vec2<bool>(true, var_2.x);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-1000f - 195f), vec4<f32>(_wgslsmith_f_op_f32(var_1.a + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.b.x, var_1.b.x, false)) + -834f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(var_1.d.x)), var_1.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.d.x - -1355f))) - var_1.b.x)), var_1.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a, -421f, -409f) - var_1.d) + _wgslsmith_div_vec3_f32(vec3<f32>(var_1.b.x, -933f, var_1.a), _wgslsmith_f_op_vec3_f32(var_1.b.xxy * var_1.d))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)), 629f, var_1.d.x)));
    var_2 = vec2<bool>(!(!var_3.c.x), ~(4294967295u | u_input.a) <= ~var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(0u, reverseBits(1u << (var_0.x % 32u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.a, 758f)), -561f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(var_3.b - vec4<f32>(var_1.d.x, var_3.b.x, var_3.a, -382f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1768f, var_3.d.x, var_1.b.x, var_3.a) + vec4<f32>(-2710f, var_1.d.x, var_3.d.x, 2832f)), true)))));
}

