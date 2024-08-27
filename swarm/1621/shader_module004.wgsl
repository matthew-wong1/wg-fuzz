struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_2 = Struct_2(vec3<bool>(false, true, true), true, 48702u, Struct_1(vec4<u32>(42722u, 4294967295u, 66083u, 24659u), vec2<i32>(14699i, -24316i), -346f));

var<private> global2: array<bool, 14>;

var<private> global3: Struct_1 = Struct_1(vec4<u32>(4294967295u, 4294967295u, 0u, 28855u), vec2<i32>(-67830i, 2147483647i), -632f);

var<private> global4: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec4<u32>(4294967295u, 5667u, 7276u, 11104u), vec2<i32>(12472i, 0i), 1022f), Struct_1(vec4<u32>(0u, 1u, 0u, 1u), vec2<i32>(2147483647i, 0i), 1114f), Struct_1(vec4<u32>(0u, 4101u, 1u, 9099u), vec2<i32>(2147483647i, 0i), -1410f), Struct_1(vec4<u32>(44062u, 15655u, 1u, 76504u), vec2<i32>(i32(-2147483648), 34415i), -288f), Struct_1(vec4<u32>(7029u, 2629u, 1u, 35098u), vec2<i32>(0i, 1895i), -132f), Struct_1(vec4<u32>(1u, 4294967295u, 35876u, 108746u), vec2<i32>(-1i, 43059i), -1002f), Struct_1(vec4<u32>(0u, 1u, 25336u, 25922u), vec2<i32>(i32(-2147483648), -1i), -434f), Struct_1(vec4<u32>(0u, 38052u, 22361u, 13754u), vec2<i32>(14895i, 2097i), -776f), Struct_1(vec4<u32>(1u, 23091u, 1u, 4879u), vec2<i32>(2147483647i, 48577i), -207f), Struct_1(vec4<u32>(49078u, 1u, 20278u, 0u), vec2<i32>(0i, 49524i), -243f), Struct_1(vec4<u32>(4294967295u, 0u, 0u, 25238u), vec2<i32>(843i, -1i), -1000f), Struct_1(vec4<u32>(5717u, 1u, 1u, 11344u), vec2<i32>(-1i, 2147483647i), 706f), Struct_1(vec4<u32>(0u, 4294967295u, 10709u, 5715u), vec2<i32>(0i, -19438i), -1205f), Struct_1(vec4<u32>(4294967295u, 5153u, 4294967295u, 91945u), vec2<i32>(-1i, -1i), 729f), Struct_1(vec4<u32>(4294967295u, 1u, 31176u, 1u), vec2<i32>(31787i, 2147483647i), -1562f));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec3<bool> {
    global3 = global1.d;
    global3 = Struct_1(~min(global3.a, ~firstLeadingBit(global1.d.a)), global1.d.b, global1.d.c);
    var var_0 = Struct_1(max(select(abs(~vec4<u32>(1u, 0u, global1.c, 0u)), ~global1.d.a, global1.d.b.x == -21193i), ~global3.a), vec2<i32>(u_input.a, 45735i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(1103f))))), _wgslsmith_f_op_f32(-global1.d.c)));
    global2 = array<bool, 14>();
    global4 = array<Struct_1, 15>();
    return !vec3<bool>(false, true, all(!vec4<bool>(false, false, global2[_wgslsmith_index_u32(var_0.a.x, 14u)], true)));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_2(select(select(!vec3<bool>(false, global2[_wgslsmith_index_u32(global1.d.a.x, 14u)], true), vec3<bool>(false, global1.a.x, global2[_wgslsmith_index_u32(4294967295u, 14u)]), select(func_3(), select(global1.a, global1.a, global1.a), true)), global1.a, select(vec3<bool>(false, true, true), select(func_3(), !global1.a, global1.a), global1.a)), true, 1u, Struct_1(global3.a, global1.d.b, _wgslsmith_f_op_f32(global3.c - -806f)));
    global3 = global4[_wgslsmith_index_u32(~4294967295u, 15u)];
    let var_1 = vec3<bool>(global2[_wgslsmith_index_u32(global3.a.x, 14u)], true, true && (var_0.a.x & false));
    global2 = array<bool, 14>();
    var var_2 = -26374i;
    return Struct_2(func_3(), (~1u >> ((_wgslsmith_dot_vec2_u32(global3.a.wy, var_0.d.a.zy) << (global3.a.x % 32u)) % 32u)) == _wgslsmith_mult_u32(~reverseBits(83394u), global3.a.x), ~(_wgslsmith_dot_vec3_u32(~vec3<u32>(global3.a.x, 4294967295u, global3.a.x), vec3<u32>(0u, 47070u, 1u)) << (~(~0u) % 32u)), Struct_1(var_0.d.a, -(~_wgslsmith_div_vec2_i32(vec2<i32>(8014i, global1.d.b.x), vec2<i32>(2147483647i, -1i))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1343f - -1435f), _wgslsmith_f_op_f32(f32(-1f) * -1513f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -852f) * 1f))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool) -> Struct_2 {
    let var_0 = func_3().x;
    let var_1 = Struct_1(countOneBits(vec4<u32>(arg_0.a.x, ~global3.a.x, ~(~1u), 0u)), -(~arg_1.d.b), 750f);
    let var_2 = firstLeadingBit(1u);
    let var_3 = -abs(_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(max(vec3<i32>(10728i, var_1.b.x, arg_0.b.x), vec3<i32>(-21163i, arg_0.b.x, 9573i)), vec3<i32>(0i, arg_1.d.b.x, -19213i)), min(vec3<i32>(arg_1.d.b.x, arg_1.d.b.x, arg_1.d.b.x), vec3<i32>(arg_0.b.x, 31123i, arg_1.d.b.x)) >> (vec3<u32>(0u, 1u, 22631u) % vec3<u32>(32u))));
    global4 = array<Struct_1, 15>();
    return arg_1;
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: vec2<i32>) -> Struct_2 {
    var var_0 = _wgslsmith_div_i32(-(~_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(global1.d.b.x, 25631i, arg_1, 1i), vec4<i32>(1i, -20017i, global3.b.x, -1i)), -vec4<i32>(28750i, arg_2.x, -15404i, arg_0.d.b.x))), i32(-1i) * -41981i);
    global2 = array<bool, 14>();
    var var_1 = abs(arg_0.d.a.zxy);
    let var_2 = select(vec4<bool>(func_3().x, func_2().b, false && !(!arg_0.a.x), true), select(select(select(!vec4<bool>(false, global2[_wgslsmith_index_u32(41915u, 14u)], global1.b, true), !vec4<bool>(false, global1.b, false, false), vec4<bool>(global2[_wgslsmith_index_u32(arg_0.c, 14u)], global1.b, true, true)), vec4<bool>(func_4(arg_0.d, arg_0, global1.b).a.x, arg_0.a.x, arg_0.a.x, any(vec3<bool>(false, global2[_wgslsmith_index_u32(arg_0.d.a.x, 14u)], false))), !func_2().a.x), vec4<bool>(!(!arg_0.a.x), true, select(global2[_wgslsmith_index_u32(var_1.x, 14u)], any(vec3<bool>(global2[_wgslsmith_index_u32(global3.a.x, 14u)], global1.a.x, false)), false && arg_0.b), true), true), global1.b);
    let var_3 = -reverseBits(-2147483647i);
    return func_4(Struct_1(_wgslsmith_clamp_vec4_u32(global1.d.a, _wgslsmith_sub_vec4_u32(global3.a, select(vec4<u32>(87586u, 20523u, 1u, 27848u), arg_0.d.a, var_2)), global1.d.a), -(~func_4(Struct_1(vec4<u32>(4294967295u, arg_0.d.a.x, var_1.x, global1.c), vec2<i32>(global1.d.b.x, -31562i), global1.d.c), arg_0, var_2.x).d.b), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(global1.d.c, global1.d.c), -1408f))), func_2(), false);
}

