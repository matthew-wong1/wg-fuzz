struct Struct_1 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: i32,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: vec4<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 6>;

var<private> global1: bool = true;

var<private> global2: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec4<u32>(9197u, 12028u, 41806u, 0u), 486f), Struct_1(vec4<u32>(9101u, 1u, 4294967295u, 59711u), -434f), Struct_1(vec4<u32>(4294967295u, 0u, 68443u, 81077u), -737f), Struct_1(vec4<u32>(5600u, 26661u, 6018u, 1u), -1704f), Struct_1(vec4<u32>(12940u, 0u, 12680u, 21867u), -1174f), Struct_1(vec4<u32>(44395u, 84171u, 48192u, 0u), 340f), Struct_1(vec4<u32>(4294967295u, 1u, 0u, 0u), 775f), Struct_1(vec4<u32>(45347u, 0u, 6044u, 10901u), -264f), Struct_1(vec4<u32>(0u, 4294967295u, 69559u, 0u), -1806f), Struct_1(vec4<u32>(4294967295u, 1u, 8790u, 9913u), 134f), Struct_1(vec4<u32>(27194u, 17414u, 12430u, 0u), -741f), Struct_1(vec4<u32>(24671u, 72380u, 75994u, 0u), 1333f), Struct_1(vec4<u32>(82956u, 0u, 48034u, 0u), 2248f), Struct_1(vec4<u32>(4294967295u, 1u, 75859u, 0u), 114f), Struct_1(vec4<u32>(0u, 43717u, 1u, 18250u), -1000f), Struct_1(vec4<u32>(1u, 0u, 33227u, 16569u), 471f), Struct_1(vec4<u32>(29275u, 1u, 1u, 0u), -225f), Struct_1(vec4<u32>(35899u, 42596u, 27276u, 98104u), 761f), Struct_1(vec4<u32>(52708u, 72012u, 0u, 4294967295u), -1000f), Struct_1(vec4<u32>(53779u, 86142u, 0u, 1u), 1395f), Struct_1(vec4<u32>(1u, 43624u, 1u, 1u), 519f), Struct_1(vec4<u32>(30082u, 18048u, 4294967295u, 1u), 1887f), Struct_1(vec4<u32>(1867u, 1u, 47671u, 1u), 1000f), Struct_1(vec4<u32>(39895u, 0u, 1u, 0u), -216f), Struct_1(vec4<u32>(12912u, 4294967295u, 25170u, 4294967295u), -832f), Struct_1(vec4<u32>(54181u, 0u, 35084u, 55444u), -980f), Struct_1(vec4<u32>(0u, 4294967295u, 4294967295u, 45417u), 405f), Struct_1(vec4<u32>(29758u, 20371u, 73245u, 6105u), 282f), Struct_1(vec4<u32>(50842u, 0u, 1u, 0u), -271f), Struct_1(vec4<u32>(29369u, 13133u, 1u, 1u), 212f), Struct_1(vec4<u32>(20092u, 1u, 4294967295u, 32404u), 1092f));

