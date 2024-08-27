struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: vec3<bool>,
    d: vec2<f32>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec2<bool>(false, false), vec3<i32>(-6942i, -3908i, 66238i), vec3<bool>(false, true, false), vec2<f32>(-1399f, -725f), -29419i), Struct_1(vec2<bool>(true, false), vec3<i32>(0i, -69006i, 19039i), vec3<bool>(false, true, true), vec2<f32>(499f, 219f), 10916i), Struct_1(vec2<bool>(true, false), vec3<i32>(-21768i, 7996i, 0i), vec3<bool>(true, true, true), vec2<f32>(204f, 376f), -13908i), Struct_1(vec2<bool>(true, false), vec3<i32>(-60378i, 3442i, -1i), vec3<bool>(false, true, true), vec2<f32>(-1066f, 1000f), i32(-2147483648)), Struct_1(vec2<bool>(false, true), vec3<i32>(-1i, -273i, -67108i), vec3<bool>(false, true, true), vec2<f32>(-1110f, -992f), -1i), Struct_1(vec2<bool>(true, false), vec3<i32>(-1i, -27237i, 114640i), vec3<bool>(false, true, true), vec2<f32>(-1410f, 1186f), -54776i), Struct_1(vec2<bool>(false, true), vec3<i32>(-29549i, 8109i, -31198i), vec3<bool>(false, false, false), vec2<f32>(-1865f, -106f), 11493i), Struct_1(vec2<bool>(false, false), vec3<i32>(75004i, i32(-2147483648), 1i), vec3<bool>(true, false, true), vec2<f32>(-1165f, 778f), 41578i), Struct_1(vec2<bool>(true, false), vec3<i32>(-33570i, -24787i, 2147483647i), vec3<bool>(true, true, true), vec2<f32>(2253f, 552f), i32(-2147483648)), Struct_1(vec2<bool>(false, true), vec3<i32>(-37511i, 14370i, 37781i), vec3<bool>(false, false, true), vec2<f32>(-1096f, 972f), i32(-2147483648)), Struct_1(vec2<bool>(true, false), vec3<i32>(31196i, 22497i, i32(-2147483648)), vec3<bool>(false, false, true), vec2<f32>(-1866f, -582f), 0i), Struct_1(vec2<bool>(false, true), vec3<i32>(41195i, 3216i, -20810i), vec3<bool>(true, false, true), vec2<f32>(636f, -826f), 59847i), Struct_1(vec2<bool>(true, true), vec3<i32>(0i, i32(-2147483648), 0i), vec3<bool>(false, false, false), vec2<f32>(516f, 1272f), 2147483647i), Struct_1(vec2<bool>(false, false), vec3<i32>(0i, 2147483647i, -9838i), vec3<bool>(true, false, true), vec2<f32>(258f, 578f), 0i), Struct_1(vec2<bool>(false, false), vec3<i32>(i32(-2147483648), -1i, -23645i), vec3<bool>(true, false, true), vec2<f32>(828f, 1000f), i32(-2147483648)), Struct_1(vec2<bool>(true, true), vec3<i32>(i32(-2147483648), i32(-2147483648), 207i), vec3<bool>(true, true, true), vec2<f32>(-517f, 560f), 1i), Struct_1(vec2<bool>(true, false), vec3<i32>(11754i, i32(-2147483648), i32(-2147483648)), vec3<bool>(true, true, false), vec2<f32>(2638f, 569f), -3833i), Struct_1(vec2<bool>(false, true), vec3<i32>(1i, -1i, i32(-2147483648)), vec3<bool>(false, false, true), vec2<f32>(-261f, -1232f), 1i), Struct_1(vec2<bool>(true, false), vec3<i32>(2147483647i, 21082i, -46467i), vec3<bool>(true, true, true), vec2<f32>(-1510f, 431f), 0i), Struct_1(vec2<bool>(true, false), vec3<i32>(-1i, -29917i, -1i), vec3<bool>(true, true, true), vec2<f32>(-421f, 733f), 1i), Struct_1(vec2<bool>(false, false), vec3<i32>(-6840i, 63751i, 24454i), vec3<bool>(false, true, false), vec2<f32>(-1000f, 573f), -2232i), Struct_1(vec2<bool>(false, false), vec3<i32>(0i, -19932i, -1i), vec3<bool>(true, false, true), vec2<f32>(484f, 1085f), 64301i), Struct_1(vec2<bool>(true, true), vec3<i32>(25703i, 2147483647i, 2147483647i), vec3<bool>(true, true, true), vec2<f32>(-819f, 215f), 0i), Struct_1(vec2<bool>(false, true), vec3<i32>(-8433i, 2147483647i, 0i), vec3<bool>(true, false, false), vec2<f32>(-406f, -416f), 0i), Struct_1(vec2<bool>(false, false), vec3<i32>(2147483647i, -13872i, 41161i), vec3<bool>(true, false, false), vec2<f32>(-1000f, -1443f), 10241i), Struct_1(vec2<bool>(true, true), vec3<i32>(20588i, i32(-2147483648), 2147483647i), vec3<bool>(false, false, false), vec2<f32>(1000f, -1196f), 28641i));

