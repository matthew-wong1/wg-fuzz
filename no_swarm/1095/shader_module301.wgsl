struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: f32,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec3<bool>, 18>;

var<private> global2: Struct_2;

var<private> global3: Struct_1 = Struct_1(-494f, vec2<f32>(-861f, 1000f), 2026f, false, 4294967295u);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1) -> vec4<i32> {
    var var_0 = arg_0;
    global2 = Struct_2(global2.a);
    var var_1 = Struct_2(Struct_1(var_0.b.x, vec2<f32>(828f, var_0.b.x), _wgslsmith_f_op_f32(ceil(611f)), var_0.d, global2.a.e));
    global0 = min(_wgslsmith_div_u32(reverseBits(global3.e), _wgslsmith_div_u32(1u, min(global2.a.e, var_0.e))), firstLeadingBit(max(min(39352u, global3.e), global3.e >> (6085u % 32u))) & 4294967295u);
    global1 = array<vec3<bool>, 18>();
    return -_wgslsmith_mult_vec4_i32(abs(firstLeadingBit(vec4<i32>(-1i, -2147483647i, u_input.a, u_input.a))), firstLeadingBit(vec4<i32>(-14533i, u_input.a, -45261i, u_input.a)) & max(vec4<i32>(u_input.a, -44395i, -2147483647i, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))) >> (reverseBits(max(~vec4<u32>(var_0.e, var_1.a.e, var_1.a.e, var_1.a.e), abs(vec4<u32>(4294967295u, var_0.e, 66318u, 579u)))) % vec4<u32>(32u));
}

fn func_2(arg_0: Struct_2) -> u32 {
    global3 = global2.a;
    var var_0 = ~vec3<u32>(0u, global3.e, global3.e);
    var var_1 = func_3(arg_0.a);
    var var_2 = true;
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(641f, global3.b.x, global2.a.d))))), global2.a.b, _wgslsmith_f_op_f32(-arg_0.a.c), true, global3.e));
    return ~(~(~(~global2.a.e))) & _wgslsmith_add_u32(arg_0.a.e, 4294967295u);
}

fn func_1() -> Struct_2 {
    var var_0 = vec2<u32>(_wgslsmith_dot_vec2_u32(abs(~countOneBits(vec2<u32>(0u, 80802u))), vec2<u32>(global2.a.e, _wgslsmith_sub_u32(global2.a.e, func_2(Struct_2(global2.a))))), _wgslsmith_dot_vec4_u32(vec4<u32>(~_wgslsmith_mult_u32(73575u, 26817u), 4294967295u, 54985u ^ ~global3.e, _wgslsmith_div_u32(firstTrailingBit(global2.a.e), global3.e)), ~(~(vec4<u32>(global3.e, global3.e, global3.e, global2.a.e) | vec4<u32>(0u, global2.a.e, global3.e, 283u)))));
    var var_1 = global2.a.d;
    var var_2 = Struct_2(global2.a);
    let var_3 = select(select(!vec3<bool>(global3.e > var_2.a.e, var_2.a.d, true), select(vec3<bool>(true, true, true), select(global1[_wgslsmith_index_u32(~var_0.x, 18u)], select(global1[_wgslsmith_index_u32(55258u, 18u)], global1[_wgslsmith_index_u32(1u, 18u)], vec3<bool>(true, global2.a.d, true)), !global1[_wgslsmith_index_u32(var_2.a.e, 18u)]), !select(global1[_wgslsmith_index_u32(var_0.x, 18u)], vec3<bool>(var_2.a.d, var_2.a.d, true), false)), select(vec3<bool>(false, false, !global3.d), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(14602u, var_2.a.e)), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, var_2.a.e), vec2<u32>(var_2.a.e, 26985u))), 18u)], false)), !select(global1[_wgslsmith_index_u32(~global2.a.e, 18u)], global1[_wgslsmith_index_u32(~(~0u), 18u)], vec3<bool>(true, var_2.a.d != global3.d, all(vec4<bool>(true, true, true, global2.a.d)))), false);
    var var_4 = Struct_1(596f, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1391f), -432f), global3.c, !all(vec2<bool>(true, select(global3.d, true, true))), _wgslsmith_dot_vec2_u32(vec2<u32>(31456u, _wgslsmith_mult_u32(4294967295u, 0u)), vec2<u32>(var_0.x, 0u)));
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(max(global2.a.b.x, -973f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(506f, var_4.c), _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.a.a, global3.b.x) - vec2<f32>(-176f, global2.a.c)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global3.a + global3.b.x))))), 0u > ((22603u >> (var_2.a.e % 32u)) ^ firstLeadingBit(var_0.x)), var_4.e));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = _wgslsmith_div_vec2_u32(reverseBits(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.a.e, global2.a.e, var_0.a.e), vec3<u32>(var_0.a.e, global2.a.e, global2.a.e)), global2.a.e | 66576u)), ~(vec2<u32>(1u, var_0.a.e) & select(vec2<u32>(global2.a.e, var_0.a.e), vec2<u32>(0u, global2.a.e), global3.d))) | ~abs(~(~vec2<u32>(global2.a.e, 52883u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-219f, -173f) - global2.a.a), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(global3.b, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-341f, -350f)))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.b.x, _wgslsmith_f_op_f32(step(1950f, global3.b.x))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global2.a.c, global3.a), var_0.a.b)) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1837f, 227f)))))), (vec3<i32>(28656i, 3464i ^ u_input.a, ~u_input.a) | vec3<i32>(27033i, u_input.a, _wgslsmith_mod_i32(27195i, 1i))) | vec3<i32>(-max(u_input.a, 70235i), u_input.a, u_input.a), 22092u);
}

