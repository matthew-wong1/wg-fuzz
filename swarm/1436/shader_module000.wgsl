struct Struct_1 {
    a: vec2<i32>,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec2<i32>(i32(-2147483648), -1i), i32(-2147483648)), Struct_1(vec2<i32>(19641i, -1i), -17052i), Struct_1(vec2<i32>(-44650i, i32(-2147483648)), 0i), Struct_1(vec2<i32>(99056i, 29414i), -26489i), Struct_1(vec2<i32>(6392i, 0i), 0i), Struct_1(vec2<i32>(-29506i, 8816i), i32(-2147483648)), Struct_1(vec2<i32>(i32(-2147483648), -14154i), 1i), Struct_1(vec2<i32>(-2262i, -1i), -1i), Struct_1(vec2<i32>(60815i, -10842i), 0i));

var<private> global1: array<bool, 5> = array<bool, 5>(true, false, true, true, false);

var<private> global2: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec2<i32>(0i, 26008i), 2147483647i), Struct_1(vec2<i32>(-47408i, -25939i), 13761i), Struct_1(vec2<i32>(1i, 66431i), 0i), Struct_1(vec2<i32>(2147483647i, 0i), i32(-2147483648)), Struct_1(vec2<i32>(2147483647i, -46926i), -1i), Struct_1(vec2<i32>(11478i, -9323i), -12462i), Struct_1(vec2<i32>(i32(-2147483648), -11670i), 37767i), Struct_1(vec2<i32>(14454i, i32(-2147483648)), -1i), Struct_1(vec2<i32>(2147483647i, 0i), 871i), Struct_1(vec2<i32>(-16102i, 0i), 49858i), Struct_1(vec2<i32>(2147483647i, -31082i), 0i), Struct_1(vec2<i32>(31840i, 1i), -1i), Struct_1(vec2<i32>(2147483647i, -1i), -54669i), Struct_1(vec2<i32>(42287i, 0i), 2147483647i), Struct_1(vec2<i32>(-7971i, 45528i), -26674i), Struct_1(vec2<i32>(1i, -7421i), i32(-2147483648)), Struct_1(vec2<i32>(3002i, -1i), 31339i), Struct_1(vec2<i32>(-17386i, 1i), 6457i));

var<private> global3: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec2<i32>(-13957i, 2147483647i), 0i), Struct_1(vec2<i32>(1i, -1i), -25360i), Struct_1(vec2<i32>(24916i, -1i), i32(-2147483648)), Struct_1(vec2<i32>(1i, -24408i), 14013i), Struct_1(vec2<i32>(6960i, 28896i), 18741i), Struct_1(vec2<i32>(2147483647i, 26797i), 1i), Struct_1(vec2<i32>(-6104i, -16987i), -1i), Struct_1(vec2<i32>(-56252i, 25021i), -9599i), Struct_1(vec2<i32>(-1i, i32(-2147483648)), 1i), Struct_1(vec2<i32>(5949i, i32(-2147483648)), -43012i), Struct_1(vec2<i32>(0i, -1i), 2147483647i), Struct_1(vec2<i32>(i32(-2147483648), 1i), 40664i), Struct_1(vec2<i32>(1766i, 2147483647i), 1i), Struct_1(vec2<i32>(1i, 28294i), -8707i), Struct_1(vec2<i32>(-8299i, 16942i), 2147483647i), Struct_1(vec2<i32>(91926i, 1i), 7340i), Struct_1(vec2<i32>(0i, 1i), 2147483647i), Struct_1(vec2<i32>(1i, 1i), i32(-2147483648)), Struct_1(vec2<i32>(6733i, 0i), 36585i), Struct_1(vec2<i32>(-20206i, -44517i), 0i), Struct_1(vec2<i32>(-34352i, 58357i), -55703i), Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), 5309i), Struct_1(vec2<i32>(i32(-2147483648), -1i), -42624i), Struct_1(vec2<i32>(-3706i, 25370i), i32(-2147483648)), Struct_1(vec2<i32>(-35391i, 0i), -32574i), Struct_1(vec2<i32>(-71752i, 2147483647i), 608i), Struct_1(vec2<i32>(27465i, -13173i), -23368i), Struct_1(vec2<i32>(-1407i, -15979i), 24799i), Struct_1(vec2<i32>(28717i, 37328i), 14299i), Struct_1(vec2<i32>(-27831i, 2147483647i), 2147483647i), Struct_1(vec2<i32>(2147483647i, 0i), -1i), Struct_1(vec2<i32>(-16324i, -44418i), 2147483647i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: u32, arg_1: vec4<f32>, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = 1i;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-arg_1.yyy)))) * _wgslsmith_f_op_vec3_f32(arg_1.xxw - arg_1.zxw));
    global3 = array<Struct_1, 32>();
    let var_2 = firstTrailingBit(vec4<i32>(var_0, -12668i, 0i, var_0));
    var var_3 = vec3<bool>(var_0 <= var_0, !global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~arg_2.x, _wgslsmith_mult_u32(44028u, 37099u) & _wgslsmith_add_u32(u_input.a.x, arg_2.x)), 5u)], _wgslsmith_f_op_f32(221f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(673f - arg_1.x))) >= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(413f)))));
    return Struct_1(-vec2<i32>(var_2.x >> (1u % 32u), _wgslsmith_mult_i32(var_0, -17806i)) << (max(arg_2, arg_2) % vec2<u32>(32u)), countOneBits(~var_2.x));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec3<i32>, arg_3: i32) -> Struct_1 {
    var var_0 = any(!(!select(vec3<bool>(true, false, false), select(vec3<bool>(false, global1[_wgslsmith_index_u32(1u, 5u)], false), vec3<bool>(global1[_wgslsmith_index_u32(24282u, 5u)], global1[_wgslsmith_index_u32(u_input.a.x, 5u)], global1[_wgslsmith_index_u32(u_input.a.x, 5u)]), vec3<bool>(true, false, false)), select(vec3<bool>(global1[_wgslsmith_index_u32(64262u, 5u)], global1[_wgslsmith_index_u32(51766u, 5u)], false), vec3<bool>(true, global1[_wgslsmith_index_u32(0u, 5u)], false), true))));
    global2 = array<Struct_1, 18>();
    let var_1 = vec2<bool>(!(!(!(false || global1[_wgslsmith_index_u32(80608u, 5u)]))), global1[_wgslsmith_index_u32(u_input.b, 5u)]);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1054f, -969f, -260f, -629f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 946f, 1997f, 745f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1047f, 236f, 812f, -1799f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(282f, 829f, 818f, 492f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(556f, -588f, 1352f, -1000f) + vec4<f32>(1000f, -960f, 1542f, 836f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1486f, -911f, 1057f, -710f)))))));
    var var_3 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.x + 1617f))), _wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(f32(-1f) * -503f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -942f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(step(-308f, var_2.x))))) * var_2)));
    return Struct_1(arg_2.xz, countOneBits(_wgslsmith_dot_vec3_i32(~arg_1, arg_1 | (vec3<i32>(arg_1.x, -1i, arg_0.a.x) & arg_2))));
}

