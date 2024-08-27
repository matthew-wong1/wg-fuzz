struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(Struct_1(vec2<u32>(68009u, 133u)), Struct_1(vec2<u32>(70080u, 35295u)), Struct_1(vec2<u32>(1u, 0u)), vec4<f32>(-2114f, 752f, -321f, -452f), Struct_1(vec2<u32>(19204u, 51821u))), Struct_2(Struct_1(vec2<u32>(4698u, 35895u)), Struct_1(vec2<u32>(4294967295u, 1u)), Struct_1(vec2<u32>(22827u, 1u)), vec4<f32>(252f, -548f, 682f, -427f), Struct_1(vec2<u32>(0u, 0u))), Struct_2(Struct_1(vec2<u32>(0u, 4294967295u)), Struct_1(vec2<u32>(3414u, 46113u)), Struct_1(vec2<u32>(6782u, 4294967295u)), vec4<f32>(655f, 358f, -1000f, -1000f), Struct_1(vec2<u32>(50942u, 4294967295u))), Struct_2(Struct_1(vec2<u32>(0u, 119987u)), Struct_1(vec2<u32>(1u, 61816u)), Struct_1(vec2<u32>(8462u, 15976u)), vec4<f32>(-338f, 1179f, 1152f, 1281f), Struct_1(vec2<u32>(4294967295u, 59824u))), Struct_2(Struct_1(vec2<u32>(1u, 20598u)), Struct_1(vec2<u32>(30000u, 0u)), Struct_1(vec2<u32>(4294967295u, 1162u)), vec4<f32>(1635f, 819f, -1035f, -941f), Struct_1(vec2<u32>(51800u, 1u))), Struct_2(Struct_1(vec2<u32>(1u, 1u)), Struct_1(vec2<u32>(41511u, 81710u)), Struct_1(vec2<u32>(4294967295u, 4294967295u)), vec4<f32>(-808f, -1680f, -598f, 239f), Struct_1(vec2<u32>(52965u, 41298u))), Struct_2(Struct_1(vec2<u32>(111351u, 1u)), Struct_1(vec2<u32>(0u, 1u)), Struct_1(vec2<u32>(0u, 1u)), vec4<f32>(1870f, -754f, -720f, -605f), Struct_1(vec2<u32>(1u, 0u))), Struct_2(Struct_1(vec2<u32>(77041u, 11884u)), Struct_1(vec2<u32>(46248u, 1u)), Struct_1(vec2<u32>(1u, 19700u)), vec4<f32>(165f, -1072f, 3547f, -355f), Struct_1(vec2<u32>(0u, 19448u))), Struct_2(Struct_1(vec2<u32>(36530u, 55012u)), Struct_1(vec2<u32>(4294967295u, 83674u)), Struct_1(vec2<u32>(1u, 0u)), vec4<f32>(-656f, 414f, -117f, -832f), Struct_1(vec2<u32>(0u, 0u))), Struct_2(Struct_1(vec2<u32>(4294967295u, 88293u)), Struct_1(vec2<u32>(1u, 0u)), Struct_1(vec2<u32>(38160u, 18538u)), vec4<f32>(535f, -261f, -945f, 740f), Struct_1(vec2<u32>(4294967295u, 9411u))), Struct_2(Struct_1(vec2<u32>(4294967295u, 34941u)), Struct_1(vec2<u32>(1u, 0u)), Struct_1(vec2<u32>(4294967295u, 97047u)), vec4<f32>(1102f, 411f, -1026f, 1000f), Struct_1(vec2<u32>(0u, 1u))), Struct_2(Struct_1(vec2<u32>(0u, 61143u)), Struct_1(vec2<u32>(0u, 2608u)), Struct_1(vec2<u32>(5741u, 0u)), vec4<f32>(-662f, -647f, -277f, 1843f), Struct_1(vec2<u32>(83300u, 0u))), Struct_2(Struct_1(vec2<u32>(8428u, 40926u)), Struct_1(vec2<u32>(30544u, 12115u)), Struct_1(vec2<u32>(2826u, 14540u)), vec4<f32>(-550f, -439f, 562f, -551f), Struct_1(vec2<u32>(1u, 1u))), Struct_2(Struct_1(vec2<u32>(4294967295u, 15825u)), Struct_1(vec2<u32>(1u, 20996u)), Struct_1(vec2<u32>(105849u, 23874u)), vec4<f32>(245f, -782f, -114f, -477f), Struct_1(vec2<u32>(1831u, 4294967295u))), Struct_2(Struct_1(vec2<u32>(4294967295u, 13186u)), Struct_1(vec2<u32>(39740u, 29751u)), Struct_1(vec2<u32>(57615u, 4294967295u)), vec4<f32>(-1022f, 1845f, 1385f, 307f), Struct_1(vec2<u32>(42932u, 41247u))), Struct_2(Struct_1(vec2<u32>(7738u, 4294967295u)), Struct_1(vec2<u32>(39824u, 39686u)), Struct_1(vec2<u32>(4294967295u, 1u)), vec4<f32>(272f, -1015f, -1667f, -220f), Struct_1(vec2<u32>(31289u, 1u))), Struct_2(Struct_1(vec2<u32>(1u, 0u)), Struct_1(vec2<u32>(4294967295u, 80435u)), Struct_1(vec2<u32>(1u, 1u)), vec4<f32>(-315f, -2211f, 1061f, 1734f), Struct_1(vec2<u32>(1u, 0u))), Struct_2(Struct_1(vec2<u32>(13620u, 59572u)), Struct_1(vec2<u32>(15541u, 4294967295u)), Struct_1(vec2<u32>(4294967295u, 0u)), vec4<f32>(549f, -379f, -269f, 700f), Struct_1(vec2<u32>(0u, 4294967295u))), Struct_2(Struct_1(vec2<u32>(0u, 1u)), Struct_1(vec2<u32>(34180u, 0u)), Struct_1(vec2<u32>(4294967295u, 68365u)), vec4<f32>(1134f, 367f, 1167f, -1601f), Struct_1(vec2<u32>(20188u, 56841u))), Struct_2(Struct_1(vec2<u32>(14288u, 628u)), Struct_1(vec2<u32>(7322u, 71998u)), Struct_1(vec2<u32>(39313u, 0u)), vec4<f32>(-478f, 1000f, 121f, 1533f), Struct_1(vec2<u32>(1u, 29792u))), Struct_2(Struct_1(vec2<u32>(20155u, 140734u)), Struct_1(vec2<u32>(0u, 4294967295u)), Struct_1(vec2<u32>(45048u, 56931u)), vec4<f32>(937f, -360f, -1029f, -309f), Struct_1(vec2<u32>(48109u, 0u))), Struct_2(Struct_1(vec2<u32>(30882u, 94850u)), Struct_1(vec2<u32>(0u, 36067u)), Struct_1(vec2<u32>(19529u, 3733u)), vec4<f32>(-391f, 1205f, 537f, 1664f), Struct_1(vec2<u32>(1u, 0u))), Struct_2(Struct_1(vec2<u32>(43957u, 365u)), Struct_1(vec2<u32>(4294967295u, 0u)), Struct_1(vec2<u32>(4294967295u, 24428u)), vec4<f32>(1233f, -1257f, 1355f, 1122f), Struct_1(vec2<u32>(26068u, 6630u))));

