struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: u32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec2<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 16>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32, arg_1: vec2<f32>, arg_2: Struct_1) -> f32 {
    global0 = array<vec3<i32>, 16>();
    let var_0 = arg_1;
    global0 = array<vec3<i32>, 16>();
    let var_1 = Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -582f), var_0.x), ~(~89718u), _wgslsmith_f_op_vec3_f32(vec3<f32>(-799f, _wgslsmith_f_op_f32(711f * var_0.x), _wgslsmith_f_op_f32(max(-1465f, arg_2.a))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, var_0.x, arg_0) * vec3<f32>(var_0.x, arg_0, var_0.x))))), vec4<bool>(((u_input.a.x | u_input.a.x) << ((u_input.b & arg_2.b) % 32u)) < ~u_input.a.x, any(vec3<bool>(true, true, true)) | false, !(true != any(vec3<bool>(false, false, false))), u_input.b < (4294967295u ^ _wgslsmith_div_u32(u_input.b, 0u))), max(_wgslsmith_div_u32(abs(arg_2.b) ^ 1u, _wgslsmith_div_u32(arg_2.b, u_input.b) << (39567u % 32u)), 4294967295u), select(vec4<u32>(47168u, min(21354u, ~u_input.b), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(6253u, u_input.b)), vec2<u32>(arg_2.b, 1u)), ~_wgslsmith_mult_u32(4294967295u, arg_2.b)), _wgslsmith_mult_vec4_u32(~(~vec4<u32>(u_input.b, 9420u, 1u, u_input.b)), min(vec4<u32>(u_input.b, 12673u, 1u, u_input.b), firstLeadingBit(vec4<u32>(1u, 25673u, 5006u, 40719u)))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    let var_2 = Struct_1(-1000f, ~4294967295u, vec3<f32>(361f, var_0.x, arg_2.a));
    return var_2.a;
}

fn func_2(arg_0: Struct_1) -> u32 {
    var var_0 = Struct_1(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(375f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(1037f)))))), u_input.b, arg_0.c);
    let var_1 = Struct_1(624f, u_input.b, vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(var_0.c.x, vec2<f32>(var_0.c.x, -1822f), arg_0)), _wgslsmith_f_op_f32(exp2(var_0.a))), -2046f)), var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -537f) + -568f)));
    let var_2 = ~(min(arg_0.b, arg_0.b) & reverseBits(~4294967295u));
    global0 = array<vec3<i32>, 16>();
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)), ~firstTrailingBit(5329u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a, var_1.a, var_0.c.x) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-532f, 2266f, -1401f) - vec3<f32>(var_1.a, 287f, arg_0.c.x))))));
    return u_input.b;
}

fn func_4(arg_0: vec4<u32>, arg_1: i32) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -527f) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1310f)))), ~u_input.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1078f, -557f) + vec3<f32>(826f, -2096f, 380f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-627f, -961f, 195f) * vec3<f32>(945f, -307f, -1423f))))), vec4<bool>(true, false, any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true)))), 1299u, min(select(arg_0 ^ max(arg_0, vec4<u32>(arg_0.x, u_input.b, arg_0.x, u_input.b)), arg_0, select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true))), arg_0));
    let var_1 = vec4<i32>(-1i) * -vec4<i32>(~select(arg_1, arg_1, false), _wgslsmith_mod_i32(abs(-16145i), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, -1i, arg_1), u_input.a)), reverseBits(arg_1), -arg_1);
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(401f, _wgslsmith_f_op_f32(1706f * 619f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.a.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.a * -333f) - 348f))), _wgslsmith_f_op_f32(step(-565f, -282f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(529f, _wgslsmith_f_op_f32(-1000f + var_0.a.c.x))))));
    var var_3 = var_0.a;
    var_3 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.c.x) - var_0.a.c.x))), u_input.b, vec3<f32>(_wgslsmith_div_f32(1132f, -667f), _wgslsmith_f_op_f32(var_0.a.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-577f, var_3.a)))), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(1182f)))))));
    return var_0.a;
}

fn func_1() -> i32 {
    let var_0 = Struct_2(func_4(vec4<u32>(u_input.b, u_input.b, ~func_2(Struct_1(1040f, 48474u, vec3<f32>(-1241f, 1000f, -598f))), ~abs(20274u)), 35222i), !(!select(vec4<bool>(true, true, false, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false)), vec4<bool>(false, true, false, true))), countOneBits(1u), vec4<u32>(_wgslsmith_dot_vec2_u32(min(vec2<u32>(48543u, u_input.b), vec2<u32>(24098u, 4294967295u)) >> (select(vec2<u32>(75780u, 0u), vec2<u32>(61041u, u_input.b), vec2<bool>(true, true)) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 1u, u_input.b, u_input.b), vec4<u32>(u_input.b, 1u, u_input.b, 0u)), u_input.b)), 0u, u_input.b << (firstTrailingBit(u_input.b) % 32u), 1u));
    let var_1 = select(select(max(select(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(-1i, u_input.a.x)), u_input.a.yy << (var_0.d.yy % vec2<u32>(32u)), true), u_input.a.xx), -(vec2<i32>(8100i, 19676i) >> (~var_0.d.yw % vec2<u32>(32u))), select(var_0.b.zw, select(!var_0.b.xz, var_0.b.wy, var_0.b.wz), !any(var_0.b))), vec2<i32>(13183i, i32(-1i) * -28669i), !select(var_0.b.zw, vec2<bool>(!var_0.b.x, select(false, false, false)), !all(vec4<bool>(var_0.b.x, false, var_0.b.x, true))));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.a.c.x, _wgslsmith_f_op_f32(f32(-1f) * -785f))) - _wgslsmith_f_op_f32(-677f * var_0.a.c.x)), _wgslsmith_clamp_u32(func_2(Struct_1(var_0.a.c.x, u_input.b, vec3<f32>(-725f, -161f, -795f))), ~var_0.d.x, 80840u), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.a, var_0.a.a, -897f)), var_0.a.c))), var_0.b, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(~var_0.d.wz, vec2<u32>(var_0.d.x, 1u) & vec2<u32>(0u, var_0.c)), 1u), ~abs(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 12712u, var_0.a.b, 4294967295u), vec4<u32>(u_input.b, 39985u, u_input.b, 4294967295u)) & _wgslsmith_mult_vec4_u32(vec4<u32>(60868u, u_input.b, u_input.b, var_0.a.b), var_0.d)));
    global0 = array<vec3<i32>, 16>();
    var var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-1803f))));
    return 1i;
}

