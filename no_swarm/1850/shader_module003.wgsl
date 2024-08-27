struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<bool>,
    d: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: f32,
    c: vec3<u32>,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 6>;

var<private> global1: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec2<u32>(1u, 57339u), vec4<u32>(0u, 1u, 101724u, 1u), vec4<bool>(true, true, true, true), true), Struct_1(vec2<u32>(1u, 41692u), vec4<u32>(54482u, 0u, 1u, 4294967295u), vec4<bool>(false, false, true, true), true), Struct_1(vec2<u32>(67863u, 0u), vec4<u32>(0u, 1u, 5127u, 40727u), vec4<bool>(false, false, false, true), false), Struct_1(vec2<u32>(1u, 0u), vec4<u32>(4294967295u, 20189u, 4294967295u, 6483u), vec4<bool>(true, false, false, false), false), Struct_1(vec2<u32>(19499u, 1u), vec4<u32>(0u, 0u, 1u, 69981u), vec4<bool>(true, true, true, true), false), Struct_1(vec2<u32>(1u, 48899u), vec4<u32>(0u, 0u, 4294967295u, 4294967295u), vec4<bool>(false, false, true, true), false), Struct_1(vec2<u32>(4294967295u, 1u), vec4<u32>(0u, 58021u, 4294967295u, 39263u), vec4<bool>(false, false, false, false), true), Struct_1(vec2<u32>(36794u, 65124u), vec4<u32>(7707u, 4294967295u, 1u, 76340u), vec4<bool>(false, false, true, false), false), Struct_1(vec2<u32>(1u, 0u), vec4<u32>(2156u, 35189u, 1u, 24519u), vec4<bool>(false, false, true, false), false), Struct_1(vec2<u32>(61833u, 0u), vec4<u32>(4294967295u, 1u, 55848u, 3886u), vec4<bool>(true, false, true, false), true), Struct_1(vec2<u32>(4294967295u, 538u), vec4<u32>(29451u, 67063u, 54268u, 4294967295u), vec4<bool>(false, true, true, true), false), Struct_1(vec2<u32>(59107u, 66931u), vec4<u32>(0u, 4294967295u, 1764u, 12810u), vec4<bool>(false, false, false, true), false), Struct_1(vec2<u32>(40347u, 57630u), vec4<u32>(16956u, 50807u, 4294967295u, 23641u), vec4<bool>(true, false, true, false), true), Struct_1(vec2<u32>(11634u, 0u), vec4<u32>(20888u, 4294967295u, 13930u, 97512u), vec4<bool>(true, true, false, true), true), Struct_1(vec2<u32>(1u, 36935u), vec4<u32>(42861u, 0u, 48184u, 0u), vec4<bool>(false, false, false, true), true), Struct_1(vec2<u32>(50160u, 4294967295u), vec4<u32>(14899u, 22151u, 17860u, 0u), vec4<bool>(false, false, false, true), true), Struct_1(vec2<u32>(44348u, 4294967295u), vec4<u32>(1u, 0u, 4294967295u, 0u), vec4<bool>(false, true, false, false), true), Struct_1(vec2<u32>(4294967295u, 30879u), vec4<u32>(26070u, 4747u, 1u, 20358u), vec4<bool>(true, false, true, false), false), Struct_1(vec2<u32>(928u, 8277u), vec4<u32>(0u, 0u, 0u, 392u), vec4<bool>(true, true, true, false), true), Struct_1(vec2<u32>(1u, 8390u), vec4<u32>(0u, 18972u, 33086u, 9517u), vec4<bool>(true, false, true, false), false), Struct_1(vec2<u32>(42380u, 4294967295u), vec4<u32>(40437u, 0u, 54105u, 63279u), vec4<bool>(true, false, true, false), false), Struct_1(vec2<u32>(5007u, 46975u), vec4<u32>(48553u, 4294967295u, 19878u, 14107u), vec4<bool>(false, false, true, false), false), Struct_1(vec2<u32>(11135u, 38290u), vec4<u32>(8578u, 0u, 81304u, 144708u), vec4<bool>(false, true, true, true), false), Struct_1(vec2<u32>(32398u, 0u), vec4<u32>(1u, 14748u, 4294967295u, 4294967295u), vec4<bool>(false, true, true, true), false), Struct_1(vec2<u32>(75589u, 4294967295u), vec4<u32>(5933u, 37794u, 1u, 1u), vec4<bool>(true, false, false, false), false), Struct_1(vec2<u32>(1u, 35044u), vec4<u32>(12730u, 4294967295u, 1u, 41262u), vec4<bool>(false, true, false, true), true), Struct_1(vec2<u32>(90138u, 4294967295u), vec4<u32>(24092u, 5599u, 7301u, 8486u), vec4<bool>(false, true, false, true), false), Struct_1(vec2<u32>(0u, 81073u), vec4<u32>(0u, 4294967295u, 9696u, 35239u), vec4<bool>(false, true, true, true), false), Struct_1(vec2<u32>(37299u, 13717u), vec4<u32>(4294967295u, 15278u, 63826u, 1u), vec4<bool>(false, true, true, false), true), Struct_1(vec2<u32>(1u, 4294967295u), vec4<u32>(112350u, 7333u, 46084u, 35828u), vec4<bool>(true, true, true, false), true));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: bool, arg_1: Struct_5, arg_2: Struct_1, arg_3: Struct_2) -> vec4<f32> {
    var var_0 = firstLeadingBit(_wgslsmith_mult_i32(22628i, -30262i));
    var var_1 = Struct_3(arg_3, Struct_1(u_input.e.yz, ~vec4<u32>(arg_3.a, arg_1.b.a, 33330u >> (arg_1.b.a % 32u), arg_2.b.x), select(!select(arg_2.c, vec4<bool>(arg_1.a.c.c.x, arg_0, false, arg_0), arg_1.a.c.c.x), arg_2.c, !arg_2.d), !all(vec2<bool>(false, arg_2.d))), global1[_wgslsmith_index_u32(arg_2.a.x, 30u)], vec2<f32>(arg_1.a.d.x, arg_1.a.d.x));
    var var_2 = Struct_3(Struct_2(~54u), Struct_1(select(u_input.e.zz, vec2<u32>(13124u, u_input.c), select(vec2<bool>(arg_0, arg_1.a.c.d), arg_1.c.zx, !arg_1.c.zy)), arg_1.a.c.b, var_1.c.c, arg_2.d), var_1.c, arg_1.a.d);
    let var_3 = var_2.c.b.x;
    global1 = array<Struct_1, 30>();
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(731f, -248f, false))))), var_1.d.x, -1698f, var_2.d.x));
}

