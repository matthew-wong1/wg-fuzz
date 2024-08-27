struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<bool>,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(false, Struct_1(false, 1613f, vec3<bool>(false, true, false), true), 8508u), Struct_2(true, Struct_1(false, -1042f, vec3<bool>(false, true, true), true), 46560u), Struct_2(true, Struct_1(false, -592f, vec3<bool>(false, true, false), true), 4294967295u), Struct_2(false, Struct_1(true, 1403f, vec3<bool>(false, true, true), false), 22273u), Struct_2(true, Struct_1(true, -332f, vec3<bool>(false, true, true), true), 4294967295u), Struct_2(true, Struct_1(true, -508f, vec3<bool>(true, true, true), false), 0u), Struct_2(true, Struct_1(false, -306f, vec3<bool>(true, true, true), false), 1u), Struct_2(false, Struct_1(false, -882f, vec3<bool>(false, false, false), false), 63076u), Struct_2(false, Struct_1(false, 870f, vec3<bool>(false, false, false), false), 12093u), Struct_2(true, Struct_1(false, -466f, vec3<bool>(true, true, false), false), 4294967295u), Struct_2(false, Struct_1(true, 597f, vec3<bool>(true, false, true), false), 1u), Struct_2(false, Struct_1(false, 1087f, vec3<bool>(true, false, true), false), 16384u), Struct_2(true, Struct_1(false, 1000f, vec3<bool>(true, false, true), true), 4294967295u), Struct_2(true, Struct_1(true, -284f, vec3<bool>(false, true, false), false), 0u), Struct_2(true, Struct_1(false, -1143f, vec3<bool>(true, true, false), true), 55987u), Struct_2(false, Struct_1(false, 1194f, vec3<bool>(false, false, true), true), 1u), Struct_2(false, Struct_1(true, 1000f, vec3<bool>(false, true, true), false), 4294967295u), Struct_2(false, Struct_1(true, -1293f, vec3<bool>(false, true, true), false), 19554u), Struct_2(false, Struct_1(false, 808f, vec3<bool>(true, false, false), false), 9675u), Struct_2(true, Struct_1(true, 653f, vec3<bool>(true, false, false), true), 23684u), Struct_2(false, Struct_1(true, -927f, vec3<bool>(false, false, true), true), 4294967295u), Struct_2(true, Struct_1(false, 1069f, vec3<bool>(false, false, true), true), 46418u), Struct_2(true, Struct_1(false, 965f, vec3<bool>(false, false, false), false), 0u), Struct_2(false, Struct_1(false, -1397f, vec3<bool>(true, true, false), true), 0u), Struct_2(false, Struct_1(true, -1646f, vec3<bool>(false, true, false), false), 4294967295u), Struct_2(false, Struct_1(true, 1269f, vec3<bool>(false, false, true), false), 67702u), Struct_2(true, Struct_1(false, 1598f, vec3<bool>(true, true, true), true), 0u), Struct_2(true, Struct_1(true, -2057f, vec3<bool>(false, false, false), false), 36405u), Struct_2(false, Struct_1(true, -227f, vec3<bool>(false, true, true), true), 1u), Struct_2(true, Struct_1(true, 362f, vec3<bool>(false, true, false), true), 9936u));

var<private> global1: array<Struct_3, 4>;

var<private> global2: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(true, Struct_1(true, 1223f, vec3<bool>(false, true, false), false), 6222u), Struct_2(true, Struct_1(false, 417f, vec3<bool>(true, true, false), false), 0u), Struct_2(false, Struct_1(true, -1195f, vec3<bool>(false, true, true), false), 52644u), Struct_2(true, Struct_1(false, -1205f, vec3<bool>(false, true, false), true), 1143u), Struct_2(true, Struct_1(true, 859f, vec3<bool>(false, false, true), false), 4294967295u), Struct_2(true, Struct_1(true, -823f, vec3<bool>(false, true, true), true), 27843u), Struct_2(true, Struct_1(true, 265f, vec3<bool>(false, false, true), true), 0u));

var<private> global3: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(false, -477f, vec3<bool>(false, false, true), true), Struct_1(false, 729f, vec3<bool>(false, false, false), false), Struct_1(true, 1455f, vec3<bool>(false, false, true), true), Struct_1(false, 220f, vec3<bool>(true, true, false), false));

