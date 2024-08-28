struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: vec3<bool>,
    d: vec3<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_4, 13> = array<Struct_4, 13>(Struct_4(1112f, Struct_2(vec2<bool>(false, true), Struct_1(vec4<i32>(0i, 20052i, -58704i, 0i)), Struct_1(vec4<i32>(2147483647i, i32(-2147483648), 1i, 28718i)), Struct_1(vec4<i32>(i32(-2147483648), 54640i, 0i, 0i))), vec3<bool>(true, false, false), vec3<f32>(-610f, 218f, -1000f), Struct_2(vec2<bool>(true, true), Struct_1(vec4<i32>(-21000i, 2147483647i, 30209i, 2147483647i)), Struct_1(vec4<i32>(14749i, 1i, 4568i, -27127i)), Struct_1(vec4<i32>(0i, -20518i, 51066i, 1i)))), Struct_4(-988f, Struct_2(vec2<bool>(true, false), Struct_1(vec4<i32>(2147483647i, -10528i, 2147483647i, -13794i)), Struct_1(vec4<i32>(1i, i32(-2147483648), -1i, 1i)), Struct_1(vec4<i32>(-29869i, 30336i, -43147i, 2147483647i))), vec3<bool>(false, false, true), vec3<f32>(-107f, 791f, 425f), Struct_2(vec2<bool>(true, false), Struct_1(vec4<i32>(0i, -21242i, 1i, -41530i)), Struct_1(vec4<i32>(-26343i, 26813i, -34695i, -1i)), Struct_1(vec4<i32>(32846i, 2147483647i, 2147483647i, 2147483647i)))), Struct_4(246f, Struct_2(vec2<bool>(false, false), Struct_1(vec4<i32>(-1i, 1i, 51162i, -34958i)), Struct_1(vec4<i32>(-26720i, 9070i, 0i, -6234i)), Struct_1(vec4<i32>(-44725i, 2147483647i, -1i, i32(-2147483648)))), vec3<bool>(false, true, true), vec3<f32>(606f, 547f, 819f), Struct_2(vec2<bool>(true, false), Struct_1(vec4<i32>(-73207i, -1i, i32(-2147483648), 0i)), Struct_1(vec4<i32>(28338i, 2147483647i, -34863i, -58018i)), Struct_1(vec4<i32>(21916i, -1i, -57894i, -32501i)))), Struct_4(-266f, Struct_2(vec2<bool>(false, true), Struct_1(vec4<i32>(27816i, 10160i, 0i, 4933i)), Struct_1(vec4<i32>(22133i, -40964i, 2147483647i, 8131i)), Struct_1(vec4<i32>(-1i, 2147483647i, -1i, 13013i))), vec3<bool>(false, false, true), vec3<f32>(205f, 109f, -1000f), Struct_2(vec2<bool>(true, false), Struct_1(vec4<i32>(1i, 23117i, 2147483647i, 0i)), Struct_1(vec4<i32>(0i, 4391i, 1i, -44973i)), Struct_1(vec4<i32>(-52965i, 14219i, -24120i, -18199i)))), Struct_4(169f, Struct_2(vec2<bool>(false, false), Struct_1(vec4<i32>(-36770i, i32(-2147483648), -1i, i32(-2147483648))), Struct_1(vec4<i32>(19369i, 21811i, 2147483647i, 13553i)), Struct_1(vec4<i32>(-42565i, 8744i, 2147483647i, 24102i))), vec3<bool>(true, false, false), vec3<f32>(-1155f, -1000f, 772f), Struct_2(vec2<bool>(false, true), Struct_1(vec4<i32>(2147483647i, 1i, -1i, 23275i)), Struct_1(vec4<i32>(-8815i, -29679i, i32(-2147483648), 19639i)), Struct_1(vec4<i32>(-1i, 0i, -6435i, 5707i)))), Struct_4(224f, Struct_2(vec2<bool>(false, true), Struct_1(vec4<i32>(i32(-2147483648), -4766i, 0i, 5172i)), Struct_1(vec4<i32>(2147483647i, i32(-2147483648), -57137i, -25978i)), Struct_1(vec4<i32>(i32(-2147483648), -26685i, 1i, 1813i))), vec3<bool>(true, false, true), vec3<f32>(1174f, -934f, -1299f), Struct_2(vec2<bool>(false, true), Struct_1(vec4<i32>(1i, 0i, -1i, 0i)), Struct_1(vec4<i32>(-72137i, i32(-2147483648), 28919i, i32(-2147483648))), Struct_1(vec4<i32>(-1i, -1i, -5184i, i32(-2147483648))))), Struct_4(1609f, Struct_2(vec2<bool>(false, false), Struct_1(vec4<i32>(-1i, -6523i, -63378i, 2147483647i)), Struct_1(vec4<i32>(-1i, 0i, -2223i, -33263i)), Struct_1(vec4<i32>(0i, 26731i, -1i, 2147483647i))), vec3<bool>(true, false, false), vec3<f32>(1981f, 1809f, -552f), Struct_2(vec2<bool>(true, false), Struct_1(vec4<i32>(i32(-2147483648), -31595i, -3333i, 2698i)), Struct_1(vec4<i32>(32398i, 51549i, 36490i, 15418i)), Struct_1(vec4<i32>(55469i, i32(-2147483648), i32(-2147483648), 2147483647i)))), Struct_4(-445f, Struct_2(vec2<bool>(false, false), Struct_1(vec4<i32>(-34159i, 41867i, -12016i, -26399i)), Struct_1(vec4<i32>(7095i, 1i, -33086i, 22181i)), Struct_1(vec4<i32>(25959i, -1i, 15846i, 67289i))), vec3<bool>(true, true, true), vec3<f32>(-1451f, 887f, 210f), Struct_2(vec2<bool>(false, true), Struct_1(vec4<i32>(6291i, 42446i, -41386i, -10394i)), Struct_1(vec4<i32>(i32(-2147483648), 0i, -26823i, 1i)), Struct_1(vec4<i32>(-15015i, i32(-2147483648), 10665i, -7010i)))), Struct_4(-1000f, Struct_2(vec2<bool>(true, false), Struct_1(vec4<i32>(24624i, 2986i, 40225i, 1i)), Struct_1(vec4<i32>(-1i, 0i, -8649i, i32(-2147483648))), Struct_1(vec4<i32>(3815i, 13598i, 1i, 29751i))), vec3<bool>(true, true, false), vec3<f32>(-383f, 195f, 898f), Struct_2(vec2<bool>(true, false), Struct_1(vec4<i32>(-25277i, i32(-2147483648), 1i, -12768i)), Struct_1(vec4<i32>(3976i, 24805i, -1i, i32(-2147483648))), Struct_1(vec4<i32>(i32(-2147483648), -74782i, 2147483647i, -9723i)))), Struct_4(222f, Struct_2(vec2<bool>(true, true), Struct_1(vec4<i32>(3128i, i32(-2147483648), -4124i, 0i)), Struct_1(vec4<i32>(0i, 2794i, 2147483647i, 47910i)), Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), 0i, 0i))), vec3<bool>(true, false, false), vec3<f32>(-1236f, -1150f, 786f), Struct_2(vec2<bool>(true, true), Struct_1(vec4<i32>(1i, i32(-2147483648), -19572i, 28175i)), Struct_1(vec4<i32>(-62396i, -33917i, -9866i, 1i)), Struct_1(vec4<i32>(23921i, -43025i, -28466i, -1i)))), Struct_4(1108f, Struct_2(vec2<bool>(true, true), Struct_1(vec4<i32>(-6042i, i32(-2147483648), 0i, 0i)), Struct_1(vec4<i32>(75683i, 30650i, -4435i, 0i)), Struct_1(vec4<i32>(0i, -45154i, -30653i, -1i))), vec3<bool>(false, false, false), vec3<f32>(1647f, -1419f, 125f), Struct_2(vec2<bool>(true, false), Struct_1(vec4<i32>(32330i, 0i, -1i, 2147483647i)), Struct_1(vec4<i32>(52853i, i32(-2147483648), i32(-2147483648), i32(-2147483648))), Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), -19764i, 1i)))), Struct_4(308f, Struct_2(vec2<bool>(false, true), Struct_1(vec4<i32>(-1i, 2147483647i, 0i, -32116i)), Struct_1(vec4<i32>(1i, 1i, i32(-2147483648), 1i)), Struct_1(vec4<i32>(11404i, 2147483647i, 31100i, 0i))), vec3<bool>(true, true, true), vec3<f32>(1726f, 812f, -2294f), Struct_2(vec2<bool>(false, true), Struct_1(vec4<i32>(-2166i, i32(-2147483648), -1i, -16391i)), Struct_1(vec4<i32>(0i, 17044i, -23563i, -30438i)), Struct_1(vec4<i32>(-30370i, 2147483647i, 227i, 1i)))), Struct_4(1021f, Struct_2(vec2<bool>(true, false), Struct_1(vec4<i32>(2147483647i, 73280i, -21992i, 1816i)), Struct_1(vec4<i32>(2147483647i, -1i, 0i, 0i)), Struct_1(vec4<i32>(-47091i, -6516i, 2147483647i, 18656i))), vec3<bool>(true, true, true), vec3<f32>(-515f, 1858f, 264f), Struct_2(vec2<bool>(false, false), Struct_1(vec4<i32>(-30812i, 45416i, i32(-2147483648), 83496i)), Struct_1(vec4<i32>(15642i, i32(-2147483648), -22111i, -27126i)), Struct_1(vec4<i32>(-24868i, 1i, i32(-2147483648), 5199i)))));

