struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: u32,
    d: vec3<i32>,
    e: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<bool>,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_1(vec3<i32>(-37826i, 0i, i32(-2147483648)), 2147483647i, 0u, true), Struct_2(Struct_1(vec3<i32>(2147483647i, -36682i, -38858i), -39456i, 4294967295u, false), false, vec2<i32>(i32(-2147483648), -108261i), vec4<i32>(i32(-2147483648), 2147483647i, -47016i, -21360i)), vec2<bool>(true, true));

var<private> global1: array<vec4<u32>, 29> = array<vec4<u32>, 29>(vec4<u32>(0u, 1u, 5713u, 74749u), vec4<u32>(64557u, 0u, 0u, 20496u), vec4<u32>(67295u, 1u, 37873u, 1u), vec4<u32>(0u, 0u, 1u, 4294967295u), vec4<u32>(46358u, 16022u, 60726u, 1u), vec4<u32>(16307u, 24064u, 41335u, 18868u), vec4<u32>(0u, 0u, 14450u, 58553u), vec4<u32>(66024u, 74833u, 0u, 21636u), vec4<u32>(0u, 46671u, 4294967295u, 1u), vec4<u32>(1u, 4294967295u, 7485u, 1u), vec4<u32>(11831u, 11452u, 1u, 1u), vec4<u32>(27762u, 5985u, 19862u, 34053u), vec4<u32>(34097u, 0u, 16103u, 1u), vec4<u32>(14306u, 0u, 60461u, 48055u), vec4<u32>(4294967295u, 42453u, 4294967295u, 54476u), vec4<u32>(71506u, 53532u, 49818u, 13003u), vec4<u32>(9183u, 4294967295u, 51897u, 1u), vec4<u32>(4294967295u, 0u, 42730u, 64688u), vec4<u32>(0u, 1u, 29278u, 966u), vec4<u32>(4294967295u, 0u, 56433u, 0u), vec4<u32>(615u, 1832u, 4294967295u, 0u), vec4<u32>(0u, 114552u, 4294967295u, 157835u), vec4<u32>(9783u, 76020u, 4294967295u, 42708u), vec4<u32>(69169u, 43783u, 4106u, 1u), vec4<u32>(0u, 89u, 0u, 4294967295u), vec4<u32>(74572u, 2012u, 7447u, 24621u), vec4<u32>(13407u, 53765u, 1u, 0u), vec4<u32>(1u, 22922u, 49405u, 36854u), vec4<u32>(148404u, 4294967295u, 1u, 56053u));

var<private> global2: array<Struct_2, 26>;

var<private> global3: vec2<bool>;

var<private> global4: array<Struct_1, 30>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    var var_0 = vec2<u32>(_wgslsmith_dot_vec4_u32(reverseBits(global1[_wgslsmith_index_u32(10905u, 29u)]), vec4<u32>(~(~u_input.c), 70661u, ~abs(global0.b.a.c), global0.b.a.c)), firstTrailingBit(u_input.d));
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-728f, 229f)))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(1000f, 915f)), -1876f, global3.x)))))));
    let var_2 = Struct_2(Struct_1(vec3<i32>(abs(13470i), _wgslsmith_mult_i32(~25229i, -u_input.b.x), 2147483647i), u_input.b.x, global0.a.c, all(vec3<bool>(true, true, true)) | false), global0.a.d, -(~_wgslsmith_clamp_vec2_i32(min(global0.a.a.zy, global0.a.a.yz), -vec2<i32>(global0.a.a.x, -2147483647i), global0.b.d.xz)), -abs(abs(vec4<i32>(4847i, u_input.b.x, global0.a.b, 6554i)) << (~vec4<u32>(var_0.x, global0.a.c, 0u, 55881u) % vec4<u32>(32u))));
    global3 = select(!select(vec2<bool>(true, false), !vec2<bool>(true, global3.x), ~global0.b.a.b < ~var_2.d.x), vec2<bool>(var_1 <= 457f, false), !global0.c);
    let var_3 = var_2.a.c;
    return var_3;
}

