struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec3<bool>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: vec3<bool>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(vec3<f32>(1349f, 246f, -393f), 1240f, vec3<bool>(true, true, false), vec2<bool>(true, true)), Struct_2(vec3<f32>(-372f, -233f, -675f), 231f, vec3<bool>(true, true, false), vec2<bool>(true, true)), Struct_2(vec3<f32>(1142f, -534f, 583f), -736f, vec3<bool>(false, true, false), vec2<bool>(true, true)), Struct_2(vec3<f32>(158f, 789f, 251f), -758f, vec3<bool>(false, true, true), vec2<bool>(false, false)), Struct_2(vec3<f32>(-281f, 2389f, -355f), 540f, vec3<bool>(false, true, false), vec2<bool>(true, false)), Struct_2(vec3<f32>(-146f, -575f, -933f), -1000f, vec3<bool>(true, true, false), vec2<bool>(true, false)), Struct_2(vec3<f32>(-1000f, -1689f, -446f), 1000f, vec3<bool>(true, false, true), vec2<bool>(false, true)), Struct_2(vec3<f32>(1000f, -986f, -666f), 1000f, vec3<bool>(false, true, false), vec2<bool>(false, true)), Struct_2(vec3<f32>(2766f, 101f, 191f), -353f, vec3<bool>(true, true, false), vec2<bool>(true, true)), Struct_2(vec3<f32>(1000f, -796f, -267f), -132f, vec3<bool>(false, false, true), vec2<bool>(true, true)), Struct_2(vec3<f32>(390f, -150f, 727f), 926f, vec3<bool>(false, true, false), vec2<bool>(false, false)), Struct_2(vec3<f32>(-941f, -417f, -1111f), -533f, vec3<bool>(true, true, true), vec2<bool>(false, false)), Struct_2(vec3<f32>(-271f, -1000f, 414f), -356f, vec3<bool>(true, false, true), vec2<bool>(true, true)), Struct_2(vec3<f32>(-151f, 143f, 1064f), 989f, vec3<bool>(false, true, false), vec2<bool>(true, true)), Struct_2(vec3<f32>(-170f, 838f, 656f), -505f, vec3<bool>(true, true, true), vec2<bool>(true, false)), Struct_2(vec3<f32>(1443f, 295f, -397f), -817f, vec3<bool>(false, false, false), vec2<bool>(true, false)));

var<private> global2: vec3<i32> = vec3<i32>(-33360i, 0i, 2582i);

var<private> global3: array<Struct_2, 21>;

var<private> global4: array<vec3<i32>, 6>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<f32>) -> bool {
    global3 = array<Struct_2, 21>();
    var var_0 = global2.yy;
    global0 = Struct_2(global0.a, 985f, select(vec3<bool>(true, global0.c.x, true), select(vec3<bool>(global0.d.x, !global0.c.x, select(false, global0.d.x, true)), global0.c, select(global0.d.x, true, global0.c.x)), all(!global0.c.zz)), vec2<bool>(true, global0.d.x));
    global3 = array<Struct_2, 21>();
    global4 = array<vec3<i32>, 6>();
    return true;
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1) -> vec4<u32> {
    global0 = global1[_wgslsmith_index_u32(0u, 16u)];
    var var_0 = !select(vec2<bool>(true, any(vec3<bool>(false, arg_1.c.x, false))), !vec2<bool>(any(vec4<bool>(true, global0.c.x, arg_1.d.x, false)), func_3(vec2<f32>(arg_1.b, -1688f))), select(vec2<bool>(true, global0.d.x | arg_1.c.x), select(global0.c.xx, global0.c.zy, arg_1.d), vec2<bool>(global0.c.x || true, true)));
    global4 = array<vec3<i32>, 6>();
    return firstLeadingBit(_wgslsmith_add_vec4_u32(~vec4<u32>(~arg_2.a.x, arg_2.b, u_input.e, 104538u), vec4<u32>(7313u, _wgslsmith_clamp_u32(arg_2.a.x, u_input.e, u_input.e) ^ 4294967295u, 41443u, 18181u)));
}

