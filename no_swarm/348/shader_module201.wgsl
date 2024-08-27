struct Struct_1 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec2<i32>,
    d: f32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 4> = array<vec3<f32>, 4>(vec3<f32>(-1120f, 160f, -165f), vec3<f32>(1132f, -510f, -818f), vec3<f32>(-1158f, 1355f, 221f), vec3<f32>(-1682f, -1017f, 957f));

var<private> global1: array<Struct_2, 9>;

var<private> global2: vec2<u32> = vec2<u32>(25050u, 1u);

var<private> global3: array<i32, 27> = array<i32, 27>(-37203i, 46009i, -9971i, 0i, 83587i, 1i, 2147483647i, -16279i, 0i, 2147483647i, 2147483647i, -3758i, i32(-2147483648), 2147483647i, -42960i, 33926i, -30821i, 2147483647i, 68115i, i32(-2147483648), 2147483647i, i32(-2147483648), 2147483647i, 2147483647i, 1i, 53028i, 27857i);

var<private> global4: array<f32, 12>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: bool, arg_3: vec3<u32>) -> vec3<u32> {
    var var_0 = Struct_1(select(vec3<u32>(11196u, 20216u, global2.x | ~arg_3.x), ~vec3<u32>(~arg_1.a.x, max(arg_1.a.x, 40030u), _wgslsmith_clamp_u32(arg_3.x, arg_1.a.x, u_input.d)), !arg_2), arg_1.b, vec2<i32>(arg_0.x, _wgslsmith_mod_i32(38401i, _wgslsmith_clamp_i32(~global3[_wgslsmith_index_u32(2373u, 27u)], u_input.b >> (48671u % 32u), arg_1.c.x))), -2152f);
    global4 = array<f32, 12>();
    let var_1 = arg_1;
    let var_2 = Struct_1(firstLeadingBit(vec3<u32>(~1u, ~(0u >> (arg_3.x % 32u)), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.a.x, arg_3.x), vec2<u32>(u_input.d, global2.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.d, arg_1.b.x))))))), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, firstTrailingBit(_wgslsmith_add_i32(-20690i, var_1.c.x))), var_1.c), -428f);
    let var_3 = select(vec4<bool>(false, 0u > _wgslsmith_mod_u32(0u, arg_3.x & 37846u), true || (max(var_1.c.x, var_2.c.x) == -2147483647i), true), !(!select(select(vec4<bool>(arg_2, arg_2, false, arg_2), vec4<bool>(arg_2, arg_2, arg_2, true), vec4<bool>(arg_2, arg_2, false, arg_2)), select(vec4<bool>(false, arg_2, arg_2, arg_2), vec4<bool>(false, arg_2, arg_2, arg_2), vec4<bool>(false, true, true, arg_2)), !vec4<bool>(true, arg_2, arg_2, true))), vec4<bool>(true, all(vec2<bool>(arg_2, false)) == arg_2, !arg_2, arg_2));
    return _wgslsmith_sub_vec3_u32(firstLeadingBit(_wgslsmith_div_vec3_u32(countOneBits(var_0.a), _wgslsmith_mod_vec3_u32(var_2.a, arg_1.a)) << (vec3<u32>(1u, select(var_1.a.x, 1u, var_3.x), 4294967295u) % vec3<u32>(32u))), ~(~reverseBits(arg_1.a)));
}

