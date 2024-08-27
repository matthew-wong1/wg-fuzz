struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_2,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: i32,
    d: vec3<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec3<f32>(-1856f, 691f, 1874f), false, 2147483647i, 38282u), Struct_1(vec3<f32>(-374f, 567f, -290f), false, -18662i, 26286u), Struct_1(vec3<f32>(340f, 1396f, -648f), false, 0i, 0u), Struct_1(vec3<f32>(-378f, 355f, 386f), true, 1i, 50244u), Struct_1(vec3<f32>(-529f, 627f, 179f), false, -15443i, 36477u), Struct_1(vec3<f32>(-513f, 284f, -450f), false, -6962i, 28679u), Struct_1(vec3<f32>(994f, -281f, 936f), true, -1i, 50371u), Struct_1(vec3<f32>(-207f, -624f, -1000f), false, -9154i, 45299u), Struct_1(vec3<f32>(-303f, 907f, -1000f), true, 19220i, 113099u), Struct_1(vec3<f32>(434f, 214f, -2283f), false, 4817i, 46359u), Struct_1(vec3<f32>(-128f, 335f, 1973f), true, -20388i, 107954u), Struct_1(vec3<f32>(-855f, -562f, -105f), false, -1i, 41474u), Struct_1(vec3<f32>(467f, -406f, 1000f), true, 2147483647i, 32956u), Struct_1(vec3<f32>(-126f, 1021f, -151f), true, 2147483647i, 0u), Struct_1(vec3<f32>(-1133f, 680f, -1197f), true, -4106i, 1u), Struct_1(vec3<f32>(-1326f, -884f, 915f), true, 2147483647i, 1u), Struct_1(vec3<f32>(-1000f, -969f, -500f), true, 24087i, 0u), Struct_1(vec3<f32>(-161f, -1601f, -646f), true, 0i, 0u), Struct_1(vec3<f32>(-723f, -136f, -1000f), false, 0i, 1u), Struct_1(vec3<f32>(1022f, -942f, 202f), false, -22419i, 0u), Struct_1(vec3<f32>(-446f, 322f, -601f), false, 56072i, 4294967295u), Struct_1(vec3<f32>(599f, -1000f, -747f), false, i32(-2147483648), 1u));

var<private> global1: array<vec4<bool>, 11>;

var<private> global2: vec4<i32> = vec4<i32>(-35707i, -9354i, i32(-2147483648), -46064i);