fn func_1(arg_0: i32, arg_1: vec3<u32>, arg_2: vec4<f32>, arg_3: f32) -> vec2<f32> {
    let var_0 = Struct_1(vec3<u32>(~1u, ~(47869u & u_input.e), min(min(42064u, 21214u & u_input.e), 1u)), abs(_wgslsmith_dot_vec3_u32(arg_1, arg_1)), global0.c, vec3<bool>(true, _wgslsmith_f_op_f32(sign(arg_2.x)) > _wgslsmith_f_op_f32(2275f + _wgslsmith_div_f32(-896f, 992f)), (_wgslsmith_div_u32(23237u, 4294967295u) >= ~u_input.e) == (true && any(vec4<bool>(global0.d.x, false, false, global0.d.x)))));
    global3 = array<Struct_2, 21>();
    let var_1 = _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.x, 1u, 4294967295u, var_0.b), vec4<u32>(arg_1.x, 38248u, arg_1.x, var_0.b)), ~u_input.e, ~4294967295u, abs(45683u)), countOneBits(reverseBits(vec4<u32>(var_0.b, 24348u, u_input.e, 4294967295u)))), ~vec4<u32>(u_input.e, arg_1.x, 0u, 0u) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.a.x, 11157u, 108802u, arg_1.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.a.x, u_input.e, u_input.e, 5966u), vec4<u32>(arg_1.x, 28987u, 54415u, var_0.b), vec4<u32>(arg_1.x, 45534u, arg_1.x, 6774u))) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(abs(func_2(false, Struct_2(vec3<f32>(-1235f, 658f, arg_2.x), -1211f, vec3<bool>(global0.c.x, var_0.c.x, false), vec2<bool>(false, false)), Struct_1(vec3<u32>(arg_1.x, 22887u, var_0.a.x), 35455u, vec3<bool>(var_0.d.x, false, var_0.d.x), var_0.c))), _wgslsmith_mod_vec4_u32(vec4<u32>(var_0.a.x, arg_1.x, u_input.e, arg_1.x) ^ vec4<u32>(1u, 63277u, 26227u, 1u), vec4<u32>(2948u, var_0.b, arg_1.x, var_0.b)))) >> ((((vec4<u32>(37284u, var_0.a.x, 0u, 10576u) | ~vec4<u32>(65707u, arg_1.x, u_input.e, arg_1.x)) ^ firstTrailingBit(vec4<u32>(arg_1.x, 0u, var_0.a.x, var_0.b) | vec4<u32>(arg_1.x, var_0.a.x, 1u, var_0.a.x))) ^ (vec4<u32>(~var_0.b, ~5137u, arg_1.x & 4294967295u, 1u) << (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e, 0u, u_input.e, u_input.e), min(vec4<u32>(var_0.a.x, var_0.b, 4294967295u, var_0.a.x), vec4<u32>(var_0.a.x, 4294967295u, var_0.a.x, arg_1.x))) % vec4<u32>(32u)))) % vec4<u32>(32u));
    var var_2 = ~firstTrailingBit(~(~52162u));
    global2 = _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(~(-vec3<i32>(-1i, 2147483647i, u_input.a)), vec3<i32>(~_wgslsmith_clamp_i32(-1i, -53821i, -1i), -abs(-26637i), global2.x << (19258u % 32u))), global4[_wgslsmith_index_u32(4294967295u, 6u)]);
    return vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_2.x - arg_3))))), global0.a.x, all(select(var_0.c.zy, vec2<bool>(global0.d.x, false), true)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(arg_3)))));
}

