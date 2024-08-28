struct Struct_1 {
    a: i32,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: bool,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_5 {
    a: vec4<i32>,
    b: f32,
    c: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 10>;

var<private> global1: Struct_3;

var<private> global2: Struct_3;

var<private> global3: vec4<bool>;

var<private> global4: vec4<u32> = vec4<u32>(92517u, 35830u, 87435u, 42088u);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: Struct_1) -> u32 {
    var var_0 = reverseBits(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, global2.b.b, 4294967295u, global4.x), vec4<u32>(1u, u_input.d, arg_1, 70559u))));
    global1 = Struct_3(~vec2<u32>(abs(~34008u), select(~arg_2.b, 17380u, global1.c.x)), arg_2, global1.c);
    var var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(arg_2.c, global2.b.c)), global2.b.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1009f, global2.b.c)) + arg_2.c), _wgslsmith_f_op_f32(ceil(global1.b.c))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(371f, arg_2.c, global1.b.c, 297f), vec4<f32>(global2.b.c, 1495f, 1342f, 655f), global2.c.x)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.c, global2.b.c, global2.b.c, global2.b.c), vec4<f32>(-267f, arg_2.c, -1000f, -615f), vec4<bool>(true, global2.c.x, global3.x, false)))) + vec4<f32>(-823f, _wgslsmith_f_op_f32(global1.b.c - -2058f), _wgslsmith_f_op_f32(arg_2.c * -905f), _wgslsmith_f_op_f32(-arg_2.c))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b.c, global2.b.c, arg_2.c, global1.b.c) * vec4<f32>(arg_2.c, global1.b.c, 1000f, -594f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.c, 1000f, -1000f, -1000f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.c, -223f, arg_2.c, 700f)))))))));
    let var_2 = Struct_3(~_wgslsmith_div_vec2_u32(abs(var_0.yw) << (vec2<u32>(arg_1, global4.x) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(arg_2.b, global4.x), global2.a), vec2<u32>(var_0.x, arg_2.b))), global1.b, vec4<bool>(_wgslsmith_clamp_u32(firstTrailingBit(4843u), 0u, global4.x) > 0u, all(vec4<bool>(select(true, global1.c.x, false), any(global2.c.xww), false, true)), !global3.x, global3.x));
    global4 = vec4<u32>(~(~_wgslsmith_mult_u32(14676u, 2458u)), _wgslsmith_div_u32(arg_2.b, ~0u), 95962u, 4294967295u);
    return abs(50645u);
}

fn func_3(arg_0: u32, arg_1: vec4<i32>, arg_2: vec3<i32>, arg_3: vec2<i32>) -> f32 {
    let var_0 = Struct_3(select(~global4.ww, firstTrailingBit(~(~global4.xy)), true), Struct_1(i32(-1i) * -7576i, global2.a.x << (~_wgslsmith_mult_u32(26027u, 49708u) % 32u), 1000f), global1.c);
    var var_1 = firstTrailingBit(global0[_wgslsmith_index_u32(102487u, 10u)]);
    global1 = Struct_3(~_wgslsmith_sub_vec2_u32(~vec2<u32>(global4.x, 2444u), global2.a), Struct_1(~(~_wgslsmith_div_i32(arg_2.x, var_0.b.a)), global2.b.b, _wgslsmith_f_op_f32(var_0.b.c - var_0.b.c)), select(vec4<bool>(!var_0.c.x, global3.x, true, true), vec4<bool>(false, global3.x, all(select(vec4<bool>(global2.c.x, false, var_0.c.x, true), global1.c, false)), false), global1.c));
    var_1 = _wgslsmith_mult_i32(abs(~firstTrailingBit(~arg_1.x)), arg_2.x);
    var var_2 = global2.b;
    return 2756f;
}

fn func_1() -> StorageBuffer {
    let var_0 = u_input.b;
    let var_1 = Struct_5(select(~reverseBits(~vec4<i32>(global1.b.a, -20813i, global1.b.a, u_input.b)), vec4<i32>(abs(~global2.b.a), _wgslsmith_sub_i32(_wgslsmith_sub_i32(global2.b.a, global1.b.a), u_input.b), _wgslsmith_add_i32(1i, ~global2.b.a), i32(-1i) * -37210i), global3.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(func_2(-17198i, global2.b.b, Struct_1(global0[_wgslsmith_index_u32(37950u, 10u)], global4.x, -1641f)), ~vec4<i32>(0i, u_input.c, global0[_wgslsmith_index_u32(u_input.d, 10u)], -1i), vec3<i32>(-1i, -8486i, u_input.b), vec2<i32>(2147483647i, global0[_wgslsmith_index_u32(46739u, 10u)])))))), Struct_4(select(global1.c, select(global2.c, select(vec4<bool>(true, true, global2.c.x, true), global2.c, global2.c), all(vec3<bool>(global2.c.x, global3.x, false))), any(global2.c.zzw)), u_input.c >= _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(-1i, -26676i, -14820i, 16025i)), -vec4<i32>(26702i, -2147483647i, global2.b.a, global0[_wgslsmith_index_u32(global1.b.b, 10u)])), vec3<bool>(true, true, true), Struct_1(1i, u_input.d << (firstTrailingBit(36299u) % 32u), _wgslsmith_div_f32(global1.b.c, -250f))));
    global4 = vec4<u32>(abs(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 0u, 36323u, global4.x), vec4<u32>(u_input.d, 1900u, global1.a.x, var_1.c.d.b)) >> ((vec4<u32>(1u, 4294967295u, global1.a.x, 27453u) & vec4<u32>(global2.a.x, 33696u, global2.b.b, global2.a.x)) % vec4<u32>(32u)), vec4<u32>(37118u, global4.x, min(global2.b.b, u_input.d), _wgslsmith_mult_u32(0u, 4294967295u)))), global4.x, _wgslsmith_div_u32(4294967295u, min(1u, 1u)), 7896u);
    global1 = Struct_3(countOneBits(_wgslsmith_clamp_vec2_u32(global2.a, global1.a, firstTrailingBit(vec2<u32>(1u, global4.x))) << (countOneBits(vec2<u32>(4294967295u, global1.a.x)) % vec2<u32>(32u))), global1.b, vec4<bool>((87240i > _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(1u, 10u)], -1i)) && true, true, !global1.c.x, global2.c.x));
    let var_2 = Struct_2(var_1.c.d, Struct_1(select(_wgslsmith_clamp_i32(max(global2.b.a, -2147483647i), abs(global0[_wgslsmith_index_u32(25884u, 10u)]), ~var_0), ~(~(-2147483647i)), false), 554u, 967f));
    return StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b.c, 865f, var_2.a.c) + vec3<f32>(981f, var_2.b.c, global1.b.c)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.c, global2.b.c, 1436f))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-170f, 1341f, global2.b.c) * vec3<f32>(var_1.c.d.c, global2.b.c, var_2.b.c)))), var_1.c.c)), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.b.c), _wgslsmith_f_op_f32(global1.b.c - 1308f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-502f, 872f)), var_1.c.d.c, true)))), vec2<i32>(i32(-1i) * -u_input.b, var_2.a.a));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

