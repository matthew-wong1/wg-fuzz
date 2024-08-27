struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: vec4<bool>,
}

struct Struct_4 {
    a: u32,
    b: vec2<u32>,
    c: Struct_1,
    d: vec2<f32>,
    e: i32,
}

struct Struct_5 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(vec4<bool>(false, false, true, true)), Struct_2(vec4<bool>(true, false, true, true)), Struct_2(vec4<bool>(false, false, false, false)), Struct_2(vec4<bool>(true, false, true, false)), Struct_2(vec4<bool>(true, false, true, true)), Struct_2(vec4<bool>(true, true, false, false)), Struct_2(vec4<bool>(false, true, true, true)), Struct_2(vec4<bool>(true, false, false, true)), Struct_2(vec4<bool>(true, false, true, true)), Struct_2(vec4<bool>(false, false, true, true)), Struct_2(vec4<bool>(false, true, true, false)), Struct_2(vec4<bool>(true, true, false, true)), Struct_2(vec4<bool>(false, true, true, false)), Struct_2(vec4<bool>(false, true, false, true)), Struct_2(vec4<bool>(true, false, false, false)), Struct_2(vec4<bool>(false, false, true, true)), Struct_2(vec4<bool>(false, false, false, false)), Struct_2(vec4<bool>(false, true, true, true)), Struct_2(vec4<bool>(true, true, false, false)), Struct_2(vec4<bool>(false, true, true, false)), Struct_2(vec4<bool>(true, true, true, false)), Struct_2(vec4<bool>(true, false, true, true)), Struct_2(vec4<bool>(true, true, true, true)), Struct_2(vec4<bool>(false, false, false, false)), Struct_2(vec4<bool>(true, false, false, true)), Struct_2(vec4<bool>(false, false, false, true)), Struct_2(vec4<bool>(true, true, true, false)), Struct_2(vec4<bool>(false, false, false, true)), Struct_2(vec4<bool>(true, false, false, true)), Struct_2(vec4<bool>(false, true, true, false)), Struct_2(vec4<bool>(true, false, true, true)), Struct_2(vec4<bool>(false, true, true, false)));

var<private> global2: array<bool, 23> = array<bool, 23>(true, true, true, false, false, true, true, false, true, false, false, true, true, true, true, false, false, false, true, true, false, false, true);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> i32 {
    var var_0 = Struct_1(-118f, -abs(~select(u_input.b.x, u_input.c, true)));
    var var_1 = Struct_5(u_input.a.x >> ((_wgslsmith_clamp_u32(~14380u, ~4294967295u, min(1u, 0u)) & max(countOneBits(54179u), 1u)) % 32u), true);
    let var_2 = ~u_input.b.x;
    global2 = array<bool, 23>();
    global1 = array<Struct_2, 32>();
    return -38106i;
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_4) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, 227f, true)) + _wgslsmith_f_op_f32(floor(-606f))), -775f, arg_1.c.a, arg_1.c.a)));
    var var_1 = !arg_0.yx;
    let var_2 = vec4<i32>(_wgslsmith_sub_i32(0i, abs(func_3())), 6181i, -(~(-2585i)), _wgslsmith_mod_i32(arg_1.e, _wgslsmith_mult_i32(u_input.b.x, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.c.b, -1i, -2147483647i, 18925i), vec4<i32>(46816i, u_input.c, -1i, arg_1.e)), select(vec4<i32>(1i, arg_1.c.b, arg_1.e, arg_1.c.b), vec4<i32>(-1i, 43369i, u_input.c, -33442i), global2[_wgslsmith_index_u32(4294967295u, 23u)])))));
    var var_3 = (_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 4294967295u, arg_1.b.x), vec3<u32>(76189u, 29087u, 9128u)), _wgslsmith_div_u32(arg_1.a | 0u, _wgslsmith_mult_u32(42521u, 96250u))) >> (~countOneBits(arg_1.b.x) % 32u)) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 65162u), reverseBits(~arg_1.b));
    let var_4 = Struct_2(!(!select(vec4<bool>(true, true, true, true), !vec4<bool>(arg_0.x, var_1.x, global2[_wgslsmith_index_u32(arg_1.b.x, 23u)], var_1.x), vec4<bool>(arg_0.x, global2[_wgslsmith_index_u32(4853u, 23u)], global2[_wgslsmith_index_u32(arg_1.b.x, 23u)], true))));
    return var_4;
}

