struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: bool,
    c: u32,
    d: vec4<f32>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(Struct_1(4294967295u, vec2<f32>(-1318f, 396f), false), Struct_1(4294967295u, vec2<f32>(-176f, -905f), true), vec4<bool>(false, false, true, false)), Struct_2(Struct_1(4294967295u, vec2<f32>(-2155f, -2751f), true), Struct_1(4294967295u, vec2<f32>(1158f, -2386f), true), vec4<bool>(false, true, true, true)), Struct_2(Struct_1(106272u, vec2<f32>(-685f, 400f), true), Struct_1(0u, vec2<f32>(-916f, -631f), false), vec4<bool>(false, false, false, false)), Struct_2(Struct_1(0u, vec2<f32>(-1000f, 306f), false), Struct_1(4294967295u, vec2<f32>(-2219f, 2101f), true), vec4<bool>(true, true, false, false)), Struct_2(Struct_1(0u, vec2<f32>(-1656f, 1678f), false), Struct_1(4294967295u, vec2<f32>(-531f, -961f), true), vec4<bool>(false, true, true, true)), Struct_2(Struct_1(17169u, vec2<f32>(345f, -1202f), false), Struct_1(18029u, vec2<f32>(328f, 2081f), true), vec4<bool>(true, false, false, true)), Struct_2(Struct_1(0u, vec2<f32>(377f, 645f), false), Struct_1(4294967295u, vec2<f32>(-1089f, -1000f), true), vec4<bool>(false, false, false, true)), Struct_2(Struct_1(4294967295u, vec2<f32>(-283f, 122f), true), Struct_1(4294967295u, vec2<f32>(-1462f, -845f), true), vec4<bool>(false, false, false, false)), Struct_2(Struct_1(20784u, vec2<f32>(702f, 300f), false), Struct_1(1u, vec2<f32>(142f, 339f), true), vec4<bool>(false, true, false, false)), Struct_2(Struct_1(4294967295u, vec2<f32>(-1104f, -903f), true), Struct_1(9721u, vec2<f32>(849f, -855f), true), vec4<bool>(false, true, true, true)), Struct_2(Struct_1(41295u, vec2<f32>(929f, 533f), false), Struct_1(4294967295u, vec2<f32>(-1006f, -1999f), true), vec4<bool>(true, false, false, false)), Struct_2(Struct_1(4294967295u, vec2<f32>(-884f, 750f), false), Struct_1(12386u, vec2<f32>(-138f, 1348f), true), vec4<bool>(false, false, true, false)), Struct_2(Struct_1(0u, vec2<f32>(-453f, 479f), false), Struct_1(1u, vec2<f32>(-560f, 1296f), false), vec4<bool>(true, false, true, true)), Struct_2(Struct_1(4294967295u, vec2<f32>(633f, -994f), false), Struct_1(13541u, vec2<f32>(-1964f, -399f), false), vec4<bool>(false, false, true, true)), Struct_2(Struct_1(1u, vec2<f32>(576f, 955f), false), Struct_1(4294967295u, vec2<f32>(-923f, 1005f), false), vec4<bool>(true, true, false, false)), Struct_2(Struct_1(1u, vec2<f32>(1003f, 1000f), true), Struct_1(1u, vec2<f32>(-721f, 609f), true), vec4<bool>(true, true, false, true)), Struct_2(Struct_1(0u, vec2<f32>(1000f, -1219f), true), Struct_1(1u, vec2<f32>(1059f, 1000f), false), vec4<bool>(true, false, true, true)));