fn func_6(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: vec2<i32>) -> i32 {
    global4 = array<Struct_1, 15>();
    var var_0 = Struct_2(vec3<bool>(true, any(func_3()), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1174f + 1139f)))) <= global3.c, ~_wgslsmith_dot_vec3_u32(vec3<u32>(44294u, global1.d.a.x, 1u), vec3<u32>(global1.d.a.x, 4294967295u, arg_1.x)) ^ global1.d.a.x, Struct_1(vec4<u32>(~4294967295u, _wgslsmith_add_u32(global1.c, min(1u, 4294967295u)), _wgslsmith_sub_u32(func_4(global1.d, arg_2, true).c, 43541u), 0u), arg_2.d.b, 1589f));
    global3 = Struct_1(vec4<u32>(_wgslsmith_mod_u32(global1.c, ~4294967295u), _wgslsmith_dot_vec2_u32(~arg_1 | ~global1.d.a.wx, var_0.d.a.xy), ~func_2().d.a.x, abs(abs(var_0.d.a.x))), max(func_5(arg_2, _wgslsmith_mult_i32(arg_3.x, global1.d.b.x), min(arg_2.d.b, ~arg_2.d.b)).d.b, vec2<i32>(-17140i, -1i)), var_0.d.c);
    var var_1 = global1.d;
    var_0 = Struct_2(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(199f + _wgslsmith_f_op_f32(floor(-1356f)))) <= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global3.c))), 0u, func_4(Struct_1(global3.a, -vec2<i32>(0i, var_0.d.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1057f))), arg_2, !select(global3.c >= arg_2.d.c, global1.b, global2[_wgslsmith_index_u32(global3.a.x, 14u)] && global2[_wgslsmith_index_u32(43137u, 14u)])).d);
    return global3.b.x;
}