var<private> global2: vec3<bool> = vec3<bool>(true, false, false);

var<private> global3: vec4<bool>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: u32, arg_2: Struct_1) -> u32 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + arg_0.x)))), 484f);
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-1065f)), _wgslsmith_f_op_f32(select(-296f, arg_0.x, global2.x)))), -2382f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, -790f)) + 1371f) * 790f)))));
    var var_1 = Struct_1(u_input.a ^ (-min(vec4<i32>(1i, u_input.b.x, u_input.a.x, 44920i), arg_2.a) | ~u_input.a));
    var var_2 = u_input.c.zy;
    var var_3 = 720f;
    return ~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d, 11864u, var_2.x, arg_1), vec4<u32>(1u, arg_1, 7820u, 2197u)), _wgslsmith_add_vec4_u32(vec4<u32>(13487u, arg_1, u_input.c.x, u_input.c.x), ~vec4<u32>(arg_1, 4294967295u, 0u, 33608u))), ~52168u);
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: f32, arg_3: Struct_3) -> u32 {
    let var_0 = Struct_2(select(select(select(global3.yx, vec2<bool>(global3.x, global2.x), select(arg_1.c.zy, vec2<bool>(global3.x, arg_1.e.a.x), global2.zz)), select(vec2<bool>(global2.x, global2.x), global2.zy, !global3.xx), true), !vec2<bool>(1u >= arg_0, false), global3.x), Struct_1(arg_1.e.b.a), arg_1.e.d, Struct_1(arg_1.e.b.a));
    let var_1 = ~vec2<i32>(0i, -2147483647i);
    var var_2 = arg_3;
    var var_3 = max(reverseBits(_wgslsmith_div_u32(~u_input.d, 4294967295u)), u_input.c.x) | _wgslsmith_dot_vec4_u32(vec4<u32>(~countOneBits(9004u), _wgslsmith_sub_u32(~1u, countOneBits(34165u)), ~var_2.d ^ (var_2.b << (4294967295u % 32u)), arg_0), max(vec4<u32>(arg_3.c << (u_input.d % 32u), 1u, arg_0, _wgslsmith_clamp_u32(4294967295u, arg_0, var_2.a)), min(vec4<u32>(54932u, var_2.d, arg_3.c, 0u), vec4<u32>(var_2.d, u_input.c.x, 46885u, 1u)) | (vec4<u32>(arg_3.c, 21226u, var_2.d, var_2.b) | vec4<u32>(0u, var_2.a, 0u, 0u))));
    var var_4 = all(vec4<bool>(any(!(!vec3<bool>(global2.x, false, false))), true, !var_0.a.x, any(select(select(vec4<bool>(true, false, global2.x, global3.x), vec4<bool>(true, false, global2.x, global2.x), global2.x), vec4<bool>(false, arg_1.b.a.x, false, false), select(vec4<bool>(global2.x, global3.x, false, arg_1.e.a.x), vec4<bool>(false, false, true, arg_1.b.a.x), vec4<bool>(false, false, var_0.a.x, false))))));
    return firstLeadingBit(39492u);
}

