struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, 25361u, vec4<i32>(15550i, 1i, -28087i, i32(-2147483648)), 0u);

var<private> global1: array<u32, 18>;

var<private> global2: array<vec4<u32>, 29> = array<vec4<u32>, 29>(vec4<u32>(1u, 0u, 0u, 8917u), vec4<u32>(1u, 64723u, 33299u, 32587u), vec4<u32>(4294967295u, 4294967295u, 19153u, 1u), vec4<u32>(0u, 0u, 8929u, 1u), vec4<u32>(4294967295u, 4294967295u, 6551u, 22694u), vec4<u32>(1u, 1u, 1u, 34017u), vec4<u32>(1u, 14384u, 26386u, 1u), vec4<u32>(49040u, 34905u, 28645u, 42446u), vec4<u32>(4294967295u, 0u, 24239u, 6323u), vec4<u32>(0u, 43246u, 0u, 1u), vec4<u32>(0u, 20157u, 4294967295u, 4294967295u), vec4<u32>(1u, 20271u, 107599u, 0u), vec4<u32>(4294967295u, 30625u, 88986u, 18031u), vec4<u32>(0u, 29395u, 0u, 2327u), vec4<u32>(4294967295u, 1u, 1u, 4294967295u), vec4<u32>(90097u, 0u, 46006u, 13565u), vec4<u32>(0u, 1u, 0u, 38537u), vec4<u32>(35389u, 26520u, 1u, 1u), vec4<u32>(0u, 4294967295u, 38886u, 40175u), vec4<u32>(4294967295u, 45086u, 27070u, 57602u), vec4<u32>(4294967295u, 2246u, 0u, 56155u), vec4<u32>(59254u, 32886u, 4294967295u, 36273u), vec4<u32>(2361u, 10417u, 55932u, 57183u), vec4<u32>(51971u, 5983u, 1u, 1u), vec4<u32>(4294967295u, 3726u, 1u, 30667u), vec4<u32>(63845u, 4294967295u, 1u, 91206u), vec4<u32>(4294967295u, 0u, 4294967295u, 1u), vec4<u32>(47615u, 0u, 4294967295u, 0u), vec4<u32>(0u, 1u, 105137u, 4294967295u));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: Struct_1) -> bool {
    let var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(778f, 1000f))), vec2<f32>(-170f, _wgslsmith_f_op_f32(f32(-1f) * -309f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(-239f, -244f), vec2<f32>(-1136f, 1709f)))) * vec2<f32>(-867f, _wgslsmith_f_op_f32(1367f + 328f)))) + vec2<f32>(-1718f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1354f))), 1000f))));
    var var_2 = arg_2;
    global2 = array<vec4<u32>, 29>();
    let var_3 = _wgslsmith_dot_vec3_u32(~vec3<u32>(firstLeadingBit(25109u | var_2.d), _wgslsmith_clamp_u32(1u, 2710u, 31893u >> (var_2.d % 32u)), ~global0.d), select(min(vec3<u32>(arg_2.b, global0.b, 0u) ^ vec3<u32>(global0.b, 1u, global1[_wgslsmith_index_u32(0u, 18u)]), ~vec3<u32>(4294967295u, 0u, 15296u)), ~(vec3<u32>(12353u, 51931u, var_0.d) & vec3<u32>(45540u, 1u, var_2.b)), any(!vec3<bool>(false, arg_2.a, var_2.a))) << (countOneBits(vec3<u32>(var_2.b, global0.b, var_2.b)) % vec3<u32>(32u)));
    return true;
}

