struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec2<bool>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
    c: f32,
    d: vec4<bool>,
    e: i32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: i32,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<u32>,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(true, vec4<f32>(-1000f, 1190f, 225f, -914f), 524f, vec4<bool>(true, false, true, false), -23713i), Struct_2(false, vec4<f32>(-693f, -1446f, -1000f, 525f), 692f, vec4<bool>(false, true, false, false), 1i), Struct_2(false, vec4<f32>(649f, -1669f, -786f, 595f), -1764f, vec4<bool>(true, true, true, true), 0i), Struct_2(false, vec4<f32>(-316f, 267f, 1028f, 577f), -203f, vec4<bool>(false, true, false, false), i32(-2147483648)), Struct_2(true, vec4<f32>(-264f, 1252f, 1000f, -761f), 871f, vec4<bool>(true, true, false, true), 35268i), Struct_2(true, vec4<f32>(-1050f, 750f, -122f, -959f), -1696f, vec4<bool>(false, false, true, true), 1i), Struct_2(true, vec4<f32>(-1189f, -757f, -1287f, -1807f), -647f, vec4<bool>(true, false, false, false), 2147483647i), Struct_2(false, vec4<f32>(-478f, 411f, -1070f, 816f), 1504f, vec4<bool>(true, true, true, true), -1i), Struct_2(true, vec4<f32>(1489f, 1333f, 1000f, -1000f), -1500f, vec4<bool>(true, true, true, true), 12990i), Struct_2(true, vec4<f32>(565f, 1342f, -994f, -498f), -480f, vec4<bool>(true, true, false, false), -36956i), Struct_2(false, vec4<f32>(1146f, -759f, -508f, -227f), 502f, vec4<bool>(true, true, true, true), 1i), Struct_2(false, vec4<f32>(-445f, 559f, -1000f, 1543f), 577f, vec4<bool>(false, true, true, false), -11743i), Struct_2(false, vec4<f32>(1000f, -1000f, 324f, -802f), -1015f, vec4<bool>(true, true, false, true), -1i), Struct_2(false, vec4<f32>(-617f, -117f, 1000f, 1633f), -227f, vec4<bool>(false, true, true, false), 2147483647i), Struct_2(false, vec4<f32>(-503f, 517f, -1042f, -544f), 1696f, vec4<bool>(true, true, true, true), i32(-2147483648)), Struct_2(false, vec4<f32>(1096f, 439f, -706f, -863f), 1000f, vec4<bool>(true, false, true, false), i32(-2147483648)), Struct_2(true, vec4<f32>(884f, -833f, 494f, 480f), -597f, vec4<bool>(false, true, false, true), 57086i), Struct_2(false, vec4<f32>(-1008f, 220f, -371f, -1842f), -288f, vec4<bool>(true, false, true, true), 2147483647i), Struct_2(true, vec4<f32>(744f, -1000f, 1613f, -1000f), 911f, vec4<bool>(true, false, true, false), i32(-2147483648)), Struct_2(false, vec4<f32>(783f, -231f, 347f, 1164f), -229f, vec4<bool>(true, false, true, false), 0i), Struct_2(true, vec4<f32>(-689f, -528f, -1775f, 953f), -727f, vec4<bool>(true, false, false, true), -3576i), Struct_2(true, vec4<f32>(1000f, -2582f, 2677f, 544f), -1273f, vec4<bool>(true, true, false, true), -26746i), Struct_2(false, vec4<f32>(653f, -354f, 1075f, 1102f), -832f, vec4<bool>(false, true, true, false), 1i), Struct_2(false, vec4<f32>(331f, 1369f, 1019f, -623f), -100f, vec4<bool>(false, true, true, false), 43689i), Struct_2(true, vec4<f32>(-698f, -1018f, -1341f, -199f), 1461f, vec4<bool>(true, false, false, false), 7096i), Struct_2(true, vec4<f32>(994f, 1000f, -731f, -659f), -334f, vec4<bool>(false, false, true, false), -3201i), Struct_2(false, vec4<f32>(595f, -296f, 1391f, -826f), -1503f, vec4<bool>(true, false, true, false), 1i), Struct_2(true, vec4<f32>(450f, 221f, 409f, -974f), -542f, vec4<bool>(false, false, false, false), 0i));

var<private> global2: Struct_3;

var<private> global3: Struct_4 = Struct_4(-585f);

