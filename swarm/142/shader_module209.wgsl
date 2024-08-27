struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: f32,
    c: vec2<u32>,
    d: Struct_1,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 18>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_5, arg_1: vec2<i32>) -> f32 {
    let var_0 = Struct_5(arg_0.a, arg_0.b, ~vec2<u32>(_wgslsmith_dot_vec2_u32(arg_0.e.a.c.a.yz, arg_0.c), firstLeadingBit(80876u)), arg_0.e.a.a, arg_0.e);
    var var_1 = arg_1;
    var var_2 = 0i;
    var_2 = firstLeadingBit(-8919i);
    let var_3 = Struct_2(var_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-282f, 1427f)), 537f))), var_0.e.a.c, !arg_0.e.a.d);
    return -1564f;
}

fn func_3(arg_0: Struct_3) -> vec3<bool> {
    var var_0 = Struct_1(abs(~vec4<u32>(reverseBits(1u), u_input.b.x, countOneBits(u_input.c), _wgslsmith_mod_u32(u_input.c, 4294967295u))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.a.x, _wgslsmith_f_op_f32(-arg_0.a.x), !global0[_wgslsmith_index_u32(u_input.c, 18u)])) - _wgslsmith_f_op_f32(sign(-112f))))), ~(~max(vec4<u32>(u_input.c, u_input.c, u_input.c, 29476u) & vec4<u32>(u_input.c, 30003u, 0u, 11639u), u_input.b)));
    var_0 = Struct_1(~vec4<u32>(69652u, var_0.a.x, var_0.a.x, 79426u), -1023f, var_0.c);
    global0 = array<bool, 18>();
    global0 = array<bool, 18>();
    var_0 = Struct_1(var_0.c, 987f, ~u_input.b);
    return select(vec3<bool>(global0[_wgslsmith_index_u32(~4294967295u, 18u)], global0[_wgslsmith_index_u32(35592u, 18u)], any(!select(vec3<bool>(global0[_wgslsmith_index_u32(79951u, 18u)], global0[_wgslsmith_index_u32(var_0.c.x, 18u)], global0[_wgslsmith_index_u32(var_0.a.x, 18u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 18u)], true, global0[_wgslsmith_index_u32(u_input.b.x, 18u)]), global0[_wgslsmith_index_u32(52258u, 18u)]))), !vec3<bool>(true, global0[_wgslsmith_index_u32(var_0.c.x, 18u)], global0[_wgslsmith_index_u32(39268u, 18u)]), vec3<bool>(!any(vec3<bool>(false, true, false)), true, (7094u == u_input.c) | any(select(vec2<bool>(global0[_wgslsmith_index_u32(var_0.c.x, 18u)], global0[_wgslsmith_index_u32(var_0.c.x, 18u)]), vec2<bool>(global0[_wgslsmith_index_u32(var_0.c.x, 18u)], global0[_wgslsmith_index_u32(1u, 18u)]), vec2<bool>(global0[_wgslsmith_index_u32(32914u, 18u)], global0[_wgslsmith_index_u32(var_0.a.x, 18u)])))));
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: vec2<i32>, arg_3: Struct_4) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f * 237f), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-152f)), _wgslsmith_f_op_f32(round(327f))))), global0[_wgslsmith_index_u32(firstTrailingBit(arg_3.a.c.a.x), 18u)])) - -761f);
    var_0 = 798f;
    let var_1 = Struct_1(select(_wgslsmith_div_vec4_u32(~(~u_input.b), u_input.b), arg_3.a.c.a, vec4<bool>(false, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~51512u, 17150u << (arg_3.a.a.c.x % 32u)), 18u)], true, true)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(arg_3.a.a.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1758f) + arg_3.a.a.b))), _wgslsmith_clamp_vec4_u32(arg_3.a.a.c, arg_3.a.c.a, u_input.b));
    var var_2 = Struct_4(Struct_2(arg_3.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.b)))), var_1, global0[_wgslsmith_index_u32(1u, 18u)]), 33846i);
    var_2 = arg_3;
    return Struct_1(vec4<u32>(arg_3.a.a.a.x | _wgslsmith_sub_u32(1u, ~u_input.b.x), 0u, _wgslsmith_sub_u32(firstLeadingBit(var_2.a.a.a.x), ~(arg_3.a.a.a.x & var_1.a.x)), arg_3.a.c.a.x), arg_3.a.c.b, _wgslsmith_sub_vec4_u32(~u_input.b, arg_3.a.a.c));
}

