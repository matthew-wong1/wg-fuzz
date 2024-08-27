struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec4<i32>(-14213i, 0i, -19297i, 31529i)), Struct_1(vec4<i32>(3672i, 16679i, 1i, 8060i)), Struct_1(vec4<i32>(2147483647i, 63807i, 2147483647i, 2147483647i)), Struct_1(vec4<i32>(-1i, -1i, 46197i, -1i)), Struct_1(vec4<i32>(72334i, 2147483647i, -25923i, 1i)), Struct_1(vec4<i32>(0i, 28592i, 2147483647i, -26711i)), Struct_1(vec4<i32>(7678i, 35178i, 20268i, 21881i)), Struct_1(vec4<i32>(2147483647i, 1i, -1i, -1i)), Struct_1(vec4<i32>(2147483647i, -14253i, -1i, -1i)), Struct_1(vec4<i32>(2147483647i, 864i, 0i, -3837i)), Struct_1(vec4<i32>(15834i, -25077i, -1i, i32(-2147483648))), Struct_1(vec4<i32>(21414i, 0i, 1066i, -1i)), Struct_1(vec4<i32>(-11978i, -1i, 50575i, -14955i)), Struct_1(vec4<i32>(1i, -7132i, i32(-2147483648), 0i)), Struct_1(vec4<i32>(0i, -1i, 27705i, 62841i)), Struct_1(vec4<i32>(-1i, -19492i, 7198i, i32(-2147483648))), Struct_1(vec4<i32>(35143i, 28268i, -7883i, 66186i)), Struct_1(vec4<i32>(0i, 32830i, -1i, -1i)), Struct_1(vec4<i32>(1i, 1i, 31821i, -6927i)));

var<private> global1: vec2<f32> = vec2<f32>(948f, 2136f);

var<private> global2: array<f32, 4> = array<f32, 4>(981f, 835f, -2195f, -1139f);

var<private> global3: i32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 4u)])) + 691f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 4u)], global1.x)))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1.x, -2064f)))))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global1.x, 453f), vec2<f32>(global1.x, -1420f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-252f, global2[_wgslsmith_index_u32(4294967295u, 4u)]), vec2<f32>(global2[_wgslsmith_index_u32(42801u, 4u)], global2[_wgslsmith_index_u32(u_input.e.x, 4u)])))))));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -953f) <= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(823f, global2[_wgslsmith_index_u32(~select(4294967295u, 4294967295u, true), 4u)], select(all(vec3<bool>(true, false, false)), true, true)))));
    let var_2 = i32(-1i) * -53105i;
    let var_3 = global0[_wgslsmith_index_u32(10297u, 19u)];
    global1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, var_0.x)) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-218f, 2341f)))))), vec2<f32>(_wgslsmith_f_op_f32(abs(1f)), 1213f)));
    return _wgslsmith_mod_vec2_u32(vec2<u32>(abs(u_input.c.x), _wgslsmith_dot_vec2_u32(vec2<u32>(~30483u, firstTrailingBit(4294967295u)), ~(~vec2<u32>(u_input.c.x, 0u)))), vec2<u32>(u_input.a, _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(0u, u_input.c.x, 1u, u_input.e.x)), vec4<u32>(~u_input.e.x, ~26179u, ~u_input.a, 94238u))));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec4<u32>, arg_3: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, -346f) - global2[_wgslsmith_index_u32(~4294967295u, 4u)]) + 1211f), _wgslsmith_f_op_f32(-global1.x), arg_1)) < -601f;
    let var_1 = u_input.c.wz;
    var var_2 = Struct_1(arg_3.a);
    var var_3 = Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(31505i, 2147483647i), _wgslsmith_mult_i32(~var_2.a.x, ~24275i), select(arg_0.a.x, 1i, arg_1), _wgslsmith_dot_vec2_i32(u_input.b.zz, select(vec2<i32>(15005i, arg_3.a.x), arg_3.a.yx, vec2<bool>(arg_1, false)))), _wgslsmith_clamp_vec4_i32(~vec4<i32>(32409i, arg_0.a.x, 1i, 29224i), vec4<i32>(arg_3.a.x, ~u_input.d.x, 1i, ~2147483647i), -(~arg_0.a))));
    var var_4 = arg_3;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(260f * -458f)) * global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(111840u, 5561u), _wgslsmith_dot_vec2_u32(select(vec2<u32>(var_1.x, 4294967295u) >> (vec2<u32>(var_1.x, var_1.x) % vec2<u32>(32u)), func_3(), arg_1), ~countOneBits(var_1))), 4u)]);
}

fn func_1(arg_0: vec2<bool>, arg_1: i32) -> vec2<i32> {
    global1 = vec2<f32>(global1.x, _wgslsmith_f_op_f32(func_2(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, firstTrailingBit(u_input.e.x)), 19u)], !(!(u_input.a <= 4294967295u)), ~u_input.e ^ vec4<u32>(u_input.a, 1u, u_input.a, 19995u), Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, arg_1, -11182i, 0i), vec4<i32>(arg_1, u_input.b.x, arg_1, arg_1)) ^ ~vec4<i32>(u_input.d.x, -26922i, 6630i, -2147483647i)))));
    var var_0 = 0u;
    var var_1 = ((vec2<i32>(-2147483647i, -arg_1) >> (func_3() % vec2<u32>(32u))) & reverseBits(~_wgslsmith_mult_vec2_i32(vec2<i32>(1i, u_input.b.x), vec2<i32>(-2147483647i, -14838i)))) ^ (_wgslsmith_add_vec2_i32(-u_input.d, reverseBits(u_input.b.zx)) >> (abs(max(u_input.e.yy, firstLeadingBit(vec2<u32>(0u, 4294967295u)))) % vec2<u32>(32u)));
    var_0 = 1u;
    var var_2 = Struct_1(abs(-_wgslsmith_sub_vec4_i32(vec4<i32>(arg_1, 62683i, arg_1, 2147483647i), vec4<i32>(0i, u_input.b.x, u_input.b.x, u_input.d.x) >> (u_input.c % vec4<u32>(32u)))));
    return vec2<i32>(~var_1.x, max(2147483647i, -1i));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 4>();
    var var_0 = func_1(vec2<bool>(!(!all(vec4<bool>(true, true, false, false))), select(true, false, u_input.c.x < ~u_input.e.x)), 1i);
    global0 = array<Struct_1, 19>();
    let var_1 = global2[_wgslsmith_index_u32(39837u, 4u)];
    let var_2 = _wgslsmith_f_op_f32(min(global1.x, _wgslsmith_div_f32(global1.x, global1.x)));
    global3 = func_1(vec2<bool>(true, true), ~_wgslsmith_sub_i32(0i, var_0.x) << (~4294967295u % 32u)).x | ~(-u_input.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(-var_0.x, _wgslsmith_add_vec4_i32(-vec4<i32>(~(-2147483647i), _wgslsmith_add_i32(u_input.b.x, -1i), u_input.b.x, 2147483647i), vec4<i32>(8358i, _wgslsmith_sub_i32(u_input.b.x, u_input.b.x), _wgslsmith_mult_i32(_wgslsmith_div_i32(var_0.x, 1i), _wgslsmith_add_i32(17273i, u_input.b.x)), i32(-1i) * -var_0.x)));
}

