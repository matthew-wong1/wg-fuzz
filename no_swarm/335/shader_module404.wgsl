struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: bool,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: vec3<u32>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: bool,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 5> = array<Struct_4, 5>(Struct_4(true, vec3<f32>(-906f, 497f, 1000f)), Struct_4(true, vec3<f32>(890f, 436f, -617f)), Struct_4(false, vec3<f32>(1000f, 1438f, -391f)), Struct_4(false, vec3<f32>(-1501f, 1818f, 1006f)), Struct_4(true, vec3<f32>(-302f, -216f, -768f)));

var<private> global1: vec2<i32> = vec2<i32>(86326i, 56263i);

var<private> global2: array<i32, 27>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec3<bool>) -> vec2<i32> {
    var var_0 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -321f) * -256f))), arg_2.b.b), arg_1, Struct_1(_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(global1.x, 0i), vec2<i32>(58654i, arg_2.b.d.x)), arg_1.a), -_wgslsmith_sub_vec2_i32(vec2<i32>(arg_1.d.x, -24870i), u_input.a)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -139f))), false, u_input.b.zyy, countOneBits(arg_2.b.e)), arg_0.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.e), _wgslsmith_f_op_vec2_f32(arg_2.e - arg_2.e)));
    var_0 = Struct_2(_wgslsmith_f_op_f32(380f * arg_2.e.x), Struct_1(vec2<i32>(arg_2.b.a.x, 0i), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-710f * -563f))))), _wgslsmith_div_f32(arg_1.b, var_0.e.x) <= var_0.c.b, _wgslsmith_mult_vec3_i32(-vec3<i32>(1i, var_0.b.a.x, -2147483647i), u_input.b.zyy), var_0.b.d), Struct_1(_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(-vec2<i32>(u_input.a.x, arg_1.e.x), arg_1.d.yy << (arg_0.a.zy % vec2<u32>(32u))), firstTrailingBit(arg_2.b.d.xy)), -137f, 41176u < var_0.d.x, var_0.b.e, vec3<i32>(-13296i, global2[_wgslsmith_index_u32(~26371u, 27u)] ^ (-20015i | arg_2.c.e.x), ~(~u_input.a.x))), arg_2.d, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1223f, -873f) * var_0.e));
    global1 = -(u_input.b.yx ^ arg_1.e.zy);
    var var_1 = Struct_3(~vec3<u32>(1u, var_0.d.x, ~14236u));
    var var_2 = false;
    return -_wgslsmith_sub_vec2_i32(~min(vec2<i32>(1i, global2[_wgslsmith_index_u32(0u, 27u)]), _wgslsmith_div_vec2_i32(arg_2.c.d.xz, u_input.b.yw)), vec2<i32>(min(_wgslsmith_dot_vec2_i32(u_input.a, var_0.c.e.yz), firstTrailingBit(-324i)), 1i));
}

