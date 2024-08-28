struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_2,
    d: bool,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 31>;

var<private> global1: array<u32, 2> = array<u32, 2>(1u, 1u);

var<private> global2: u32 = 1652u;

var<private> global3: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(Struct_1(vec3<bool>(true, true, true), false, vec3<i32>(0i, 2147483647i, 0i), 15145u, 38033u), 22043u, Struct_1(vec3<bool>(false, false, true), false, vec3<i32>(72598i, -1i, 1i), 18687u, 17789u), vec4<bool>(false, false, true, true)), Struct_2(Struct_1(vec3<bool>(true, true, true), false, vec3<i32>(0i, 6111i, 26055i), 20938u, 1u), 53945u, Struct_1(vec3<bool>(false, false, false), true, vec3<i32>(609i, 17298i, 1i), 4294967295u, 51058u), vec4<bool>(true, false, false, true)), Struct_2(Struct_1(vec3<bool>(false, false, false), false, vec3<i32>(-4152i, 16553i, 122346i), 4294967295u, 88718u), 41158u, Struct_1(vec3<bool>(true, true, true), false, vec3<i32>(0i, -9952i, -19115i), 4294967295u, 76106u), vec4<bool>(false, true, true, false)), Struct_2(Struct_1(vec3<bool>(false, false, false), false, vec3<i32>(-1i, 1i, -9314i), 36835u, 19963u), 0u, Struct_1(vec3<bool>(true, false, false), true, vec3<i32>(-81854i, i32(-2147483648), 1i), 4294967295u, 1u), vec4<bool>(false, false, false, false)), Struct_2(Struct_1(vec3<bool>(false, false, true), true, vec3<i32>(14569i, 2147483647i, 11137i), 7389u, 31696u), 64684u, Struct_1(vec3<bool>(true, true, true), false, vec3<i32>(21470i, -5407i, 22675i), 4294967295u, 31388u), vec4<bool>(false, true, false, false)), Struct_2(Struct_1(vec3<bool>(false, false, false), false, vec3<i32>(-10536i, 2147483647i, 21564i), 30556u, 0u), 17631u, Struct_1(vec3<bool>(true, true, true), true, vec3<i32>(2147483647i, -62575i, 29508i), 72159u, 10165u), vec4<bool>(false, false, true, true)), Struct_2(Struct_1(vec3<bool>(true, false, false), false, vec3<i32>(55380i, 54017i, -18040i), 0u, 1914u), 1708u, Struct_1(vec3<bool>(true, false, false), true, vec3<i32>(1i, 2147483647i, -5511i), 8138u, 1u), vec4<bool>(true, false, true, true)), Struct_2(Struct_1(vec3<bool>(false, false, false), false, vec3<i32>(-31789i, 20055i, 2147483647i), 57378u, 110928u), 4294967295u, Struct_1(vec3<bool>(false, true, false), false, vec3<i32>(-14617i, -31491i, -1i), 113180u, 4294967295u), vec4<bool>(true, true, false, true)), Struct_2(Struct_1(vec3<bool>(false, true, true), false, vec3<i32>(-1i, 0i, 2147483647i), 1u, 8222u), 58711u, Struct_1(vec3<bool>(false, false, false), true, vec3<i32>(2147483647i, 1i, 2720i), 1435u, 4294967295u), vec4<bool>(false, false, true, false)), Struct_2(Struct_1(vec3<bool>(true, false, false), true, vec3<i32>(2147483647i, -63938i, -14092i), 10271u, 1u), 0u, Struct_1(vec3<bool>(true, false, true), true, vec3<i32>(21559i, 2147483647i, 21852i), 4294967295u, 13586u), vec4<bool>(true, true, true, false)), Struct_2(Struct_1(vec3<bool>(false, true, false), true, vec3<i32>(119845i, 2147483647i, -7357i), 2033u, 2916u), 37325u, Struct_1(vec3<bool>(false, false, false), false, vec3<i32>(32117i, -1i, 2147483647i), 1u, 44769u), vec4<bool>(false, true, true, false)), Struct_2(Struct_1(vec3<bool>(true, true, true), false, vec3<i32>(1i, 31959i, 1i), 18900u, 1u), 4294967295u, Struct_1(vec3<bool>(true, true, false), false, vec3<i32>(83461i, -1691i, 31999i), 4294967295u, 23402u), vec4<bool>(false, false, true, false)), Struct_2(Struct_1(vec3<bool>(false, false, true), false, vec3<i32>(36792i, -18406i, 10241i), 8641u, 127213u), 0u, Struct_1(vec3<bool>(true, true, true), false, vec3<i32>(-9977i, 1i, 4588i), 4874u, 28504u), vec4<bool>(false, false, true, false)), Struct_2(Struct_1(vec3<bool>(false, true, false), true, vec3<i32>(-1i, -25488i, -1i), 6764u, 49624u), 1u, Struct_1(vec3<bool>(true, true, false), false, vec3<i32>(-4460i, 0i, -1i), 1u, 4294967295u), vec4<bool>(false, false, false, true)), Struct_2(Struct_1(vec3<bool>(true, false, true), true, vec3<i32>(0i, -67994i, -1i), 4294967295u, 13858u), 0u, Struct_1(vec3<bool>(true, false, false), true, vec3<i32>(25858i, i32(-2147483648), 0i), 4294967295u, 1131u), vec4<bool>(true, true, false, false)), Struct_2(Struct_1(vec3<bool>(true, false, false), false, vec3<i32>(-41686i, -80826i, 20617i), 0u, 0u), 4294967295u, Struct_1(vec3<bool>(true, true, false), true, vec3<i32>(1i, 24764i, 0i), 4294967295u, 0u), vec4<bool>(true, true, true, true)), Struct_2(Struct_1(vec3<bool>(true, false, false), true, vec3<i32>(2147483647i, -27195i, 2147483647i), 45942u, 55179u), 60424u, Struct_1(vec3<bool>(false, true, false), true, vec3<i32>(50375i, 0i, 0i), 0u, 32898u), vec4<bool>(false, false, true, false)));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: Struct_3) -> u32 {
    var var_0 = true;
    var var_1 = _wgslsmith_dot_vec2_u32(u_input.b.xy, select(max(~_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 58399u), u_input.b.zy), vec2<u32>(~u_input.c, 15633u)), vec2<u32>(1u | arg_2.e, reverseBits(min(30715u, global1[_wgslsmith_index_u32(arg_0.d, 2u)]))), arg_0.a.xx));
    var var_2 = Struct_1(vec3<bool>(true, true, false), arg_3.b, ~min(vec3<i32>(arg_0.c.x | arg_3.a.c.c.x, 0i, min(arg_2.c.x, arg_0.c.x)), _wgslsmith_add_vec3_i32(arg_2.c, firstLeadingBit(arg_2.c))), select(max(u_input.a, ~4294967295u) & _wgslsmith_mod_u32(5119u, reverseBits(global1[_wgslsmith_index_u32(1u, 2u)])), arg_3.a.a.e, any(vec2<bool>(false, true))), 83591u);
    let var_3 = global1[_wgslsmith_index_u32(1u, 2u)];
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(1070f)))), -190f);
    return ~abs(4294967295u);
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: Struct_2) -> bool {
    var var_0 = arg_2.d.yz;
    var var_1 = var_0.x;
    global1 = array<u32, 2>();
    let var_2 = u_input.c;
    let var_3 = _wgslsmith_mult_vec3_u32(u_input.b, countOneBits(vec3<u32>(u_input.c, ~arg_1.a.d, 12914u)) ^ (firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 56603u, 67738u), vec3<u32>(23955u, arg_2.b, arg_2.b))) << (u_input.b % vec3<u32>(32u))));
    return 1u <= _wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(arg_1.b, arg_1.a.e, 0u, 43967u), vec4<u32>(11265u, var_3.x, 19769u, 1u)) | vec4<u32>(35157u ^ var_2, func_3(arg_2.c, false, Struct_1(arg_1.d.ywx, var_0.x, vec3<i32>(-32309i, 2147483647i, -2510i), arg_1.a.e, global1[_wgslsmith_index_u32(4408u, 2u)]), global0[_wgslsmith_index_u32(17821u, 31u)]), ~0u, ~4294967295u), abs(abs(_wgslsmith_add_vec4_u32(vec4<u32>(arg_1.a.e, var_3.x, 80676u, 0u), vec4<u32>(global1[_wgslsmith_index_u32(1u, 2u)], 24235u, 22988u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(111031u, 2u)], 2u)], 2u)])))));
}

