struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: vec3<bool>,
    d: vec4<f32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
    d: vec2<bool>,
}

struct Struct_5 {
    a: bool,
    b: vec3<bool>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 21>;

var<private> global1: vec2<f32> = vec2<f32>(235f, 473f);

var<private> global2: u32 = 1u;

var<private> global3: Struct_5;

var<private> global4: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec3<bool>(false, false, false), vec2<bool>(false, false), vec3<bool>(false, false, false), vec4<f32>(-499f, -1108f, 2301f, 326f), vec2<i32>(20638i, -15071i)), Struct_1(vec3<bool>(false, false, true), vec2<bool>(true, true), vec3<bool>(true, false, true), vec4<f32>(-479f, 222f, 569f, 226f), vec2<i32>(0i, 1i)), Struct_1(vec3<bool>(false, false, true), vec2<bool>(true, false), vec3<bool>(false, false, false), vec4<f32>(-206f, -706f, 151f, -526f), vec2<i32>(2147483647i, -18818i)), Struct_1(vec3<bool>(false, true, false), vec2<bool>(false, false), vec3<bool>(false, true, false), vec4<f32>(-1059f, -862f, 475f, -1555f), vec2<i32>(0i, i32(-2147483648))), Struct_1(vec3<bool>(false, false, true), vec2<bool>(false, true), vec3<bool>(true, false, true), vec4<f32>(-579f, 462f, -1621f, -1280f), vec2<i32>(i32(-2147483648), -1i)), Struct_1(vec3<bool>(true, true, true), vec2<bool>(false, true), vec3<bool>(false, false, false), vec4<f32>(-218f, 326f, 916f, 678f), vec2<i32>(-92719i, i32(-2147483648))), Struct_1(vec3<bool>(false, true, true), vec2<bool>(false, true), vec3<bool>(true, true, true), vec4<f32>(-439f, -1529f, -1036f, -1474f), vec2<i32>(2147483647i, -33863i)), Struct_1(vec3<bool>(false, true, true), vec2<bool>(false, true), vec3<bool>(false, true, true), vec4<f32>(-1503f, 147f, -1000f, -519f), vec2<i32>(0i, -1008i)), Struct_1(vec3<bool>(false, true, false), vec2<bool>(false, false), vec3<bool>(true, true, false), vec4<f32>(730f, 532f, -890f, -793f), vec2<i32>(46689i, -50487i)), Struct_1(vec3<bool>(false, false, false), vec2<bool>(true, true), vec3<bool>(true, false, false), vec4<f32>(-209f, 741f, -2464f, -168f), vec2<i32>(2147483647i, -10212i)), Struct_1(vec3<bool>(false, true, false), vec2<bool>(true, true), vec3<bool>(false, false, false), vec4<f32>(355f, -706f, -1000f, -129f), vec2<i32>(58093i, -56112i)), Struct_1(vec3<bool>(true, true, true), vec2<bool>(true, true), vec3<bool>(false, false, false), vec4<f32>(1050f, 359f, -591f, 2958f), vec2<i32>(-49969i, 1i)), Struct_1(vec3<bool>(true, false, false), vec2<bool>(false, true), vec3<bool>(true, true, false), vec4<f32>(229f, -277f, 435f, -1020f), vec2<i32>(1i, 0i)), Struct_1(vec3<bool>(true, true, false), vec2<bool>(true, false), vec3<bool>(true, true, false), vec4<f32>(-464f, -782f, -1000f, -234f), vec2<i32>(1i, 1i)), Struct_1(vec3<bool>(true, false, true), vec2<bool>(false, true), vec3<bool>(true, true, false), vec4<f32>(1294f, -2744f, 126f, -1533f), vec2<i32>(-39890i, -12057i)), Struct_1(vec3<bool>(true, false, false), vec2<bool>(false, false), vec3<bool>(false, true, true), vec4<f32>(956f, 668f, -1313f, -227f), vec2<i32>(1i, 3153i)), Struct_1(vec3<bool>(false, false, true), vec2<bool>(true, false), vec3<bool>(false, false, true), vec4<f32>(-864f, -1000f, -335f, -456f), vec2<i32>(0i, 2888i)), Struct_1(vec3<bool>(false, false, true), vec2<bool>(true, false), vec3<bool>(true, true, true), vec4<f32>(-1091f, 761f, -508f, 509f), vec2<i32>(-75926i, 11783i)), Struct_1(vec3<bool>(false, false, false), vec2<bool>(false, true), vec3<bool>(true, true, true), vec4<f32>(2189f, -420f, 686f, -244f), vec2<i32>(19779i, -7482i)), Struct_1(vec3<bool>(false, true, false), vec2<bool>(true, true), vec3<bool>(false, false, true), vec4<f32>(-1105f, -1639f, 1511f, 940f), vec2<i32>(-12653i, 0i)), Struct_1(vec3<bool>(false, false, false), vec2<bool>(false, true), vec3<bool>(false, false, true), vec4<f32>(855f, 770f, 1122f, 341f), vec2<i32>(14608i, -1i)), Struct_1(vec3<bool>(true, true, true), vec2<bool>(false, false), vec3<bool>(true, true, false), vec4<f32>(774f, -922f, -1704f, 350f), vec2<i32>(-1i, -32135i)), Struct_1(vec3<bool>(false, false, false), vec2<bool>(true, true), vec3<bool>(true, false, false), vec4<f32>(836f, 1298f, -248f, 851f), vec2<i32>(2147483647i, 1i)), Struct_1(vec3<bool>(false, false, false), vec2<bool>(false, true), vec3<bool>(true, true, false), vec4<f32>(540f, -201f, -298f, 559f), vec2<i32>(-1i, i32(-2147483648))), Struct_1(vec3<bool>(true, false, false), vec2<bool>(false, true), vec3<bool>(true, true, true), vec4<f32>(-549f, 119f, -545f, -1445f), vec2<i32>(377i, 41185i)), Struct_1(vec3<bool>(false, false, true), vec2<bool>(true, true), vec3<bool>(true, true, false), vec4<f32>(1000f, -522f, -1385f, -983f), vec2<i32>(i32(-2147483648), 0i)), Struct_1(vec3<bool>(true, true, false), vec2<bool>(true, false), vec3<bool>(true, true, true), vec4<f32>(-1000f, 810f, -1000f, -157f), vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_1(vec3<bool>(false, true, true), vec2<bool>(false, true), vec3<bool>(false, true, true), vec4<f32>(1755f, 2881f, -659f, 1278f), vec2<i32>(i32(-2147483648), 18288i)), Struct_1(vec3<bool>(true, true, true), vec2<bool>(false, false), vec3<bool>(false, false, true), vec4<f32>(371f, -785f, 922f, 1540f), vec2<i32>(i32(-2147483648), 0i)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_5(global3.c.b.a.x || true, global3.b, global3.c);
    var var_1 = Struct_5(true, vec3<bool>(true, var_0.c.b.c.x, global3.a), Struct_3(-24410i, global4[_wgslsmith_index_u32(u_input.a.x, 29u)], Struct_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.c.b.d.x))), var_0.c.d.b), Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1080f))), var_0.c.c.b)));
    var_0 = Struct_5(false, global3.c.b.a, var_0.c);
    global0 = array<vec4<f32>, 21>();
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.c.b.d.yx), vec2<f32>(-739f, 371f));
    return var_0.c.c;
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: vec2<bool>, arg_3: bool) -> vec3<bool> {
    global3 = Struct_5(any(!vec4<bool>(false, -1i < arg_1, !global3.c.b.b.x, true)), vec3<bool>(arg_3, true, all(!(!vec3<bool>(global3.a, global3.b.x, arg_2.x)))), global3.c);
    return vec3<bool>(false, all(select(vec4<bool>(global3.c.a != u_input.c.x, arg_3, false & arg_2.x, true), vec4<bool>(true, true, true, arg_2.x), select(select(vec4<bool>(true, true, true, arg_3), vec4<bool>(true, true, global3.b.x, false), vec4<bool>(true, arg_2.x, false, true)), vec4<bool>(false, arg_2.x, true, false), false))), arg_2.x);
}