fn func_2(arg_0: bool, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: i32) -> vec2<i32> {
    let var_0 = arg_2;
    let var_1 = u_input.b.wyz;
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1343f))))), Struct_1(_wgslsmith_div_vec2_i32(reverseBits(func_3(Struct_3(vec3<u32>(arg_2.a.x, 8908u, arg_2.a.x)), Struct_1(u_input.a, -422f, false, vec3<i32>(arg_1.x, 21657i, -1429i), arg_1), Struct_2(-1000f, Struct_1(var_1.xx, 1494f, arg_0, vec3<i32>(-1i, 1i, var_1.x), u_input.b.xxx), Struct_1(vec2<i32>(var_1.x, global1.x), 147f, true, vec3<i32>(1i, global1.x, 1i), vec3<i32>(arg_3, 1i, 0i)), arg_2.a, vec2<f32>(413f, 1000f)), vec3<bool>(false, true, true))), var_1.zy), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(684f, -1080f) + 176f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(845f, -434f))), arg_0)), !(countOneBits(31638u) == abs(arg_2.a.x)), -_wgslsmith_sub_vec3_i32(vec3<i32>(0i, global2[_wgslsmith_index_u32(var_0.a.x, 27u)], u_input.a.x), firstLeadingBit(u_input.b.yyw)), select(_wgslsmith_mult_vec3_i32(~arg_1, vec3<i32>(-40518i, -2147483647i, arg_1.x)), min(countOneBits(var_1), vec3<i32>(arg_1.x, arg_3, global2[_wgslsmith_index_u32(4294967295u, 27u)])), !(!vec3<bool>(false, arg_0, arg_0)))), Struct_1(u_input.b.ww, _wgslsmith_f_op_f32(round(252f)), global2[_wgslsmith_index_u32(~reverseBits(var_0.a.x), 27u)] < _wgslsmith_mod_i32(global1.x, 2147483647i), _wgslsmith_mult_vec3_i32(vec3<i32>(~34538i, arg_1.x, -1i), u_input.b.xxx), vec3<i32>((-35262i ^ arg_1.x) << (abs(1u) % 32u), reverseBits(-var_1.x), _wgslsmith_dot_vec3_i32(max(vec3<i32>(var_1.x, var_1.x, -39096i), arg_1), var_1))), abs(var_0.a), vec2<f32>(1f, 1f));
    global1 = -vec2<i32>(global2[_wgslsmith_index_u32(firstTrailingBit(0u), 27u)], 28010i);
    return var_1.yx;
}

fn func_4(arg_0: Struct_2) -> Struct_3 {
    var var_0 = Struct_1(_wgslsmith_sub_vec2_i32(arg_0.b.d.zx, select(u_input.a, vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 23826i, global2[_wgslsmith_index_u32(arg_0.d.x, 27u)], 2147483647i), u_input.b), 2147483647i), !all(vec4<bool>(arg_0.b.c, false, true, arg_0.b.c)))), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1855f) + arg_0.b.b), -162f))), false, _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(abs(-2147483647i), global1.x, global1.x | -2147483647i), u_input.b.xxw), arg_0.c.d, arg_0.c.e), vec3<i32>(~arg_0.c.d.x, (1i << (~4294967295u % 32u)) | _wgslsmith_sub_i32(~(-1i), global2[_wgslsmith_index_u32(~arg_0.d.x, 27u)]), firstLeadingBit(arg_0.c.d.x)));
    let var_1 = arg_0.e;
    return Struct_3(arg_0.d);
}

fn func_5(arg_0: Struct_3) -> Struct_4 {
    global0 = array<Struct_4, 5>();
    var var_0 = !select(select(vec4<bool>(select(true, false, false), false, any(vec3<bool>(false, true, true)), all(vec2<bool>(true, true))), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true)), true), !vec4<bool>(arg_0.a.x != 24486u, true, true, all(vec2<bool>(true, true))), true);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 1208f)) + _wgslsmith_f_op_f32(floor(-285f))) + -192f) <= _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1148f - -1608f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-532f + 289f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -878f)));
    let var_2 = select(vec3<bool>(true, false, var_0.x), vec3<bool>(arg_0.a.x != _wgslsmith_sub_u32(4294967295u | arg_0.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(60445u, arg_0.a.x), arg_0.a.zx)), (true && var_0.x) && any(vec4<bool>(true, true, true, true)), true), any(vec2<bool>(all(var_0.xz), true)));
    global0 = array<Struct_4, 5>();
    return global0[_wgslsmith_index_u32(~arg_0.a.x, 5u)];
}