fn func_4(arg_0: Struct_2, arg_1: u32) -> vec4<u32> {
    let var_0 = _wgslsmith_div_f32(-797f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1248f, 417f)) * _wgslsmith_f_op_f32(abs(-417f))) - _wgslsmith_f_op_f32(-625f * _wgslsmith_f_op_f32(ceil(622f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-374f)), _wgslsmith_f_op_f32(round(490f))))))));
    global0 = arg_1;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_0 - var_0), 907f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-273f, -203f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1049f, 862f))), arg_0.a.zy)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + _wgslsmith_f_op_f32(-var_0)), var_0)));
    return _wgslsmith_mult_vec4_u32(vec4<u32>(arg_1, arg_1, ~abs(57750u), 39186u), _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(arg_1, 1u, 1u, 0u), vec4<u32>(24640u, arg_1, 0u, 4590u) ^ vec4<u32>(4294967295u, 78468u, arg_1, arg_1)), ~(~vec4<u32>(arg_1, 4250u, arg_1, arg_1)), vec4<u32>(~4294967295u, arg_1, _wgslsmith_dot_vec3_u32(vec3<u32>(61161u, 85308u, 2698u), vec3<u32>(1u, arg_1, 1u)), ~arg_1)) >> (_wgslsmith_sub_vec4_u32(abs(vec4<u32>(4294967295u, 10959u, arg_1, arg_1)) >> (select(vec4<u32>(arg_1, arg_1, arg_1, 34207u), vec4<u32>(arg_1, arg_1, arg_1, 1u), vec4<bool>(global2[_wgslsmith_index_u32(arg_1, 23u)], arg_0.a.x, false, arg_0.a.x)) % vec4<u32>(32u)), vec4<u32>(firstLeadingBit(arg_1), 4294967295u, arg_1, 35107u)) % vec4<u32>(32u)));
}

fn func_5(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: Struct_3, arg_3: Struct_4) -> bool {
    let var_0 = (any(!arg_2.c.wzy) & false) | !(!(_wgslsmith_f_op_f32(max(arg_3.c.a, arg_3.c.a)) <= 2267f));
    var var_1 = true;
    var var_2 = !arg_2.a.x;
    let var_3 = Struct_5(-select(u_input.b.x, u_input.b.x, false) >> (_wgslsmith_dot_vec2_u32(countOneBits(_wgslsmith_add_vec2_u32(arg_3.b, vec2<u32>(arg_3.a, 4294967295u))), abs(arg_3.b)) % 32u), select(arg_3.a >= max(min(arg_3.b.x, 1u), ~4294967295u), var_0, true));
    let var_4 = global1[_wgslsmith_index_u32(arg_3.a, 32u)];
    return !(!var_0);
}

fn func_1(arg_0: f32) -> Struct_5 {
    let var_0 = vec2<bool>(true, true);
    var var_1 = func_5(Struct_3(vec4<bool>(true & global2[_wgslsmith_index_u32(countOneBits(20565u), 23u)], true & select(var_0.x, var_0.x, true), any(vec2<bool>(var_0.x, var_0.x)), !global2[_wgslsmith_index_u32(min(26614u, 73311u), 23u)]), Struct_2(vec4<bool>(var_0.x, true, !var_0.x, all(var_0))), vec4<bool>(var_0.x, false, any(select(vec2<bool>(false, var_0.x), var_0, vec2<bool>(true, false))), !(var_0.x && var_0.x))), ~func_4(func_2(vec3<bool>(true, false, true), Struct_4(19833u, vec2<u32>(56610u, 4294967295u), Struct_1(arg_0, u_input.c), vec2<f32>(-1877f, 561f), u_input.a.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), reverseBits(vec3<u32>(0u, 73743u, 0u)))), Struct_3(func_2(!(!vec3<bool>(true, var_0.x, var_0.x)), Struct_4(51526u, reverseBits(vec2<u32>(3066u, 1u)), Struct_1(arg_0, u_input.c), vec2<f32>(arg_0, arg_0), 0i)).a, Struct_2(vec4<bool>(var_0.x, -1i <= u_input.b.x, any(vec3<bool>(var_0.x, global2[_wgslsmith_index_u32(97209u, 23u)], var_0.x)), true)), !(!(!vec4<bool>(true, global2[_wgslsmith_index_u32(1u, 23u)], false, global2[_wgslsmith_index_u32(4294967295u, 23u)])))), Struct_4(1u, ~vec2<u32>(52044u, ~4294967295u), Struct_1(115f, abs(-2147483647i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1282f, 1379f)))), firstLeadingBit(-50110i | max(-74538i, u_input.c))));
    var var_2 = u_input.a.x << (~4294967295u % 32u);
    let var_3 = -531f;
    global1 = array<Struct_2, 32>();
    return Struct_5(24251i, 4294967295u >= _wgslsmith_div_u32(~4294967295u & _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 52061u), vec2<u32>(1u, 16609u)), 1u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 32>();
    let var_0 = func_1(558f);
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~1u, 4479u), 32u)];
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-205f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1340f, 981f), -2595f))), vec2<f32>(-736f, -470f))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(-1228f)), _wgslsmith_f_op_f32(1752f + 1000f))))));
    global1 = array<Struct_2, 32>();
    var_2 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(floor(var_2.x)), var_2.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1824f, var_2.x), vec2<f32>(-484f, -927f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(var_2.x)), _wgslsmith_f_op_f32(exp2(var_2.x))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.x, var_2.x), vec2<f32>(var_2.x, -135f), vec2<bool>(true, var_1.a.x))) - vec2<f32>(-1000f, var_2.x))))));
    let var_3 = !vec2<bool>(true, global2[_wgslsmith_index_u32(0u, 23u)]);
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -783f) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, -1000f))))));
    var var_5 = firstTrailingBit(~max(vec2<u32>(_wgslsmith_add_u32(1u, 45035u), 1u), min(~vec2<u32>(63505u, 1u), _wgslsmith_mult_vec2_u32(vec2<u32>(1235u, 0u), vec2<u32>(36729u, 4294967295u)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1262f), -455f), 1116f, 0u, 4294967295u);
}

