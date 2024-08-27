struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec2<bool>,
    d: vec3<f32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec4<u32>(80004u, 1u, 1u, 0u), vec2<f32>(-1310f, -266f), vec2<bool>(true, true), vec3<f32>(700f, 2313f, 348f), -167f), Struct_1(vec4<u32>(1u, 24633u, 4294967295u, 46263u), vec2<f32>(-184f, 854f), vec2<bool>(false, true), vec3<f32>(182f, 738f, 675f), -500f), Struct_1(vec4<u32>(4294967295u, 1u, 24466u, 0u), vec2<f32>(575f, -747f), vec2<bool>(false, false), vec3<f32>(893f, -1104f, 159f), -272f), Struct_1(vec4<u32>(4294967295u, 1u, 26957u, 40703u), vec2<f32>(-1337f, 1875f), vec2<bool>(true, true), vec3<f32>(-127f, -659f, -758f), -423f), Struct_1(vec4<u32>(5293u, 0u, 1u, 35093u), vec2<f32>(475f, 162f), vec2<bool>(false, true), vec3<f32>(-1308f, -127f, -354f), 570f), Struct_1(vec4<u32>(43411u, 1u, 1u, 0u), vec2<f32>(-913f, -655f), vec2<bool>(false, false), vec3<f32>(596f, -1268f, -190f), 238f), Struct_1(vec4<u32>(0u, 0u, 1u, 5709u), vec2<f32>(-390f, -1209f), vec2<bool>(true, false), vec3<f32>(-248f, 1516f, 247f), 1000f), Struct_1(vec4<u32>(12601u, 23541u, 0u, 0u), vec2<f32>(291f, 1000f), vec2<bool>(true, true), vec3<f32>(133f, -915f, 901f), -112f), Struct_1(vec4<u32>(104670u, 0u, 37433u, 21892u), vec2<f32>(-1000f, 561f), vec2<bool>(true, false), vec3<f32>(-756f, 499f, 264f), -199f), Struct_1(vec4<u32>(27870u, 0u, 1u, 1u), vec2<f32>(-1000f, 1234f), vec2<bool>(true, true), vec3<f32>(1778f, -1036f, -177f), 1390f), Struct_1(vec4<u32>(56396u, 16272u, 1u, 54045u), vec2<f32>(1769f, -888f), vec2<bool>(true, true), vec3<f32>(-1813f, -425f, -132f), -393f), Struct_1(vec4<u32>(4294967295u, 1u, 47486u, 36505u), vec2<f32>(172f, 1909f), vec2<bool>(false, true), vec3<f32>(2531f, 1499f, -365f), 916f), Struct_1(vec4<u32>(0u, 4294967295u, 1u, 57200u), vec2<f32>(-1148f, 404f), vec2<bool>(false, false), vec3<f32>(-177f, 610f, -267f), -197f), Struct_1(vec4<u32>(60110u, 9954u, 4294967295u, 0u), vec2<f32>(-1043f, 529f), vec2<bool>(true, true), vec3<f32>(110f, -1024f, -241f), 751f), Struct_1(vec4<u32>(4294967295u, 24061u, 0u, 0u), vec2<f32>(1000f, -1000f), vec2<bool>(false, false), vec3<f32>(155f, -943f, 1123f), -1659f), Struct_1(vec4<u32>(38041u, 1u, 4294967295u, 10803u), vec2<f32>(-1000f, 1120f), vec2<bool>(true, true), vec3<f32>(683f, -1000f, 230f), -1576f));

var<private> global1: array<u32, 28> = array<u32, 28>(75289u, 1u, 4648u, 64534u, 4294967295u, 4294967295u, 4294967295u, 1u, 4294967295u, 44780u, 4911u, 0u, 48134u, 17553u, 4294967295u, 20955u, 27221u, 4294967295u, 4294967295u, 18705u, 4294967295u, 4294967295u, 1u, 65717u, 4294967295u, 92863u, 34207u, 17469u);

var<private> global2: array<vec4<u32>, 23>;