var<private> global4: array<vec4<bool>, 11> = array<vec4<bool>, 11>(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2) -> f32 {
    var var_0 = Struct_2(true, global3[_wgslsmith_index_u32(39387u, 4u)], 0u);
    var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.b.b))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.b.b)))) > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.b.b))), Struct_1(true | arg_0.b.a, var_0.b.b, arg_0.b.c, all(vec2<bool>(arg_0.b.a, arg_0.a))), arg_0.c);
    var var_1 = 0u;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.b.b - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.b.b), var_0.b.b)))), var_0.b.b);
    global4 = array<vec4<bool>, 11>();
    return var_0.b.b;
}

fn func_2() -> vec4<i32> {
    global1 = array<Struct_3, 4>();
    let var_0 = u_input.a.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(466f, 1000f)) + -660f))), -1000f, -973f, _wgslsmith_f_op_f32(-771f * _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(step(-689f, 1023f)))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(189f, 587f, -655f, 945f) * vec4<f32>(1000f, 1000f, 996f, 209f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-297f, 1091f, 539f, 232f)), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-770f, 1661f, 1747f, -1564f), vec4<f32>(-425f, 466f, -433f, -1023f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(630f, -1626f, 381f, -458f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(806f + -487f), _wgslsmith_f_op_f32(1702f * 1275f)))) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -908f)), _wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(u_input.a.x, 30u)])))));
    global4 = array<vec4<bool>, 11>();
    var var_2 = Struct_1(true && any(vec2<bool>(var_1.x != -886f, 266f != var_1.x)), _wgslsmith_f_op_f32(trunc(var_1.x)), select(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), vec3<bool>(true, true, true), false), true);
    return vec4<i32>(0i, ~_wgslsmith_div_i32(22331i, 1i), _wgslsmith_mult_i32(-(19216i >> (var_0 % 32u)) | (i32(-1i) * -1i), 0i), ~1i);
}

fn func_4(arg_0: vec4<i32>) -> Struct_2 {
    let var_0 = u_input.a.x;
    global0 = array<Struct_2, 30>();
    let var_1 = func_2().yy;
    global1 = array<Struct_3, 4>();
    global1 = array<Struct_3, 4>();
    return Struct_2(true, global3[_wgslsmith_index_u32(min(_wgslsmith_div_u32(var_0, 1u) >> (~countOneBits(var_0) % 32u), ~(min(u_input.a.x, 4294967295u) ^ var_0)), 4u)], _wgslsmith_dot_vec2_u32(u_input.a.zy, vec2<u32>(u_input.a.x, _wgslsmith_add_u32(~u_input.a.x, u_input.a.x))));
}

fn func_5(arg_0: Struct_2) -> u32 {
    let var_0 = u_input.a;
    global1 = array<Struct_3, 4>();
    let var_1 = func_4(firstTrailingBit(abs(vec4<i32>(57281i, 2147483647i, 1i, -2147483647i))) | vec4<i32>(i32(-1i) * -1i, abs(2147483647i) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 45616u, arg_0.c), u_input.a.wxy) % 32u), _wgslsmith_clamp_i32(reverseBits(-38070i), -1i, 22441i), -1i));
    global2 = array<Struct_2, 7>();
    let var_2 = reverseBits(vec2<u32>(~_wgslsmith_mult_u32(var_1.c, ~0u), (reverseBits(u_input.a.x) | _wgslsmith_mult_u32(var_1.c, var_1.c)) ^ u_input.a.x));
    return 0u;
}

