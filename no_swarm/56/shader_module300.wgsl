struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> bool {
    let var_0 = ~(~u_input.b.yz >> (vec2<u32>(_wgslsmith_mult_u32(1u, 0u), u_input.b.x) % vec2<u32>(32u)));
    let var_1 = _wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-6056i, 2147483647i), max(vec2<i32>(68682i, 21407i), vec2<i32>(-2147483647i, 35314i))), reverseBits(1i), min(1i, 28627i))), abs(_wgslsmith_clamp_vec3_i32(~firstLeadingBit(vec3<i32>(39826i, 34139i, -45067i)), -vec3<i32>(-20246i, -28949i, 0i), firstLeadingBit(vec3<i32>(-1i, 13309i, 1i)) | (vec3<i32>(51167i, -1i, 1087i) << (u_input.b.zzz % vec3<u32>(32u))))));
    let var_2 = -40609i;
    var var_3 = (~(~(~u_input.a.x)) ^ firstLeadingBit(u_input.a.x)) ^ var_0.x;
    var_3 = ~0u;
    return !all(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false), vec3<bool>(true, false, false), all(vec2<bool>(true, true)))) != ((var_2 < _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(var_1.xx, vec2<i32>(33566i, var_2)), -13040i)) | all(select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, false, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true)))));
}

fn func_2(arg_0: f32) -> Struct_3 {
    let var_0 = Struct_2(Struct_1(u_input.a.x), !func_3(), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(arg_0)), _wgslsmith_f_op_f32(max(314f, -878f)), 1091f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0, -462f, arg_0), vec3<f32>(arg_0, -990f, -1121f))))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, arg_0)), arg_0, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0 + 826f))))));
    let var_1 = select(-vec3<i32>(1i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(-30205i, -17680i, -2147483647i, 1i), vec4<i32>(-1i, 19449i, -21511i, -1i)), -_wgslsmith_add_i32(-2147483647i, 52895i)), max(vec3<i32>(-2147483647i, 1i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(-5711i, -43370i, -12585i, -2147483647i), vec4<i32>(8685i, -2904i, -48231i, -60236i)), _wgslsmith_dot_vec2_i32(select(vec2<i32>(39733i, 0i), vec2<i32>(-12245i, 2147483647i), vec2<bool>(var_0.b, false)), vec2<i32>(1i, 1i))), vec3<i32>(-45779i, 1i, 1i) | vec3<i32>(~0i, 0i, _wgslsmith_dot_vec3_i32(vec3<i32>(69504i, -10186i, 0i), vec3<i32>(-1i, 13294i, -12661i)))), !any(vec3<bool>(true, true, true)) | true);
    let var_2 = var_1.x;
    let var_3 = Struct_2(var_0.a, true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0, _wgslsmith_f_op_f32(exp2(var_0.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -1014f))))));
    var var_4 = 9002i;
    return Struct_3(select(vec3<bool>(firstLeadingBit(0i) <= _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, 0i, var_2, 1i), vec4<i32>(2147483647i, var_1.x, 111i, var_1.x)), var_0.b, true), select(!vec3<bool>(var_0.b, false, var_0.b), vec3<bool>(true, func_3(), !var_0.b), any(!vec4<bool>(var_0.b, false, true, var_3.b))), !all(vec2<bool>(true, var_3.b))));
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: i32, arg_3: Struct_3) -> i32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2967f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2573f)), -145f)));
    var var_1 = Struct_2(Struct_1(~46929u), arg_3.a.x, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(trunc(var_0.x))), 1167f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1017f)))));
    let var_2 = 1u;
    var var_3 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -257f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.c.x + _wgslsmith_f_op_f32(ceil(470f))), var_0.x), _wgslsmith_f_op_f32(-var_0.x), -631f)));
    var var_4 = Struct_3(vec3<bool>(any(arg_1.a), !(var_3.x == _wgslsmith_f_op_f32(var_0.x - var_1.c.x)), (var_1.a.a <= 1u) & any(select(vec4<bool>(true, arg_3.a.x, false, arg_0), vec4<bool>(arg_3.a.x, arg_3.a.x, arg_0, true), false))));
    return countOneBits(abs(arg_2));
}

