struct Struct_1 {
    a: bool,
    b: f32,
    c: bool,
    d: vec2<u32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec2<u32>,
    d: u32,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec3<i32>) -> vec3<u32> {
    let var_0 = vec4<bool>(true, true, true, true);
    return select(firstLeadingBit(reverseBits(vec3<u32>(u_input.c, 4294967295u, u_input.c) ^ vec3<u32>(41469u, u_input.a, 0u))) >> (countOneBits(abs(vec3<u32>(5340u, u_input.d, u_input.e) << (vec3<u32>(u_input.d, u_input.c, u_input.d) % vec3<u32>(32u)))) % vec3<u32>(32u)), vec3<u32>(~u_input.a, u_input.d, max(countOneBits(u_input.d), _wgslsmith_clamp_u32(53514u, abs(u_input.a), max(41567u, 60706u)))), var_0.xzx);
}

fn func_2(arg_0: vec2<u32>) -> Struct_1 {
    let var_0 = vec2<i32>(1i, 2147483647i);
    let var_1 = func_3(!(!all(vec2<bool>(true, true))), _wgslsmith_mult_vec3_i32(vec3<i32>(~_wgslsmith_mult_i32(var_0.x, u_input.b), var_0.x, _wgslsmith_dot_vec4_i32(~vec4<i32>(3291i, -41401i, -1i, -2147483647i), ~vec4<i32>(u_input.b, u_input.b, u_input.b, -1i))), _wgslsmith_add_vec3_i32(-(vec3<i32>(-81014i, -2147483647i, var_0.x) | vec3<i32>(-27732i, var_0.x, 1i)), abs(select(vec3<i32>(var_0.x, 2147483647i, u_input.b), vec3<i32>(1i, 23051i, var_0.x), vec3<bool>(false, false, true))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1f, 1692f, -626f))));
    var var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.x, 1401f, 199f), vec3<f32>(-2232f, var_2.x, -183f), vec3<bool>(true, false, false))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2343f, var_2.x, 110f))))), vec3<f32>(-650f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.x)))), -1000f));
    var_2 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-373f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-721f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -196f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-776f)), var_3.x)))))));
    return Struct_1(false, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(var_2.x, var_2.x)))), 622f != var_2.x, _wgslsmith_clamp_vec2_u32(arg_0, ~vec2<u32>(firstTrailingBit(1u), ~15176u), ~var_1.zz), -_wgslsmith_dot_vec2_i32(vec2<i32>(-var_0.x, 0i), vec2<i32>(-22758i, var_0.x | -1i)));
}

fn func_1() -> Struct_3 {
    var var_0 = Struct_2(func_2(~(~max(vec2<u32>(u_input.c, 0u), vec2<u32>(0u, 0u)))), vec2<bool>(all(vec2<bool>(all(vec2<bool>(false, false)), true)), true), ~vec2<u32>(u_input.a, ~max(101782u, u_input.a)), select(countOneBits(1u), u_input.a >> (u_input.e % 32u), false));
    let var_1 = !func_2(vec2<u32>(_wgslsmith_div_u32(~u_input.e, func_3(var_0.a.c, vec3<i32>(0i, -29822i, -39660i)).x), max(_wgslsmith_clamp_u32(var_0.d, var_0.d, 0u), u_input.e >> (var_0.c.x % 32u)))).c;
    var_0 = Struct_2(func_2(~_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(var_0.c, vec2<u32>(1u, u_input.d)), vec2<u32>(0u, u_input.a))), !(!vec2<bool>(var_0.a.c, any(var_0.b))), ~var_0.a.d, _wgslsmith_sub_u32(u_input.c >> (32277u % 32u), ~1u));
    let var_2 = ~(~u_input.a);
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(var_0.a.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.b)) * var_0.a.b)));
    return Struct_3(firstLeadingBit(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.d, u_input.c, 4294967295u), ~vec3<u32>(u_input.c, 42013u, var_2)) ^ vec3<u32>(u_input.c, 21214u, u_input.d)));
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: Struct_3, arg_3: Struct_3) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(func_2(vec2<u32>(arg_2.a.x, 4294967295u)).c, _wgslsmith_f_op_f32(round(-1334f)), any(vec4<bool>(true, all(vec4<bool>(true, true, false, false)), true, true)), arg_1.a.yz, _wgslsmith_mod_i32(~(~arg_0), -max(u_input.b, arg_0))), !select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(true, true), true)), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<u32>(firstTrailingBit(_wgslsmith_mod_u32(~14658u, u_input.c ^ arg_1.a.x)), ~(~1u)), ~u_input.d);
    let var_1 = ~(~u_input.e);
    var var_2 = false;
    var_2 = !select(false, var_0.b.x | any(!var_0.b), any(!vec3<bool>(false, var_0.a.a, false)));
    var_2 = !(!(!(any(vec4<bool>(var_0.b.x, true, var_0.a.a, true)) & var_0.a.c)));
    return Struct_1(func_2(~(~var_0.c)).a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-334f, 245f, any(vec3<bool>(var_0.b.x, false, var_0.a.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.a.b, 1148f))) * _wgslsmith_f_op_f32(f32(-1f) * -764f))), true, vec2<u32>(1u, var_0.c.x) | func_2(var_0.c >> (~vec2<u32>(61072u, 14931u) % vec2<u32>(32u))).d, countOneBits(-var_0.a.e));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(u_input.b, func_1(), func_1(), Struct_3(vec3<u32>(~u_input.a >> (u_input.e % 32u), max(u_input.c, 29459u << (u_input.d % 32u)), u_input.a)));
    let var_1 = func_2(~_wgslsmith_add_vec2_u32(~vec2<u32>(1u, 20180u), vec2<u32>(1u, 0u) & vec2<u32>(1u, u_input.d)) | abs(_wgslsmith_mod_vec2_u32(select(var_0.d, var_0.d, true), var_0.d)));
    var var_2 = var_0.c;
    var var_3 = Struct_2(var_0, select(select(vec2<bool>(var_1.a, var_1.c), select(vec2<bool>(var_1.a, var_0.a), vec2<bool>(var_1.a, true), vec2<bool>(true, true)), var_0.a), !select(vec2<bool>(false, var_1.a), !vec2<bool>(true, var_0.c), var_0.a), select(!(!vec2<bool>(false, var_1.a)), !vec2<bool>(var_0.c, var_0.c), select(select(vec2<bool>(var_1.c, false), vec2<bool>(false, var_0.a), var_1.a), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(var_1.c, false)), !vec2<bool>(var_0.c, var_1.a)))), var_0.d, ~(~4294967295u) << (abs(~u_input.e) % 32u));
    var var_4 = var_3.a;
    let var_5 = func_1();
    let var_6 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.b, -136f, var_0.b, var_1.b), vec4<f32>(1833f, -248f, var_0.b, var_4.b)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.b, -277f, var_0.b, 1729f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1281f, 853f, -1116f, var_0.b) + vec4<f32>(103f, -1378f, var_1.b, -827f))))), ~select(_wgslsmith_add_vec3_u32(vec3<u32>(0u, var_3.d, 72086u), abs(var_5.a)), vec3<u32>(var_0.d.x, var_3.d, 4294967295u), var_1.a | true), func_1().a >> (var_5.a % vec3<u32>(32u)));
}