var<private> global3: array<f32, 25> = array<f32, 25>(-1287f, -806f, -962f, -1000f, 1167f, 1389f, 1450f, 427f, -695f, 547f, 319f, -296f, 828f, -303f, 2630f, 1232f, 1840f, -232f, 1650f, -318f, 1344f, -484f, 103f, 912f, 907f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: Struct_3) -> Struct_2 {
    return arg_0.a;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> f32 {
    let var_0 = Struct_1(~(~(firstLeadingBit(vec4<u32>(4294967295u, arg_0.a.x, 4294967295u, 29805u)) | firstLeadingBit(vec4<u32>(1u, u_input.c, 46828u, arg_1.b.a.x)))), 1033f);
    global1 = false && all(vec3<bool>(func_2(Struct_3(Struct_2(true, global2[_wgslsmith_index_u32(arg_0.a.x, 31u)]), vec3<i32>(-27066i, -2147483647i, 31162i), u_input.b.x, global3[_wgslsmith_index_u32(13833u, 25u)], global2[_wgslsmith_index_u32(4358u, 31u)])).a, true || all(vec4<bool>(arg_1.a, true, arg_1.a, arg_1.a)), arg_1.a));
    let var_1 = global2[_wgslsmith_index_u32(u_input.c, 31u)];
    global3 = array<f32, 25>();
    let var_2 = Struct_3(func_2(Struct_3(arg_1, vec3<i32>(-u_input.a.x, ~u_input.a.x, -u_input.a.x), -1i, arg_0.b, Struct_1(vec4<u32>(16458u, 35360u, var_1.a.x, arg_0.a.x), _wgslsmith_f_op_f32(-1380f * arg_0.b)))), min(vec3<i32>(u_input.b.x, abs(_wgslsmith_dot_vec4_i32(u_input.b, u_input.b)), countOneBits(1i)), vec3<i32>(0i, -(~1i), max(u_input.a.x, 1i))), select(u_input.b.x, u_input.b.x, arg_1.a), 161f, Struct_1(abs(arg_0.a), 319f));
    return func_2(Struct_3(func_2(var_2), ~u_input.b.zxw, -952i, arg_0.b, Struct_1(_wgslsmith_div_vec4_u32(select(vec4<u32>(1u, var_2.a.b.a.x, var_1.a.x, arg_1.b.a.x), vec4<u32>(var_1.a.x, 4294967295u, 37309u, var_0.a.x), vec4<bool>(true, false, var_2.a.a, arg_1.a)), vec4<u32>(0u, 45777u, 22495u, 1u)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1.b.b - 518f)))))).b.b;
}