fn func_2(arg_0: f32, arg_1: Struct_4, arg_2: f32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-531f, _wgslsmith_f_op_f32(arg_1.b * arg_2), _wgslsmith_f_op_f32(-arg_2), -940f), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, arg_2, arg_0, arg_1.b), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.b, 115f, arg_0, 1368f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0, arg_2, -592f, arg_0))), _wgslsmith_f_op_vec4_f32(func_3(true, Struct_5(Struct_3(arg_1.d, global1[_wgslsmith_index_u32(u_input.e.x, 30u)], Struct_1(vec2<u32>(0u, arg_1.c.x), u_input.e, vec4<bool>(false, false, true, true), false), vec2<f32>(1000f, 130f)), Struct_2(arg_1.c.x), vec4<bool>(false, true, false, false)), global1[_wgslsmith_index_u32(3427u, 30u)], arg_1.d)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-573f, arg_2, _wgslsmith_f_op_f32(f32(-1f) * -2064f), arg_0)))));
    global1 = array<Struct_1, 30>();
    var var_1 = ~u_input.a;
    global0 = array<Struct_4, 6>();
    let var_2 = Struct_1(max((vec2<u32>(22582u, 375u) >> (~vec2<u32>(1u, arg_1.a.x) % vec2<u32>(32u))) | arg_1.a.xx, _wgslsmith_mod_vec2_u32(arg_1.a.xx, u_input.e.yw & u_input.e.xz)), vec4<u32>(~(~arg_1.c.x), abs(u_input.c) & _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_1.c.x), u_input.e.zz), _wgslsmith_dot_vec4_u32(u_input.e & vec4<u32>(0u, 1u, u_input.e.x, u_input.e.x), u_input.e | u_input.e), ~41961u) & select(vec4<u32>(1u, 1u, 25027u, 4294967295u), u_input.e, vec4<bool>(true, true, true, true)), select(vec4<bool>((u_input.e.x << (106481u % 32u)) >= (u_input.e.x & arg_1.a.x), !any(vec3<bool>(true, true, true)), true, !all(vec3<bool>(true, false, true))), vec4<bool>(any(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true))), select(any(vec3<bool>(false, false, true)), true, false), true, all(vec4<bool>(true, true, true, true))), select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), true), arg_1.a.x <= 0u), vec4<bool>(true, true, true, true), true)), all(select(vec3<bool>(true, arg_1.b > arg_2, any(vec3<bool>(true, true, true))), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(all(vec3<bool>(true, false, true)), all(vec3<bool>(false, true, false)), true))));
    return ~(~min(firstLeadingBit(1u), min(0u, ~2851u)));
}

