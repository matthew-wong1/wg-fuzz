struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
    d: vec2<f32>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: vec2<f32>;

var<private> global2: vec3<u32> = vec3<u32>(22204u, 66545u, 0u);

var<private> global3: f32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.x + _wgslsmith_div_f32(1272f, -392f))));
    return global0.x;
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: Struct_3, arg_3: Struct_2) -> u32 {
    global0 = arg_3.d;
    let var_0 = arg_3;
    var var_1 = var_0;
    var_1 = arg_3;
    global3 = global1.x;
    return _wgslsmith_sub_u32(reverseBits(arg_3.c.d), countOneBits(var_0.c.d));
}

fn func_2(arg_0: f32, arg_1: Struct_4) -> Struct_1 {
    let var_0 = arg_1;
    let var_1 = ~vec4<u32>(_wgslsmith_mult_u32(63459u, 21360u), func_3(!(arg_1.d.b == global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(731f))), Struct_3(!vec4<bool>(true, true, var_0.d.c, arg_1.b.c), 872f), Struct_2(Struct_1(vec4<i32>(-17558i, 0i, arg_1.c.c.a.x, arg_1.d.a.x), var_0.d.b, var_0.d.c, 29761u), _wgslsmith_f_op_vec3_f32(-arg_1.c.b), Struct_1(vec4<i32>(598i, 17991i, var_0.c.a.a.x, var_0.c.c.a.x), var_0.c.a.b, arg_1.b.c, arg_1.d.d), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 1235f)), arg_1.c.e)), var_0.a.x, _wgslsmith_add_u32(firstTrailingBit(20840u), _wgslsmith_add_u32(_wgslsmith_sub_u32(global2.x, 4294967295u), reverseBits(58260u))));
    let var_2 = firstTrailingBit(max(~(-vec4<i32>(var_0.c.c.a.x, arg_1.b.a.x, 38883i, arg_1.d.a.x)), arg_1.d.a) << (countOneBits(var_1) % vec4<u32>(32u)));
    global0 = arg_1.c.d;
    var var_3 = Struct_3(select(!vec4<bool>(false, true, var_0.d.c && false, true), !vec4<bool>(arg_1.c.a.b > 564f, true, false, !arg_1.c.c.c), !all(var_0.c.e) | true), 1f);
    return Struct_1(var_2, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x + global0.x), 1076f)) - _wgslsmith_div_f32(236f, -754f)), u_input.b.x < _wgslsmith_sub_u32(u_input.b.x, 4294967295u), ~0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(u_input.b, vec4<i32>(29631i, 5515i, 1i, 0i), Struct_1(vec4<i32>(-2147483647i, -51139i, -2147483647i, 1i), global1.x, true, global2.x)))) * _wgslsmith_f_op_f32(func_1(vec4<u32>(global2.x, u_input.b.x, global2.x, 1u), vec4<i32>(4537i, -12288i, -1123i, -1i), func_2(-1546f, Struct_4(u_input.a, Struct_1(vec4<i32>(0i, 2147483647i, -1i, -18349i), -402f, true, 3929u), Struct_2(Struct_1(vec4<i32>(-1i, 2147483647i, 24272i, 1i), 268f, false, 27440u), vec3<f32>(-1000f, global0.x, 231f), Struct_1(vec4<i32>(-2147483647i, 24668i, 1i, -2147483647i), 1473f, false, 0u), vec2<f32>(global1.x, global1.x), vec2<bool>(false, false)), Struct_1(vec4<i32>(1818i, -13327i, -2147483647i, -2147483647i), global1.x, true, 0u), vec3<u32>(global2.x, 1u, global2.x)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(997f * global1.x))), global1.x)) <= global1.x;
    let var_1 = _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(f32(-1f) * -1034f)), -207f, any(vec3<bool>(false, false, false))))));
    var_0 = select(0u <= u_input.a.x, true, !(-1i != (firstTrailingBit(0i) | ~1i)));
    global3 = -948f;
    var var_2 = _wgslsmith_div_i32(select(-firstLeadingBit(0i), firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(-1i, -20707i) >> (u_input.b.xx % vec2<u32>(32u)))), all(vec4<bool>(true, var_1 >= global1.x, select(false, true, false), func_2(336f, Struct_4(u_input.a, Struct_1(vec4<i32>(70969i, 48085i, 1i, 1i), global1.x, false, global2.x), Struct_2(Struct_1(vec4<i32>(11632i, 1i, -14194i, -61420i), 207f, false, global2.x), vec3<f32>(global0.x, 946f, 1000f), Struct_1(vec4<i32>(-2147483647i, 14984i, -1i, -2147483647i), 484f, true, global2.x), vec2<f32>(var_1, 438f), vec2<bool>(true, true)), Struct_1(vec4<i32>(35563i, -25378i, -7503i, 50640i), -1050f, false, u_input.b.x), u_input.a.wxz)).c))), abs(firstTrailingBit(_wgslsmith_dot_vec3_i32(max(vec3<i32>(-2147483647i, -22397i, 14073i), vec3<i32>(0i, 1i, 2147483647i)), abs(vec3<i32>(2147483647i, 2147483647i, 1i))))));
    let var_3 = abs(reverseBits(u_input.a.wzz << (~(~u_input.b.zxy) % vec3<u32>(32u))));
    let var_4 = select(select(vec3<bool>(any(vec3<bool>(true, false, true)), _wgslsmith_f_op_f32(step(-866f, var_1)) != 847f, true), select(vec3<bool>(true, true, all(vec2<bool>(false, true))), vec3<bool>(any(vec2<bool>(false, true)), true, false), !select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false)), vec3<bool>(!(var_3.x >= var_3.x), true, any(vec2<bool>(false, false)))), !select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true), vec3<bool>(true, true, false)), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), !select(vec3<bool>(true, true, false), vec3<bool>(any(vec4<bool>(false, false, false, false)), all(vec4<bool>(true, true, true, true)), true), vec3<bool>(true, true, any(vec2<bool>(true, false)))));
    let var_5 = Struct_3(vec4<bool>(true, var_4.x, all(vec4<bool>(!var_4.x, false, true, all(var_4))), reverseBits(countOneBits(-1i)) == _wgslsmith_clamp_i32(~3553i, 21380i, 1i)), -750f);
    var_2 = ~1i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_1(min(u_input.b, _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 4294967295u, u_input.b.x, u_input.b.x), vec4<u32>(var_3.x, u_input.a.x, global2.x, 4294967295u))), _wgslsmith_div_vec4_i32(vec4<i32>(min(2147483647i, 29125i), ~(-7099i), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 2147483647i, -9131i), vec3<i32>(-7314i, 0i, 2147483647i)), func_2(var_5.b, Struct_4(u_input.b, Struct_1(vec4<i32>(2147483647i, -2147483647i, -2643i, 0i), 1042f, var_4.x, var_3.x), Struct_2(Struct_1(vec4<i32>(21218i, -53620i, 2147483647i, -31292i), global0.x, var_5.a.x, 1u), vec3<f32>(global0.x, -1260f, -1573f), Struct_1(vec4<i32>(-1i, -2147483647i, 3570i, 31479i), 737f, var_5.a.x, global2.x), vec2<f32>(global1.x, global0.x), vec2<bool>(var_4.x, false)), Struct_1(vec4<i32>(2147483647i, -1i, -57572i, 2147483647i), -449f, var_5.a.x, u_input.b.x), vec3<u32>(global2.x, 0u, 26346u))).a.x), ~vec4<i32>(1i, 1i, 1i, 1i)), Struct_1(vec4<i32>(-324i << (var_3.x % 32u), i32(-1i) * -1i, 1i, -8108i), _wgslsmith_f_op_f32(-1000f + 1301f), !all(vec2<bool>(var_4.x, var_5.a.x)), countOneBits(54717u)))), u_input.a.x, min(func_2(726f, Struct_4(u_input.a, Struct_1(vec4<i32>(-2147483647i, -27472i, -2147483647i, 1i), global0.x, var_5.a.x, global2.x), Struct_2(Struct_1(vec4<i32>(2147483647i, 1i, -19402i, 14047i), -424f, false, 0u), vec3<f32>(-845f, -477f, global1.x), Struct_1(vec4<i32>(-11093i, 1i, 2147483647i, -2147483647i), var_5.b, var_4.x, 47590u), vec2<f32>(var_5.b, -176f), vec2<bool>(var_5.a.x, var_4.x)), Struct_1(vec4<i32>(-1i, 0i, -4791i, 2147483647i), -1030f, false, 21853u), u_input.b.zzy)).a.x ^ ~(~(-8093i)), func_2(global0.x, Struct_4(vec4<u32>(99182u, 0u, 45796u, 0u), func_2(var_5.b, Struct_4(u_input.a, Struct_1(vec4<i32>(-1i, -27237i, -39888i, 2147483647i), global1.x, true, 60361u), Struct_2(Struct_1(vec4<i32>(2147483647i, 3515i, -19915i, 1i), -326f, var_5.a.x, global2.x), vec3<f32>(-296f, global0.x, 360f), Struct_1(vec4<i32>(-17599i, 0i, 1i, 0i), -1378f, false, 20336u), vec2<f32>(global0.x, global1.x), var_5.a.xz), Struct_1(vec4<i32>(-1i, 0i, 2147483647i, -1i), 340f, var_4.x, 4294967295u), vec3<u32>(global2.x, 1u, 1u))), Struct_2(Struct_1(vec4<i32>(52641i, 45765i, -1i, -28173i), global1.x, true, 74191u), vec3<f32>(var_1, var_1, global1.x), Struct_1(vec4<i32>(-2147483647i, -1i, -70313i, 2147483647i), var_1, false, 0u), vec2<f32>(var_1, 485f), var_5.a.yw), func_2(-723f, Struct_4(vec4<u32>(32606u, 4294967295u, 0u, 19826u), Struct_1(vec4<i32>(-1i, -10339i, -2147483647i, 11617i), -313f, var_4.x, 0u), Struct_2(Struct_1(vec4<i32>(0i, -17147i, -31695i, 61614i), 717f, var_4.x, u_input.a.x), vec3<f32>(1279f, global0.x, global1.x), Struct_1(vec4<i32>(1i, 0i, -2147483647i, -25741i), global0.x, true, global2.x), vec2<f32>(global0.x, var_1), var_4.xy), Struct_1(vec4<i32>(-12227i, 18828i, -52480i, 28475i), var_5.b, false, global2.x), u_input.b.xzz)), var_3)).a.x), firstTrailingBit(countOneBits(1u << (abs(var_3.x) % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 * var_5.b) - _wgslsmith_f_op_f32(f32(-1f) * -1036f)))));
}

