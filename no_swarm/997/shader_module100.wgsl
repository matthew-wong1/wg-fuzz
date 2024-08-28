struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct Struct_4 {
    a: f32,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_5 {
    a: vec4<i32>,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<i32, 22> = array<i32, 22>(i32(-2147483648), 11727i, 0i, -34830i, -17778i, -40486i, -13195i, -43013i, 24317i, 1376i, 94594i, -31066i, -23277i, 0i, i32(-2147483648), 18278i, i32(-2147483648), -1i, 2147483647i, 1i, 1i, 19868i);

var<private> global2: array<Struct_4, 16>;

var<private> global3: array<Struct_3, 32> = array<Struct_3, 32>(Struct_3(vec3<i32>(-27167i, -25976i, 1i), Struct_2(vec3<u32>(65155u, 0u, 53209u), 1000f), vec3<u32>(18364u, 0u, 96139u), vec3<i32>(-39181i, -1i, 1i)), Struct_3(vec3<i32>(-50401i, -38109i, -34471i), Struct_2(vec3<u32>(28758u, 4294967295u, 18941u), -812f), vec3<u32>(0u, 0u, 0u), vec3<i32>(14423i, 0i, -1i)), Struct_3(vec3<i32>(15967i, 1i, 17929i), Struct_2(vec3<u32>(83843u, 4376u, 4294967295u), -546f), vec3<u32>(24260u, 0u, 14020u), vec3<i32>(-30191i, -1i, i32(-2147483648))), Struct_3(vec3<i32>(2147483647i, -1i, 26338i), Struct_2(vec3<u32>(0u, 43391u, 4294967295u), 562f), vec3<u32>(1u, 6581u, 4294967295u), vec3<i32>(2147483647i, 1i, 0i)), Struct_3(vec3<i32>(2147483647i, 8177i, -34260i), Struct_2(vec3<u32>(0u, 74005u, 10326u), -1000f), vec3<u32>(0u, 7269u, 1u), vec3<i32>(-24106i, 0i, 1i)), Struct_3(vec3<i32>(-86386i, 1i, 0i), Struct_2(vec3<u32>(4294967295u, 4294967295u, 14482u), 417f), vec3<u32>(2521u, 18026u, 4294967295u), vec3<i32>(-30528i, -2872i, 2147483647i)), Struct_3(vec3<i32>(26322i, 64852i, -12087i), Struct_2(vec3<u32>(42361u, 4294967295u, 20160u), -356f), vec3<u32>(794u, 1u, 0u), vec3<i32>(25817i, 2284i, i32(-2147483648))), Struct_3(vec3<i32>(2147483647i, 1i, 2147483647i), Struct_2(vec3<u32>(86470u, 0u, 1u), -268f), vec3<u32>(0u, 4294967295u, 82416u), vec3<i32>(0i, 49442i, 2147483647i)), Struct_3(vec3<i32>(1i, 428i, i32(-2147483648)), Struct_2(vec3<u32>(40131u, 8922u, 4294967295u), 255f), vec3<u32>(13562u, 4294967295u, 57677u), vec3<i32>(-24294i, 1i, 9456i)), Struct_3(vec3<i32>(11154i, -15296i, i32(-2147483648)), Struct_2(vec3<u32>(0u, 22651u, 0u), 558f), vec3<u32>(4294967295u, 4294967295u, 1u), vec3<i32>(1i, -1i, 56963i)), Struct_3(vec3<i32>(i32(-2147483648), 2147483647i, 25354i), Struct_2(vec3<u32>(0u, 0u, 21105u), 141f), vec3<u32>(4294967295u, 26037u, 1u), vec3<i32>(-22889i, 2147483647i, 17383i)), Struct_3(vec3<i32>(90i, -6841i, 2147483647i), Struct_2(vec3<u32>(22174u, 4112u, 93282u), 1000f), vec3<u32>(85981u, 60616u, 4294967295u), vec3<i32>(-27938i, -1i, 2147483647i)), Struct_3(vec3<i32>(-37762i, 7317i, 47805i), Struct_2(vec3<u32>(0u, 27681u, 0u), -1307f), vec3<u32>(0u, 8556u, 0u), vec3<i32>(7248i, i32(-2147483648), 2147483647i)), Struct_3(vec3<i32>(-21062i, 2147483647i, -31389i), Struct_2(vec3<u32>(1u, 67299u, 9513u), 551f), vec3<u32>(1u, 1u, 4294967295u), vec3<i32>(2147483647i, -1i, 2147483647i)), Struct_3(vec3<i32>(-1i, 1i, -35405i), Struct_2(vec3<u32>(23841u, 1u, 24974u), -270f), vec3<u32>(0u, 0u, 0u), vec3<i32>(-57751i, 2147483647i, -3484i)), Struct_3(vec3<i32>(-49878i, -1i, 0i), Struct_2(vec3<u32>(591u, 0u, 16691u), 423f), vec3<u32>(9613u, 1u, 35496u), vec3<i32>(2147483647i, -9487i, 2147483647i)), Struct_3(vec3<i32>(-40791i, i32(-2147483648), -1i), Struct_2(vec3<u32>(1u, 9112u, 1u), -1436f), vec3<u32>(0u, 0u, 1u), vec3<i32>(1732i, 10291i, 7980i)), Struct_3(vec3<i32>(-1i, 1798i, -1i), Struct_2(vec3<u32>(1069u, 16115u, 4294967295u), 1646f), vec3<u32>(43436u, 0u, 50598u), vec3<i32>(i32(-2147483648), 38652i, -46381i)), Struct_3(vec3<i32>(0i, 1i, -42541i), Struct_2(vec3<u32>(34795u, 79268u, 1u), -550f), vec3<u32>(67592u, 15932u, 23041u), vec3<i32>(1i, -1i, 11348i)), Struct_3(vec3<i32>(59104i, i32(-2147483648), 0i), Struct_2(vec3<u32>(41348u, 1u, 4294967295u), -610f), vec3<u32>(23808u, 4294967295u, 74706u), vec3<i32>(-4447i, 16397i, -1i)), Struct_3(vec3<i32>(-18988i, -68349i, 0i), Struct_2(vec3<u32>(12982u, 104347u, 24142u), 1204f), vec3<u32>(1730u, 0u, 68483u), vec3<i32>(-1i, i32(-2147483648), 1i)), Struct_3(vec3<i32>(0i, -9470i, 4001i), Struct_2(vec3<u32>(38262u, 86572u, 73258u), 221f), vec3<u32>(0u, 0u, 25935u), vec3<i32>(0i, -54802i, 47636i)), Struct_3(vec3<i32>(2147483647i, -1i, 2147483647i), Struct_2(vec3<u32>(5814u, 1u, 110100u), -1000f), vec3<u32>(37962u, 1u, 42042u), vec3<i32>(1i, -809i, -1i)), Struct_3(vec3<i32>(0i, 0i, i32(-2147483648)), Struct_2(vec3<u32>(55082u, 1u, 44801u), 1003f), vec3<u32>(86815u, 19825u, 4294967295u), vec3<i32>(-6579i, -14358i, -37359i)), Struct_3(vec3<i32>(43650i, 62767i, -1i), Struct_2(vec3<u32>(1u, 29949u, 0u), -1428f), vec3<u32>(4294967295u, 8634u, 5193u), vec3<i32>(-8313i, 2147483647i, 1i)), Struct_3(vec3<i32>(4965i, 16110i, i32(-2147483648)), Struct_2(vec3<u32>(89106u, 66430u, 38837u), -614f), vec3<u32>(0u, 4294967295u, 0u), vec3<i32>(7166i, -7455i, 2147483647i)), Struct_3(vec3<i32>(58613i, 1i, -43785i), Struct_2(vec3<u32>(20877u, 35539u, 0u), -1000f), vec3<u32>(4294967295u, 1u, 6133u), vec3<i32>(i32(-2147483648), -1i, -47771i)), Struct_3(vec3<i32>(-30377i, 38442i, 2147483647i), Struct_2(vec3<u32>(1u, 41760u, 75515u), -912f), vec3<u32>(69929u, 1u, 0u), vec3<i32>(38438i, -1i, -26074i)), Struct_3(vec3<i32>(2147483647i, 18892i, -1i), Struct_2(vec3<u32>(82304u, 75212u, 97557u), 1690f), vec3<u32>(4312u, 0u, 4973u), vec3<i32>(0i, 1i, 12492i)), Struct_3(vec3<i32>(-14774i, i32(-2147483648), -3582i), Struct_2(vec3<u32>(111404u, 10766u, 4294967295u), -628f), vec3<u32>(87529u, 33753u, 21353u), vec3<i32>(18822i, 0i, 16680i)), Struct_3(vec3<i32>(2147483647i, -51022i, -3599i), Struct_2(vec3<u32>(4294967295u, 0u, 39700u), 323f), vec3<u32>(1u, 0u, 5747u), vec3<i32>(-34753i, 30228i, -53232i)), Struct_3(vec3<i32>(0i, -53629i, 2147483647i), Struct_2(vec3<u32>(1u, 18342u, 4294967295u), -233f), vec3<u32>(54933u, 7791u, 69795u), vec3<i32>(-86838i, 0i, 71593i)));

var<private> global4: array<vec3<f32>, 19>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: bool, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: Struct_3) -> vec3<i32> {
    return ~min(vec3<i32>(-1i) * -arg_3.a, arg_3.a);
}

fn func_2() -> f32 {
    let var_0 = Struct_5(max(u_input.a, ~(~vec4<i32>(global1[_wgslsmith_index_u32(u_input.e.x, 22u)], -29733i, 10733i, global1[_wgslsmith_index_u32(u_input.e.x, 22u)]))), 100f);
    var var_1 = Struct_2(_wgslsmith_mod_vec3_u32(u_input.e.wxw, min(vec3<u32>(~40861u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.e.x), vec2<u32>(u_input.e.x, 4294967295u)), 1u), ~(~vec3<u32>(u_input.d.x, u_input.c, 0u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b, var_0.b) + 1f))) + var_0.b));
    var_1 = Struct_2(~vec3<u32>(~_wgslsmith_dot_vec2_u32(u_input.d, vec2<u32>(u_input.c, 26604u)), u_input.c, ~firstTrailingBit(25410u)), _wgslsmith_f_op_f32(-var_1.b));
    let var_2 = var_0;
    var var_3 = Struct_2(vec3<u32>(~1u, 1u, reverseBits(55262u)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.b, var_2.b) + var_0.b))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -765f));
}

