struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 17> = array<Struct_3, 17>(Struct_3(vec3<u32>(1u, 0u, 9082u), vec2<i32>(-10809i, -33352i), Struct_1(vec4<i32>(0i, 0i, 0i, -24455i), vec3<i32>(i32(-2147483648), -22033i, 1i))), Struct_3(vec3<u32>(1u, 1u, 4294967295u), vec2<i32>(-6033i, 0i), Struct_1(vec4<i32>(-18785i, 18096i, 61976i, -15513i), vec3<i32>(-1i, 1i, -1i))), Struct_3(vec3<u32>(1u, 4294967295u, 103013u), vec2<i32>(-33028i, i32(-2147483648)), Struct_1(vec4<i32>(2147483647i, 0i, i32(-2147483648), 11341i), vec3<i32>(i32(-2147483648), -1i, -23451i))), Struct_3(vec3<u32>(4294967295u, 9391u, 0u), vec2<i32>(1i, 0i), Struct_1(vec4<i32>(2147483647i, -1i, -1i, 0i), vec3<i32>(-20632i, -37159i, -14872i))), Struct_3(vec3<u32>(55320u, 46616u, 4294967295u), vec2<i32>(32880i, i32(-2147483648)), Struct_1(vec4<i32>(2147483647i, -18577i, 2147483647i, 15983i), vec3<i32>(22302i, -6823i, -2641i))), Struct_3(vec3<u32>(19630u, 4294967295u, 9135u), vec2<i32>(1i, 0i), Struct_1(vec4<i32>(-1i, 1i, i32(-2147483648), 2147483647i), vec3<i32>(0i, 0i, -1i))), Struct_3(vec3<u32>(82205u, 35229u, 1u), vec2<i32>(0i, 2571i), Struct_1(vec4<i32>(1i, -26450i, 1i, -30187i), vec3<i32>(651i, 2147483647i, -34296i))), Struct_3(vec3<u32>(14054u, 62510u, 20358u), vec2<i32>(2147483647i, 0i), Struct_1(vec4<i32>(-33367i, 2147483647i, i32(-2147483648), 0i), vec3<i32>(-66145i, -1i, -22752i))), Struct_3(vec3<u32>(4294967295u, 0u, 4092u), vec2<i32>(26296i, 36062i), Struct_1(vec4<i32>(56165i, -6330i, -11593i, -53122i), vec3<i32>(1i, -1323i, -24508i))), Struct_3(vec3<u32>(6139u, 95592u, 32590u), vec2<i32>(-47399i, 2147483647i), Struct_1(vec4<i32>(-19469i, -27218i, -21281i, -40790i), vec3<i32>(-1i, -1i, 43368i))), Struct_3(vec3<u32>(4294967295u, 91124u, 40303u), vec2<i32>(-1i, 0i), Struct_1(vec4<i32>(-15862i, -29609i, i32(-2147483648), -1754i), vec3<i32>(0i, 211i, 39693i))), Struct_3(vec3<u32>(1u, 4294967295u, 88750u), vec2<i32>(0i, i32(-2147483648)), Struct_1(vec4<i32>(5264i, -72149i, i32(-2147483648), i32(-2147483648)), vec3<i32>(0i, 76891i, -59039i))), Struct_3(vec3<u32>(71718u, 1u, 4294967295u), vec2<i32>(i32(-2147483648), i32(-2147483648)), Struct_1(vec4<i32>(14045i, 1i, 2147483647i, 17249i), vec3<i32>(0i, 17271i, 62558i))), Struct_3(vec3<u32>(39500u, 0u, 115640u), vec2<i32>(7889i, -9209i), Struct_1(vec4<i32>(-51i, 0i, 47300i, 1i), vec3<i32>(-31525i, 22983i, 0i))), Struct_3(vec3<u32>(29195u, 3180u, 0u), vec2<i32>(71986i, 1i), Struct_1(vec4<i32>(32140i, 2147483647i, -32811i, -58171i), vec3<i32>(-1i, 53740i, -1i))), Struct_3(vec3<u32>(1u, 97360u, 0u), vec2<i32>(-18294i, 951i), Struct_1(vec4<i32>(2147483647i, -41925i, 47159i, -1i), vec3<i32>(4259i, 1690i, 2147483647i))), Struct_3(vec3<u32>(18199u, 4294967295u, 87570u), vec2<i32>(0i, -5743i), Struct_1(vec4<i32>(-26396i, -10439i, 2147483647i, 40902i), vec3<i32>(-21552i, 61373i, i32(-2147483648)))));

var<private> global1: Struct_2;

