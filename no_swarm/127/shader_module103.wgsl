struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 20>;

var<private> global1: Struct_1 = Struct_1(0u);

var<private> global2: f32 = 1056f;

var<private> global3: bool;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: vec4<f32>) -> u32 {
    let var_0 = arg_2;
    global2 = -291f;
    var var_1 = Struct_1(min(_wgslsmith_mod_u32((global1.a & 18710u) | _wgslsmith_sub_u32(global1.a, global1.a), global1.a), ~(~(~global1.a))));
    let var_2 = !(!select(vec4<bool>(global1.a <= 1u, false, false, all(vec2<bool>(true, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false)), all(vec2<bool>(true, true))));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-611f - 274f))) * -195f) * global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(var_1.a, 0u, var_1.a) ^ vec3<u32>(var_1.a, var_1.a, 1u)), vec3<u32>(abs(1u), global1.a >> (1u % 32u), global1.a) & vec3<u32>(reverseBits(var_1.a), _wgslsmith_clamp_u32(var_1.a, 1u, 1u), 92703u)), 20u)]);
    return _wgslsmith_dot_vec3_u32(~vec3<u32>(global1.a, ~global1.a, 0u), select(~vec3<u32>(var_1.a, 22491u, var_1.a) & _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 0u, 29361u) ^ vec3<u32>(var_1.a, 0u, 4294967295u), vec3<u32>(global1.a, 19848u, 19501u), firstTrailingBit(vec3<u32>(14304u, 10752u, 70115u))), countOneBits(min(~vec3<u32>(var_1.a, var_1.a, global1.a), vec3<u32>(4294967295u, 1u, global1.a))), var_2.xzw));
}

fn func_2() -> bool {
    let var_0 = ~(~u_input.a.x);
    var var_1 = ~_wgslsmith_clamp_vec3_u32(~countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(31721u, global1.a, 3742u), vec3<u32>(global1.a, 26427u, 0u))), vec3<u32>(_wgslsmith_sub_u32(0u, func_3(var_0, 0i, vec4<f32>(-308f, -960f, -189f, 1000f))), _wgslsmith_sub_u32(4294967295u, ~global1.a), 25111u), countOneBits(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.a, 9549u, global1.a, global1.a), vec4<u32>(global1.a, 1u, global1.a, 4294967295u)), 1u, global1.a)));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(var_1.x, 20u)], global0[_wgslsmith_index_u32(max(global1.a, global1.a << (var_1.x % 32u)), 20u)])));
    var var_2 = vec4<i32>(u_input.a.x, -1i, var_0, i32(-1i) * -18824i);
    var var_3 = Struct_1(~4294967295u);
    return !any(vec3<bool>(select(var_0 == var_0, false, true), global1.a == (var_3.a & var_1.x), false));
}

fn func_4(arg_0: vec3<bool>) -> i32 {
    global1 = Struct_1(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(0u, global1.a, global1.a, 69966u) | ~vec4<u32>(global1.a, global1.a, 0u, global1.a)), select(~vec4<u32>(1u, 4294967295u, 4294967295u, global1.a), ~vec4<u32>(1u, global1.a, 4294967295u, 0u), true)));
    global3 = true;
    global3 = _wgslsmith_add_i32(-_wgslsmith_mod_i32(min(-2147483647i, 0i), max(71865i, u_input.a.x)), u_input.a.x) != -2147483647i;
    var var_0 = 0u;
    let var_1 = Struct_1(firstLeadingBit(1u));
    return 1i;
}

fn func_5(arg_0: i32) -> Struct_1 {
    let var_0 = -(select(vec3<i32>(arg_0, u_input.a.x >> (73338u % 32u), 9827i), u_input.a.xxz, vec3<bool>(true, true, true)) ^ (firstLeadingBit(u_input.a.yyw) << (firstTrailingBit(abs(vec3<u32>(1u, global1.a, 19191u))) % vec3<u32>(32u))));
    global2 = _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(~global1.a, 20u)]));
    var var_1 = Struct_1(firstLeadingBit(0u));
    let var_2 = vec4<i32>(-((_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 2147483647i, var_0.x), var_0) << (81214u % 32u)) ^ 1i), arg_0, _wgslsmith_mod_i32(-2147483647i, var_0.x), _wgslsmith_clamp_i32(reverseBits(max(16797i << (var_1.a % 32u), ~(-37755i))), _wgslsmith_mult_i32(u_input.a.x, -2147483647i), ~func_4(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true))));
    let var_3 = Struct_1(_wgslsmith_div_u32(1u, var_1.a));
    return Struct_1(10641u);
}