var<private> global1: vec4<bool> = vec4<bool>(false, false, true, false);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = Struct_1(vec2<bool>(select(false, !any(vec3<bool>(arg_0.a.x, global1.x, false)), false), true), _wgslsmith_mult_vec3_i32(countOneBits(~arg_0.b), _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(5910i, arg_0.b.x, 2147483647i)), vec3<i32>(37179i, u_input.c.x, -1i), arg_0.b), reverseBits(_wgslsmith_mult_vec3_i32(arg_0.b, arg_0.b)))), select(arg_0.c, !select(global1.zyy, vec3<bool>(arg_0.a.x, false, false), global1.ywz), select(select(vec3<bool>(global1.x, false, false), !vec3<bool>(arg_0.c.x, false, global1.x), select(vec3<bool>(true, false, false), arg_0.c, global1.x)), select(vec3<bool>(true, true, true), vec3<bool>(global1.x, arg_0.a.x, arg_0.a.x), arg_0.c), !arg_0.c.x)), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1079f + _wgslsmith_f_op_f32(round(arg_0.d.x))), arg_0.d.x), -1491f), ~(-(~select(arg_0.e, u_input.c.x, global1.x))));
    global0 = array<Struct_1, 26>();
    let var_1 = global0[_wgslsmith_index_u32(49392u, 26u)];
    global0 = array<Struct_1, 26>();
    var_0 = global0[_wgslsmith_index_u32(~0u, 26u)];
    return max(-33584i, _wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.c.x, u_input.c.x), var_0.e));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = ~select(2634u, _wgslsmith_mult_u32(~u_input.b, 1u), arg_0.a.x);
    var var_1 = select(arg_0.c, global1.wwz, arg_0.b.x > 15243i);
    let var_2 = Struct_1(!arg_0.a, ~arg_0.b, global1.zxz, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.d.x, -490f) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-772f, arg_0.d.x), vec2<f32>(arg_0.d.x, -141f))))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.d.x, arg_0.d.x)) - arg_0.d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.d.x, -525f))))), func_3(Struct_1(!global1.yw, arg_0.b >> (u_input.d % vec3<u32>(32u)), select(vec3<bool>(global1.x, true, arg_0.a.x), vec3<bool>(var_1.x, true, arg_0.c.x), arg_0.c), arg_0.d, u_input.c.x)) >> (reverseBits(1u ^ abs(var_0)) % 32u));
    var var_3 = vec2<u32>(~u_input.a.x ^ var_0, var_0);
    var var_4 = var_2;
    return Struct_1(arg_0.c.xx, _wgslsmith_sub_vec3_i32(vec3<i32>(~_wgslsmith_div_i32(-2147483647i, 26382i), var_2.e, var_2.e), min(vec3<i32>(1i, 1i, 1i), ~min(vec3<i32>(-2147483647i, u_input.c.x, u_input.c.x), var_2.b))), vec3<bool>(true || !any(var_2.a), !(!select(true, var_2.a.x, false)), var_2.a.x), arg_0.d, arg_0.e | ~(~_wgslsmith_clamp_i32(24375i, 0i, -2147483647i)));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: u32, arg_3: vec3<u32>) -> vec3<bool> {
    global1 = vec4<bool>(false, true, arg_1.c.x, select(arg_1.d.x >= arg_1.d.x, true, !arg_0));
    let var_0 = global0[_wgslsmith_index_u32(~(~(17287u >> (0u % 32u))), 26u)];
    global1 = vec4<bool>(!(global1.x == all(var_0.a)), func_2(Struct_1(select(func_2(Struct_1(vec2<bool>(arg_0, true), vec3<i32>(-1i, 1i, var_0.b.x), vec3<bool>(false, arg_0, true), vec2<f32>(var_0.d.x, var_0.d.x), 45974i)).a, var_0.a, var_0.a), vec3<i32>(14094i, func_2(Struct_1(global1.yy, var_0.b, var_0.c, var_0.d, arg_1.e)).b.x, ~var_0.b.x), vec3<bool>(!arg_1.c.x, !var_0.a.x, false), _wgslsmith_f_op_vec2_f32(var_0.d * var_0.d), ~(~0i))).c.x, !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.d.x * -621f) - _wgslsmith_f_op_f32(-arg_1.d.x)) != -343f), var_0.a.x);
    var var_1 = Struct_1(select(select(vec2<bool>(func_2(global0[_wgslsmith_index_u32(u_input.b, 26u)]).c.x, global1.x), vec2<bool>(true, !arg_0), vec2<bool>(arg_0, arg_0 & arg_1.a.x)), vec2<bool>(func_2(func_2(Struct_1(global1.yx, var_0.b, vec3<bool>(false, arg_1.c.x, true), var_0.d, var_0.b.x))).c.x, func_2(func_2(Struct_1(global1.zw, vec3<i32>(u_input.c.x, u_input.c.x, -1i), var_0.c, vec2<f32>(477f, -1226f), arg_1.e))).a.x), arg_1.c.x), _wgslsmith_sub_vec3_i32(arg_1.b ^ (-var_0.b >> (vec3<u32>(arg_2, arg_2, arg_2) % vec3<u32>(32u))), _wgslsmith_mod_vec3_i32(-vec3<i32>(-54389i, var_0.b.x, 1i), vec3<i32>(0i, _wgslsmith_mult_i32(-23099i, 23375i), arg_1.b.x))), var_0.c, var_0.d, firstTrailingBit(~u_input.c.x));
    var_1 = arg_1;
    return vec3<bool>(!any(select(select(vec4<bool>(false, false, var_0.a.x, true), vec4<bool>(false, arg_1.c.x, true, true), var_0.c.x), select(vec4<bool>(var_0.a.x, false, true, true), vec4<bool>(global1.x, true, true, var_0.a.x), vec4<bool>(arg_0, false, false, false)), vec4<bool>(false, false, false, true))), any(arg_1.c.zy) & !(!(true | arg_1.c.x)), global1.x);
}

