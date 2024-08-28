struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: bool,
    d: f32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_3 {
    a: bool,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_3,
    d: Struct_3,
    e: u32,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec3<i32>,
    d: vec2<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 8> = array<vec3<i32>, 8>(vec3<i32>(-604i, 0i, 35455i), vec3<i32>(33725i, -1i, 1i), vec3<i32>(-38212i, 1i, -1i), vec3<i32>(-1i, 17865i, 1i), vec3<i32>(2147483647i, 0i, 28461i), vec3<i32>(3105i, 2147483647i, i32(-2147483648)), vec3<i32>(0i, i32(-2147483648), i32(-2147483648)), vec3<i32>(19680i, 24824i, -13388i));

var<private> global1: array<u32, 12>;

var<private> global2: array<u32, 19> = array<u32, 19>(67123u, 4294967295u, 1728u, 0u, 56010u, 1u, 4294967295u, 1u, 1u, 57482u, 4294967295u, 1u, 29071u, 0u, 0u, 1u, 4294967295u, 45917u, 28717u);

var<private> global3: array<vec4<i32>, 12>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec2<u32>) -> bool {
    let var_0 = Struct_3(true, vec2<u32>(global1[_wgslsmith_index_u32(~firstTrailingBit(11995u), 12u)], _wgslsmith_clamp_u32(min(arg_2.x, arg_2.x), 17151u >> ((15408u << (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_1.x, 19u)], 19u)] % 32u)) % 32u), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_2.x, 12u)], 12u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 19u)], 19u)], 1u), vec4<u32>(14688u, 4294967295u, global2[_wgslsmith_index_u32(6210u, 19u)], 116538u)), firstTrailingBit(vec4<u32>(14682u, global1[_wgslsmith_index_u32(arg_1.x, 12u)], global1[_wgslsmith_index_u32(arg_1.x, 12u)], 4294967295u))))), arg_0);
    global0 = array<vec3<i32>, 8>();
    let var_1 = Struct_4(_wgslsmith_div_vec3_u32(var_0.c.e, vec3<u32>(arg_1.x, 15351u, global1[_wgslsmith_index_u32(~arg_2.x, 12u)])), arg_0, Struct_3(any(vec4<bool>(true, var_0.a, arg_0.c, arg_0.c)) & any(select(vec3<bool>(false, arg_0.c, var_0.a), vec3<bool>(false, arg_0.c, false), vec3<bool>(false, false, var_0.c.c))), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_2.x, arg_0.b.x), arg_0.b.xz >> (arg_1 % vec2<u32>(32u))) << (max(countOneBits(vec2<u32>(global2[_wgslsmith_index_u32(4294967295u, 19u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 19u)], 12u)])), firstLeadingBit(vec2<u32>(arg_0.b.x, arg_0.b.x))) % vec2<u32>(32u)), var_0.c), var_0, _wgslsmith_add_u32(4294967295u, ~countOneBits(global1[_wgslsmith_index_u32(1141u, 12u)])) << (~countOneBits(29341u) % 32u));
    var var_2 = Struct_2(!(!vec3<bool>(select(false, true, arg_0.c), true, var_1.c.c.c | var_0.a)), abs(vec3<i32>(-34157i, u_input.a, -22570i)), arg_0, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-1000f, -979f), _wgslsmith_f_op_f32(-1000f * arg_0.d)) * vec2<f32>(_wgslsmith_f_op_f32(select(arg_0.d, 365f, arg_0.c)), _wgslsmith_f_op_f32(trunc(var_0.c.d)))), vec2<f32>(_wgslsmith_f_op_f32(trunc(var_1.c.c.d)), -856f)));
    let var_3 = select(abs(var_2.b), _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(~u_input.c.yzw, global0[_wgslsmith_index_u32(4294967295u | global2[_wgslsmith_index_u32(4294967295u, 19u)], 8u)]), select(var_2.b, var_2.b, !vec3<bool>(arg_0.c, arg_0.c, var_2.c.c))), -vec3<i32>(_wgslsmith_mult_i32(-2147483647i, var_2.b.x), u_input.b, -1i)), min(1i, var_1.d.c.a.x) == u_input.a);
    return !var_2.c.c;
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_4(vec3<u32>(~_wgslsmith_add_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 19u)], 19u)], 19u)] | global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 19u)], 19u)], 19u)], 12u)], select(global2[_wgslsmith_index_u32(0u, 19u)], 4294967295u, false)), 0u, ~(4294967295u | global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 19u)], 12u)], 19u)], 12u)], 19u)] | global1[_wgslsmith_index_u32(0u, 12u)], 19u)])), Struct_1(u_input.c.wz, _wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(1u, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(56383u, 12u)], 12u)], 19u)], 1u)), vec3<u32>(firstTrailingBit(global2[_wgslsmith_index_u32(5729u, 19u)]), 4294967295u, ~global1[_wgslsmith_index_u32(89313u, 12u)])), select(all(vec4<bool>(true, true, true, true)), func_3(Struct_1(vec2<i32>(u_input.b, u_input.b), vec3<u32>(4294967295u, 1u, 1u), true, -1822f, vec3<u32>(62978u, 11448u, 91137u)), ~vec2<u32>(global2[_wgslsmith_index_u32(1u, 19u)], 59183u), max(vec2<u32>(0u, 67299u), vec2<u32>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(72578u, 12u)], 19u)], 19u)], 12u)], 12u)], 19u)], 4294967295u))), all(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false)))), -1000f, _wgslsmith_div_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u << (global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(37999u, 19u)], 12u)] % 32u), 12u)], 19u)], ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(6862u, 12u)], 12u)], countOneBits(global1[_wgslsmith_index_u32(1u, 12u)])), vec3<u32>(_wgslsmith_mult_u32(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(58187u, 19u)], 19u)]), ~global1[_wgslsmith_index_u32(75970u, 12u)], 53223u))), Struct_3(true, ~vec2<u32>(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 19u)], 12u)], 19u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 19u)], 12u)], 19u)]), abs(51694u)), Struct_1(reverseBits(vec2<i32>(u_input.a, u_input.c.x)) >> (min(vec2<u32>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(53773u, 19u)], 12u)], global2[_wgslsmith_index_u32(1u, 19u)]), vec2<u32>(1u, global2[_wgslsmith_index_u32(21368u, 19u)])) % vec2<u32>(32u)), _wgslsmith_mod_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(0u, 19u)], 4294967295u, 66537u) << (vec3<u32>(0u, 0u, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(5290u, 12u)], 19u)], 12u)], 19u)]) % vec3<u32>(32u)), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 12u)], 12u)], global2[_wgslsmith_index_u32(6893u, 19u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 12u)], 19u)], 12u)], 12u)], 19u)], 19u)], 12u)], 19u)], 12u)]) & vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(31272u, 12u)], 12u)], 73442u, 1u)), false, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-1000f)))), ~min(vec3<u32>(global2[_wgslsmith_index_u32(58016u, 19u)], 1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(56025u, 19u)], 12u)], 19u)], 19u)]), vec3<u32>(global1[_wgslsmith_index_u32(7074u, 12u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 12u)], 12u)], 0u)))), Struct_3(false, _wgslsmith_clamp_vec2_u32(vec2<u32>(countOneBits(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 12u)], 19u)]), 21661u >> (global2[_wgslsmith_index_u32(1u, 19u)] % 32u)), vec2<u32>(1u, 1u), _wgslsmith_add_vec2_u32(vec2<u32>(289u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(51116u, 12u)], 19u)], 19u)], 12u)], 19u)], 19u)]), abs(vec2<u32>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 12u)], 19u)], 30394u)))), Struct_1(u_input.c.xw, _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(40250u, 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 19u)], 19u)], 19u)]), vec3<u32>(21296u, 9321u, global2[_wgslsmith_index_u32(0u, 19u)])), ~vec3<u32>(global1[_wgslsmith_index_u32(0u, 12u)], global1[_wgslsmith_index_u32(43935u, 12u)], 39507u)), true, -500f, ~vec3<u32>(global2[_wgslsmith_index_u32(18256u, 19u)], global1[_wgslsmith_index_u32(56043u, 12u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 12u)], 19u)]))), ~_wgslsmith_clamp_u32(53134u, 0u, 1u));
    var var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.c.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.d) - _wgslsmith_f_op_f32(abs(-620f))), _wgslsmith_f_op_f32(sign(-461f)), var_0.c.c.d))));
    let var_2 = vec4<bool>(!var_0.b.c & any(vec4<bool>(true, any(vec2<bool>(true, var_0.c.c.c)), !var_0.d.c.c, func_3(var_0.b, vec2<u32>(global1[_wgslsmith_index_u32(32444u, 12u)], var_0.d.c.b.x), vec2<u32>(4294967295u, 12647u)))), -_wgslsmith_dot_vec4_i32(-u_input.c, _wgslsmith_mult_vec4_i32(u_input.c, u_input.c)) <= var_0.d.c.a.x, true, true);
    let var_3 = Struct_2(!vec3<bool>(!var_0.d.a, !all(vec3<bool>(true, false, var_0.c.c.c)), true), min(max((global0[_wgslsmith_index_u32(var_0.d.c.e.x, 8u)] | u_input.c.yzx) >> ((var_0.a & var_0.a) % vec3<u32>(32u)), ~global0[_wgslsmith_index_u32(var_0.e, 8u)]), -vec3<i32>(~u_input.b, var_0.d.c.a.x, _wgslsmith_dot_vec4_i32(global3[_wgslsmith_index_u32(46880u, 12u)], vec4<i32>(-2147483647i, 42474i, u_input.a, u_input.b)))), var_0.c.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(424f, -333f) * var_1.wy) + _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.b.d, var_0.c.c.d)))) - var_1.yy) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(var_1.yy, vec2<f32>(1171f, var_1.x), var_0.b.c)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_1.wy)))))));
    global0 = array<vec3<i32>, 8>();
    return var_0.c;
}

