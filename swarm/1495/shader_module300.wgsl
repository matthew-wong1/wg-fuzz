struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec4<bool>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: f32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 19>;

var<private> global1: vec2<bool> = vec2<bool>(true, true);

var<private> global2: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(false, vec4<i32>(-1i, i32(-2147483648), 0i, -1i), vec4<i32>(-37536i, -1i, 2147483647i, -1i), vec4<bool>(true, true, true, true), vec3<u32>(61335u, 1u, 0u)), Struct_1(true, vec4<i32>(13320i, 0i, -36516i, 11214i), vec4<i32>(-301i, -1i, -1i, 2147483647i), vec4<bool>(true, true, false, false), vec3<u32>(85172u, 4294967295u, 0u)), Struct_1(false, vec4<i32>(-16093i, 0i, -1316i, 2147483647i), vec4<i32>(2147483647i, -45331i, 39411i, 2147483647i), vec4<bool>(false, false, true, true), vec3<u32>(0u, 29918u, 1u)), Struct_1(false, vec4<i32>(5819i, 1i, 44514i, 1i), vec4<i32>(2147483647i, -29460i, -3709i, 10262i), vec4<bool>(true, false, true, false), vec3<u32>(29984u, 10649u, 40520u)), Struct_1(false, vec4<i32>(-8401i, 1i, 0i, 0i), vec4<i32>(0i, 4816i, -1i, -1i), vec4<bool>(false, true, true, false), vec3<u32>(4294967295u, 1u, 20010u)), Struct_1(true, vec4<i32>(-52178i, i32(-2147483648), 1i, 27245i), vec4<i32>(3540i, 29272i, -23650i, 11645i), vec4<bool>(false, false, true, false), vec3<u32>(43082u, 4294967295u, 1u)), Struct_1(true, vec4<i32>(8648i, -11798i, -16611i, 0i), vec4<i32>(24143i, 1i, 10257i, 37470i), vec4<bool>(true, true, true, true), vec3<u32>(40267u, 1u, 0u)), Struct_1(false, vec4<i32>(0i, 2147483647i, 46119i, 32550i), vec4<i32>(i32(-2147483648), 0i, -7333i, 8781i), vec4<bool>(true, false, false, false), vec3<u32>(4294967295u, 4294967295u, 0u)), Struct_1(false, vec4<i32>(21991i, 47425i, 2147483647i, 2147483647i), vec4<i32>(-1i, -2760i, 77698i, -25927i), vec4<bool>(true, true, false, false), vec3<u32>(1u, 0u, 10943u)), Struct_1(true, vec4<i32>(33436i, 0i, 54161i, 2147483647i), vec4<i32>(-40807i, 0i, -26950i, 8555i), vec4<bool>(true, true, true, true), vec3<u32>(0u, 22273u, 1u)), Struct_1(false, vec4<i32>(-2770i, -31913i, 14149i, -29451i), vec4<i32>(57199i, 0i, 2147483647i, -20838i), vec4<bool>(true, false, false, false), vec3<u32>(41135u, 4294967295u, 64314u)), Struct_1(false, vec4<i32>(1i, -1i, 1i, -22988i), vec4<i32>(0i, 27036i, -10581i, 54773i), vec4<bool>(false, true, true, true), vec3<u32>(1u, 1u, 4294967295u)), Struct_1(true, vec4<i32>(0i, 1i, 2001i, 29323i), vec4<i32>(27494i, -21864i, i32(-2147483648), 7492i), vec4<bool>(false, false, false, false), vec3<u32>(109858u, 11333u, 5049u)), Struct_1(false, vec4<i32>(0i, i32(-2147483648), 1i, 12185i), vec4<i32>(-21671i, -47284i, 3868i, -46344i), vec4<bool>(true, false, false, true), vec3<u32>(4294967295u, 30353u, 36843u)), Struct_1(false, vec4<i32>(2147483647i, 0i, 2147483647i, -1i), vec4<i32>(i32(-2147483648), i32(-2147483648), 35332i, 23984i), vec4<bool>(true, false, false, true), vec3<u32>(19447u, 56453u, 1u)), Struct_1(true, vec4<i32>(2147483647i, 2147483647i, -41739i, -1i), vec4<i32>(33781i, 48749i, 0i, 6574i), vec4<bool>(true, true, false, true), vec3<u32>(26786u, 37773u, 1030u)), Struct_1(true, vec4<i32>(27245i, -46450i, -32240i, 40383i), vec4<i32>(-1i, -1i, -1i, -1i), vec4<bool>(true, false, false, true), vec3<u32>(1u, 1u, 57411u)), Struct_1(false, vec4<i32>(1i, i32(-2147483648), 0i, 1i), vec4<i32>(9057i, -54057i, 1i, 2147483647i), vec4<bool>(true, true, false, true), vec3<u32>(26043u, 30704u, 0u)), Struct_1(false, vec4<i32>(0i, -20113i, i32(-2147483648), -1i), vec4<i32>(i32(-2147483648), 24646i, -37160i, -1i), vec4<bool>(true, false, true, true), vec3<u32>(0u, 1u, 0u)), Struct_1(false, vec4<i32>(-1i, 0i, -12454i, 51640i), vec4<i32>(i32(-2147483648), 1i, -26486i, 21662i), vec4<bool>(false, false, false, false), vec3<u32>(57716u, 4294967295u, 2493u)), Struct_1(true, vec4<i32>(-9519i, 1i, 57924i, 2147483647i), vec4<i32>(79182i, 1i, i32(-2147483648), i32(-2147483648)), vec4<bool>(true, false, true, true), vec3<u32>(1u, 0u, 41799u)), Struct_1(false, vec4<i32>(-15895i, -32372i, -42889i, 33403i), vec4<i32>(30862i, 8650i, i32(-2147483648), -14238i), vec4<bool>(false, false, false, true), vec3<u32>(1u, 989u, 43979u)), Struct_1(true, vec4<i32>(-40405i, i32(-2147483648), 2147483647i, -65782i), vec4<i32>(55490i, 13182i, -5407i, 1i), vec4<bool>(true, true, true, true), vec3<u32>(0u, 8276u, 57344u)));

