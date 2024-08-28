struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec2<bool>,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 77442i;

var<private> global1: f32 = 1337f;

var<private> global2: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec3<u32>(31085u, 49022u, 1u), 18133u, vec3<i32>(39769i, 8556i, i32(-2147483648)), vec3<i32>(-22830i, 2147483647i, 0i), vec4<u32>(4294967295u, 42487u, 4294967295u, 1u)), Struct_1(vec3<u32>(8351u, 18301u, 47092u), 109399u, vec3<i32>(-25405i, 2147483647i, -52241i), vec3<i32>(32925i, i32(-2147483648), -37749i), vec4<u32>(101560u, 4294967295u, 7909u, 35947u)), Struct_1(vec3<u32>(1u, 16668u, 4294967295u), 0u, vec3<i32>(42487i, 2147483647i, 0i), vec3<i32>(-28668i, -1i, 79197i), vec4<u32>(36266u, 1u, 24054u, 0u)), Struct_1(vec3<u32>(4294967295u, 21754u, 18139u), 31642u, vec3<i32>(1i, 51775i, i32(-2147483648)), vec3<i32>(1i, 15279i, -1i), vec4<u32>(1u, 1u, 4294967295u, 18339u)), Struct_1(vec3<u32>(1u, 72502u, 69184u), 0u, vec3<i32>(0i, -16444i, 2147483647i), vec3<i32>(1i, 28260i, -70561i), vec4<u32>(1u, 4294967295u, 4294967295u, 16549u)), Struct_1(vec3<u32>(25783u, 1u, 0u), 29061u, vec3<i32>(i32(-2147483648), -14819i, 0i), vec3<i32>(-1i, 2147483647i, i32(-2147483648)), vec4<u32>(15699u, 3055u, 1u, 4294967295u)), Struct_1(vec3<u32>(4294967295u, 0u, 1u), 99011u, vec3<i32>(1i, -1i, i32(-2147483648)), vec3<i32>(-1i, 29396i, 2147483647i), vec4<u32>(28757u, 7123u, 1u, 5607u)), Struct_1(vec3<u32>(62972u, 1u, 7998u), 1u, vec3<i32>(30983i, 39669i, 70619i), vec3<i32>(18855i, 62805i, -38456i), vec4<u32>(4294967295u, 63482u, 56936u, 17714u)), Struct_1(vec3<u32>(29769u, 4537u, 24361u), 49175u, vec3<i32>(-1i, i32(-2147483648), -27347i), vec3<i32>(-17722i, -1i, -18865i), vec4<u32>(23513u, 50145u, 4294967295u, 76034u)), Struct_1(vec3<u32>(22589u, 48596u, 9575u), 4294967295u, vec3<i32>(1i, 1i, 6450i), vec3<i32>(0i, -10183i, 0i), vec4<u32>(109482u, 0u, 26796u, 1561u)), Struct_1(vec3<u32>(5236u, 7595u, 0u), 49782u, vec3<i32>(2147483647i, 27810i, 28938i), vec3<i32>(32302i, 2952i, -27782i), vec4<u32>(4294967295u, 4294967295u, 2633u, 61767u)), Struct_1(vec3<u32>(0u, 54191u, 30377u), 1u, vec3<i32>(23536i, -1i, -29976i), vec3<i32>(0i, 2496i, 0i), vec4<u32>(4294967295u, 4294967295u, 46101u, 66788u)), Struct_1(vec3<u32>(1u, 4294967295u, 45269u), 4294967295u, vec3<i32>(-1667i, i32(-2147483648), 0i), vec3<i32>(i32(-2147483648), 1i, i32(-2147483648)), vec4<u32>(1u, 9522u, 4294967295u, 4294967295u)), Struct_1(vec3<u32>(16440u, 10274u, 31373u), 43692u, vec3<i32>(69740i, -31410i, -2977i), vec3<i32>(0i, 0i, i32(-2147483648)), vec4<u32>(0u, 1u, 22099u, 5354u)), Struct_1(vec3<u32>(82285u, 22354u, 1u), 0u, vec3<i32>(1i, 0i, -72964i), vec3<i32>(2147483647i, -1i, -52552i), vec4<u32>(7492u, 39502u, 4294967295u, 13019u)), Struct_1(vec3<u32>(4294967295u, 1u, 29497u), 1u, vec3<i32>(0i, 0i, -24116i), vec3<i32>(2147483647i, 0i, -28194i), vec4<u32>(33161u, 60588u, 51478u, 0u)), Struct_1(vec3<u32>(35863u, 4373u, 5700u), 90597u, vec3<i32>(i32(-2147483648), 21933i, 1i), vec3<i32>(-1i, i32(-2147483648), -24121i), vec4<u32>(1u, 4294967295u, 0u, 1u)), Struct_1(vec3<u32>(8858u, 14101u, 61183u), 4294967295u, vec3<i32>(1i, -23976i, 2147483647i), vec3<i32>(47220i, i32(-2147483648), -5974i), vec4<u32>(4294967295u, 1u, 15897u, 20032u)), Struct_1(vec3<u32>(98712u, 8504u, 0u), 4294967295u, vec3<i32>(0i, 0i, -21561i), vec3<i32>(-39275i, 8863i, i32(-2147483648)), vec4<u32>(4294967295u, 36428u, 0u, 1u)), Struct_1(vec3<u32>(1u, 0u, 4294967295u), 13506u, vec3<i32>(-1i, -1i, 2147483647i), vec3<i32>(23690i, -12692i, -1i), vec4<u32>(0u, 4294967295u, 1u, 0u)), Struct_1(vec3<u32>(4294967295u, 0u, 0u), 15036u, vec3<i32>(1i, 0i, 1i), vec3<i32>(-7783i, -4392i, 15709i), vec4<u32>(0u, 2755u, 80596u, 26971u)));