fn func_1(arg_0: vec4<bool>, arg_1: u32, arg_2: i32, arg_3: vec3<f32>) -> Struct_3 {
    var var_0 = Struct_4(~(~vec3<u32>(u_input.e.x, arg_1, u_input.c >> (21824u % 32u))), _wgslsmith_f_op_f32(-arg_3.x), vec3<u32>(~(~arg_1), _wgslsmith_mod_u32(54805u, ~17041u), abs(37942u)), Struct_2(abs(func_2(_wgslsmith_f_op_f32(498f - 397f), global0[_wgslsmith_index_u32(9230u, 6u)], -1000f))));
    global0 = array<Struct_4, 6>();
    global0 = array<Struct_4, 6>();
    global0 = array<Struct_4, 6>();
    let var_1 = arg_2;
    return Struct_3(var_0.d, Struct_1(firstTrailingBit(~(~vec2<u32>(1u, var_0.d.a))), u_input.e, select(!(!vec4<bool>(arg_0.x, true, false, arg_0.x)), vec4<bool>(var_0.c.x != u_input.c, arg_0.x, false, all(arg_0.yy)), select(select(vec4<bool>(false, arg_0.x, true, false), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, true, false, true)), !vec4<bool>(false, arg_0.x, true, arg_0.x), arg_0.x || false)), !arg_0.x), Struct_1(_wgslsmith_add_vec2_u32(u_input.e.yz, _wgslsmith_mod_vec2_u32(firstTrailingBit(vec2<u32>(u_input.c, arg_1)), var_0.a.yy)), countOneBits(vec4<u32>(u_input.c >> (u_input.e.x % 32u), arg_1 & arg_1, arg_1, u_input.c)), select(arg_0, select(!arg_0, !vec4<bool>(arg_0.x, false, false, false), arg_0), true), !any(vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-855f, var_0.b) - _wgslsmith_f_op_vec2_f32(-arg_3.yy)) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) - _wgslsmith_f_op_f32(-arg_3.x)), -2126f)));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_4, arg_2: f32, arg_3: f32) -> Struct_3 {
    return func_1(arg_0.a.c.c, ((~u_input.c & arg_0.a.c.b.x) >> (select(16839u, 39184u, all(vec4<bool>(arg_0.a.c.c.x, false, arg_0.a.b.d, false))) % 32u)) | arg_0.a.b.a.x, abs(~((u_input.b >> (arg_0.b.a % 32u)) >> (countOneBits(52903u) % 32u))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1340f, _wgslsmith_f_op_f32(-arg_1.b), -483f) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-597f + arg_1.b), _wgslsmith_f_op_vec4_f32(func_3(arg_0.c.x, arg_0, global1[_wgslsmith_index_u32(49443u, 30u)], Struct_2(1u))).x, _wgslsmith_f_op_f32(-arg_1.b)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2094f, arg_0.a.d.x, arg_1.b), vec3<f32>(-544f, arg_1.b, -948f), true)), vec3<f32>(-506f, -486f, -1982f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 6>();
    var var_0 = func_4(Struct_5(func_1(vec4<bool>(true, false, true, true), u_input.c, -11864i, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(396f, 1142f, -821f) + vec3<f32>(475f, -158f, 810f)), vec3<f32>(1f, 1f, 1f))), func_1(vec4<bool>(true, true, true, true), u_input.e.x, select(14111i, 83416i, false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1256f, 100f, -1218f))))).a, !vec4<bool>(false, true, true, any(vec3<bool>(false, true, true)))), Struct_4(~_wgslsmith_mod_vec3_u32(vec3<u32>(1u, u_input.c, u_input.e.x) >> (vec3<u32>(1u, 4294967295u, 0u) % vec3<u32>(32u)), countOneBits(vec3<u32>(4294967295u, 1u, u_input.e.x))), _wgslsmith_f_op_f32(ceil(1142f)), ~firstTrailingBit(vec3<u32>(u_input.e.x, 4294967295u, u_input.c)), func_1(vec4<bool>(true, true, false, true), u_input.c, u_input.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(485f, -274f, 1507f)))).a), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_vec4_f32(func_3(false, Struct_5(func_1(vec4<bool>(true, false, true, true), u_input.c, 40440i, vec3<f32>(1176f, 492f, 1427f)), Struct_2(u_input.c), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true))), func_1(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true)), 17773u, -28448i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-381f, -631f, 1223f))).c, func_1(vec4<bool>(true, true, false, true), 23489u, 1i | u_input.d.x, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1006f, 1467f, 807f)))).a)).x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(947f - -1032f)))))));
    var_0 = func_1(vec4<bool>(true & var_0.c.d, var_0.c.d, false, func_1(!vec4<bool>(var_0.c.c.x, true, var_0.c.d, var_0.b.d), firstTrailingBit(~var_0.c.b.x), _wgslsmith_clamp_i32(firstLeadingBit(1i), ~35706i, ~u_input.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.d.x, var_0.d.x, var_0.d.x), vec3<f32>(var_0.d.x, 634f, -315f), var_0.c.c.x)))).b.d), reverseBits(func_4(Struct_5(Struct_3(var_0.a, Struct_1(u_input.e.yw, var_0.c.b, var_0.b.c, var_0.c.c.x), var_0.b, var_0.d), Struct_2(u_input.c), vec4<bool>(true, false, false, false)), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c, 33465u) & _wgslsmith_mult_u32(var_0.b.b.x, var_0.c.b.x), 6u)], -319f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(var_0.c.c.x, Struct_5(Struct_3(Struct_2(var_0.b.b.x), Struct_1(u_input.e.yx, vec4<u32>(u_input.e.x, 4294967295u, u_input.e.x, 1u), vec4<bool>(var_0.b.c.x, false, var_0.b.c.x, var_0.b.c.x), var_0.b.c.x), Struct_1(vec2<u32>(u_input.e.x, u_input.e.x), vec4<u32>(9690u, var_0.b.b.x, u_input.e.x, u_input.c), var_0.c.c, var_0.b.d), vec2<f32>(1372f, var_0.d.x)), Struct_2(u_input.e.x), var_0.b.c), var_0.b, Struct_2(u_input.e.x))).x)).b.b.x), ~u_input.d.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -278f)), var_0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d.x + 349f) + _wgslsmith_f_op_f32(min(var_0.d.x, var_0.d.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, -835f, var_0.d.x), vec3<f32>(-732f, var_0.d.x, -1001f)), vec3<f32>(-163f, var_0.d.x, var_0.d.x)))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1031f, _wgslsmith_f_op_f32(-var_0.d.x))), 4294967295u, ~(~reverseBits(0u)), u_input.b ^ -13368i);
}