var<private> global3: Struct_3 = Struct_3(Struct_1(true, vec4<i32>(-22855i, 0i, -43600i, 2147483647i), vec4<i32>(1i, -1i, 1i, 0i), vec4<bool>(true, true, true, true), vec3<u32>(4294967295u, 0u, 4294967295u)), i32(-2147483648), Struct_1(false, vec4<i32>(i32(-2147483648), i32(-2147483648), 4180i, i32(-2147483648)), vec4<i32>(31339i, 0i, 0i, 23385i), vec4<bool>(true, true, false, true), vec3<u32>(37074u, 35891u, 4294967295u)), vec4<i32>(66198i, 20967i, 1i, -14278i));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> vec3<f32> {
    global1 = !select(select(select(global3.a.d.ww, global3.c.d.xy, !global3.a.d.zz), vec2<bool>(true, global3.a.a), true), vec2<bool>(!all(global3.c.d.zy), global1.x), !all(vec4<bool>(false, false, true, global1.x)));
    var var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1931f), 701f, _wgslsmith_f_op_f32(-279f * _wgslsmith_f_op_f32(select(1367f, 821f, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1352f, 378f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, -163f, 303f, -1003f), vec4<f32>(348f, 457f, -1867f, -911f))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(379f, 949f, 1000f, 387f)))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-194f, _wgslsmith_f_op_f32(-1122f - -212f), -970f, -1019f))));
    let var_1 = var_0.xzx;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-742f * 1619f) + _wgslsmith_f_op_f32(-2308f * 1059f)), var_0.x, _wgslsmith_f_op_f32(-860f * _wgslsmith_f_op_f32(f32(-1f) * -1000f))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, var_1.x, -444f, -333f) + _wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, -891f, var_0.x, var_0.x), vec4<f32>(var_0.x, -230f, var_1.x, 840f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.x, var_0.x, var_1.x, 1290f)))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.x, -988f, 806f, -102f))), vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-1236f * -1167f), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x))))));
    global2 = array<Struct_1, 23>();
    return var_0.zyy;
}