var<private> global2: array<vec3<f32>, 26> = array<vec3<f32>, 26>(vec3<f32>(-965f, 898f, 339f), vec3<f32>(485f, 971f, -770f), vec3<f32>(-482f, 552f, 986f), vec3<f32>(-752f, -668f, 1955f), vec3<f32>(-493f, 2158f, -865f), vec3<f32>(1033f, 331f, 281f), vec3<f32>(1146f, 167f, -1898f), vec3<f32>(-550f, -1090f, -696f), vec3<f32>(1318f, -567f, 1025f), vec3<f32>(-150f, 1000f, 1095f), vec3<f32>(-429f, -356f, 933f), vec3<f32>(-689f, 260f, 686f), vec3<f32>(-1176f, -629f, 759f), vec3<f32>(419f, -873f, 604f), vec3<f32>(-1000f, 142f, -298f), vec3<f32>(1535f, 1026f, 995f), vec3<f32>(751f, 415f, -278f), vec3<f32>(1105f, -265f, 680f), vec3<f32>(-306f, -1187f, 877f), vec3<f32>(544f, -123f, -283f), vec3<f32>(1066f, 187f, -1956f), vec3<f32>(1000f, -566f, 2385f), vec3<f32>(-1341f, -521f, 1048f), vec3<f32>(-172f, -1636f, -1532f), vec3<f32>(1569f, 2393f, -1628f), vec3<f32>(-576f, -480f, 2082f));

var<private> global3: array<i32, 21>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_1() -> f32 {
    global2 = array<vec3<f32>, 26>();
    var var_0 = global0.b;
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(global0.e.a.b.x))));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.d.x)));
    let var_1 = global0.e.a;
    global0 = Struct_3(vec4<u32>(13631u, 1u, var_1.a, ~select(abs(20175u), reverseBits(global0.c), all(global0.e.c))), var_1.c, 4294967295u, global0.d, global1[_wgslsmith_index_u32(30489u, 17u)]);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.e.b.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.e.a.b.x, _wgslsmith_f_op_f32(exp2(global0.e.a.b.x)))) + -1042f)));
    global2 = array<vec3<f32>, 26>();
    return _wgslsmith_f_op_f32(exp2(global0.d.x));
}