fn func_5(arg_0: i32, arg_1: bool) -> Struct_4 {
    var var_0 = Struct_4(Struct_1(~((u_input.a.x << (97320u % 32u)) >> (~u_input.d % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1728f)))), ~(-arg_0), Struct_2(Struct_1(abs(u_input.c)), any(vec4<bool>(true, true, true, true)), vec3<f32>(-572f, 1282f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -853f) - -752f))));
    let var_1 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.b - -748f))), _wgslsmith_f_op_f32(var_0.d.c.x + var_0.b), any(!vec4<bool>(var_0.d.b, false, arg_1, var_0.d.b)))) + -1000f));
    var_0 = Struct_4(Struct_1(20059u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-618f))) - _wgslsmith_f_op_f32(-1290f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d.c.x + -184f) * 412f))), -1i, var_0.d);
    let var_2 = _wgslsmith_f_op_f32(floor(-232f));
    var_0 = Struct_4(var_0.a, var_2, select(~(arg_0 >> (u_input.b.x % 32u)), -var_0.c, true), Struct_2(Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 57004u, 133628u, 0u), max(u_input.b, u_input.b))), true, vec3<f32>(2140f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d.c.x * var_0.d.c.x) - _wgslsmith_f_op_f32(f32(-1f) * -142f)), _wgslsmith_f_op_f32(ceil(-1425f)))));
    return Struct_4(var_0.d.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)))), _wgslsmith_mult_i32(49926i << (1u % 32u), -abs(arg_0)) >> (var_0.a.a % 32u), var_0.d);
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: u32, arg_3: vec4<f32>) -> Struct_3 {
    let var_0 = _wgslsmith_add_vec2_u32(~(~u_input.a.xy & max(vec2<u32>(u_input.d, 55200u), vec2<u32>(arg_2, 38164u))), _wgslsmith_add_vec2_u32(select(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_2, u_input.a.x), vec2<u32>(arg_2, u_input.a.x)), ~vec2<u32>(35712u, 1u), arg_0 == -1i), ~u_input.a.yy)) & u_input.a.yx;
    let var_1 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_3.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(107f))), !arg_1)), arg_3.x, 810f, _wgslsmith_f_op_f32(f32(-1f) * -1600f))));
    var var_2 = func_5(-func_4(all(select(vec2<bool>(true, false), vec2<bool>(false, false), arg_1)), Struct_3(!vec3<bool>(false, arg_1, arg_1)), arg_0, func_2(1090f)), !(!(var_1.x != -294f)));
    var_2 = Struct_4(var_2.d.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-703f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_2.b, 1000f)) + _wgslsmith_div_f32(-749f, var_2.d.c.x))))), reverseBits(var_2.c), Struct_2(var_2.a, true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-492f, arg_3.x, 975f)) + vec3<f32>(349f, -229f, var_1.x)))));
    let var_3 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1058f, -914f, arg_3.x)), var_2.d.c));
    return Struct_3(!(!(!select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(false, false, true), vec3<bool>(true, true, true)))));
}

