struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: i32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, false, false);

var<private> global1: array<u32, 13> = array<u32, 13>(50035u, 925u, 4294967295u, 0u, 26140u, 0u, 0u, 48175u, 13213u, 4294967295u, 0u, 1u, 13742u);

var<private> global2: u32 = 82484u;

var<private> global3: vec4<u32> = vec4<u32>(0u, 1u, 4294967295u, 1u);

var<private> global4: array<vec2<i32>, 12>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> i32 {
    let var_0 = Struct_4(Struct_2(Struct_1(!vec4<bool>(true, true, global0.x, global0.x), select(!vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(global0.x, global0.x, false, false), global0.x), firstTrailingBit(2147483647i), vec4<u32>(~global3.x, _wgslsmith_add_u32(1u, 0u), ~global3.x, firstTrailingBit(1u))), Struct_1(select(select(vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(global0.x, global0.x, false, global0.x), true), select(vec4<bool>(true, true, global0.x, true), vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(global0.x, true, true, false)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(global0.x, global0.x, false, global0.x), !vec4<bool>(false, false, global0.x, false)), ~(~41706i), countOneBits(abs(vec4<u32>(0u, 39200u, 0u, global3.x))))), Struct_2(Struct_1(select(!vec4<bool>(false, false, global0.x, global0.x), vec4<bool>(true, global0.x, false, global0.x), global0.x & global0.x), vec4<bool>(global0.x, false, !global0.x, global0.x), u_input.a.x, _wgslsmith_mult_vec4_u32(~vec4<u32>(3136u, 1u, 4294967295u, global3.x), vec4<u32>(global3.x, 4294967295u, global3.x, 2941u))), Struct_1(!(!vec4<bool>(global0.x, false, false, global0.x)), !select(vec4<bool>(true, true, global0.x, global0.x), vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(false, true, false, global0.x)), -27639i, _wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.b.x, 48675u, global1[_wgslsmith_index_u32(1u, 13u)], 72185u), vec4<u32>(20885u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 13u)], 13u)], global1[_wgslsmith_index_u32(global3.x, 13u)], 18324u), vec4<u32>(global1[_wgslsmith_index_u32(global3.x, 13u)], global1[_wgslsmith_index_u32(23476u, 13u)], global3.x, 21390u)))), Struct_2(Struct_1(select(select(vec4<bool>(true, true, global0.x, true), vec4<bool>(true, global0.x, global0.x, global0.x), global0.x), vec4<bool>(global0.x, global0.x, true, global0.x), select(true, true, true)), select(vec4<bool>(global0.x, false, true, true), !vec4<bool>(true, true, false, global0.x), !vec4<bool>(true, true, global0.x, false)), _wgslsmith_mod_i32(~18565i, ~u_input.a.x), abs(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 4294967295u, global3.x, 0u), vec4<u32>(1u, 24689u, global3.x, global3.x)))), Struct_1(vec4<bool>(true, true, false, global0.x == false), select(vec4<bool>(global0.x, false, global0.x, false), select(vec4<bool>(false, global0.x, global0.x, false), vec4<bool>(global0.x, global0.x, global0.x, false), true), !vec4<bool>(false, false, true, global0.x)), -65518i, _wgslsmith_mult_vec4_u32(select(vec4<u32>(55904u, 1u, u_input.b.x, 66323u), vec4<u32>(u_input.b.x, 103493u, global1[_wgslsmith_index_u32(36530u, 13u)], global3.x), vec4<bool>(global0.x, false, true, true)), firstLeadingBit(vec4<u32>(global3.x, u_input.b.x, 0u, u_input.b.x))))), firstTrailingBit(1952u));
    let var_1 = true;
    let var_2 = vec4<bool>(false, any(select(!select(vec4<bool>(var_0.c.b.b.x, global0.x, true, global0.x), var_0.b.a.b, var_0.c.a.b), vec4<bool>(any(global0.xy), var_1, global0.x, false != var_1), true)), !var_1, true);
    var var_3 = select(select(global0.zxw, select(!var_2.yyz, select(select(global0.wwx, var_2.wwy, var_1), vec3<bool>(true, false, true), vec3<bool>(true, true, var_2.x)), var_1), !(!var_0.c.a.b.wzy)), var_0.a.a.a.wyz, all(select(global0.xw, var_2.yw, !var_0.b.a.a.xy)));
    let var_4 = select(vec4<bool>(!(!var_0.c.a.b.x), false, !(true && (global1[_wgslsmith_index_u32(u_input.b.x, 13u)] >= u_input.b.x)), !(reverseBits(var_0.a.a.c) > abs(1i))), var_0.a.a.b, var_0.c.a.a);
    return u_input.a.x;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(vec4<bool>(any(!vec2<bool>(arg_3.a.x, false)), false, true, any(!(!global0.wy))), arg_3.b, func_3(), ~arg_1.b.d);
    let var_1 = Struct_3(u_input.a.zyx, arg_1, all(vec3<bool>(all(select(arg_1.a.a.wzy, global0.yyy, arg_3.a.yyz)), !select(false, false, true), all(vec3<bool>(true, true, arg_1.a.b.x)))));
    let var_2 = !var_1.b.a.a;
    let var_3 = Struct_3(countOneBits(min(_wgslsmith_clamp_vec3_i32(-vec3<i32>(arg_3.c, arg_0.x, 1i), u_input.a.xwx, ~vec3<i32>(var_0.c, arg_0.x, -9987i)), u_input.a.wyw)), Struct_2(var_1.b.b, var_1.b.a), any(arg_3.b.www));
    var var_4 = var_1.b.a.b.x;
    return Struct_1(select(var_0.b, vec4<bool>(arg_3.a.x, !(var_0.b.x && false), !arg_3.a.x, var_3.b.a.a.x), arg_2.x > _wgslsmith_mod_i32(-64356i, ~(-10344i))), select(vec4<bool>(var_0.b.x, false, true, true), arg_3.b, !(!select(vec4<bool>(arg_3.a.x, arg_1.b.a.x, arg_3.b.x, var_3.c), var_1.b.a.a, global0.x))), arg_2.x, ~min(vec4<u32>(~arg_1.a.d.x, _wgslsmith_mult_u32(var_0.d.x, 41262u), global3.x | 4294967295u, ~0u), vec4<u32>(var_1.b.a.d.x, var_3.b.a.d.x, _wgslsmith_dot_vec2_u32(arg_3.d.yw, vec2<u32>(695u, 1u)), _wgslsmith_mod_u32(4294967295u, global3.x))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_4 {
    let var_0 = 7020u;
    var var_1 = (-(~firstLeadingBit(2147483647i)) ^ (-(~0i) | arg_0.a.c)) << ((_wgslsmith_sub_u32(_wgslsmith_clamp_u32(~arg_0.a.d.x, 4294967295u, u_input.b.x), 18100u) >> (arg_3.d.x % 32u)) % 32u);
    var_1 = _wgslsmith_mod_i32(u_input.a.x, ~0i);
    var_1 = -18425i;
    global2 = 4294967295u;
    return Struct_4(arg_0, Struct_2(func_2(vec2<i32>(~(-2147483647i), arg_3.c), Struct_2(arg_2, arg_3), ~_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.a.c, arg_3.c, arg_2.c, arg_3.c), u_input.a), arg_3), Struct_1(!(!arg_0.a.a), arg_2.b, _wgslsmith_dot_vec3_i32(-u_input.a.ywz, u_input.a.zzy), firstTrailingBit(vec4<u32>(4294967295u, 0u, 7134u, arg_2.d.x)))), Struct_2(arg_3, arg_0.a), ~_wgslsmith_dot_vec4_u32(func_2(u_input.a.yw, arg_0, u_input.a, arg_2).d, vec4<u32>(21269u, arg_2.d.x, 4294967295u, u_input.b.x)) << (1u % 32u));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_3, arg_2: vec4<u32>) -> f32 {
    var var_0 = arg_1.b;
    var var_1 = _wgslsmith_sub_i32(countOneBits(u_input.a.x), -(~_wgslsmith_dot_vec4_i32(u_input.a, ~vec4<i32>(13134i, arg_1.a.x, 5099i, arg_1.a.x))));
    let var_2 = ~abs(u_input.a.x);
    global1 = array<u32, 13>();
    let var_3 = arg_1.b;
    return _wgslsmith_f_op_f32(select(1641f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-926f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-674f, -1000f)) - _wgslsmith_f_op_f32(f32(-1f) * -1630f))))), arg_0.b.a.b.x));
}

