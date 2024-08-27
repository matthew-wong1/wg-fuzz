struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1000f, vec2<u32>(4294967295u, 0u), vec3<i32>(0i, 48393i, 0i), true);

var<private> global1: array<u32, 4>;

var<private> global2: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(-644f, vec2<u32>(16324u, 26553u), vec3<i32>(-12278i, -195i, 43962i), false), Struct_1(512f, vec2<u32>(84010u, 15068u), vec3<i32>(0i, 2147483647i, 35269i), true), Struct_1(-201f, vec2<u32>(4294967295u, 40186u), vec3<i32>(0i, -8443i, 0i), false), Struct_1(526f, vec2<u32>(1u, 46071u), vec3<i32>(-41334i, -1i, 0i), false), Struct_1(408f, vec2<u32>(14848u, 4294967295u), vec3<i32>(-13299i, -1i, -1i), false), Struct_1(123f, vec2<u32>(53000u, 95371u), vec3<i32>(2147483647i, -1i, 2147483647i), true), Struct_1(-1084f, vec2<u32>(28751u, 1u), vec3<i32>(10978i, 28091i, i32(-2147483648)), false), Struct_1(-2763f, vec2<u32>(1u, 16065u), vec3<i32>(2147483647i, 0i, 0i), true), Struct_1(1285f, vec2<u32>(1u, 18862u), vec3<i32>(0i, 5961i, -17271i), false), Struct_1(-1409f, vec2<u32>(4294967295u, 1u), vec3<i32>(0i, 39540i, 0i), false), Struct_1(2217f, vec2<u32>(1u, 1u), vec3<i32>(2147483647i, 27168i, -19014i), false), Struct_1(250f, vec2<u32>(0u, 2257u), vec3<i32>(-1i, 36970i, 0i), true), Struct_1(1450f, vec2<u32>(15575u, 0u), vec3<i32>(14035i, 1i, -11842i), true));

var<private> global3: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(1366f, vec2<u32>(58357u, 59537u), vec3<i32>(-1i, 23466i, -31418i), false), Struct_1(-183f, vec2<u32>(0u, 45163u), vec3<i32>(-1i, 2147483647i, 1i), false), Struct_1(868f, vec2<u32>(46979u, 4294967295u), vec3<i32>(2147483647i, -1i, 0i), false), Struct_1(604f, vec2<u32>(0u, 1022u), vec3<i32>(0i, i32(-2147483648), 1i), false), Struct_1(-151f, vec2<u32>(4294967295u, 154452u), vec3<i32>(-11726i, 1i, 2147483647i), false), Struct_1(-732f, vec2<u32>(135626u, 0u), vec3<i32>(1i, 2147483647i, 1i), true), Struct_1(-518f, vec2<u32>(44439u, 0u), vec3<i32>(0i, -16314i, -1i), false), Struct_1(-1000f, vec2<u32>(45886u, 4294967295u), vec3<i32>(i32(-2147483648), i32(-2147483648), -1i), false), Struct_1(291f, vec2<u32>(36521u, 43524u), vec3<i32>(5079i, 12485i, i32(-2147483648)), true), Struct_1(564f, vec2<u32>(0u, 31717u), vec3<i32>(-11327i, 0i, 63050i), false), Struct_1(-293f, vec2<u32>(0u, 4294967295u), vec3<i32>(-16920i, 0i, -14120i), true), Struct_1(-156f, vec2<u32>(0u, 35474u), vec3<i32>(2773i, 0i, 1i), false), Struct_1(-1515f, vec2<u32>(14393u, 1u), vec3<i32>(-15774i, 46918i, 1i), true), Struct_1(319f, vec2<u32>(1u, 4294967295u), vec3<i32>(11566i, 1i, i32(-2147483648)), true));

var<private> global4: array<Struct_1, 9>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool) -> vec4<f32> {
    var var_0 = Struct_1(698f, ~vec2<u32>(firstLeadingBit(~1u), ~u_input.b.x), _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(0i, 1i), -global0.c.x, 1i), global0.c), false);
    global0 = Struct_1(-465f, _wgslsmith_div_vec2_u32(~var_0.b, u_input.d.wz), -vec3<i32>(1403i, abs(-1i), 1i) ^ -(~global0.c | ~vec3<i32>(var_0.c.x, var_0.c.x, u_input.c)), true);
    var var_1 = arg_0;
    var var_2 = firstTrailingBit(_wgslsmith_mult_u32(abs(global0.b.x), 1u));
    var_0 = global4[_wgslsmith_index_u32(firstTrailingBit(global1[_wgslsmith_index_u32(~firstTrailingBit(14845u), 4u)]), 9u)];
    return _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1195f, var_0.a, 1000f, var_0.a)) * vec4<f32>(2266f, -822f, var_0.a, var_0.a)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1728f, var_0.a, -579f, -211f), vec4<f32>(793f, var_0.a, 581f, -1094f)) * vec4<f32>(-273f, 1847f, global0.a, 410f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-302f, 540f, 639f, global0.a) - vec4<f32>(-411f, -798f, global0.a, 791f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, 509f, var_0.a, 2233f)))))));
}

