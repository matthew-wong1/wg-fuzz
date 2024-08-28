struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<f32>,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: vec2<i32>,
}

struct Struct_5 {
    a: vec3<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 18> = array<u32, 18>(1u, 66407u, 4294967295u, 17193u, 16405u, 6210u, 1u, 25217u, 26299u, 1u, 0u, 19672u, 0u, 8376u, 29045u, 1u, 10697u, 39236u);

var<private> global1: array<Struct_5, 18> = array<Struct_5, 18>(Struct_5(vec3<bool>(true, true, true), Struct_1(vec3<f32>(-1447f, 706f, 221f))), Struct_5(vec3<bool>(true, false, false), Struct_1(vec3<f32>(806f, -680f, 1841f))), Struct_5(vec3<bool>(false, false, false), Struct_1(vec3<f32>(-650f, 969f, -1613f))), Struct_5(vec3<bool>(true, false, true), Struct_1(vec3<f32>(1021f, 450f, 631f))), Struct_5(vec3<bool>(true, false, true), Struct_1(vec3<f32>(-507f, -202f, -1049f))), Struct_5(vec3<bool>(false, true, false), Struct_1(vec3<f32>(-232f, -754f, 1116f))), Struct_5(vec3<bool>(false, true, false), Struct_1(vec3<f32>(-806f, -100f, -2363f))), Struct_5(vec3<bool>(false, true, true), Struct_1(vec3<f32>(2565f, -1875f, -841f))), Struct_5(vec3<bool>(true, true, true), Struct_1(vec3<f32>(-328f, -928f, 804f))), Struct_5(vec3<bool>(true, false, true), Struct_1(vec3<f32>(515f, -436f, 1000f))), Struct_5(vec3<bool>(false, false, false), Struct_1(vec3<f32>(1454f, -1251f, 1829f))), Struct_5(vec3<bool>(false, false, false), Struct_1(vec3<f32>(3142f, 3159f, 985f))), Struct_5(vec3<bool>(true, true, true), Struct_1(vec3<f32>(-625f, -640f, -2322f))), Struct_5(vec3<bool>(true, false, false), Struct_1(vec3<f32>(261f, -117f, 1478f))), Struct_5(vec3<bool>(true, false, false), Struct_1(vec3<f32>(-1948f, -1073f, 2046f))), Struct_5(vec3<bool>(true, true, false), Struct_1(vec3<f32>(1075f, -565f, 1000f))), Struct_5(vec3<bool>(true, false, true), Struct_1(vec3<f32>(-778f, 2115f, -631f))), Struct_5(vec3<bool>(true, true, true), Struct_1(vec3<f32>(390f, 797f, 2610f))));

var<private> global2: array<Struct_5, 26> = array<Struct_5, 26>(Struct_5(vec3<bool>(false, false, true), Struct_1(vec3<f32>(1433f, -114f, 240f))), Struct_5(vec3<bool>(false, true, true), Struct_1(vec3<f32>(-1396f, 217f, -1121f))), Struct_5(vec3<bool>(true, false, false), Struct_1(vec3<f32>(-1263f, -267f, -1218f))), Struct_5(vec3<bool>(false, false, true), Struct_1(vec3<f32>(908f, 1590f, -1000f))), Struct_5(vec3<bool>(false, true, false), Struct_1(vec3<f32>(1000f, 610f, 860f))), Struct_5(vec3<bool>(true, false, true), Struct_1(vec3<f32>(1840f, -1313f, -688f))), Struct_5(vec3<bool>(true, true, false), Struct_1(vec3<f32>(-379f, -2080f, 919f))), Struct_5(vec3<bool>(false, true, true), Struct_1(vec3<f32>(932f, 842f, -842f))), Struct_5(vec3<bool>(false, false, true), Struct_1(vec3<f32>(1404f, 744f, -357f))), Struct_5(vec3<bool>(true, false, true), Struct_1(vec3<f32>(115f, -734f, 2303f))), Struct_5(vec3<bool>(false, true, false), Struct_1(vec3<f32>(-698f, -1691f, 731f))), Struct_5(vec3<bool>(false, true, false), Struct_1(vec3<f32>(208f, -704f, -1132f))), Struct_5(vec3<bool>(false, false, true), Struct_1(vec3<f32>(-1484f, 400f, -721f))), Struct_5(vec3<bool>(false, false, false), Struct_1(vec3<f32>(323f, 725f, -324f))), Struct_5(vec3<bool>(true, false, false), Struct_1(vec3<f32>(-1002f, -1000f, 1260f))), Struct_5(vec3<bool>(false, false, false), Struct_1(vec3<f32>(609f, -1449f, 604f))), Struct_5(vec3<bool>(false, false, false), Struct_1(vec3<f32>(-1431f, 1000f, 1253f))), Struct_5(vec3<bool>(false, true, true), Struct_1(vec3<f32>(959f, 921f, -734f))), Struct_5(vec3<bool>(false, true, false), Struct_1(vec3<f32>(-275f, 813f, -361f))), Struct_5(vec3<bool>(false, false, false), Struct_1(vec3<f32>(-1802f, 1079f, -236f))), Struct_5(vec3<bool>(false, false, false), Struct_1(vec3<f32>(475f, 2340f, 191f))), Struct_5(vec3<bool>(true, true, true), Struct_1(vec3<f32>(-115f, 1090f, -170f))), Struct_5(vec3<bool>(true, true, false), Struct_1(vec3<f32>(-451f, -489f, -288f))), Struct_5(vec3<bool>(true, true, false), Struct_1(vec3<f32>(-257f, -938f, -669f))), Struct_5(vec3<bool>(true, false, false), Struct_1(vec3<f32>(638f, 649f, -850f))), Struct_5(vec3<bool>(true, true, false), Struct_1(vec3<f32>(358f, 701f, 317f))));

var<private> global3: vec4<i32> = vec4<i32>(-51958i, 0i, i32(-2147483648), -30619i);

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32) -> i32 {
    var var_0 = Struct_2(Struct_1(vec3<f32>(_wgslsmith_div_f32(-1181f, 2163f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(125f, -1000f, false)))), 1035f)), true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1367f, -2055f, 870f))))));
    let var_1 = vec4<i32>(_wgslsmith_clamp_i32(-arg_0, arg_0, 0i), -14189i, -u_input.c, ~7868i);
    var var_2 = Struct_2(var_0.a, all(select(vec4<bool>(!var_0.b, var_0.b, true, all(vec4<bool>(false, true, true, var_0.b))), vec4<bool>(var_0.b, var_0.b, true, true), true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1450f * _wgslsmith_f_op_f32(var_0.c.x - var_0.a.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a.x)), _wgslsmith_div_f32(var_0.c.x, 453f)) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(min(var_0.a.a.x, var_0.c.x)), _wgslsmith_f_op_f32(sign(var_0.a.a.x)), _wgslsmith_f_op_f32(-1111f * var_0.c.x)), vec3<f32>(-741f, var_0.a.a.x, 1f)))));
    var var_3 = Struct_3(-arg_0 < -25066i, u_input.b.x, var_0.a);
    var_0 = Struct_2(var_2.a, var_3.a, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.c.a.x, _wgslsmith_f_op_f32(max(var_2.a.a.x, var_3.c.a.x)), _wgslsmith_f_op_f32(-var_2.c.x)) * vec3<f32>(_wgslsmith_f_op_f32(-var_3.c.a.x), -1000f, var_0.a.a.x)), vec3<f32>(var_3.c.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.c.a.x) + var_2.a.a.x), -708f), true)));
    return arg_0;
}