fn func_2(arg_0: vec2<f32>, arg_1: f32) -> Struct_3 {
    let var_0 = global3.c.d.ww;
    var var_1 = _wgslsmith_f_op_vec3_f32(func_3());
    global0 = array<i32, 19>();
    global2 = array<Struct_1, 23>();
    let var_2 = ~vec4<u32>(0u, 96779u, (71865u << (global3.c.e.x % 32u)) ^ ~(30899u & u_input.b), _wgslsmith_dot_vec3_u32(~global3.a.e, vec3<u32>(global3.c.e.x, ~6801u, 1u)));
    return Struct_3(Struct_1(global3.c.a, global3.d, global3.d, vec4<bool>(!global1.x, _wgslsmith_div_f32(arg_0.x, var_1.x) != -881f, true, any(vec2<bool>(global3.c.a, true)) | global1.x), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(global3.a.e.x, 25785u, 38641u), firstLeadingBit(var_2.zyy), vec3<u32>(global3.a.e.x, 4294967295u, u_input.b))), -1i, Struct_1(false, ~global3.a.c, global3.d, !(!select(global3.a.d, vec4<bool>(global3.a.d.x, true, true, false), true)), global3.c.e), _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(abs(vec4<i32>(0i, global3.c.c.x, global3.a.c.x, -801i)), firstLeadingBit(global3.d)), abs(global3.a.c)), vec4<i32>(0i, _wgslsmith_clamp_i32(u_input.a, -1i, 1i), global3.b, ~u_input.a) ^ _wgslsmith_clamp_vec4_i32(~vec4<i32>(global3.b, -28640i, -2147483647i, u_input.a), -vec4<i32>(u_input.a, global0[_wgslsmith_index_u32(4294967295u, 19u)], 24754i, global0[_wgslsmith_index_u32(var_2.x, 19u)]), vec4<i32>(global3.c.c.x, 2147483647i, global3.d.x, global3.b))));
}

fn func_4(arg_0: Struct_3, arg_1: i32) -> bool {
    var var_0 = Struct_1(global3.a.d.x, _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(~select(vec4<i32>(-19268i, global0[_wgslsmith_index_u32(u_input.b, 19u)], arg_0.a.c.x, 64055i), global3.c.b, true), -vec4<i32>(-2147483647i, 2147483647i, arg_0.a.b.x, -1i) ^ ~vec4<i32>(global0[_wgslsmith_index_u32(arg_0.c.e.x, 19u)], global0[_wgslsmith_index_u32(0u, 19u)], -1i, 0i)), arg_0.a.b), ~(-arg_0.d << (_wgslsmith_mult_vec4_u32(vec4<u32>(0u, arg_0.c.e.x, 41057u, 4294967295u), vec4<u32>(1u, 0u, 41206u, u_input.b) >> (vec4<u32>(arg_0.a.e.x, 1u, arg_0.c.e.x, arg_0.c.e.x) % vec4<u32>(32u))) % vec4<u32>(32u))), arg_0.a.d, ~_wgslsmith_mod_vec3_u32(vec3<u32>(global3.a.e.x, 1u, arg_0.a.e.x), arg_0.a.e >> (~arg_0.a.e % vec3<u32>(32u))));
    var var_1 = vec4<i32>(-1i) * -abs(vec4<i32>(~2147483647i, var_0.c.x, _wgslsmith_clamp_i32(u_input.a, -1i, arg_1), _wgslsmith_clamp_i32(1i, u_input.a, u_input.a)));
    let var_2 = !vec3<bool>(false, !arg_0.a.d.x, any(vec2<bool>(20250i <= var_0.b.x, true)));
    var_1 = vec4<i32>(abs(i32(-1i) * -u_input.a), _wgslsmith_div_i32(_wgslsmith_sub_i32(firstLeadingBit(u_input.a), var_1.x) & ~(~var_0.b.x), _wgslsmith_mult_i32(abs(reverseBits(-1i)), arg_1)), _wgslsmith_sub_i32(-(var_0.b.x & -u_input.a), 1i), var_0.c.x);
    let var_3 = Struct_1(true, -global3.c.b, _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(-54749i, u_input.a, -19176i, -2147483647i)), ~(-var_0.b)), var_0.b), func_2(vec2<f32>(_wgslsmith_f_op_vec3_f32(func_3()).x, 1522f), -133f).a.d, select(~abs(arg_0.a.e), _wgslsmith_add_vec3_u32(select(global3.a.e, global3.a.e, vec3<bool>(var_0.d.x, var_2.x, global3.c.d.x)), vec3<u32>(64494u, global3.c.e.x, var_0.e.x) | global3.c.e), true) ^ firstLeadingBit(vec3<u32>(_wgslsmith_sub_u32(arg_0.c.e.x, 4294967295u), global3.c.e.x, abs(global3.a.e.x))));
    return !((countOneBits(select(var_0.e.x, 0u, false)) | var_3.e.x) >= global3.a.e.x);
}