fn func_1(arg_0: i32) -> f32 {
    let var_0 = -select(~(-1i ^ arg_0), -(~0i), true) << (((global1[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec2_u32(u_input.b.xz, vec2<u32>(0u, 0u))), 2u)] & 0u) >> (max(~0u, ~46072u >> (select(u_input.b.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 2u)], 2u)], true) % 32u)) % 32u)) % 32u);
    var var_1 = vec4<bool>(true, !any(vec2<bool>(func_2(-912f, Struct_2(Struct_1(vec3<bool>(false, true, false), true, vec3<i32>(arg_0, 2147483647i, var_0), 1u, 14966u), 22362u, Struct_1(vec3<bool>(true, true, false), false, vec3<i32>(var_0, var_0, 0i), u_input.c, 4294967295u), vec4<bool>(true, true, false, true)), Struct_2(Struct_1(vec3<bool>(false, false, false), false, vec3<i32>(2147483647i, var_0, -1i), 44892u, 21305u), u_input.a, Struct_1(vec3<bool>(false, false, true), false, vec3<i32>(arg_0, 9996i, var_0), 7517u, 86977u), vec4<bool>(true, false, false, true))), all(vec3<bool>(true, true, false)))), all(vec2<bool>(true, true)), !(true || all(vec2<bool>(true, true))));
    let var_2 = global3[_wgslsmith_index_u32(4294967295u, 17u)];
    return 1847f;
}