var<private> global3: array<i32, 8> = array<i32, 8>(-1i, -1i, 2147483647i, 2147483647i, 2447i, 49051i, 12941i, 2147483647i);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: Struct_2, arg_1: vec4<u32>) -> Struct_1 {
    let var_0 = 0u;
    global2 = array<Struct_1, 21>();
    global3 = array<i32, 8>();
    global1 = arg_0.b.x;
    global1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.d), arg_0.d)) + -799f))));
    return arg_0.e;
}

fn func_3() -> f32 {
    let var_0 = -1i;
    let var_1 = !vec2<bool>(any(vec3<bool>(true, true, true)), false);
    global2 = array<Struct_1, 21>();
    var var_2 = Struct_2(-(max(firstTrailingBit(vec4<i32>(var_0, -23382i, var_0, -8311i)), vec4<i32>(var_0, -25491i, -2147483647i, -1i)) << (~abs(vec4<u32>(29359u, 4294967295u, 4294967295u, 17326u)) % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(239f + 956f), _wgslsmith_f_op_f32(-3959f - -1613f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(731f + -361f))), 234f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-276f, 613f, -1467f)))))))), select(var_1, select(var_1, !(!var_1), select(var_1.x, select(var_1.x, var_1.x, var_1.x), !var_1.x)), var_1.x), -481f, Struct_1(~vec3<u32>(1u, 1u, 1u), _wgslsmith_div_u32(max(firstTrailingBit(17379u), ~4294967295u), 1u), _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, 0i, 24546i), vec3<i32>(44268i, global3[_wgslsmith_index_u32(57214u, 8u)], var_0)), min(vec3<i32>(global3[_wgslsmith_index_u32(1u, 8u)], u_input.a, var_0), vec3<i32>(u_input.a, -42003i, 67879i))) >> (~vec3<u32>(1u, 1u, 4294967295u) % vec3<u32>(32u)), min(_wgslsmith_div_vec3_i32(func_1(Struct_2(vec4<i32>(global3[_wgslsmith_index_u32(4294967295u, 8u)], u_input.a, var_0, 16808i), vec3<f32>(-1237f, 441f, 518f), var_1, -246f, global2[_wgslsmith_index_u32(32789u, 21u)]), vec4<u32>(1u, 19535u, 59078u, 11285u)).d, vec3<i32>(var_0, -2147483647i, -21014i)), -vec3<i32>(u_input.a, var_0, u_input.a)), vec4<u32>(4294967295u, _wgslsmith_div_u32(abs(74741u), abs(33039u)), ~1u, 1u)));
    let var_3 = true;
    return _wgslsmith_f_op_f32(sign(108f));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: vec3<i32>) -> f32 {
    let var_0 = Struct_2(-arg_1, arg_2.b, select(arg_2.c, select(select(!arg_2.c, arg_2.c, select(arg_2.c, arg_2.c, vec2<bool>(false, arg_2.c.x))), select(select(arg_2.c, arg_2.c, vec2<bool>(arg_2.c.x, arg_2.c.x)), arg_2.c, arg_2.c), !select(vec2<bool>(arg_2.c.x, arg_2.c.x), vec2<bool>(true, true), vec2<bool>(arg_2.c.x, arg_2.c.x))), any(!vec4<bool>(arg_2.c.x, arg_2.c.x, arg_2.c.x, arg_2.c.x))), _wgslsmith_f_op_f32(func_3()), Struct_1(~(~arg_2.e.a), arg_2.e.b & arg_0.a.x, -arg_1.zyw, vec3<i32>(~0i, arg_3.x, 38742i), reverseBits(~_wgslsmith_add_vec4_u32(arg_0.e, arg_0.e))));
    global2 = array<Struct_1, 21>();
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d))) - arg_2.d), var_0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.b.x * var_0.d) - 1486f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) + _wgslsmith_f_op_f32(min(var_0.b.x, var_0.d)))) * -934f));
    var var_2 = global2[_wgslsmith_index_u32(~firstLeadingBit(arg_2.e.b), 21u)];
    var var_3 = Struct_1(var_2.a, 4294967295u, countOneBits(_wgslsmith_add_vec3_i32(-vec3<i32>(0i, -1i, u_input.a), reverseBits(firstLeadingBit(vec3<i32>(2147483647i, u_input.a, global3[_wgslsmith_index_u32(110832u, 8u)]))))), _wgslsmith_div_vec3_i32(countOneBits(_wgslsmith_div_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(arg_2.e.e.x, 8u)], var_2.d.x, -2147483647i), var_0.a.wxz)), _wgslsmith_mult_vec3_i32(-vec3<i32>(26990i, -19852i, arg_0.d.x), vec3<i32>(var_2.d.x, arg_1.x, -13952i) >> (vec3<u32>(0u, arg_2.e.b, 1u) % vec3<u32>(32u)))), vec4<u32>(1u, ~reverseBits(_wgslsmith_sub_u32(var_0.e.a.x, 0u)), arg_2.e.b, arg_2.e.e.x));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(314f, 1204f)))) - 251f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(1624u, ~27382u);
    var var_1 = global2[_wgslsmith_index_u32(~4294967295u, 21u)];
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1174f, _wgslsmith_f_op_f32(func_2(Struct_1(vec3<u32>(var_1.b, var_1.b, var_1.a.x), ~1u, ~var_1.d, -vec3<i32>(global3[_wgslsmith_index_u32(365u, 8u)], global3[_wgslsmith_index_u32(4294967295u, 8u)], global3[_wgslsmith_index_u32(15508u, 8u)]), select(vec4<u32>(var_1.a.x, 25136u, var_1.a.x, var_1.e.x), var_1.e, vec4<bool>(false, true, false, true))), vec4<i32>(var_1.c.x, -15360i, var_1.c.x, 43166i | global3[_wgslsmith_index_u32(var_1.b, 8u)]), Struct_2(vec4<i32>(global3[_wgslsmith_index_u32(1u, 8u)], global3[_wgslsmith_index_u32(15130u, 8u)], -2147483647i, u_input.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1269f, -1000f, 1594f)), vec2<bool>(false, false), _wgslsmith_f_op_f32(156f * -309f), func_1(Struct_2(vec4<i32>(-372i, -50776i, 61826i, 0i), vec3<f32>(334f, 2386f, -768f), vec2<bool>(true, false), -209f, global2[_wgslsmith_index_u32(20642u, 21u)]), var_1.e)), ~vec3<i32>(u_input.a, 27043i, var_1.d.x)))));
    let var_3 = ~(i32(-1i) * -2147483647i);
    let var_4 = vec3<u32>(var_1.a.x, var_1.a.x, ~var_1.e.x);
    var var_5 = func_1(Struct_2(vec4<i32>(var_3, global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~var_1.e.x, var_4.x), 8u)], -var_1.c.x, global3[_wgslsmith_index_u32(~0u, 8u)]), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-227f, 2430f, var_2.x) - vec3<f32>(var_2.x, 450f, var_2.x))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, -1142f, var_2.x))), vec2<bool>(all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), true)), any(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(711f, -1277f))))), global2[_wgslsmith_index_u32(~(~firstTrailingBit(25383u)), 21u)]), ~var_1.e);
    var var_6 = select(select(var_5.d << (vec3<u32>(var_5.b >> (var_5.e.x % 32u), ~33780u, var_5.b) % vec3<u32>(32u)), vec3<i32>(countOneBits(abs(2147483647i)), -2147483647i, 6096i), all(vec3<bool>(true, false, false)) && true), var_1.d, !(!vec3<bool>(true, false, all(vec2<bool>(true, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-309f)))), ~var_1.a.zz);
}