fn func_7(arg_0: bool, arg_1: vec4<bool>, arg_2: vec4<f32>, arg_3: i32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(max(global1.d.c, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.d.c - arg_2.x))) - _wgslsmith_f_op_f32(round(-950f))), -188f, arg_0))));
    var var_1 = func_4(global1.d, func_5(func_4(func_5(Struct_2(global1.a, true, global3.a.x, Struct_1(global3.a, vec2<i32>(-42178i, global1.d.b.x), -1293f)), _wgslsmith_mult_i32(14554i, -35427i), vec2<i32>(u_input.a, u_input.a)).d, func_5(func_4(Struct_1(vec4<u32>(57435u, global1.d.a.x, 19640u, 54863u), vec2<i32>(-13398i, -21221i), 1443f), Struct_2(vec3<bool>(true, global1.a.x, false), true, global1.d.a.x, Struct_1(global1.d.a, vec2<i32>(global3.b.x, -29891i), 1106f)), global1.a.x), ~u_input.a, vec2<i32>(-2147483647i, 16003i) << (global1.d.a.yy % vec2<u32>(32u))), arg_0), ~(min(global1.d.b.x, global3.b.x) | func_2().d.b.x), min(global1.d.b, global1.d.b) ^ (vec2<i32>(2147483647i, -2147483647i) | vec2<i32>(1i, global3.b.x))), true);
    global0 = _wgslsmith_dot_vec3_u32(~vec3<u32>(_wgslsmith_dot_vec4_u32(global3.a, var_1.d.a) << (9003u % 32u), min(33450u, ~global1.d.a.x), firstTrailingBit(_wgslsmith_mult_u32(var_1.c, 20765u))), countOneBits(vec3<u32>(countOneBits(35085u ^ var_1.d.a.x), ~68037u, global3.a.x)));
    global0 = ~(reverseBits(~(global3.a.x ^ global1.c)) | global3.a.x);
    var var_2 = -1478f;
    return func_4(global1.d, func_2(), func_4(var_1.d, func_4(Struct_1(_wgslsmith_clamp_vec4_u32(vec4<u32>(global1.c, global3.a.x, 14845u, 17658u), vec4<u32>(0u, 57762u, global3.a.x, var_1.c), global1.d.a), global3.b, 533f), Struct_2(arg_1.yzy, false, _wgslsmith_sub_u32(global1.c, 30068u), func_5(Struct_2(vec3<bool>(false, global2[_wgslsmith_index_u32(global1.d.a.x, 14u)], false), var_1.b, 0u, Struct_1(vec4<u32>(0u, global3.a.x, 2627u, var_1.c), global3.b, global1.d.c)), var_1.d.b.x, vec2<i32>(global1.d.b.x, -28033i)).d), true), false).a.x);
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = func_7(!global1.a.x, vec4<bool>(!all(vec3<bool>(global2[_wgslsmith_index_u32(arg_1.a.x, 14u)], true, global1.a.x)), ~arg_1.a.x > 91626u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1017f, global1.d.c)) * _wgslsmith_f_op_f32(floor(global1.d.c))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d.c)), select(-1540f != _wgslsmith_f_op_f32(step(1038f, 191f)), global3.b.x > ~arg_1.b.x, false || (global2[_wgslsmith_index_u32(4294967295u, 14u)] | true))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global3.c * -2955f))) * arg_0.x), _wgslsmith_div_f32(810f, _wgslsmith_f_op_f32(abs(951f))), -1151f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(612f, 194f))))), func_6(select(global1.d.b, _wgslsmith_mod_vec2_i32(vec2<i32>(arg_1.b.x, 29814i), select(global1.d.b, global1.d.b, vec2<bool>(global1.a.x, global1.b))), global2[_wgslsmith_index_u32(global3.a.x, 14u)]), reverseBits(abs(global1.d.a.wx)), func_5(func_4(global4[_wgslsmith_index_u32(~6066u, 15u)], func_2(), true), _wgslsmith_add_i32(-1i, global3.b.x), vec2<i32>(0i, _wgslsmith_dot_vec2_i32(global3.b, global3.b))), _wgslsmith_clamp_vec2_i32(-vec2<i32>(global1.d.b.x, global1.d.b.x), ~vec2<i32>(global1.d.b.x, global1.d.b.x) << (_wgslsmith_mult_vec2_u32(arg_1.a.yz, global1.d.a.wy) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_mod_i32(global3.b.x, global1.d.b.x), u_input.a))));
    let var_1 = -2147483647i;
    let var_2 = func_4(func_4(func_7(!global1.b, select(vec4<bool>(true, global2[_wgslsmith_index_u32(var_0.c, 14u)], true, global2[_wgslsmith_index_u32(global3.a.x, 14u)]), vec4<bool>(global1.b, global2[_wgslsmith_index_u32(4294967295u, 14u)], true, var_0.a.x), select(vec4<bool>(global2[_wgslsmith_index_u32(10286u, 14u)], var_0.b, global1.b, global1.b), vec4<bool>(false, false, true, false), vec4<bool>(true, true, var_0.a.x, true))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-305f, arg_1.c, global1.d.c, arg_1.c), vec4<f32>(928f, arg_0.x, 1974f, global1.d.c), global1.b)))), -arg_1.b.x).d, func_2(), !var_0.b).d, Struct_2(global1.a, !func_4(Struct_1(global1.d.a, vec2<i32>(-21877i, var_1), -127f), Struct_2(vec3<bool>(var_0.b, var_0.a.x, global1.a.x), var_0.a.x, var_0.c, global4[_wgslsmith_index_u32(global3.a.x, 15u)]), var_0.a.x).b || any(vec3<bool>(false, global1.b, false)), _wgslsmith_add_u32(var_0.d.a.x, countOneBits(0u >> (0u % 32u))), global1.d), func_5(Struct_2(global1.a, func_4(Struct_1(vec4<u32>(global1.c, arg_1.a.x, arg_1.a.x, 0u), global3.b, arg_0.x), Struct_2(vec3<bool>(true, false, global2[_wgslsmith_index_u32(global1.c, 14u)]), var_0.a.x, 50674u, var_0.d), false).b, var_0.c, func_4(Struct_1(global3.a, arg_1.b, -1171f), func_5(Struct_2(vec3<bool>(global1.b, var_0.a.x, false), global1.a.x, 1u, Struct_1(var_0.d.a, global3.b, global3.c)), var_0.d.b.x, global1.d.b), true).d), _wgslsmith_clamp_i32(arg_1.b.x, -1i ^ arg_1.b.x, ~(~2147483647i)), global3.b).a.x);
    var var_3 = var_0.b;
    global4 = array<Struct_1, 15>();
    return global1.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(global1.a, !global1.b, 28359u, func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -147f, global3.c) + vec3<f32>(291f, global1.d.c, global1.d.c)))), global4[_wgslsmith_index_u32(global1.c, 15u)]));
    var var_1 = var_0.d.a.zw;
    var var_2 = Struct_2(var_0.a, func_1(vec3<f32>(246f, _wgslsmith_f_op_f32(max(global1.d.c, 741f)), _wgslsmith_f_op_f32(exp2(global3.c))), var_0.d).a.x <= min(var_0.d.a.x, 6702u), ~(~(~(~var_0.c))), func_7(func_7(false, !(!vec4<bool>(false, true, global2[_wgslsmith_index_u32(1u, 14u)], false)), vec4<f32>(_wgslsmith_f_op_f32(-1070f * -1142f), _wgslsmith_div_f32(-987f, -1088f), -731f, global3.c), var_0.d.b.x).b, select(!select(vec4<bool>(var_0.a.x, false, false, global1.b), vec4<bool>(false, false, false, true), vec4<bool>(var_0.a.x, true, false, true)), !select(vec4<bool>(global2[_wgslsmith_index_u32(global3.a.x, 14u)], global1.a.x, var_0.a.x, global2[_wgslsmith_index_u32(global3.a.x, 14u)]), vec4<bool>(false, var_0.b, var_0.a.x, global2[_wgslsmith_index_u32(0u, 14u)]), vec4<bool>(var_0.b, global1.a.x, false, global2[_wgslsmith_index_u32(17876u, 14u)])), func_3().x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1.d.c, global1.d.c, -1030f, -860f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(826f, 717f, global3.c, -679f) + vec4<f32>(189f, global3.c, 1803f, var_0.d.c)))), var_0.d.b.x).d);
    let var_3 = select(global1.a.yz, !global1.a.yz, !var_2.a.yy);
    var var_4 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(-firstTrailingBit(~(~2147483647i)), select(~firstTrailingBit(global1.d.a.yz), vec2<u32>(func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1167f, global3.c, -327f)), var_2.d).a.x, 1u), _wgslsmith_f_op_f32(abs(func_5(Struct_2(vec3<bool>(true, true, false), var_3.x, 4294967295u, Struct_1(vec4<u32>(1u, 1u, var_2.c, 59395u), vec2<i32>(var_4.d.b.x, u_input.a), -213f)), u_input.a, var_0.d.b).d.c)) <= 1718f));
}

