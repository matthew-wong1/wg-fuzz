struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec4<bool>,
    d: vec4<f32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3> = array<bool, 3>(false, true, true);

var<private> global1: f32 = -1000f;

var<private> global2: array<i32, 11> = array<i32, 11>(1i, -15617i, 1i, -1i, 68044i, 1i, -58323i, 2147483647i, 0i, 32415i, -57435i);

var<private> global3: vec3<i32> = vec3<i32>(6185i, 1i, 1i);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<u32>, arg_1: i32) -> vec3<bool> {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-1154f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(306f)) * -247f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -490f)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1629f)))), false)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1066f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(1524f)))))));
    let var_0 = min(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1, global2[_wgslsmith_index_u32(arg_0.x, 11u)]), global3.zx) ^ (global2[_wgslsmith_index_u32(abs(arg_0.x), 11u)] & _wgslsmith_sub_i32(arg_1, global2[_wgslsmith_index_u32(arg_0.x, 11u)])), firstLeadingBit(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, -2147483647i, arg_1, -1i), u_input.b), vec4<i32>(global3.x, -64431i, -1813i, -16316i) >> (vec4<u32>(40448u, arg_0.x, 1u, 4294967295u) % vec4<u32>(32u)))), _wgslsmith_mult_i32(i32(-1i) * -2815i, arg_1), abs(reverseBits(arg_1) | arg_1)), vec4<i32>(-_wgslsmith_mod_i32(max(15996i, 2147483647i), ~u_input.b.x), firstLeadingBit(-41298i), max(~min(0i, global3.x), _wgslsmith_dot_vec4_i32(u_input.b, -vec4<i32>(u_input.a.x, arg_1, arg_1, global3.x))), 32277i));
    let var_1 = Struct_2(Struct_1(_wgslsmith_sub_i32(-1i, _wgslsmith_div_i32(global2[_wgslsmith_index_u32(countOneBits(59383u), 11u)], -75249i)), ~vec3<u32>(arg_0.x, ~0u, ~29851u), select(select(!vec4<bool>(true, global0[_wgslsmith_index_u32(9324u, 3u)], global0[_wgslsmith_index_u32(0u, 3u)], true), !vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 3u)], global0[_wgslsmith_index_u32(1u, 3u)], true, true), !vec4<bool>(global0[_wgslsmith_index_u32(0u, 3u)], false, global0[_wgslsmith_index_u32(4294967295u, 3u)], true)), !select(vec4<bool>(global0[_wgslsmith_index_u32(27999u, 3u)], true, true, global0[_wgslsmith_index_u32(arg_0.x, 3u)]), vec4<bool>(global0[_wgslsmith_index_u32(54444u, 3u)], true, true, false), false), true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1f, 1f, 1f, 1f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 579f, 1623f, -1923f) * vec4<f32>(1023f, -647f, -927f, 116f)) + vec4<f32>(519f, 654f, -417f, -434f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-193f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-508f, -925f)) * _wgslsmith_f_op_f32(trunc(-453f))))), 0u, 758f);
    global0 = array<bool, 3>();
    let var_2 = !all(!(!vec4<bool>(false, true, global0[_wgslsmith_index_u32(var_1.b, 3u)], false)));
    return select(vec3<bool>(any(!select(vec2<bool>(true, true), vec2<bool>(true, false), true)), all(var_1.a.c.yxz), -arg_1 < 2147483647i), select(var_1.a.c.yww, vec3<bool>(true, true, true), var_1.a.c.zxy), true);
}