fn func_1(arg_0: i32) -> Struct_2 {
    global2 = array<i32, 27>();
    let var_0 = func_5(func_4(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(864f + -1000f) + -1535f), Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, global2[_wgslsmith_index_u32(0u, 27u)]), vec2<i32>(0i, u_input.a.x)), 771f, true, reverseBits(u_input.b.wzy), u_input.b.yyw), Struct_1(func_2(false, u_input.b.yzw, Struct_3(vec3<u32>(5211u, 46650u, 22686u)), global1.x), _wgslsmith_div_f32(2674f, 2163f), all(vec4<bool>(false, false, false, false)), abs(u_input.b.zyy), u_input.b.yzw), ~(~vec3<u32>(4294967295u, 0u, 12123u)), vec2<f32>(_wgslsmith_f_op_f32(-911f + 1447f), _wgslsmith_f_op_f32(1123f * -557f)))));
    var var_1 = Struct_3(~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(21815u, 32516u, 4294967295u), vec3<u32>(1u, 1u, 1u), max(vec3<u32>(13014u, 43172u, 7896u), vec3<u32>(1u, 4294967295u, 4294967295u)))));
    let var_2 = Struct_2(-556f, Struct_1(vec2<i32>(-u_input.b.x, global1.x | global1.x), _wgslsmith_f_op_f32(var_0.b.x - var_0.b.x), false, vec3<i32>(2147483647i, global2[_wgslsmith_index_u32(var_1.a.x, 27u)], _wgslsmith_dot_vec3_i32(u_input.b.wxx, vec3<i32>(arg_0, 28612i, 2147483647i) ^ u_input.b.wzw)), countOneBits(vec3<i32>(_wgslsmith_sub_i32(4545i, u_input.b.x), 1i, ~arg_0))), Struct_1(~(~(-vec2<i32>(-52880i, arg_0))), _wgslsmith_f_op_f32(-var_0.b.x), true, ~abs(min(vec3<i32>(-1i, arg_0, -1i), u_input.b.zww)), ~(-u_input.b.xwx)), var_1.a, vec2<f32>(_wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -432f) - -641f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -858f) + _wgslsmith_f_op_f32(f32(-1f) * -245f))))));
    global0 = array<Struct_4, 5>();
    return Struct_2(var_0.b.x, var_2.b, var_2.b, ~(~(~(~var_2.d))), _wgslsmith_f_op_vec2_f32(step(var_2.e, _wgslsmith_f_op_vec2_f32(var_0.b.xz + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_2.c.b, 518f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~72466u, 1u, reverseBits(reverseBits(4294967295u))), 27u)]);
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-var_0.a), func_1(var_0.b.a.x).b, Struct_1(vec2<i32>(_wgslsmith_add_i32(4631i, _wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, u_input.a.x, global2[_wgslsmith_index_u32(1u, 27u)], 15005i), u_input.b)), ~(-var_0.b.e.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-530f + -204f) + 1457f), !func_1(global1.x).c.c, var_0.c.d, ~u_input.b.ywz), vec3<u32>(var_0.d.x, var_0.d.x, var_0.d.x) ^ var_0.d, _wgslsmith_f_op_vec2_f32(-var_0.e));
    var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.a)) - _wgslsmith_f_op_f32(ceil(-629f))), func_1(~(-select(u_input.b.x, 2147483647i, true))).b, var_1.b, reverseBits(reverseBits(select(_wgslsmith_clamp_vec3_u32(var_1.d, vec3<u32>(42621u, 1u, var_0.d.x), var_1.d), vec3<u32>(var_0.d.x, var_0.d.x, var_1.d.x) & vec3<u32>(60920u, 0u, var_0.d.x), select(vec3<bool>(var_1.c.c, true, var_0.c.c), vec3<bool>(false, false, false), true)))), var_1.e);
    var var_2 = true;
    let var_3 = func_4(func_1(2147483647i));
    var var_4 = vec4<u32>(var_0.d.x, ~countOneBits(~1u), ~firstTrailingBit(~var_0.d.x), 39274u);
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(var_4.wzw, var_3.a), ~vec3<u32>(28647u, 1u, var_4.x)), ~_wgslsmith_clamp_u32(var_1.d.x, 14209u, var_0.d.x))), 27u)]);
}

