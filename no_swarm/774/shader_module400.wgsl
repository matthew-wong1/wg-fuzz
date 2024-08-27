struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec3<bool>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
    c: vec4<f32>,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: i32;

var<private> global2: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec4<i32>(i32(-2147483648), -18567i, 36798i, 1i), false, vec3<bool>(true, true, true), 31112u, false), Struct_1(vec4<i32>(-7024i, -1i, 23411i, -23416i), false, vec3<bool>(true, false, false), 3668u, true), Struct_1(vec4<i32>(-1i, 14394i, -53644i, 14108i), false, vec3<bool>(true, false, false), 4294967295u, false), Struct_1(vec4<i32>(-54108i, 1579i, -15607i, 0i), false, vec3<bool>(false, false, true), 0u, false), Struct_1(vec4<i32>(1872i, -1i, 2147483647i, 19797i), false, vec3<bool>(true, false, true), 66230u, true), Struct_1(vec4<i32>(29382i, 9244i, 2147483647i, i32(-2147483648)), false, vec3<bool>(false, true, false), 101987u, true), Struct_1(vec4<i32>(0i, 34059i, -1i, 0i), true, vec3<bool>(false, false, false), 4294967295u, false), Struct_1(vec4<i32>(36854i, 2147483647i, i32(-2147483648), 35808i), true, vec3<bool>(true, true, false), 24057u, true), Struct_1(vec4<i32>(14957i, 2147483647i, -45225i, -7866i), false, vec3<bool>(true, false, true), 4294967295u, true), Struct_1(vec4<i32>(-23605i, i32(-2147483648), i32(-2147483648), -246i), true, vec3<bool>(true, false, false), 1u, true), Struct_1(vec4<i32>(1i, 49406i, -46596i, -17324i), true, vec3<bool>(true, false, false), 0u, true), Struct_1(vec4<i32>(1i, 16062i, -10202i, 2147483647i), false, vec3<bool>(true, true, true), 15971u, true), Struct_1(vec4<i32>(2147483647i, 1i, 2147483647i, 0i), true, vec3<bool>(false, false, false), 26840u, true), Struct_1(vec4<i32>(59247i, -1333i, 25234i, 67495i), false, vec3<bool>(true, false, false), 74062u, false), Struct_1(vec4<i32>(-1i, 2147483647i, 1i, 32105i), true, vec3<bool>(true, true, true), 22829u, true), Struct_1(vec4<i32>(i32(-2147483648), 30217i, -10649i, -1i), false, vec3<bool>(true, false, true), 4294967295u, false), Struct_1(vec4<i32>(22283i, -1i, 38849i, -16131i), false, vec3<bool>(false, true, true), 1u, true), Struct_1(vec4<i32>(0i, -13479i, 3742i, -1i), false, vec3<bool>(true, false, true), 25153u, false), Struct_1(vec4<i32>(-80691i, -4021i, 2147483647i, 7267i), false, vec3<bool>(true, true, true), 0u, true), Struct_1(vec4<i32>(1i, 1i, 24764i, 4358i), true, vec3<bool>(true, false, true), 20363u, false), Struct_1(vec4<i32>(1i, 18768i, -47716i, 2147483647i), false, vec3<bool>(true, true, true), 18686u, false), Struct_1(vec4<i32>(0i, 0i, 1i, 15417i), false, vec3<bool>(true, false, true), 1u, true), Struct_1(vec4<i32>(-1i, -1i, 2147483647i, -45674i), false, vec3<bool>(true, true, false), 4294967295u, true), Struct_1(vec4<i32>(-54800i, 19809i, 1i, i32(-2147483648)), true, vec3<bool>(false, false, false), 6003u, true), Struct_1(vec4<i32>(i32(-2147483648), 45263i, -91i, 1i), true, vec3<bool>(true, false, false), 1u, false), Struct_1(vec4<i32>(-1i, -51951i, 14218i, -1i), true, vec3<bool>(true, false, false), 49184u, true), Struct_1(vec4<i32>(-71464i, i32(-2147483648), 0i, -34991i), false, vec3<bool>(true, true, false), 2228u, true));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec4<f32>) -> f32 {
    global1 = i32(-1i) * -46654i;
    var var_0 = arg_0.a.x;
    return arg_2.x;
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: bool) -> bool {
    global0 = vec2<u32>(firstLeadingBit(0u), 0u);
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_1(Struct_1(arg_1.a, arg_1.b & arg_2, select(vec3<bool>(arg_2, arg_2, arg_1.b), vec3<bool>(true, true, true), arg_1.c), abs(global0.x), arg_2), _wgslsmith_mult_vec3_i32(~vec3<i32>(u_input.a, u_input.a, -1i), -vec3<i32>(arg_0, 30475i, -1i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-930f, -1041f, 811f, 1151f), vec4<f32>(224f, -1000f, -179f, 1153f)))))), -219f, _wgslsmith_f_op_f32(floor(-1852f))));
    global1 = abs(~_wgslsmith_div_i32(arg_0, 0i & arg_1.a.x) | ~(-13141i));
    var var_1 = select(abs(_wgslsmith_mod_vec4_u32(vec4<u32>(global0.x, 4294967295u, _wgslsmith_div_u32(59792u, global0.x), 4294967295u << (0u % 32u)), firstTrailingBit(~vec4<u32>(29495u, 0u, global0.x, arg_1.d)))), ~(vec4<u32>(_wgslsmith_mod_u32(global0.x, 17457u), ~37037u, 4294967295u, reverseBits(arg_1.d)) ^ countOneBits(~vec4<u32>(global0.x, arg_1.d, global0.x, arg_1.d))), !arg_1.c.x);
    global0 = firstLeadingBit(_wgslsmith_sub_vec2_u32(~vec2<u32>(global0.x, _wgslsmith_clamp_u32(4294967295u, 4294967295u, 34645u)), ~_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(var_1.xy, var_1.yw), min(vec2<u32>(1u, 15878u), vec2<u32>(4294967295u, global0.x)))));
    return arg_1.b;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32) -> u32 {
    let var_0 = Struct_3(arg_0, select(arg_1.c, !vec3<bool>(func_3(-2147483647i, Struct_1(arg_1.a, false, arg_0.b.zxy, global0.x, true), arg_0.b.x), arg_0.d || arg_0.d, select(arg_0.b.x, arg_1.e, false)), vec3<bool>(arg_1.b || any(vec3<bool>(true, false, arg_0.a)), true, true)), true);
    global2 = array<Struct_1, 27>();
    var var_1 = 33575u;
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1545f, _wgslsmith_f_op_f32(-1031f - _wgslsmith_f_op_f32(trunc(1077f)))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.a.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.x * var_0.a.c.x)))))));
    let var_3 = arg_1.a.x;
    return ~(~1u);
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    let var_0 = ~func_2(Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -938f) > _wgslsmith_f_op_f32(ceil(-611f)), vec4<bool>(any(vec4<bool>(arg_0.e, true, arg_0.c.x, true)), false, u_input.a >= arg_0.a.x, arg_0.e), vec4<f32>(-497f, _wgslsmith_f_op_f32(trunc(-1000f)), -571f, -223f), true), global2[_wgslsmith_index_u32(~4294967295u, 27u)], -56049i);
    global2 = array<Struct_1, 27>();
    return Struct_2(true, !select(!vec4<bool>(true, arg_0.e, true, true), vec4<bool>(false, any(arg_0.c.xz), arg_0.b, !arg_0.c.x), !select(vec4<bool>(true, arg_0.b, false, false), vec4<bool>(arg_0.b, arg_0.c.x, arg_0.e, false), vec4<bool>(false, true, false, false))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -239f), _wgslsmith_f_op_f32(f32(-1f) * -269f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -216f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-460f, -803f) + -247f), _wgslsmith_f_op_f32(-1489f - 1f)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1178f, 1000f, -1823f, 1282f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1098f, -1000f, 326f, -1337f) * vec4<f32>(1239f, 636f, 1273f, -1000f)))))), true);
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: bool, arg_3: Struct_2) -> Struct_2 {
    var var_0 = 4294967295u;
    let var_1 = Struct_3(Struct_2(true || arg_3.a, func_4(global2[_wgslsmith_index_u32(1u, 27u)]).b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(arg_3.c)))), arg_2), vec3<bool>(func_3(u_input.a, Struct_1(~vec4<i32>(-2147483647i, 7774i, -1i, 1i), arg_0.b.x | arg_2, arg_3.b.wwz, global0.x, true == arg_3.d), false), any(vec3<bool>(true, true, true)) | (77752u <= global0.x), true), arg_3.a);
    var var_2 = u_input.a;
    global2 = array<Struct_1, 27>();
    let var_3 = var_1;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(~global0.x, 27u)];
    var var_1 = Struct_2(all(var_0.c.zy), vec4<bool>(!var_0.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-2233f, 1000f, false)) * 1f) > 970f, !any(vec2<bool>(var_0.c.x, var_0.c.x)), select(false, all(vec3<bool>(true, true, var_0.b)), any(select(vec4<bool>(var_0.e, var_0.c.x, true, var_0.c.x), vec4<bool>(false, var_0.b, false, true), var_0.b)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -213f), _wgslsmith_f_op_f32(max(723f, 1000f)), _wgslsmith_f_op_f32(func_1(global2[_wgslsmith_index_u32(var_0.d, 27u)], vec3<i32>(var_0.a.x, -17949i, u_input.a), vec4<f32>(-1062f, 2256f, -1615f, 473f))), 1f))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(170f, -1173f, 700f, 771f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-929f, -1192f, -334f, 1119f) - vec4<f32>(839f, -174f, -335f, 225f))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(825f, 325f, 2545f, -257f) - vec4<f32>(555f, 219f, -773f, -1541f)))))), var_0.d > _wgslsmith_dot_vec2_u32(vec2<u32>(~var_0.d, _wgslsmith_sub_u32(1u, var_0.d)), _wgslsmith_mod_vec2_u32(vec2<u32>(var_0.d, 4294967295u) | vec2<u32>(4294967295u, 5823u), abs(vec2<u32>(global0.x, global0.x)))));
    var var_2 = Struct_3(func_5(func_4(Struct_1(var_0.a, true, var_1.b.yxw, func_2(Struct_2(true, var_1.b, vec4<f32>(-1226f, 264f, 1446f, var_1.c.x), false), Struct_1(var_0.a, true, vec3<bool>(var_0.e, true, var_1.a), 79786u, false), 25234i), !var_1.b.x)), u_input.a, true, func_4(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0.d, 91485u) | ~var_0.d, 27u)])), vec3<bool>(true, var_0.c.x, (~var_0.d & _wgslsmith_div_u32(global0.x, global0.x)) <= ~abs(global0.x)), var_0.b);
    var var_3 = global2[_wgslsmith_index_u32(1u, 27u)];
    global2 = array<Struct_1, 27>();
    let var_4 = Struct_3(func_4(Struct_1(var_0.a, !var_2.c, select(vec3<bool>(var_3.c.x, var_3.e, var_0.b), var_0.c, var_2.a.c.x <= 432f), var_0.d, var_3.e & false)), vec3<bool>(select(var_1.d, !any(vec2<bool>(true, true)), !(!var_0.c.x)), var_3.b | true, var_1.b.x), true);
    var_3 = Struct_1(var_0.a, false, var_0.c, global0.x, var_4.b.x);
    var var_5 = _wgslsmith_f_op_f32(-var_2.a.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(abs(firstLeadingBit(vec4<u32>(93746u, 9492u, global0.x, 1u))) << (_wgslsmith_mod_vec4_u32(abs(vec4<u32>(4294967295u, var_3.d, 4294967295u, global0.x)), vec4<u32>(var_3.d, global0.x, global0.x, 65137u) ^ vec4<u32>(var_0.d, var_0.d, global0.x, 76859u)) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_clamp_u32(1u, ~37330u, min(10049u, 0u)), global0.x ^ 1u, ~global0.x & ~1u, ~12024u)), global0.x, ~((~120852u << (var_0.d % 32u)) ^ 27065u), ~var_3.a.wy);
}