fn func_1(arg_0: vec2<u32>, arg_1: f32, arg_2: i32) -> Struct_1 {
    var var_0 = Struct_1(select(select(vec2<bool>(!global1.x, -1i != arg_2), vec2<bool>(true, true), global1.xw), select(global1.xz, vec2<bool>(any(vec2<bool>(false, global1.x)), global1.x), global1.x), vec2<bool>(global1.x, _wgslsmith_f_op_f32(round(arg_1)) >= _wgslsmith_f_op_f32(ceil(854f)))), vec3<i32>((-2147483647i ^ arg_2) ^ _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.c, vec2<i32>(-9969i, -14028i)), vec2<i32>(2147483647i, arg_2) & u_input.c), ~max(arg_2, i32(-1i) * -2147483647i), -arg_2), !func_4(false, func_2(global0[_wgslsmith_index_u32(4294967295u ^ arg_0.x, 26u)]), u_input.b, vec3<u32>(u_input.a.x & 10875u, _wgslsmith_clamp_u32(7092u, u_input.a.x, u_input.d.x), 1u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(arg_1)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-399f, 882f)))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-940f, arg_1), _wgslsmith_f_op_vec2_f32(vec2<f32>(-411f, arg_1) - vec2<f32>(arg_1, arg_1)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1432f, arg_1), vec2<f32>(-1272f, arg_1), global1.zz)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_1, 267f))))))), arg_2);
    let var_1 = func_2(Struct_1(select(!vec2<bool>(var_0.c.x, global1.x), !vec2<bool>(global1.x, var_0.a.x), !(var_0.c.x || global1.x)), -(~countOneBits(var_0.b)), var_0.c, _wgslsmith_f_op_vec2_f32(min(var_0.d, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1479f, 1842f))))), var_0.e & 1i));
    var var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.d.x, var_1.d.x, -148f, var_0.d.x) + vec4<f32>(var_1.d.x, 589f, var_1.d.x, arg_1))))))))));
    let var_3 = min(select(vec4<i32>(var_0.b.x, 0i, 0i, 1i), countOneBits(vec4<i32>(arg_2, arg_2, -23417i, 0i)), vec4<bool>(var_1.a.x, true, global1.x, global1.x)) ^ _wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(var_0.b.x, var_0.b.x, arg_2, var_1.e)), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_2, var_0.e, var_1.e, -31661i), vec4<i32>(2147483647i, var_0.e, -1775i, -474i))), -(~(-vec4<i32>(u_input.c.x, -2147483647i, arg_2, arg_2)))) ^ ~(-select(vec4<i32>(11531i, u_input.c.x, var_1.e, 15156i) >> (vec4<u32>(0u, 69314u, arg_0.x, 3873u) % vec4<u32>(32u)), vec4<i32>(2147483647i, 1i, u_input.c.x, -32919i), !vec4<bool>(var_0.c.x, var_0.a.x, global1.x, true)));
    let var_4 = false;
    return Struct_1(vec2<bool>(global1.x, var_1.c.x), vec3<i32>(2147483647i, min(_wgslsmith_dot_vec2_i32(reverseBits(u_input.c), vec2<i32>(var_1.e, arg_2)), var_3.x), 1i), select(var_1.c, !func_2(func_2(var_1)).c, true), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(exp2(var_1.d)))), func_2(func_2(func_2(func_2(Struct_1(vec2<bool>(var_0.c.x, true), vec3<i32>(u_input.c.x, 2147483647i, -2147483647i), var_1.c, vec2<f32>(175f, -655f), 0i))))).b.x);
}