var<private> global3: array<vec4<bool>, 1> = array<vec4<bool>, 1>(vec4<bool>(true, true, true, true));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: vec3<bool>, arg_1: f32, arg_2: vec4<u32>, arg_3: Struct_2) -> Struct_2 {
    return Struct_2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_3.a), arg_3.a))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_3.b.a.x, arg_3.c.a.x, 1267f), vec3<f32>(-1241f, arg_1, arg_3.a.x), false)) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1, -1097f, arg_3.b.a.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, -391f, arg_3.c.a.x) - arg_3.c.a)))), true, _wgslsmith_dot_vec3_i32(global2.yxx, global2.wxw), 1u), arg_3.b);
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = true;
    var var_1 = func_2(!(!vec3<bool>(false, arg_1, arg_0.c.b)), _wgslsmith_f_op_f32(arg_0.b.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1419f)) * _wgslsmith_f_op_f32(f32(-1f) * -721f)))), ~vec4<u32>(~91813u, ~u_input.d.x, arg_0.b.d, 65245u) << (u_input.c % vec4<u32>(32u)), Struct_2(_wgslsmith_f_op_vec4_f32(sign(arg_0.a)), global0[_wgslsmith_index_u32(~u_input.c.x << (0u % 32u), 22u)], Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-2164f, arg_2.x, arg_0.b.a.x) * vec3<f32>(arg_2.x, arg_2.x, arg_0.a.x))), all(select(vec4<bool>(true, var_0, false, true), vec4<bool>(false, var_0, arg_0.b.b, arg_0.b.b), arg_1)), 2147483647i, countOneBits(7515u)))).b;
    var var_2 = arg_0.b;
    let var_3 = -2147483647i;
    var var_4 = Struct_1(func_2(!vec3<bool>(all(vec3<bool>(true, arg_1, arg_0.b.b)), true, var_0 || var_1.b), 379f, u_input.c, func_2(!vec3<bool>(false, var_1.b, arg_0.c.b), _wgslsmith_div_f32(arg_2.x, -1878f), _wgslsmith_mult_vec4_u32(vec4<u32>(var_1.d, arg_0.b.d, 47802u, 18553u) ^ u_input.c, vec4<u32>(4294967295u, var_1.d, 1u, 1u)), arg_0)).c.a, var_1.b, var_2.c, var_2.d);
    return arg_0.b;
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1) -> Struct_2 {
    let var_0 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-arg_2.a.x), -291f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -322f))), _wgslsmith_f_op_f32(-arg_2.a.x)), global0[_wgslsmith_index_u32(arg_1.b.d, 22u)], arg_2);
    let var_1 = func_2(select(select(select(select(vec3<bool>(arg_1.b.b, false, false), vec3<bool>(true, arg_2.b, false), false), vec3<bool>(arg_2.b, arg_2.b, false), true), select(vec3<bool>(false, arg_2.b, false), vec3<bool>(true, var_0.b.b, true), !vec3<bool>(arg_2.b, arg_2.b, arg_2.b)), func_3(func_2(vec3<bool>(false, false, true), -1043f, u_input.c, Struct_2(var_0.a, var_0.b, var_0.b)), arg_1.b.b, _wgslsmith_div_vec2_f32(arg_2.a.yy, vec2<f32>(var_0.c.a.x, arg_2.a.x))).b), vec3<bool>(all(vec3<bool>(arg_1.c.b, true, arg_1.b.b)), false, false), select(!(!vec3<bool>(false, true, arg_2.b)), !select(vec3<bool>(true, arg_2.b, arg_1.c.b), vec3<bool>(arg_1.b.b, true, true), false), !(!vec3<bool>(arg_1.c.b, true, false)))), -181f, _wgslsmith_mod_vec4_u32(u_input.c & u_input.c, u_input.c), func_2(select(!(!vec3<bool>(false, false, arg_1.b.b)), select(select(vec3<bool>(false, false, true), vec3<bool>(arg_2.b, true, false), arg_2.b), !vec3<bool>(false, true, var_0.c.b), true), arg_1.b.b), -2625f, ~vec4<u32>(u_input.b, _wgslsmith_mod_u32(var_0.b.d, 93705u), ~34271u, ~9684u), var_0));
    var var_2 = _wgslsmith_dot_vec3_i32(~(-_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(global2.zxw, global2.xwz), countOneBits(vec3<i32>(global2.x, arg_1.b.c, 2147483647i)))), global2.wxx << (~(~(~u_input.c.wzw)) % vec3<u32>(32u)));
    global0 = array<Struct_1, 22>();
    let var_3 = vec4<f32>(var_1.c.a.x, _wgslsmith_f_op_f32(1000f + _wgslsmith_div_f32(var_1.a.x, arg_2.a.x)), -1585f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(arg_1.c.a.x)), arg_0)))))));
    return arg_1;
}

