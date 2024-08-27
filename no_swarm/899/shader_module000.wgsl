struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<f32>,
    d: f32,
}

struct Struct_4 {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<Struct_3, 20> = array<Struct_3, 20>(Struct_3(Struct_1(vec4<f32>(1523f, -1668f, -1301f, -1095f), false, vec2<i32>(22108i, 1i)), Struct_2(vec3<u32>(1u, 4294967295u, 1u), true), vec2<f32>(1238f, -984f), -600f), Struct_3(Struct_1(vec4<f32>(-565f, 2088f, -844f, -1170f), true, vec2<i32>(-1i, 1i)), Struct_2(vec3<u32>(0u, 30793u, 71288u), true), vec2<f32>(1529f, 1000f), 1918f), Struct_3(Struct_1(vec4<f32>(1659f, 1525f, -353f, -462f), false, vec2<i32>(0i, -1i)), Struct_2(vec3<u32>(4294967295u, 27041u, 1u), true), vec2<f32>(-550f, 747f), 1255f), Struct_3(Struct_1(vec4<f32>(-1000f, -1518f, -167f, 693f), false, vec2<i32>(2147483647i, 0i)), Struct_2(vec3<u32>(9522u, 65129u, 0u), true), vec2<f32>(-167f, 1789f), -172f), Struct_3(Struct_1(vec4<f32>(-1000f, -904f, 141f, -827f), false, vec2<i32>(62384i, 6259i)), Struct_2(vec3<u32>(1u, 1u, 6913u), true), vec2<f32>(-784f, -1000f), 265f), Struct_3(Struct_1(vec4<f32>(989f, 676f, -226f, -2324f), false, vec2<i32>(0i, -28977i)), Struct_2(vec3<u32>(11898u, 66401u, 1u), false), vec2<f32>(2226f, 1000f), 795f), Struct_3(Struct_1(vec4<f32>(287f, -176f, 825f, 789f), true, vec2<i32>(1684i, 1i)), Struct_2(vec3<u32>(7926u, 4294967295u, 4294967295u), false), vec2<f32>(656f, -142f), 1586f), Struct_3(Struct_1(vec4<f32>(-1000f, -1136f, 101f, 215f), true, vec2<i32>(84960i, 0i)), Struct_2(vec3<u32>(1u, 45675u, 4294967295u), false), vec2<f32>(1371f, 387f), 382f), Struct_3(Struct_1(vec4<f32>(-197f, -1760f, -1500f, 691f), false, vec2<i32>(i32(-2147483648), -27610i)), Struct_2(vec3<u32>(1u, 51675u, 1u), false), vec2<f32>(-661f, 1232f), 349f), Struct_3(Struct_1(vec4<f32>(-835f, -1592f, 380f, -885f), false, vec2<i32>(i32(-2147483648), 1i)), Struct_2(vec3<u32>(0u, 1u, 19712u), false), vec2<f32>(470f, 393f), -249f), Struct_3(Struct_1(vec4<f32>(399f, -126f, -601f, -527f), false, vec2<i32>(1i, i32(-2147483648))), Struct_2(vec3<u32>(57437u, 1u, 0u), true), vec2<f32>(974f, -600f), 133f), Struct_3(Struct_1(vec4<f32>(1041f, -1775f, -943f, -296f), true, vec2<i32>(-19909i, 2147483647i)), Struct_2(vec3<u32>(60016u, 26672u, 1u), false), vec2<f32>(212f, 646f), 531f), Struct_3(Struct_1(vec4<f32>(806f, 210f, -621f, -222f), true, vec2<i32>(2147483647i, i32(-2147483648))), Struct_2(vec3<u32>(34015u, 4294967295u, 1u), true), vec2<f32>(-2536f, 449f), 1142f), Struct_3(Struct_1(vec4<f32>(-1000f, 220f, 1000f, -1145f), false, vec2<i32>(-29253i, -1i)), Struct_2(vec3<u32>(35644u, 18882u, 14619u), false), vec2<f32>(894f, 977f), -1894f), Struct_3(Struct_1(vec4<f32>(1214f, -2426f, -837f, -896f), true, vec2<i32>(i32(-2147483648), 46403i)), Struct_2(vec3<u32>(0u, 0u, 4294967295u), true), vec2<f32>(-316f, 672f), 1108f), Struct_3(Struct_1(vec4<f32>(1068f, -146f, -542f, 1414f), false, vec2<i32>(-49006i, 41848i)), Struct_2(vec3<u32>(0u, 4977u, 36365u), true), vec2<f32>(-2236f, -2262f), -285f), Struct_3(Struct_1(vec4<f32>(946f, -847f, -1000f, -1400f), false, vec2<i32>(-69363i, 0i)), Struct_2(vec3<u32>(59691u, 1u, 27286u), false), vec2<f32>(867f, 668f), 1001f), Struct_3(Struct_1(vec4<f32>(984f, 865f, -834f, 903f), true, vec2<i32>(2147483647i, 2147483647i)), Struct_2(vec3<u32>(14441u, 35497u, 0u), false), vec2<f32>(-1653f, -222f), 1368f), Struct_3(Struct_1(vec4<f32>(1987f, 426f, -1596f, 122f), true, vec2<i32>(-23010i, 38658i)), Struct_2(vec3<u32>(4294967295u, 33505u, 4294967295u), true), vec2<f32>(-657f, -1184f), -721f), Struct_3(Struct_1(vec4<f32>(-213f, 1000f, -1211f, 1000f), false, vec2<i32>(1i, 35130i)), Struct_2(vec3<u32>(0u, 1u, 73102u), false), vec2<f32>(-630f, 620f), 526f));

var<private> global2: vec4<f32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>) -> f32 {
    global2 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(337f, global0.c.x))))))), arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(374f))))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(461f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-199f)) - _wgslsmith_f_op_f32(trunc(1000f)))))), global0.d);
    global1 = array<Struct_3, 20>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(275f * -1000f))), arg_0.x)));
    global1 = array<Struct_3, 20>();
    var var_1 = select(select(!select(vec4<bool>(global0.a.b, global0.a.b, global0.a.b, false), select(vec4<bool>(global0.b.b, true, global0.b.b, false), vec4<bool>(global0.b.b, true, global0.a.b, false), false), vec4<bool>(true, false, true, global0.b.b)), select(vec4<bool>(false, true, false, global0.a.b), !vec4<bool>(global0.a.b, false, global0.a.b, false), !vec4<bool>(false, false, true, global0.a.b)), !select(true, select(false, true, true), true)), vec4<bool>(all(!(!vec3<bool>(false, global0.a.b, global0.a.b))), global0.b.b, all(vec4<bool>(false || global0.a.b, global0.a.b, true, global0.b.b)), true || any(vec4<bool>(true, true, true, false))), false);
    return -545f;
}

