struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: f32,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-1613i, i32(-2147483648));

var<private> global1: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(-492f, vec2<f32>(521f, 955f), 190f, -57947i, true), Struct_1(1269f, vec2<f32>(-1200f, -1004f), -2327f, 0i, false), Struct_1(2384f, vec2<f32>(-576f, -1153f), 1000f, -10075i, true), Struct_1(-765f, vec2<f32>(-415f, -804f), 253f, -22172i, false), Struct_1(1000f, vec2<f32>(-922f, -264f), 330f, -23742i, false), Struct_1(383f, vec2<f32>(131f, 323f), 1024f, -24008i, true), Struct_1(1601f, vec2<f32>(392f, 1471f), -463f, 0i, false), Struct_1(882f, vec2<f32>(-395f, 1566f), -705f, 2147483647i, false), Struct_1(3206f, vec2<f32>(-1000f, 606f), 396f, -8808i, false), Struct_1(636f, vec2<f32>(3137f, -1316f), -504f, 1i, false), Struct_1(-1532f, vec2<f32>(-214f, -305f), 1410f, i32(-2147483648), true), Struct_1(423f, vec2<f32>(-1658f, 1000f), -871f, -11903i, true), Struct_1(-416f, vec2<f32>(236f, 355f), 1699f, -24530i, false), Struct_1(2315f, vec2<f32>(556f, -1656f), -1707f, i32(-2147483648), false), Struct_1(582f, vec2<f32>(-298f, 107f), -1683f, 1i, false), Struct_1(1538f, vec2<f32>(-151f, 1152f), -1359f, -1i, false), Struct_1(-1000f, vec2<f32>(-1088f, 360f), 629f, -1008i, true), Struct_1(1727f, vec2<f32>(-781f, 226f), -1716f, 2147483647i, false), Struct_1(-248f, vec2<f32>(-1210f, -925f), -484f, -21437i, false), Struct_1(599f, vec2<f32>(585f, -527f), 578f, 2147483647i, true), Struct_1(291f, vec2<f32>(-1709f, -1528f), 537f, -71733i, false), Struct_1(1837f, vec2<f32>(-2063f, 702f), -1199f, i32(-2147483648), true));

var<private> global2: bool;

var<private> global3: array<vec4<i32>, 14> = array<vec4<i32>, 14>(vec4<i32>(7115i, 2147483647i, 22091i, 2147483647i), vec4<i32>(-1i, -1i, 1i, 1i), vec4<i32>(-1i, 18174i, -26595i, 1i), vec4<i32>(2147483647i, i32(-2147483648), 1i, -5190i), vec4<i32>(12968i, -23839i, 1253i, 0i), vec4<i32>(60874i, 0i, 1i, -29309i), vec4<i32>(1i, i32(-2147483648), 2147483647i, 0i), vec4<i32>(-1i, 0i, 0i, i32(-2147483648)), vec4<i32>(-1i, -29398i, 0i, 16573i), vec4<i32>(-23823i, -1i, 2147483647i, i32(-2147483648)), vec4<i32>(1429i, i32(-2147483648), -17228i, 31939i), vec4<i32>(29993i, 2147483647i, i32(-2147483648), 31121i), vec4<i32>(i32(-2147483648), -1i, -36394i, -1i), vec4<i32>(-18433i, 2147483647i, 1i, 2147483647i));

var<private> global4: vec3<i32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1) -> f32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-1092f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-693f)) + _wgslsmith_f_op_f32(-arg_1.a.b.x))), vec2<f32>(220f, _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(arg_1.d.b.x + arg_1.c)))), _wgslsmith_f_op_f32(-arg_1.a.b.x), ~firstLeadingBit(global0.x) >> ((1u & countOneBits(u_input.b.x)) % 32u), arg_2.e), _wgslsmith_clamp_u32(~u_input.a, select(arg_1.b, _wgslsmith_add_u32(1u, arg_1.b), select(arg_0, arg_2.e, false)), ~arg_1.b) >> (abs(64373u) % 32u), arg_1.c, arg_1.a);
    let var_1 = !(!any(!select(vec4<bool>(false, false, true, arg_0), vec4<bool>(arg_2.e, false, arg_1.a.e, var_0.a.e), vec4<bool>(arg_0, true, arg_1.a.e, arg_1.a.e))));
    let var_2 = arg_2.b.x;
    var_0 = arg_1;
    var var_3 = !(!(_wgslsmith_f_op_f32(f32(-1f) * -819f) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a * -1122f))));
    return _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.d.a, var_0.a.a, var_0.d.e)) + _wgslsmith_f_op_f32(exp2(arg_2.c)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2)))))), _wgslsmith_div_f32(arg_1.a.b.x, var_0.a.b.x));
}

