struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: u32,
}

struct Struct_5 {
    a: f32,
    b: vec3<u32>,
    c: bool,
    d: Struct_4,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<Struct_3, 20>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> f32 {
    var var_0 = Struct_4(Struct_1(_wgslsmith_f_op_f32(sign(522f)), _wgslsmith_f_op_f32(ceil(1f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-540f, 1427f, 205f)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(528f, 764f, -1000f) * vec3<f32>(-790f, 1310f, -1055f)), vec3<f32>(-895f, -371f, -612f)))), Struct_2(~_wgslsmith_add_vec2_u32(vec2<u32>(16773u, u_input.c) | vec2<u32>(4294967295u, u_input.b), vec2<u32>(0u, u_input.b)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-998f, -1807f) + _wgslsmith_f_op_f32(-143f * 709f)), 643f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1143f, -444f, -202f)))))), select(5430u, firstLeadingBit(~u_input.b), true));
    var var_1 = Struct_5(var_0.b.b.c.x, vec3<u32>(countOneBits(u_input.c ^ var_0.b.a.x) & u_input.c, max(1u, 4294967295u), 1u), _wgslsmith_dot_vec3_i32(vec3<i32>(13160i, -28588i, global0.x) & vec3<i32>(global0.x, -2160i, global0.x), reverseBits(min(vec3<i32>(33780i, global0.x, 10694i), vec3<i32>(5319i, u_input.a, global0.x)))) < -u_input.a, Struct_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -767f)), var_0.b.b.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.b.b.c) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1209f, var_0.b.b.a, var_0.b.b.b)))), Struct_2(var_0.b.a, Struct_1(_wgslsmith_f_op_f32(-586f + var_0.a.a), _wgslsmith_f_op_f32(-var_0.b.b.b), vec3<f32>(var_0.b.b.b, var_0.a.c.x, var_0.a.b))), ~_wgslsmith_clamp_u32(4294967295u, var_0.c, 1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.c.x) + _wgslsmith_f_op_f32(select(var_0.b.b.b, var_0.b.b.a, true))) + 1f)));
    var var_2 = Struct_3(vec3<u32>(14213u, u_input.b ^ ~var_1.d.b.a.x, _wgslsmith_mult_u32(1u, ~var_0.c)) & firstLeadingBit(~vec3<u32>(var_0.b.a.x, var_1.d.b.a.x, 685u)), var_1.d.b);
    var var_3 = ~(~vec2<u32>(_wgslsmith_sub_u32(~u_input.b, var_0.b.a.x), max(var_1.d.b.a.x, abs(var_0.c))));
    var var_4 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(539f - 288f) + var_2.b.b.a), 1207f, _wgslsmith_f_op_vec3_f32(select(var_1.d.a.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(var_0.a.c)) * vec3<f32>(-268f, var_2.b.b.c.x, var_1.e))), !(!vec3<bool>(true, var_1.c, true)))));
    return -1219f;
}

fn func_2() -> Struct_5 {
    global1 = array<Struct_3, 20>();
    let var_0 = true;
    global1 = array<Struct_3, 20>();
    global0 = -max(_wgslsmith_mod_vec3_i32(abs(-vec3<i32>(global0.x, -53069i, 26778i)), -_wgslsmith_add_vec3_i32(vec3<i32>(1i, u_input.a, 2147483647i), vec3<i32>(global0.x, global0.x, u_input.a))), vec3<i32>(1i, i32(-1i) * -2147483647i, 2147483647i));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-503f))), -231f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(1342f)), 1055f, _wgslsmith_f_op_f32(func_3())) * vec3<f32>(_wgslsmith_f_op_f32(floor(932f)), 638f, -909f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-2313f, 719f, 800f), vec3<f32>(-175f, -132f, -503f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(240f, -357f, -1549f)) * vec3<f32>(-870f, -1746f, 938f)))));
    return Struct_5(var_1.c.x, ~(vec3<u32>(0u, max(45605u, u_input.c), ~4294967295u) & (~vec3<u32>(26406u, 4294967295u, 17747u) >> (vec3<u32>(u_input.c, 11293u, u_input.c) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(floor(426f)) <= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -709f) - _wgslsmith_f_op_f32(f32(-1f) * -561f)))), Struct_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + var_1.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.a))), vec3<f32>(_wgslsmith_f_op_f32(select(-273f, 362f, var_0)), _wgslsmith_f_op_f32(var_1.b - var_1.b), _wgslsmith_f_op_f32(-192f + var_1.a))), Struct_2(reverseBits(vec2<u32>(u_input.b, u_input.c)) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 1803u), vec2<u32>(u_input.c, 1u)) % vec2<u32>(32u)), var_1), 52855u), var_1.b);
}

fn func_1(arg_0: bool) -> Struct_2 {
    let var_0 = false;
    global1 = array<Struct_3, 20>();
    var var_1 = countOneBits(vec3<u32>(firstTrailingBit(~46910u >> (~u_input.c % 32u)), _wgslsmith_add_u32(~u_input.c, firstLeadingBit(u_input.c)), u_input.b));
    let var_2 = func_2();
    var var_3 = global1[_wgslsmith_index_u32(var_2.d.b.a.x, 20u)];
    return func_2().d.b;
}

fn func_4(arg_0: Struct_2, arg_1: f32) -> StorageBuffer {
    var var_0 = _wgslsmith_sub_vec3_i32(max(countOneBits(abs(vec3<i32>(1i, global0.x, -6482i))) | max(min(vec3<i32>(u_input.a, -66380i, u_input.a), vec3<i32>(u_input.a, u_input.a, -11536i)), vec3<i32>(-1i, global0.x, -2147483647i) << (vec3<u32>(0u, u_input.c, 9967u) % vec3<u32>(32u))), ~vec3<i32>(countOneBits(2147483647i), countOneBits(1914i), 2147483647i)), _wgslsmith_div_vec3_i32(reverseBits(abs(vec3<i32>(u_input.a, 17158i, -2147483647i))), vec3<i32>(-global0.x, 10537i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 26262i, 2147483647i), reverseBits(vec3<i32>(global0.x, global0.x, u_input.a))))));
    global1 = array<Struct_3, 20>();
    let var_1 = vec4<f32>(-354f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(arg_0.b.c.x)))) - _wgslsmith_div_f32(-359f, arg_1)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 - arg_0.b.b), _wgslsmith_f_op_f32(-237f + -677f))), arg_1, arg_0.b.c.x);
    let var_2 = ~26042i ^ global0.x;
    let var_3 = select(vec3<bool>(func_2().c, any(vec3<bool>(true, true, true)), true), !select(vec3<bool>(true, true, true), vec3<bool>(all(vec3<bool>(false, true, true)), -2147483647i == var_2, true), select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), false), vec3<bool>(true, false, false), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false))), u_input.c <= ~arg_0.a.x);
    return StorageBuffer(arg_1, _wgslsmith_f_op_vec4_f32(exp2(var_1)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = abs(vec3<i32>(global0.x << (~0u % 32u), -(i32(-1i) * -11735i), 1i & ~global0.x) << (~max(firstLeadingBit(vec3<u32>(83742u, 3724u, 0u)), max(vec3<u32>(0u, u_input.c, u_input.c), vec3<u32>(u_input.b, 0u, 48293u))) % vec3<u32>(32u)));
    global1 = array<Struct_3, 20>();
    global1 = array<Struct_3, 20>();
    let x = u_input.a;
    s_output = func_4(func_1(any(vec4<bool>(true, any(vec3<bool>(false, false, false)), true, true))), 713f);
}