fn func_4(arg_0: Struct_1) -> vec2<i32> {
    global2 = array<Struct_1, 18>();
    global1 = array<bool, 5>();
    global1 = array<bool, 5>();
    global0 = array<Struct_1, 9>();
    global0 = array<Struct_1, 9>();
    return max(vec2<i32>(~reverseBits(arg_0.b), -func_3(global3[_wgslsmith_index_u32(u_input.b, 32u)], vec3<i32>(arg_0.a.x, arg_0.a.x, arg_0.b), vec3<i32>(arg_0.b, -5782i, arg_0.a.x), arg_0.a.x).b) & countOneBits(_wgslsmith_sub_vec2_i32(arg_0.a, arg_0.a) >> (u_input.a % vec2<u32>(32u))), vec2<i32>(arg_0.b >> (~(u_input.b >> (u_input.a.x % 32u)) % 32u), ~(func_3(Struct_1(vec2<i32>(-24036i, arg_0.b), 1i), vec3<i32>(arg_0.b, -1i, arg_0.b), vec3<i32>(arg_0.b, -2147483647i, arg_0.a.x), 1i).a.x >> (u_input.b % 32u))));
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: u32, arg_3: vec3<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(arg_3, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_3) - arg_3))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1349f, arg_3.x, arg_3.x)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(972f, arg_3.x, arg_3.x), vec3<f32>(arg_3.x, arg_3.x, -700f)))))))));
    global0 = array<Struct_1, 9>();
    var var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, 805f, arg_3.x, var_0.x)))))));
    var var_2 = func_3(Struct_1(_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-25863i, 1307i), vec2<i32>(0i, arg_1.a.x)), abs(vec2<i32>(-36544i, -2147483647i))) << (~vec2<u32>(u_input.b, 1u) % vec2<u32>(32u)), -40482i), ~countOneBits(select(vec3<i32>(arg_1.a.x, arg_1.a.x, arg_1.b), ~vec3<i32>(arg_1.a.x, arg_1.b, 399i), select(vec3<bool>(false, false, true), vec3<bool>(arg_0, arg_0, global1[_wgslsmith_index_u32(0u, 5u)]), vec3<bool>(false, global1[_wgslsmith_index_u32(0u, 5u)], false)))), vec3<i32>(11970i, _wgslsmith_mult_i32(~(~arg_1.b), _wgslsmith_dot_vec2_i32(max(vec2<i32>(arg_1.a.x, 9102i), arg_1.a), vec2<i32>(5827i, 2147483647i))), ~33659i), ~abs(-2147483647i));
    let var_3 = arg_1;
    return Struct_1(var_3.a, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, var_2.b) | vec2<i32>(25594i, 2147483647i), var_2.a) & 2147483647i, _wgslsmith_div_i32(func_3(func_3(global0[_wgslsmith_index_u32(u_input.a.x, 9u)], vec3<i32>(var_3.a.x, var_3.b, -2147483647i), vec3<i32>(0i, arg_1.a.x, -59350i), arg_1.b), firstTrailingBit(vec3<i32>(38116i, var_3.a.x, -1i)), -vec3<i32>(var_2.b, arg_1.b, arg_1.a.x), func_3(var_3, vec3<i32>(var_3.a.x, -17329i, 2147483647i), vec3<i32>(1i, arg_1.b, -36011i), var_3.a.x).b).b, max(-var_3.a.x, var_2.b))));
}