fn func_5(arg_0: Struct_1) -> vec2<f32> {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(9467u, _wgslsmith_add_u32(~_wgslsmith_clamp_u32(u_input.a.x, u_input.d.x, 12012u), countOneBits(u_input.d.x ^ u_input.b))), 51409u), 26u)];
    let var_1 = firstLeadingBit(vec2<u32>(119983u, _wgslsmith_clamp_u32(u_input.d.x, firstTrailingBit(u_input.a.x), 12344u)));
    var_0 = func_1(vec2<u32>(~_wgslsmith_add_u32(~var_1.x, var_1.x), _wgslsmith_div_u32(~(~var_1.x), _wgslsmith_clamp_u32(u_input.d.x, u_input.d.x, var_1.x))), var_0.d.x, ~(45258i >> ((min(var_1.x, u_input.b) << (0u % 32u)) % 32u)));
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(1412f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -686f)), true)), _wgslsmith_f_op_f32(var_0.d.x - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-855f + 1344f))))));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.x + var_0.d.x));
    return _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-arg_0.d)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec4<bool>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1049f, -1610f)))) >= -1000f, !global1.x, any(global1.ww), !(!global1.x));
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_5(func_1(u_input.d.xx, 1004f, u_input.c.x)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-656f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -502f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(523f, 451f))) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -164f) - vec2<f32>(351f, 307f)) * func_1(vec2<u32>(1u, u_input.d.x), 1454f, 2147483647i).d), vec2<f32>(func_1(u_input.a, -1075f, u_input.c.x).d.x, _wgslsmith_f_op_f32(-134f - -1000f))))));
    var var_1 = Struct_1(vec2<bool>(false | all(!vec4<bool>(false, global1.x, global1.x, true)), true), countOneBits(countOneBits(countOneBits(-vec3<i32>(-2147483647i, u_input.c.x, u_input.c.x)))), global1.yyx, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-254f - _wgslsmith_f_op_f32(-var_0.x))))), u_input.c.x);
    global0 = array<Struct_1, 26>();
    var var_2 = i32(-1i) * -u_input.c.x;
    var var_3 = global0[_wgslsmith_index_u32(0u, 26u)];
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.x | 18314u, u_input.a.x, _wgslsmith_dot_vec4_u32(abs(_wgslsmith_div_vec4_u32(vec4<u32>(25845u, u_input.a.x, 4294967295u, u_input.a.x), vec4<u32>(28285u, u_input.b, u_input.a.x, u_input.d.x))) ^ firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(19180u, u_input.d.x, 0u, u_input.a.x), vec4<u32>(3709u, u_input.b, 125440u, u_input.a.x))), _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(u_input.d.x, 50193u, u_input.b), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a.x, 43313u), vec3<u32>(u_input.a.x, u_input.d.x, u_input.d.x)), _wgslsmith_mod_u32(98970u, u_input.d.x), ~u_input.b), vec4<u32>(u_input.b ^ 19213u, 9254u & u_input.a.x, 1u, 4294967295u))));
}