fn func_1() -> vec2<f32> {
    var var_0 = _wgslsmith_div_u32(~u_input.a.x, func_5(func_4(func_2())));
    var var_1 = !select(all(vec3<bool>(true, true, true)) | true, true, true);
    let var_2 = func_4(abs(~(func_2() >> (u_input.a % vec4<u32>(32u)))));
    var_0 = _wgslsmith_clamp_u32(~_wgslsmith_clamp_u32(0u, _wgslsmith_mod_u32(~0u, var_2.c), var_2.c), 83086u | ~(~_wgslsmith_dot_vec2_u32(u_input.a.wy, u_input.a.xx)), u_input.a.x);
    let var_3 = _wgslsmith_div_i32(967i, firstLeadingBit(_wgslsmith_dot_vec2_i32(func_2().yx, max(-vec2<i32>(1i, 26507i), _wgslsmith_clamp_vec2_i32(vec2<i32>(-29696i, 2147483647i), vec2<i32>(15952i, 0i), vec2<i32>(1i, -1i))))));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(770f, var_2.b.b)) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(663f, var_2.b.b)))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.b.b, _wgslsmith_f_op_f32(select(519f, 1684f, false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-242f, 1139f) * vec2<f32>(var_2.b.b, var_2.b.b))), var_2.b.c.zy)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(-823f)), _wgslsmith_div_f32(-2029f, var_2.b.b)))));
}

fn func_6(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_3) -> u32 {
    var var_0 = func_4(vec4<i32>(-func_2().x ^ -2147483647i, -2147483647i, firstLeadingBit(0i) | _wgslsmith_clamp_i32(17158i, abs(-1i), 0i), max(func_2().x, 39567i)));
    var var_1 = vec4<i32>(1i, _wgslsmith_mult_i32(abs(_wgslsmith_dot_vec4_i32(-vec4<i32>(-1i, 0i, 9979i, 396i), vec4<i32>(1i, 64709i, 59742i, 16664i))), select(-13701i, ~(-6195i) >> (var_0.c % 32u), true)), -_wgslsmith_mult_i32(i32(-1i) * -45131i, -21667i), ~(~(i32(-1i) * -31301i)));
    let var_2 = func_4(vec4<i32>(var_1.x, var_1.x, ~2147483647i, var_1.x)).b;
    var_0 = arg_0;
    let var_3 = firstTrailingBit(select(vec4<u32>(9590u, 39391u, ~arg_0.c, _wgslsmith_dot_vec3_u32(u_input.a.xww ^ vec3<u32>(arg_0.c, arg_0.c, u_input.a.x), vec3<u32>(u_input.a.x, 0u, 1u))), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, _wgslsmith_clamp_u32(35835u, arg_0.c, 1u), 4294967295u, u_input.a.x), vec4<u32>(select(26670u, arg_0.c, arg_0.a), 38177u, 1u, arg_0.c)), false));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec4<bool>, 11>();
    let var_0 = _wgslsmith_clamp_u32(_wgslsmith_add_u32(0u, min(_wgslsmith_div_u32(u_input.a.x, _wgslsmith_div_u32(u_input.a.x, 8575u)), ~u_input.a.x)), u_input.a.x, max(func_6(Struct_2(all(vec2<bool>(true, false)), global3[_wgslsmith_index_u32(~4294967295u, 4u)], _wgslsmith_mod_u32(54653u, 74264u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1()) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1656f, 659f) + vec2<f32>(-159f, 280f))), Struct_3(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-923f, -538f))), vec2<bool>(false, false))), 0u << (0u % 32u)));
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_0, max(_wgslsmith_mult_u32(abs(u_input.a.x), var_0 << (23416u % 32u)), 67699u) | countOneBits(abs(var_0)), min(func_4(vec4<i32>(-35955i, 0i, -2147483647i, 1i)).c << (u_input.a.x % 32u), 1u)), 4u)];
    let var_2 = true;
    global2 = array<Struct_2, 7>();
    let var_3 = Struct_2(!any(!(!vec3<bool>(var_2, false, var_2))), func_4(-func_2()).b, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_add_u32(u_input.a.x, u_input.a.x), _wgslsmith_dot_vec4_u32(u_input.a, u_input.a), u_input.a.x, func_4(vec4<i32>(0i, 18665i, -1i, 0i)).c), ~(~u_input.a)), _wgslsmith_div_vec4_u32(~(vec4<u32>(5679u, var_0, 18053u, 73372u) ^ u_input.a), u_input.a << ((u_input.a >> (u_input.a % vec4<u32>(32u))) % vec4<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(var_0, var_0), vec4<f32>(-2637f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.b, var_3.b.b))), _wgslsmith_f_op_f32(-791f - _wgslsmith_f_op_f32(ceil(var_1.b))), -710f), 0u);
}