fn func_1() -> Struct_1 {
    global2 = array<Struct_1, 18>();
    var var_0 = global1[_wgslsmith_index_u32(u_input.a.x, 5u)];
    let var_1 = true;
    let var_2 = _wgslsmith_add_i32(_wgslsmith_add_i32(_wgslsmith_sub_i32(26403i >> (u_input.a.x % 32u), ~0i), -2147483647i), 45579i) ^ _wgslsmith_mod_i32(16554i, ~_wgslsmith_mod_i32(_wgslsmith_mult_i32(1i, 2147483647i), 1i));
    let var_3 = ~20091u | ~u_input.a.x;
    return func_5(false, Struct_1(func_4(func_3(func_2(31124u, vec4<f32>(-1051f, -600f, 1242f, 1084f), vec2<u32>(31067u, u_input.b)), -vec3<i32>(var_2, 0i, 1i), vec3<i32>(var_2, var_2, -21201i), -1i)), -(~var_2 & var_2)), u_input.a.x, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, -1064f, 956f))), vec3<f32>(905f, -544f, -1300f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-465f, 963f, 2483f) - vec3<f32>(-472f, -1202f, 2252f)))))));
}

fn func_6(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: u32) -> f32 {
    var var_0 = arg_0.b;
    var var_1 = global3[_wgslsmith_index_u32(0u, 32u)];
    global0 = array<Struct_1, 9>();
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(2045f)))))) * _wgslsmith_f_op_f32(-851f - 819f))));
    var var_3 = select(!(!vec3<bool>(var_1.a.x > arg_0.a.x, true, arg_1.x)), !select(arg_1.wxw, vec3<bool>(false, true, !arg_1.x), !vec3<bool>(arg_1.x, global1[_wgslsmith_index_u32(arg_2, 5u)], arg_1.x)), !(!vec3<bool>(false, true, any(arg_1))));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -663f)));
}

fn func_7(arg_0: f32) -> StorageBuffer {
    global0 = array<Struct_1, 9>();
    global0 = array<Struct_1, 9>();
    let var_0 = Struct_1(-func_3(func_5(true, Struct_1(vec2<i32>(45068i, 0i), -32683i), 0u, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, arg_0, 853f) + vec3<f32>(254f, -2138f, arg_0))), vec3<i32>(_wgslsmith_div_i32(22032i, -1i), ~(-2147483647i), func_1().a.x), vec3<i32>(1i, 2147483647i, max(48689i, 2147483647i)), 33094i).a, -func_2(abs(u_input.b) << ((u_input.b ^ 4294967295u) % 32u), vec4<f32>(arg_0, arg_0, _wgslsmith_f_op_f32(trunc(arg_0)), _wgslsmith_div_f32(580f, arg_0)), ~u_input.a >> (u_input.a % vec2<u32>(32u))).a.x);
    let var_1 = func_2(_wgslsmith_mult_u32(u_input.b & ~4294967295u, reverseBits(~(~u_input.a.x))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0, 1208f, arg_0, arg_0))))), ~(~_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(u_input.a, vec2<u32>(u_input.b, 90936u)), ~u_input.a)));
    let var_2 = func_2(firstLeadingBit(4294967295u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -725f, _wgslsmith_f_op_f32(-arg_0), arg_0)), u_input.a | abs(abs(~vec2<u32>(u_input.b, u_input.a.x))));
    return StorageBuffer(vec4<i32>(_wgslsmith_dot_vec2_i32(var_1.a, ~vec2<i32>(var_1.b, var_0.b) & var_1.a), var_2.a.x, ~4702i, func_1().b), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, 204f) * vec3<f32>(446f, -1531f, arg_0)) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0, arg_0, arg_0)))), vec3<f32>(_wgslsmith_f_op_f32(-290f + -177f), arg_0, _wgslsmith_f_op_f32(sign(-634f)))))), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 9>();
    global3 = array<Struct_1, 32>();
    let var_0 = firstLeadingBit(min(vec3<u32>(min(reverseBits(22843u), firstLeadingBit(4294967295u)), _wgslsmith_sub_u32(15692u, firstTrailingBit(u_input.a.x)), ~34219u), ~abs(countOneBits(vec3<u32>(81395u, 34085u, u_input.a.x)))));
    let x = u_input.a;
    s_output = func_7(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_6(func_1(), vec4<bool>(global1[_wgslsmith_index_u32(46125u, 5u)], global1[_wgslsmith_index_u32(1u, 5u)], false, true), 4890u)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_6(Struct_1(vec2<i32>(53406i, -2147483647i), 2147483647i), vec4<bool>(true, true, global1[_wgslsmith_index_u32(var_0.x, 5u)], true), 21494u))))) * -487f));
}