fn func_5(arg_0: vec3<u32>, arg_1: vec2<f32>, arg_2: u32) -> vec4<bool> {
    global3 = vec4<bool>(any(select(vec4<bool>(true, true, global2.x, any(vec2<bool>(true, global2.x))), select(!vec4<bool>(global3.x, false, global3.x, true), !vec4<bool>(true, global2.x, global3.x, global2.x), true), true)), true, all(!vec4<bool>(!global3.x, true, global2.x && global2.x, false)), global3.x);
    let var_0 = Struct_3(_wgslsmith_mult_u32(4294967295u, ~arg_2) >> (u_input.c.x % 32u), 37024u, 0u, abs(_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_2, 1u, 26489u), vec3<u32>(select(arg_0.x, arg_0.x, global3.x), ~4496u, arg_2))));
    var var_1 = Struct_1(countOneBits(~u_input.a));
    let var_2 = arg_2;
    var var_3 = 1i;
    return !select(select(select(select(vec4<bool>(global3.x, global3.x, global2.x, false), vec4<bool>(false, global2.x, global3.x, global3.x), true), select(vec4<bool>(global3.x, false, global3.x, global2.x), vec4<bool>(false, global3.x, true, false), false), true), !select(vec4<bool>(global3.x, global3.x, global2.x, false), vec4<bool>(global2.x, true, false, global3.x), vec4<bool>(global2.x, true, global2.x, global2.x)), !vec4<bool>(false, global2.x, false, global2.x)), !select(select(vec4<bool>(true, global3.x, global2.x, global3.x), vec4<bool>(global2.x, false, global3.x, global3.x), global3.x), !vec4<bool>(global3.x, false, true, global2.x), global3.x), !all(global3.wx));
}

