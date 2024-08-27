struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 29>;

var<private> global1: Struct_1;

var<private> global2: array<f32, 20> = array<f32, 20>(-1885f, 1241f, -572f, 2227f, 772f, 528f, -1000f, -339f, 1312f, -596f, 440f, 1611f, 148f, -1148f, -641f, 2423f, -721f, 1165f, 1239f, -844f);

var<private> global3: vec2<i32> = vec2<i32>(-4485i, -46238i);

var<private> global4: vec3<i32> = vec3<i32>(-1i, 2147483647i, i32(-2147483648));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<i32>, arg_2: vec2<bool>) -> u32 {
    var var_0 = ~4294967295u;
    var var_1 = Struct_1(reverseBits(~(_wgslsmith_clamp_vec3_u32(vec3<u32>(112512u, global1.a.x, 0u), global1.a, global1.a) & global1.a)));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(arg_0))));
    global0 = array<vec2<f32>, 29>();
    var var_3 = ~_wgslsmith_sub_vec3_u32(~global1.a, ~abs(vec3<u32>(0u, 4294967295u, 4294967295u)));
    return firstTrailingBit(_wgslsmith_mult_u32(8537u, var_3.x));
}

fn func_2(arg_0: vec4<f32>, arg_1: i32) -> vec2<bool> {
    var var_0 = ~global1.a.x ^ global1.a.x;
    var var_1 = Struct_1(vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(global1.a.x, _wgslsmith_add_u32(global1.a.x, global1.a.x)), func_3(vec2<f32>(arg_0.x, 1349f), ~vec3<i32>(u_input.a, arg_1, u_input.a), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)))), global1.a.x, ~(~(global1.a.x & 18429u))));
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(378f))));
    let var_3 = _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(global1.a.zz, select(_wgslsmith_div_vec2_u32(vec2<u32>(global1.a.x, var_1.a.x), global1.a.zx), reverseBits(vec2<u32>(var_1.a.x, 22760u)), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)))), vec2<u32>(firstTrailingBit(var_1.a.x << (global1.a.x % 32u)), ~_wgslsmith_div_u32(var_1.a.x, global1.a.x))) ^ 4294967295u;
    global2 = array<f32, 20>();
    return vec2<bool>(true, false);
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: Struct_1, arg_3: vec2<f32>) -> vec4<bool> {
    let var_0 = arg_2;
    var var_1 = !select(vec2<bool>(false, true), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_3.x, global2[_wgslsmith_index_u32(69872u, 20u)], 1107f, 535f), vec4<f32>(arg_3.x, -1435f, arg_3.x, 1000f)))), global4.x), !all(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), false)));
    global2 = array<f32, 20>();
    var var_2 = arg_2;
    let var_3 = 544f;
    return vec4<bool>(-_wgslsmith_div_i32(2147483647i, countOneBits(arg_1)) >= min(select(min(global3.x, global4.x), arg_1, true), -_wgslsmith_mult_i32(global4.x, global4.x)), select(true, (1u != func_3(vec2<f32>(arg_0, var_3), vec3<i32>(u_input.a, u_input.a, arg_1), vec2<bool>(var_1.x, true))) & var_1.x, 2147483647i > -arg_1), true, var_1.x);
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: vec2<f32>, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = firstTrailingBit(-51641i);
    let var_1 = global4.x;
    global2 = array<f32, 20>();
    var var_2 = !all(!(!(!vec4<bool>(arg_1, arg_1, true, arg_1))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) + _wgslsmith_div_f32(-338f, arg_2.x));
    return Struct_1(~_wgslsmith_div_vec3_u32(countOneBits(arg_3.xww), countOneBits(~vec3<u32>(arg_0, 0u, 0u))));
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = func_4(7940u >> (global1.a.x % 32u), !(arg_2.a.x <= global1.a.x), vec2<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global1.a.x << (~16337u % 32u), 20u)] + _wgslsmith_f_op_f32(round(-1126f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(21161u, 20u)], global2[_wgslsmith_index_u32(global1.a.x, 20u)], arg_0)), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(27847u, 20u)])))), _wgslsmith_sub_vec4_u32(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(global1.a.x, arg_2.a.x, arg_1.a.x, 4294967295u), vec4<u32>(25295u, arg_2.a.x, 19810u, arg_1.a.x))), ~firstLeadingBit(vec4<u32>(global1.a.x, 4495u, global1.a.x, 22790u) << (vec4<u32>(arg_2.a.x, global1.a.x, global1.a.x, arg_2.a.x) % vec4<u32>(32u)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(637f, 233f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-571f, -896f), _wgslsmith_div_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(var_0.a.x, 20u)], global2[_wgslsmith_index_u32(arg_1.a.x, 20u)]), vec2<f32>(-278f, 438f))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(2047f))), global2[_wgslsmith_index_u32(global1.a.x, 20u)])));
    var var_2 = vec4<u32>(46273u, ~select(firstLeadingBit(arg_2.a.x), 12654u, all(vec2<bool>(arg_0, false))), arg_2.a.x, global1.a.x) ^ firstTrailingBit(~reverseBits(vec4<u32>(42836u, 1u, 4294967295u, var_0.a.x) & vec4<u32>(var_0.a.x, 69092u, 18919u, var_0.a.x)));
    global4 = max(select(vec3<i32>(u_input.a, max(2147483647i, u_input.a), min(global3.x, global3.x)) << (reverseBits(vec3<u32>(arg_1.a.x, arg_2.a.x, var_0.a.x) ^ arg_2.a) % vec3<u32>(32u)), select(select(~vec3<i32>(global3.x, -45407i, -19639i), vec3<i32>(global3.x, global4.x, -2147483647i), vec3<bool>(arg_0, true, true)), firstLeadingBit(vec3<i32>(27251i, global4.x, u_input.a)), arg_0), false), vec3<i32>(_wgslsmith_mult_i32(-1i, -2155i), 7288i, _wgslsmith_div_i32(global4.x, _wgslsmith_add_i32(~u_input.a, 0i))));
    var var_3 = ~4294967295u;
    return Struct_1(max(~_wgslsmith_sub_vec3_u32(vec3<u32>(69048u, 63171u, var_0.a.x), arg_1.a), reverseBits(~_wgslsmith_add_vec3_u32(vec3<u32>(58761u, arg_1.a.x, 0u), vec3<u32>(arg_2.a.x, arg_2.a.x, var_0.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 20>();
    var var_0 = _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(-(vec2<i32>(global4.x, u_input.a) ^ (global4.xy << (vec2<u32>(global1.a.x, global1.a.x) % vec2<u32>(32u)))), firstTrailingBit(global4.zx)), global4.yx);
    global1 = func_5(!any(vec2<bool>(true, true)), func_4(global1.a.x, all(select(vec4<bool>(true, false, true, false), func_1(-1000f, global4.x, Struct_1(vec3<u32>(global1.a.x, global1.a.x, 0u)), vec2<f32>(1242f, global2[_wgslsmith_index_u32(359u, 20u)])), true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(global0[_wgslsmith_index_u32(14929u, 29u)])), _wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(global1.a.x, 29u)]))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(83203u, 20u)], 885f)))), ~select(vec4<u32>(global1.a.x, global1.a.x, 20322u, global1.a.x), ~vec4<u32>(global1.a.x, global1.a.x, 39265u, 4294967295u), false)), Struct_1(func_4(_wgslsmith_mod_u32(global1.a.x, _wgslsmith_sub_u32(global1.a.x, global1.a.x)), true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(global1.a.x, 20u)], -297f)) * vec2<f32>(217f, 1000f)), min(vec4<u32>(46084u, 0u, global1.a.x, 7407u), vec4<u32>(global1.a.x, 1u, 0u, global1.a.x))).a));
    var var_1 = func_5(false & (-(global4.x & u_input.a) <= ~2147483647i), Struct_1(global1.a), func_5(any(!func_2(vec4<f32>(global2[_wgslsmith_index_u32(global1.a.x, 20u)], 793f, global2[_wgslsmith_index_u32(24761u, 20u)], 442f), -32961i)), Struct_1(_wgslsmith_div_vec3_u32(vec3<u32>(global1.a.x, global1.a.x, global1.a.x), abs(global1.a))), func_4(~80016u >> (_wgslsmith_div_u32(1u, 1u) % 32u), func_2(vec4<f32>(global2[_wgslsmith_index_u32(global1.a.x, 20u)], 368f, global2[_wgslsmith_index_u32(595u, 20u)], 649f), global4.x >> (0u % 32u)).x, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1287f, global2[_wgslsmith_index_u32(global1.a.x, 20u)]))))), vec4<u32>(global1.a.x, ~2030u, ~global1.a.x, ~global1.a.x))));
    var var_2 = min(select(~(-(~global4.xz)), vec2<i32>(10027i, 1i), vec2<bool>(true, true)), vec2<i32>(u_input.a, 1i));
    var var_3 = Struct_1(global1.a);
    var var_4 = Struct_1(~(var_3.a | var_3.a));
    let x = u_input.a;
    s_output = StorageBuffer(-101f, var_1.a.zz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(0u, global1.a.x), 20u)], 708f)), countOneBits(var_2.x));
}