fn func_2(arg_0: i32) -> bool {
    var var_0 = (~_wgslsmith_clamp_vec2_i32(vec2<i32>(-21668i, arg_0), global3.xx, vec2<i32>(u_input.c, u_input.c)) | ~(-global3.yz)) & _wgslsmith_div_vec2_i32(~(-abs(vec2<i32>(27638i, arg_0))), abs(-global3.zx));
    global0 = array<u32, 18>();
    let var_1 = 3571f;
    let var_2 = global1[_wgslsmith_index_u32(~u_input.b.x, 18u)];
    var var_3 = func_3(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(global3.zzw, global3.yxw), vec3<i32>(_wgslsmith_div_i32(abs(global3.x), var_0.x), _wgslsmith_sub_i32(2147483647i << (u_input.b.x % 32u), _wgslsmith_sub_i32(1i, 2147483647i)), 0i)));
    return true;
}

fn func_4(arg_0: bool) -> Struct_2 {
    global0 = array<u32, 18>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-684f)));
    global1 = array<Struct_5, 18>();
    global0 = array<u32, 18>();
    global2 = array<Struct_5, 26>();
    return Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))))), !arg_0, vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1410f, 1387f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-392f - 1397f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1581f - -1000f) - _wgslsmith_f_op_f32(f32(-1f) * -545f)) * _wgslsmith_f_op_f32(f32(-1f) * -2189f))));
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: Struct_1) -> i32 {
    let var_0 = func_3(firstLeadingBit(_wgslsmith_clamp_i32(-13926i, _wgslsmith_mult_i32(firstTrailingBit(-46950i), 1i), global3.x)));
    global3 = reverseBits(select(reverseBits(_wgslsmith_mod_vec4_i32(abs(vec4<i32>(arg_2.x, var_0, global3.x, 0i)), select(vec4<i32>(arg_2.x, arg_2.x, global3.x, var_0), vec4<i32>(0i, arg_2.x, var_0, var_0), false))), vec4<i32>(~27531i, _wgslsmith_add_i32(global3.x, u_input.c), _wgslsmith_mod_i32(global3.x, 8158i), global3.x) >> (vec4<u32>(global0[_wgslsmith_index_u32(63733u, 18u)] | global0[_wgslsmith_index_u32(u_input.b.x, 18u)], u_input.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 18u)], 35465u), u_input.b), ~4294967295u) % vec4<u32>(32u)), vec4<bool>(arg_1.b, true, false, true)));
    let var_1 = ~var_0;
    var var_2 = _wgslsmith_add_i32(min(_wgslsmith_add_i32(-global3.x, global3.x), u_input.c), -1i);
    let var_3 = arg_1.a;
    return 4089i >> (~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(23248u, 18u)], 18u)]) % 32u);
}