fn func_2() -> f32 {
    let var_0 = vec2<u32>(u_input.a, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(524u, 0u, 4294967295u), _wgslsmith_clamp_vec3_u32(vec3<u32>(20224u, 0u, u_input.b.x), vec3<u32>(u_input.a, u_input.a, 26007u), vec3<u32>(u_input.b.x, 0u, 48921u))) ^ (4294967295u << (max(u_input.a, u_input.b.x) % 32u)), 0u));
    let var_1 = u_input.c;
    var var_2 = Struct_2(Struct_1(-1857f, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(max(558f, -1211f)), _wgslsmith_f_op_f32(func_3(true, Struct_2(global1[_wgslsmith_index_u32(var_0.x, 22u)], 50517u, -1000f, Struct_1(-964f, vec2<f32>(-1522f, 659f), 2318f, 0i, false)), global1[_wgslsmith_index_u32(u_input.b.x, 22u)]))))), -827f, abs(-u_input.c.x & var_1.x), true), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(11165u, 1u, 45017u)), max(vec3<u32>(62252u, 29736u, 15231u), vec3<u32>(var_0.x, u_input.a, 0u))), ~1u, u_input.b.x >> (var_0.x % 32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 37711u, var_0.x, 36461u), vec4<u32>(var_0.x, 1u, 0u, u_input.a)), u_input.b.x, 4294967295u), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, 1u, u_input.a) | vec4<u32>(var_0.x, 15042u, u_input.a, 4294967295u), ~vec4<u32>(1u, 0u, var_0.x, u_input.a)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, u_input.a, 1u, u_input.a), vec4<u32>(var_0.x, var_0.x, u_input.a, 33876u)), 53171u, ~0u, 27531u))), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-101f + _wgslsmith_f_op_f32(-710f - _wgslsmith_f_op_f32(f32(-1f) * -183f)))), Struct_1(_wgslsmith_f_op_f32(max(-1034f, _wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-216f, 149f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1439f, -336f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(832f, -640f), vec2<f32>(1158f, -1599f))))), -990f, ~global0.x, all(vec3<bool>(select(false, false, false), false, all(vec2<bool>(false, true))))));
    let var_3 = var_2.d.e;
    var var_4 = Struct_2(Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.b.x) - -502f))), var_2.a.b, var_2.d.b.x, ~var_1.x, true), var_2.b, _wgslsmith_f_op_f32(-var_2.a.c), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-617f + 192f), 719f))), var_2.d.b, 202f, -abs(u_input.c.x), true));
    return _wgslsmith_f_op_f32(sign(var_4.a.c));
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    let var_0 = -1580f;
    var var_1 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * -2067f) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.c)))), _wgslsmith_f_op_f32(arg_0.d.a - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-489f)) * _wgslsmith_f_op_f32(-var_0))))));
    var var_2 = ~(~(~arg_0.b));
    var_1 = vec3<f32>(277f, arg_0.d.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-521f)) - _wgslsmith_f_op_f32(min(arg_0.c, var_0)))));
    var var_3 = vec4<bool>(!arg_0.d.e && (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-890f + var_0)) > _wgslsmith_f_op_f32(round(arg_0.d.b.x))), (_wgslsmith_dot_vec2_u32(~vec2<u32>(68172u, u_input.b.x), select(vec2<u32>(36114u, u_input.b.x), u_input.b, vec2<bool>(arg_0.a.e, false))) ^ ~1u) < u_input.a, true, !any(vec2<bool>(false, true)));
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1201f)), _wgslsmith_f_op_f32(floor(-457f)))), 250f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.a, arg_0.c))), _wgslsmith_f_op_f32(trunc(216f)), u_input.c.x, all(select(vec4<bool>(true, any(vec3<bool>(true, false, arg_0.a.e)), arg_0.d.e & true, var_3.x), select(!vec4<bool>(true, true, arg_0.d.e, var_3.x), vec4<bool>(false, false, false, true), arg_0.a.e), true)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2, arg_3: bool) -> Struct_1 {
    var var_0 = Struct_1(func_1(Struct_2(arg_1, u_input.b.x, _wgslsmith_f_op_f32(-arg_1.c), arg_0)).b.x, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.d.c * arg_1.c)), ~u_input.c.x, (~u_input.c.x == -1i) & true);
    var var_1 = select(~_wgslsmith_add_vec2_u32(u_input.b, u_input.b), ~(~u_input.b) >> (u_input.b % vec2<u32>(32u)), select(select(select(!vec2<bool>(arg_0.e, arg_1.e), select(vec2<bool>(arg_3, true), vec2<bool>(var_0.e, arg_3), vec2<bool>(arg_0.e, false)), vec2<bool>(false, false)), !(!vec2<bool>(arg_0.e, arg_0.e)), false), !(!select(vec2<bool>(true, var_0.e), vec2<bool>(false, false), vec2<bool>(arg_0.e, var_0.e))), true));
    var var_2 = abs(38254u);
    var var_3 = !(!select(!select(vec4<bool>(arg_3, false, var_0.e, var_0.e), vec4<bool>(false, false, false, arg_2.d.e), false), !(!vec4<bool>(arg_0.e, true, var_0.e, true)), !arg_1.e));
    let var_4 = arg_1.d;
    return Struct_1(func_1(Struct_2(global1[_wgslsmith_index_u32(arg_2.b, 22u)], u_input.a & reverseBits(var_1.x), _wgslsmith_f_op_f32(-arg_1.b.x), func_1(Struct_2(Struct_1(arg_0.c, vec2<f32>(-117f, arg_1.c), -326f, arg_0.d, var_0.e), u_input.a, -167f, Struct_1(516f, arg_1.b, -581f, arg_1.d, arg_0.e))))).c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(var_0.b, _wgslsmith_f_op_vec2_f32(ceil(arg_1.b))))), _wgslsmith_div_f32(-765f, arg_1.c), -_wgslsmith_dot_vec4_i32(-global3[_wgslsmith_index_u32(u_input.a, 14u)], _wgslsmith_div_vec4_i32(vec4<i32>(global0.x, 20524i, 0i, u_input.c.x), global3[_wgslsmith_index_u32(var_1.x, 14u)])), any(select(var_3.zwx, vec3<bool>(true, any(vec3<bool>(false, var_3.x, arg_2.d.e)), var_0.e), vec3<bool>(false, arg_2.d.e, false && arg_3))));
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1, arg_3: vec4<bool>) -> Struct_2 {
    global2 = true;
    var var_0 = ~_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(10147i, global0.x, 1i, 28327i), firstTrailingBit(reverseBits(vec4<i32>(u_input.c.x, -3582i, -93087i, 0i)))), global3[_wgslsmith_index_u32(~4294967295u, 14u)]);
    let var_1 = arg_0;
    let var_2 = -global3[_wgslsmith_index_u32(~0u, 14u)];
    let var_3 = !select(vec2<bool>(true, all(!arg_3)), select(select(!arg_3.zw, vec2<bool>(arg_2.e, arg_2.e), select(false, arg_3.x, arg_3.x)), arg_3.yy, !arg_1 || all(vec2<bool>(true, arg_1))), !(!(!vec2<bool>(arg_1, false))));
    return arg_0;
}

