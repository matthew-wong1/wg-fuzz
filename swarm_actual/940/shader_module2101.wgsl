struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec4<f32>,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<u32>,
    d: Struct_2,
    e: vec4<u32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: f32,
    c: vec4<bool>,
    d: vec2<bool>,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 15>;

var<private> global1: array<vec4<u32>, 29> = array<vec4<u32>, 29>(vec4<u32>(35471u, 4294967295u, 14975u, 1u), vec4<u32>(5964u, 0u, 43855u, 9531u), vec4<u32>(0u, 4294967295u, 35913u, 0u), vec4<u32>(3988u, 25383u, 18901u, 30603u), vec4<u32>(1u, 4294967295u, 33173u, 0u), vec4<u32>(9872u, 29707u, 0u, 0u), vec4<u32>(7712u, 73878u, 1u, 4294967295u), vec4<u32>(13761u, 0u, 33582u, 4294967295u), vec4<u32>(1u, 4294967295u, 8083u, 388u), vec4<u32>(12463u, 12270u, 0u, 91567u), vec4<u32>(19867u, 14168u, 0u, 0u), vec4<u32>(4294967295u, 4294967295u, 28040u, 0u), vec4<u32>(21463u, 1u, 1u, 36633u), vec4<u32>(40867u, 37291u, 4294967295u, 1585u), vec4<u32>(17531u, 4294967295u, 1u, 4294967295u), vec4<u32>(4294967295u, 8026u, 2810u, 1u), vec4<u32>(4294967295u, 1u, 0u, 0u), vec4<u32>(4294967295u, 49612u, 73705u, 41789u), vec4<u32>(4294967295u, 56772u, 0u, 0u), vec4<u32>(23928u, 0u, 4294967295u, 1u), vec4<u32>(1u, 0u, 4294967295u, 24553u), vec4<u32>(62031u, 0u, 0u, 2659u), vec4<u32>(1u, 4294967295u, 50766u, 39737u), vec4<u32>(48924u, 0u, 107835u, 18641u), vec4<u32>(0u, 4294967295u, 4294967295u, 72783u), vec4<u32>(54921u, 76832u, 19237u, 62780u), vec4<u32>(0u, 0u, 0u, 4294967295u), vec4<u32>(0u, 0u, 49724u, 26903u), vec4<u32>(10448u, 0u, 0u, 4294967295u));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<bool> {
    let var_0 = false;
    var var_1 = _wgslsmith_sub_vec2_i32(vec2<i32>(-(i32(-1i) * -1i), 1i), ~_wgslsmith_clamp_vec2_i32(global0[_wgslsmith_index_u32(1u, 15u)], -abs(global0[_wgslsmith_index_u32(19274u, 15u)]), global0[_wgslsmith_index_u32(select(~66513u, ~1u, true), 15u)]));
    var var_2 = reverseBits(vec2<i32>(-2147483647i ^ u_input.a, -select(-u_input.a, var_1.x << (40789u % 32u), true)));
    var var_3 = Struct_1(~(vec2<u32>(~10012u, select(4294967295u, 26834u, var_0)) ^ vec2<u32>(1u, 1u)), _wgslsmith_div_u32(max(_wgslsmith_clamp_u32(min(1u, 20679u), ~0u, 37826u), 1650u), select(1u, ~abs(1u), any(!vec4<bool>(var_0, false, var_0, var_0)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-356f, -438f, -623f, 786f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(334f, 536f, 1322f, 503f) * vec4<f32>(1392f, 1237f, -133f, -117f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(427f, 1932f, -1302f, 862f) - vec4<f32>(-1000f, -771f, 482f, 1163f))))), 5991u, u_input.a);
    global0 = array<vec2<i32>, 15>();
    return select(select(vec4<bool>(true, !(!var_0), _wgslsmith_f_op_f32(-var_3.c.x) >= _wgslsmith_f_op_f32(-var_3.c.x), var_0), select(!(!vec4<bool>(false, false, var_0, var_0)), !vec4<bool>(var_0, true, var_0, false), vec4<bool>(var_0, var_0, !var_0, var_0 | var_0)), true == var_0), vec4<bool>(true, false, var_0, true), !vec4<bool>(true, var_0, true, !all(vec4<bool>(true, var_0, var_0, false))));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_4(~(~vec2<u32>(1u, 1u)) | vec2<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(62507u, 49065u, 4294967295u, 4294967295u), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 0u), 29u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(280f * _wgslsmith_f_op_f32(ceil(-1000f)))), func_3(), vec2<bool>(true, all(!func_3().xz)), Struct_3(Struct_1(~(~vec2<u32>(120706u, 28321u)), countOneBits(35066u), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2509f, 329f, -701f, -493f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(600f, 507f, -806f, 559f), vec4<f32>(180f, 284f, 1027f, 998f))))), _wgslsmith_mult_u32(1u, ~59355u), u_input.a), Struct_2(Struct_1(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 55718u), vec2<u32>(0u, 53831u)), ~4294967295u, vec4<f32>(-1228f, -1636f, -374f, -296f), 21458u, _wgslsmith_mod_i32(-21448i, -1i)), Struct_1(vec2<u32>(0u, 37906u), _wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(4294967295u, 29u)], global1[_wgslsmith_index_u32(51148u, 29u)]), vec4<f32>(-1772f, -1783f, 248f, -747f), 1u, 33359i), vec3<u32>(4294967295u, 1u, 1u)), firstLeadingBit(select(global1[_wgslsmith_index_u32(1u, 29u)] >> (vec4<u32>(62298u, 36103u, 0u, 0u) % vec4<u32>(32u)), ~global1[_wgslsmith_index_u32(26842u, 29u)], true)), Struct_2(Struct_1(~vec2<u32>(18765u, 30385u), 37794u, _wgslsmith_f_op_vec4_f32(vec4<f32>(667f, 831f, -132f, -1172f) - vec4<f32>(562f, -1249f, -1008f, -1000f)), firstLeadingBit(29239u), -u_input.a), Struct_1(max(vec2<u32>(23717u, 48824u), vec2<u32>(94024u, 23656u)), _wgslsmith_dot_vec2_u32(vec2<u32>(16204u, 74149u), vec2<u32>(66381u, 15193u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1624f, 2005f, -344f, -1000f)), 1u, u_input.a), ~(~vec3<u32>(1u, 0u, 0u))), ~(~global1[_wgslsmith_index_u32(0u, 29u)])));
    global0 = array<vec2<i32>, 15>();
    var var_1 = vec3<i32>(-88310i, -(~_wgslsmith_mult_i32(-var_0.e.a.e, min(u_input.a, var_0.e.a.e))), 43988i);
    var_1 = _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(-(vec3<i32>(var_1.x, 2147483647i, u_input.a) & (vec3<i32>(var_1.x, 0i, 0i) ^ vec3<i32>(1i, 0i, 18808i))), ~(-(~vec3<i32>(-1i, var_1.x, u_input.a)))), vec3<i32>(-12823i, -2147483647i, u_input.a));
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(350f, -499f, _wgslsmith_f_op_f32(var_0.e.b.a.c.x * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(var_0.e.b.a.c.x)), var_0.e.d.a.c.x)))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(771f, _wgslsmith_f_op_f32(floor(var_0.b))) * var_0.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1454f * _wgslsmith_f_op_f32(f32(-1f) * -756f)), _wgslsmith_f_op_f32(var_0.e.d.b.c.x + var_0.e.a.c.x)), _wgslsmith_f_op_f32(floor(var_0.b))));
    return Struct_2(var_0.e.b.a, Struct_1(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.x, 1u) & var_0.e.e.xx, var_0.e.c.yz), _wgslsmith_mod_u32(firstTrailingBit(938u), var_0.e.d.b.d)), 1u, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b, var_0.b, 1728f, var_2.x), vec4<f32>(var_0.e.a.c.x, 258f, var_2.x, var_0.b), var_0.d.x || false)), vec4<f32>(var_0.e.b.b.c.x, _wgslsmith_f_op_f32(ceil(-1666f)), _wgslsmith_f_op_f32(select(-1323f, var_0.e.d.a.c.x, false)), -210f))), 1u, -_wgslsmith_sub_i32(u_input.a ^ u_input.a, 2147483647i)), var_0.e.e.xxw << (~vec3<u32>(firstLeadingBit(4294967295u), var_0.a.x, reverseBits(0u)) % vec3<u32>(32u)));
}