fn func_2(arg_0: u32) -> Struct_1 {
    global3 = func_5(vec3<u32>(countOneBits(178u), func_4(~8661u, Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -448f), Struct_2(vec2<bool>(true, global3.x), Struct_1(vec4<i32>(u_input.b.x, 36095i, u_input.a.x, 0i)), Struct_1(u_input.a), Struct_1(vec4<i32>(-49726i, -1i, u_input.a.x, -2147483647i))), !global3.xxy, _wgslsmith_f_op_vec3_f32(vec3<f32>(-472f, 159f, 760f) + vec3<f32>(1622f, 541f, -235f)), Struct_2(vec2<bool>(global2.x, global2.x), Struct_1(vec4<i32>(u_input.a.x, u_input.b.x, u_input.a.x, 47111i)), Struct_1(vec4<i32>(-9016i, u_input.b.x, 1i, u_input.a.x)), Struct_1(vec4<i32>(u_input.a.x, 26834i, -26998i, -2147483647i)))), _wgslsmith_f_op_f32(ceil(-450f)), Struct_3(~1u, _wgslsmith_mult_u32(1u, 61726u), func_3(vec4<f32>(-761f, 871f, -1000f, -665f), arg_0, Struct_1(u_input.a)), 17118u)), arg_0), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(trunc(596f))))), _wgslsmith_sub_u32(16626u, _wgslsmith_sub_u32(_wgslsmith_sub_u32(~4294967295u, firstLeadingBit(arg_0)), 89018u)));
    let var_0 = global1[_wgslsmith_index_u32(u_input.d, 13u)];
    var var_1 = global1[_wgslsmith_index_u32(arg_0, 13u)];
    let var_2 = reverseBits(32833u);
    var var_3 = var_1.b.b;
    return var_0.b.d;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1) -> Struct_3 {
    global0 = 1f;
    var var_0 = firstLeadingBit(abs(~u_input.a.yyx));
    let var_1 = 4219i;
    let var_2 = min(~(~u_input.c.x), 4294967295u);
    global1 = array<Struct_4, 13>();
    return Struct_3(~22792u, u_input.d << (func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1212f, -1064f, 936f, 486f)) * _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 418f, -244f, 187f), vec4<f32>(1629f, -248f, -1077f, 904f))), 10278u, func_2(u_input.d)) % 32u), u_input.d, countOneBits(_wgslsmith_mod_u32(~(~var_2), u_input.c.x)));
}

fn func_1() -> Struct_3 {
    let var_0 = _wgslsmith_add_u32(u_input.c.x, ((select(u_input.d, 78561u, global2.x) >> (firstLeadingBit(u_input.c.x) % 32u)) & _wgslsmith_clamp_u32(~u_input.c.x, 1u, 32212u)) << (49083u % 32u));
    global0 = _wgslsmith_f_op_f32(235f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-560f - -1695f)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1246f, 955f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1180f, -556f)))));
    var var_1 = !global3.xwz;
    var var_2 = 4294967295u;
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1292f, 443f, _wgslsmith_f_op_f32(max(1071f, -1524f))) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(466f, 2080f, -1193f, 1000f), _wgslsmith_div_vec4_f32(vec4<f32>(-1641f, -1222f, 1567f, -984f), vec4<f32>(-144f, 711f, 1105f, -1426f))))), vec4<f32>(-1000f, -482f, 779f, _wgslsmith_f_op_f32(ceil(-1509f))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -239f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-423f, -193f)) + -980f), 560f, 462f));
    return func_6(Struct_1(_wgslsmith_add_vec4_i32(u_input.a, ~u_input.a)), func_2(1u));
}