fn func_2() -> Struct_2 {
    global0 = Struct_3(~(~max(vec4<u32>(1u, global0.c, 47001u, global0.a.x), vec4<u32>(global0.e.b.a, 33459u, 4294967295u, 0u) << (global0.a % vec4<u32>(32u)))), _wgslsmith_f_op_f32(func_3()) <= _wgslsmith_f_op_f32(f32(-1f) * -738f), 4294967295u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.d) + vec4<f32>(global0.e.b.b.x, 1000f, global0.d.x, global0.d.x))) * global0.d), Struct_2(global0.e.b, global0.e.a, vec4<bool>(select(global0.e.c.x, global0.a.x > global0.a.x, select(global0.e.a.c, true, global0.e.c.x)), true, false, (global0.e.c.x || false) || global0.b)));
    var var_0 = Struct_4(Struct_3(abs(select(global0.a, global0.a, vec4<bool>(global0.b, global0.b, global0.e.c.x, global0.b))), !all(!global0.e.c), global0.c << (_wgslsmith_mult_u32(abs(20256u), ~global0.a.x) % 32u), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.d)))), Struct_2(Struct_1(~global0.e.b.a, _wgslsmith_f_op_vec2_f32(global0.d.wz + vec2<f32>(356f, global0.d.x)), 20437i <= global3[_wgslsmith_index_u32(4294967295u, 21u)]), global0.e.a, vec4<bool>(all(vec2<bool>(global0.e.b.c, global0.b)), true, all(vec4<bool>(false, global0.e.a.c, true, global0.e.b.c)), false))), global0.e);
    let var_1 = Struct_4(Struct_3(vec4<u32>(var_0.b.a.a, var_0.a.e.b.a, var_0.a.c, _wgslsmith_mult_u32(var_0.b.a.a, var_0.a.c << (var_0.b.b.a % 32u))), false, _wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(var_0.a.a, vec4<u32>(global0.a.x, 1u, var_0.b.a.a, var_0.b.a.a), global0.a), select(~global0.a, var_0.a.a, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1297f, -272f, -279f, var_0.a.d.x) * var_0.a.d)) + vec4<f32>(2195f, _wgslsmith_f_op_f32(-global0.d.x), 1554f, _wgslsmith_f_op_f32(min(var_0.a.d.x, -1142f)))), global0.e), var_0.a.e);
    var var_2 = _wgslsmith_sub_i32(-u_input.b.x >> (~_wgslsmith_mult_u32(_wgslsmith_mult_u32(global0.e.b.a, var_0.a.a.x), countOneBits(global0.c)) % 32u), global3[_wgslsmith_index_u32(1u, 21u)]);
    let var_3 = var_1.b;
    return Struct_2(Struct_1(1u, global0.e.b.b, true & any(select(var_3.c.zyx, vec3<bool>(true, true, true), var_1.b.c.xww))), Struct_1(_wgslsmith_add_u32(~4294967295u, var_3.b.a) << (~var_1.a.e.a.a % 32u), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(var_1.a.d.wz, vec2<f32>(-515f, 484f)))), true), vec4<bool>(!(!(var_3.b.c || global0.e.b.c)), select(_wgslsmith_div_f32(-896f, var_1.a.d.x) > -1152f, var_0.b.a.c, all(vec3<bool>(true, var_0.b.b.c, var_3.b.c))), !any(!vec4<bool>(false, true, false, var_0.b.c.x)), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i;
    let var_1 = var_0;
    global0 = Struct_3(_wgslsmith_clamp_vec4_u32(max(~countOneBits(global0.a), _wgslsmith_mod_vec4_u32(global0.a, vec4<u32>(global0.c, 30843u, global0.a.x, 12311u) & vec4<u32>(50058u, global0.e.b.a, global0.c, 0u))), min(_wgslsmith_sub_vec4_u32(vec4<u32>(47320u, global0.c, 0u, global0.e.b.a), global0.a) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(global0.a.x, global0.c, 4294967295u, 53140u), global0.a, global0.a), ~vec4<u32>(29480u, global0.a.x, global0.e.b.a, global0.a.x)), abs(global0.a & select(vec4<u32>(global0.e.b.a, global0.e.b.a, global0.c, 0u), global0.a, vec4<bool>(global0.e.b.c, global0.b, true, true)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d.x))) < -1323f, 75892u, vec4<f32>(_wgslsmith_f_op_f32(-519f - _wgslsmith_div_f32(global0.d.x, _wgslsmith_f_op_f32(global0.d.x * global0.e.b.b.x))), _wgslsmith_f_op_f32(-global0.d.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -308f))), global0.d.x), func_2());
    let var_2 = 585f;
    let var_3 = global0.b;
    global0 = Struct_3(~select(vec4<u32>(1u, 1u, 0u, global0.c) & _wgslsmith_mult_vec4_u32(global0.a, vec4<u32>(4294967295u, 4294967295u, 1u, 33043u)), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.e.b.a, 19507u), vec2<u32>(31831u, 40210u)), 79553u, 1u, global0.e.b.a), global0.e.c), any(select(global0.e.c, func_2().c, true)), firstLeadingBit(~(~4294967295u)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-760f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1690f)) + _wgslsmith_f_op_f32(-1622f + 397f)), _wgslsmith_f_op_f32(f32(-1f) * -504f), _wgslsmith_f_op_f32(round(-133f))), _wgslsmith_f_op_vec4_f32(-global0.d))), Struct_2(Struct_1(0u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(212f, 511f) + vec2<f32>(global0.d.x, var_2))), any(global0.e.c) && global0.e.a.c), Struct_1(1u, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(191f, 502f), global0.d.xz) - vec2<f32>(var_2, global0.d.x)), true), global0.e.c));
    let var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(select(u_input.b.wz, u_input.b.xx | firstTrailingBit(~vec2<i32>(-2147483647i, -2147483647i)), global0.e.c.x));
}