fn func_2() -> bool {
    let var_0 = vec4<i32>(global0.c.x, select(~(~(-2147483647i)), global0.c.x, !global0.d), firstTrailingBit(-u_input.e << (~89675u % 32u)), firstLeadingBit(-1i)) ^ (-select(vec4<i32>(u_input.c, 0i, global0.c.x, -16827i) | vec4<i32>(global0.c.x, -1i, -27245i, 13951i), vec4<i32>(-7597i, -40117i, global0.c.x, 14524i), select(vec4<bool>(false, false, global0.d, global0.d), vec4<bool>(false, global0.d, global0.d, global0.d), false)) ^ vec4<i32>(-_wgslsmith_sub_i32(2147483647i, 10987i), countOneBits(global0.c.x >> (global1[_wgslsmith_index_u32(27853u, 4u)] % 32u)), u_input.e, _wgslsmith_add_i32(u_input.e | global0.c.x, abs(-1i))));
    global1 = array<u32, 4>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.a, global0.a, -556f, 211f), vec4<f32>(-1046f, global0.a, global0.a, global0.a))))), _wgslsmith_f_op_vec4_f32(func_3(select(true, global0.d, true))), !(!(!vec4<bool>(global0.d, global0.d, false, true))))));
    var var_2 = 56946u;
    global1 = array<u32, 4>();
    return true;
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<u32>) -> Struct_1 {
    global3 = array<Struct_1, 14>();
    var var_0 = abs(firstTrailingBit(reverseBits(1i)));
    global4 = array<Struct_1, 9>();
    let var_1 = ~1u;
    var var_2 = !select(vec2<bool>(true, true), vec2<bool>(!(global0.a > -1044f), ~u_input.e != _wgslsmith_clamp_i32(global0.c.x, global0.c.x, u_input.c)), select(select(select(vec2<bool>(false, global0.d), vec2<bool>(global0.d, global0.d), vec2<bool>(false, true)), vec2<bool>(true, false), vec2<bool>(global0.d, true)), vec2<bool>(true, global0.a < -1176f), vec2<bool>(global0.d, !global0.d)));
    return Struct_1(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_add_vec2_u32(vec2<u32>(global0.b.x, 4294967295u), global0.b), global0.c, true);
}

fn func_5(arg_0: i32, arg_1: f32, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    global1 = array<u32, 4>();
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-182f - arg_2.a), -1348f))), ~global0.b & ~vec2<u32>(_wgslsmith_div_u32(33614u, 60218u), min(45281u, arg_2.b.x)), ~arg_2.c, !(false && any(!vec2<bool>(true, global0.d))));
    global1 = array<u32, 4>();
    var var_0 = u_input.b.wz;
    var var_1 = any(!(!(!(!vec4<bool>(true, global0.d, true, global0.d)))));
    return func_4(vec2<u32>(21629u, 3412u), vec3<u32>(func_4(select(vec2<u32>(var_0.x, arg_3), countOneBits(vec2<u32>(1u, arg_2.b.x)), vec2<bool>(global0.d, false)), vec3<u32>(global1[_wgslsmith_index_u32(7338u, 4u)], 8252u, arg_3) << ((vec3<u32>(arg_2.b.x, arg_2.b.x, 3099u) ^ vec3<u32>(var_0.x, 9124u, 4294967295u)) % vec3<u32>(32u))).b.x, ~(54584u >> (~global0.b.x % 32u)), ~(~u_input.a.x) | arg_3));
}

fn func_1(arg_0: f32) -> Struct_1 {
    global4 = array<Struct_1, 9>();
    var var_0 = Struct_1(global0.a, ~(~vec2<u32>(select(60266u, 30562u, true), _wgslsmith_clamp_u32(10992u, global0.b.x, 19320u))), ~min(-reverseBits(global0.c), abs(_wgslsmith_div_vec3_i32(vec3<i32>(-84569i, global0.c.x, -5552i), vec3<i32>(u_input.e, 39855i, 0i)))), true);
    global3 = array<Struct_1, 14>();
    var_0 = func_5(2184i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1476f, var_0.a), 818f)))) * var_0.a), func_4(_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(global0.b.x, 18912u), global0.b), vec2<u32>(u_input.a.x, 5878u)) | select(vec2<u32>(4294967295u, 71302u), firstLeadingBit(vec2<u32>(u_input.b.x, var_0.b.x)), func_2()), _wgslsmith_add_vec3_u32(reverseBits(max(vec3<u32>(52604u, u_input.a.x, u_input.b.x), u_input.d.zww)), vec3<u32>(0u, global0.b.x, var_0.b.x) & ~vec3<u32>(0u, u_input.b.x, 1u))), u_input.a.x);
    global4 = array<Struct_1, 9>();
    return Struct_1(global0.a, ~(vec2<u32>(1u << (0u % 32u), var_0.b.x) ^ abs(~u_input.d.ww)), global0.c, func_2());
}