var<private> global4: vec2<f32> = vec2<f32>(-484f, 1000f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2() -> bool {
    return !(!global2.a.x & any(vec4<bool>(false, select(false, global2.b.d.x, global2.a.x), true, true | global2.b.d.x)));
}

fn func_3(arg_0: Struct_5) -> f32 {
    var var_0 = ~_wgslsmith_add_vec3_u32(vec3<u32>(min(countOneBits(global0.x), firstLeadingBit(4294967295u)), _wgslsmith_dot_vec4_u32(max(vec4<u32>(u_input.b, arg_0.b.x, 53493u, u_input.b), vec4<u32>(arg_0.b.x, 4729u, arg_0.b.x, global0.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(21626u, 11053u, 4294967295u, u_input.b), vec4<u32>(55721u, arg_0.b.x, 43300u, arg_0.b.x))), ~(global0.x & 4294967295u)), select(global0.yyy, ~vec3<u32>(global0.x, 99973u, 0u), any(!global2.a)));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global4.x, -334f, true)))), _wgslsmith_f_op_f32(max(474f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(295f, arg_0.d)))))));
    return -594f;
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> bool {
    global3 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -548f) * global4.x));
    let var_0 = Struct_1(firstTrailingBit(max(-global2.c.a, vec3<i32>(~global2.b.b, 99591i ^ arg_1.e, ~global2.e))), -39062i, select(vec2<bool>(-2147483647i == global2.d, true), select(vec2<bool>(-1000f <= arg_1.c, any(vec3<bool>(false, global2.b.d.x, false))), select(!vec2<bool>(arg_1.d.x, false), global2.a.xx, vec2<bool>(false, true)), select(all(global2.c.d), global2.b.d.x, false)), !select(vec2<bool>(false, arg_1.a), select(vec2<bool>(true, global2.a.x), vec2<bool>(global2.a.x, false), arg_1.d.x), arg_1.d.zy)), select(global2.c.d, global2.b.d, select(!global2.b.d, !vec4<bool>(true, arg_1.d.x, global2.a.x, true), (i32(-1i) * -2147483647i) < -global2.b.b)));
    var var_1 = countOneBits(global2.c.a.xx);
    let var_2 = global2.c;
    var var_3 = global2.b;
    return 1u > (_wgslsmith_mod_u32(_wgslsmith_mult_u32(1u, u_input.a & global0.x), 70936u) ^ _wgslsmith_clamp_u32(0u, firstTrailingBit(max(76031u, 4294967295u)), ~0u));
}

fn func_1() -> Struct_3 {
    var var_0 = 20220u;
    let var_1 = !func_4(2400f, Struct_2(func_2(), vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_5(global2.c, vec2<u32>(global0.x, 4294967295u), global2.e, global3.a))), -232f, -1414f, _wgslsmith_f_op_f32(-global3.a)), _wgslsmith_f_op_f32(-global4.x), select(!vec4<bool>(global2.a.x, global2.c.d.x, false, global2.a.x), select(global2.b.d, global2.c.d, vec4<bool>(true, global2.b.c.x, true, global2.c.d.x)), vec4<bool>(true, true, true, global2.b.c.x)), global2.b.a.x));
    var var_2 = Struct_3(select(select(!vec3<bool>(var_1, var_1, global2.c.c.x), vec3<bool>(true, global2.b.c.x, var_1), global2.a.x), !global2.c.d.wzw, select(select(global2.b.d.xxy, vec3<bool>(false, true, false), vec3<bool>(global2.c.c.x, false, var_1)), vec3<bool>(true, !global2.a.x, true), global2.b.d.zwz)), Struct_1(global2.b.a, -(~(-1i & global2.b.a.x)), select(!vec2<bool>(global2.c.c.x, var_1), vec2<bool>(true, false), any(select(global2.a, vec3<bool>(var_1, false, var_1), true))), vec4<bool>(func_4(global4.x, Struct_2(true, vec4<f32>(global4.x, global3.a, global3.a, -133f), global4.x, global2.c.d, global2.b.b)), true, any(global2.b.d), global2.b.c.x)), global2.b, min(0i, -467i & (1i << (global0.x % 32u))), 2147483647i);
    var var_3 = Struct_1(max((var_2.c.a ^ -var_2.c.a) ^ var_2.c.a, var_2.b.a), 2147483647i, var_2.c.d.xz, !select(global2.c.d, var_2.b.d, _wgslsmith_f_op_f32(1114f - 216f) != _wgslsmith_f_op_f32(select(global3.a, -1166f, var_1))));
    var var_4 = _wgslsmith_mult_vec2_u32(~max(global0.zy << (vec2<u32>(global0.x, global0.x) % vec2<u32>(32u)), global0.wz) ^ global0.yz, (firstLeadingBit(vec2<u32>(1u, 4294967295u)) >> (~max(global0.yy, vec2<u32>(34506u, global0.x)) % vec2<u32>(32u))) << (_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(80277u, global0.x), ~global0.zy), ~firstLeadingBit(vec2<u32>(4463u, 0u)), _wgslsmith_mult_vec2_u32(countOneBits(global0.xy), reverseBits(vec2<u32>(1u, global0.x)))) % vec2<u32>(32u)));
    return Struct_3(var_2.a, Struct_1(vec3<i32>(~(-2147483647i), _wgslsmith_clamp_i32(-12712i, ~(-2147483647i), -var_2.c.a.x), -var_2.d & -var_2.b.b), _wgslsmith_add_i32(46228i, _wgslsmith_dot_vec2_i32(var_3.a.xy, vec2<i32>(global2.b.a.x, 0i)) & ~1i), global2.b.c, select(!var_2.c.d, vec4<bool>(false, true, !var_1, var_2.c.c.x), global2.b.d)), var_2.b, 1i, var_3.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~2147483647i;
    let var_1 = func_1();
    global2 = func_1();
    var var_2 = true;
    global4 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global4.x, _wgslsmith_f_op_f32(step(164f, global4.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_u32(~(vec3<u32>(44727u, 4294967295u, 77393u) | vec3<u32>(global0.x, u_input.a, global0.x)), ~abs(global0.zxy), _wgslsmith_div_vec3_u32(~global0.wzz, global0.zzw)) >> ((_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 4294967295u, global0.x), global0.wxx), ~global0.wyx) | _wgslsmith_clamp_vec3_u32(~vec3<u32>(111194u, global0.x, 0u), ~global0.xxx, abs(global0.xzz))) % vec3<u32>(32u)), min(~vec4<u32>(firstTrailingBit(u_input.a), 81075u, u_input.b, 73419u), vec4<u32>(4294967295u, 4294967295u, global0.x, _wgslsmith_mult_u32(global0.x, 1u >> (global0.x % 32u)))), -global2.b.a.yy ^ var_1.c.a.zx);
}

