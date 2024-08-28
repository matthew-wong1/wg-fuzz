struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: vec3<f32>,
    e: vec4<i32>,
}

struct Struct_3 {
    a: f32,
    b: vec4<bool>,
    c: Struct_1,
    d: u32,
    e: u32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_1,
    c: f32,
    d: vec4<f32>,
    e: vec4<i32>,
}

struct Struct_5 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 27> = array<vec3<i32>, 27>(vec3<i32>(-1i, 25473i, 1i), vec3<i32>(40775i, -17089i, -21433i), vec3<i32>(-4270i, -28095i, i32(-2147483648)), vec3<i32>(0i, 0i, 0i), vec3<i32>(51564i, 0i, 18468i), vec3<i32>(-36353i, -1i, -26335i), vec3<i32>(-82492i, 2147483647i, 1i), vec3<i32>(i32(-2147483648), -11770i, -1i), vec3<i32>(2147483647i, -32946i, -21356i), vec3<i32>(-14426i, -39957i, 2147483647i), vec3<i32>(-3403i, 15593i, 2147483647i), vec3<i32>(-52007i, -21746i, i32(-2147483648)), vec3<i32>(-32589i, 2147483647i, i32(-2147483648)), vec3<i32>(-17955i, -9263i, -1i), vec3<i32>(-1i, -19587i, -84070i), vec3<i32>(1i, -36777i, 26555i), vec3<i32>(2147483647i, -1i, -29568i), vec3<i32>(2147483647i, 5647i, 2147483647i), vec3<i32>(0i, 2147483647i, 1i), vec3<i32>(-22801i, -8785i, 23029i), vec3<i32>(-13705i, 2147483647i, -1i), vec3<i32>(1i, 1i, 23669i), vec3<i32>(i32(-2147483648), 2147483647i, 6947i), vec3<i32>(39121i, -50584i, -1i), vec3<i32>(i32(-2147483648), 20167i, 78206i), vec3<i32>(-35003i, 1i, -53066i), vec3<i32>(30327i, i32(-2147483648), i32(-2147483648)));

var<private> global1: vec2<f32>;

var<private> global2: array<Struct_1, 10>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -850f, 2658f, -270f) - vec4<f32>(global1.x, global1.x, global1.x, global1.x)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1282f, global1.x, global1.x, -266f))))))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(exp2(global1.x)), -646f, _wgslsmith_f_op_f32(-global1.x), -1386f);
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_1.wx)) - vec2<f32>(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(-global1.x)), var_0.x));
    var_1 = var_0;
    let var_2 = Struct_5(var_1.ywy);
    return _wgslsmith_f_op_f32(-var_2.a.x);
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-964f + global1.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global1.x, global1.x)), _wgslsmith_f_op_f32(-global1.x))) + -215f));
    var var_1 = !vec4<bool>(any(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), true)), true, all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false))), all(vec2<bool>(true, true)));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(global1.x - -380f), -744f);
    let var_3 = _wgslsmith_f_op_f32(max(-514f, 196f));
    let var_4 = Struct_4(-vec4<i32>(-48571i, -2147483647i, u_input.b.x >> (1u % 32u), 2147483647i >> (_wgslsmith_sub_u32(u_input.a.x, u_input.a.x) % 32u)), global2[_wgslsmith_index_u32((abs(_wgslsmith_clamp_u32(u_input.a.x, 61139u, 28716u)) >> (4294967295u % 32u)) ^ reverseBits(u_input.a.x), 10u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-836f, 1000f), _wgslsmith_f_op_f32(func_3(i32(-1i) * -1i))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-657f, 318f, global1.x, global1.x), vec4<f32>(3085f, -1420f, var_3, global1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, false))))), vec4<f32>(-234f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_2.x)), _wgslsmith_f_op_f32(-608f + -559f)), 1f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1.x * 540f)))))), reverseBits(u_input.b));
    return Struct_2(Struct_1(abs(vec3<u32>(var_4.b.a.x, 0u, 10116u) & u_input.a) >> (vec3<u32>(37787u, ~u_input.a.x, u_input.a.x) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(select(vec3<i32>(u_input.b.x, var_4.b.b.x, 11701i), global0[_wgslsmith_index_u32(4294967295u, 27u)] << (vec3<u32>(var_4.b.a.x, var_4.b.a.x, var_4.b.a.x) % vec3<u32>(32u)), 97456u > var_4.b.a.x), countOneBits(-global0[_wgslsmith_index_u32(var_4.b.a.x, 27u)]), vec3<i32>(-43479i, u_input.b.x, -u_input.b.x))), global2[_wgslsmith_index_u32(countOneBits(1u), 10u)], ~1u, var_4.d.zwy, _wgslsmith_add_vec4_i32(~abs(vec4<i32>(var_4.a.x, 1i, u_input.b.x, -5298i)), -select(select(var_4.a, vec4<i32>(u_input.b.x, 1016i, -23911i, -37202i), var_1.x), ~var_4.a, all(vec3<bool>(var_1.x, false, var_1.x)))));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_4, arg_3: Struct_3) -> Struct_3 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.d.x * 150f)))), -1000f);
    global2 = array<Struct_1, 10>();
    global0 = array<vec3<i32>, 27>();
    global1 = arg_0.d.xy;
    global1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-arg_2.d.zx), _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.d.x, -1612f), arg_2.d.wz)))), vec2<f32>(func_2().d.x, arg_3.a))));
    return arg_3;
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_4) -> bool {
    global0 = array<vec3<i32>, 27>();
    var var_0 = func_4(func_2(), abs(select(vec4<u32>(_wgslsmith_mod_u32(arg_1.b.a.x, 0u), 29704u, ~65127u, 4294967295u), ~vec4<u32>(arg_1.b.a.x, u_input.a.x, u_input.a.x, arg_1.b.a.x) & ~vec4<u32>(arg_1.b.a.x, 0u, 12392u, u_input.a.x), vec4<bool>(true, any(vec3<bool>(false, false, false)), true, select(false, true, true)))), Struct_4(arg_0 >> (firstTrailingBit(vec4<u32>(62123u, 6998u, arg_1.b.a.x, arg_1.b.a.x) & vec4<u32>(4294967295u, u_input.a.x, arg_1.b.a.x, arg_1.b.a.x)) % vec4<u32>(32u)), func_2().b, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(global1.x)), _wgslsmith_div_f32(arg_1.d.x, 528f))))), _wgslsmith_f_op_vec4_f32(-arg_1.d), arg_0), Struct_3(477f, vec4<bool>(true, !select(true, true, true), all(vec2<bool>(true, true)), true), func_2().a, arg_1.b.a.x, 1u));
    var var_1 = -500f;
    let var_2 = func_2();
    let var_3 = arg_0.x;
    return false;
}

