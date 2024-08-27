struct Struct_1 {
    a: i32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: u32,
    d: Struct_1,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: i32;

var<private> global2: array<u32, 3> = array<u32, 3>(4294967295u, 4294967295u, 45721u);

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_2(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: vec3<i32>) -> Struct_2 {
    global1 = -countOneBits(-2147483647i);
    let var_0 = arg_2.d;
    global1 = _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(arg_3 | ~_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, -6131i, 43060i), vec3<i32>(arg_2.d.a, -2147483647i, -2147483647i)), ~(~(-arg_3))), _wgslsmith_div_vec3_i32(~(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_2.d.a, u_input.a, 2147483647i), arg_3) & vec3<i32>(arg_0, arg_3.x, global0.a)), vec3<i32>(-2147483647i, abs(0i), 64675i)));
    global1 = _wgslsmith_dot_vec2_i32(vec2<i32>(~(-var_0.a) >> (reverseBits(22507u) % 32u), global0.a), vec2<i32>(-1i) * -vec2<i32>(arg_2.d.a, ~2147483647i));
    var var_1 = global0.b.x;
    return Struct_2(89043u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b.x, 1164f, -579f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + vec4<f32>(-967f, _wgslsmith_div_f32(arg_2.b.x, -831f), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(1065f * arg_1.x)))), countOneBits(firstLeadingBit(~0u) >> (_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(12056u, 1u, 1u)), vec3<u32>(0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 3u)], 3u)], global0.b.x)) % 32u)), var_0, vec3<bool>(arg_2.e.x, ~42443u > ~arg_2.a, false));
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(1535f, 137f)), 1f))), 636f)));
    var var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -min(vec4<i32>(-12641i, -2147483647i, 1i, global0.a), vec4<i32>(43356i, global0.a, u_input.a, -1i) >> (vec4<u32>(global0.b.x, 4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 3u)], 3u)], global0.b.x) % vec4<u32>(32u))), _wgslsmith_mult_vec4_i32(-vec4<i32>(_wgslsmith_div_i32(-20813i, 10812i), 0i, u_input.a, ~global0.a), vec4<i32>(-1i) * -vec4<i32>(u_input.a, global0.a, global0.a, 0i)));
    var var_2 = global0.b.x;
    let var_3 = Struct_2(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(73520u, 3u)], 3u)], 3u)], 4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0.b.x, 3u)], 3u)], global2[_wgslsmith_index_u32(39024u, 3u)])), ~(~vec4<u32>(47583u, global2[_wgslsmith_index_u32(63196u, 3u)], 53098u, global2[_wgslsmith_index_u32(global0.b.x, 3u)]))), 97921u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 168f, -770f, -1901f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-195f, -1052f, 1000f, -2182f))))), _wgslsmith_add_u32(countOneBits(abs(abs(global2[_wgslsmith_index_u32(4294967295u, 3u)]))), 24836u << (countOneBits(reverseBits(5105u)) % 32u)), func_2(global0.a, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(func_2(-27684i, vec2<f32>(778f, -321f), Struct_2(global2[_wgslsmith_index_u32(global0.b.x, 3u)], vec4<f32>(-648f, -145f, -642f, 443f), 1u, Struct_1(global0.a, vec2<u32>(14829u, 0u)), vec3<bool>(true, true, false)), vec3<i32>(-2147483647i, -2147483647i, global0.a)).b.x, -577f), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -703f), -1806f))), Struct_2(global2[_wgslsmith_index_u32(20740u, 3u)], vec4<f32>(-767f, -1931f, 337f, -1000f), 1u, Struct_1(u_input.a, vec2<u32>(27623u, 1u)), func_2(-31027i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1322f, 1296f)), Struct_2(global0.b.x, vec4<f32>(1112f, 116f, 183f, -1665f), global0.b.x, Struct_1(u_input.a, global0.b), vec3<bool>(true, false, false)), vec3<i32>(u_input.a, 18144i, 68282i)).e), -(~(-vec3<i32>(u_input.a, 2147483647i, 10131i)))).d, select(func_2(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(23920i, global0.a), vec2<i32>(global0.a, 1i)), 0i), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-316f, -1000f), vec2<f32>(-1697f, 1028f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(638f, 1329f))), func_2(u_input.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-234f, -1000f)), func_2(global0.a, vec2<f32>(326f, -2539f), Struct_2(1u, vec4<f32>(-124f, 589f, 113f, -169f), 0u, Struct_1(global0.a, vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 3u)], 3u)], 0u)), vec3<bool>(false, false, false)), vec3<i32>(-1i, global0.a, -37190i)), vec3<i32>(2147483647i, 3063i, -2147483647i)), max(-vec3<i32>(33850i, -1i, global0.a), vec3<i32>(u_input.a, global0.a, -1i) >> (vec3<u32>(1u, global0.b.x, 1u) % vec3<u32>(32u)))).e, vec3<bool>(true, select(true, true, true), 4294967295u == global2[_wgslsmith_index_u32(global0.b.x, 3u)]), false));
    let var_4 = var_3.d;
    return global0.b.x;
}