fn func_1(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: u32, arg_3: vec4<f32>) -> Struct_2 {
    global1 = arg_0.a.d.xw;
    var var_0 = Struct_1(func_4(func_2(_wgslsmith_f_op_vec2_f32(-arg_3.xx), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x * 733f))), ~(-2147483647i)), arg_0.a.c, arg_0.a.c, vec4<bool>(false, arg_0.a.a, true, arg_0.a.a), vec3<u32>(abs(0u), ~func_2(vec2<f32>(-447f, arg_3.x), arg_3.x).c.e.x, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(20280u, 1u, arg_2), arg_0.a.e))));
    var var_1 = Struct_2(global3.a);
    var var_2 = Struct_2(global3.c);
    global0 = array<i32, 19>();
    return Struct_2(Struct_1(21662i < global3.d.x, vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(0u, 19u)], firstLeadingBit(-global3.a.b.x), 0i), var_2.a.b, select(global3.a.d, !(!vec4<bool>(false, false, true, var_1.a.d.x)), !func_2(vec2<f32>(arg_3.x, arg_3.x), arg_3.x).a.d), global3.a.e));
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    global2 = array<Struct_1, 23>();
    let var_0 = !func_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1026f)) * _wgslsmith_f_op_f32(f32(-1f) * -305f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -196f), _wgslsmith_f_op_f32(abs(-1011f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f)))).a.d.yz;
    let var_1 = global3.a.d;
    var var_2 = func_1(arg_0, select(var_1.zy, var_0, func_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2192f, -446f) + vec2<f32>(119f, -914f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(712f, 404f))), vec2<bool>(true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(775f, -121f)))).c.a), u_input.b, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(137f)), _wgslsmith_f_op_f32(step(1434f, 367f))), _wgslsmith_f_op_f32(f32(-1f) * -936f), _wgslsmith_div_f32(1527f, _wgslsmith_f_op_f32(step(-1869f, 1257f))), _wgslsmith_f_op_f32(floor(-668f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(-985f, -525f)), -876f, -2974f, _wgslsmith_f_op_f32(f32(-1f) * -647f))), true)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1075f));
    return Struct_2(Struct_1(all(!var_2.a.d.zx), func_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2258f, -2281f) * vec2<f32>(773f, 479f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(137f, -324f) * _wgslsmith_f_op_f32(sign(730f)))).d, vec4<i32>((-70908i << (u_input.b % 32u)) << ((40576u >> (var_2.a.e.x % 32u)) % 32u), 0i, -1605i, abs(~(-2147483647i))), arg_0.a.d, func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(823f, -270f) + vec2<f32>(318f, 1706f)), _wgslsmith_f_op_f32(f32(-1f) * -280f)).c.e | _wgslsmith_sub_vec3_u32(vec3<u32>(global3.c.e.x, 65311u, 0u), var_2.a.e << (global3.c.e % vec3<u32>(32u)))));
}