fn func_6(arg_0: i32, arg_1: Struct_3, arg_2: bool, arg_3: u32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-722f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-697f, 619f) - _wgslsmith_f_op_f32(abs(-182f))) * -292f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-1115f, 518f, arg_2)))))), -465f) * vec4<f32>(-547f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(-6266i, false).d.c.x + _wgslsmith_f_op_f32(-1000f + -544f))), 1f, _wgslsmith_f_op_f32(-func_5(arg_0, false).d.c.x)));
    let var_1 = select(!(!(!vec4<bool>(false, arg_2, true, true))), !vec4<bool>((arg_0 >> (arg_3 % 32u)) >= 0i, _wgslsmith_f_op_f32(select(-817f, var_0.x, arg_2)) == var_0.x, ~arg_3 < u_input.d, true), select(!select(!vec4<bool>(arg_1.a.x, true, arg_1.a.x, arg_1.a.x), !vec4<bool>(arg_1.a.x, true, arg_2, arg_1.a.x), func_1(31980i, arg_2, 21077u, var_0).a.x), vec4<bool>(abs(arg_0) >= (arg_0 ^ 19634i), any(!vec2<bool>(arg_1.a.x, arg_2)), arg_1.a.x, !(arg_3 >= 4294967295u)), select(vec4<bool>(4294967295u > arg_3, true, arg_2, false), select(vec4<bool>(false, arg_1.a.x, arg_2, arg_2), select(vec4<bool>(arg_2, true, true, arg_1.a.x), vec4<bool>(true, true, arg_1.a.x, arg_1.a.x), arg_2), select(vec4<bool>(true, arg_1.a.x, arg_2, arg_2), vec4<bool>(false, true, false, arg_1.a.x), vec4<bool>(false, arg_1.a.x, true, false))), select(select(vec4<bool>(true, arg_1.a.x, arg_1.a.x, true), vec4<bool>(true, arg_1.a.x, arg_1.a.x, true), vec4<bool>(false, false, arg_1.a.x, true)), !vec4<bool>(arg_1.a.x, arg_1.a.x, true, arg_2), vec4<bool>(arg_1.a.x, arg_2, arg_1.a.x, true)))));
    let var_2 = Struct_4(func_5(arg_0, var_1.x).d.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.x))) - func_5(arg_0, true).b) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.x))) + var_0.x)), _wgslsmith_div_i32(22562i, _wgslsmith_mult_i32(~(-arg_0), abs(_wgslsmith_mod_i32(arg_0, 19078i)))), func_5(-40861i, var_1.x & func_1(-62445i, arg_1.a.x, ~u_input.b.x, _wgslsmith_f_op_vec4_f32(var_0 * vec4<f32>(-412f, -306f, 711f, 1888f))).a.x).d);
    let var_3 = arg_0;
    var var_4 = _wgslsmith_f_op_f32(f32(-1f) * -501f);
    return abs(_wgslsmith_dot_vec2_u32(u_input.a.yy, ~vec2<u32>(_wgslsmith_clamp_u32(u_input.b.x, u_input.a.x, 42199u), firstLeadingBit(arg_3))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(reverseBits(_wgslsmith_add_u32(2968u, func_6(i32(-1i) * -6761i, func_1(0i, true, 0u, vec4<f32>(-962f, 192f, -432f, -579f)), false, ~u_input.d))));
    var_0 = Struct_1(_wgslsmith_clamp_u32(min(_wgslsmith_dot_vec4_u32(u_input.b, abs(u_input.b)), ~10365u), ~98308u, 4294967295u));
    var_0 = Struct_1(~(~(~min(u_input.b.x, var_0.a))));
    var_0 = func_5(-11522i, all(vec2<bool>(select(false, true, false), select(true, true, true))) | false).a;
    let var_1 = ~(~u_input.b.xz);
    let var_2 = ~(~_wgslsmith_sub_u32(_wgslsmith_add_u32(1u, 1u), min(1u, 4294967295u)));
    var var_3 = firstLeadingBit(~u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(1i, -2147483647i, -1i)), abs(vec3<i32>(41969i, -54576i, 1888i)) ^ firstTrailingBit(vec3<i32>(-2147483647i, 1i, -2147483647i))), -1i), ~min(abs(vec3<i32>(0i, -1i, -2147483647i)), select(vec3<i32>(0i, 8481i, -2147483647i), vec3<i32>(-10724i, -1i, 30392i), vec3<bool>(false, false, false))) | _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(2718i, -2758i, 12180i), _wgslsmith_div_vec3_i32(vec3<i32>(0i, -20696i, -15368i), vec3<i32>(36739i, 5515i, 1i))), _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, -16355i, -8949i), firstTrailingBit(vec3<i32>(5896i, 22881i, 56123i)))), vec2<u32>(~firstTrailingBit(abs(u_input.d)), ~(~u_input.c)), ~(~(-vec4<i32>(-13919i, 26739i, 864i, 1i))), ~(-firstTrailingBit(~vec4<i32>(30466i, 36352i, 1i, -1i))));
}

