struct Struct_1 {
    a: i32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: bool,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 23462u;

var<private> global1: array<bool, 20> = array<bool, 20>(false, true, true, false, true, false, true, true, false, true, true, true, false, true, true, false, false, false, true, true);

var<private> global2: array<vec4<f32>, 32>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> u32 {
    global1 = array<bool, 20>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-327f, -649f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 146f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(262f, 211f)))))));
    let var_1 = -(~countOneBits(u_input.a.x));
    var var_2 = _wgslsmith_add_i32(min(select(~0i, 45479i >> (~4294967295u % 32u), global1[_wgslsmith_index_u32(u_input.c.x >> (firstTrailingBit(4113u) % 32u), 20u)]), u_input.b.x), 1i);
    let var_3 = Struct_1(countOneBits(-23762i), vec4<i32>(-u_input.b.x, var_1, 12168i, -1i));
    return firstLeadingBit(~_wgslsmith_mod_u32(~abs(1u), ~countOneBits(58135u)));
}

fn func_2() -> i32 {
    global0 = ~u_input.c.x;
    var var_0 = global1[_wgslsmith_index_u32(u_input.c.x, 20u)];
    global0 = func_3();
    var var_1 = Struct_2(!select(vec4<bool>(global1[_wgslsmith_index_u32(firstLeadingBit(u_input.d.x), 20u)], true, any(vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.d.x, 20u)])), global1[_wgslsmith_index_u32(abs(0u), 20u)]), !vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.c.x, 20u)], global1[_wgslsmith_index_u32(6501u, 20u)], false), select(select(vec4<bool>(true, true, false, true), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 20u)], global1[_wgslsmith_index_u32(u_input.c.x, 20u)], false, true), global1[_wgslsmith_index_u32(4294967295u, 20u)]), !vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 20u)], global1[_wgslsmith_index_u32(u_input.c.x, 20u)], global1[_wgslsmith_index_u32(u_input.c.x, 20u)], global1[_wgslsmith_index_u32(4294967295u, 20u)]), u_input.c.x >= 0u)), false & (global1[_wgslsmith_index_u32(u_input.d.x, 20u)] & true), global1[_wgslsmith_index_u32(u_input.d.x, 20u)], Struct_1(38007i, abs(~vec4<i32>(u_input.a.x, 1i, u_input.a.x, u_input.b.x) ^ (vec4<i32>(u_input.a.x, 0i, u_input.a.x, 0i) >> (vec4<u32>(u_input.d.x, 0u, 4294967295u, 1515u) % vec4<u32>(32u))))), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c.x, _wgslsmith_div_u32(reverseBits(~19739u), ~24278u)), 20u)]);
    var var_2 = vec4<i32>(u_input.b.x, u_input.b.x, u_input.a.x, 48002i);
    return -6117i | var_2.x;
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: vec2<u32>) -> vec4<f32> {
    global1 = array<bool, 20>();
    global2 = array<vec4<f32>, 32>();
    var var_0 = Struct_1(1i, -vec4<i32>(u_input.b.x, ~(u_input.a.x << (4294967295u % 32u)), _wgslsmith_clamp_i32(arg_0.b.x, u_input.b.x, func_2()), _wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.b.x, u_input.a.x), _wgslsmith_mod_i32(arg_0.b.x, -1i))));
    var var_1 = Struct_2(select(select(select(vec4<bool>(global1[_wgslsmith_index_u32(arg_1, 20u)], global1[_wgslsmith_index_u32(arg_1, 20u)], false, global1[_wgslsmith_index_u32(0u, 20u)]), vec4<bool>(global1[_wgslsmith_index_u32(arg_1, 20u)], global1[_wgslsmith_index_u32(arg_1, 20u)], global1[_wgslsmith_index_u32(arg_2.x, 20u)], global1[_wgslsmith_index_u32(u_input.c.x, 20u)]), !vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.c.x, 20u)], false, global1[_wgslsmith_index_u32(1u, 20u)])), vec4<bool>(0u == arg_2.x, global1[_wgslsmith_index_u32(~0u, 20u)], arg_2.x != 14128u, true), vec4<bool>(global1[_wgslsmith_index_u32(~arg_2.x, 20u)], global1[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 36043u), 20u)], true, true)), select(!(!vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.d.x, 20u)], true, global1[_wgslsmith_index_u32(arg_2.x, 20u)])), vec4<bool>(false, true, false, true), global1[_wgslsmith_index_u32(~u_input.d.x << (41791u % 32u), 20u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(abs(0u), 20u)], all(vec3<bool>(global1[_wgslsmith_index_u32(40465u, 20u)], false, global1[_wgslsmith_index_u32(arg_1, 20u)])), false, !global1[_wgslsmith_index_u32(u_input.d.x, 20u)]), vec4<bool>(all(vec4<bool>(global1[_wgslsmith_index_u32(1u, 20u)], true, true, false)), global1[_wgslsmith_index_u32(arg_2.x, 20u)], global1[_wgslsmith_index_u32(18961u, 20u)] & global1[_wgslsmith_index_u32(79496u, 20u)], global1[_wgslsmith_index_u32(0u, 20u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(arg_2.x, 20u)], false, global1[_wgslsmith_index_u32(arg_2.x, 20u)], global1[_wgslsmith_index_u32(u_input.c.x, 20u)]), select(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.c.x, 20u)], true, false), vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 20u)], true, global1[_wgslsmith_index_u32(u_input.d.x, 20u)], global1[_wgslsmith_index_u32(arg_2.x, 20u)]), vec4<bool>(global1[_wgslsmith_index_u32(1u, 20u)], global1[_wgslsmith_index_u32(20862u, 20u)], global1[_wgslsmith_index_u32(arg_2.x, 20u)], false)), arg_2.x >= arg_2.x))), abs(reverseBits(abs(arg_2.x))) < _wgslsmith_div_u32(~arg_1, ~arg_2.x >> (~u_input.d.x % 32u)), !global1[_wgslsmith_index_u32(arg_2.x, 20u)], Struct_1(var_0.a, vec4<i32>(var_0.a, 0i, _wgslsmith_mod_i32(u_input.a.x, ~0i), -_wgslsmith_dot_vec4_i32(arg_0.b, var_0.b))), global1[_wgslsmith_index_u32(~10631u, 20u)]);
    let var_2 = false;
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(u_input.c.x, 32u)] * vec4<f32>(-243f, 1813f, 1124f, -1345f))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(2311f, 882f)), -856f, _wgslsmith_f_op_f32(ceil(-629f)), _wgslsmith_f_op_f32(ceil(-1182f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_1(Struct_1(-1i, ~vec4<i32>(u_input.a.x, -39916i, -1i, 11025i) ^ (firstTrailingBit(vec4<i32>(41605i, -7204i, 5320i, u_input.a.x)) & vec4<i32>(16181i, 0i, u_input.b.x, u_input.b.x))), ~(u_input.c.x << (u_input.d.x % 32u)), abs(u_input.d << (vec2<u32>(u_input.d.x | u_input.d.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, u_input.d.x, u_input.c.x), vec3<u32>(u_input.d.x, 0u, 1u))) % vec2<u32>(32u)))));
    global0 = u_input.c.x;
    global1 = array<bool, 20>();
    let var_1 = Struct_2(!(!select(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.c.x, 20u)], global1[_wgslsmith_index_u32(u_input.d.x, 20u)], true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, global1[_wgslsmith_index_u32(26078u, 20u)], true))), !global1[_wgslsmith_index_u32(1u, 20u)], any(select(!vec3<bool>(global1[_wgslsmith_index_u32(1u, 20u)], true, true), !vec3<bool>(global1[_wgslsmith_index_u32(1u, 20u)], global1[_wgslsmith_index_u32(0u, 20u)], global1[_wgslsmith_index_u32(u_input.d.x, 20u)]), global1[_wgslsmith_index_u32(~u_input.c.x, 20u)])) && global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(u_input.c.x, reverseBits(u_input.c.x)), ~(~u_input.c.x)), 20u)], Struct_1(select(_wgslsmith_add_i32(~u_input.b.x, _wgslsmith_sub_i32(u_input.b.x, u_input.a.x)), 1954i, ~1u != _wgslsmith_mod_u32(u_input.d.x, u_input.c.x)), max(vec4<i32>(1i, firstTrailingBit(12705i), select(u_input.a.x, u_input.b.x, global1[_wgslsmith_index_u32(4294967295u, 20u)]), -2147483647i), countOneBits(vec4<i32>(u_input.b.x, 1i, u_input.a.x, -35012i)))), u_input.b.x <= u_input.a.x);
    global2 = array<vec4<f32>, 32>();
    global2 = array<vec4<f32>, 32>();
    var var_2 = -(~(u_input.b.x | -(~(-3910i))));
    let var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_mult_u32(~(~u_input.d.x), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 58284u, u_input.d.x) & vec4<u32>(u_input.c.x, 152445u, 1u, u_input.c.x), vec4<u32>(23779u, u_input.d.x, 4294967295u, 1u))), 4294967295u), u_input.c.x, var_3.d.b.yyx, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(var_0.yw)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1368f, _wgslsmith_f_op_f32(trunc(-1713f)))))));
}