fn func_2() -> Struct_2 {
    var var_0 = global2[_wgslsmith_index_u32(firstTrailingBit(~3173u), 26u)];
    let var_1 = Struct_3(vec2<bool>(false, all(vec3<bool>(global0.b.b, true, !global0.c.x))), global2[_wgslsmith_index_u32(global0.b.a.c, 26u)], func_3(), abs(vec3<i32>(0i, u_input.a.x, firstLeadingBit(-u_input.a.x))), -1000f);
    var_0 = Struct_2(global4[_wgslsmith_index_u32(global0.b.a.c, 30u)], var_0.a.d, -select(global0.b.c, countOneBits(vec2<i32>(var_1.b.a.a.x, -1i)), true) >> (vec2<u32>(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 0u, 0u), vec3<u32>(25911u, global0.a.c, global0.b.a.c))), reverseBits(max(var_0.a.c, u_input.d))) % vec2<u32>(32u)), global0.b.d);
    var var_2 = Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(select(global0.b.d, global0.b.d, vec4<bool>(var_0.b, true, global0.a.d, false)), ~var_0.d), reverseBits(var_0.d.x), global0.b.a.a.x), _wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(global0.b.d.x, -523i, 15388i) >> (vec3<u32>(0u, 20518u, 0u) % vec3<u32>(32u))), vec3<i32>(-34582i, 11003i, var_1.d.x) | var_1.d)), -26417i, ~(~(~4294967295u)), false);
    let var_3 = var_0.a.d;
    return var_1.b;
}

fn func_4(arg_0: vec3<bool>, arg_1: f32, arg_2: u32, arg_3: Struct_3) -> Struct_4 {
    let var_0 = arg_0.zy;
    let var_1 = select(_wgslsmith_sub_vec2_i32(min(vec2<i32>(~(-47379i), u_input.b.x), -global0.b.c), u_input.a), arg_3.d.yy, select(arg_0.zx, var_0, !select(arg_3.a, vec2<bool>(true, true), select(arg_3.a, vec2<bool>(true, var_0.x), vec2<bool>(arg_0.x, false)))));
    global2 = array<Struct_2, 26>();
    global1 = array<vec4<u32>, 29>();
    var var_2 = !(!vec3<bool>(all(!var_0), global0.c.x, any(select(vec4<bool>(false, true, global3.x, arg_3.a.x), vec4<bool>(arg_0.x, false, global0.a.d, false), var_0.x))));
    return Struct_4(Struct_1(~arg_3.d, reverseBits(max(firstTrailingBit(25416i), u_input.b.x & 21395i)), global0.b.a.c, any(select(vec2<bool>(false, var_0.x), select(global0.c, arg_0.yx, var_2.x), global0.b.b & true))), arg_3.b, arg_3.a);
}