fn func_2(arg_0: u32) -> f32 {
    global2 = vec2<u32>(max(1u, u_input.d) | _wgslsmith_div_u32(1u, u_input.c | _wgslsmith_div_u32(4294967295u, 1u)), min(~firstLeadingBit(13317u), ~_wgslsmith_dot_vec3_u32(func_3(vec2<i32>(-1i, 4101i), Struct_1(vec3<u32>(u_input.c, u_input.c, global2.x), vec2<f32>(-407f, global4[_wgslsmith_index_u32(u_input.d, 12u)]), vec2<i32>(global3[_wgslsmith_index_u32(u_input.d, 27u)], u_input.b), global4[_wgslsmith_index_u32(u_input.d, 12u)]), true, vec3<u32>(1u, arg_0, 4294967295u)), vec3<u32>(arg_0, arg_0, global2.x) & vec3<u32>(0u, u_input.c, 8260u))));
    global0 = array<vec3<f32>, 4>();
    var var_0 = Struct_1(vec3<u32>(~_wgslsmith_clamp_u32(global2.x, 4294967295u, global2.x) ^ 11444u, 16436u, _wgslsmith_dot_vec4_u32(vec4<u32>(~0u, arg_0, _wgslsmith_div_u32(global2.x, u_input.a), 65849u), vec4<u32>(~22095u, global2.x, u_input.c, ~u_input.d))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4[_wgslsmith_index_u32(u_input.a, 12u)], global4[_wgslsmith_index_u32(4294967295u, 12u)])) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(223f, global4[_wgslsmith_index_u32(4294967295u, 12u)]), vec2<f32>(1267f, global4[_wgslsmith_index_u32(4294967295u, 12u)]))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-446f, global4[_wgslsmith_index_u32(global2.x, 12u)]) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1000f, global4[_wgslsmith_index_u32(global2.x, 12u)])))))), -vec2<i32>(u_input.b, global3[_wgslsmith_index_u32(arg_0, 27u)]), -306f);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(global4[_wgslsmith_index_u32(0u, 12u)], global4[_wgslsmith_index_u32(var_0.a.x, 12u)])))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_2) -> Struct_1 {
    global1 = array<Struct_2, 9>();
    var var_0 = Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(881f)), -1000f)), ~_wgslsmith_dot_vec4_u32(~(vec4<u32>(arg_3.b, global2.x, arg_3.b, 1u) >> (vec4<u32>(4294967295u, 20834u, 0u, 3866u) % vec4<u32>(32u))), ~vec4<u32>(14417u, 1u, 9397u, 0u) << (~vec4<u32>(global2.x, arg_2.b, arg_1.b, arg_3.b) % vec4<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-789f - _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(arg_0.x + -582f))) - -313f));
    return Struct_1(~(countOneBits(vec3<u32>(4294967295u, 5283u, u_input.d)) << ((vec3<u32>(1u, arg_1.b, 1u) << (min(vec3<u32>(arg_1.b, var_0.b, arg_1.b), vec3<u32>(global2.x, 51920u, arg_2.b)) % vec3<u32>(32u))) % vec3<u32>(32u))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.a, arg_1.a)))), _wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-31163i, global3[_wgslsmith_index_u32(49496u, 27u)]) << (vec2<u32>(40656u, 33921u) % vec2<u32>(32u)), -vec2<i32>(global3[_wgslsmith_index_u32(global2.x, 27u)], global3[_wgslsmith_index_u32(1u, 27u)]), countOneBits(vec2<i32>(global3[_wgslsmith_index_u32(u_input.c, 27u)], 2147483647i))) & ~(vec2<i32>(-1i, 54739i) << (vec2<u32>(1u, u_input.a) % vec2<u32>(32u))), ~_wgslsmith_add_vec2_i32(-vec2<i32>(-8544i, 1i), _wgslsmith_mult_vec2_i32(vec2<i32>(1i, global3[_wgslsmith_index_u32(arg_2.b, 27u)]), vec2<i32>(u_input.b, u_input.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.a, -314f))));
}