fn func_1() -> Struct_3 {
    let var_0 = func_2();
    var var_1 = Struct_5(~(~var_0.c.a.x));
    global2 = array<u32, 19>();
    let var_2 = false;
    var var_3 = !vec2<bool>(false, !(!any(vec3<bool>(var_2, false, false))));
    return func_2();
}

fn func_4(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: vec4<i32>, arg_3: vec4<bool>) -> vec4<bool> {
    var var_0 = Struct_5(u_input.a ^ _wgslsmith_dot_vec4_i32(~vec4<i32>(29327i, u_input.c.x, 30664i, u_input.c.x) >> ((vec4<u32>(arg_0.b.x, global1[_wgslsmith_index_u32(arg_0.c.b.x, 12u)], global2[_wgslsmith_index_u32(12327u, 19u)], arg_0.c.b.x) | vec4<u32>(50486u, global1[_wgslsmith_index_u32(75335u, 12u)], global1[_wgslsmith_index_u32(arg_0.b.x, 12u)], 1u)) % vec4<u32>(32u)), min(_wgslsmith_add_vec4_i32(u_input.c, arg_2), _wgslsmith_mod_vec4_i32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0.b.x, 12u)], 19u)], 12u)], 12u)], arg_2))));
    let var_1 = Struct_3(true, arg_0.c.b.yx, arg_0.c);
    var_0 = Struct_5(i32(-1i) * -380i);
    let var_2 = _wgslsmith_add_u32(~max(select(var_1.b.x, ~1u, false || arg_3.x), ~(11845u << (1u % 32u))), _wgslsmith_mod_u32(firstLeadingBit(arg_0.b.x) & ~_wgslsmith_add_u32(global1[_wgslsmith_index_u32(arg_0.b.x, 12u)], 63064u), 3726u));
    global3 = array<vec4<i32>, 12>();
    return !select(select(vec4<bool>(any(vec4<bool>(false, true, true, false)), !arg_0.a, true, all(arg_3.wzx)), vec4<bool>(true, true, func_3(arg_0.c, vec2<u32>(0u, var_2), vec2<u32>(48320u, 38038u)), !arg_0.a), !select(arg_3.x, arg_0.c.c, true)), select(arg_3, vec4<bool>(arg_2.x < var_0.a, var_1.a, arg_0.a, any(arg_3.xzx)), select(!vec4<bool>(arg_0.c.c, true, true, var_1.a), !arg_3, select(arg_3, arg_3, arg_3))), select(arg_3, vec4<bool>(false, arg_0.a, arg_0.a, true), !any(vec2<bool>(arg_3.x, var_1.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<i32>, 12>();
    let var_0 = Struct_5(-_wgslsmith_sub_i32(~(-22024i), _wgslsmith_div_i32(u_input.a, u_input.c.x)) << (47285u % 32u));
    var var_1 = vec2<bool>(any(select(func_4(func_1(), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-483f, -987f)), ~vec4<i32>(u_input.b, var_0.a, var_0.a, var_0.a), vec4<bool>(true, true, true, true)), select(func_4(Struct_3(false, vec2<u32>(global2[_wgslsmith_index_u32(2255u, 19u)], 10018u), Struct_1(u_input.c.ww, vec3<u32>(4915u, 0u, 33859u), true, 595f, vec3<u32>(global2[_wgslsmith_index_u32(33858u, 19u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 19u)], 12u)], 1u))), vec2<f32>(-1813f, 278f), vec4<i32>(69180i, 1i, -1i, -3750i), vec4<bool>(true, true, true, false)), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), true), vec4<bool>(true, true, true, true)), false)), func_2().c.c);
    var var_2 = -20705i;
    global1 = array<u32, 12>();
    let var_3 = ~(~firstTrailingBit(_wgslsmith_sub_u32(abs(global2[_wgslsmith_index_u32(1u, 19u)]), 29848u)));
    let var_4 = !all(!(!vec3<bool>(true, var_1.x, false)));
    let x = u_input.a;
    s_output = StorageBuffer(func_2().c.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2270f))) + -1784f), u_input.c.wwz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1f, 1f)))), u_input.c.wx);
}

