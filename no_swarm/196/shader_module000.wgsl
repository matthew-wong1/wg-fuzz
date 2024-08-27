struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 9> = array<f32, 9>(-156f, -533f, 1262f, -2767f, 139f, -437f, 1063f, -2992f, -1031f);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> u32 {
    var var_0 = select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, any(vec2<bool>(false, false)), true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, false, false), any(vec2<bool>(true, true))), vec4<bool>(all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false)), true)), select(true, global0[_wgslsmith_index_u32(~29727u, 9u)] > global0[_wgslsmith_index_u32(~4294967295u, 9u)], true), true, false), any(vec3<bool>(true, all(vec4<bool>(true, false, true, true)) && all(vec3<bool>(true, true, false)), true)));
    let var_1 = Struct_5(~(abs(~vec2<u32>(89027u, 1u)) | ~select(vec2<u32>(129659u, 23993u), vec2<u32>(40481u, 45606u), var_0.x)), !(!select(select(vec4<bool>(var_0.x, var_0.x, true, true), vec4<bool>(var_0.x, var_0.x, true, false), true), !vec4<bool>(false, true, var_0.x, false), select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), true))), global0[_wgslsmith_index_u32(abs(_wgslsmith_clamp_u32(1u, 1u, 14942u)), 9u)], Struct_2(Struct_1(abs(~u_input.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(388f, global0[_wgslsmith_index_u32(46596u, 9u)]))), select(~vec2<u32>(4294967295u, 11935u), vec2<u32>(1u, 1u), -1694f == global0[_wgslsmith_index_u32(93158u, 9u)])), min(4294967295u, 1u), _wgslsmith_add_i32(-2147483647i, ~u_input.a.x), Struct_1(~(-96091i), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(729u, 9u)], global0[_wgslsmith_index_u32(36527u, 9u)]) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-120f, global0[_wgslsmith_index_u32(8883u, 9u)])))), vec2<u32>(0u, countOneBits(4023u))), Struct_1(_wgslsmith_dot_vec4_i32(~u_input.a, -u_input.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(528f, global0[_wgslsmith_index_u32(1u, 9u)]) * vec2<f32>(-845f, -1000f)) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0[_wgslsmith_index_u32(0u, 9u)], global0[_wgslsmith_index_u32(4294967295u, 9u)])))), ~vec2<u32>(97345u, 4294967295u))));
    var var_2 = var_1;
    var var_3 = u_input.a.yx;
    let var_4 = ~1i;
    return ~_wgslsmith_dot_vec2_u32(~vec2<u32>(~var_2.d.a.c.x, 43997u), firstLeadingBit(vec2<u32>(4294967295u, _wgslsmith_clamp_u32(4294967295u, 77441u, var_2.d.a.c.x))));
}

fn func_2(arg_0: u32) -> bool {
    global0 = array<f32, 9>();
    global0 = array<f32, 9>();
    let var_0 = -u_input.a.x;
    var var_1 = Struct_5(vec2<u32>(arg_0, func_3()), vec4<bool>(_wgslsmith_sub_u32(~arg_0, firstLeadingBit(arg_0)) < arg_0, max(countOneBits(1u), arg_0) < 1u, any(vec4<bool>(false, true, true, true)) && any(vec3<bool>(false, false, false)), true), -795f, Struct_2(Struct_1(-firstLeadingBit(0i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0[_wgslsmith_index_u32(arg_0, 9u)], -877f), vec2<f32>(global0[_wgslsmith_index_u32(arg_0, 9u)], global0[_wgslsmith_index_u32(arg_0, 9u)]))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(0u, 9u)], global0[_wgslsmith_index_u32(arg_0, 9u)]))), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, arg_0), vec2<u32>(1u, 1u))), _wgslsmith_dot_vec3_u32(~countOneBits(vec3<u32>(4294967295u, arg_0, 84905u)), max(vec3<u32>(arg_0, arg_0, arg_0), ~vec3<u32>(arg_0, arg_0, 114340u))), -(_wgslsmith_dot_vec3_i32(vec3<i32>(-16421i, 12471i, -11689i), u_input.a.yzw) ^ var_0), Struct_1(-33i, vec2<f32>(2143f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0, 9u)])), ~vec2<u32>(arg_0, arg_0) ^ (vec2<u32>(33266u, arg_0) >> (vec2<u32>(arg_0, 4294967295u) % vec2<u32>(32u)))), Struct_1(u_input.a.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, 1140f), vec2<f32>(-174f, global0[_wgslsmith_index_u32(35520u, 9u)]))), vec2<u32>(arg_0, reverseBits(arg_0)))));
    global0 = array<f32, 9>();
    return false;
}

