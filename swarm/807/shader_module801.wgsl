struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec2<u32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 27> = array<Struct_4, 27>(Struct_4(vec3<u32>(29074u, 4294967295u, 0u), Struct_1(1000f), vec2<u32>(9537u, 0u), vec3<u32>(1u, 4294967295u, 114985u), vec4<i32>(0i, i32(-2147483648), -1492i, -34468i)), Struct_4(vec3<u32>(19041u, 16546u, 72670u), Struct_1(-524f), vec2<u32>(0u, 4294967295u), vec3<u32>(0u, 87115u, 25909u), vec4<i32>(1254i, 1i, -46128i, 55492i)), Struct_4(vec3<u32>(15628u, 57012u, 1u), Struct_1(472f), vec2<u32>(1u, 1u), vec3<u32>(1u, 26153u, 8613u), vec4<i32>(1i, 1i, -44438i, -1i)), Struct_4(vec3<u32>(13382u, 0u, 0u), Struct_1(1000f), vec2<u32>(0u, 1u), vec3<u32>(54026u, 23148u, 1720u), vec4<i32>(2147483647i, -1i, -15197i, 40209i)), Struct_4(vec3<u32>(0u, 22024u, 4294967295u), Struct_1(250f), vec2<u32>(1u, 68316u), vec3<u32>(18799u, 3593u, 4294967295u), vec4<i32>(-8003i, -13454i, -33915i, 0i)), Struct_4(vec3<u32>(1u, 61554u, 21230u), Struct_1(172f), vec2<u32>(0u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec4<i32>(-1i, -8062i, -27190i, -36134i)), Struct_4(vec3<u32>(1u, 4294967295u, 4294967295u), Struct_1(-154f), vec2<u32>(4294967295u, 29135u), vec3<u32>(4294967295u, 0u, 51765u), vec4<i32>(16948i, 43305i, 0i, 35720i)), Struct_4(vec3<u32>(0u, 34416u, 47403u), Struct_1(1000f), vec2<u32>(24645u, 40881u), vec3<u32>(5382u, 72344u, 7065u), vec4<i32>(-1i, -16915i, -14007i, 9587i)), Struct_4(vec3<u32>(0u, 9114u, 0u), Struct_1(297f), vec2<u32>(15577u, 10513u), vec3<u32>(66678u, 4294967295u, 158u), vec4<i32>(i32(-2147483648), -6458i, -1i, i32(-2147483648))), Struct_4(vec3<u32>(0u, 2764u, 116149u), Struct_1(849f), vec2<u32>(0u, 92021u), vec3<u32>(34338u, 1u, 1u), vec4<i32>(1i, 32389i, 7984i, 44916i)), Struct_4(vec3<u32>(4294967295u, 0u, 67098u), Struct_1(-611f), vec2<u32>(31380u, 66006u), vec3<u32>(4294967295u, 4294967295u, 0u), vec4<i32>(2147483647i, 2147483647i, 0i, -1i)), Struct_4(vec3<u32>(27838u, 4294967295u, 62239u), Struct_1(1655f), vec2<u32>(16297u, 10847u), vec3<u32>(0u, 4294967295u, 4294967295u), vec4<i32>(-1i, 1i, 1i, -16517i)), Struct_4(vec3<u32>(60044u, 40179u, 42937u), Struct_1(921f), vec2<u32>(0u, 1u), vec3<u32>(4294967295u, 1u, 81934u), vec4<i32>(-1i, i32(-2147483648), i32(-2147483648), -1i)), Struct_4(vec3<u32>(4294967295u, 29063u, 4294967295u), Struct_1(848f), vec2<u32>(1u, 0u), vec3<u32>(29634u, 93912u, 4294967295u), vec4<i32>(-1i, 36842i, 40492i, 1i)), Struct_4(vec3<u32>(51469u, 12475u, 1u), Struct_1(-1005f), vec2<u32>(4292u, 27651u), vec3<u32>(4294967295u, 1u, 69139u), vec4<i32>(21216i, 1i, -26813i, 17354i)), Struct_4(vec3<u32>(4294967295u, 1u, 52504u), Struct_1(917f), vec2<u32>(0u, 1u), vec3<u32>(28988u, 0u, 4294967295u), vec4<i32>(1i, 2147483647i, 58887i, 106358i)), Struct_4(vec3<u32>(4294967295u, 1u, 5286u), Struct_1(435f), vec2<u32>(1u, 0u), vec3<u32>(64541u, 1u, 66117u), vec4<i32>(-8837i, i32(-2147483648), 37516i, -75194i)), Struct_4(vec3<u32>(1u, 30680u, 0u), Struct_1(-871f), vec2<u32>(32615u, 44320u), vec3<u32>(4294967295u, 46716u, 22565u), vec4<i32>(1i, -9067i, 15889i, 1i)), Struct_4(vec3<u32>(1u, 24617u, 79778u), Struct_1(326f), vec2<u32>(1u, 4294967295u), vec3<u32>(12439u, 71369u, 29803u), vec4<i32>(-26945i, 335i, -1i, 2147483647i)), Struct_4(vec3<u32>(778u, 4294967295u, 70423u), Struct_1(351f), vec2<u32>(20660u, 4294967295u), vec3<u32>(54426u, 21976u, 6900u), vec4<i32>(-52579i, -57485i, 0i, 1i)), Struct_4(vec3<u32>(10553u, 1u, 1u), Struct_1(266f), vec2<u32>(77471u, 1u), vec3<u32>(118940u, 35055u, 0u), vec4<i32>(-12848i, 39647i, 0i, 4716i)), Struct_4(vec3<u32>(1u, 49621u, 20250u), Struct_1(-377f), vec2<u32>(19714u, 1u), vec3<u32>(4294967295u, 0u, 1u), vec4<i32>(-11245i, -1i, -5238i, 61017i)), Struct_4(vec3<u32>(27689u, 14393u, 16785u), Struct_1(-168f), vec2<u32>(1190u, 1u), vec3<u32>(32950u, 29095u, 4438u), vec4<i32>(2147483647i, i32(-2147483648), -16424i, i32(-2147483648))), Struct_4(vec3<u32>(112183u, 1u, 1u), Struct_1(-840f), vec2<u32>(1u, 4294967295u), vec3<u32>(0u, 113350u, 38012u), vec4<i32>(37750i, -1586i, 0i, 2147483647i)), Struct_4(vec3<u32>(68837u, 0u, 0u), Struct_1(-730f), vec2<u32>(10816u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 35300u), vec4<i32>(96567i, -17579i, -10110i, 31285i)), Struct_4(vec3<u32>(16697u, 4294967295u, 1u), Struct_1(193f), vec2<u32>(1u, 1u), vec3<u32>(1u, 24191u, 15491u), vec4<i32>(-13297i, 17170i, 16897i, i32(-2147483648))), Struct_4(vec3<u32>(1u, 4294967295u, 2877u), Struct_1(-867f), vec2<u32>(1u, 61776u), vec3<u32>(1u, 74062u, 16010u), vec4<i32>(-41372i, 1840i, 8624i, -53955i)));

var<private> global1: vec2<f32> = vec2<f32>(142f, -557f);

var<private> global2: array<u32, 1> = array<u32, 1>(17867u);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: f32) -> i32 {
    var var_0 = vec4<u32>(1u, _wgslsmith_div_u32(arg_2.x, _wgslsmith_sub_u32(_wgslsmith_div_u32(abs(351u), _wgslsmith_add_u32(u_input.a, arg_2.x)), _wgslsmith_sub_u32(min(arg_1.b, 1u), 32249u))), ~(~(~(~u_input.a))), arg_2.x);
    let var_1 = Struct_3(Struct_2(arg_1.a, _wgslsmith_mod_u32(~0u, _wgslsmith_add_u32(28950u, _wgslsmith_mult_u32(112447u, arg_1.b)))), ((firstTrailingBit(4294967295u) << (_wgslsmith_mult_u32(arg_1.b, var_0.x) % 32u)) & abs(~u_input.a)) >> (~max(u_input.a, reverseBits(0u)) % 32u), vec2<u32>(_wgslsmith_add_u32(countOneBits(263u), var_0.x), arg_2.x));
    var_0 = arg_2;
    global0 = array<Struct_4, 27>();
    global1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(arg_0.x, arg_3, true)))))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -506f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(316f * var_1.a.a.a))))), _wgslsmith_div_f32(arg_1.a.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-2221f, -962f)) * 1f), 600f))));
    return -70201i;
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_dot_vec2_i32(reverseBits(_wgslsmith_clamp_vec2_i32(min(~vec2<i32>(21636i, 10344i), vec2<i32>(1i, 1i)), vec2<i32>(-1i) * -vec2<i32>(-2147483647i, 27461i), abs(-vec2<i32>(4393i, -11975i)))), vec2<i32>(~10376i, 0i));
    return _wgslsmith_clamp_i32(func_3(vec3<f32>(-1180f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global1.x, 248f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-558f * -680f) + global1.x)), Struct_2(Struct_1(231f), u_input.a), _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, 0u, global2[_wgslsmith_index_u32(0u, 1u)]), vec4<u32>(4294967295u, 27220u, 1u, 4294967295u)), _wgslsmith_add_vec4_u32(vec4<u32>(7319u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(28095u, 1u)], 1u)], u_input.a, u_input.a), vec4<u32>(3124u, global2[_wgslsmith_index_u32(12931u, 1u)], u_input.a, 4294967295u)), ~vec4<u32>(u_input.a, global2[_wgslsmith_index_u32(70197u, 1u)], u_input.a, global2[_wgslsmith_index_u32(1u, 1u)])), ~vec4<u32>(4294967295u, 4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 1u)], 1u)], u_input.a) >> ((vec4<u32>(21193u, 4294967295u, global2[_wgslsmith_index_u32(u_input.a, 1u)], u_input.a) >> (vec4<u32>(global2[_wgslsmith_index_u32(u_input.a, 1u)], u_input.a, 11529u, 0u) % vec4<u32>(32u))) % vec4<u32>(32u))), global1.x), -25532i, -(~(-47513i << (_wgslsmith_clamp_u32(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 1u)], 1u)], 21034u) % 32u))));
}