fn func_1() -> bool {
    let var_0 = func_4(vec2<f32>(_wgslsmith_div_f32(-897f, _wgslsmith_f_op_f32(func_2(1u))), global4[_wgslsmith_index_u32(_wgslsmith_div_u32(~u_input.a, 24372u >> (1u % 32u)) << (max(global2.x, min(u_input.c, 1u)) % 32u), 12u)]), global1[_wgslsmith_index_u32(global2.x, 9u)], global1[_wgslsmith_index_u32(u_input.d, 9u)], global1[_wgslsmith_index_u32(u_input.a, 9u)]);
    var var_1 = var_0;
    global2 = max(countOneBits(vec2<u32>(u_input.a, ~(~u_input.a))), ~(~(select(vec2<u32>(72823u, 4294967295u), var_1.a.xy, vec2<bool>(true, true)) >> (var_0.a.xx % vec2<u32>(32u)))));
    var var_2 = ~_wgslsmith_dot_vec4_u32(~(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, 0u, global2.x, u_input.c), vec4<u32>(41307u, 1u, 3275u, 1u))), firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.a.x, var_0.a.x, u_input.a, 61273u) << (vec4<u32>(33119u, 13851u, 69976u, 73401u) % vec4<u32>(32u)), countOneBits(vec4<u32>(56680u, 1u, 0u, 11530u)))));
    var var_3 = global1[_wgslsmith_index_u32(var_0.a.x | ~_wgslsmith_dot_vec2_u32(~var_0.a.xy, ~var_1.a.xz), 9u)];
    return all(vec2<bool>(-895f < var_1.b.x, !any(vec4<bool>(true, true, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!vec2<bool>(true, func_1()), vec2<bool>(true, func_4(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global4[_wgslsmith_index_u32(9227u, 12u)], global4[_wgslsmith_index_u32(0u, 12u)]))), Struct_2(1726f, u_input.d, 1152f), global1[_wgslsmith_index_u32(~u_input.d, 9u)], Struct_2(-1000f, global2.x, global4[_wgslsmith_index_u32(4294967295u, 12u)])).d <= global4[_wgslsmith_index_u32(max(21219u, max(global2.x, u_input.d)), 12u)]), select(select(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(select(false, false, false), any(vec3<bool>(true, true, false))), vec2<bool>(true, true)), select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(false, true), true), true), select(vec2<bool>(true, func_1()), vec2<bool>(true, true), vec2<bool>(true, true))));
    global3 = array<i32, 27>();
    var var_1 = Struct_1(vec3<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(global2.x, 1u, global2.x, 0u), select(vec4<u32>(0u, 4294967295u, 4294967295u, 0u), vec4<u32>(24051u, 4294967295u, 0u, u_input.d), true)), ~firstLeadingBit(global2.x)), func_3(_wgslsmith_clamp_vec2_i32(vec2<i32>(global3[_wgslsmith_index_u32(23034u, 27u)], global3[_wgslsmith_index_u32(u_input.a, 27u)]) >> (vec2<u32>(21680u, 1u) % vec2<u32>(32u)), ~vec2<i32>(global3[_wgslsmith_index_u32(u_input.a, 27u)], 32457i), -vec2<i32>(global3[_wgslsmith_index_u32(global2.x, 27u)], 0i)), func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4[_wgslsmith_index_u32(u_input.c, 12u)], 1170f)), Struct_2(1000f, u_input.a, 304f), global1[_wgslsmith_index_u32(~29480u, 9u)], Struct_2(-2068f, 0u, global4[_wgslsmith_index_u32(65246u, 12u)])), true, countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(67222u, 57812u, u_input.c), vec3<u32>(global2.x, global2.x, 41709u)))).x, ~(~4294967295u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-992f, -217f) - _wgslsmith_div_vec2_f32(vec2<f32>(1374f, global4[_wgslsmith_index_u32(1u, 12u)]), vec2<f32>(797f, 147f))) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(788f, 446f), vec2<f32>(1000f, -391f), vec2<bool>(var_0.x, var_0.x))), _wgslsmith_div_vec2_f32(vec2<f32>(global4[_wgslsmith_index_u32(0u, 12u)], 548f), vec2<f32>(-400f, global4[_wgslsmith_index_u32(u_input.a, 12u)])))))), _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(~vec2<i32>(global3[_wgslsmith_index_u32(27722u, 27u)], 31857i) << (max(vec2<u32>(u_input.a, 0u), vec2<u32>(u_input.c, global2.x)) % vec2<u32>(32u)), vec2<i32>(-u_input.b, i32(-1i) * -198i)), (-vec2<i32>(0i, u_input.b) << (vec2<u32>(1u, global2.x) % vec2<u32>(32u))) ^ (vec2<i32>(global3[_wgslsmith_index_u32(4464u, 27u)], 0i) | ~vec2<i32>(u_input.b, global3[_wgslsmith_index_u32(105321u, 27u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(0u, 12u)]))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(reverseBits(0u), 12u)] * global4[_wgslsmith_index_u32(func_4(vec2<f32>(-886f, -2078f), Struct_2(global4[_wgslsmith_index_u32(u_input.d, 12u)], 1u, global4[_wgslsmith_index_u32(19586u, 12u)]), global1[_wgslsmith_index_u32(u_input.d, 9u)], Struct_2(global4[_wgslsmith_index_u32(global2.x, 12u)], 10298u, -1067f)).a.x, 12u)]))));
    let var_2 = _wgslsmith_f_op_f32(-var_1.b.x);
    global3 = array<i32, 27>();
    var var_3 = _wgslsmith_dot_vec2_i32(~var_1.c, select(vec2<i32>(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, 1u, 13302u) | min(u_input.a, var_1.a.x), 27u)], -(-97052i >> (1u % 32u))), _wgslsmith_div_vec2_i32(max(~var_1.c, var_1.c ^ vec2<i32>(global3[_wgslsmith_index_u32(global2.x, 27u)], -2147483647i)), ~countOneBits(var_1.c)), select(vec2<bool>(any(var_0), var_0.x), select(vec2<bool>(var_0.x, var_0.x), !vec2<bool>(var_0.x, false), vec2<bool>(false, true)), select(!var_0, vec2<bool>(var_0.x, var_0.x), var_0))));
    var var_4 = select(var_1.a, var_1.a, ~global2.x >= _wgslsmith_dot_vec3_u32(vec3<u32>(global2.x >> (u_input.c % 32u), ~global2.x, _wgslsmith_mult_u32(4294967295u, var_1.a.x)), var_1.a));
    global1 = array<Struct_2, 9>();
    let var_5 = _wgslsmith_div_i32(22713i, _wgslsmith_clamp_i32(u_input.b, ~var_1.c.x, 1i));
    let x = u_input.a;
    s_output = StorageBuffer(var_2, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(785f, _wgslsmith_f_op_f32(exp2(var_2)), _wgslsmith_f_op_f32(-var_1.d), _wgslsmith_f_op_f32(-var_1.b.x)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1201f), _wgslsmith_f_op_f32(458f * global4[_wgslsmith_index_u32(0u, 12u)]), _wgslsmith_f_op_f32(abs(global4[_wgslsmith_index_u32(4294967295u, 12u)])), _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(25847u, 12u)] * global4[_wgslsmith_index_u32(4294967295u, 12u)])))), func_3(reverseBits(~vec2<i32>(u_input.b, var_1.c.x)), Struct_1(vec3<u32>(4294967295u, ~1u, global2.x), var_1.b, var_1.c, _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(11127u, 12u)])), false, vec3<u32>(~(~20301u), 1u | _wgslsmith_dot_vec2_u32(vec2<u32>(54171u, 1u), var_4.xz), ~(~u_input.a))).x);
}