fn func_1(arg_0: f32, arg_1: Struct_3) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(727f, -656f, -483f), vec3<f32>(321f, arg_0, 758f))))))) + vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0))), _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(func_5(func_4(Struct_2(Struct_1(arg_1.b.a.b, vec4<bool>(global0.x, true, false, arg_1.b.b.b.x), arg_1.b.b.c, arg_1.b.b.d), arg_1.b.b), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(242f, 464f, arg_0), vec3<f32>(-536f, arg_0, -621f))), func_2(u_input.a.xx, Struct_2(arg_1.b.b, arg_1.b.a), vec4<i32>(1i, 43382i, -27252i, u_input.a.x), arg_1.b.b), arg_1.b.a), arg_1, ~vec4<u32>(73995u, u_input.b.x, global3.x, arg_1.b.b.d.x))), -514f));
}

fn func_6(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: vec2<f32>) -> Struct_2 {
    var var_0 = arg_2.a;
    global2 = global1[_wgslsmith_index_u32(~(~(~(~(~global3.x)))), 13u)];
    global4 = array<vec2<i32>, 12>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-234f, -814f, -1197f) + arg_0))))));
    let var_2 = var_0.d.x;
    return Struct_2(arg_2.b, Struct_1(!(!vec4<bool>(false, var_0.a.x, false, false)), !var_0.b, ~(u_input.a.x >> (0u % 32u)), _wgslsmith_div_vec4_u32(arg_2.b.d, abs(arg_2.b.d))));
}

