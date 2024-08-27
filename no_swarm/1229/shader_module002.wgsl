struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: u32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<f32>,
    c: Struct_3,
    d: bool,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(0u, 18537u);

var<private> global1: array<i32, 22> = array<i32, 22>(-27220i, -1i, 0i, 1i, 7604i, 1i, 1i, i32(-2147483648), 15769i, 0i, -1i, 25161i, 51354i, 0i, 2147483647i, 28925i, 19584i, 15545i, 1i, i32(-2147483648), 10209i, -10724i);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_5, arg_1: Struct_4, arg_2: f32, arg_3: i32) -> vec2<f32> {
    let var_0 = abs(abs(min(vec4<i32>(-16198i, _wgslsmith_div_i32(u_input.c, -14152i), 1i, u_input.c), -u_input.d)));
    var var_1 = _wgslsmith_f_op_f32(trunc(505f));
    var var_2 = countOneBits(arg_1.c.a.a);
    var_1 = _wgslsmith_f_op_f32(-arg_2);
    return arg_1.a.a.b.yw;
}

fn func_2() -> vec4<f32> {
    var var_0 = Struct_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_5(vec2<f32>(1761f, -1080f), vec4<bool>(false, false, false, true), -57506i), Struct_4(Struct_3(Struct_1(u_input.d.x, vec4<f32>(-591f, -2530f, 637f, 245f), u_input.d, global0.x, vec3<f32>(-984f, 947f, 903f))), vec2<f32>(394f, -1000f), Struct_3(Struct_1(u_input.d.x, vec4<f32>(-877f, -1040f, 778f, -1464f), u_input.d, 4294967295u, vec3<f32>(393f, -882f, 214f))), false), -1586f, 5162i))) - vec2<f32>(_wgslsmith_f_op_f32(1263f - -949f), -264f)) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1000f, -1719f)))))), vec4<bool>(true, !all(vec3<bool>(true, true, true)), false, false), ~(~_wgslsmith_mult_i32(global1[_wgslsmith_index_u32(u_input.b.x, 22u)], 0i) | 1i));
    let var_1 = u_input.a.yx;
    let var_2 = ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(~0u, _wgslsmith_add_u32(u_input.a.x, 1u), ~u_input.a.x, 52815u ^ global0.x), abs(vec4<u32>(u_input.b.x, var_1.x, global0.x, u_input.a.x) & vec4<u32>(global0.x, 61911u, 5196u, u_input.b.x))));
    var var_3 = vec4<u32>(u_input.a.x >> (~_wgslsmith_add_u32(1u, 2283u) % 32u), max(firstTrailingBit(global0.x), 46746u), select(abs(~(~var_1.x)), countOneBits(_wgslsmith_add_u32(_wgslsmith_div_u32(0u, 56258u), u_input.b.x)), any(var_0.b)), select(~reverseBits(u_input.b.x), ~var_2.x >> (~29194u % 32u), all(vec3<bool>(true, true, true))));
    let var_4 = _wgslsmith_div_i32(var_0.c, _wgslsmith_sub_i32(u_input.c, _wgslsmith_div_i32(-(~var_0.c), -u_input.c)));
    return _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x)), vec4<f32>(var_0.a.x, 1614f, -349f, var_0.a.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1725f, -1733f, var_0.a.x, var_0.a.x) - vec4<f32>(-1406f, 581f, 984f, 446f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1309f, 559f, 172f, var_0.a.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1385f, var_0.a.x, var_0.a.x, var_0.a.x), vec4<f32>(1000f, var_0.a.x, -610f, var_0.a.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(338f, var_0.a.x, var_0.a.x, var_0.a.x)))))), vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(881f - var_0.a.x))), -1000f, _wgslsmith_f_op_f32(var_0.a.x + -220f))));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<i32>) -> u32 {
    var var_0 = Struct_1(31712i, _wgslsmith_f_op_vec4_f32(func_2()), u_input.d, 10948u, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -295f) * _wgslsmith_f_op_vec2_f32(func_3(Struct_5(vec2<f32>(2495f, 1852f), vec4<bool>(false, true, true, true), u_input.c), Struct_4(Struct_3(Struct_1(-2147483647i, vec4<f32>(-196f, 327f, -441f, -717f), u_input.d, u_input.a.x, vec3<f32>(-830f, 382f, -1932f))), vec2<f32>(-431f, -1528f), Struct_3(Struct_1(0i, vec4<f32>(-1000f, -155f, 1000f, -552f), vec4<i32>(global1[_wgslsmith_index_u32(4548u, 22u)], global1[_wgslsmith_index_u32(1u, 22u)], arg_1.x, arg_1.x), u_input.a.x, vec3<f32>(290f, 504f, -291f))), true), 1280f, -1i)).x), 1265f, _wgslsmith_f_op_f32(-769f - _wgslsmith_f_op_f32(select(-862f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), true)))));
    var_0 = Struct_1(-(~abs(2147483647i) ^ (min(1i, 1i) | (var_0.a >> (72828u % 32u)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-291f, var_0.b.x, var_0.b.x, -815f) + var_0.b) * var_0.b)))), select(u_input.d, ~u_input.d & vec4<i32>(u_input.c, global1[_wgslsmith_index_u32(u_input.a.x, 22u)], -37861i, arg_1.x), false) << (vec4<u32>(22035u, global0.x, ~(~1u), ~u_input.b.x) % vec4<u32>(32u)), select(4294967295u, 47675u, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(var_0.b.zyz)) + var_0.b.zzw)));
    let var_1 = ~_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 1u, 27596u, global0.x), vec4<u32>(1u, u_input.a.x, u_input.a.x, arg_0.x)), ~vec4<u32>(var_0.d, u_input.a.x, 4294967295u, 0u)), _wgslsmith_mult_vec4_u32(vec4<u32>(104140u, u_input.b.x, u_input.b.x, 11169u), _wgslsmith_div_vec4_u32(vec4<u32>(global0.x, arg_0.x, arg_0.x, 79927u), vec4<u32>(4294967295u, 0u, 0u, var_0.d)))), vec4<u32>(global0.x, var_0.d, ~max(1u, 4294967295u), u_input.a.x << (~arg_0.x % 32u)));
    return var_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec2_u32(vec2<u32>(~(~u_input.a.x), ~func_1(~u_input.a.zz, min(u_input.d.yzw, vec3<i32>(32482i, global1[_wgslsmith_index_u32(22877u, 22u)], 2147483647i)))), vec2<u32>(_wgslsmith_mod_u32(45069u, ~6225u), global0.x) & u_input.a.zz);
    global1 = array<i32, 22>();
    global0 = u_input.b.yy;
    let var_1 = u_input.d;
    var var_2 = Struct_3(Struct_1(~countOneBits(var_1.x), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2607f, 687f, 603f, -914f)))), ~(-vec4<i32>(-18356i, global1[_wgslsmith_index_u32(0u, 22u)], u_input.d.x, global1[_wgslsmith_index_u32(21293u, 22u)])), 1u, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(138f, 678f, -788f), vec3<f32>(1770f, -1041f, 1000f), true))))));
    let x = u_input.a;
    s_output = StorageBuffer(max(u_input.a.zz, _wgslsmith_clamp_vec2_u32(vec2<u32>(var_2.a.d, u_input.a.x) ^ ~u_input.a.yx, u_input.a.xy, _wgslsmith_div_vec2_u32(vec2<u32>(var_2.a.d, var_0.x), countOneBits(vec2<u32>(var_0.x, global0.x))))), 2147483647i, 0i, firstTrailingBit(_wgslsmith_mod_vec3_u32(~(u_input.b ^ u_input.a), select(vec3<u32>(global0.x, u_input.a.x, u_input.a.x), vec3<u32>(25613u, u_input.a.x, global0.x), vec3<bool>(true, true, true)))));
}

