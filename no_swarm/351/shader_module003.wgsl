struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: bool,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_4,
    c: i32,
    d: i32,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: Struct_2;

var<private> global2: array<i32, 24> = array<i32, 24>(2147483647i, -1i, i32(-2147483648), 2147483647i, -17401i, -1i, 16849i, i32(-2147483648), 46381i, 1i, -1i, -19945i, 2147483647i, -73597i, -11025i, 42548i, 2147483647i, 27377i, i32(-2147483648), 1i, 1i, 34409i, 2147483647i, i32(-2147483648));

var<private> global3: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(Struct_1(4294967295u, vec2<i32>(i32(-2147483648), -26261i), vec3<i32>(-39525i, 0i, -1505i), vec4<f32>(-779f, -699f, 930f, 1888f))), Struct_2(Struct_1(21486u, vec2<i32>(1i, -22200i), vec3<i32>(i32(-2147483648), 0i, -1i), vec4<f32>(1755f, 681f, 1000f, -664f))), Struct_2(Struct_1(63839u, vec2<i32>(i32(-2147483648), i32(-2147483648)), vec3<i32>(-53720i, -12416i, -4716i), vec4<f32>(527f, 1157f, 636f, -841f))), Struct_2(Struct_1(48369u, vec2<i32>(-44674i, 2147483647i), vec3<i32>(-4377i, 18934i, 8197i), vec4<f32>(1410f, -1519f, 279f, -1008f))), Struct_2(Struct_1(445u, vec2<i32>(19248i, 24946i), vec3<i32>(-6942i, -1i, 1i), vec4<f32>(1481f, -2402f, 1292f, -144f))), Struct_2(Struct_1(1u, vec2<i32>(0i, -1i), vec3<i32>(-17456i, -1i, -1i), vec4<f32>(123f, 2267f, -867f, -510f))), Struct_2(Struct_1(50795u, vec2<i32>(0i, -1i), vec3<i32>(40825i, 0i, 0i), vec4<f32>(135f, 871f, -1316f, 1770f))), Struct_2(Struct_1(38939u, vec2<i32>(-49923i, -1i), vec3<i32>(-6447i, -1i, 0i), vec4<f32>(-272f, -381f, 1952f, 377f))), Struct_2(Struct_1(72684u, vec2<i32>(22144i, -25201i), vec3<i32>(2147483647i, 21920i, -21051i), vec4<f32>(-329f, 805f, 424f, -786f))), Struct_2(Struct_1(34485u, vec2<i32>(-58756i, 44386i), vec3<i32>(44430i, 2147483647i, 23905i), vec4<f32>(613f, -1000f, -102f, -718f))), Struct_2(Struct_1(4294967295u, vec2<i32>(-18571i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 34743i, 53107i), vec4<f32>(-2920f, -1867f, -1245f, -2330f))), Struct_2(Struct_1(1u, vec2<i32>(-21819i, 13147i), vec3<i32>(22728i, 0i, 21265i), vec4<f32>(2532f, -834f, -121f, 1119f))), Struct_2(Struct_1(82731u, vec2<i32>(-22662i, 0i), vec3<i32>(-17562i, -27250i, 0i), vec4<f32>(819f, 784f, 1404f, 1032f))), Struct_2(Struct_1(54103u, vec2<i32>(34837i, -7520i), vec3<i32>(19012i, 38759i, 8632i), vec4<f32>(-549f, -1210f, 860f, -448f))), Struct_2(Struct_1(2338u, vec2<i32>(27597i, -16409i), vec3<i32>(2147483647i, 2147483647i, -4466i), vec4<f32>(1177f, -379f, 1651f, -333f))), Struct_2(Struct_1(4294967295u, vec2<i32>(-12504i, i32(-2147483648)), vec3<i32>(1i, 0i, 1i), vec4<f32>(218f, -282f, 829f, 814f))), Struct_2(Struct_1(0u, vec2<i32>(-44384i, 1i), vec3<i32>(-13011i, 0i, -4742i), vec4<f32>(520f, -844f, -114f, -1043f))), Struct_2(Struct_1(1u, vec2<i32>(-1i, -16790i), vec3<i32>(-33558i, 2147483647i, -16611i), vec4<f32>(-960f, 394f, 564f, 845f))), Struct_2(Struct_1(3717u, vec2<i32>(7094i, -27542i), vec3<i32>(-1i, i32(-2147483648), -3054i), vec4<f32>(749f, -743f, -471f, -100f))));