fn func_1(arg_0: vec4<bool>, arg_1: f32) -> i32 {
    global0 = func_4(arg_0.xzx, arg_1, global0.a.c, Struct_3(vec2<bool>(true, all(arg_0.xwz) && false), func_2(), firstLeadingBit(countOneBits(global0.b.a.c)), vec3<i32>(-21026i, max(~global0.b.d.x, _wgslsmith_mod_i32(global0.a.a.x, global0.a.a.x)), countOneBits(_wgslsmith_div_i32(-1i, u_input.b.x))), _wgslsmith_f_op_f32(min(arg_1, _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(select(397f, -708f, true)))))));
    let var_0 = 0u;
    global4 = array<Struct_1, 30>();
    var var_1 = func_4(!(!vec3<bool>(arg_0.x, all(vec4<bool>(global3.x, false, arg_0.x, global3.x)), !arg_0.x)), _wgslsmith_f_op_f32(floor(-2028f)), abs(func_2().a.c), Struct_3(select(!select(vec2<bool>(global3.x, global0.c.x), global0.c, arg_0.x), func_4(vec3<bool>(false, global0.c.x, true), 1000f, ~12685u, Struct_3(vec2<bool>(false, true), Struct_2(global4[_wgslsmith_index_u32(u_input.d, 30u)], arg_0.x, vec2<i32>(u_input.a.x, 1i), global0.b.d), global0.b.a.c, vec3<i32>(u_input.a.x, global0.b.d.x, global0.a.b), -352f)).c, any(vec4<bool>(false, false, true, false))), func_2(), var_0, abs((global0.a.a | vec3<i32>(-2147483647i, -2147483647i, u_input.a.x)) | global0.b.a.a), 1000f)).b;
    global2 = array<Struct_2, 26>();
    return func_2().d.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.b;
    let var_1 = _wgslsmith_clamp_i32(var_0.a.b, min(func_1(vec4<bool>(true, false, var_0.a.d, false), _wgslsmith_f_op_f32(f32(-1f) * -1435f)), _wgslsmith_dot_vec3_i32(vec3<i32>(-1487i, 1i, 2147483647i), func_4(vec3<bool>(global3.x, false, false), -733f, 28210u, Struct_3(global0.c, Struct_2(Struct_1(global0.a.a, 10359i, u_input.d, global0.b.a.d), var_0.b, var_0.c, vec4<i32>(4222i, var_0.a.b, 0i, u_input.a.x)), 44102u, vec3<i32>(0i, -62031i, 37230i), -1603f)).a.a)) ^ (func_4(select(vec3<bool>(true, global0.b.b, global3.x), vec3<bool>(var_0.a.d, true, global0.b.a.d), vec3<bool>(global0.b.b, global0.a.d, false)), _wgslsmith_f_op_f32(f32(-1f) * -1579f), ~u_input.c, Struct_3(global0.c, global2[_wgslsmith_index_u32(global0.a.c, 26u)], 42289u, global0.b.d.ywx, -2437f)).a.a.x ^ max(-u_input.a.x, select(-18691i, -2147483647i, false))), _wgslsmith_mod_i32(firstLeadingBit(-min(18396i, 2147483647i)), -(max(1i, var_0.a.a.x) ^ 0i)));
    let var_2 = vec2<i32>(_wgslsmith_sub_i32(global0.a.a.x, ~(~(i32(-1i) * -41830i))), -select(countOneBits(min(var_0.c.x, 54551i)), ~u_input.b.x, false));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-556f + 1260f)))));
    global3 = !vec2<bool>(true, any(select(!vec4<bool>(global3.x, false, global3.x, false), !vec4<bool>(var_0.a.d, var_0.b, true, var_0.b), !vec4<bool>(true, var_0.a.d, true, global3.x))));
    var var_4 = select(func_4(vec3<bool>(true, all(vec4<bool>(true, true, true, global3.x)), var_0.a.d), -1000f, 4294967295u, Struct_3(!global0.c, func_4(!vec3<bool>(global3.x, global0.b.a.d, false), -1874f, 4294967295u, Struct_3(vec2<bool>(var_0.a.d, var_0.b), global2[_wgslsmith_index_u32(var_0.a.c, 26u)], 47500u, var_0.a.a, var_3)).b, global0.b.a.c, -vec3<i32>(global0.b.d.x, -2147483647i, var_2.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1436f), -777f)))).c, global0.c, true);
    var var_5 = Struct_5(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -599f))));
    let var_6 = select(select(!var_0.b, any(global0.c), false), ((_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 6637i, 0i, 1i), vec4<i32>(30252i, -1i, var_2.x, u_input.b.x)) >> (15695u % 32u)) ^ var_1) == u_input.a.x, all(vec4<bool>(var_0.a.d, global3.x, all(select(vec3<bool>(true, var_4.x, false), vec3<bool>(var_4.x, var_4.x, true), vec3<bool>(var_4.x, global0.a.d, global3.x))), any(vec4<bool>(global0.b.b, false, false, global0.a.d)))));
    global2 = array<Struct_2, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_i32(i32(-1i) * -20765i, _wgslsmith_dot_vec3_i32(var_0.a.a, vec3<i32>(2147483647i, global0.a.b, -2147483647i)) & -15264i), firstTrailingBit(_wgslsmith_div_vec2_u32(vec2<u32>(var_0.a.c, ~0u), ~(~vec2<u32>(var_0.a.c, var_0.a.c)))), _wgslsmith_f_op_f32(max(1405f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2078f, var_3, 175f)) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_5.a, -882f, 533f))))));
}

