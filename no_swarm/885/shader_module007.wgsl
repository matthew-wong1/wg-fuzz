struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 19> = array<vec2<f32>, 19>(vec2<f32>(-734f, -110f), vec2<f32>(1161f, 529f), vec2<f32>(-184f, 1215f), vec2<f32>(-971f, -187f), vec2<f32>(1058f, 340f), vec2<f32>(652f, 933f), vec2<f32>(278f, -1285f), vec2<f32>(690f, 396f), vec2<f32>(-631f, -749f), vec2<f32>(-920f, 1063f), vec2<f32>(-107f, -1417f), vec2<f32>(332f, -589f), vec2<f32>(1350f, -801f), vec2<f32>(-800f, -209f), vec2<f32>(821f, -321f), vec2<f32>(931f, 418f), vec2<f32>(719f, -856f), vec2<f32>(-486f, -140f), vec2<f32>(461f, 641f));

var<private> global1: f32 = 236f;

var<private> global2: array<i32, 6> = array<i32, 6>(2147483647i, 2147483647i, 23981i, 0i, 1i, 2147483647i);

var<private> global3: vec2<f32> = vec2<f32>(277f, 1000f);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<i32>, arg_1: i32, arg_2: Struct_2) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1053f * _wgslsmith_f_op_f32(-global3.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(159f)))) * global3.x);
    var var_1 = arg_2;
    var var_2 = Struct_2(~max(vec3<i32>(40451i, 1i, 46250i) & abs(u_input.a), vec3<i32>(~arg_2.a.x, -global2[_wgslsmith_index_u32(39164u, 6u)], global2[_wgslsmith_index_u32(4294967295u, 6u)] >> (21248u % 32u))), var_1.b);
    global3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(20921u, 1u), _wgslsmith_mult_u32(1u, 83791u)), 19u)])));
    let var_3 = -_wgslsmith_dot_vec4_i32(-firstTrailingBit(vec4<i32>(2147483647i, -2147483647i, -3671i, arg_2.b.a)) << (vec4<u32>(countOneBits(0u), ~15483u, 1u, 1u) % vec4<u32>(32u)), countOneBits(firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(9735i, u_input.a.x, var_2.b.a, arg_1), vec4<i32>(var_1.b.a, 1005i, -8611i, var_2.b.a)))));
    return 1u;
}

fn func_2() -> Struct_1 {
    let var_0 = max(_wgslsmith_mult_u32(50492u, func_3(u_input.a, ~(-8949i), Struct_2(~u_input.a, Struct_1(1i)))), firstLeadingBit(countOneBits(1u)));
    let var_1 = abs(~_wgslsmith_add_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 0i), u_input.a.yz), u_input.a.x));
    var var_2 = ~max(~vec3<u32>(var_0, 1u, _wgslsmith_div_u32(4294967295u, 79644u)), vec3<u32>(_wgslsmith_clamp_u32(var_0 & 1u, ~var_0, var_0), var_0, ~var_0));
    global3 = global0[_wgslsmith_index_u32(var_2.x, 19u)];
    var var_3 = 1u;
    return Struct_1(u_input.a.x);
}

fn func_1() -> vec4<u32> {
    global0 = array<vec2<f32>, 19>();
    var var_0 = func_2();
    var var_1 = 76903u;
    var var_2 = vec4<u32>(4294967295u, _wgslsmith_div_u32(select(1u, 1u, all(vec3<bool>(true, true, true))), ~(~1u)), ~func_3(max(-vec3<i32>(global2[_wgslsmith_index_u32(25604u, 6u)], u_input.a.x, 1i), vec3<i32>(-29027i, u_input.a.x, 21623i)), var_0.a, Struct_2(u_input.a, func_2())), 1u);
    let var_3 = !(4294967295u < var_2.x);
    return vec4<u32>(0u, var_2.x & firstLeadingBit(abs(3762u) >> (1u % 32u)), var_2.x, ~2426u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global3.x))), _wgslsmith_f_op_f32(select(global3.x, 1046f, false)))) - _wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(abs(global3.x)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(0u, 19u)])), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global3.x, 140f), vec2<f32>(-185f, global3.x))), vec2<bool>(all(vec2<bool>(true, true)), true))))) - global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), func_1()), vec4<u32>(1u, 1u, 1u, 1u)), 19u)]);
    global3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1565f, 2003f) * global0[_wgslsmith_index_u32(0u, 19u)]);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-func_2().a, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(-1i, global2[_wgslsmith_index_u32(83886u, 6u)], global2[_wgslsmith_index_u32(37412u, 6u)]), 1i)) << (~vec2<u32>(_wgslsmith_div_u32(44340u, 65835u), func_3(u_input.a, 0i, Struct_2(vec3<i32>(-2147483647i, 17847i, u_input.a.x), Struct_1(7135i)))) % vec2<u32>(32u)), min(-4561i | countOneBits(u_input.a.x), global2[_wgslsmith_index_u32(select(_wgslsmith_mult_u32(1u, 40174u), ~25076u, true), 6u)]) & -1i);
}