var<private> global4: vec4<bool> = vec4<bool>(false, true, false, false);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec4<i32>, arg_1: f32) -> u32 {
    var var_0 = arg_1;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.a.d.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2034f - global1.a.d.x))), -243f);
    let var_2 = _wgslsmith_clamp_vec4_u32(~_wgslsmith_add_vec4_u32(max(select(vec4<u32>(u_input.a.x, u_input.a.x, 50879u, 4294967295u), vec4<u32>(10260u, 14507u, 38498u, 43654u), vec4<bool>(global4.x, false, global4.x, false)), select(vec4<u32>(global1.a.a, 1u, 0u, global1.a.a), vec4<u32>(u_input.a.x, 56880u, global1.a.a, 1u), false)), _wgslsmith_add_vec4_u32(~vec4<u32>(56822u, 102415u, 64922u, global1.a.a), _wgslsmith_add_vec4_u32(vec4<u32>(global1.a.a, u_input.a.x, global1.a.a, global1.a.a), vec4<u32>(1u, global1.a.a, u_input.a.x, 25422u)))), max(~_wgslsmith_sub_vec4_u32(select(vec4<u32>(11839u, u_input.a.x, u_input.a.x, 9674u), vec4<u32>(global1.a.a, 17277u, global1.a.a, 1u), vec4<bool>(false, true, global4.x, global4.x)), vec4<u32>(1u, global1.a.a, global1.a.a, 1u) & vec4<u32>(u_input.a.x, global1.a.a, global1.a.a, 0u)), min(vec4<u32>(global1.a.a, 1u >> (u_input.a.x % 32u), abs(102933u), abs(1u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(2138u, u_input.a.x, 1u, 7583u) ^ vec4<u32>(global1.a.a, global1.a.a, u_input.a.x, u_input.a.x), ~vec4<u32>(global1.a.a, global1.a.a, 21222u, 1u), ~vec4<u32>(55044u, 1u, global1.a.a, global1.a.a)))), ~vec4<u32>(u_input.a.x, ~(global1.a.a >> (u_input.a.x % 32u)), max(20569u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 7297u), u_input.a)), 4294967295u));
    let var_3 = ~vec2<i32>(~(-reverseBits(-2147483647i)), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, global1.a.c.x, global2[_wgslsmith_index_u32(var_2.x >> (0u % 32u), 24u)]), reverseBits(max(vec3<i32>(arg_0.x, global2[_wgslsmith_index_u32(1u, 24u)], -38517i), vec3<i32>(arg_0.x, global2[_wgslsmith_index_u32(u_input.a.x, 24u)], arg_0.x)))));
    var_0 = -1750f;
    return ~abs(_wgslsmith_mod_u32(global1.a.a, u_input.a.x));
}