fn func_6(arg_0: Struct_2) -> StorageBuffer {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a.a, arg_0.a.b.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.d.b.x, -1665f) * _wgslsmith_f_op_vec2_f32(-arg_0.d.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-238f + -889f))), global0.x, all(!select(vec4<bool>(arg_0.a.e, false, arg_0.d.e, true), vec4<bool>(arg_0.a.e, arg_0.d.e, arg_0.d.e, false), true))), firstTrailingBit(arg_0.b | ~(~1u)), arg_0.d.a, func_1(Struct_2(Struct_1(-764f, vec2<f32>(-437f, arg_0.c), 1449f, u_input.c.x, select(true, arg_0.a.e, arg_0.d.e)), _wgslsmith_dot_vec2_u32(u_input.b, reverseBits(vec2<u32>(33553u, arg_0.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-824f - arg_0.a.c) * 720f), func_1(Struct_2(global1[_wgslsmith_index_u32(arg_0.b, 22u)], u_input.b.x, 510f, global1[_wgslsmith_index_u32(u_input.a, 22u)])))));
    var var_1 = func_4(var_0.d, global1[_wgslsmith_index_u32(30886u, 22u)], arg_0, true || var_0.a.e);
    var var_2 = ~(~(~(countOneBits(vec4<i32>(2147483647i, arg_0.d.d, var_1.d, var_1.d)) & reverseBits(global3[_wgslsmith_index_u32(1u, 14u)]))));
    var_1 = global1[_wgslsmith_index_u32(~12409u, 22u)];
    global0 = select(_wgslsmith_sub_vec2_i32(max(reverseBits(global4.yx ^ u_input.c.zy), -vec2<i32>(2147483647i, var_0.d.d)), vec2<i32>(func_1(Struct_2(Struct_1(var_0.a.b.x, var_1.b, 502f, var_1.d, false), u_input.a, 1842f, Struct_1(var_1.c, var_1.b, 541f, 16483i, true))).d, func_1(Struct_2(global1[_wgslsmith_index_u32(u_input.a, 22u)], 9662u, 865f, arg_0.a)).d)), _wgslsmith_sub_vec2_i32(vec2<i32>(reverseBits(var_0.a.d), 1i ^ ~var_1.d), var_2.yw), select(!select(vec2<bool>(var_0.d.e, false), vec2<bool>(true, true), var_0.a.e), !(!select(vec2<bool>(false, var_0.a.e), vec2<bool>(arg_0.d.e, true), var_1.e)), select(func_4(var_0.a, func_5(Struct_2(var_0.d, arg_0.b, var_1.b.x, Struct_1(466f, vec2<f32>(-1717f, -593f), var_1.a, global4.x, true)), var_0.d.e, Struct_1(646f, arg_0.d.b, 1000f, var_1.d, false), vec4<bool>(false, arg_0.a.e, var_0.a.e, true)).d, func_5(Struct_2(global1[_wgslsmith_index_u32(arg_0.b, 22u)], 1u, var_0.d.a, Struct_1(-1000f, var_1.b, var_0.d.b.x, var_0.a.d, true)), true, Struct_1(var_1.c, vec2<f32>(arg_0.c, var_1.a), 447f, arg_0.d.d, false), vec4<bool>(var_0.d.e, false, arg_0.a.e, var_1.e)), 1745f > var_0.d.a).e, var_1.e, all(select(vec3<bool>(var_0.a.e, true, var_0.a.e), vec3<bool>(var_0.d.e, false, arg_0.a.e), false)))));
    return StorageBuffer(firstTrailingBit(~_wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(arg_0.b, 49820u, arg_0.b, u_input.a)), firstTrailingBit(vec4<u32>(var_0.b, 1u, arg_0.b, arg_0.b)))), -2147483647i, min(vec2<i32>(-1i) * -(vec2<i32>(-9676i, 2147483647i) ^ var_2.xy), vec2<i32>(var_2.x, 0i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.b.x <= 4294967295u;
    let x = u_input.a;
    s_output = func_6(func_5(Struct_2(func_4(Struct_1(268f, vec2<f32>(-154f, 685f), 1480f, -2147483647i, false), func_1(Struct_2(global1[_wgslsmith_index_u32(u_input.b.x, 22u)], 4294967295u, 2110f, Struct_1(-107f, vec2<f32>(1920f, -1580f), 801f, u_input.c.x, true))), Struct_2(global1[_wgslsmith_index_u32(102689u, 22u)], u_input.a, 435f, global1[_wgslsmith_index_u32(31294u, 22u)]), true), 1u, func_1(Struct_2(global1[_wgslsmith_index_u32(u_input.a, 22u)], u_input.a, -1830f, global1[_wgslsmith_index_u32(u_input.a, 22u)])).a, Struct_1(-287f, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1360f, -857f), vec2<f32>(1000f, 743f))), 577f, -global0.x, true)), any(vec4<bool>(true, true, true, true)), global1[_wgslsmith_index_u32(firstLeadingBit(46975u), 22u)], vec4<bool>(false, true, false, ~u_input.a >= 1u)));
}