fn func_1(arg_0: vec4<bool>, arg_1: f32) -> Struct_1 {
    global0 = array<u32, 18>();
    global3 = vec4<i32>(1i, ~(-(~u_input.c ^ global3.x)), func_5(_wgslsmith_f_op_f32(abs(-1634f)), func_4(func_2(58442i)), -abs(vec4<i32>(38872i, 64785i, 6244i, 32297i)), func_4(any(arg_0)).a) << (~countOneBits(~12975u) % 32u), ~reverseBits(countOneBits(-u_input.c)));
    global2 = array<Struct_5, 26>();
    let var_0 = !(!(!arg_0.x));
    var var_1 = 6738i;
    return func_4(!func_2(_wgslsmith_dot_vec4_i32(vec4<i32>(global3.x, -1i, u_input.c, -67i) ^ vec4<i32>(0i, 16632i, 0i, 28i), vec4<i32>(0i, u_input.c, -7742i, 0i)))).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_1(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), false), vec4<bool>(true, true, true, true)), -1000f), (1i < u_input.c) || any(vec4<bool>(any(vec4<bool>(false, true, true, false)), all(vec3<bool>(true, false, false)), all(vec3<bool>(false, true, false)), all(vec2<bool>(true, true)))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(839f, 1000f, 102f)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-190f, -763f, -314f), vec3<f32>(451f, 273f, 171f)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(357f, -678f, _wgslsmith_f_op_f32(-769f - 336f)))));
    let var_1 = global2[_wgslsmith_index_u32(1u, 26u)];
    global3 = -(-vec4<i32>(-1i, i32(-1i) * -1i, _wgslsmith_sub_i32(global3.x, -30560i), 0i) >> (vec4<u32>(~(~27751u), ~1u, 4294967295u, 4294967295u) % vec4<u32>(32u)));
    var var_2 = 2147483647i;
    var var_3 = var_1.a;
    let var_4 = -533f;
    var_2 = 6106i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(var_1.b.a, var_1.b.a)), var_1.b.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.b.a + vec3<f32>(707f, var_4, -1406f)))), var_0.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.a.a.x, 1574f))), var_0.a.a.yz)) - vec2<f32>(_wgslsmith_f_op_f32(-var_1.b.a.x), _wgslsmith_f_op_f32(sign(1162f))))));
}