fn func_2() -> i32 {
    var var_0 = vec2<bool>(all(func_3(~vec3<u32>(108138u, 35321u, 22925u), -2147483647i)), firstTrailingBit(-(~global2[_wgslsmith_index_u32(17860u, 11u)])) >= (_wgslsmith_sub_i32(114170i, u_input.b.x) | (~39994i ^ ~u_input.a.x)));
    global3 = firstLeadingBit(u_input.a.yww >> (_wgslsmith_add_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 19063u, 6083u), vec3<u32>(1u, 1u, 15794u)), min(vec3<u32>(29792u, 0u, 4581u), vec3<u32>(1u, 1u, 1u))) % vec3<u32>(32u)));
    var var_1 = vec4<u32>(_wgslsmith_clamp_u32(~reverseBits(0u), _wgslsmith_div_u32(~12991u, 52787u), 16535u) & _wgslsmith_clamp_u32(1u, 10400u, 4294967295u), select(~firstLeadingBit(21327u), _wgslsmith_dot_vec2_u32(max(max(vec2<u32>(37064u, 0u), vec2<u32>(53297u, 68042u)), vec2<u32>(97818u, 36559u)), vec2<u32>(4294967295u, ~0u)), true), select((~78789u >> (1u % 32u)) ^ min(1u, _wgslsmith_clamp_u32(6808u, 4294967295u, 4294967295u)), ~(~22603u), true), min(_wgslsmith_sub_u32(1092u, 1u), 1u));
    var var_2 = Struct_1(~(~0i), vec3<u32>(var_1.x, ~(~1u), var_1.x), !(!vec4<bool>(global0[_wgslsmith_index_u32(~27114u, 3u)], 0u <= var_1.x, false, global0[_wgslsmith_index_u32(countOneBits(var_1.x), 3u)])), vec4<f32>(-420f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-1749f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(392f))) + -1374f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(160f)))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-658f)))))), _wgslsmith_f_op_f32(192f * _wgslsmith_f_op_f32(max(-1000f, 562f))));
    var var_3 = _wgslsmith_mult_vec2_i32(vec2<i32>(17873i, _wgslsmith_mod_i32(global3.x, _wgslsmith_dot_vec4_i32(select(vec4<i32>(global3.x, u_input.a.x, 13001i, var_2.a), vec4<i32>(u_input.a.x, 3836i, -2147483647i, 1i), true), abs(vec4<i32>(var_2.a, 1i, global2[_wgslsmith_index_u32(var_1.x, 11u)], 0i))))), abs(_wgslsmith_sub_vec2_i32(abs(-vec2<i32>(-15325i, -9955i)), _wgslsmith_sub_vec2_i32(~u_input.b.yw, vec2<i32>(global3.x, -23061i)))));
    return -65113i;
}

fn func_4(arg_0: vec2<i32>) -> Struct_2 {
    let var_0 = vec3<u32>(~abs(reverseBits(4294967295u)) >> (1u % 32u), _wgslsmith_dot_vec2_u32((firstTrailingBit(vec2<u32>(51541u, 59682u)) | vec2<u32>(1u, 1u)) << (~vec2<u32>(1u, 1u) % vec2<u32>(32u)), firstTrailingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(33593u, 4294967295u), vec2<u32>(76127u, 102438u))) & ~(~vec2<u32>(1u, 0u))), ~(min(~4294967295u, firstTrailingBit(0u)) & _wgslsmith_div_u32(0u, ~27616u)));
    let var_1 = Struct_2(Struct_1(_wgslsmith_clamp_i32(-1i, global3.x, _wgslsmith_mod_i32(538i, _wgslsmith_add_i32(arg_0.x, -20515i))), reverseBits(reverseBits(var_0)) & ~abs(var_0), select(vec4<bool>(true, func_3(var_0, u_input.b.x).x, true, !global0[_wgslsmith_index_u32(var_0.x, 3u)]), select(!vec4<bool>(true, global0[_wgslsmith_index_u32(4049u, 3u)], global0[_wgslsmith_index_u32(var_0.x, 3u)], global0[_wgslsmith_index_u32(var_0.x, 3u)]), vec4<bool>(global0[_wgslsmith_index_u32(25912u, 3u)], global0[_wgslsmith_index_u32(var_0.x, 3u)], false, false), var_0.x != 42112u), func_3(select(var_0, vec3<u32>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, false, false)), arg_0.x).x), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(412f, 1000f, -987f, 527f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, 1216f, -1000f, 277f), vec4<f32>(161f, -543f, 346f, -1403f))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-188f, 562f, 388f, -1517f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(332f - -521f) * -167f))), _wgslsmith_mult_u32((0u << (_wgslsmith_mod_u32(var_0.x, var_0.x) % 32u)) ^ (var_0.x << (min(4294967295u, 0u) % 32u)), 19332u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-584f * -1429f)))))));
    global1 = _wgslsmith_f_op_f32(-879f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(416f + 197f), 152f)))), var_1.c));
    global0 = array<bool, 3>();
    global1 = var_1.a.d.x;
    return Struct_2(Struct_1(countOneBits(_wgslsmith_mult_i32(~0i, u_input.b.x)), var_1.a.b, select(var_1.a.c, !var_1.a.c, vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, 1u), 3u)], global0[_wgslsmith_index_u32(~0u, 3u)], var_1.a.c.x, func_3(var_1.a.b, -2147483647i).x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-var_1.a.d)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.c), _wgslsmith_div_f32(_wgslsmith_div_f32(var_1.c, var_1.a.d.x), _wgslsmith_f_op_f32(var_1.a.d.x - 337f))))), var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1700f - -255f))))));
}

