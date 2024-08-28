struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1i, true, 63439i, 91021u);

var<private> global1: vec4<i32>;

var<private> global2: array<Struct_1, 25>;

var<private> global3: array<bool, 18> = array<bool, 18>(true, false, false, true, true, false, false, true, true, true, false, true, true, true, true, false, false, true);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: u32) -> vec4<bool> {
    var var_0 = 16201u;
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-354f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(857f, 514f), -1015f, true))))))));
    global2 = array<Struct_1, 25>();
    let var_2 = 568f;
    var var_3 = Struct_1(global1.x, global0.b, 4867i >> (~_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(0u, global0.d, 1u, arg_1.d)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 4294967295u, 0u, 4294967295u), vec4<u32>(global0.d, 2428u, arg_2, 1u))) % 32u), ~arg_2);
    return !select(!select(!vec4<bool>(var_3.b, global3[_wgslsmith_index_u32(global0.d, 18u)], false, var_3.b), vec4<bool>(false, var_3.b, global3[_wgslsmith_index_u32(15959u, 18u)], arg_1.b), !vec4<bool>(arg_1.b, true, false, var_3.b)), vec4<bool>(false, true, !all(vec4<bool>(true, false, global0.b, true)), arg_1.b), select(vec4<bool>(true, var_3.b, true, global3[_wgslsmith_index_u32(~1u, 18u)]), vec4<bool>(global0.b, true, !global3[_wgslsmith_index_u32(arg_1.d, 18u)], false), select(vec4<bool>(global3[_wgslsmith_index_u32(82985u, 18u)], false, global3[_wgslsmith_index_u32(42717u, 18u)], global3[_wgslsmith_index_u32(1u, 18u)]), select(vec4<bool>(false, true, var_3.b, false), vec4<bool>(var_3.b, arg_1.b, true, arg_1.b), false), var_2 <= var_1)));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: Struct_1, arg_3: f32) -> vec4<u32> {
    var var_0 = arg_2;
    global0 = global2[_wgslsmith_index_u32(~46932u, 25u)];
    global2 = array<Struct_1, 25>();
    global2 = array<Struct_1, 25>();
    var var_1 = 1u;
    return max(vec4<u32>(~(~1u), _wgslsmith_add_u32(~arg_0, 36224u), arg_1 & _wgslsmith_mult_u32(u_input.d, select(32593u, u_input.b, true)), max(~arg_0, 9138u)), ~(~vec4<u32>(4294967295u, arg_1, arg_1, _wgslsmith_dot_vec4_u32(vec4<u32>(3706u, 4294967295u, arg_1, u_input.d), vec4<u32>(1u, global0.d, arg_1, 1u)))));
}

