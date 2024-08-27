struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_2,
    c: u32,
    d: Struct_3,
    e: vec2<u32>,
}

struct Struct_5 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(61002u, Struct_1(321f, vec3<bool>(true, true, false), true), i32(-2147483648), Struct_1(178f, vec3<bool>(true, true, true), true)), Struct_2(19024u, Struct_1(-1132f, vec3<bool>(true, false, true), false), 1i, Struct_1(-1000f, vec3<bool>(false, false, false), true)), Struct_2(4294967295u, Struct_1(1392f, vec3<bool>(true, false, false), false), 31697i, Struct_1(479f, vec3<bool>(false, true, false), true)), Struct_2(0u, Struct_1(542f, vec3<bool>(true, false, true), true), 38673i, Struct_1(1074f, vec3<bool>(true, true, false), false)), Struct_2(13653u, Struct_1(-901f, vec3<bool>(true, false, false), true), -35078i, Struct_1(504f, vec3<bool>(true, false, true), false)), Struct_2(1u, Struct_1(-1811f, vec3<bool>(false, true, false), false), -108853i, Struct_1(-340f, vec3<bool>(false, false, false), false)), Struct_2(1u, Struct_1(-629f, vec3<bool>(false, false, false), true), 0i, Struct_1(-1000f, vec3<bool>(true, true, false), false)), Struct_2(61194u, Struct_1(871f, vec3<bool>(false, false, true), false), 2147483647i, Struct_1(-195f, vec3<bool>(false, false, false), false)), Struct_2(39720u, Struct_1(1184f, vec3<bool>(true, true, true), false), 0i, Struct_1(646f, vec3<bool>(true, false, true), false)), Struct_2(1u, Struct_1(-1838f, vec3<bool>(true, true, true), false), 2147483647i, Struct_1(-959f, vec3<bool>(true, false, true), true)), Struct_2(1u, Struct_1(-1432f, vec3<bool>(true, false, true), false), -89798i, Struct_1(-401f, vec3<bool>(true, false, true), true)), Struct_2(39516u, Struct_1(-1088f, vec3<bool>(false, true, false), false), -29948i, Struct_1(1997f, vec3<bool>(true, true, true), true)), Struct_2(0u, Struct_1(-2270f, vec3<bool>(false, true, false), true), -40371i, Struct_1(-1229f, vec3<bool>(true, true, true), false)), Struct_2(4294967295u, Struct_1(-536f, vec3<bool>(true, true, true), true), i32(-2147483648), Struct_1(-1735f, vec3<bool>(false, false, false), false)), Struct_2(9679u, Struct_1(1000f, vec3<bool>(false, false, true), true), -38020i, Struct_1(1176f, vec3<bool>(false, false, false), false)), Struct_2(6817u, Struct_1(-329f, vec3<bool>(true, false, false), false), -26081i, Struct_1(-725f, vec3<bool>(false, false, false), false)));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    global0 = array<Struct_2, 16>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1f))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-864f - -574f))))) * 1000f);
    var var_1 = Struct_5(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1000f - -1201f), _wgslsmith_div_f32(427f, 1628f))), -664f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-760f, -1000f))));
    global0 = array<Struct_2, 16>();
    global0 = array<Struct_2, 16>();
    return ~min(_wgslsmith_clamp_u32(1u, 0u, ~1u) ^ ~_wgslsmith_div_u32(26190u, 1u), 1u);
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(trunc(-333f));
    let var_1 = Struct_2(~func_3(), Struct_1(125f, vec3<bool>(true, true, true), true), max(~(-1i), i32(-1i) * -15859i), Struct_1(-266f, select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true), vec3<bool>(false, true, false), all(vec4<bool>(true, true, false, false)))), false));
    global0 = array<Struct_2, 16>();
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~reverseBits(~var_1.a), 1u), 16u)];
    let var_3 = ~17750i;
    return var_2.d;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<bool>, arg_2: f32) -> Struct_1 {
    global0 = array<Struct_2, 16>();
    global0 = array<Struct_2, 16>();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 16>();
    var var_0 = Struct_2(reverseBits(1u), Struct_1(1000f, !select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), all(vec4<bool>(true, false, true, true))), true), 2147483647i, func_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(480f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(362f, -967f))))), vec2<bool>(true, true), 610f));
    let var_1 = Struct_4(var_0.d.b.zx, Struct_2(~(var_0.a << (~var_0.a % 32u)), func_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.a, var_0.b.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(190f, var_0.b.a)), var_0.b.c)), !(!var_0.d.b.xy), var_0.b.a), _wgslsmith_div_i32(_wgslsmith_clamp_i32(~1i, -2147483647i, min(0i, 33445i)), var_0.c), func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.a, var_0.b.a) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1034f, var_0.b.a))), func_2().b.yx, 1068f)), var_0.a, Struct_3(select(func_1(vec2<f32>(-558f, var_0.d.a), var_0.d.b.xx, _wgslsmith_f_op_f32(var_0.d.a * var_0.d.a)).b.xx, vec2<bool>(true & var_0.d.b.x, true), vec2<bool>(true, var_0.d.b.x)), vec4<u32>(~select(0u, var_0.a, true), 28632u, var_0.a, ~var_0.a), Struct_2(~(var_0.a & 47945u), func_2(), 0i, var_0.d)), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(12031u, var_0.a), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.a, 34657u), vec2<u32>(var_0.a, 17673u), vec2<u32>(2342u, var_0.a))) << (abs(var_0.a) % 32u), _wgslsmith_mult_u32(1997u, 14701u)));
    let var_2 = vec3<bool>(!(!any(func_2().b)), false, func_2().c);
    var var_3 = vec2<bool>(_wgslsmith_sub_i32(-17310i, -var_0.c) > (0i | firstTrailingBit(-1i)), var_2.x);
    var_0 = Struct_2(_wgslsmith_dot_vec3_u32(var_1.d.b.xzw, _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, var_1.b.a, var_0.a), abs(var_1.d.b.zxw), var_1.d.b.xxw)), func_2(), var_1.d.c.c, Struct_1(_wgslsmith_f_op_f32(max(var_0.b.a, _wgslsmith_f_op_f32(1125f + var_0.b.a))), var_0.b.b, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(var_1.e, vec2<u32>(var_1.e.x, 57745u), var_1.e), select(var_1.d.b.zy, var_1.e, true)) >= var_0.a));
    var_0 = var_1.d.c;
    var var_4 = var_1.d.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c, var_1.d.c.d.a, select(~(0u & var_0.a), (var_0.a >> (var_1.e.x % 32u)) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a, var_0.a), var_1.e), _wgslsmith_f_op_f32(trunc(var_0.d.a)) > var_1.d.c.d.a) << ((_wgslsmith_dot_vec2_u32(var_1.e ^ vec2<u32>(var_0.a, 4294967295u), ~var_1.d.b.ww) << (45568u % 32u)) % 32u), abs(vec2<u32>(var_0.a, var_1.c)) << (~max(vec2<u32>(55759u, var_0.a), _wgslsmith_mult_vec2_u32(vec2<u32>(67316u, 4294967295u), vec2<u32>(105132u, var_1.c))) % vec2<u32>(32u)));
}