fn func_6(arg_0: vec2<i32>, arg_1: i32, arg_2: Struct_1, arg_3: Struct_2) -> i32 {
    global2 = array<Struct_1, 23>();
    return -(-18916i | arg_0.x);
}

fn func_7(arg_0: bool, arg_1: vec4<bool>, arg_2: i32, arg_3: i32) -> Struct_1 {
    var var_0 = ~global3.d;
    let var_1 = func_2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1094f, -873f) + vec2<f32>(-2150f, 389f)))))), _wgslsmith_f_op_f32(abs(-138f))).c.d.x || !(arg_1.x | arg_1.x);
    return global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(firstLeadingBit(4294967295u) << (~select(18758u, u_input.b, global3.a.a) % 32u), 1u), 23u)];
}

fn func_8(arg_0: Struct_1, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = vec2<i32>(reverseBits(-29978i), -1i ^ arg_0.b.x);
    global0 = array<i32, 19>();
    var var_1 = ~u_input.a;
    return Struct_1(any(arg_0.d.wyy), func_7(true, vec4<bool>(false, false, arg_1.x == -2069f, false), -1i, 86322i).c & ~(~(-global3.d)), -select(vec4<i32>(0i, var_0.x, -25916i, global3.a.b.x), vec4<i32>(-1i, -6290i, global0[_wgslsmith_index_u32(arg_0.e.x, 19u)], global0[_wgslsmith_index_u32(5620u, 19u)]), global3.c.a || true) ^ ~firstTrailingBit(-vec4<i32>(global0[_wgslsmith_index_u32(global3.c.e.x, 19u)], -5474i, -1i, 10052i)), select(!select(func_1(Struct_2(global2[_wgslsmith_index_u32(56403u, 23u)]), vec2<bool>(true, arg_0.a), arg_0.e.x, arg_1).a.d, func_1(Struct_2(global2[_wgslsmith_index_u32(arg_0.e.x, 23u)]), vec2<bool>(global1.x, false), global3.c.e.x, vec4<f32>(arg_1.x, arg_1.x, 533f, 295f)).a.d, all(vec2<bool>(true, global3.c.a))), !func_2(_wgslsmith_f_op_vec2_f32(-arg_1.yx), _wgslsmith_f_op_f32(floor(arg_1.x))).c.d, true), ~global3.a.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_8(func_7(!global1.x, global3.a.d, func_6(-global3.c.b.yy ^ _wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, -12604i), vec2<i32>(global3.a.c.x, global3.c.b.x)), _wgslsmith_dot_vec2_i32(max(global3.a.b.zz, global3.c.c.wz), global3.c.c.yw), Struct_1(global3.a.a, global3.a.c, countOneBits(vec4<i32>(-2147483647i, global0[_wgslsmith_index_u32(1u, 19u)], 1i, global0[_wgslsmith_index_u32(1u, 19u)])), select(global3.a.d, global3.a.d, true), ~global3.a.e), func_5(func_1(Struct_2(global3.c), vec2<bool>(true, false), 30988u, vec4<f32>(-1134f, -731f, 1458f, 1000f)))), ~(-func_1(Struct_2(global3.c), vec2<bool>(false, global3.c.a), global3.c.e.x, vec4<f32>(-1106f, -737f, -176f, -1282f)).a.c.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-411f, -1307f, _wgslsmith_f_op_f32(f32(-1f) * -516f), -387f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(578f, 177f, 2102f, -149f)))));
    global1 = func_8(func_1(func_5(Struct_2(global3.a)), vec2<bool>(global1.x & global3.a.d.x, any(vec4<bool>(false, false, false, var_0.a)) && (0u <= var_0.e.x)), ~(4294967295u << (u_input.b % 32u)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1300f, _wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(abs(816f)), _wgslsmith_f_op_f32(-529f * -1000f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(789f, -188f, -953f, 379f) * vec4<f32>(-1751f, 916f, 640f, 401f)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, -505f, 824f, -2312f))))))).a, vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) - _wgslsmith_div_f32(-618f, -358f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-1116f)))), var_0.a & var_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1144f, -415f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -151f) + 1f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))).d.yy;
    var_0 = Struct_1(true, _wgslsmith_add_vec4_i32(-vec4<i32>(global0[_wgslsmith_index_u32(~0u, 19u)], -global0[_wgslsmith_index_u32(u_input.b, 19u)], u_input.a, func_5(Struct_2(global2[_wgslsmith_index_u32(var_0.e.x, 23u)])).a.c.x), vec4<i32>(-43523i, -1i | max(global3.c.c.x, var_0.b.x), -76615i, func_7(true || global1.x, func_1(Struct_2(global3.a), global3.a.d.zw, 4294967295u, vec4<f32>(825f, 896f, -1688f, -387f)).a.d, 1i, abs(0i)).b.x)), select(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(6914i, var_0.c.x, var_0.b.x, global0[_wgslsmith_index_u32(5163u, 19u)]), var_0.c) | _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, var_0.c.x, -2147483647i, 1i), vec4<i32>(0i, u_input.a, -10097i, global3.a.c.x)), -global3.a.c), global3.c.c << (~vec4<u32>(global3.a.e.x, 54207u, global3.c.e.x, 38861u) % vec4<u32>(32u)), any(vec2<bool>(0u > u_input.b, any(var_0.d)))), global3.c.d, vec3<u32>(29657u, min(~firstTrailingBit(12744u), ~_wgslsmith_div_u32(var_0.e.x, 25313u)), ~(4233u >> (~var_0.e.x % 32u))));
    global1 = !func_7(true, select(select(select(vec4<bool>(false, global1.x, false, true), vec4<bool>(global3.c.d.x, global1.x, true, global3.a.d.x), global3.c.d), func_7(false, var_0.d, 18516i, global0[_wgslsmith_index_u32(22507u, 19u)]).d, var_0.d.x), !global3.c.d, any(func_2(vec2<f32>(233f, 1000f), 2943f).c.d.zxw)), _wgslsmith_clamp_i32(-39518i, global3.d.x, ~(u_input.a | global3.a.b.x)), var_0.b.x).d.xz;
    var var_1 = Struct_2(Struct_1(func_1(Struct_2(func_8(Struct_1(true, var_0.c, var_0.c, global3.c.d, vec3<u32>(global3.a.e.x, 93960u, 1u)), vec4<f32>(-235f, -1028f, 921f, -602f))), vec2<bool>(global1.x, func_2(vec2<f32>(-588f, 862f), 1206f).a.a), (62083u ^ global3.c.e.x) >> (~var_0.e.x % 32u), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-429f, 488f, 578f, 536f))), vec4<f32>(-2078f, -1062f, -627f, 1234f), true & global3.a.a))).a.d.x, global3.c.c, firstTrailingBit(~(vec4<i32>(1i, global3.d.x, -1i, global3.a.c.x) ^ vec4<i32>(global0[_wgslsmith_index_u32(global3.c.e.x, 19u)], global0[_wgslsmith_index_u32(global3.a.e.x, 19u)], 2147483647i, global0[_wgslsmith_index_u32(var_0.e.x, 19u)]))), select(select(global3.c.d, var_0.d, var_0.d), select(global3.c.d, global3.a.d, vec4<bool>(true, global3.a.a, false, global1.x)), var_0.d), vec3<u32>(~(~global3.c.e.x), 1u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(global3.c.e.x, 7817u), vec2<u32>(u_input.b, global3.c.e.x)))));
    var var_2 = vec2<i32>(var_1.a.c.x, -1951i);
    var_2 = global3.a.c.xz;
    global2 = array<Struct_1, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(114f))), _wgslsmith_f_op_f32(238f * _wgslsmith_f_op_f32(abs(596f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(861f)))))), u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3()).x * 705f) + 816f), var_0.c.x, u_input.a ^ ~26105i);
}