fn func_7(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_4) -> f32 {
    let var_0 = func_2(u_input.d);
    var var_1 = arg_0;
    let var_2 = arg_1;
    global0 = _wgslsmith_f_op_f32(arg_2.d.x + _wgslsmith_f_op_f32(max(arg_2.d.x, arg_2.a)));
    global3 = select(vec4<bool>(true, false, any(global2.yx), !global2.x), select(func_5(select(min(u_input.c, u_input.c), u_input.c, arg_2.c), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(arg_2.d.xy)) + _wgslsmith_f_op_vec2_f32(select(arg_2.d.yy, arg_2.d.xy, arg_1.a.x))), ~abs(4294967295u)), !select(!vec4<bool>(arg_1.a.x, true, true, global2.x), select(vec4<bool>(false, global3.x, global3.x, arg_2.e.a.x), vec4<bool>(true, global2.x, global2.x, false), vec4<bool>(false, true, arg_1.a.x, global3.x)), false), select(select(!vec4<bool>(true, arg_1.a.x, var_2.a.x, var_2.a.x), func_5(vec3<u32>(var_1.a, var_1.b, arg_0.b), vec2<f32>(arg_2.a, arg_2.a), arg_0.a), true), vec4<bool>(arg_2.e.a.x, !arg_2.c.x, !var_2.a.x, u_input.d < 113635u), !select(vec4<bool>(true, false, global3.x, false), vec4<bool>(arg_1.a.x, true, global3.x, true), true))), select(vec4<bool>(_wgslsmith_f_op_f32(max(arg_2.a, -692f)) < _wgslsmith_f_op_f32(select(arg_2.a, 746f, global2.x)), true, false, true), !(!func_5(u_input.c, arg_2.d.yz, 4294967295u)), _wgslsmith_f_op_f32(sign(-2806f)) < -516f));
    return arg_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global3.yyy;
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -883f);
    var var_1 = 0i;
    var var_2 = Struct_4(_wgslsmith_f_op_f32(func_7(func_1(), Struct_2(select(vec2<bool>(true, true), select(vec2<bool>(global3.x, global3.x), global3.xx, global2.yy), true), func_2(~u_input.c.x), func_2(~u_input.c.x), func_2(_wgslsmith_add_u32(u_input.c.x, 1u))), Struct_4(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(1046f + -892f)), Struct_2(vec2<bool>(true, false), Struct_1(u_input.a), func_2(u_input.d), Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, -1i))), !vec3<bool>(global3.x, global3.x, false), vec3<f32>(_wgslsmith_f_op_f32(floor(565f)), _wgslsmith_f_op_f32(1801f + 299f), _wgslsmith_f_op_f32(1000f * -1716f)), Struct_2(vec2<bool>(global2.x, global2.x), func_2(u_input.c.x), Struct_1(u_input.a), Struct_1(vec4<i32>(u_input.a.x, u_input.b.x, 1i, 26568i)))))), Struct_2(!global3.zy, Struct_1(u_input.a ^ u_input.a), Struct_1(firstTrailingBit(reverseBits(u_input.a))), func_2(~u_input.d)), select(global3.zwy, global3.xzz, !global2.x), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1627f), -409f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-366f * -2140f), _wgslsmith_f_op_f32(max(-542f, 1978f)), true))))), Struct_2(global3.wy, func_2(~(u_input.c.x << (u_input.d % 32u))), Struct_1(u_input.a), func_2(_wgslsmith_sub_u32(~59066u, u_input.d))));
    var var_3 = Struct_3(0u, func_3(vec4<f32>(-394f, var_2.a, _wgslsmith_f_op_f32(max(403f, _wgslsmith_f_op_f32(-var_2.d.x))), _wgslsmith_f_op_f32(abs(-441f))), u_input.c.x, func_2(~(u_input.c.x | u_input.c.x))), ~u_input.c.x, u_input.d);
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -474f), 0i);
}

