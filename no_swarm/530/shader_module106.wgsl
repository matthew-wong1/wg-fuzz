struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec2<f32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: i32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 7> = array<vec4<f32>, 7>(vec4<f32>(1016f, -561f, -250f, 1000f), vec4<f32>(823f, 933f, -946f, 129f), vec4<f32>(-128f, 183f, 1195f, 1000f), vec4<f32>(344f, -1964f, -160f, -827f), vec4<f32>(-553f, 1693f, -519f, -678f), vec4<f32>(462f, 474f, 1846f, 1627f), vec4<f32>(1866f, -312f, 166f, 1295f));

var<private> global1: array<i32, 7>;

var<private> global2: array<i32, 30> = array<i32, 30>(-1i, 9431i, -1i, 0i, 24241i, 2147483647i, 0i, 0i, 19921i, 0i, 0i, -4007i, 1i, 1i, 17204i, 1i, -19422i, 2147483647i, -8187i, 73726i, 0i, -22163i, -1i, 6533i, 0i, 2147483647i, -1i, 1i, 48290i, -21930i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2265f, -802f) - vec2<f32>(1205f, -124f)))))), ~(-2903i), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(974f, _wgslsmith_f_op_f32(1629f - 769f)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1255f, -402f), vec2<f32>(1805f, -769f), true))))))), ~vec3<i32>(2147483647i, 1i, global1[_wgslsmith_index_u32(~u_input.b.x << (u_input.b.x % 32u), 7u)]));
    let var_1 = u_input.a;
    var var_2 = Struct_1(var_0.a, abs(global1[_wgslsmith_index_u32(4294967295u, 7u)]), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.x, -1000f) + var_0.c), _wgslsmith_f_op_vec2_f32(var_0.a - vec2<f32>(269f, -1737f))) - _wgslsmith_f_op_vec2_f32(-var_0.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a)) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, var_0.a.x) * var_0.a))))), _wgslsmith_div_vec3_i32(firstTrailingBit(var_0.d >> (u_input.b % vec3<u32>(32u))), (var_0.d | vec3<i32>(0i, global1[_wgslsmith_index_u32(var_1, 7u)], global1[_wgslsmith_index_u32(4294967295u, 7u)])) | vec3<i32>(15910i, var_0.b, 1i)) ^ var_0.d);
    var var_3 = vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x);
    var var_4 = Struct_2(false, (any(vec3<bool>(true, true, true)) | (true || select(false, false, true))) | true, var_0, var_0.a.x >= 737f);
    return 1u;
}

fn func_2(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: vec4<bool>) -> vec4<i32> {
    var var_0 = Struct_3(abs(arg_2.c.d.x), _wgslsmith_sub_vec2_u32(vec2<u32>(func_3(), 1u), ~reverseBits(vec2<u32>(arg_0.b.x, arg_0.b.x) | arg_0.b)));
    return ~vec4<i32>(-reverseBits(var_0.a) | _wgslsmith_clamp_i32(-2147483647i, _wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(1u, 30u)], -28439i, -51792i), -2147483647i & arg_0.a), arg_0.a, 0i, firstTrailingBit(~(~arg_0.a)));
}

fn func_1(arg_0: Struct_2) -> f32 {
    let var_0 = firstLeadingBit(vec4<i32>(arg_0.c.d.x, reverseBits(arg_0.c.b << (u_input.b.x % 32u)), firstTrailingBit(-12596i >> (1u % 32u)), arg_0.c.d.x & ~(-1i))) & -(_wgslsmith_add_vec4_i32(vec4<i32>(21325i, global1[_wgslsmith_index_u32(4294967295u, 7u)], -31047i, arg_0.c.b), func_2(Struct_3(global1[_wgslsmith_index_u32(52429u, 7u)], u_input.b.xy), vec4<bool>(arg_0.d, arg_0.d, arg_0.a, arg_0.a), Struct_2(false, false, Struct_1(arg_0.c.a, 1i, arg_0.c.a, arg_0.c.d), false), vec4<bool>(true, arg_0.a, arg_0.d, true))) | ~(vec4<i32>(arg_0.c.d.x, -3025i, arg_0.c.b, -2147483647i) | vec4<i32>(4104i, global1[_wgslsmith_index_u32(4294967295u, 7u)], global1[_wgslsmith_index_u32(u_input.a, 7u)], global2[_wgslsmith_index_u32(13166u, 30u)])));
    var var_1 = Struct_2(select(true, !(false & (arg_0.c.c.x <= 1698f)), all(select(select(vec3<bool>(true, true, true), vec3<bool>(arg_0.b, true, true), true), select(vec3<bool>(arg_0.d, false, arg_0.a), vec3<bool>(true, arg_0.a, true), false), any(vec2<bool>(false, arg_0.a))))), arg_0.a, arg_0.c, arg_0.b);
    var var_2 = var_1.c.c.x;
    let var_3 = u_input.a ^ _wgslsmith_sub_u32(~u_input.b.x >> (abs(u_input.a) % 32u), ~(~25061u));
    var var_4 = u_input.b.x;
    return arg_0.c.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-353f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(258f * 219f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(374f + -1365f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-103f, -951f)))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(Struct_2(false, false, Struct_1(vec2<f32>(-1377f, 287f), global1[_wgslsmith_index_u32(var_0.x, 7u)], vec2<f32>(1119f, -1052f), vec3<i32>(global2[_wgslsmith_index_u32(0u, 30u)], global1[_wgslsmith_index_u32(u_input.a, 7u)], global1[_wgslsmith_index_u32(var_0.x, 7u)])), false))), _wgslsmith_f_op_f32(step(649f, -1658f)), all(vec3<bool>(false, false, false))))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1557f, -256f, false)), _wgslsmith_f_op_f32(f32(-1f) * -579f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-651f, 140f))))))));
    let var_2 = var_1.x;
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_1.x + var_1.x), var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -392f))))));
    var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_div_f32(var_1.x, var_1.x))), var_1.x), var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1586f)) - 860f)) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 688f, var_1.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-476f, -2061f, -429f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1048f))), -362f);
}