fn func_4(arg_0: u32, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(vec3<bool>(false, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 0i, 29358i, 13767i), vec4<i32>(42712i, 2147483647i, 43058i, 27375i)) > firstLeadingBit(2147483647i), true), true, ~(~firstTrailingBit(vec3<i32>(-2147483647i, 15373i, 49749i))), ~1u, 67871u), abs(_wgslsmith_mod_u32((global1[_wgslsmith_index_u32(arg_0, 2u)] ^ 3721u) ^ max(4294967295u, arg_0), u_input.a)), Struct_1(select(vec3<bool>(true, true, true), !select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), true), !func_2(arg_1.x, global3[_wgslsmith_index_u32(~49567u, 17u)], Struct_2(Struct_1(vec3<bool>(true, true, false), true, vec3<i32>(1i, 1i, 0i), 32572u, global1[_wgslsmith_index_u32(32166u, 2u)]), global1[_wgslsmith_index_u32(4294967295u, 2u)], Struct_1(vec3<bool>(true, true, false), true, vec3<i32>(-14704i, 12339i, 48112i), 4294967295u, global1[_wgslsmith_index_u32(4294967295u, 2u)]), vec4<bool>(false, false, true, true))), select(select(_wgslsmith_mult_vec3_i32(vec3<i32>(12082i, -1i, 6512i), vec3<i32>(1i, -2147483647i, 51742i)), ~vec3<i32>(24730i, -23962i, 0i), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false)), select(~vec3<i32>(1i, -2147483647i, 2147483647i), firstLeadingBit(vec3<i32>(-36298i, 30532i, 27897i)), vec3<bool>(true, true, true)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true)), _wgslsmith_add_u32(~global1[_wgslsmith_index_u32(22825u, 2u)], ~1u) >> (~4294967295u % 32u), _wgslsmith_dot_vec3_u32(~reverseBits(u_input.b), select(vec3<u32>(4294967295u, 4294967295u, 48253u), abs(vec3<u32>(47734u, 80391u, arg_0)), vec3<bool>(true, true, false)))), vec4<bool>(select(_wgslsmith_f_op_f32(max(arg_1.x, arg_1.x)) <= arg_1.x, true, all(vec3<bool>(true, true, true))), !all(vec2<bool>(true, true)), true, true));
    var var_1 = u_input.b;
    var var_2 = select(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(-var_0.a.c.x, var_0.c.c.x), ~_wgslsmith_mult_i32(1i, 19747i), 2147483647i), var_0.c.c), 2147483647i, _wgslsmith_f_op_f32(arg_1.x + arg_1.x) > -1000f);
    var var_3 = -18047i << (firstTrailingBit(~var_0.b & _wgslsmith_add_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(0u, 2u)], 2u)], 2021u)) % 32u);
    let var_4 = _wgslsmith_f_op_f32(func_1(max(-abs(firstLeadingBit(var_0.c.c.x)), 2147483647i)));
    return Struct_1(vec3<bool>(var_0.d.x, var_0.a.b, var_0.d.x), true, -_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.c.c.x, -44652i, var_0.a.c.x), var_0.c.c), ~abs(vec3<i32>(var_0.a.c.x, -34863i, -1i))), 0u, u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(abs(~u_input.c), vec3<f32>(_wgslsmith_f_op_f32(step(1f, 1382f)), _wgslsmith_f_op_f32(func_1(-(i32(-1i) * -1i))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f * _wgslsmith_div_f32(993f, -165f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(796f + 1039f) + _wgslsmith_f_op_f32(min(-367f, -786f)))))));
    let var_1 = u_input.a;
    global2 = min(abs(var_1), min(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_1, 1u), 2u)], ~1u)) << ((~_wgslsmith_sub_u32(var_0.d, firstLeadingBit(4294967295u)) >> ((global1[_wgslsmith_index_u32(abs(33575u ^ global1[_wgslsmith_index_u32(78766u, 2u)]), 2u)] << (~(65483u | u_input.c) % 32u)) % 32u)) % 32u);
    global0 = array<Struct_3, 31>();
    let var_2 = ~(u_input.b ^ _wgslsmith_sub_vec3_u32(u_input.b, ~countOneBits(u_input.b)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1127f * -504f), -1147f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1317f) + _wgslsmith_f_op_f32(min(731f, 236f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -261f)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(195f)), _wgslsmith_div_f32(-1662f, 324f), true))))));
}

