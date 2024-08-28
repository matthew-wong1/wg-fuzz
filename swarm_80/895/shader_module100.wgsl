struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_2,
    e: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 75261u;

var<private> global1: array<u32, 17> = array<u32, 17>(42176u, 4294967295u, 19377u, 10186u, 10099u, 36781u, 5435u, 55877u, 4294967295u, 42964u, 1u, 1u, 71621u, 1u, 0u, 0u, 25040u);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: f32, arg_1: Struct_5, arg_2: vec4<f32>, arg_3: Struct_1) -> f32 {
    global0 = abs(70686u);
    global1 = array<u32, 17>();
    let var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1530f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(135f, 1000f)) * arg_3.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_3.a)) - arg_3.a), arg_3.a) - arg_2), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_3.a), 1f, 184f, arg_3.a)))));
    let var_1 = arg_3.b;
    var var_2 = false;
    return _wgslsmith_f_op_f32(exp2(arg_3.a));
}

fn func_2(arg_0: Struct_3) -> Struct_1 {
    global1 = array<u32, 17>();
    global1 = array<u32, 17>();
    let var_0 = ~(-11819i ^ u_input.d.x);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(arg_0.b.yw, vec2<f32>(_wgslsmith_f_op_f32(func_3(2562f, Struct_5(arg_0.e.yz), arg_0.b, Struct_1(arg_0.c.a, false))), _wgslsmith_f_op_f32(arg_0.b.x * arg_0.c.a))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(arg_0.b.zz)))))))));
    let var_2 = arg_0.a.b;
    return arg_0.c;
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    var var_0 = func_2(Struct_3(Struct_1(-1243f, !(arg_0.a && true)), _wgslsmith_div_vec4_f32(vec4<f32>(-805f, -690f, 1f, -903f), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1280f), 1f, _wgslsmith_f_op_f32(floor(-358f)), _wgslsmith_f_op_f32(-639f + -258f))), Struct_1(_wgslsmith_f_op_f32(floor(-1446f)), select(true, !arg_0.a, arg_0.a)), Struct_2(!(!arg_0.a)), abs(vec3<i32>(u_input.c, ~(-1i), -6980i))));
    var var_1 = _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(-_wgslsmith_sub_vec4_i32(min(vec4<i32>(u_input.d.x, u_input.d.x, u_input.c, u_input.c), vec4<i32>(0i, u_input.c, 39744i, u_input.c)), vec4<i32>(-1i, -41864i, 8434i, -2147483647i)), firstTrailingBit(abs(vec4<i32>(u_input.d.x, -2147483647i, 2147483647i, -17380i) ^ vec4<i32>(u_input.d.x, -1i, -11510i, u_input.d.x)))), vec4<i32>(~(-1i), firstLeadingBit(abs(_wgslsmith_dot_vec2_i32(u_input.d, vec2<i32>(u_input.c, 51101i)))), 46935i, reverseBits(u_input.c)));
    var var_2 = Struct_5(vec2<i32>(-abs(-44006i) | _wgslsmith_mod_i32(2147483647i, -u_input.c), firstLeadingBit(countOneBits(abs(6079i)))));
    var var_3 = 0u;
    global1 = array<u32, 17>();
    return Struct_1(var_0.a, false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(-30750i, _wgslsmith_div_i32(u_input.d.x, 1i));
    let var_1 = ~(abs(vec3<u32>(max(97670u, 0u), global1[_wgslsmith_index_u32(u_input.a, 17u)] | 73849u, ~83016u)) ^ vec3<u32>(global1[_wgslsmith_index_u32((5196u ^ u_input.b.x) << (1u % 32u), 17u)], ~u_input.b.x, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(1u, global1[_wgslsmith_index_u32(87342u, 17u)]), u_input.b.x), 17u)]));
    var var_2 = -min(_wgslsmith_div_vec3_i32(~(-vec3<i32>(-33096i, var_0.x, 2147483647i)), vec3<i32>(~(-2147483647i), u_input.c << (var_1.x % 32u), ~var_0.x)), vec3<i32>(_wgslsmith_mult_i32(-8976i, var_0.x), ~_wgslsmith_add_i32(1i, var_0.x), -14498i));
    var var_3 = vec2<u32>(u_input.a, 37692u);
    let var_4 = Struct_3(func_1(Struct_2(any(vec2<bool>(true, true)))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1f, 934f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-964f)) - -528f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-989f - 476f)))))), func_2(Struct_3(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), true), _wgslsmith_f_op_vec4_f32(vec4<f32>(-971f, -2322f, 1791f, 1840f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-494f, 481f, 1765f, -138f) - vec4<f32>(190f, -1345f, -1325f, 1668f))), Struct_1(-585f, false), Struct_2(all(vec2<bool>(true, false))), _wgslsmith_mult_vec3_i32(~vec3<i32>(var_0.x, -20008i, var_2.x), ~vec3<i32>(-21525i, u_input.d.x, var_2.x)))), Struct_2(true == all(vec4<bool>(true, false, false, true))), ~vec3<i32>(13128i, -2147483647i, 1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(var_4.b.yy)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_4.b.x, var_4.a.a))) + vec2<f32>(var_4.c.a, 600f)))), var_4.b.x);
}

