struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: i32,
    d: u32,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: u32,
    c: Struct_3,
    d: i32,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: bool,
    c: Struct_2,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2) -> bool {
    var var_0 = arg_2.b.b.yx;
    var var_1 = reverseBits(vec3<u32>(_wgslsmith_sub_u32(~countOneBits(0u), 0u), 50406u, ~min(1u, _wgslsmith_div_u32(4294967295u, 13479u))));
    let var_2 = vec2<u32>(60853u, 4294967295u);
    let var_3 = ~_wgslsmith_div_u32(~min(4294967295u, var_2.x) & abs(var_2.x), 0u);
    var var_4 = reverseBits(44697u);
    return true;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<f32>) -> Struct_3 {
    return Struct_3(Struct_1(arg_1.zz, select(vec4<bool>(func_3(Struct_1(arg_1.yw, vec4<bool>(arg_0.x, true, false, true), u_input.a.zy, 4557i, -2147483647i), true, Struct_2(-1852f, Struct_1(vec2<f32>(144f, arg_1.x), vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), vec2<i32>(50994i, u_input.a.x), u_input.a.x, 1001i))), true, arg_0.x, true), !(!vec4<bool>(false, arg_0.x, false, false)), !select(vec4<bool>(arg_0.x, arg_0.x, true, false), vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), false)), vec2<i32>(-min(0i, u_input.a.x), 1i), min(-(~(-22334i)), abs(1i)), -26458i & _wgslsmith_sub_i32(1i & u_input.a.x, _wgslsmith_add_i32(u_input.a.x, u_input.a.x))), Struct_2(arg_1.x, Struct_1(_wgslsmith_f_op_vec2_f32(floor(arg_1.wz)), vec4<bool>(true, false, select(true, arg_0.x, arg_0.x), false | arg_0.x), vec2<i32>(u_input.a.x, _wgslsmith_mult_i32(u_input.a.x, u_input.a.x)), -(2147483647i & u_input.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, u_input.a.x), vec3<i32>(-10640i, -2147483647i, u_input.a.x)))), select(firstTrailingBit(u_input.a.x | ~u_input.a.x), -1134i, all(vec3<bool>(arg_0.x, false, false)) | (~u_input.a.x != u_input.a.x)), select(~_wgslsmith_sub_u32(14859u, min(39951u, 7238u)), select(~6763u, 1u, false) >> (~1u % 32u), !(true | arg_0.x) & any(vec3<bool>(true, arg_0.x, false))), Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(arg_1.yw, arg_1.xw))))), vec4<bool>(any(vec4<bool>(true, arg_0.x, arg_0.x, true)), arg_0.x, !arg_0.x | all(arg_0), false), vec2<i32>(41713i, u_input.a.x), u_input.a.x, ~(u_input.a.x << (1u % 32u))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3) -> Struct_5 {
    let var_0 = func_2(!select(arg_1.b.b.b.yx, arg_1.a.b.zy, select(vec2<bool>(arg_0.e.b.x, arg_1.e.b.x), arg_1.b.b.b.yz, true)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(980f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -108f))), arg_1.a.a.x, _wgslsmith_f_op_f32(arg_0.b.a * arg_1.a.a.x)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.e.a.x, arg_1.a.a.x, arg_1.e.a.x, -482f)), _wgslsmith_div_vec4_f32(vec4<f32>(-250f, arg_1.b.b.a.x, arg_0.b.a, arg_0.e.a.x), vec4<f32>(arg_1.b.b.a.x, arg_1.b.b.a.x, 1314f, arg_1.a.a.x)))))))).b;
    var var_1 = arg_0.a.b.zzw;
    let var_2 = !var_0.b.b;
    var_1 = !vec3<bool>(arg_0.e.b.x, any(arg_1.b.b.b) && func_3(func_2(vec2<bool>(false, var_1.x), vec4<f32>(arg_1.a.a.x, arg_1.e.a.x, arg_0.b.b.a.x, 571f)).b.b, true, Struct_2(arg_0.a.a.x, arg_1.a)), all(select(vec3<bool>(true, false, true), var_2.wzw, all(vec3<bool>(var_2.x, var_0.b.b.x, var_1.x)))));
    var_1 = select(arg_1.e.b.zxx, var_0.b.b.yzy, arg_0.b.b.b.xxw);
    return Struct_5(func_2(vec2<bool>(arg_1.a.b.x, all(arg_0.e.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 814f, -797f, _wgslsmith_f_op_f32(abs(var_0.b.a.x))))).b, true | all(arg_0.e.b), func_2(func_2(select(vec2<bool>(true, false), !arg_1.a.b.wx, arg_0.e.b.zz), vec4<f32>(_wgslsmith_f_op_f32(-arg_0.b.a), _wgslsmith_div_f32(-457f, var_0.b.a.x), -1839f, _wgslsmith_f_op_f32(select(-701f, 825f, true)))).a.b.xy, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1071f, -169f, arg_0.e.a.x, arg_1.b.a)) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.a.a.x, -495f, 1410f, var_0.a))))))).b, vec4<u32>(arg_1.d, reverseBits(1u >> (select(arg_0.d, 1791u, var_0.b.b.x) % 32u)), arg_0.d, 43319u));
}