var<private> global2: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(Struct_1(vec4<i32>(0i, 24989i, 0i, -1i), vec3<i32>(2147483647i, 37011i, -46308i)), vec3<i32>(-1i, -1i, -13462i)), Struct_2(Struct_1(vec4<i32>(2147483647i, -1i, -29472i, -1441i), vec3<i32>(i32(-2147483648), 2147483647i, -1i)), vec3<i32>(2147483647i, 0i, i32(-2147483648))), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), 37417i, 0i, i32(-2147483648)), vec3<i32>(2147483647i, 7462i, 0i)), vec3<i32>(i32(-2147483648), -13437i, 2147483647i)), Struct_2(Struct_1(vec4<i32>(-4556i, -34077i, 1i, 21333i), vec3<i32>(-23169i, 2147483647i, i32(-2147483648))), vec3<i32>(2147483647i, -1i, 39506i)), Struct_2(Struct_1(vec4<i32>(35858i, -59168i, 0i, -43329i), vec3<i32>(8035i, 1i, 0i)), vec3<i32>(i32(-2147483648), 22252i, 33529i)), Struct_2(Struct_1(vec4<i32>(-77286i, -25624i, 1i, i32(-2147483648)), vec3<i32>(1i, i32(-2147483648), -11025i)), vec3<i32>(45453i, -27789i, 22880i)), Struct_2(Struct_1(vec4<i32>(-76411i, 1i, 2147483647i, 10312i), vec3<i32>(-2095i, -15428i, -1i)), vec3<i32>(-4611i, -1i, 6097i)), Struct_2(Struct_1(vec4<i32>(15608i, -13471i, -11950i, -84397i), vec3<i32>(-1i, 18835i, 1i)), vec3<i32>(i32(-2147483648), -24200i, 2147483647i)), Struct_2(Struct_1(vec4<i32>(-1i, 5534i, i32(-2147483648), -41988i), vec3<i32>(-31550i, i32(-2147483648), 1i)), vec3<i32>(i32(-2147483648), 2147483647i, 12475i)), Struct_2(Struct_1(vec4<i32>(-42156i, 1i, -906i, 0i), vec3<i32>(i32(-2147483648), i32(-2147483648), -22719i)), vec3<i32>(i32(-2147483648), 11392i, -47869i)), Struct_2(Struct_1(vec4<i32>(-39732i, i32(-2147483648), -21128i, -10055i), vec3<i32>(12654i, 1i, -34134i)), vec3<i32>(-1093i, 2147483647i, i32(-2147483648))), Struct_2(Struct_1(vec4<i32>(-32985i, -1i, 7463i, -61232i), vec3<i32>(1i, 2940i, 0i)), vec3<i32>(-7568i, 10156i, 2147483647i)), Struct_2(Struct_1(vec4<i32>(41288i, 2147483647i, 672i, 57730i), vec3<i32>(2147483647i, -46937i, -44185i)), vec3<i32>(i32(-2147483648), -29881i, 38811i)), Struct_2(Struct_1(vec4<i32>(-2720i, -2238i, 60671i, -27266i), vec3<i32>(0i, 5645i, 1112i)), vec3<i32>(i32(-2147483648), 0i, -50028i)), Struct_2(Struct_1(vec4<i32>(0i, -1i, 2147483647i, 1i), vec3<i32>(66264i, 11419i, -64852i)), vec3<i32>(-6150i, 2147483647i, 2147483647i)), Struct_2(Struct_1(vec4<i32>(0i, -10561i, i32(-2147483648), 31416i), vec3<i32>(0i, -44337i, 0i)), vec3<i32>(0i, 12770i, -1i)), Struct_2(Struct_1(vec4<i32>(58495i, -1i, -1i, 24727i), vec3<i32>(2147483647i, 1i, 11745i)), vec3<i32>(-40806i, 0i, 1279i)), Struct_2(Struct_1(vec4<i32>(34322i, i32(-2147483648), 32748i, -1i), vec3<i32>(2147483647i, -37861i, -10439i)), vec3<i32>(i32(-2147483648), 350i, -70896i)), Struct_2(Struct_1(vec4<i32>(63607i, 0i, 0i, 1i), vec3<i32>(0i, i32(-2147483648), 1i)), vec3<i32>(-45583i, 1i, 2147483647i)), Struct_2(Struct_1(vec4<i32>(7290i, -1i, 4894i, i32(-2147483648)), vec3<i32>(40761i, 10432i, 31273i)), vec3<i32>(-1i, -11005i, -7558i)), Struct_2(Struct_1(vec4<i32>(27453i, -16829i, 29397i, 2147483647i), vec3<i32>(0i, 4874i, i32(-2147483648))), vec3<i32>(-27247i, -2585i, 1i)), Struct_2(Struct_1(vec4<i32>(14056i, 2147483647i, 10671i, -1i), vec3<i32>(8206i, 320i, i32(-2147483648))), vec3<i32>(3948i, 17144i, 0i)), Struct_2(Struct_1(vec4<i32>(20102i, 2147483647i, 2147483647i, 0i), vec3<i32>(2147483647i, -8429i, 2147483647i)), vec3<i32>(51364i, 13499i, -47531i)), Struct_2(Struct_1(vec4<i32>(-27601i, -1i, i32(-2147483648), 13629i), vec3<i32>(2147483647i, 2147483647i, -1i)), vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648))), Struct_2(Struct_1(vec4<i32>(0i, -12014i, -1i, -9351i), vec3<i32>(24593i, -10531i, 7630i)), vec3<i32>(-22435i, -1i, -11513i)), Struct_2(Struct_1(vec4<i32>(3393i, 23846i, 18055i, 2147483647i), vec3<i32>(2147483647i, -2129i, 0i)), vec3<i32>(2147483647i, -1i, -44531i)), Struct_2(Struct_1(vec4<i32>(0i, 79241i, 1i, i32(-2147483648)), vec3<i32>(2476i, -23772i, -41587i)), vec3<i32>(2179i, 1i, -1i)), Struct_2(Struct_1(vec4<i32>(-1i, 1i, 2147483647i, 2147483647i), vec3<i32>(399i, -19039i, 0i)), vec3<i32>(51620i, 0i, i32(-2147483648))), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), -1i, 1i, 0i), vec3<i32>(44752i, -5015i, 3458i)), vec3<i32>(0i, 2147483647i, 0i)), Struct_2(Struct_1(vec4<i32>(38i, 1698i, i32(-2147483648), i32(-2147483648)), vec3<i32>(i32(-2147483648), 1i, -8466i)), vec3<i32>(-21676i, -999i, -1i)), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), 1i, 1i, -43977i), vec3<i32>(-68649i, -6028i, i32(-2147483648))), vec3<i32>(0i, -1700i, 2147483647i)));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: f32) -> u32 {
    global2 = array<Struct_2, 31>();
    return ~(~min(u_input.b.x, ~7628u));
}