fn func_1() -> Struct_3 {
    var var_0 = Struct_1(vec4<u32>(~u_input.c, u_input.c & _wgslsmith_add_u32(reverseBits(u_input.c), u_input.c), _wgslsmith_clamp_u32(abs(u_input.c), u_input.c, 1u) >> (firstTrailingBit(1863u) % 32u), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(17322u, 1u, u_input.c)) & vec3<u32>(1u, u_input.c, u_input.c), min(vec3<u32>(0u, u_input.c, 0u) | vec3<u32>(u_input.c, 69922u, 1u), vec3<u32>(u_input.c, u_input.c, u_input.c)))), _wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(max(min(~1u, 1u & u_input.c), u_input.c), 25u)], _wgslsmith_f_op_f32(func_3(Struct_1(~vec4<u32>(1u, u_input.c, 0u, u_input.c), _wgslsmith_div_f32(-545f, global3[_wgslsmith_index_u32(u_input.c, 25u)])), func_2(Struct_3(Struct_2(false, global2[_wgslsmith_index_u32(0u, 31u)]), vec3<i32>(u_input.b.x, -23423i, -9605i), 1i, 1064f, global2[_wgslsmith_index_u32(4294967295u, 31u)])))))));
    var var_1 = global3[_wgslsmith_index_u32(~(~(34044u | (~0u >> (_wgslsmith_dot_vec2_u32(var_0.a.wy, var_0.a.zy) % 32u)))), 25u)];
    var var_2 = vec4<u32>(var_0.a.x, ~20676u, 4294967295u ^ u_input.c, _wgslsmith_clamp_u32(u_input.c, 4294967295u, var_0.a.x ^ 45791u));
    let var_3 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b + global3[_wgslsmith_index_u32(var_2.x, 25u)]) + global3[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 33022u), 25u)])), _wgslsmith_f_op_f32(select(var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(384f)) * _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.c, 25u)])), any(vec4<bool>(true, true, true, true))))), vec2<f32>(692f, _wgslsmith_f_op_f32(select(var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -183f)), false)))));
    var var_4 = u_input.b.xxy;
    return Struct_3(func_2(Struct_3(Struct_2(true, func_2(Struct_3(Struct_2(false, Struct_1(vec4<u32>(u_input.c, 0u, var_2.x, var_0.a.x), -1500f)), vec3<i32>(u_input.b.x, 42924i, var_4.x), -2147483647i, -1808f, Struct_1(vec4<u32>(98783u, var_0.a.x, 4294967295u, 26435u), global3[_wgslsmith_index_u32(u_input.c, 25u)]))).b), u_input.b.zwz >> (~var_2.zyy % vec3<u32>(32u)), _wgslsmith_clamp_i32(-12525i, -2147483647i, var_4.x) ^ _wgslsmith_mod_i32(var_4.x, var_4.x), _wgslsmith_f_op_f32(-940f * _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.c, 25u)])), Struct_1(vec4<u32>(53643u, u_input.c, u_input.c, var_0.a.x) >> (vec4<u32>(var_2.x, 37650u, 131780u, u_input.c) % vec4<u32>(32u)), _wgslsmith_div_f32(var_0.b, 1013f)))), u_input.b.wzz, var_4.x, _wgslsmith_f_op_f32(-var_3.x), global2[_wgslsmith_index_u32(0u, 31u)]);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: bool, arg_3: vec3<i32>) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.e.b, _wgslsmith_f_op_f32(sign(-376f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(114f * arg_0.a.b.b) - _wgslsmith_div_f32(1786f, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 25u)])))) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(31823u, 25u)] * -1000f)), _wgslsmith_f_op_f32(abs(563f)), -1610f))));
    let var_1 = -504f;
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.d, func_2(Struct_3(arg_0.a, vec3<i32>(2147483647i, -2147483647i, -54761i), -62974i, -450f, global2[_wgslsmith_index_u32(4294967295u, 31u)])).b.b, -119f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(453f, var_1, 592f) - vec3<f32>(-803f, arg_1.e.b, global3[_wgslsmith_index_u32(u_input.c, 25u)]))), !vec3<bool>(arg_0.a.a, arg_2, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.a.b.b, var_1, global3[_wgslsmith_index_u32(0u, 25u)]), vec3<f32>(arg_1.d, arg_0.a.b.b, global3[_wgslsmith_index_u32(arg_1.e.a.x, 25u)]))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, arg_0.e.b, 1000f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(100f, -1131f, global3[_wgslsmith_index_u32(22868u, 25u)]) - vec3<f32>(arg_1.e.b, -448f, -1633f))))));
    global3 = array<f32, 25>();
    return vec3<i32>(_wgslsmith_sub_i32(arg_3.x, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(u_input.a.x, 12711i << (arg_0.e.a.x % 32u), ~arg_0.b.x), _wgslsmith_dot_vec3_i32(u_input.b.wxz, func_1().b))), 2147483647i, i32(-1i) * -24775i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(157f, _wgslsmith_div_f32(-634f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(0u, 25u)])) + _wgslsmith_f_op_f32(-1061f + global3[_wgslsmith_index_u32(26942u, 25u)])) * global3[_wgslsmith_index_u32(countOneBits(~1u), 25u)])), -508f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.c, 25u)]) + _wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(1u, 25u)]))))) - _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c, u_input.c) << (40414u % 32u), 25u)])));
    var var_1 = u_input.a.x;
    let var_2 = max(~(~4294967295u), 43972u);
    var var_3 = Struct_3(Struct_2(true, global2[_wgslsmith_index_u32(~select(max(var_2, 0u), ~8006u, all(vec4<bool>(true, true, true, false))), 31u)]), func_4(func_1(), func_1(), any(vec2<bool>(true, true)), func_1().b), u_input.a.x, 1082f, global2[_wgslsmith_index_u32(max(_wgslsmith_add_u32(4294967295u, ~max(var_2, 0u)), 1u ^ (_wgslsmith_clamp_u32(4294967295u, 50658u, 0u) & func_2(Struct_3(Struct_2(true, global2[_wgslsmith_index_u32(u_input.c, 31u)]), u_input.b.zyx, u_input.b.x, -928f, Struct_1(vec4<u32>(49741u, var_2, var_2, 0u), global3[_wgslsmith_index_u32(u_input.c, 25u)]))).b.a.x)), 31u)]);
    var var_4 = !all(vec3<bool>(false, var_3.a.b.b >= -1053f, var_3.a.a));
    let var_5 = var_3.b.yx;
    global3 = array<f32, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(var_5.x | (var_3.b.x & _wgslsmith_add_i32(-2147483647i, var_3.c)), _wgslsmith_add_i32(u_input.b.x, max(var_5.x, firstTrailingBit(60873i))), _wgslsmith_mod_i32(var_3.b.x, func_1().b.x << (firstLeadingBit(0u) % 32u))), -1150f, abs(_wgslsmith_dot_vec2_u32(select(vec2<u32>(0u, 48608u), func_1().e.a.ww, select(vec2<bool>(var_3.a.a, var_3.a.a), vec2<bool>(false, true), vec2<bool>(true, true))), ~vec2<u32>(27205u, u_input.c))), u_input.b, u_input.b.xz);
}