fn func_4(arg_0: bool) -> vec3<i32> {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-655f)), -1124f);
    global0 = array<f32, 9>();
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -993f);
    var var_1 = 76293u;
    var var_2 = vec4<u32>(1u, max(403u, max(70665u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(0u, 132243u, 0u)))), func_3(), ~(~1u));
    return u_input.a.www;
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: bool, arg_3: i32) -> bool {
    global0 = array<f32, 9>();
    global0 = array<f32, 9>();
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_1.e.c.x, _wgslsmith_sub_u32(arg_1.d.c.x, 1u)), 9u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_1.a.c.x, 9u)]))), arg_1.a.b.x);
    let var_1 = ~abs(abs(~_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.a.c.x, arg_1.d.c.x, 64733u, arg_1.b), vec4<u32>(arg_1.e.c.x, arg_1.e.c.x, 0u, 3149u), vec4<u32>(4294967295u, 36299u, 0u, 0u))));
    let var_2 = func_4(func_2(var_1.x));
    return all(select(!select(select(vec3<bool>(arg_2, true, arg_2), vec3<bool>(arg_2, true, false), vec3<bool>(false, false, arg_2)), select(vec3<bool>(true, true, true), vec3<bool>(true, arg_2, arg_2), vec3<bool>(true, arg_2, arg_2)), 13268u < var_1.x), select(!vec3<bool>(arg_2, arg_2, arg_2), select(vec3<bool>(arg_2, arg_2, true), select(vec3<bool>(true, arg_2, arg_2), vec3<bool>(arg_2, arg_2, false), false), vec3<bool>(true, arg_2, arg_2)), select(vec3<bool>(true, arg_2, arg_2), !vec3<bool>(true, arg_2, true), arg_2)), select(vec3<bool>(!arg_2, arg_2, any(vec4<bool>(arg_2, arg_2, arg_2, false))), vec3<bool>(false, all(vec3<bool>(arg_2, arg_2, false)), true), select(vec3<bool>(arg_2, arg_2, false), select(vec3<bool>(false, true, false), vec3<bool>(false, arg_2, false), arg_2), vec3<bool>(false, false, true)))));
}

fn func_5(arg_0: bool, arg_1: vec2<bool>) -> Struct_4 {
    global0 = array<f32, 9>();
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(0u, 9u)], global0[_wgslsmith_index_u32(23412u, 9u)])), global0[_wgslsmith_index_u32(59838u, 9u)]) * 709f), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(select(vec3<u32>(1u, 0u, 29864u), vec3<u32>(0u, 4294967295u, 96365u), false), ~vec3<u32>(2336u, 11240u, 4294967295u)) >> (0u % 32u), 9u)]);
    global0 = array<f32, 9>();
    let var_1 = _wgslsmith_clamp_vec2_u32(vec2<u32>(func_3(), 1u), _wgslsmith_mult_vec2_u32(vec2<u32>(abs(1u), 0u), ~_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 32816u), vec2<u32>(1u, 1u))), vec2<u32>(countOneBits(20820u), _wgslsmith_sub_u32(~41036u, _wgslsmith_mult_u32(1u, _wgslsmith_add_u32(0u, 33365u)))));
    global0 = array<f32, 9>();
    return Struct_4(Struct_2(Struct_1(-(i32(-1i) * -65784i), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(var_1.x, 9u)], -274f)))), ~var_1), var_1.x, ~u_input.a.x, Struct_1(u_input.a.x, var_0, vec2<u32>(func_3(), select(var_1.x, 0u, arg_0))), Struct_1(abs(11835i), _wgslsmith_div_vec2_f32(var_0, _wgslsmith_f_op_vec2_f32(select(var_0, var_0, arg_1))), var_1)), _wgslsmith_f_op_f32(min(-1140f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1029f, -2459f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0u;
    var var_1 = true;
    global0 = array<f32, 9>();
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(19316u, ~var_0, firstTrailingBit(var_0)), 9u)];
    var var_3 = func_5(!all(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(false, false))), !select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), true), vec2<bool>(true, false), func_1(vec4<f32>(-1021f, 1964f, -565f, global0[_wgslsmith_index_u32(var_0, 9u)]), Struct_2(Struct_1(2147483647i, vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 9u)], global0[_wgslsmith_index_u32(30268u, 9u)]), vec2<u32>(var_0, 36042u)), 4294967295u, u_input.a.x, Struct_1(u_input.a.x, vec2<f32>(global0[_wgslsmith_index_u32(var_0, 9u)], global0[_wgslsmith_index_u32(25514u, 9u)]), vec2<u32>(97108u, var_0)), Struct_1(u_input.a.x, vec2<f32>(1000f, -378f), vec2<u32>(var_0, var_0))), true, -1i)));
    var var_4 = -_wgslsmith_div_vec4_i32(reverseBits(~_wgslsmith_sub_vec4_i32(u_input.a, vec4<i32>(-20557i, 1i, u_input.a.x, 40304i))), _wgslsmith_mult_vec4_i32(vec4<i32>(reverseBits(-1i), ~var_3.a.d.a, _wgslsmith_dot_vec2_i32(u_input.a.zw, vec2<i32>(-26021i, 30157i)), -8427i), ~vec4<i32>(u_input.a.x, -28106i, u_input.a.x, var_3.a.e.a)));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-162f, global0[_wgslsmith_index_u32(min(abs(4294967295u), var_3.a.a.c.x), 9u)])), _wgslsmith_sub_vec2_i32(firstLeadingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_3.a.a.a, -1i), -vec2<i32>(var_4.x, u_input.a.x), var_4.xx)), vec2<i32>(~var_3.a.a.a & 2147483647i, -2147483647i)));
}