fn func_1() -> Struct_3 {
    global0 = array<Struct_3, 17>();
    global2 = array<Struct_2, 31>();
    let var_0 = u_input.b.zwx;
    var var_1 = Struct_3(select(~_wgslsmith_div_vec3_u32(var_0, max(vec3<u32>(39147u, 67102u, 4294967295u), var_0)), ~min(u_input.b.zzw & var_0, select(var_0, var_0, vec3<bool>(true, true, true))), vec3<bool>(true, true, true)), vec2<i32>(u_input.a, global1.b.x), global1.a);
    var var_2 = Struct_3(_wgslsmith_add_vec3_u32(var_1.a, ~vec3<u32>(_wgslsmith_clamp_u32(4294967295u, u_input.b.x, u_input.c), ~4294967295u, 4294967295u << (u_input.c % 32u))), vec2<i32>(~(~1i), ~1i), global1.a);
    return Struct_3(max(firstLeadingBit(u_input.b.xwz), var_1.a) ^ vec3<u32>(func_2(-1238f), _wgslsmith_dot_vec3_u32(~var_0, vec3<u32>(var_1.a.x, var_1.a.x, u_input.b.x)), _wgslsmith_mod_u32(abs(85537u), var_2.a.x)), ~var_2.b, Struct_1(global1.a.a, _wgslsmith_clamp_vec3_i32(global1.b, global1.b, _wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(-13759i, global1.a.b.x, 1i)), vec3<i32>(var_1.b.x, global1.a.b.x, var_1.b.x) >> (var_0 % vec3<u32>(32u))))));
}

fn func_3(arg_0: vec3<i32>) -> u32 {
    var var_0 = all(vec4<bool>(any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), true)), !(!(u_input.a > 19121i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1273f * -688f)) >= _wgslsmith_f_op_f32(select(1000f, -112f, true)), (func_1().a.x > 4294967295u) && all(vec2<bool>(true, true))));
    var var_1 = Struct_4(func_1().c);
    var_0 = true;
    global2 = array<Struct_2, 31>();
    let var_2 = func_1().c.a.yw;
    return _wgslsmith_sub_u32(min(func_2(1f), firstTrailingBit(u_input.c)), u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 31>();
    global0 = array<Struct_3, 17>();
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-439f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1597f)))))) * vec2<f32>(_wgslsmith_f_op_f32(round(-103f)), _wgslsmith_f_op_f32(max(-136f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1502f)))))));
    let var_1 = ~(~global1.b | (-global1.a.a.wzy & _wgslsmith_mult_vec3_i32(global1.a.a.zyw, global1.b))) ^ global1.b;
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -554f)));
    global2 = array<Struct_2, 31>();
    global0 = array<Struct_3, 17>();
    let var_2 = func_1();
    var var_3 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_3.a.x, 24976u, var_2.a.x), var_2.a ^ ~u_input.b.zyz, ~func_1().a)), _wgslsmith_add_u32(func_3(global1.a.a.zxw >> (vec3<u32>(var_3.a.x, 40567u, 18418u) % vec3<u32>(32u))), _wgslsmith_div_u32(38715u ^ u_input.c, _wgslsmith_clamp_u32(0u, var_2.a.x, var_2.a.x))) ^ (~max(var_3.a.x, u_input.b.x) | var_3.a.x), firstTrailingBit(_wgslsmith_sub_i32(-1i, -31102i << (~var_2.a.x % 32u))));
}