fn func_2(arg_0: i32, arg_1: vec4<f32>) -> Struct_3 {
    return Struct_3(Struct_1(global0.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1.x)) - _wgslsmith_f_op_f32(f32(-1f) * -373f)) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(sign(arg_1.x))), vec2<i32>(global0.a.c.x, firstLeadingBit(~global0.a.c.x))), global0.b, _wgslsmith_f_op_vec2_f32(global2.xy * arg_1.xz), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(vec3<f32>(-1755f, -691f, global0.a.a.x))), _wgslsmith_f_op_f32(-global0.d))))));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: Struct_4) -> Struct_2 {
    global0 = func_2(i32(-1i) * -2147483647i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(global0.a.a)), vec4<f32>(arg_0.x, arg_0.x, -2477f, global2.x), arg_1.b))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.a.a))));
    global1 = array<Struct_3, 20>();
    var var_0 = -_wgslsmith_mod_vec2_i32(arg_3.b.xw, global0.a.c);
    var var_1 = func_2(var_0.x, global0.a.a).b;
    global2 = global0.a.a;
    return Struct_2(countOneBits(arg_3.d.a), true);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4, arg_2: vec3<bool>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(global2.x)), global2.x, _wgslsmith_f_op_f32(1440f - _wgslsmith_f_op_f32(sign(-285f)))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.a.a.xwx), vec3<f32>(_wgslsmith_div_f32(global0.a.a.x, global2.x), 1000f, _wgslsmith_f_op_f32(-global0.a.a.x))))));
    let var_1 = !vec4<bool>(true, false || arg_2.x, select(arg_1.e.a.x, ~90805u, 1u < arg_1.c.x) < ~4294967295u, arg_2.x);
    return _wgslsmith_f_op_f32(775f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(global0.a.a.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -37248i;
    global2 = _wgslsmith_f_op_vec4_f32(global0.a.a * vec4<f32>(-664f, global2.x, _wgslsmith_f_op_f32(func_4(global0.b, Struct_4(31822i, u_input.a, vec3<u32>(global0.b.a.x, global0.b.a.x, global0.b.a.x) << (vec3<u32>(0u, 0u, 1u) % vec3<u32>(32u)), Struct_2(global0.b.a, true), func_1(vec2<f32>(-2579f, global0.a.a.x), Struct_2(global0.b.a, true), vec3<u32>(0u, 39997u, global0.b.a.x), Struct_4(u_input.b, vec4<i32>(-10529i, -2147483647i, 1i, global0.a.c.x), global0.b.a, Struct_2(vec3<u32>(36474u, global0.b.a.x, global0.b.a.x), global0.a.b), global0.b))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, global0.a.b), vec3<bool>(false, false, global0.b.b)), select(vec3<bool>(global0.b.b, global0.b.b, global0.b.b), vec3<bool>(global0.a.b, true, global0.a.b), vec3<bool>(true, false, global0.b.b)), select(vec3<bool>(false, true, true), vec3<bool>(global0.a.b, global0.a.b, true), vec3<bool>(global0.b.b, global0.b.b, global0.b.b))))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global0.c.x, global2.x)))));
    var var_1 = vec4<i32>(~u_input.a.x, -_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.c, 1i, global0.a.c.x), u_input.a.xxz), ~726i), _wgslsmith_sub_i32(_wgslsmith_add_i32(~(~u_input.b), _wgslsmith_mod_i32(u_input.b, 73017i) << (reverseBits(41232u) % 32u)), u_input.b), -6790i);
    let var_2 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(select(global0.a.a, _wgslsmith_f_op_vec4_f32(-global0.a.a), vec4<bool>(true, !global0.a.b, global0.b.b, !global0.a.b))), !(global0.a.b | false), vec2<i32>((2147483647i ^ global0.a.c.x) >> (4294967295u % 32u), 0i)), func_2(-(~(~(-51100i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.a.a) * vec4<f32>(global2.x, 584f, 2716f, 414f)))).b, vec2<f32>(func_2(-1i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.a.a))).a.a.x, -2539f), _wgslsmith_f_op_f32(-global2.x));
    var_0 = _wgslsmith_dot_vec3_i32(select(u_input.a.zyy, firstTrailingBit(abs(vec3<i32>(-55536i, -2147483647i, var_2.a.c.x))), select(!vec3<bool>(false, global0.b.b, true), !vec3<bool>(true, false, var_2.a.b), !vec3<bool>(global0.b.b, global0.a.b, global0.a.b))), reverseBits(_wgslsmith_add_vec3_i32(reverseBits(-vec3<i32>(var_2.a.c.x, var_2.a.c.x, 70478i)), abs(_wgslsmith_sub_vec3_i32(var_1.xyw, u_input.a.wxz)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(countOneBits(countOneBits(_wgslsmith_mod_i32(u_input.c, -24814i))), ~firstTrailingBit(global0.a.c.x), var_2.a.c.x), firstTrailingBit(global0.a.c), ~(global0.b.a.yz | vec2<u32>(global0.b.a.x | 5638u, var_2.b.a.x ^ 2705u)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, 721f, 574f) - global0.a.a.zzy), _wgslsmith_f_op_vec3_f32(global2.zzx - var_2.a.a.xyx), !vec3<bool>(global0.b.b, false, false)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(-638f, var_2.d)), _wgslsmith_f_op_f32(585f + global0.a.a.x), _wgslsmith_f_op_f32(f32(-1f) * -223f))))));
}