fn func_1() -> f32 {
    var var_0 = func_2();
    var var_1 = ~(~_wgslsmith_clamp_u32(11289u, var_0.b.a.x, 1u) | ~var_0.c.x) & 73733u;
    var var_2 = _wgslsmith_mult_u32(5140u, ~_wgslsmith_div_u32(countOneBits(var_0.b.d), countOneBits(41582u)) >> (~select(1u, countOneBits(1u), true) % 32u));
    var var_3 = Struct_2(var_0.b, Struct_1(reverseBits(~var_0.a.a & reverseBits(vec2<u32>(var_0.a.b, var_0.b.a.x))), ~func_2().b.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(324f, 1329f, _wgslsmith_f_op_f32(var_0.b.c.x * -523f), _wgslsmith_f_op_f32(sign(var_0.a.c.x))) * var_0.a.c), _wgslsmith_mult_u32(_wgslsmith_mod_u32(abs(1234u), 47969u), var_0.a.a.x), 19906i), var_0.c);
    var_1 = func_2().c.x;
    return func_2().a.c.x;
}

fn func_4(arg_0: vec3<f32>) -> f32 {
    var var_0 = Struct_4(_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 20414u), vec3<u32>(28914u, 45630u, 37135u)), _wgslsmith_mult_u32(1u, countOneBits(45076u))), _wgslsmith_sub_vec2_u32(~vec2<u32>(1u, 1u), ~vec2<u32>(1u, 1u))), _wgslsmith_div_f32(-1062f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(arg_0.x)))))), func_3(), !vec2<bool>(_wgslsmith_sub_i32(u_input.a, u_input.a) <= -59631i, true), Struct_3(Struct_1(~vec2<u32>(1u, 1u), 57796u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-954f, -295f, arg_0.x, arg_0.x)), min(_wgslsmith_clamp_u32(1u, 1u, 4294967295u), 1u), u_input.a), Struct_2(Struct_1(vec2<u32>(1u, 1u), abs(4294967295u), _wgslsmith_f_op_vec4_f32(vec4<f32>(582f, 192f, arg_0.x, 585f) * vec4<f32>(arg_0.x, -560f, arg_0.x, -493f)), 0u, -1i), func_2().a, vec3<u32>(abs(0u), 12024u, ~4294967295u)), ~(abs(vec4<u32>(75854u, 5292u, 1u, 24888u)) | select(global1[_wgslsmith_index_u32(1u, 29u)], vec4<u32>(80235u, 24882u, 0u, 1u), false)), Struct_2(Struct_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(34859u, 32356u), vec2<u32>(12398u, 4294967295u), vec2<u32>(4294967295u, 1u)), 1u, vec4<f32>(arg_0.x, arg_0.x, arg_0.x, -927f), ~9471u, u_input.a << (1u % 32u)), func_2().a, vec3<u32>(101843u, 906u, 37468u) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(6760u, 21060u, 2625u), vec3<u32>(4294967295u, 64956u, 15712u), vec3<u32>(23601u, 1u, 68444u)) % vec3<u32>(32u))), firstTrailingBit(global1[_wgslsmith_index_u32(~1u, 29u)])));
    global0 = array<vec2<i32>, 15>();
    var var_1 = Struct_3(func_2().b, Struct_2(var_0.e.b.a, func_2().a, ~min(_wgslsmith_sub_vec3_u32(vec3<u32>(39389u, 1u, var_0.e.c.x), vec3<u32>(0u, var_0.e.a.d, var_0.e.d.c.x)), vec3<u32>(2063u, var_0.e.e.x, var_0.e.d.b.d) & vec3<u32>(1u, 4294967295u, 56663u))), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.a.x, 0u, var_0.e.a.a.x, var_0.e.b.a.d) & ~var_0.e.e, var_0.e.e, _wgslsmith_mod_vec4_u32(vec4<u32>(0u, var_0.a.x, 0u, var_0.a.x), vec4<u32>(4294967295u, 1u, var_0.e.e.x, var_0.a.x))), var_0.e.b, _wgslsmith_sub_vec4_u32(~global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1326u, 0u, max(var_0.e.e.x, 0u)), 29u)], vec4<u32>(~(~var_0.e.b.a.b), var_0.a.x | _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.e.a.a.x, var_0.a.x, var_0.a.x), vec3<u32>(1u, var_0.e.e.x, 1u)), abs(~var_0.e.b.b.d), abs(var_0.a.x))));
    let var_2 = func_2().a;
    global0 = array<vec2<i32>, 15>();
    return 137f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 15>();
    var var_0 = _wgslsmith_f_op_f32(func_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1344f + _wgslsmith_f_op_f32(1667f * 172f))), _wgslsmith_f_op_f32(select(1f, 685f, !any(vec4<bool>(true, false, false, false)))), _wgslsmith_f_op_f32(func_1()))));
    let var_1 = ~reverseBits(~(~vec2<u32>(0u, 1u)));
    global0 = array<vec2<i32>, 15>();
    global0 = array<vec2<i32>, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(~vec3<u32>(var_1.x, ~10135u, _wgslsmith_mult_u32(var_1.x, 0u))));
}