fn func_1(arg_0: bool, arg_1: bool) -> Struct_4 {
    let var_0 = func_4(-2060i, -927i, vec2<i32>(u_input.a.x, -19590i) >> (u_input.b.zw % vec2<u32>(32u)), Struct_4(Struct_2(Struct_1(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), _wgslsmith_f_op_f32(1000f + 324f), u_input.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -127f) - _wgslsmith_f_op_f32(trunc(378f))), Struct_1(u_input.b, _wgslsmith_f_op_f32(func_2(Struct_5(Struct_3(vec2<f32>(501f, -1000f)), 1000f, vec2<u32>(u_input.b.x, u_input.b.x), Struct_1(u_input.b, -2033f, vec4<u32>(u_input.b.x, u_input.b.x, 47247u, 0u)), Struct_4(Struct_2(Struct_1(u_input.b, -1337f, u_input.b), -116f, Struct_1(u_input.b, -1040f, u_input.b), arg_1), 1i)), u_input.a.zz)), firstTrailingBit(vec4<u32>(u_input.c, 26302u, u_input.c, 68455u))), all(func_3(Struct_3(vec2<f32>(-2463f, 455f))))), 2147483647i));
    let var_1 = u_input.a.x & _wgslsmith_sub_i32(~(u_input.a.x ^ -13048i), u_input.a.x);
    global0 = array<bool, 18>();
    global0 = array<bool, 18>();
    global0 = array<bool, 18>();
    return Struct_4(Struct_2(Struct_1(firstLeadingBit(vec4<u32>(100327u, u_input.b.x, 69342u, u_input.c) >> (vec4<u32>(38841u, 1u, u_input.c, 4294967295u) % vec4<u32>(32u))), 1616f, vec4<u32>(12279u, 4294967295u, var_0.c.x, 77288u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b))), func_4(reverseBits(-42576i ^ var_1), 70121i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(22648u, var_0.a.x, var_0.a.x, var_0.c.x), u_input.b) % 32u), vec2<i32>(~var_1, -1i), Struct_4(Struct_2(var_0, var_0.b, var_0, true), u_input.a.x)), (arg_0 || true) || false), min(var_1, _wgslsmith_dot_vec4_i32(u_input.a, min(vec4<i32>(-29164i, -2147483647i, 2147483647i, u_input.a.x), vec4<i32>(u_input.a.x, 2147483647i, -7277i, 0i))) | reverseBits(var_1 | -2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(true, global0[_wgslsmith_index_u32(0u, 18u)]);
    global0 = array<bool, 18>();
    global0 = array<bool, 18>();
    var var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.a.a.b, -381f, -143f, -450f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1037f, -1031f, 159f, 1000f)), vec4<f32>(var_0.a.a.b, -1531f, 2110f, var_0.a.b)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(784f - 1398f), 885f, _wgslsmith_f_op_f32(837f + var_0.a.a.b), _wgslsmith_f_op_f32(-var_0.a.b)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(938f, 195f, var_0.a.b, var_0.a.c.b)))))))));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(117f, -773f, var_0.a.b, 535f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.x, var_1.x, 1000f, var_1.x))))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-789f, var_0.a.b, -2584f, var_0.a.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2459f, 1534f, 528f, -209f)))))));
    global0 = array<bool, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(abs(_wgslsmith_add_vec3_u32(var_0.a.c.c.zzz, reverseBits(vec3<u32>(20435u, var_0.a.c.c.x, u_input.b.x))))), 1634f, -1153f, _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, -43711i), abs(u_input.a.xx)));
}