var<private> global3: vec4<f32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec2<f32> {
    var var_0 = Struct_2(Struct_1(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(select(~4294967295u, ~28575u, true), ~(~0u)), 23u)], _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global3.yx), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-345f, global3.x), global3.yz, false)), vec2<bool>(true, false))) * vec2<f32>(326f, global3.x)), select(vec2<bool>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 28u)], 28u)], 28u)], 28u)] < 34644u, false), vec2<bool>(true, true), (u_input.a < -24364i) || false), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, _wgslsmith_f_op_f32(f32(-1f) * -157f), _wgslsmith_f_op_f32(ceil(global3.x))) - vec3<f32>(_wgslsmith_f_op_f32(floor(-766f)), global3.x, global3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(global3.x + -840f))))), Struct_1(~global2[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(11155u, 28u)], 28u)], 28u)], 23u)], global3.wy, select(select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(true, false), false), true), select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false))), vec2<bool>(false, true)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-global3.xwz), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global3.xyw + vec3<f32>(global3.x, global3.x, global3.x))))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.x - global3.x), -566f)))), Struct_1(vec4<u32>(~(global1[_wgslsmith_index_u32(50739u, 28u)] ^ global1[_wgslsmith_index_u32(10652u, 28u)]), 0u, 1u, ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(7379u, 28u)], 28u)]), _wgslsmith_f_op_vec2_f32(-global3.zw), select(select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(false, true), false), true), vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, true), false)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1000f - 762f), -538f, global3.x) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global3.x, 1525f, -623f))), global3.yyw, vec3<bool>(false, false, false)))), _wgslsmith_div_f32(-547f, -1080f)), min(global1[_wgslsmith_index_u32(1u, 28u)], global1[_wgslsmith_index_u32(countOneBits(abs(1u)), 28u)]), Struct_1(global2[_wgslsmith_index_u32(1u, 23u)], vec2<f32>(972f, -1532f), select(vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(true, true)), all(vec4<bool>(false, false, false, true))), select(vec2<bool>(true, true), vec2<bool>(false, false), u_input.a <= -13771i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, _wgslsmith_f_op_f32(min(global3.x, global3.x)), _wgslsmith_f_op_f32(sign(global3.x)))), global3.x));
    var_0 = Struct_2(global0[_wgslsmith_index_u32(var_0.d << (15608u % 32u), 16u)], Struct_1(var_0.a.a, _wgslsmith_f_op_vec2_f32(select(var_0.b.d.zy, global3.yw, select(var_0.a.c, !var_0.b.c, true))), vec2<bool>(var_0.e.c.x, false), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(1601f)), _wgslsmith_f_op_f32(-var_0.a.d.x), global3.x)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(f32(-1f) * -242f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global3.x)))))), Struct_1(~min(vec4<u32>(global1[_wgslsmith_index_u32(var_0.e.a.x, 28u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 28u)], 28u)], 28u)], var_0.a.a.x, 4294967295u), global2[_wgslsmith_index_u32(115765u, 23u)]) >> (vec4<u32>(~global1[_wgslsmith_index_u32(0u, 28u)], ~var_0.d, ~var_0.b.a.x, var_0.d) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-var_0.a.d.zx), vec2<f32>(547f, global3.x))))), select(select(vec2<bool>(true, true), select(vec2<bool>(var_0.a.c.x, false), vec2<bool>(var_0.e.c.x, var_0.a.c.x), var_0.e.c), vec2<bool>(var_0.b.c.x, true)), !var_0.a.c, var_0.c.c.x), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(global3.x)))), _wgslsmith_f_op_f32(-238f * _wgslsmith_f_op_f32(f32(-1f) * -446f)), _wgslsmith_f_op_f32(-var_0.c.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) * _wgslsmith_f_op_f32(f32(-1f) * -1349f)))), ~abs(_wgslsmith_div_u32(var_0.b.a.x, 16157u << (global1[_wgslsmith_index_u32(6563u, 28u)] % 32u))), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~_wgslsmith_sub_u32(1u, 1u), ~countOneBits(abs(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.e.a.x, 28u)], 28u)]))), 16u)]);
    let var_1 = reverseBits(2147483647i);
    var var_2 = global0[_wgslsmith_index_u32(select(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(var_0.e.a.x, 34166u, firstTrailingBit(global1[_wgslsmith_index_u32(var_0.e.a.x, 28u)])), 28u)], 78646u, ~16743u), 0u, false && var_0.e.c.x), 16u)];
    global2 = array<vec4<u32>, 23>();
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_2.d.x, global3.x)))));
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: vec2<f32>, arg_3: f32) -> Struct_1 {
    var var_0 = ~84691u;
    var var_1 = Struct_1(firstLeadingBit(~(vec4<u32>(1u, 33425u, 4294967295u, 17719u) >> (select(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(32895u, 28u)], 28u)], 28u)], 0u, 4294967295u, 36721u), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(53096u, 28u)], 28u)], 28u)], 28u)], 28u)], 108782u, 4294967295u, 4294967295u), vec4<bool>(true, true, arg_1, arg_1)) % vec4<u32>(32u)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3()) * vec2<f32>(_wgslsmith_f_op_f32(max(-1523f, _wgslsmith_f_op_f32(exp2(arg_3)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global3.x, -113f))))), select(select(vec2<bool>(false, all(vec2<bool>(arg_1, arg_1))), select(vec2<bool>(arg_1, arg_1), select(vec2<bool>(arg_1, arg_1), vec2<bool>(true, false), arg_1), any(vec3<bool>(false, false, arg_1))), any(vec3<bool>(arg_1, arg_1, true))), !select(select(vec2<bool>(true, arg_1), vec2<bool>(true, true), arg_1), select(vec2<bool>(true, arg_1), vec2<bool>(true, arg_1), vec2<bool>(true, true)), select(vec2<bool>(arg_1, true), vec2<bool>(arg_1, true), false)), arg_1), vec3<f32>(arg_3, 233f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -401f) - arg_2.x)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1095f, arg_2.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + global3.x) * _wgslsmith_f_op_f32(1000f * -180f)))), true)));
    var var_2 = arg_1;
    var var_3 = Struct_2(Struct_1(var_1.a, _wgslsmith_f_op_vec2_f32(func_3()), var_1.c, vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_1.b.x, 108f))), _wgslsmith_f_op_f32(sign(269f)), _wgslsmith_f_op_f32(f32(-1f) * -608f)), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-2149f, arg_0) - -1000f))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(global1[_wgslsmith_index_u32(~44779u, 28u)], global1[_wgslsmith_index_u32(39246u & var_1.a.x, 28u)])), var_1.a.yw), 16u)], global0[_wgslsmith_index_u32(_wgslsmith_add_u32(abs(~abs(global1[_wgslsmith_index_u32(38079u, 28u)])), firstTrailingBit(~(~1u))), 16u)], _wgslsmith_sub_u32(_wgslsmith_mod_u32(4294967295u, var_1.a.x << (global1[_wgslsmith_index_u32(862u, 28u)] % 32u)), ~_wgslsmith_dot_vec3_u32(var_1.a.wxx, var_1.a.yyx)) >> (0u % 32u), Struct_1(select(~select(var_1.a, global2[_wgslsmith_index_u32(0u, 23u)], arg_1), _wgslsmith_mult_vec4_u32(firstTrailingBit(var_1.a), var_1.a), false), _wgslsmith_f_op_vec2_f32(max(var_1.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2) - _wgslsmith_f_op_vec2_f32(vec2<f32>(868f, arg_2.x) * vec2<f32>(global3.x, 617f))))), select(var_1.c, select(var_1.c, var_1.c, !var_1.c), true), var_1.d, _wgslsmith_f_op_f32(ceil(-850f))));
    var var_4 = -(vec4<i32>(-1i) * -countOneBits(-vec4<i32>(0i, u_input.a, 1i, u_input.a)));
    return global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~var_3.d, ~(~(~4294967295u))), 16u)];
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: vec3<bool>, arg_3: Struct_1) -> bool {
    var var_0 = Struct_2(Struct_1(select(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_3.a.x, global1[_wgslsmith_index_u32(11940u, 28u)], global1[_wgslsmith_index_u32(1u, 28u)], 1u) << (vec4<u32>(54497u, 63395u, arg_3.a.x, 125918u) % vec4<u32>(32u)), min(global2[_wgslsmith_index_u32(1u, 23u)], arg_3.a)), arg_3.a, vec4<bool>(!arg_3.c.x, false, true, all(vec2<bool>(arg_2.x, arg_2.x)))), arg_3.b, vec2<bool>(true, arg_3.c.x | true), arg_3.d, global3.x), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1000f + -880f), -1356f))), true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global3.x, 305f), _wgslsmith_f_op_vec2_f32(-arg_3.b)))), 683f), Struct_1(global2[_wgslsmith_index_u32(reverseBits(0u), 23u)], _wgslsmith_f_op_vec2_f32(global3.xx * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, arg_3.d.x)))), !arg_2.yx, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1292f, -143f)), -118f, 957f), -471f), ~(~_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_3.a.x, 28u)], 28u)], arg_3.a.x), func_2(-703f, true, global3.yx, 525f).a)), global0[_wgslsmith_index_u32(~arg_3.a.x, 16u)]);
    global1 = array<u32, 28>();
    global1 = array<u32, 28>();
    var var_1 = func_2(_wgslsmith_f_op_f32(-global3.x), func_2(1129f, true, vec2<f32>(var_0.c.d.x, _wgslsmith_f_op_f32(-1000f - -121f)), _wgslsmith_f_op_f32(floor(arg_3.e))).c.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global3.zx, vec2<f32>(1757f, 1132f), false)))) * _wgslsmith_f_op_vec2_f32(var_0.b.d.xx + vec2<f32>(_wgslsmith_f_op_f32(-global3.x), -121f))), _wgslsmith_f_op_f32(-717f * _wgslsmith_f_op_f32(959f + arg_3.b.x)));
    global0 = array<Struct_1, 16>();
    return _wgslsmith_f_op_f32(step(-830f, -155f)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec2_u32(~(_wgslsmith_div_vec2_u32(max(vec2<u32>(0u, 4294967295u), vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(15406u, 28u)], 28u)], 28u)], 28u)], 28u)], 14585u)), ~vec2<u32>(global1[_wgslsmith_index_u32(0u, 28u)], 88033u)) ^ reverseBits(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 28u)], 28u)], 28u)], 28u)], 28u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(62199u, 28u)], 28u)], 28u)]))), ~vec2<u32>(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(14127u, 28u)], select(34053u, 4294967295u, false)), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(72842u, 28u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(46525u, 28u)], 28u)], 28u)]), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(7905u, 28u)], 28u)]), 28u)], 28u)]));
    global3 = vec4<f32>(global3.x, -396f, global3.x, global3.x);
    let var_1 = Struct_1(firstTrailingBit(~vec4<u32>(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(30650u, 28u)], 28u)], countOneBits(4294967295u), ~50122u, ~var_0.x)), vec2<f32>(global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global3.x, _wgslsmith_f_op_f32(floor(1146f)), true)))), vec2<bool>(func_1(-u_input.a & 4618i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)), !select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), global0[_wgslsmith_index_u32(11555u, 16u)]), true), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_vec2_f32(func_3()).x, _wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(max(global3.x, _wgslsmith_f_op_f32(max(global3.x, global3.x))))), _wgslsmith_f_op_vec3_f32(-global3.xwy))), _wgslsmith_f_op_f32(trunc(global3.x)));
    global2 = array<vec4<u32>, 23>();
    var var_2 = Struct_1(~(~func_2(-1000f, true, global3.wx, _wgslsmith_f_op_f32(exp2(global3.x))).a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -120f)), _wgslsmith_f_op_f32(var_1.b.x - global3.x))), vec2<bool>((_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 208u, 4294967295u), vec3<u32>(33274u, 0u, var_1.a.x)) & ~var_0.x) <= var_0.x, var_1.c.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global3.xzx + vec3<f32>(1409f, -938f, global3.x))) - _wgslsmith_f_op_vec3_f32(global3.wzx * vec3<f32>(var_1.d.x, 450f, var_1.b.x))) - global3.wwy), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.b.x + global3.x), var_1.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(var_2.a), ~var_2.a.x);
}