fn func_5(arg_0: Struct_5, arg_1: bool) -> Struct_1 {
    let var_0 = true;
    var var_1 = func_2(arg_0.c.b.b.wx, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-func_4(Struct_3(arg_0.c.b, Struct_2(-1838f, arg_0.c.b), u_input.a.x, arg_0.d.x, Struct_1(vec2<f32>(arg_0.a.b.a.x, arg_0.a.a), vec4<bool>(arg_0.a.b.b.x, arg_0.b, arg_0.b, true), vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.x, u_input.a.x)), Struct_3(arg_0.c.b, Struct_2(1000f, arg_0.c.b), u_input.a.x, arg_0.d.x, arg_0.a.b)).c.b.a.x), arg_0.a.b.a.x, arg_0.a.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-1658f, arg_0.c.b.a.x, true)), -812f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_0.a.b.a.x)), arg_0.c.b.a.x, _wgslsmith_f_op_f32(f32(-1f) * -199f), 543f))));
    var var_2 = vec2<bool>(!var_1.b.b.b.x, true);
    var var_3 = func_4(func_2(select(var_1.e.b.yw, vec2<bool>(true, var_0 | false), any(arg_0.c.b.b) || (arg_0.a.b.b.x | false)), vec4<f32>(func_4(func_2(var_1.e.b.yx, vec4<f32>(arg_0.a.a, -1000f, var_1.b.a, 722f)), Struct_3(var_1.a, var_1.b, -63117i, 25461u, var_1.a)).a.b.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(arg_0.c.a)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-1676f)), _wgslsmith_f_op_f32(arg_0.c.a * -803f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -877f)))), func_2(!vec2<bool>(var_2.x && var_2.x, !var_0), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.a, -209f, -1000f, 521f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(134f, var_1.b.b.a.x, 160f, arg_0.a.a)), true))));
    let var_4 = any(!vec2<bool>(true, all(vec2<bool>(false, false)) || var_1.b.b.b.x));
    return var_1.a;
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: u32, arg_3: f32) -> i32 {
    var var_0 = Struct_3(arg_0.b, Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) - -1561f), 1000f)), func_5(func_4(func_2(vec2<bool>(true, arg_0.b.b.x), vec4<f32>(arg_0.b.a.x, 498f, -145f, arg_3)), Struct_3(Struct_1(vec2<f32>(871f, arg_0.a), arg_0.b.b, vec2<i32>(arg_0.b.e, -27986i), u_input.a.x, 40985i), Struct_2(arg_3, arg_0.b), -13057i, arg_2, arg_0.b)), false)), arg_0.b.d, _wgslsmith_sub_u32(~func_4(func_2(arg_0.b.b.yy, vec4<f32>(arg_3, 1000f, arg_0.a, -1099f)), func_2(arg_0.b.b.zx, vec4<f32>(-928f, arg_3, -572f, arg_0.b.a.x))).d.x, _wgslsmith_div_u32(_wgslsmith_div_u32(35709u, func_2(arg_0.b.b.yy, vec4<f32>(arg_0.a, arg_0.a, 654f, 172f)).d), _wgslsmith_dot_vec3_u32(~vec3<u32>(27524u, 1301u, 4294967295u), _wgslsmith_add_vec3_u32(vec3<u32>(arg_1, 6655u, 0u), vec3<u32>(25938u, arg_1, arg_1))))), Struct_1(arg_0.b.a, !vec4<bool>(arg_0.b.b.x, arg_0.b.b.x, arg_0.b.b.x | arg_0.b.b.x, func_2(vec2<bool>(true, arg_0.b.b.x), vec4<f32>(-291f, -695f, -902f, arg_3)).b.b.b.x), abs(~arg_0.b.c), max(arg_0.b.e, u_input.a.x), ~(~0i)));
    var_0 = func_2(select(func_4(Struct_3(func_4(Struct_3(Struct_1(vec2<f32>(arg_0.a, -562f), arg_0.b.b, vec2<i32>(1i, arg_0.b.e), var_0.c, 7442i), var_0.b, 0i, 1u, Struct_1(var_0.b.b.a, vec4<bool>(true, var_0.a.b.x, arg_0.b.b.x, arg_0.b.b.x), vec2<i32>(-32795i, 6736i), arg_0.b.d, 17923i)), Struct_3(Struct_1(vec2<f32>(arg_0.a, arg_3), var_0.e.b, vec2<i32>(var_0.e.d, -43727i), 2147483647i, -19520i), var_0.b, -1i, arg_2, arg_0.b)).c.b, arg_0, abs(u_input.a.x), abs(100656u), func_2(var_0.e.b.yx, vec4<f32>(-1205f, 155f, -1000f, -321f)).b.b), Struct_3(Struct_1(var_0.a.a, var_0.e.b, vec2<i32>(-28432i, 27650i), -2147483647i, var_0.e.c.x), Struct_2(arg_0.a, arg_0.b), 2147483647i, ~20151u, Struct_1(arg_0.b.a, arg_0.b.b, vec2<i32>(2147483647i, u_input.a.x), arg_0.b.e, 11100i))).a.b.b.yx, !arg_0.b.b.xz, all(!select(vec3<bool>(true, false, true), var_0.e.b.zww, var_0.b.b.b.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-467f, arg_3, -637f, 531f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-961f, 1017f, var_0.e.a.x, 655f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1319f, 1196f, -1000f, arg_0.a) * vec4<f32>(-492f, 543f, 647f, arg_3)), !vec4<bool>(var_0.e.b.x, true, true, false)))))));
    var_0 = func_2(var_0.a.b.zy, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.e.a.x, -1350f, arg_0.b.a.x, -168f), vec4<f32>(-274f, -545f, 1441f, 236f)) * vec4<f32>(-1885f, -125f, arg_3, arg_3)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1012f, var_0.a.a.x, -1578f, arg_3))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1248f, -965f, arg_0.b.a.x, arg_0.a)))))) * vec4<f32>(_wgslsmith_f_op_f32(-1399f - _wgslsmith_f_op_f32(select(arg_3, -223f, var_0.b.b.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)), _wgslsmith_f_op_f32(-var_0.e.a.x), _wgslsmith_f_op_f32(func_5(Struct_5(arg_0, true, Struct_2(arg_3, var_0.b.b), vec4<u32>(1u, 1u, 5759u, 30647u)), var_0.b.b.b.x).a.x * -630f))));
    let var_1 = vec2<u32>(var_0.d ^ ~_wgslsmith_div_u32(1u, arg_1 ^ arg_1), _wgslsmith_mult_u32(~(~45009u), ~4294967295u));
    var var_2 = func_4(Struct_3(var_0.b.b, Struct_2(-148f, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3, -242f)), var_0.a.b, abs(vec2<i32>(arg_0.b.c.x, 1i)), var_0.a.c.x, u_input.a.x ^ arg_0.b.c.x)), var_0.e.e, ~arg_1, arg_0.b), func_2(vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 428f, arg_0.a, var_0.e.a.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, arg_3, 242f, -494f))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -251f), _wgslsmith_f_op_f32(1000f + arg_0.a), _wgslsmith_div_f32(arg_0.b.a.x, arg_0.b.a.x), _wgslsmith_f_op_f32(1937f * -420f)))));
    return -_wgslsmith_div_i32(firstTrailingBit(~firstLeadingBit(1i)), -_wgslsmith_dot_vec2_i32(var_2.a.b.c, ~vec2<i32>(0i, 2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(-_wgslsmith_sub_i32(func_1(Struct_2(1098f, Struct_1(vec2<f32>(320f, -473f), vec4<bool>(false, false, true, true), vec2<i32>(u_input.a.x, 1i), u_input.a.x, u_input.a.x)), _wgslsmith_mod_u32(1u, 5744u), 1u, _wgslsmith_f_op_f32(max(-1080f, 1063f))), -52301i), _wgslsmith_add_i32(~(~1i), firstLeadingBit(u_input.a.x)), u_input.a.x & u_input.a.x);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-460f, 438f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2523f, 1000f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(281f, 718f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1677f, 304f)))), !(!any(vec4<bool>(true, false, true, false))))) + _wgslsmith_div_vec2_f32(func_5(Struct_5(func_4(Struct_3(Struct_1(vec2<f32>(1114f, -337f), vec4<bool>(true, false, false, false), vec2<i32>(var_0.x, 0i), var_0.x, u_input.a.x), Struct_2(-737f, Struct_1(vec2<f32>(-1100f, 105f), vec4<bool>(false, false, false, true), vec2<i32>(u_input.a.x, 0i), u_input.a.x, u_input.a.x)), var_0.x, 74333u, Struct_1(vec2<f32>(-2937f, -1100f), vec4<bool>(true, true, true, false), u_input.a.zx, u_input.a.x, var_0.x)), Struct_3(Struct_1(vec2<f32>(2003f, 2239f), vec4<bool>(true, true, true, false), u_input.a.yy, u_input.a.x, 2147483647i), Struct_2(-1278f, Struct_1(vec2<f32>(-901f, -933f), vec4<bool>(true, false, false, true), var_0.xx, u_input.a.x, u_input.a.x)), u_input.a.x, 11227u, Struct_1(vec2<f32>(-285f, -942f), vec4<bool>(false, true, false, true), vec2<i32>(var_0.x, u_input.a.x), var_0.x, 2147483647i))).c, select(false, false, false), Struct_2(-1000f, Struct_1(vec2<f32>(680f, 1386f), vec4<bool>(true, false, true, true), vec2<i32>(-4721i, var_0.x), 2147483647i, 15258i)), ~vec4<u32>(1u, 0u, 98911u, 60831u)), func_4(func_2(vec2<bool>(true, false), vec4<f32>(1373f, -1378f, -1000f, -199f)), Struct_3(Struct_1(vec2<f32>(886f, 831f), vec4<bool>(false, false, false, false), var_0.xz, u_input.a.x, var_0.x), Struct_2(372f, Struct_1(vec2<f32>(977f, 663f), vec4<bool>(false, true, true, false), vec2<i32>(0i, u_input.a.x), -281i, 2147483647i)), u_input.a.x, 17165u, Struct_1(vec2<f32>(-272f, -241f), vec4<bool>(false, true, false, false), vec2<i32>(u_input.a.x, var_0.x), var_0.x, -1i))).c.b.b.x).a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(vec2<bool>(true, false), vec4<f32>(329f, 1104f, 1922f, -307f)).b.b.a + vec2<f32>(358f, 136f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -264f) - _wgslsmith_f_op_f32(abs(1138f)))))), var_0.x | abs(~var_0.x), _wgslsmith_div_f32(func_4(Struct_3(Struct_1(var_1, vec4<bool>(false, false, true, false), u_input.a.xy, var_0.x, -1i), func_4(Struct_3(Struct_1(vec2<f32>(1000f, 1340f), vec4<bool>(true, false, true, false), u_input.a.zw, -1i, -31150i), Struct_2(278f, Struct_1(vec2<f32>(var_1.x, var_1.x), vec4<bool>(true, true, false, true), vec2<i32>(32465i, u_input.a.x), u_input.a.x, -1i)), var_0.x, 4364u, Struct_1(vec2<f32>(var_1.x, var_1.x), vec4<bool>(true, true, false, false), u_input.a.yz, u_input.a.x, u_input.a.x)), Struct_3(Struct_1(vec2<f32>(var_1.x, 829f), vec4<bool>(true, false, true, false), vec2<i32>(-2147483647i, 41997i), u_input.a.x, 0i), Struct_2(834f, Struct_1(var_1, vec4<bool>(true, true, false, false), var_0.xx, u_input.a.x, u_input.a.x)), 1540i, 59916u, Struct_1(vec2<f32>(var_1.x, var_1.x), vec4<bool>(true, false, true, true), u_input.a.ww, -2147483647i, -19335i))).a, -2147483647i, select(74178u, 46868u, false), Struct_1(vec2<f32>(-1000f, -927f), vec4<bool>(false, true, true, true), vec2<i32>(-5578i, var_0.x), -2147483647i, var_0.x)), func_2(vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(638f, -1000f, -129f, var_1.x)))).a.b.a.x, 209f));
}

