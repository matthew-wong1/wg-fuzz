struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec3<f32>,
    d: bool,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(6084i, -11039i, -1i, 0i);

var<private> global1: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(35798u), Struct_3(33289u), Struct_3(2306u), Struct_3(46590u), Struct_3(33232u), Struct_3(23389u), Struct_3(14711u), Struct_3(0u), Struct_3(8308u), Struct_3(9141u), Struct_3(0u), Struct_3(57320u), Struct_3(6449u), Struct_3(61499u), Struct_3(4294967295u), Struct_3(47495u));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec2<i32>) -> i32 {
    let var_0 = !vec3<bool>(all(vec2<bool>(all(vec2<bool>(arg_1.b.a, false)), false)), arg_1.b.a, !all(select(vec4<bool>(true, arg_1.b.a, arg_1.d, arg_1.d), vec4<bool>(false, arg_1.b.a, true, true), vec4<bool>(arg_1.d, false, false, arg_1.d))));
    global0 = arg_0;
    var var_1 = arg_1;
    global0 = arg_0 >> (abs(vec4<u32>(4294967295u, u_input.a.x, 4294967295u, ~29926u)) % vec4<u32>(32u));
    let var_2 = countOneBits(vec4<u32>(4294967295u, _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(36424u, 6502u, u_input.a.x, u_input.a.x)), abs(min(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 12575u, u_input.a.x, 14915u)))), 4294967295u, ~1u));
    return _wgslsmith_add_i32(-61915i, -max(_wgslsmith_add_i32(firstLeadingBit(arg_2.x), -35892i), _wgslsmith_dot_vec4_i32(-arg_1.a, vec4<i32>(var_1.a.x, arg_1.a.x, var_1.a.x, global0.x) ^ vec4<i32>(var_1.a.x, arg_0.x, 16761i, -14044i))));
}

fn func_2(arg_0: f32, arg_1: vec3<f32>) -> i32 {
    var var_0 = vec3<bool>(select(true, !all(vec4<bool>(true, true, true, true)), true), false, true);
    let var_1 = !select(vec2<bool>(all(!vec4<bool>(var_0.x, false, false, false)), var_0.x), var_0.xy, false);
    global0 = vec4<i32>(4533i, func_3(_wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(global0.x, 0i, 46429i, -75881i)), vec4<i32>(global0.x, global0.x, 40546i, 43701i) ^ vec4<i32>(global0.x, global0.x, global0.x, 2147483647i)), Struct_2(_wgslsmith_add_vec4_i32(vec4<i32>(-21769i, global0.x, -24525i, -13426i), vec4<i32>(-2147483647i, 26138i, global0.x, -18044i)), Struct_1(false), _wgslsmith_f_op_vec3_f32(round(arg_1)), all(vec2<bool>(true, true))), ~vec2<i32>(global0.x, global0.x) << (~vec2<u32>(1u, u_input.a.x) % vec2<u32>(32u))) ^ _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -25954i, 0i, -44279i), _wgslsmith_mult_vec4_i32(vec4<i32>(global0.x, global0.x, -2147483647i, global0.x), vec4<i32>(2147483647i, -17274i, global0.x, global0.x))), global0.x), _wgslsmith_clamp_i32(_wgslsmith_div_i32(-firstTrailingBit(-31905i), global0.x), ~global0.x & _wgslsmith_dot_vec3_i32(select(global0.xyy, vec3<i32>(global0.x, global0.x, global0.x), vec3<bool>(true, var_0.x, var_0.x)), firstTrailingBit(vec3<i32>(70137i, global0.x, global0.x))), abs(1i)), global0.x);
    var var_2 = min(-2941i, -(-2147483647i << ((u_input.a.x << (_wgslsmith_sub_u32(u_input.a.x, 1u) % 32u)) % 32u)));
    global1 = array<Struct_3, 16>();
    return global0.x;
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1192f + -676f) - _wgslsmith_f_op_f32(min(1142f, _wgslsmith_f_op_f32(f32(-1f) * -266f)))))));
    global0 = vec4<i32>(global0.x, i32(-1i) * -2147483647i, i32(-1i) * -_wgslsmith_sub_i32(func_2(var_0, vec3<f32>(-240f, 823f, 920f)), global0.x), global0.x);
    let var_1 = Struct_2(abs(_wgslsmith_sub_vec4_i32(reverseBits(abs(vec4<i32>(global0.x, global0.x, 0i, -46876i))), -vec4<i32>(-22299i, -1575i, global0.x, global0.x))), Struct_1(any(vec3<bool>(true, all(vec3<bool>(false, false, true)), global0.x >= 44527i))), vec3<f32>(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - var_0)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + var_0))), _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(1000f, var_0)), _wgslsmith_f_op_f32(var_0 - -826f))))), false);
    let var_2 = _wgslsmith_mult_i32(i32(-1i) * -global0.x, -(~max(var_1.a.x, 2147483647i))) & global0.x;
    global1 = array<Struct_3, 16>();
    return Struct_2(~_wgslsmith_div_vec4_i32(var_1.a, -vec4<i32>(1i, 1i, var_1.a.x, 1i)), var_1.b, _wgslsmith_f_op_vec3_f32(-var_1.c), !(false & var_1.b.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global1 = array<Struct_3, 16>();
    var var_1 = !all(select(!vec3<bool>(true, var_0.b.a, false), vec3<bool>(false, !var_0.b.a, var_0.d), vec3<bool>(any(vec2<bool>(false, true)), var_0.a.x > var_0.a.x, !var_0.d)));
    let var_2 = select(_wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 23814u), abs(vec4<u32>(19474u, u_input.a.x, u_input.a.x, u_input.a.x)), vec4<u32>(u_input.a.x, u_input.a.x, 11543u, u_input.a.x)), ~(~max(vec4<u32>(11828u, u_input.a.x, 45989u, 0u), vec4<u32>(67216u, 39224u, u_input.a.x, u_input.a.x)))), 1u, false);
    var var_3 = global1[_wgslsmith_index_u32(u_input.a.x, 16u)];
    var var_4 = global1[_wgslsmith_index_u32(firstTrailingBit(21123u), 16u)];
    global1 = array<Struct_3, 16>();
    var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer((-global0.x | -33108i) ^ -(var_0.a.x | -global0.x));
}