fn func_4(arg_0: i32, arg_1: vec3<f32>, arg_2: vec2<f32>, arg_3: Struct_2) -> bool {
    let var_0 = global4[_wgslsmith_index_u32(~1u, 6u)];
    let var_1 = 58144u & u_input.e;
    global1 = array<Struct_2, 16>();
    global3 = array<Struct_2, 21>();
    var var_2 = -(_wgslsmith_add_i32(_wgslsmith_div_i32(-23863i | global2.x, _wgslsmith_clamp_i32(2147483647i, 59072i, -1i)), ~1i) << (var_1 % 32u));
    return global0.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~83053u;
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(global0.b, 935f)), 2102f, global0.b)), vec3<f32>(_wgslsmith_f_op_f32(global0.a.x * -888f), _wgslsmith_f_op_f32(min(118f, _wgslsmith_f_op_f32(global0.b + global0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x))), select(vec3<bool>(true, true, true), !vec3<bool>(false, false, global0.c.x), select(global0.c, global0.c, !global0.c.x)))), _wgslsmith_f_op_f32(global0.a.x - 888f), select(!select(vec3<bool>(global0.c.x, global0.c.x, global0.c.x), !global0.c, global0.c), global0.c, global0.c), vec2<bool>(global0.d.x != !(!global0.c.x), global0.c.x));
    var var_2 = global1[_wgslsmith_index_u32(u_input.e, 16u)];
    var var_3 = _wgslsmith_div_u32(max(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, u_input.e), _wgslsmith_div_vec2_u32(vec2<u32>(0u, u_input.e), vec2<u32>(1u, 4294967295u))) ^ 50151u, abs(countOneBits(~u_input.e))), u_input.e);
    var var_4 = vec2<bool>(func_4(1i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1827f, -548f, -1042f)), _wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_clamp_i32(min(global2.x, global2.x), u_input.a, _wgslsmith_add_i32(global2.x, u_input.c)), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.e, 0u), vec3<u32>(4294967295u, 28971u, u_input.e)) << (~vec3<u32>(29170u, 4294967295u, 1u) % vec3<u32>(32u)), vec4<f32>(_wgslsmith_f_op_f32(step(global0.b, global0.b)), -681f, var_1.b, var_1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1721f + -1000f)))), Struct_2(var_1.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-962f, 1189f)))), select(vec3<bool>(var_1.d.x, true, false), var_2.c, false), vec2<bool>(!var_2.c.x, true && global0.c.x))), all(global0.c.xy) || any(var_2.c));
    var var_5 = Struct_1(reverseBits(_wgslsmith_clamp_vec3_u32(func_2(var_2.d.x, global3[_wgslsmith_index_u32(u_input.e, 21u)], Struct_1(vec3<u32>(u_input.e, 106055u, 0u), u_input.e, vec3<bool>(false, false, global0.d.x), global0.c)).zzz << (vec3<u32>(u_input.e, 0u, 0u) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_div_u32(4294967295u, u_input.e), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, u_input.e, u_input.e, 0u), vec4<u32>(0u, u_input.e, 59969u, 4294967295u)), 117146u), vec3<u32>(1u, _wgslsmith_add_u32(2028u, u_input.e), u_input.e ^ u_input.e))), u_input.e, !vec3<bool>(global0.d.x, 1f > _wgslsmith_f_op_f32(sign(1231f)), global0.d.x), select(var_2.c, var_1.c, select(select(select(vec3<bool>(false, var_1.c.x, false), vec3<bool>(true, var_1.d.x, var_1.d.x), vec3<bool>(true, true, var_1.d.x)), select(vec3<bool>(global0.d.x, var_2.d.x, var_4.x), vec3<bool>(var_4.x, true, true), global0.c), select(vec3<bool>(true, true, false), var_1.c, vec3<bool>(false, true, var_2.c.x))), vec3<bool>(false, true, var_2.c.x), all(select(vec4<bool>(var_1.d.x, global0.c.x, true, true), vec4<bool>(global0.d.x, false, var_1.c.x, false), true)))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~(~abs(-11115i))));
}