fn func_1(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: bool) -> vec4<u32> {
    let var_0 = arg_0.b.x;
    let var_1 = arg_0;
    var var_2 = func_2(~(-16965i), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -888f), _wgslsmith_f_op_f32(-1374f + var_0)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1281f, -2219f))))), arg_0, ~(~abs(vec3<i32>(arg_0.d.a, -35549i, -4632i))));
    var_2 = Struct_2(func_3(), var_1.b, 0u, func_2(~(abs(var_1.d.a) | _wgslsmith_add_i32(27790i, -1i)), vec2<f32>(1384f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(435f - -523f))), var_1, -vec3<i32>(var_1.d.a, firstTrailingBit(var_2.d.a), 0i)).d, func_2(~(-38902i), _wgslsmith_f_op_vec2_f32(abs(arg_0.b.ww)), Struct_2(global0.b.x, var_1.b, 9991u, var_1.d, select(arg_0.e, vec3<bool>(var_1.e.x, false, var_1.e.x), arg_0.e.x & false)), -select(vec3<i32>(global0.a, var_2.d.a, 44354i), vec3<i32>(10802i, var_2.d.a, var_1.d.a), arg_0.e) & (-vec3<i32>(arg_0.d.a, 2147483647i, 49857i) ^ countOneBits(vec3<i32>(1i, u_input.a, global0.a)))).e);
    var var_3 = !var_2.e.x;
    return vec4<u32>(~(~arg_0.c), global2[_wgslsmith_index_u32(max(_wgslsmith_dot_vec4_u32(arg_1, arg_1), _wgslsmith_add_u32(~1u, arg_1.x)) >> (~4294967295u % 32u), 3u)], func_3(), abs(1u & _wgslsmith_add_u32(arg_1.x | 0u, global0.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = abs((~(global0.a << (0u % 32u)) >> (_wgslsmith_mult_u32(min(global2[_wgslsmith_index_u32(0u, 3u)], 46852u), 0u) % 32u)) >> (_wgslsmith_sub_u32(min(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0.b.x, 3u)] << (61949u % 32u), 3u)], global0.b.x), _wgslsmith_mod_u32(global0.b.x, 34802u) << ((global2[_wgslsmith_index_u32(global0.b.x, 3u)] << (42493u % 32u)) % 32u)) % 32u));
    var var_0 = Struct_1(1i, ~((~global0.b ^ vec2<u32>(global0.b.x, 45434u)) << (global0.b % vec2<u32>(32u))));
    let var_1 = _wgslsmith_clamp_vec4_u32(select(vec4<u32>(_wgslsmith_div_u32(5205u, var_0.b.x), ~global2[_wgslsmith_index_u32(var_0.b.x, 3u)], _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b.x, 4422u), vec2<u32>(23693u, global2[_wgslsmith_index_u32(var_0.b.x, 3u)])), 0u), vec4<u32>(global2[_wgslsmith_index_u32(var_0.b.x, 3u)], 1u, 44595u | global0.b.x, 26986u >> (global2[_wgslsmith_index_u32(4294967295u, 3u)] % 32u)), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), false)), _wgslsmith_sub_vec4_u32(select(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0.b.x, 3u)], 3u)], 4294967295u, global0.b.x, global0.b.x) ^ vec4<u32>(var_0.b.x, 55523u, 0u, 4294967295u), ~vec4<u32>(var_0.b.x, 67327u, var_0.b.x, 28461u), true), _wgslsmith_add_vec4_u32(func_1(Struct_2(19838u, vec4<f32>(-1426f, 317f, -417f, 1000f), 20008u, Struct_1(1i, var_0.b), vec3<bool>(true, false, false)), vec4<u32>(14729u, var_0.b.x, 16074u, global0.b.x), false), max(vec4<u32>(global0.b.x, global0.b.x, 0u, global2[_wgslsmith_index_u32(var_0.b.x, 3u)]), vec4<u32>(4294967295u, 82566u, 2215u, global0.b.x)))), vec4<u32>(max(112021u & global0.b.x, global2[_wgslsmith_index_u32(reverseBits(4294967295u), 3u)]), ~1u, global0.b.x, countOneBits(~global2[_wgslsmith_index_u32(global0.b.x, 3u)]))) | vec4<u32>(_wgslsmith_sub_u32(~countOneBits(30986u), ~func_3()), 0u, 0u, global0.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(-(reverseBits(firstLeadingBit(vec2<i32>(global0.a, 0i))) | _wgslsmith_div_vec2_i32(firstTrailingBit(vec2<i32>(23072i, u_input.a)), _wgslsmith_div_vec2_i32(vec2<i32>(1i, global0.a), vec2<i32>(2147483647i, -37128i)))), _wgslsmith_add_vec2_i32(-select(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, var_0.a), vec2<i32>(9842i, var_0.a), vec2<i32>(-2147483647i, -2147483647i)), max(vec2<i32>(-15878i, var_0.a), vec2<i32>(-1i, 36851i)), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true))), vec2<i32>(-1i, ~func_2(u_input.a, vec2<f32>(-2615f, 523f), Struct_2(var_1.x, vec4<f32>(1580f, -913f, 1094f, -357f), 2893u, Struct_1(u_input.a, vec2<u32>(global2[_wgslsmith_index_u32(var_1.x, 3u)], 4294967295u)), vec3<bool>(false, false, false)), vec3<i32>(var_0.a, -1i, 25422i)).d.a)), _wgslsmith_mult_vec2_u32(var_0.b, countOneBits(min(~var_0.b, max(vec2<u32>(var_0.b.x, global2[_wgslsmith_index_u32(var_1.x, 3u)]), vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0.b.x, 3u)], 3u)], 3u)], global2[_wgslsmith_index_u32(17556u, 3u)]))))));
}