fn func_6(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = select(vec4<i32>(func_4(reverseBits(arg_1.b ^ vec2<u32>(arg_1.b.x, 46714u)), vec3<u32>(6817u, global1[_wgslsmith_index_u32(1u, 4u)], func_1(arg_1.a).b.x)).c.x, _wgslsmith_mult_i32(func_5(-14061i, global0.a, Struct_1(1000f, u_input.a, arg_2.c, true), ~global1[_wgslsmith_index_u32(arg_1.b.x, 4u)]).c.x, select(global0.c.x | -42813i, _wgslsmith_mod_i32(arg_2.c.x, arg_1.c.x), func_1(-293f).d)), max(arg_1.c.x, ~(~(-1i))), _wgslsmith_mult_i32(arg_1.c.x, -38758i)), -reverseBits(-(~vec4<i32>(arg_1.c.x, 0i, arg_1.c.x, 19202i))), _wgslsmith_div_f32(arg_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(633f)) - _wgslsmith_f_op_f32(-arg_1.a))) > _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2003f, arg_1.a)));
    var var_1 = arg_2.b.x;
    global1 = array<u32, 4>();
    var_0 = reverseBits(firstLeadingBit(countOneBits(-firstLeadingBit(vec4<i32>(-6931i, var_0.x, arg_1.c.x, var_0.x)))));
    var var_2 = func_4(abs(_wgslsmith_sub_vec2_u32(func_1(arg_1.a).b, vec2<u32>(~global0.b.x, min(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d.x, 4u)], 4u)], global0.b.x)))), _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(arg_1.b.x, arg_2.b.x), _wgslsmith_mult_u32(arg_1.b.x, u_input.b.x), global1[_wgslsmith_index_u32(abs(u_input.a.x), 4u)]), ~max(vec3<u32>(23007u, 1u, global0.b.x), u_input.b.yyw)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x & u_input.d.x, max(4294967295u, global1[_wgslsmith_index_u32(arg_2.b.x, 4u)]), _wgslsmith_mod_u32(u_input.b.x, u_input.a.x)), min(firstLeadingBit(u_input.b.wxw), vec3<u32>(1u, global0.b.x, 24815u))))).c.x;
    return func_1(_wgslsmith_f_op_f32(-arg_1.a));
}

fn func_7(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: bool, arg_3: f32) -> u32 {
    let var_0 = global0.d;
    var var_1 = global3[_wgslsmith_index_u32(~(~arg_1.b.x), 14u)];
    global2 = array<Struct_1, 13>();
    var var_2 = func_6(!var_1.d, Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(401f, arg_3))), _wgslsmith_clamp_vec2_u32(var_1.b, firstLeadingBit(vec2<u32>(4294967295u, 32424u)), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, global1[_wgslsmith_index_u32(1u, 4u)]), var_1.b)) | arg_1.b, var_1.c, func_4(vec2<u32>(arg_1.b.x, 1u), u_input.d.wwz).b.x >= ~(~0u)), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_1.b.x, global1[_wgslsmith_index_u32(func_5(arg_1.c.x, _wgslsmith_f_op_f32(-func_5(-24054i, arg_1.a, Struct_1(-481f, global0.b, vec3<i32>(32638i, 56721i, u_input.e), true), 4294967295u).a), global4[_wgslsmith_index_u32(4294967295u, 9u)], var_1.b.x).b.x, 4u)]), 14u)]);
    global4 = array<Struct_1, 9>();
    return ~var_2.b.x << (4294967295u % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.c.xy;
    let var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1037f, -915f)))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a, global0.a) * vec2<f32>(-1000f, 220f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, -1171f))))))));
    let var_2 = func_7(vec3<bool>(true, _wgslsmith_f_op_f32(-global0.a) < -121f, select(all(vec3<bool>(global0.d, true, global0.d)), true, all(vec4<bool>(false, true, true, false)))), func_6(true, func_1(_wgslsmith_f_op_f32(select(-1295f, var_1.x, false))), global2[_wgslsmith_index_u32(u_input.a.x, 13u)]), true, -545f) >> (~global1[_wgslsmith_index_u32(min(1u, firstTrailingBit(0u) >> (~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4869u, 4u)], 4u)] % 32u)), 4u)] % 32u);
    let var_3 = true;
    var var_4 = func_5(u_input.c | abs(_wgslsmith_mod_i32(_wgslsmith_add_i32(global0.c.x, global0.c.x), 1i)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_vec4_f32(func_3(global0.d)).x)), global4[_wgslsmith_index_u32(~(~u_input.b.x), 9u)], countOneBits(_wgslsmith_mult_u32(func_1(933f).b.x, 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-188f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1211f, 559f) + -988f))), u_input.b.x);
}