fn func_4(arg_0: Struct_4, arg_1: u32, arg_2: f32) -> u32 {
    global0 = array<vec4<f32>, 21>();
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-func_2().a), _wgslsmith_f_op_f32(202f - -1326f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-335f, _wgslsmith_f_op_f32(trunc(arg_2))) + _wgslsmith_f_op_f32(ceil(arg_0.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2579f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(arg_0.b.d * _wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(arg_0.a.b.x, 21u)] * global3.c.b.d))))));
    var var_1 = global3.c.d;
    let var_2 = var_1.b.xzw;
    var_1 = arg_0.a;
    return arg_0.a.b.x;
}

fn func_1(arg_0: bool) -> StorageBuffer {
    let var_0 = func_2();
    let var_1 = _wgslsmith_add_u32(func_4(Struct_4(global3.c.d, Struct_1(!global3.c.b.c, global3.c.b.a.xy, func_3(Struct_2(var_0.a, vec4<u32>(0u, 38255u, global3.c.c.b.x, 4294967295u)), -1i, vec2<bool>(arg_0, true), arg_0), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 185f, global1.x, 1339f) * global3.c.b.d), u_input.c.zx), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a + global1.x)), vec2<bool>(arg_0, false)), u_input.a.x, global1.x), u_input.a.x);
    global3 = Struct_5(false & !(_wgslsmith_f_op_f32(step(global1.x, -1871f)) == _wgslsmith_f_op_f32(select(var_0.a, var_0.a, false))), func_3(Struct_2(global1.x, select(vec4<u32>(0u, var_1, 7637u, 56061u), ~var_0.b, !arg_0)), u_input.c.x, vec2<bool>(true, 14079u >= ~u_input.a.x), !any(vec2<bool>(true, arg_0))), global3.c);
    let var_2 = _wgslsmith_dot_vec2_u32(~(~global3.c.d.b.wx), global3.c.c.b.xw);
    let var_3 = select(!(u_input.b.x <= -_wgslsmith_mod_i32(global3.c.a, global3.c.b.e.x)), false, false);
    return StorageBuffer(~max(4294967295u, 0u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(1u);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global3.c.b.d.yy - vec2<f32>(-144f, -909f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global3.c.d.a, global3.c.c.a), vec2<f32>(global3.c.b.d.x, global1.x))))) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(global3.c.b.d.yx)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global3.c.b.d.yz + vec2<f32>(global3.c.c.a, -461f)))))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-224f * -1720f)) + var_1.x));
    var var_3 = Struct_2(var_1.x, reverseBits(~vec4<u32>(global3.c.c.b.x, 1u, u_input.a.x, 4294967295u) & vec4<u32>(4294967295u, _wgslsmith_div_u32(u_input.a.x, global3.c.c.b.x), firstTrailingBit(global3.c.d.b.x), reverseBits(0u))));
    let var_4 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-512f, global1.x))), global3.c.b.d.zw, any(vec4<bool>(true, _wgslsmith_f_op_f32(-var_1.x) >= -153f, all(select(global3.b.xz, vec2<bool>(global3.a, true), global3.c.b.b)), global3.a))));
    let x = u_input.a;
    s_output = func_1(false);
}