fn func_5(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_2) -> vec2<f32> {
    let var_0 = vec2<i32>(-1i, firstLeadingBit(arg_1 & arg_1)) | vec2<i32>(abs(2147483647i), _wgslsmith_sub_i32(~arg_1, -2147483647i));
    let var_1 = Struct_2(func_4(vec4<u32>(abs(u_input.b), 3220u, 16874u, _wgslsmith_add_u32(1u, func_2(Struct_1(arg_2.a.c.x, 26606u, vec3<f32>(arg_2.a.c.x, arg_2.a.c.x, arg_2.a.c.x))))), select(min(-2147483647i, _wgslsmith_div_i32(-32890i, u_input.a.x)), firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, 0i), vec2<i32>(var_0.x, u_input.a.x))), 970f <= func_4(arg_2.d, u_input.a.x).c.x)), arg_2.b, 4294967295u, arg_2.d);
    var var_2 = var_1.b.xxx;
    var_2 = !select(arg_2.b.zxz, select(arg_2.b.wyw, vec3<bool>(true, !arg_2.b.x, var_2.x), !all(vec3<bool>(arg_2.b.x, var_2.x, true))), select(var_2.x, true | var_2.x, var_1.b.x));
    var var_3 = arg_2.d.xwx & _wgslsmith_mult_vec3_u32(abs(~firstTrailingBit(vec3<u32>(var_1.a.b, 36827u, 31906u))), vec3<u32>(_wgslsmith_clamp_u32(76471u, 4294967295u, var_1.c), ~22623u, firstLeadingBit(0u)) >> (select(_wgslsmith_mod_vec3_u32(var_1.d.xyy, arg_2.d.yww), _wgslsmith_add_vec3_u32(vec3<u32>(3641u, 47506u, var_1.a.b), var_1.d.wwy), select(vec3<bool>(false, var_1.b.x, false), var_1.b.zwz, vec3<bool>(true, false, true))) % vec3<u32>(32u)));
    return _wgslsmith_div_vec2_f32(vec2<f32>(-320f, -523f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1095f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a.a, 199f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    var var_1 = i32(-1i) * -34296i;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-558f + 714f) + -1649f))) - 596f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -260f)), -157f));
    var var_3 = _wgslsmith_f_op_vec2_f32(func_5(firstLeadingBit(~firstTrailingBit(~vec2<u32>(u_input.b, 1u))), func_1(), Struct_2(Struct_1(-421f, firstLeadingBit(func_2(Struct_1(var_2, 0u, vec3<f32>(var_2, var_2, 736f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(650f, -174f, -1438f) + vec3<f32>(435f, var_2, -1000f)) * vec3<f32>(var_2, 242f, -124f))), vec4<bool>(false, all(vec2<bool>(false, false)) & false, true, true), ~(~max(u_input.b, u_input.b)), vec4<u32>(u_input.b, _wgslsmith_div_u32(1u, u_input.b) ^ func_4(vec4<u32>(u_input.b, 46240u, u_input.b, u_input.b), u_input.a.x).b, countOneBits(~u_input.b), 768u))));
    var_1 = u_input.a.x;
    var var_4 = vec4<i32>(-u_input.a.x, -43197i, _wgslsmith_dot_vec4_i32(~_wgslsmith_add_vec4_i32(vec4<i32>(-36089i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(2147483647i, -48139i, 1i, 2147483647i)), _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(select(vec4<i32>(u_input.a.x, 0i, u_input.a.x, -72856i), vec4<i32>(u_input.a.x, -2744i, 2147483647i, 2147483647i), false), ~vec4<i32>(34082i, u_input.a.x, u_input.a.x, 0i)), vec4<i32>(_wgslsmith_mult_i32(-66209i, u_input.a.x), 1i, _wgslsmith_sub_i32(2147483647i, u_input.a.x), u_input.a.x))), 1i);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(u_input.b, u_input.b, 12072u), vec3<i32>(firstTrailingBit(6179i), var_4.x, -_wgslsmith_clamp_i32(i32(-1i) * -2891i, var_4.x, var_4.x)), 44338u, ~vec2<u32>(u_input.b, u_input.b), vec3<u32>(_wgslsmith_mult_u32(firstLeadingBit(_wgslsmith_div_u32(u_input.b, 4294967295u)), 1u), _wgslsmith_mod_u32(~1u, _wgslsmith_add_u32(u_input.b, ~1u)), u_input.b));
}