fn func_4(arg_0: vec4<i32>, arg_1: u32) -> Struct_4 {
    global0 = array<Struct_4, 27>();
    let var_0 = 2147483647i;
    let var_1 = Struct_3(Struct_2(Struct_1(-150f), 28947u >> ((_wgslsmith_mult_u32(u_input.a, 1u) >> (~21731u % 32u)) % 32u)), 57331u & countOneBits(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(14647u, 1u)], 1u)], 0u, 4294967295u, 0u), vec4<u32>(1u, arg_1, global2[_wgslsmith_index_u32(arg_1, 1u)], 4294967295u)), ~37314u)), max(firstLeadingBit(countOneBits(~vec2<u32>(12072u, 36906u))), select(countOneBits(~vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(22670u, 1u)])), ~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(global2[_wgslsmith_index_u32(4294967295u, 1u)], 4294967295u)), !any(vec2<bool>(true, true)))));
    global0 = array<Struct_4, 27>();
    let var_2 = true;
    return global0[_wgslsmith_index_u32(max(~(~37790u), reverseBits(_wgslsmith_dot_vec2_u32(var_1.c, reverseBits(vec2<u32>(var_1.c.x, var_1.a.b))))), 27u)];
}

fn func_1(arg_0: u32, arg_1: Struct_3) -> i32 {
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-377f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, 827f) * vec2<f32>(arg_1.a.a.a, arg_1.a.a.a)))))));
    var var_0 = func_4(abs(vec4<i32>(-2147483647i, _wgslsmith_div_i32(~(-17709i), ~32657i), func_2(), ~(-6548i) << (abs(u_input.a) % 32u))), ~(firstLeadingBit(~1u) << (~4294967295u % 32u)));
    var var_1 = global2[_wgslsmith_index_u32(~(~8093u), 1u)];
    var var_2 = global1.x;
    let var_3 = Struct_3(Struct_2(func_4(vec4<i32>(var_0.e.x, var_0.e.x, ~(-27219i), -2371i | var_0.e.x), 1u).b, reverseBits(var_0.a.x ^ _wgslsmith_mod_u32(arg_1.a.b, var_0.c.x))), 42416u, abs(countOneBits(_wgslsmith_mult_vec2_u32(vec2<u32>(71978u, 4294967295u), max(var_0.d.zz, vec2<u32>(var_0.d.x, var_0.a.x))))));
    return _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, _wgslsmith_div_i32(_wgslsmith_mult_i32(1i, 1i), 1i | var_0.e.x), 1i, _wgslsmith_mult_i32(var_0.e.x, var_0.e.x)), _wgslsmith_clamp_vec4_i32(~(~vec4<i32>(var_0.e.x, -1i, 1i, -8703i)), _wgslsmith_clamp_vec4_i32(max(var_0.e, var_0.e), var_0.e, var_0.e ^ vec4<i32>(var_0.e.x, var_0.e.x, -25551i, 0i)), vec4<i32>(abs(-23774i), max(0i, -18858i), _wgslsmith_mult_i32(-2147483647i, var_0.e.x), _wgslsmith_dot_vec4_i32(var_0.e, var_0.e)))), var_0.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a, _wgslsmith_add_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(-1i, 1i), countOneBits(-2147483647i)), -func_1(4294967295u, Struct_3(Struct_2(Struct_1(global1.x), 1u), global2[_wgslsmith_index_u32(1u, 1u)], vec2<u32>(global2[_wgslsmith_index_u32(0u, 1u)], 0u))))), _wgslsmith_dot_vec4_u32(~(~_wgslsmith_div_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(u_input.a, 1u)], u_input.a, global2[_wgslsmith_index_u32(62218u, 1u)], 62337u), vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 1u)], u_input.a, 14231u, 31627u))), ~vec4<u32>(max(27598u, 53099u), ~0u, _wgslsmith_add_u32(23933u, u_input.a), 0u)), ~(-max(firstLeadingBit(-6177i), -12515i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global1.x), 365f) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x))))) * _wgslsmith_div_vec2_f32(vec2<f32>(global1.x, _wgslsmith_f_op_f32(exp2(global1.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(741f, 605f), vec2<f32>(global1.x, -908f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-865f, 424f))))));
}