fn func_2(arg_0: vec2<f32>) -> Struct_2 {
    let var_0 = abs(_wgslsmith_mod_u32(global1.a.a, abs(_wgslsmith_clamp_u32(global1.a.a & global1.a.a, 4294967295u, func_3(vec4<i32>(21091i, -2147483647i, global2[_wgslsmith_index_u32(global1.a.a, 24u)], -12686i), arg_0.x)))));
    var var_1 = Struct_5(select(~_wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(var_0, 0u, 0u)), ~vec3<u32>(var_0, 63263u, 0u)), vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_0, u_input.a.x), vec2<u32>(1u, 62005u)), _wgslsmith_mult_vec2_u32(vec2<u32>(41188u, global1.a.a), u_input.a)), var_0, u_input.a.x), true), Struct_4(-(i32(-1i) * -1i), global3[_wgslsmith_index_u32(abs(~(~var_0)), 19u)], _wgslsmith_f_op_f32(sign(1303f)) < global1.a.d.x), global1.a.c.x, 2147483647i, Struct_4(2147483647i, Struct_2(Struct_1(~var_0, global1.a.c.yy, global1.a.c, global1.a.d)), _wgslsmith_mod_u32(_wgslsmith_mult_u32(1u, 1u), max(u_input.a.x, 3977u)) == 23948u));
    let var_2 = ~vec4<u32>(~_wgslsmith_add_u32(global1.a.a, var_1.b.b.a.a), var_0, _wgslsmith_mult_u32(var_0, 1u), _wgslsmith_dot_vec2_u32(u_input.a << (~u_input.a % vec2<u32>(32u)), ~abs(var_1.a.zz)));
    var var_3 = select(global4.xzz, global4.yyw, false);
    var_1 = Struct_5(select(~select(var_2.wyy, vec3<u32>(1u, 5062u, var_0), select(global4.zzz, global4.yzw, var_3.x)), vec3<u32>(global1.a.a, func_3(vec4<i32>(global2[_wgslsmith_index_u32(60492u, 24u)], var_1.b.a, 12360i, var_1.e.a), arg_0.x), firstLeadingBit(global1.a.a)), !vec3<bool>(true, true | global4.x, var_3.x == global4.x)), Struct_4(global1.a.c.x, var_1.b.b, _wgslsmith_sub_u32(28832u, 1u) < _wgslsmith_clamp_u32(~global1.a.a, var_0, 3211u)), max(global1.a.c.x, ~min(global1.a.b.x << (4294967295u % 32u), -22955i)), (-1i << (_wgslsmith_dot_vec4_u32(firstTrailingBit(var_2), reverseBits(var_2)) % 32u)) << (var_2.x % 32u), Struct_4(-max(~(-53981i), firstTrailingBit(3764i)), Struct_2(Struct_1(_wgslsmith_add_u32(45744u, 1u), _wgslsmith_sub_vec2_i32(global1.a.c.zx, vec2<i32>(1i, global1.a.b.x)), vec3<i32>(var_1.b.b.a.c.x, global2[_wgslsmith_index_u32(var_0, 24u)], global1.a.b.x), _wgslsmith_f_op_vec4_f32(abs(global1.a.d)))), (1u << (_wgslsmith_clamp_u32(35908u, 15970u, var_2.x) % 32u)) >= _wgslsmith_div_u32(_wgslsmith_mult_u32(10818u, var_0), 0u & u_input.a.x)));
    return Struct_2(Struct_1(~(~(~var_0)), -abs(select(global1.a.b, global1.a.c.yy, var_3.xz)), vec3<i32>(_wgslsmith_add_i32(_wgslsmith_clamp_i32(var_1.d, 25811i, 25534i), -1i), select(abs(2147483647i), global1.a.c.x, all(global4.xy)), 18675i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global1.a.d, vec4<f32>(global1.a.d.x, var_1.b.b.a.d.x, -505f, -1240f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.b.b.a.d)))));
}

fn func_1() -> u32 {
    let var_0 = true;
    let var_1 = Struct_3(func_2(global1.a.d.wx));
    let var_2 = abs(vec3<u32>(_wgslsmith_dot_vec4_u32(~firstTrailingBit(vec4<u32>(global1.a.a, u_input.a.x, 44715u, 0u)), select(~vec4<u32>(var_1.a.a.a, 1u, global1.a.a, 15737u), vec4<u32>(79800u, u_input.a.x, 25636u, 22162u) ^ vec4<u32>(u_input.a.x, 1u, 17863u, 0u), !vec4<bool>(false, var_0, var_0, global4.x))), u_input.a.x, max(~global1.a.a, 4294967295u)));
    global0 = vec2<f32>(-155f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-235f, _wgslsmith_f_op_f32(sign(450f))))));
    let var_3 = ~(~77022u);
    return ~select(~(var_3 << (4294967295u % 32u)), var_1.a.a.a >> (18260u % 32u), all(vec2<bool>(global4.x, global4.x))) | ~4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(global2[_wgslsmith_index_u32(~4294967295u, 24u)], global3[_wgslsmith_index_u32(func_1(), 19u)], any(select(!vec3<bool>(false, global4.x, global4.x), global4.xwy, false)));
    let var_1 = Struct_4(abs(_wgslsmith_add_i32(var_0.a, -global1.a.b.x)), func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-978f, global1.a.d.x))), any(!global4.xwx));
    let var_2 = Struct_3(global3[_wgslsmith_index_u32(~global1.a.a, 19u)]);
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(var_0.b.a.d.zw))) * var_1.b.a.d.ww);
    let x = u_input.a;
    s_output = StorageBuffer(~abs(vec4<u32>(1u, var_0.b.a.a, global1.a.a, var_0.b.a.a)) | _wgslsmith_mult_vec4_u32(vec4<u32>(abs(var_1.b.a.a), abs(global1.a.a), abs(4294967295u), var_0.b.a.a), max(~vec4<u32>(44476u, var_0.b.a.a, global1.a.a, var_1.b.a.a), vec4<u32>(global1.a.a, u_input.a.x, var_2.a.a.a, var_0.b.a.a))));
}