fn func_1(arg_0: i32, arg_1: vec4<f32>, arg_2: vec4<f32>, arg_3: vec4<i32>) -> u32 {
    var var_0 = -2581i;
    global0 = array<f32, 20>();
    global2 = global0[_wgslsmith_index_u32(global1.a << (min(_wgslsmith_dot_vec4_u32(vec4<u32>(96968u, 4294967295u, _wgslsmith_add_u32(global1.a, global1.a), 1u), reverseBits(vec4<u32>(global1.a, global1.a, global1.a, 56176u)) >> (~vec4<u32>(0u, global1.a, 28405u, 42802u) % vec4<u32>(32u))), ~global1.a) % 32u), 20u)];
    var var_1 = _wgslsmith_add_i32(2147483647i ^ min(-u_input.a.x, ~(-19510i)), arg_0) << (0u % 32u);
    let var_2 = func_5(func_4(select(vec3<bool>(false, func_2(), any(vec2<bool>(false, false))), select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), true)));
    return _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~(~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, var_2.a, 0u), vec3<u32>(global1.a, global1.a, 33570u))), _wgslsmith_add_vec3_u32(~firstTrailingBit(vec3<u32>(var_2.a, 36638u, global1.a)), countOneBits(select(vec3<u32>(global1.a, 4294967295u, global1.a), vec3<u32>(1u, 1523u, 36955u), vec3<bool>(true, true, true))))), firstTrailingBit(_wgslsmith_div_u32(var_2.a, 71554u)) ^ firstTrailingBit(global1.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec2<u32>(~global1.a ^ 1u, global1.a), vec2<u32>(20244u, ~global1.a), !(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~global1.a, 20u)]) > global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1.a, 17922u), 20u)]));
    let var_1 = global0[_wgslsmith_index_u32((~max(_wgslsmith_mod_u32(global1.a, global1.a), ~global1.a) >> (_wgslsmith_mult_u32(_wgslsmith_add_u32(9059u, ~31910u), global1.a) % 32u)) >> (45960u % 32u), 20u)];
    global2 = global0[_wgslsmith_index_u32(global1.a, 20u)];
    global2 = global0[_wgslsmith_index_u32(~((var_0.x >> (~func_1(u_input.a.x, vec4<f32>(-1564f, -370f, global0[_wgslsmith_index_u32(68562u, 20u)], global0[_wgslsmith_index_u32(global1.a, 20u)]), vec4<f32>(global0[_wgslsmith_index_u32(var_0.x, 20u)], -641f, global0[_wgslsmith_index_u32(var_0.x, 20u)], global0[_wgslsmith_index_u32(var_0.x, 20u)]), u_input.a) % 32u)) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(firstTrailingBit(var_0.x), _wgslsmith_add_u32(var_0.x, global1.a), firstTrailingBit(global1.a)), select(abs(vec3<u32>(var_0.x, 18935u, 1u)), _wgslsmith_mult_vec3_u32(vec3<u32>(33093u, var_0.x, 88837u), vec3<u32>(59333u, var_0.x, global1.a)), true)) % 32u)), 20u)];
    var var_2 = func_5(max(u_input.a.x, -59523i));
    global1 = func_5(~abs(-1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-632f, global0[_wgslsmith_index_u32(global1.a, 20u)]) + vec2<f32>(global0[_wgslsmith_index_u32(global1.a, 20u)], -1948f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(472f, 619f) * vec2<f32>(877f, -1044f))))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-397f, global0[_wgslsmith_index_u32(global1.a, 20u)])) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0[_wgslsmith_index_u32(1u, 20u)], -1000f)))), vec2<f32>(213f, _wgslsmith_f_op_f32(abs(1718f))), vec2<bool>(true, true)))), -u_input.a, min(select(vec4<u32>(4294967295u, global1.a, reverseBits(global1.a), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 0u, 29196u), vec3<u32>(66694u, 61128u, 43108u))), ~vec4<u32>(var_2.a, global1.a, var_0.x, var_2.a), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), false)), reverseBits(vec4<u32>(var_2.a, 33845u, global1.a, 4294967295u) | vec4<u32>(var_2.a, 0u, 56133u, 39031u))));
}

