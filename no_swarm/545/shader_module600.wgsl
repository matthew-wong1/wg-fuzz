struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<f32>,
    d: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_3,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool) -> vec3<i32> {
    return vec3<i32>(-11790i, firstTrailingBit(u_input.b), 0i) | ~(max(vec3<i32>(u_input.b, -1i, -5313i), ~vec3<i32>(u_input.b, u_input.b, 0i)) << (~_wgslsmith_mult_vec3_u32(vec3<u32>(20611u, 1u, 26957u), vec3<u32>(u_input.d, u_input.d, 4294967295u)) % vec3<u32>(32u)));
}

fn func_2() -> i32 {
    let var_0 = u_input.c;
    let var_1 = Struct_3(Struct_2(func_3(true), Struct_1(915f, false, vec4<f32>(-2167f, 661f, -1000f, _wgslsmith_f_op_f32(579f + 119f)), _wgslsmith_div_f32(1499f, 470f)), _wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.b, -45178i >> (0u % 32u)), ~34499i), Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(3393f * -1000f))), true, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(-1916f, 663f, 499f, -357f), vec4<f32>(-1273f, -1000f, 1271f, -302f)))), -919f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(1132f, -1391f) - vec2<f32>(-273f, 902f)))) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(619f, -769f)))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-659f * -1189f) - -230f)), !all(vec4<bool>(true, true, true, false)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-477f, 213f, 271f, 605f))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1545f, -652f, -276f, 2637f))))), _wgslsmith_f_op_f32(1f - 1235f)), Struct_1(2001f, true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), -1565f), Struct_2(max(vec3<i32>(-u_input.b, u_input.b | u_input.b, -u_input.b), vec3<i32>(~(-26286i), u_input.b, -u_input.b)), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1951f), _wgslsmith_f_op_f32(sign(1794f)))), select(true, true, true), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(238f, 868f, 1000f, 1354f) * vec4<f32>(853f, 1236f, -318f, -440f)))), 559f), _wgslsmith_mult_i32(-u_input.b, _wgslsmith_add_i32(u_input.b, 2147483647i) | -2147483647i), Struct_1(-273f, true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(2320f, 1070f, 373f, 604f) + vec4<f32>(2036f, -162f, 959f, 863f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1123f, 734f, -258f, -1888f))), _wgslsmith_f_op_f32(floor(129f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1202f, 545f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1376f, 770f) + vec2<f32>(-685f, -653f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(150f, -480f))))));
    var var_2 = !(var_1.d.e.x >= var_1.b.c.x);
    return 2147483647i;
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: vec3<u32>, arg_3: u32) -> Struct_2 {
    var var_0 = u_input.b;
    let var_1 = _wgslsmith_f_op_f32(floor(1442f));
    var_0 = func_2() >> (countOneBits(_wgslsmith_mod_u32(4294967295u, arg_0)) % 32u);
    let var_2 = Struct_2(-vec3<i32>(2147483647i, _wgslsmith_div_i32(u_input.b, u_input.b) << (arg_1 % 32u), u_input.b << (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 38702u, arg_2.x, arg_1), vec4<u32>(arg_2.x, arg_0, arg_3, 33812u)) % 32u)), Struct_1(_wgslsmith_f_op_f32(step(var_1, -1000f)), (arg_3 << (arg_1 % 32u)) >= arg_0, vec4<f32>(302f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_1, 660f)), 1208f), -1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1 * 340f), var_1)), _wgslsmith_f_op_f32(round(-1014f))), _wgslsmith_dot_vec2_i32(min(~vec2<i32>(23735i, -33628i), -firstTrailingBit(vec2<i32>(14144i, u_input.b))), vec2<i32>(u_input.b, min(~(-1i), func_3(true).x))), Struct_1(713f, any(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), true)), vec4<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(f32(-1f) * -1411f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1)) + var_1), _wgslsmith_f_op_f32(-var_1)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(abs(var_1)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_1)) * _wgslsmith_div_vec2_f32(vec2<f32>(var_1, var_1), vec2<f32>(-235f, 1279f)))));
    var var_3 = Struct_2(-_wgslsmith_mod_vec3_i32(var_2.a, vec3<i32>(countOneBits(var_2.c), _wgslsmith_mod_i32(u_input.b, u_input.b), u_input.b)), var_2.b, countOneBits(-1i), var_2.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, -468f) + var_2.b.c.zx)));
    return var_2;
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: Struct_3, arg_3: Struct_1) -> Struct_3 {
    var var_0 = arg_3.c.wz;
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(step(arg_3.a, var_0.x)), _wgslsmith_f_op_f32(-arg_3.d)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-485f, _wgslsmith_f_op_f32(trunc(-994f))))), vec2<bool>(all(select(vec3<bool>(false, false, arg_2.c.b), vec3<bool>(false, arg_3.b, arg_3.b), arg_2.b.b)), true))));
    var_0 = _wgslsmith_f_op_vec2_f32(round(arg_3.c.xy));
    let var_1 = arg_2.a;
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(arg_2.d.d.c.zx)));
    return Struct_3(func_1(0u, ~7452u, select(~(~vec3<u32>(u_input.a, u_input.d, u_input.c.x)), _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.d, u_input.d, u_input.d), vec3<u32>(u_input.d, 28971u, u_input.c.x)), vec3<u32>(31611u, u_input.d, 4294967295u)), var_1.b.b), select(_wgslsmith_mult_u32(u_input.a, 7402u), _wgslsmith_mod_u32(12997u, u_input.c.x), var_1.d.b) | ~(u_input.c.x << (u_input.d % 32u))), Struct_1(_wgslsmith_f_op_f32(max(arg_2.b.a, var_1.e.x)), arg_2.c.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_3.d, var_0.x, 943f, arg_3.c.x), var_1.d.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1303f)) - 3328f) - _wgslsmith_div_f32(var_1.d.a, _wgslsmith_f_op_f32(-var_0.x)))), func_1(abs(~(~u_input.c.x)), u_input.c.x, vec3<u32>(u_input.a, countOneBits(u_input.d), firstLeadingBit(46329u)), _wgslsmith_mult_u32(1u, ~u_input.a)).d, var_1);
}

