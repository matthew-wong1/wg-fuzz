struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_3, 26>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = u_input.e;
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(886f, -209f, 580f))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-129f, -179f, -1172f) * vec3<f32>(159f, -601f, -523f)), _wgslsmith_div_vec3_f32(vec3<f32>(1000f, 938f, 109f), vec3<f32>(-860f, 1341f, 1000f))))), reverseBits(firstTrailingBit(u_input.c)), select(_wgslsmith_sub_i32(u_input.c, _wgslsmith_add_i32(-2147483647i, u_input.d)), -1i, true) | _wgslsmith_dot_vec4_i32(~select(vec4<i32>(u_input.c, u_input.d, -19439i, u_input.a.x), vec4<i32>(u_input.a.x, 0i, 0i, u_input.c), vec4<bool>(false, true, false, false)), select(vec4<i32>(-20677i, u_input.a.x, u_input.d, u_input.a.x), min(vec4<i32>(u_input.c, 2307i, u_input.c, -1i), vec4<i32>(-3124i, 7673i, u_input.a.x, -1i)), vec4<bool>(true, true, true, true))));
    let var_2 = true;
    var var_3 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(-var_1.a.x)), _wgslsmith_f_op_f32(trunc(164f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1495f))) - var_1.a.x), _wgslsmith_f_op_f32(abs(1143f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a.x * _wgslsmith_f_op_f32(-var_1.a.x)), _wgslsmith_f_op_f32(max(var_1.a.x, -717f))))));
    let var_4 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0, ~u_input.b), 26u)];
    return -1534f;
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(1793f, _wgslsmith_div_f32(769f, -581f)), _wgslsmith_f_op_f32(max(-557f, _wgslsmith_f_op_f32(func_3())))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1375f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-425f, 615f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-175f, _wgslsmith_div_f32(647f, 328f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(250f, -510f) + vec2<f32>(-1485f, 1067f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-2120f, 852f), vec2<f32>(-354f, 647f), true))))));
    var var_1 = Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, -573f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-499f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(var_0.x + 134f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x)))), u_input.c, u_input.d | firstLeadingBit(u_input.c));
    var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(var_1.a)) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(452f, var_0.x, var_1.a.x), vec3<f32>(var_0.x, -965f, var_1.a.x))))), _wgslsmith_sub_i32(u_input.a.x ^ -_wgslsmith_add_i32(u_input.a.x, -3907i), -2147483647i), 1i);
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x) + _wgslsmith_f_op_f32(round(var_1.a.x))));
    return -156f;
}

fn func_1() -> u32 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -532f)) - -1880f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())));
    let var_0 = true;
    global0 = -624f;
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -808f)) + -1643f), -1353f)));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-264f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(800f)))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1863f)))))) * _wgslsmith_f_op_f32(-893f + _wgslsmith_div_f32(_wgslsmith_div_f32(914f, _wgslsmith_f_op_f32(ceil(1002f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -857f)))));
    return u_input.e ^ 28404u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(u_input.e, 26u)];
    var var_1 = true;
    var var_2 = func_1();
    var var_3 = _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, abs(60092i), u_input.d), abs(~u_input.a));
    let var_4 = 1u >= u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(max(vec4<i32>(-20809i, 32039i, -8674i, var_3.x), abs(vec4<i32>(2147483647i, u_input.d, var_3.x, -2147483647i))) << (~_wgslsmith_mult_vec4_u32(vec4<u32>(99380u, 4294967295u, 4294967295u, u_input.e), vec4<u32>(29428u, 1u, u_input.b, 31199u)) % vec4<u32>(32u))), ~firstTrailingBit(vec2<u32>(u_input.b, 21160u) >> (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u))) << ((reverseBits(_wgslsmith_add_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(12447u, 76795u))) >> (firstTrailingBit(~vec2<u32>(u_input.b, u_input.b)) % vec2<u32>(32u))) % vec2<u32>(32u)));
}