fn func_3(arg_0: i32) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-896f, 1052f) - vec2<f32>(1767f, -1004f));
    var var_1 = Struct_1(699f, func_1(all(vec4<bool>(any(global0.ww), true, global0.x, 1u != u_input.c)), Struct_3(u_input.a.zxy, Struct_2(u_input.e.zzz, _wgslsmith_f_op_f32(round(206f))), vec3<u32>(u_input.b.x, reverseBits(u_input.d.x), 1u), ~(vec3<i32>(u_input.a.x, u_input.a.x, 1i) ^ vec3<i32>(-49486i, -1i, u_input.a.x))), ~u_input.b, Struct_3(vec3<i32>(_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(u_input.c, 22u)], u_input.a.x), _wgslsmith_mult_i32(arg_0, arg_0), 1i), Struct_2(u_input.e.xzw, _wgslsmith_f_op_f32(1126f + var_0.x)), _wgslsmith_mult_vec3_u32(u_input.e.xwx, countOneBits(vec3<u32>(u_input.d.x, u_input.c, 4294967295u))), abs(~u_input.a.yxw))), _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), var_0.x);
    var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(var_0.x, -1030f)), 1000f)))), reverseBits(vec3<i32>(arg_0 << (0u % 32u), -arg_0, -u_input.a.x) & -_wgslsmith_mod_vec3_i32(vec3<i32>(var_1.b.x, 0i, global1[_wgslsmith_index_u32(u_input.b.x, 22u)]), vec3<i32>(u_input.a.x, arg_0, 17857i))), -790f, var_1.c);
    let var_2 = _wgslsmith_div_vec3_u32(countOneBits(vec3<u32>(u_input.d.x, reverseBits(firstTrailingBit(u_input.d.x)), _wgslsmith_dot_vec4_u32(u_input.e, u_input.e))), vec3<u32>((max(1u, u_input.e.x) & u_input.b.x) | (0u & ~u_input.c), 4294967295u, _wgslsmith_sub_u32(5207u, 1u)));
    var var_3 = global2[_wgslsmith_index_u32(abs(~var_2.x), 16u)];
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-573f + -418f) + -827f), _wgslsmith_f_op_f32(-457f - _wgslsmith_div_f32(2331f, -190f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(986f, -426f))))), ~(-countOneBits(func_1(global0.x, global3[_wgslsmith_index_u32(1u, 32u)], u_input.b, global3[_wgslsmith_index_u32(u_input.d.x, 32u)]))), _wgslsmith_f_op_f32(func_2()), 931f);
    global0 = vec4<bool>(global0.x, (any(vec3<bool>(true, true, true)) && any(select(global0.yw, vec2<bool>(true, global0.x), global0.yw))) & global0.x, func_3(i32(-1i) * -2147483647i), false);
    var var_1 = global3[_wgslsmith_index_u32(u_input.c, 32u)];
    let var_2 = global0.x;
    var var_3 = vec4<i32>(_wgslsmith_div_i32(-32506i, -var_0.b.x) << (21555u % 32u), abs(-56238i), _wgslsmith_mult_i32(_wgslsmith_mult_i32(-2147483647i, -u_input.a.x), -u_input.a.x), u_input.a.x) ^ vec4<i32>(1i, func_1(var_0.a != _wgslsmith_f_op_f32(-var_1.b.b), Struct_3(vec3<i32>(-55943i, u_input.a.x, var_1.d.x), Struct_2(var_1.c, -1302f), abs(var_1.b.a), u_input.a.zxx), ~(~vec2<u32>(100733u, 1u)), Struct_3(var_0.b, Struct_2(vec3<u32>(u_input.e.x, 70820u, 0u), -327f), max(vec3<u32>(29892u, 0u, u_input.d.x), vec3<u32>(7576u, 4294967295u, 8671u)), -vec3<i32>(global1[_wgslsmith_index_u32(0u, 22u)], u_input.a.x, var_0.b.x))).x, firstTrailingBit(2147483647i), (-54339i << (_wgslsmith_div_u32(13381u, 2197u) % 32u)) | -global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 1u), vec2<u32>(75808u, var_1.b.a.x)), 22u)]);
    let var_4 = Struct_5(vec4<i32>(abs(1i), _wgslsmith_clamp_i32(var_1.d.x, -8969i, -18820i), ~firstTrailingBit(var_0.b.x), var_1.d.x), -828f);
    global4 = array<vec3<f32>, 19>();
    var var_5 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -484f), var_1.d, _wgslsmith_f_op_f32(180f * var_4.b), -1354f);
    let var_6 = ~u_input.e.xwy;
    let x = u_input.a;
    s_output = StorageBuffer(-641f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.b, var_1.b.b, var_5.c, var_0.c)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1125f, var_1.b.b, -778f, 872f) + vec4<f32>(var_0.a, -1747f, var_1.b.b, var_1.b.b))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5.c, var_1.b.b, 1127f, var_1.b.b)), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.c, var_5.c, -2909f, 965f), vec4<f32>(3293f, var_1.b.b, -1043f, var_1.b.b)))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.b.b)) + -670f), var_5.d, 1115f, 1000f));
}