fn func_7(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: Struct_2, arg_3: f32) -> Struct_2 {
    let var_0 = ~arg_0;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-581f + arg_3));
    var var_2 = true;
    var var_3 = arg_1.a.a.b.yy;
    var var_4 = Struct_2(arg_1.a.a, Struct_1(func_2(vec2<i32>(~(-1i), func_4(Struct_2(arg_2.b, Struct_1(arg_2.a.b, arg_2.a.a, arg_2.b.c, vec4<u32>(48750u, global1[_wgslsmith_index_u32(15450u, 13u)], global1[_wgslsmith_index_u32(14797u, 13u)], 30567u))), vec3<f32>(arg_3, arg_3, arg_3), arg_2.b, arg_2.b).b.a.c), Struct_2(Struct_1(arg_1.a.a.a, vec4<bool>(var_3.x, arg_1.b.b.b.x, arg_2.a.a.x, true), -54615i, arg_2.a.d), func_4(Struct_2(Struct_1(arg_2.a.a, arg_1.a.b.b, arg_2.a.c, vec4<u32>(u_input.b.x, arg_1.b.a.d.x, global1[_wgslsmith_index_u32(arg_2.b.d.x, 13u)], global1[_wgslsmith_index_u32(0u, 13u)])), arg_1.b.a), vec3<f32>(arg_3, arg_3, 1054f), Struct_1(vec4<bool>(false, var_3.x, arg_1.a.a.a.x, false), arg_2.a.a, arg_2.a.c, vec4<u32>(1u, 10388u, global3.x, 1u)), Struct_1(vec4<bool>(true, false, arg_1.c.a.b.x, false), arg_1.a.b.a, arg_1.b.b.c, arg_2.a.d)).c.a), abs(vec4<i32>(-1i, -8669i, arg_2.a.c, u_input.a.x)), func_6(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3, -1000f, 927f) + vec3<f32>(337f, -1409f, 1431f)), vec3<i32>(arg_0.x, var_0.x, arg_0.x), Struct_2(Struct_1(vec4<bool>(false, true, false, global0.x), vec4<bool>(true, arg_2.a.b.x, arg_2.a.a.x, arg_2.b.b.x), arg_0.x, arg_2.a.d), Struct_1(arg_1.b.b.a, vec4<bool>(false, false, false, global0.x), arg_0.x, vec4<u32>(43097u, 93001u, u_input.b.x, 0u))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1262f, -1904f) + vec2<f32>(-1384f, arg_3))).b).a, vec4<bool>(global0.x, arg_1.b.b.a.x, true, arg_2.a.a.x), min(_wgslsmith_sub_i32(0i, _wgslsmith_add_i32(-25207i, 2147483647i)), arg_2.a.c), vec4<u32>(_wgslsmith_div_u32(global3.x, ~arg_1.c.b.d.x), firstTrailingBit(_wgslsmith_add_u32(3962u, global3.x)), ~46220u, func_4(arg_1.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3, -2174f, arg_3)), arg_2.a, Struct_1(arg_1.a.a.b, vec4<bool>(global0.x, false, false, false), 1i, vec4<u32>(1u, 34313u, u_input.b.x, u_input.b.x))).d)));
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 13>();
    let var_0 = Struct_4(func_7(u_input.a.wyy, Struct_4(func_6(_wgslsmith_f_op_vec3_f32(func_1(-1110f, Struct_3(vec3<i32>(u_input.a.x, 0i, 1i), Struct_2(Struct_1(vec4<bool>(global0.x, global0.x, false, true), vec4<bool>(global0.x, true, false, false), u_input.a.x, vec4<u32>(0u, 0u, 0u, u_input.b.x)), Struct_1(vec4<bool>(false, false, true, global0.x), vec4<bool>(global0.x, global0.x, true, global0.x), u_input.a.x, vec4<u32>(global1[_wgslsmith_index_u32(u_input.b.x, 13u)], 1u, global3.x, global3.x))), true))), firstTrailingBit(u_input.a.wyw), func_4(Struct_2(Struct_1(vec4<bool>(global0.x, false, global0.x, false), vec4<bool>(global0.x, false, true, false), 2147483647i, vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(u_input.b.x, 13u)], 69039u, 0u)), Struct_1(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(true, false, true, false), u_input.a.x, vec4<u32>(u_input.b.x, 1u, 1u, global3.x))), vec3<f32>(-303f, 151f, -711f), Struct_1(vec4<bool>(global0.x, global0.x, true, false), vec4<bool>(false, global0.x, global0.x, true), u_input.a.x, vec4<u32>(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3.x, 13u)], 13u)], 0u, u_input.b.x)), Struct_1(vec4<bool>(false, true, global0.x, global0.x), vec4<bool>(global0.x, true, true, global0.x), u_input.a.x, vec4<u32>(global1[_wgslsmith_index_u32(23684u, 13u)], global1[_wgslsmith_index_u32(4294967295u, 13u)], 0u, global3.x))).a, _wgslsmith_f_op_vec3_f32(func_1(-1343f, Struct_3(vec3<i32>(u_input.a.x, -14752i, u_input.a.x), Struct_2(Struct_1(vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(false, false, global0.x, global0.x), u_input.a.x, vec4<u32>(1u, 4294967295u, u_input.b.x, global1[_wgslsmith_index_u32(0u, 13u)])), Struct_1(vec4<bool>(global0.x, global0.x, false, false), vec4<bool>(true, global0.x, false, false), -2147483647i, vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 0u))), true))).xx), func_4(Struct_2(Struct_1(vec4<bool>(false, global0.x, false, false), vec4<bool>(false, false, global0.x, global0.x), u_input.a.x, vec4<u32>(47053u, global3.x, 1u, global1[_wgslsmith_index_u32(75639u, 13u)])), Struct_1(vec4<bool>(true, true, true, false), vec4<bool>(true, true, global0.x, global0.x), u_input.a.x, vec4<u32>(global1[_wgslsmith_index_u32(u_input.b.x, 13u)], 43220u, 78664u, global3.x))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1538f, -630f, 1253f))), Struct_1(vec4<bool>(false, true, false, global0.x), vec4<bool>(true, false, global0.x, false), 2957i, vec4<u32>(global1[_wgslsmith_index_u32(global3.x, 13u)], 22197u, 65839u, global1[_wgslsmith_index_u32(11847u, 13u)])), func_6(vec3<f32>(309f, -1200f, -170f), vec3<i32>(40209i, 0i, -2147483647i), Struct_2(Struct_1(vec4<bool>(false, true, global0.x, global0.x), vec4<bool>(false, true, true, global0.x), u_input.a.x, vec4<u32>(39426u, 51291u, 71277u, 8317u)), Struct_1(vec4<bool>(global0.x, false, global0.x, true), vec4<bool>(global0.x, global0.x, global0.x, global0.x), u_input.a.x, vec4<u32>(21817u, u_input.b.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 13u)], 13u)], 0u))), vec2<f32>(-903f, 903f)).a).b, func_6(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, -1000f, -393f), vec3<f32>(786f, -1000f, 1516f), global0.x)), -u_input.a.xzz, Struct_2(Struct_1(vec4<bool>(global0.x, false, false, false), vec4<bool>(true, true, global0.x, global0.x), u_input.a.x, vec4<u32>(global1[_wgslsmith_index_u32(global3.x, 13u)], u_input.b.x, u_input.b.x, global3.x)), Struct_1(vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(global0.x, global0.x, global0.x, global0.x), u_input.a.x, vec4<u32>(u_input.b.x, u_input.b.x, global3.x, global1[_wgslsmith_index_u32(1u, 13u)]))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1426f, 1218f))), ~(~4294967295u)), Struct_2(Struct_1(vec4<bool>(true, global0.x, true, global0.x), func_2(u_input.a.wy, Struct_2(Struct_1(vec4<bool>(false, global0.x, true, true), vec4<bool>(true, global0.x, true, false), u_input.a.x, vec4<u32>(u_input.b.x, 1u, global3.x, global3.x)), Struct_1(vec4<bool>(true, true, global0.x, true), vec4<bool>(global0.x, false, false, true), -2147483647i, vec4<u32>(4294967295u, u_input.b.x, 1u, u_input.b.x))), u_input.a, Struct_1(vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(global0.x, global0.x, global0.x, global0.x), 19889i, vec4<u32>(0u, global3.x, 23720u, global1[_wgslsmith_index_u32(72422u, 13u)]))).b, 1i, vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 13u)], 13u)], 1u, u_input.b.x)), func_6(vec3<f32>(1650f, -880f, 1028f), abs(vec3<i32>(u_input.a.x, 0i, u_input.a.x)), Struct_2(Struct_1(vec4<bool>(false, false, false, global0.x), vec4<bool>(false, true, global0.x, true), u_input.a.x, vec4<u32>(0u, 0u, global1[_wgslsmith_index_u32(global3.x, 13u)], 17319u)), Struct_1(vec4<bool>(true, global0.x, global0.x, false), vec4<bool>(global0.x, global0.x, global0.x, global0.x), 2147483647i, vec4<u32>(19526u, global1[_wgslsmith_index_u32(54192u, 13u)], u_input.b.x, global1[_wgslsmith_index_u32(40323u, 13u)]))), _wgslsmith_f_op_vec2_f32(vec2<f32>(379f, -1005f) - vec2<f32>(-671f, -219f))).a), _wgslsmith_div_f32(-1066f, _wgslsmith_div_f32(-1000f, -533f))), func_4(func_4(func_6(vec3<f32>(-937f, -150f, -1194f), vec3<i32>(u_input.a.x, u_input.a.x, 16251i), Struct_2(Struct_1(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(global0.x, true, global0.x, false), u_input.a.x, vec4<u32>(5678u, global3.x, 1u, 29424u)), Struct_1(vec4<bool>(true, true, global0.x, true), vec4<bool>(global0.x, false, global0.x, false), 0i, vec4<u32>(global1[_wgslsmith_index_u32(global3.x, 13u)], global1[_wgslsmith_index_u32(u_input.b.x, 13u)], 1u, 46599u))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -800f) + vec2<f32>(373f, -324f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1889f, -1090f, 866f), vec3<f32>(-481f, 597f, 323f))), vec3<f32>(1f, 1f, 1f))), Struct_1(func_4(Struct_2(Struct_1(vec4<bool>(false, global0.x, false, global0.x), vec4<bool>(true, false, false, global0.x), -1i, vec4<u32>(48230u, global1[_wgslsmith_index_u32(global3.x, 13u)], global3.x, 66006u)), Struct_1(vec4<bool>(global0.x, false, global0.x, false), vec4<bool>(false, global0.x, global0.x, global0.x), u_input.a.x, vec4<u32>(1u, 16487u, global1[_wgslsmith_index_u32(global3.x, 13u)], u_input.b.x))), vec3<f32>(1000f, -394f, 476f), Struct_1(vec4<bool>(true, global0.x, global0.x, false), vec4<bool>(true, true, global0.x, global0.x), 95818i, vec4<u32>(global3.x, u_input.b.x, u_input.b.x, 0u)), Struct_1(vec4<bool>(true, global0.x, false, false), vec4<bool>(false, false, true, true), u_input.a.x, vec4<u32>(global3.x, 3906u, global3.x, u_input.b.x))).a.a.a, vec4<bool>(true, true, true, true), ~(-1i), ~vec4<u32>(55739u, 93634u, 31285u, global3.x)), func_6(_wgslsmith_f_op_vec3_f32(vec3<f32>(874f, -1474f, -878f) * vec3<f32>(1148f, -921f, 515f)), u_input.a.yyx, func_6(vec3<f32>(1973f, 134f, 1287f), u_input.a.xxz, Struct_2(Struct_1(vec4<bool>(global0.x, false, true, true), vec4<bool>(true, global0.x, false, global0.x), 0i, vec4<u32>(17410u, 0u, global1[_wgslsmith_index_u32(10328u, 13u)], 0u)), Struct_1(vec4<bool>(false, global0.x, true, global0.x), vec4<bool>(global0.x, global0.x, global0.x, false), u_input.a.x, vec4<u32>(u_input.b.x, global1[_wgslsmith_index_u32(u_input.b.x, 13u)], global3.x, global3.x))), vec2<f32>(-112f, -254f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-495f, -856f) + vec2<f32>(186f, -934f))).b).c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-301f, _wgslsmith_f_op_f32(-155f - 1826f), 1303f)), Struct_1(vec4<bool>(all(global0.wwy), !global0.x, true, any(vec2<bool>(false, global0.x))), !(!vec4<bool>(global0.x, global0.x, global0.x, true)), countOneBits(2147483647i), ~vec4<u32>(global3.x, 0u, global3.x, u_input.b.x)), Struct_1(!(!vec4<bool>(global0.x, false, global0.x, global0.x)), !select(vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(false, false, global0.x, false), vec4<bool>(true, true, true, false)), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-1035i, u_input.a.x, 1i), vec3<i32>(2147483647i, u_input.a.x, u_input.a.x)), u_input.a.x & 0i), ~(~vec4<u32>(global3.x, u_input.b.x, 0u, 4205u)))).b, func_4(Struct_2(func_4(Struct_2(Struct_1(vec4<bool>(global0.x, true, true, global0.x), vec4<bool>(true, true, false, true), u_input.a.x, vec4<u32>(52608u, global1[_wgslsmith_index_u32(1u, 13u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 13u)], 13u)], 13u)], global1[_wgslsmith_index_u32(8255u, 13u)])), Struct_1(vec4<bool>(true, false, false, false), vec4<bool>(global0.x, global0.x, false, global0.x), u_input.a.x, vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 13u)], 13u)], 0u, global1[_wgslsmith_index_u32(1u, 13u)], 49206u))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-136f, 1163f, -2914f), vec3<f32>(-1037f, 2723f, 444f))), Struct_1(vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(false, false, true, global0.x), u_input.a.x, vec4<u32>(4294967295u, u_input.b.x, 0u, 1834u)), Struct_1(vec4<bool>(true, global0.x, false, global0.x), vec4<bool>(global0.x, global0.x, false, true), u_input.a.x, vec4<u32>(27327u, global1[_wgslsmith_index_u32(1u, 13u)], 1u, global1[_wgslsmith_index_u32(75753u, 13u)]))).a.a, func_4(func_6(vec3<f32>(-1467f, -700f, -512f), u_input.a.zzy, Struct_2(Struct_1(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), -3231i, vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(26252u, 13u)], global3.x, 89814u)), Struct_1(vec4<bool>(global0.x, false, false, true), vec4<bool>(global0.x, global0.x, global0.x, true), 2659i, vec4<u32>(41058u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 13u)], 13u)], 0u, 1u))), vec2<f32>(-1499f, 234f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(744f, -543f, 954f) + vec3<f32>(1211f, 498f, 260f)), func_2(u_input.a.zz, Struct_2(Struct_1(vec4<bool>(global0.x, global0.x, false, false), vec4<bool>(true, false, false, false), u_input.a.x, vec4<u32>(u_input.b.x, 0u, 4294967295u, global3.x)), Struct_1(vec4<bool>(true, false, true, false), vec4<bool>(global0.x, true, global0.x, true), -4442i, vec4<u32>(u_input.b.x, 15432u, 56097u, u_input.b.x))), vec4<i32>(u_input.a.x, u_input.a.x, 1i, 37001i), Struct_1(vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(false, global0.x, global0.x, true), u_input.a.x, vec4<u32>(19457u, 19987u, 0u, global1[_wgslsmith_index_u32(u_input.b.x, 13u)]))), Struct_1(vec4<bool>(false, global0.x, global0.x, true), vec4<bool>(false, global0.x, global0.x, global0.x), 11687i, vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, global1[_wgslsmith_index_u32(4294967295u, 13u)]))).c.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -668f, 790f)))) - vec3<f32>(_wgslsmith_div_f32(-925f, 863f), _wgslsmith_f_op_f32(f32(-1f) * -1508f), -1395f)), Struct_1(!(!vec4<bool>(global0.x, global0.x, false, global0.x)), func_4(func_6(vec3<f32>(1119f, 1806f, -995f), u_input.a.ywy, Struct_2(Struct_1(vec4<bool>(true, true, global0.x, true), vec4<bool>(global0.x, false, false, false), u_input.a.x, vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3.x, 13u)], 13u)], 45926u, 49203u, 1u)), Struct_1(vec4<bool>(false, false, global0.x, global0.x), vec4<bool>(global0.x, true, global0.x, global0.x), 0i, vec4<u32>(0u, global3.x, u_input.b.x, 1u))), vec2<f32>(1244f, -1114f)), vec3<f32>(1f, 1f, 1f), Struct_1(vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(true, global0.x, global0.x, global0.x), -2147483647i, vec4<u32>(3250u, global1[_wgslsmith_index_u32(global3.x, 13u)], u_input.b.x, u_input.b.x)), func_4(Struct_2(Struct_1(vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(true, global0.x, global0.x, true), 2147483647i, vec4<u32>(global3.x, u_input.b.x, global3.x, 0u)), Struct_1(vec4<bool>(false, true, true, global0.x), vec4<bool>(global0.x, true, true, true), -2147483647i, vec4<u32>(u_input.b.x, 93136u, 26280u, 86370u))), vec3<f32>(-139f, -461f, 1884f), Struct_1(vec4<bool>(true, global0.x, global0.x, true), vec4<bool>(false, false, true, global0.x), 1i, vec4<u32>(global3.x, global3.x, 1u, global1[_wgslsmith_index_u32(u_input.b.x, 13u)])), Struct_1(vec4<bool>(true, global0.x, global0.x, true), vec4<bool>(global0.x, false, false, global0.x), u_input.a.x, vec4<u32>(u_input.b.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(9793u, 13u)], 13u)], u_input.b.x, 51140u))).b.b).b.a.b, _wgslsmith_div_i32(u_input.a.x, 1i), ~vec4<u32>(global3.x, global1[_wgslsmith_index_u32(global3.x, 13u)], 75094u, u_input.b.x) >> (vec4<u32>(global1[_wgslsmith_index_u32(u_input.b.x, 13u)], 55255u, 0u, 1u) % vec4<u32>(32u))), Struct_1(!select(vec4<bool>(global0.x, false, global0.x, true), vec4<bool>(false, true, global0.x, global0.x), vec4<bool>(true, global0.x, false, false)), select(!vec4<bool>(true, global0.x, true, true), !vec4<bool>(true, global0.x, false, false), !vec4<bool>(true, global0.x, global0.x, false)), -56340i, vec4<u32>(24907u, global1[_wgslsmith_index_u32(6741u, 13u)], ~global1[_wgslsmith_index_u32(31712u, 13u)], _wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 13u)], 13u)], 4924u, u_input.b.x)))).b, _wgslsmith_dot_vec3_u32(abs(global3.yxx), ~global3.xyy));
    global3 = var_0.b.b.d;
    var var_1 = true;
    var var_2 = ~_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(~func_2(u_input.a.xx, Struct_2(Struct_1(var_0.c.b.a, vec4<bool>(global0.x, global0.x, var_0.b.a.b.x, false), 2147483647i, var_0.a.a.d), var_0.b.a), vec4<i32>(-27782i, -1i, u_input.a.x, var_0.a.b.c), var_0.c.b).d.zwz, vec3<u32>(4294967295u, ~global3.x, 1u)), (vec3<u32>(11833u, global3.x, global1[_wgslsmith_index_u32(48599u, 13u)]) >> (func_4(var_0.a, vec3<f32>(150f, 1471f, -187f), Struct_1(var_0.c.b.a, var_0.b.a.b, 0i, vec4<u32>(10213u, u_input.b.x, 35583u, 1u)), Struct_1(var_0.c.b.a, vec4<bool>(global0.x, false, true, true), u_input.a.x, var_0.c.b.d)).a.b.d.xyx % vec3<u32>(32u))) << (((vec3<u32>(4294967295u, 1u, var_0.d) & global3.wxz) | _wgslsmith_mod_vec3_u32(var_0.b.b.d.yzy, vec3<u32>(4294967295u, u_input.b.x, 0u))) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_dot_vec4_u32(var_0.c.a.d ^ vec4<u32>(u_input.b.x, 47619u, global3.x, var_0.d), var_0.a.b.d), _wgslsmith_dot_vec3_u32(~var_0.a.a.d.zwy, ~var_0.a.a.d.yxx), ~abs(1u)));
    global2 = ~(var_2.x << (global1[_wgslsmith_index_u32(~select(1u, 1u, false), 13u)] % 32u)) | 1u;
    var var_3 = ~func_6(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(1144f, Struct_3(u_input.a.xyw, var_0.a, global0.x)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-905f, 1673f, 1360f)))), max(vec3<i32>(1i, _wgslsmith_mod_i32(2147483647i, var_0.c.b.c), -u_input.a.x), select(firstTrailingBit(vec3<i32>(-2147483647i, var_0.c.a.c, u_input.a.x)), select(u_input.a.yzw, u_input.a.yxy, vec3<bool>(true, global0.x, global0.x)), any(vec4<bool>(true, var_0.a.a.a.x, var_0.c.a.a.x, global0.x)))), func_6(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(740f, 228f, 718f))), _wgslsmith_div_vec3_i32(-vec3<i32>(var_0.c.a.c, 71515i, 31799i), vec3<i32>(-2147483647i, 3729i, var_0.b.a.c) ^ vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), var_0.c, vec2<f32>(-110f, _wgslsmith_f_op_f32(1716f + 1503f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(991f, -758f))))).a.d.zzy;
    global3 = vec4<u32>(_wgslsmith_mod_u32(u_input.b.x, ~_wgslsmith_clamp_u32(1u, 0u, abs(12707u))), _wgslsmith_clamp_u32(5386u, ~(~_wgslsmith_mod_u32(u_input.b.x, 15400u)), 1u), ~global3.x, 0u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1321f, 602f, 968f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(826f, 1431f, -785f)), func_2(vec2<i32>(26508i, -26021i), var_0.a, vec4<i32>(u_input.a.x, var_0.b.b.c, u_input.a.x, -1i), var_0.a.a).a.x)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-548f, -559f, -459f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 238f, -2049f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-406f, 816f, 260f))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-616f, -901f, -442f) - vec3<f32>(2070f, 2030f, 1233f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 464f, 104f)))))));
}