fn func_5(arg_0: i32, arg_1: Struct_2, arg_2: i32) -> Struct_3 {
    var var_0 = func_2(select(select(select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(arg_1.c.b, false, true)), select(vec3<bool>(true, arg_1.b.b, arg_1.b.b), vec3<bool>(false, arg_1.c.b, false), false), vec3<bool>(arg_1.b.b, arg_1.b.b, arg_1.b.b)), vec3<bool>(arg_1.c.b, false, !arg_1.b.b), 31835u >= ~u_input.b), !select(select(vec3<bool>(false, arg_1.b.b, true), vec3<bool>(false, false, arg_1.b.b), arg_1.b.b), vec3<bool>(true, false, arg_1.c.b), arg_1.c.b), 4294967295u < min(20735u >> (u_input.b % 32u), select(u_input.d.x, 5553u, arg_1.c.b))), 125f, vec4<u32>(arg_1.c.d, ~reverseBits(68032u), ~_wgslsmith_div_u32(func_3(arg_1, false, arg_1.a.wx).d, 0u), 22721u), func_2(!select(vec3<bool>(arg_1.c.b, arg_1.b.b, arg_1.c.b), !vec3<bool>(arg_1.b.b, arg_1.c.b, true), true | arg_1.b.b), func_3(arg_1, arg_1.c.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1317f, 1477f)))).a.x, vec4<u32>(u_input.c.x, 72642u, 29230u, ~(~arg_1.c.d)), func_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1215f, arg_1.b.a.x))), func_4(_wgslsmith_f_op_f32(608f - -2303f), Struct_2(vec4<f32>(-248f, arg_1.c.a.x, -399f, 1745f), global0[_wgslsmith_index_u32(0u, 22u)], global0[_wgslsmith_index_u32(53721u, 22u)]), arg_1.c), arg_1.c))).b;
    global2 = countOneBits(~vec4<i32>(2147483647i, _wgslsmith_mult_i32(countOneBits(global2.x), ~20648i), func_4(-1000f, arg_1, func_3(Struct_2(arg_1.a, Struct_1(var_0.a, var_0.b, -1i, 0u), global0[_wgslsmith_index_u32(4949u, 22u)]), var_0.b, vec2<f32>(-875f, var_0.a.x))).c.c, ~arg_1.b.c));
    let var_1 = arg_2;
    global2 = vec4<i32>(-1i, -global2.x, abs(-59531i << (abs(1u) % 32u)), ~(-1i));
    var var_2 = _wgslsmith_dot_vec4_u32(~u_input.c, ~_wgslsmith_div_vec4_u32(firstLeadingBit(u_input.c), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.d, 0u, 4294967295u, arg_1.b.d), u_input.c)) ^ reverseBits(abs(vec4<u32>(0u, u_input.c.x, var_0.d, 59204u)) | select(u_input.c, u_input.c, vec4<bool>(var_0.b, true, false, true))));
    return Struct_3(var_0.b, Struct_2(vec4<f32>(var_0.a.x, -1083f, 1057f, -1687f), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.a.x))), Struct_2(arg_1.a, Struct_1(var_0.a, false, u_input.e, 4294967295u), arg_1.b), func_3(Struct_2(vec4<f32>(1947f, -216f, var_0.a.x, 1759f), Struct_1(arg_1.b.a, false, u_input.e, arg_1.c.d), Struct_1(var_0.a, arg_1.c.b, arg_1.b.c, 16429u)), true, arg_1.b.a.xx)).b, func_3(arg_1, true, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -789f), -1000f))), arg_1, ~_wgslsmith_mod_vec4_u32(u_input.c | vec4<u32>(43961u, 66050u, var_0.d, u_input.d.x), abs(_wgslsmith_mod_vec4_u32(u_input.c, vec4<u32>(var_0.d, arg_1.b.d, var_0.d, u_input.b)))));
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_2) -> vec2<bool> {
    let var_0 = ~min(vec3<u32>(arg_2.b.c.d, ~(u_input.b & 4294967295u), _wgslsmith_dot_vec2_u32(u_input.d, min(vec2<u32>(arg_1.b.d, 0u), vec2<u32>(1u, arg_2.b.b.d)))), ~vec3<u32>(12389u, arg_1.c.d, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, arg_3.c.d), vec2<u32>(43748u, arg_1.b.d))));
    let var_1 = func_5(u_input.e, func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-835f - 1123f))), arg_3, func_3(func_2(!vec3<bool>(arg_3.c.b, true, arg_2.a), 716f, abs(vec4<u32>(u_input.b, u_input.d.x, u_input.c.x, arg_2.d.x)), Struct_2(arg_3.a, global0[_wgslsmith_index_u32(u_input.d.x, 22u)], arg_3.b)), true, arg_3.a.xw)), arg_2.c.c.c);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(arg_1.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1591f, 453f, arg_1.c.a.x) + vec4<f32>(-1366f, 1357f, arg_1.a.x, arg_3.b.a.x)))))) - _wgslsmith_f_op_vec4_f32(-arg_2.c.a));
    global2 = ~(~((_wgslsmith_sub_vec4_i32(vec4<i32>(global2.x, u_input.a, arg_2.b.b.c, 23177i), vec4<i32>(u_input.a, u_input.a, arg_3.b.c, 49680i)) << (~var_1.d % vec4<u32>(32u))) ^ select(vec4<i32>(arg_3.c.c, u_input.e, -11969i, arg_3.b.c), vec4<i32>(var_1.c.c.c, u_input.e, global2.x, 1i), !vec4<bool>(arg_2.c.c.b, true, true, arg_2.b.c.b))));
    global3 = array<vec4<bool>, 1>();
    return !vec2<bool>(var_1.a, !any(vec3<bool>(true, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<bool>, 1>();
    let var_0 = ~_wgslsmith_div_u32(u_input.d.x, ~_wgslsmith_sub_u32(u_input.d.x | 1250u, 1u));
    let var_1 = max(vec4<i32>(1i, global2.x << (var_0 % 32u), _wgslsmith_mod_i32(_wgslsmith_div_i32(2147483647i, u_input.e), u_input.e) >> (_wgslsmith_dot_vec2_u32(~vec2<u32>(var_0, 55502u), ~u_input.d) % 32u), global2.x << (countOneBits(u_input.c.x) % 32u)), select(firstLeadingBit(~vec4<i32>(1177i, global2.x, -16685i, global2.x)), ~vec4<i32>(_wgslsmith_mod_i32(-34241i, u_input.a), ~global2.x, u_input.e, i32(-1i) * -61615i), all(func_1(1u, Struct_2(vec4<f32>(-665f, -1263f, -687f, -572f), Struct_1(vec3<f32>(-1305f, 869f, -2012f), false, u_input.e, var_0), Struct_1(vec3<f32>(-994f, -942f, -207f), true, u_input.e, u_input.b)), Struct_3(false, Struct_2(vec4<f32>(566f, 1147f, -1000f, 724f), global0[_wgslsmith_index_u32(4294967295u, 22u)], global0[_wgslsmith_index_u32(var_0, 22u)]), Struct_2(vec4<f32>(-174f, 444f, -465f, -161f), global0[_wgslsmith_index_u32(u_input.c.x, 22u)], Struct_1(vec3<f32>(-141f, -1750f, -325f), false, u_input.a, 4294967295u)), u_input.c), Struct_2(vec4<f32>(-1312f, -1163f, -1478f, 1352f), Struct_1(vec3<f32>(1151f, 1106f, -732f), false, -2147483647i, u_input.c.x), Struct_1(vec3<f32>(2558f, 102f, 758f), true, -11790i, 15295u))))));
    let var_2 = Struct_3(true, func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-367f * -718f)), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1108f, 1161f, 2436f, -1692f))), Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(1342f, 1000f, 1281f), vec3<f32>(228f, -465f, 695f)), true, max(1i, u_input.e), firstLeadingBit(var_0)), Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(501f, -1842f, -651f), vec3<f32>(447f, 1000f, 628f), vec3<bool>(false, true, true))), false, -38796i, 1u)), func_3(Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-498f, -1000f, -152f, 649f)), global0[_wgslsmith_index_u32(func_5(42910i, Struct_2(vec4<f32>(951f, 1488f, 234f, -848f), Struct_1(vec3<f32>(338f, -545f, -143f), false, var_1.x, var_0), Struct_1(vec3<f32>(-991f, 715f, 335f), false, var_1.x, u_input.b)), var_1.x).d.x, 22u)], global0[_wgslsmith_index_u32(abs(1u), 22u)]), any(vec4<bool>(true, false, true, false)) || true, _wgslsmith_f_op_vec2_f32(select(func_5(global2.x, Struct_2(vec4<f32>(-1459f, -1429f, 136f, 1111f), Struct_1(vec3<f32>(1000f, -1086f, -1443f), false, var_1.x, 4294967295u), Struct_1(vec3<f32>(454f, -377f, 676f), false, var_1.x, u_input.d.x)), u_input.a).b.c.a.yz, vec2<f32>(-1000f, -658f), global2.x != var_1.x)))), func_5(~1i, Struct_2(vec4<f32>(1000f, 622f, -979f, _wgslsmith_f_op_f32(-1715f - -673f)), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(1102f, -739f, -792f) + vec3<f32>(-1041f, -606f, -316f)), true, -2147483647i, 74067u >> (var_0 % 32u)), func_5(19713i, Struct_2(vec4<f32>(788f, -525f, -687f, 1362f), global0[_wgslsmith_index_u32(u_input.c.x, 22u)], Struct_1(vec3<f32>(594f, 253f, -1064f), true, -26957i, 3501u)), _wgslsmith_sub_i32(global2.x, -2147483647i)).c.c), _wgslsmith_dot_vec2_i32(~var_1.zz, vec2<i32>(select(-1i, 12254i, true), var_1.x))).b, ~vec4<u32>(func_3(Struct_2(vec4<f32>(836f, 110f, 531f, -1551f), Struct_1(vec3<f32>(1284f, 128f, 657f), true, global2.x, 61388u), global0[_wgslsmith_index_u32(var_0, 22u)]), true, vec2<f32>(1574f, -1152f)).d, var_0, abs(0u), ~1u) | firstTrailingBit(~vec4<u32>(17507u, var_0, 1u, var_0)));
    var var_3 = var_2.b;
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + -762f), var_2.c.b.a.x) + _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(-var_2.b.b.a.x), Struct_2(_wgslsmith_f_op_vec4_f32(-var_2.b.a), global0[_wgslsmith_index_u32(reverseBits(36781u), 22u)], func_2(vec3<bool>(var_2.a, var_2.a, true), var_3.b.a.x, u_input.c, Struct_2(var_2.c.a, var_3.c, Struct_1(vec3<f32>(158f, var_2.c.b.a.x, 1000f), var_2.a, var_3.b.c, var_0))).c), func_2(vec3<bool>(var_2.b.b.b, true, var_2.c.b.b), _wgslsmith_f_op_f32(-1000f * 1834f), var_2.d, var_2.b).c).a.x + _wgslsmith_f_op_f32(-func_4(_wgslsmith_div_f32(-205f, 775f), var_2.c, Struct_1(vec3<f32>(var_2.c.a.x, var_3.c.a.x, var_3.b.a.x), false, var_3.c.c, u_input.b)).b.a.x)));
    let var_5 = func_5(abs(-var_2.c.b.c), var_2.c, 1i).c;
    let x = u_input.a;
    s_output = StorageBuffer(~0u & reverseBits(~var_5.c.d), var_2.b.b.a.yx, var_3.b.c, vec3<u32>(func_2(select(select(vec3<bool>(false, var_3.b.b, true), vec3<bool>(var_3.c.b, false, false), vec3<bool>(var_5.b.b, false, true)), select(vec3<bool>(var_5.b.b, false, var_5.b.b), vec3<bool>(var_3.b.b, false, var_2.b.c.b), var_3.b.b), true), _wgslsmith_f_op_f32(f32(-1f) * -261f), vec4<u32>(1u, ~u_input.b, 1u, ~0u), Struct_2(_wgslsmith_f_op_vec4_f32(var_3.a - var_5.a), func_4(var_3.a.x, var_5, var_3.c).b, func_3(var_2.c, var_5.c.b, var_2.b.b.a.xx))).b.d, abs(var_2.d.x), var_2.d.x >> (u_input.d.x % 32u)), vec4<f32>(1376f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f * -643f), var_3.b.a.x)))), var_3.b.a.x, _wgslsmith_f_op_f32(-1016f + func_3(var_5, true & var_3.c.b, _wgslsmith_f_op_vec2_f32(-var_3.b.a.yx)).a.x)));
}