fn func_2() -> Struct_1 {
    let var_0 = global2[_wgslsmith_index_u32(14740u, 25u)];
    global3 = array<bool, 18>();
    var var_1 = reverseBits(firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(48244u, u_input.b, u_input.d, 32148u), vec4<u32>(0u, 11685u, var_0.d, u_input.d) | vec4<u32>(var_0.d, global0.d, 0u, 7852u), vec4<u32>(1u, u_input.d, u_input.d, 0u) >> (vec4<u32>(global0.d, 10318u, u_input.a, 0u) % vec4<u32>(32u))))) ^ (_wgslsmith_clamp_vec4_u32(~select(vec4<u32>(184u, u_input.b, 4294967295u, 94716u), vec4<u32>(27197u, 7358u, global0.d, 22208u), vec4<bool>(global0.b, global0.b, var_0.b, false)), ~vec4<u32>(u_input.b, u_input.a, global0.d, 4294967295u) >> (func_3(u_input.a, var_0.d, Struct_1(var_0.c, global3[_wgslsmith_index_u32(u_input.b, 18u)], global1.x, var_0.d), 660f) % vec4<u32>(32u)), vec4<u32>(select(global0.d, 34018u, global3[_wgslsmith_index_u32(37262u, 18u)]), u_input.b, global0.d, 21760u)) >> (~((vec4<u32>(11147u, 0u, u_input.b, 0u) | vec4<u32>(u_input.a, global0.d, u_input.c.x, global0.d)) ^ _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 4294967295u, global0.d, global0.d), vec4<u32>(var_0.d, 66393u, 31156u, global0.d))) % vec4<u32>(32u)));
    let var_2 = global2[_wgslsmith_index_u32(~(~(~43979u << (u_input.d % 32u))), 25u)];
    global0 = global2[_wgslsmith_index_u32(firstTrailingBit(34429u), 25u)];
    return Struct_1(_wgslsmith_mult_i32(global1.x, -2147483647i), global3[_wgslsmith_index_u32(func_3(var_2.d, ~_wgslsmith_mult_u32(0u, firstLeadingBit(global0.d)), Struct_1(reverseBits(global1.x & 31984i), true, var_2.a, abs(~u_input.a)), -513f).x, 18u)], global1.x, var_1.x);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>) -> StorageBuffer {
    global2 = array<Struct_1, 25>();
    global0 = Struct_1(select(1i, arg_1.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-1483f, -1899f)))) < -1000f), global0.b, abs(arg_1.a), ~(~_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, u_input.a, global0.d, 33048u), vec4<u32>(4294967295u, arg_2.x, global0.d, arg_2.x))));
    var var_0 = -_wgslsmith_add_vec3_i32(global1.wxy, ~((vec3<i32>(global0.a, global1.x, arg_1.a) & global1.yzy) ^ countOneBits(global1.wzx)));
    global2 = array<Struct_1, 25>();
    global0 = Struct_1(arg_0.a, !arg_1.b, -firstLeadingBit(0i ^ arg_0.a), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(u_input.c, vec3<u32>(4294967295u, arg_1.d, _wgslsmith_clamp_u32(global0.d, 1u, u_input.b))), u_input.c));
    return StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -342f) + 642f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.d;
    global0 = Struct_1(min(-(countOneBits(-1190i) | ~global0.a), ~(~(-1i))), reverseBits(4999u) != ~_wgslsmith_dot_vec4_u32(vec4<u32>(global0.d, u_input.b, 4294967295u, global0.d), min(vec4<u32>(5866u, 1u, 0u, 32311u), vec4<u32>(4294967295u, 4294967295u, 0u, global0.d))), global1.x, abs(~u_input.a));
    var var_1 = vec3<u32>((_wgslsmith_div_u32(_wgslsmith_mult_u32(5475u, global0.d), global0.d) << ((global0.d ^ 0u) % 32u)) | ~firstTrailingBit(~global0.d), global0.d, abs(~(~_wgslsmith_clamp_u32(38376u, global0.d, global0.d))));
    let var_2 = func_1(global1.zz, Struct_1(global1.x, !(!(!global0.b)), 64673i, 9637u), _wgslsmith_dot_vec3_u32(vec3<u32>(32263u & var_1.x, _wgslsmith_add_u32(~4294967295u, max(4294967295u, 123681u)), global0.d), u_input.c));
    var var_3 = _wgslsmith_add_u32(33773u, select(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, var_1.x, global0.d), vec4<u32>(u_input.b, 4294967295u, var_1.x, 0u)), global0.d), global0.d, var_2.x));
    var var_4 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1985f, _wgslsmith_f_op_f32(f32(-1f) * -473f), _wgslsmith_f_op_f32(-892f + -261f), 528f)) - vec4<f32>(_wgslsmith_f_op_f32(abs(-1257f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(443f * 318f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-312f - 305f), _wgslsmith_f_op_f32(f32(-1f) * -207f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-696f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -131f), 440f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1125f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(620f + -814f) * -930f))));
    let x = u_input.a;
    s_output = func_4(Struct_1(global1.x, !any(var_2.xx), -1i, ~(~(var_1.x >> (var_1.x % 32u)))), func_2(), ~(~vec3<u32>(_wgslsmith_mod_u32(1u, 13098u), u_input.a, abs(var_1.x))));
}