fn func_5(arg_0: Struct_2) -> vec3<f32> {
    var var_0 = vec2<i32>(26727i, global2[_wgslsmith_index_u32(arg_0.a.b.x, 11u)] ^ _wgslsmith_clamp_i32(arg_0.a.a, 2147483647i, global2[_wgslsmith_index_u32(func_4(~global3.zz).b, 11u)]));
    let var_1 = arg_0;
    let var_2 = func_4(global3.yy);
    var_0 = _wgslsmith_sub_vec2_i32(u_input.a.xx, vec2<i32>(var_1.a.a, var_0.x));
    var var_3 = var_2.a.b.zx;
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_2.a.d.xyz, var_1.a.d.wxz) * vec3<f32>(-745f, arg_0.a.e, _wgslsmith_f_op_f32(var_2.a.e + _wgslsmith_f_op_f32(ceil(916f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(arg_0.a.d.wzz, vec3<f32>(arg_0.a.e, 902f, var_1.a.d.x), vec3<bool>(var_1.a.c.x, false, arg_0.a.c.x))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.c, var_1.c, -595f))))) - vec3<f32>(405f, _wgslsmith_f_op_f32(var_1.c * 262f), _wgslsmith_f_op_f32(-var_1.c)))));
}

fn func_1(arg_0: vec4<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(func_5(func_4(vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(69885u, 11u)], 66559i, 0i), vec3<i32>(0i, u_input.b.x, -29929i)), global2[_wgslsmith_index_u32(21621u, 11u)]), firstLeadingBit(func_2())))));
    let var_1 = Struct_2(func_4(abs(vec2<i32>(~arg_0.x, global2[_wgslsmith_index_u32(58541u, 11u)] ^ 1i))).a, countOneBits(82322u ^ (_wgslsmith_dot_vec3_u32(vec3<u32>(26350u, 32867u, 26423u), vec3<u32>(66414u, 45355u, 0u)) ^ ~1u)), var_0.x);
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2266f - _wgslsmith_div_f32(_wgslsmith_f_op_vec3_f32(func_5(Struct_2(Struct_1(global3.x, vec3<u32>(var_1.b, var_1.a.b.x, 53234u), vec4<bool>(true, true, true, var_1.a.c.x), var_1.a.d, var_1.a.e), 1u, var_1.c))).x, _wgslsmith_f_op_f32(-var_1.c))) * 803f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(240f, 1012f), _wgslsmith_f_op_f32(-var_0.x))))), 225f);
    var var_2 = ~(~_wgslsmith_mod_vec4_u32(~(~vec4<u32>(var_1.b, var_1.a.b.x, 143055u, var_1.a.b.x)), ~(~vec4<u32>(100202u, 17244u, var_1.a.b.x, 159u))));
    var var_3 = ~vec4<u32>(14138u, var_2.x, var_1.a.b.x, var_2.x);
    return Struct_1(abs(var_1.a.a), _wgslsmith_div_vec3_u32(var_1.a.b, _wgslsmith_sub_vec3_u32(vec3<u32>(90433u >> (var_2.x % 32u), ~1u, var_2.x), vec3<u32>(_wgslsmith_div_u32(var_2.x, var_2.x), var_2.x, var_2.x << (49201u % 32u)))), !var_1.a.c, vec4<f32>(_wgslsmith_div_f32(-292f, func_4(_wgslsmith_clamp_vec2_i32(u_input.a.yy, vec2<i32>(u_input.b.x, 0i), arg_0.zy)).a.e), var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -797f), 515f), 941f);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(u_input.b.yzw, u_input.b.wyy ^ (u_input.a.xyw ^ firstLeadingBit(u_input.a.wyw))), vec3<i32>(_wgslsmith_mod_i32(-22075i, 1i), 24300i, u_input.a.x));
    global0 = array<bool, 3>();
    let var_0 = 15470u;
    let var_1 = func_1(vec4<i32>(firstTrailingBit(1i), -46249i, ~u_input.b.x, ~abs(abs(1i))));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -354f), _wgslsmith_f_op_f32(var_1.d.x - -780f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.d.wz + var_1.d.yw) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.e, -1014f) * vec2<f32>(var_1.e, var_1.d.x))))) * vec2<f32>(func_4(-u_input.b.ww).c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.d.x), _wgslsmith_f_op_f32(-var_1.e))));
    global0 = array<bool, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(var_0 & 75259u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-func_1(reverseBits(u_input.a)).d)));
}