var<private> global1: array<vec4<u32>, 16>;

var<private> global2: vec2<i32> = vec2<i32>(7022i, 0i);

var<private> global3: vec3<u32> = vec3<u32>(0u, 14369u, 28181u);

var<private> global4: array<f32, 8> = array<f32, 8>(-149f, -1000f, -740f, -246f, -1684f, 1542f, 1612f, -750f);

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = -_wgslsmith_mult_vec4_i32(max(~abs(vec4<i32>(u_input.b.x, -47229i, -2147483647i, -1i)), abs(vec4<i32>(u_input.a, 2147483647i, 26680i, u_input.a)) >> (abs(global1[_wgslsmith_index_u32(arg_0.a.x, 16u)]) % vec4<u32>(32u))), vec4<i32>(~abs(2147483647i), u_input.b.x, _wgslsmith_mod_i32(~u_input.a, _wgslsmith_div_i32(-1i, 2147483647i)), min(7193i, global2.x | -53287i)));
    var var_1 = arg_0;
    let var_2 = select((~0u >= _wgslsmith_mod_u32(_wgslsmith_sub_u32(global3.x, 3292u), 0u)) | false, select(true, !any(vec3<bool>(true, true, true)), ((30318i & var_0.x) <= -1i) || true), any(select(vec2<bool>(true, false), vec2<bool>(true, false), !select(vec2<bool>(false, false), vec2<bool>(true, true), false))));
    let var_3 = Struct_2(arg_0, arg_0, Struct_1(select(var_1.a, arg_0.a, var_2)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4[_wgslsmith_index_u32(var_1.a.x, 8u)], -1141f, global4[_wgslsmith_index_u32(global3.x, 8u)], global4[_wgslsmith_index_u32(4294967295u, 8u)])))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-711f, global4[_wgslsmith_index_u32(arg_0.a.x, 8u)], -570f, global4[_wgslsmith_index_u32(arg_0.a.x, 8u)]) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(154f, global4[_wgslsmith_index_u32(3267u, 8u)], global4[_wgslsmith_index_u32(55810u, 8u)], 1000f), vec4<f32>(global4[_wgslsmith_index_u32(0u, 8u)], -441f, global4[_wgslsmith_index_u32(var_1.a.x, 8u)], global4[_wgslsmith_index_u32(u_input.d, 8u)]), vec4<bool>(false, false, false, false)))))))), Struct_1(vec2<u32>(_wgslsmith_div_u32(max(u_input.c.x, arg_0.a.x), ~u_input.c.x), _wgslsmith_add_u32(global3.x, _wgslsmith_div_u32(4474u, arg_0.a.x)))));
    var var_4 = Struct_2(var_3.e, Struct_1(min(_wgslsmith_mult_vec2_u32(vec2<u32>(var_1.a.x, var_1.a.x), vec2<u32>(0u, 4294967295u)) << (arg_0.a % vec2<u32>(32u)), abs(vec2<u32>(1u, arg_0.a.x)))), arg_0, _wgslsmith_f_op_vec4_f32(trunc(var_3.d)), Struct_1(~countOneBits(~var_1.a)));
    return ~(~47945u);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec3<i32>) -> vec4<f32> {
    var var_0 = vec3<u32>(abs(arg_0.a.a.x), _wgslsmith_mult_u32(~12348u, func_3(arg_2)), 1u);
    var var_1 = Struct_2(Struct_1(vec2<u32>(1u, ~var_0.x)), arg_2, arg_2, arg_1.d, arg_2);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.d.x, var_1.d.x, global4[_wgslsmith_index_u32(1u, 8u)], 103f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1238f, 743f, global4[_wgslsmith_index_u32(arg_2.a.x, 8u)], var_1.d.x)) - vec4<f32>(1656f, arg_0.d.x, -1000f, arg_0.d.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.d) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(420f, var_1.d.x, -415f, -360f)))) - arg_0.d);
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: u32) -> f32 {
    global4 = array<f32, 8>();
    let var_0 = Struct_2(Struct_1(_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(arg_2.a, abs(arg_0.a), _wgslsmith_sub_vec2_u32(u_input.c.xx, vec2<u32>(global3.x, arg_3))), ~_wgslsmith_add_vec2_u32(arg_2.a, global3.yy))), Struct_1(countOneBits(~global3.zz)), arg_0, _wgslsmith_f_op_vec4_f32(func_2(Struct_2(arg_0, arg_0, arg_2, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1586f, global4[_wgslsmith_index_u32(1u, 8u)], global4[_wgslsmith_index_u32(arg_1, 8u)], global4[_wgslsmith_index_u32(arg_3, 8u)]), vec4<f32>(368f, global4[_wgslsmith_index_u32(1u, 8u)], global4[_wgslsmith_index_u32(arg_0.a.x, 8u)], global4[_wgslsmith_index_u32(global3.x, 8u)]), any(vec2<bool>(true, true)))), Struct_1(~arg_0.a)), global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(arg_3, arg_1), 23u)], Struct_1(u_input.c.yy), u_input.b)), Struct_1(~global3.yy));
    var var_1 = _wgslsmith_f_op_f32(floor(var_0.d.x));
    return _wgslsmith_f_op_f32(709f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.d.x), global4[_wgslsmith_index_u32(u_input.d, 8u)]) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-368f + global4[_wgslsmith_index_u32(arg_2.a.x, 8u)]), -1675f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_i32(u_input.b.x, -2147483647i);
    let var_1 = Struct_1(vec2<u32>(980u >> (~(~u_input.d) % 32u), 54563u));
    let var_2 = !(!(!(any(vec3<bool>(false, false, false)) || (0i == global2.x))));
    global3 = ~(_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(~u_input.c.ywy, ~u_input.c.yzx), vec3<u32>(var_1.a.x, 4294967295u, 1u)) & max(~(u_input.c.wyy >> (u_input.c.yzy % vec3<u32>(32u))), _wgslsmith_div_vec3_u32(vec3<u32>(58449u, 4294967295u, 31490u), _wgslsmith_mult_vec3_u32(u_input.c.yxx, u_input.c.xwz))));
    var var_3 = Struct_2(var_1, var_1, Struct_1(~var_1.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(1128f, 758f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(global3.x, 8u)] + global4[_wgslsmith_index_u32(34127u, 8u)]))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -116f)))) - vec4<f32>(1000f, _wgslsmith_f_op_f32(select(-706f, global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(global3.x, var_1.a.x), 8u)], global3.x == u_input.c.x)), _wgslsmith_f_op_f32(func_1(var_1, firstLeadingBit(u_input.c.x), var_1, u_input.c.x >> (var_1.a.x % 32u))), _wgslsmith_f_op_f32(floor(global4[_wgslsmith_index_u32(20081u, 8u)])))), var_1);
    let x = u_input.a;
    s_output = StorageBuffer(abs(countOneBits(~var_3.c.a.x)), ~u_input.c.ywz << ((vec3<u32>(1u, 1u & u_input.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 13226u), var_3.c.a)) ^ u_input.c.xyx) % vec3<u32>(32u)), abs(~vec3<u32>(~u_input.d, ~0u, ~u_input.c.x)));
}