fn func_5(arg_0: bool, arg_1: vec4<bool>, arg_2: vec2<bool>, arg_3: bool) -> Struct_2 {
    let var_0 = func_2();
    var var_1 = ~(_wgslsmith_add_u32(1u, 6008u) >> (1u % 32u));
    global2 = array<Struct_1, 10>();
    global1 = var_0.d.zz;
    var_1 = u_input.a.x;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(trunc(global1.x));
    var var_1 = !select(!vec2<bool>(any(vec3<bool>(true, true, true)), true), select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), 4294967295u <= u_input.a.x)), vec2<bool>(true, true));
    global0 = array<vec3<i32>, 27>();
    var var_2 = func_5(true, select(select(vec4<bool>(true, true, var_0 <= 227f, func_1(vec4<i32>(u_input.b.x, 1i, u_input.b.x, u_input.b.x), Struct_4(vec4<i32>(51625i, u_input.b.x, u_input.b.x, -1i), global2[_wgslsmith_index_u32(4294967295u, 10u)], 254f, vec4<f32>(-146f, var_0, global1.x, 826f), u_input.b))), vec4<bool>(var_1.x, var_1.x, true || var_1.x, false && var_1.x), _wgslsmith_f_op_f32(234f - var_0) <= 665f), vec4<bool>(var_1.x, all(func_4(Struct_2(global2[_wgslsmith_index_u32(u_input.a.x, 10u)], Struct_1(vec3<u32>(0u, u_input.a.x, 1u), u_input.b.wyz), u_input.a.x, vec3<f32>(var_0, global1.x, global1.x), u_input.b), vec4<u32>(4527u, 4294967295u, 9243u, 0u), Struct_4(vec4<i32>(u_input.b.x, -48479i, u_input.b.x, 2147483647i), global2[_wgslsmith_index_u32(76570u, 10u)], global1.x, vec4<f32>(1655f, 2203f, var_0, var_0), u_input.b), Struct_3(-2094f, vec4<bool>(var_1.x, true, var_1.x, var_1.x), Struct_1(u_input.a, vec3<i32>(1i, 23267i, u_input.b.x)), u_input.a.x, u_input.a.x)).b.zz), var_1.x, !all(vec3<bool>(false, true, true))), func_4(Struct_2(func_2().a, func_4(Struct_2(global2[_wgslsmith_index_u32(u_input.a.x, 10u)], global2[_wgslsmith_index_u32(0u, 10u)], u_input.a.x, vec3<f32>(var_0, global1.x, -256f), vec4<i32>(16814i, -1555i, u_input.b.x, u_input.b.x)), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), Struct_4(u_input.b, Struct_1(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.b.ywx), var_0, vec4<f32>(-1379f, -1608f, 1213f, global1.x), u_input.b), Struct_3(global1.x, vec4<bool>(true, false, false, var_1.x), Struct_1(u_input.a, global0[_wgslsmith_index_u32(19085u, 27u)]), u_input.a.x, 64098u)).c, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1.x, 1294f, 1895f), vec3<f32>(-457f, global1.x, 450f))), ~u_input.b), abs(select(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u), vec4<u32>(1u, 1u, u_input.a.x, u_input.a.x), vec4<bool>(false, var_1.x, false, var_1.x))), Struct_4(vec4<i32>(u_input.b.x, u_input.b.x, -19005i, u_input.b.x), Struct_1(vec3<u32>(u_input.a.x, u_input.a.x, 0u), vec3<i32>(u_input.b.x, 39784i, 7699i)), _wgslsmith_f_op_f32(114f + 746f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, var_0, var_0, var_0)), vec4<i32>(0i, -2147483647i, -20321i, u_input.b.x)), func_4(Struct_2(Struct_1(vec3<u32>(0u, u_input.a.x, 1u), vec3<i32>(u_input.b.x, 0i, u_input.b.x)), global2[_wgslsmith_index_u32(u_input.a.x, 10u)], u_input.a.x, vec3<f32>(1008f, global1.x, 772f), vec4<i32>(u_input.b.x, -2136i, u_input.b.x, 3661i)), vec4<u32>(1u, u_input.a.x, 4294967295u, 1u) | vec4<u32>(4294967295u, 30338u, u_input.a.x, 24085u), Struct_4(u_input.b, global2[_wgslsmith_index_u32(0u, 10u)], 453f, vec4<f32>(var_0, -1000f, global1.x, -176f), u_input.b), func_4(Struct_2(Struct_1(u_input.a, vec3<i32>(u_input.b.x, u_input.b.x, -1i)), global2[_wgslsmith_index_u32(17613u, 10u)], 36519u, vec3<f32>(1408f, 1366f, -1275f), u_input.b), vec4<u32>(0u, 4294967295u, 0u, u_input.a.x), Struct_4(u_input.b, global2[_wgslsmith_index_u32(u_input.a.x, 10u)], global1.x, vec4<f32>(global1.x, global1.x, -951f, 1389f), u_input.b), Struct_3(global1.x, vec4<bool>(true, false, var_1.x, false), global2[_wgslsmith_index_u32(u_input.a.x, 10u)], 0u, u_input.a.x)))).b), !vec2<bool>(any(func_4(Struct_2(global2[_wgslsmith_index_u32(4294967295u, 10u)], global2[_wgslsmith_index_u32(u_input.a.x, 10u)], u_input.a.x, vec3<f32>(-605f, -205f, -964f), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -28912i)), vec4<u32>(1u, u_input.a.x, 37159u, 19495u), Struct_4(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), Struct_1(u_input.a, u_input.b.xzw), var_0, vec4<f32>(795f, 1000f, global1.x, global1.x), u_input.b), Struct_3(var_0, vec4<bool>(false, var_1.x, true, var_1.x), global2[_wgslsmith_index_u32(u_input.a.x, 10u)], u_input.a.x, u_input.a.x)).b.xyz), all(func_4(Struct_2(Struct_1(u_input.a, u_input.b.ywy), Struct_1(vec3<u32>(2578u, 62047u, u_input.a.x), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)), 29212u, vec3<f32>(var_0, 2031f, -1000f), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), vec4<u32>(50848u, 5714u, 1u, 1u), Struct_4(vec4<i32>(43212i, -3015i, u_input.b.x, u_input.b.x), global2[_wgslsmith_index_u32(70816u, 10u)], 350f, vec4<f32>(1031f, 1665f, global1.x, var_0), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), Struct_3(global1.x, vec4<bool>(var_1.x, true, var_1.x, false), global2[_wgslsmith_index_u32(u_input.a.x, 10u)], u_input.a.x, 1u)).b.yz)), false);
    var var_3 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer((u_input.b.x << (~0u % 32u)) ^ _wgslsmith_dot_vec3_i32(var_2.e.xyw, vec3<i32>(min(29660i, -18087i), var_2.a.b.x, -1i)));
}