fn func_5(arg_0: Struct_3, arg_1: vec3<u32>) -> i32 {
    let var_0 = vec3<bool>(func_4(countOneBits(-_wgslsmith_sub_i32(-60540i, u_input.b)), arg_0.a.a.x, Struct_3(func_4(_wgslsmith_sub_i32(u_input.b, 0i), _wgslsmith_add_i32(arg_0.d.c, u_input.b), func_4(u_input.b, arg_0.a.a.x, arg_0, Struct_1(arg_0.a.e.x, true, vec4<f32>(arg_0.d.e.x, arg_0.c.d, 859f, 1297f), arg_0.a.b.a)), func_4(2147483647i, arg_0.a.c, arg_0, Struct_1(arg_0.d.d.d, arg_0.d.b.b, arg_0.b.c, arg_0.d.b.c.x)).c).a, Struct_1(-1378f, arg_0.d.a.x > arg_0.d.c, _wgslsmith_f_op_vec4_f32(-arg_0.c.c), arg_0.a.d.d), func_4(_wgslsmith_add_i32(arg_0.d.a.x, -4552i), -arg_0.d.a.x, arg_0, arg_0.c).d.d, arg_0.d), Struct_1(1260f, any(vec4<bool>(true, true, true, arg_0.c.b)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(arg_0.a.d.c, arg_0.c.c, true)))), 630f)).d.d.b, !(!arg_0.b.b), !func_1(~firstTrailingBit(u_input.d), arg_1.x, _wgslsmith_add_vec3_u32(arg_1, _wgslsmith_mod_vec3_u32(vec3<u32>(37023u, 1u, 66782u), vec3<u32>(79697u, 4294967295u, 85731u))), arg_1.x).d.b);
    var var_1 = _wgslsmith_f_op_f32(sign(-358f));
    var var_2 = arg_0.a.e.x;
    let var_3 = true;
    var var_4 = _wgslsmith_add_u32(~(~u_input.c.x), ~(~20082u));
    return reverseBits(-1i) ^ _wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.b, -27294i), 0i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(-u_input.b, func_5(func_4(~firstTrailingBit(14874i), -1i, Struct_3(func_1(u_input.c.x, u_input.a, vec3<u32>(4294967295u, 0u, 0u), u_input.d), func_1(u_input.d, u_input.c.x, vec3<u32>(53214u, u_input.a, 4294967295u), 4294967295u).b, func_1(u_input.d, u_input.c.x, vec3<u32>(4294967295u, 1u, 0u), 23091u).b, func_1(u_input.a, 1u, vec3<u32>(0u, 0u, 38019u), 12099u)), func_1(_wgslsmith_div_u32(46127u, 20710u), 0u, vec3<u32>(78333u, 39508u, u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 1u, u_input.a, 10860u), vec4<u32>(u_input.d, 0u, u_input.d, 0u))).b), _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 94742u, 1u), vec3<u32>(1u, u_input.c.x, u_input.d)), ~vec3<u32>(9859u, u_input.a, 0u)) | vec3<u32>(max(u_input.d, u_input.a), firstTrailingBit(47562u), 0u)), all(select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, false), true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), true))));
    var_0 = _wgslsmith_mod_i32(u_input.b, firstTrailingBit(u_input.b));
    let var_1 = func_1(u_input.c.x, 1u, vec3<u32>(~21457u, u_input.c.x, 4919u), 6811u).b;
    var_0 = -26157i;
    var var_2 = select(!select(!select(vec3<bool>(var_1.b, var_1.b, var_1.b), vec3<bool>(true, var_1.b, false), true), vec3<bool>(false & var_1.b, var_1.b | false, u_input.a < u_input.a), var_1.b), !vec3<bool>(true, true, var_1.b), vec3<bool>(!(!var_1.b), true, true & var_1.b));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, var_1.a, ~(~firstLeadingBit(func_4(u_input.b, -2147483647i, Struct_3(Struct_2(vec3<i32>(u_input.b, u_input.b, u_input.b), var_1, 25882i, Struct_1(-1000f, true, var_1.c, 176f), var_1.c.ww), Struct_1(528f, true, vec4<f32>(var_1.a, var_1.c.x, -1000f, -1000f), 1000f), var_1, Struct_2(vec3<i32>(u_input.b, u_input.b, u_input.b), Struct_1(var_1.c.x, var_1.b, var_1.c, var_1.d), u_input.b, var_1, var_1.c.xy)), var_1).a.a)));
}