fn func_2() -> i32 {
    var var_0 = Struct_1(func_3(u_input.a, _wgslsmith_sub_i32(-(~global0.c.x), u_input.b), Struct_1(false, ~1u, _wgslsmith_add_vec4_i32(global0.c, abs(vec4<i32>(-2147483647i, -35826i, global0.c.x, u_input.b))), _wgslsmith_mult_u32(69873u, global0.b) >> (~0u % 32u))), global1[_wgslsmith_index_u32(min(u_input.a, ~u_input.a), 18u)], min(~vec4<i32>(0i, 1i, 0i, u_input.b | u_input.c.x), vec4<i32>(global0.c.x, -23080i, _wgslsmith_div_i32(global0.c.x, u_input.b) | global0.c.x, u_input.c.x)), 27103u);
    return abs(var_0.c.x);
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<u32>, arg_2: vec4<i32>, arg_3: vec2<i32>) -> u32 {
    var var_0 = Struct_1(true, 82839u, countOneBits(select(~(-global0.c), global0.c, true)), 1u);
    var var_1 = Struct_1(func_2() >= ~func_2(), 4294967295u, var_0.c, ~1u);
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -830f), 1f), 1373f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-1000f)))))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1053f, -1498f, 2180f) + vec3<f32>(1403f, -1419f, -118f))))))));
    var var_3 = vec3<i32>(func_2(), u_input.b, _wgslsmith_mult_i32(select(-11343i, select(_wgslsmith_div_i32(-1i, 8214i), _wgslsmith_div_i32(1i, -2147483647i), true), all(!vec4<bool>(false, global0.a, global0.a, var_1.a))), _wgslsmith_mult_i32(u_input.c.x, _wgslsmith_mult_i32(-2992i, arg_2.x) >> (abs(arg_0.x) % 32u))));
    global2 = array<vec4<u32>, 29>();
    return global0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global1 = array<u32, 18>();
    let var_1 = Struct_1(var_0, ~func_1(_wgslsmith_sub_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(1u, 18u)], u_input.a, 12361u), vec3<u32>(103953u, u_input.a, u_input.a)) | vec3<u32>(global1[_wgslsmith_index_u32(global0.d, 18u)], u_input.a, 1u), global2[_wgslsmith_index_u32(1u, 29u)], max(global0.c, global0.c), _wgslsmith_mult_vec2_i32(vec2<i32>(-1i, global0.c.x) >> (vec2<u32>(34130u, global1[_wgslsmith_index_u32(43319u, 18u)]) % vec2<u32>(32u)), firstLeadingBit(vec2<i32>(global0.c.x, 1i)))), global0.c, 18026u);
    var var_2 = Struct_1(var_0, var_1.b, global0.c, func_1(vec3<u32>(_wgslsmith_add_u32(~var_1.d, global0.b), 55876u, 0u), _wgslsmith_mod_vec4_u32(firstLeadingBit(global2[_wgslsmith_index_u32(func_1(vec3<u32>(0u, global0.d, 36569u), vec4<u32>(var_1.d, global0.d, 0u, var_1.d), vec4<i32>(u_input.c.x, -13122i, -64231i, var_1.c.x), vec2<i32>(global0.c.x, -2147483647i)), 29u)]), firstLeadingBit(select(global2[_wgslsmith_index_u32(var_1.b, 29u)], vec4<u32>(global0.b, 71423u, global0.b, var_1.d), vec4<bool>(var_1.a, var_1.a, var_0, var_0)))), global0.c, -_wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(global0.c.x, u_input.b)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, u_input.c.x), global0.c.yy, global0.c.zx))));
    global0 = var_1;
    let var_3 = Struct_1(var_2.a, abs(4294967295u), vec4<i32>(firstLeadingBit(var_1.c.x) | countOneBits(-24501i), abs(_wgslsmith_dot_vec3_i32(global0.c.wwz, var_2.c.wyz)), abs(global0.c.x << (global1[_wgslsmith_index_u32(u_input.a, 18u)] % 32u)), countOneBits(1i)) >> (global2[_wgslsmith_index_u32(_wgslsmith_add_u32(20052u, var_2.d), 29u)] % vec4<u32>(32u)), global1[_wgslsmith_index_u32(1u, 18u)]);
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-440f, 558f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -292f))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1018f, 872f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-206f, 1031f))))));
    var var_5 = firstLeadingBit(~vec2<u32>(~u_input.a, reverseBits(1u)));
    var var_6 = _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i) * -_wgslsmith_sub_vec2_i32(countOneBits(var_1.c.yz), ~vec2<i32>(1i, var_3.c.x)), vec2<i32>(_wgslsmith_div_i32(-18157i, -8909i), -20271i), firstLeadingBit(vec2<i32>(select(abs(global0.c.x), u_input.b, false), -8778i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-883f, 136f, var_4.x) + vec3<f32>(var_4.x, 664f, -1000f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(240f, var_4.x, 977f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_4.x, 861f, -709f)))))), _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(global2[_wgslsmith_index_u32(~var_5.x, 29u)], abs(min(vec4<u32>(var_2.d, 9311u, var_1.b, 0u), vec4<u32>(global1[_wgslsmith_index_u32(var_2.d, 18u)], global0.b, var_3.b, var_1.d)))), select(vec4<u32>(44035u, var_2.b, var_2.b, 9302u), vec4<u32>(1u, 1u, ~1u, ~50283u), select(select(vec4<bool>(global0.a, global0.a, false, false), vec4<bool>(global0.a, false, var_2.a, var_1.a), true), !vec4<bool>(false, true, var_2.a, true), vec4<bool>(var_0, true, true, var_0))), _wgslsmith_mod_vec4_u32(countOneBits(global2[_wgslsmith_index_u32(34852u, 29u)]), ~vec4<u32>(8888u, u_input.a, global1[_wgslsmith_index_u32(1u, 18u)], 97476u)) << (abs(vec4<u32>(u_input.a, var_5.x, u_input.a, var_2.b)) % vec4<u32>(32u))), select(1u, reverseBits(~(~2001u)), false), var_4.x);
}

