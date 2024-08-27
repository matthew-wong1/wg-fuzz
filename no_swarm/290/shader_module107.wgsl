struct Struct_1 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: f32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: bool, arg_1: vec3<i32>) -> f32 {
    let var_0 = Struct_3(Struct_2(Struct_1(firstLeadingBit(vec2<i32>(u_input.c.x, 2147483647i)), vec2<bool>(true, true), vec2<bool>(arg_0 || arg_0, true & arg_0)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(363f * 348f) + _wgslsmith_f_op_f32(974f + 656f)), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(392f - -2013f)), -358f)), select(countOneBits(max(~vec4<u32>(u_input.a.x, 4294967295u, 1u, 1u), vec4<u32>(u_input.d, u_input.d, 44866u, u_input.e) ^ vec4<u32>(u_input.d, 101631u, 1u, 28853u))), _wgslsmith_div_vec4_u32(abs(vec4<u32>(17363u, 0u, u_input.d, u_input.a.x)), ~vec4<u32>(0u, u_input.e, u_input.e, 1u)), select(!select(vec4<bool>(arg_0, arg_0, arg_0, true), vec4<bool>(arg_0, arg_0, false, arg_0), true), !select(vec4<bool>(false, arg_0, true, arg_0), vec4<bool>(true, false, arg_0, false), vec4<bool>(arg_0, arg_0, true, arg_0)), any(vec3<bool>(arg_0, arg_0, false)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1273f, -2393f))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1990f, -1000f)))) * vec2<f32>(_wgslsmith_f_op_f32(ceil(-1576f)), _wgslsmith_f_op_f32(-121f + 426f))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.b.x, _wgslsmith_f_op_f32(var_0.c.x - var_0.c.x), _wgslsmith_f_op_f32(-var_0.c.x)) - _wgslsmith_f_op_vec3_f32(var_0.a.b - _wgslsmith_f_op_vec3_f32(-var_0.a.b))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1511f - -438f) * 1075f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.c.x + var_0.c.x))), var_0.c.x))));
    var_1 = vec3<f32>(-224f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1284f)), _wgslsmith_f_op_f32(f32(-1f) * -240f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1548f)))));
    var_1 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.a.b.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.c.x, -819f)) * 2262f)), -879f, var_0.a.b.x)));
    let var_2 = vec2<u32>(firstTrailingBit(~u_input.e), _wgslsmith_add_u32(_wgslsmith_div_u32(u_input.a.x, 0u), var_0.b.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x));
}

fn func_2(arg_0: Struct_3, arg_1: bool, arg_2: Struct_1) -> Struct_3 {
    var var_0 = min(arg_0.b.yxz, ~((reverseBits(vec3<u32>(arg_0.b.x, 0u, 32559u)) << (vec3<u32>(0u, 0u, 1u) % vec3<u32>(32u))) >> (_wgslsmith_add_vec3_u32(min(arg_0.b.xwy, vec3<u32>(1u, arg_0.b.x, arg_0.b.x)), ~vec3<u32>(u_input.a.x, 4294967295u, arg_0.b.x)) % vec3<u32>(32u))));
    var var_1 = arg_0;
    let var_2 = Struct_3(arg_0.a, abs(vec4<u32>(_wgslsmith_div_u32(1u, ~0u), ~(~4294967295u), ~countOneBits(38019u), 1u)), vec2<f32>(_wgslsmith_f_op_f32(func_3(var_1.b.x == ~var_0.x, u_input.c)), 1176f));
    var_0 = vec3<u32>(arg_0.b.x, ~_wgslsmith_add_u32(93191u, _wgslsmith_mult_u32(1u, 68341u)), ~(~min(var_1.b.x, var_2.b.x))) << (_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.d, min(var_0.x, var_2.b.x), _wgslsmith_sub_u32(27551u, 24344u)), _wgslsmith_mult_vec3_u32(select(var_1.b.zzy << (arg_0.b.wxz % vec3<u32>(32u)), vec3<u32>(15103u, u_input.e, 4294967295u), arg_1), vec3<u32>(_wgslsmith_div_u32(var_2.b.x, arg_0.b.x), u_input.a.x, 4294967295u))) % vec3<u32>(32u));
    var var_3 = arg_0.a;
    return Struct_3(var_2.a, ~min((arg_0.b >> (var_2.b % vec4<u32>(32u))) >> (vec4<u32>(23181u, arg_0.b.x, 4294967295u, u_input.e) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_add_u32(arg_0.b.x, 34429u), 25253u, var_2.b.x, 40337u)), vec2<f32>(_wgslsmith_div_f32(1411f, _wgslsmith_f_op_f32(f32(-1f) * -597f)), _wgslsmith_f_op_f32(-var_2.c.x)));
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: bool) -> Struct_2 {
    let var_0 = -select(~_wgslsmith_div_vec2_i32(reverseBits(vec2<i32>(-2147483647i, 2990i)), u_input.c.yx >> (u_input.a.yy % vec2<u32>(32u))), vec2<i32>(-20513i, -327i) | -(~u_input.c.zz), arg_1.a.a.b);
    return Struct_2(arg_1.a.a, vec3<f32>(_wgslsmith_f_op_f32(abs(func_2(func_2(Struct_3(arg_1.a, arg_1.b, vec2<f32>(-1786f, arg_1.a.b.x)), arg_0, arg_1.a.a), arg_0, func_2(arg_1, true, arg_1.a.a).a.a).c.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(var_0.x < u_input.c.x, vec3<i32>(77524i, var_0.x, 0i))))), arg_1.a.b.x));
}

fn func_5(arg_0: Struct_4) -> i32 {
    return 2147483647i;
}

fn func_1(arg_0: u32, arg_1: Struct_3, arg_2: Struct_2, arg_3: bool) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec2_i32(arg_2.a.a, u_input.c.xz);
    var_0 = func_5(Struct_4(arg_1.a.a, Struct_3(func_4(all(vec3<bool>(false, arg_3, false)), func_2(arg_1, true, arg_2.a), all(vec3<bool>(false, arg_3, arg_3))), ~arg_1.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_2.b.x, arg_2.b.x), vec2<f32>(arg_1.a.b.x, 2401f))))), 226f, (~vec2<u32>(4294967295u, arg_1.b.x) & u_input.a.zx) | vec2<u32>(1u, 1u)));
    var_0 = -1i;
    var_0 = firstTrailingBit(firstTrailingBit(i32(-1i) * -1i) | -1i) ^ max(1i, 0i);
    var_0 = arg_2.a.a.x;
    return func_4(!(false || arg_2.a.c.x), func_2(func_2(Struct_3(func_2(arg_1, arg_1.a.a.c.x, arg_2.a).a, ~arg_1.b, _wgslsmith_div_vec2_f32(arg_1.a.b.xy, arg_2.b.xx)), arg_2.a.c.x, func_4(arg_3 | false, arg_1, true).a), true, func_4(true, arg_1, arg_2.a.b.x || false).a), true).a;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool, arg_3: i32) -> f32 {
    var var_0 = func_2(Struct_3(arg_1, min(_wgslsmith_sub_vec4_u32(select(vec4<u32>(1u, 34877u, 1u, 4294967295u), vec4<u32>(u_input.d, 29562u, u_input.d, 13386u), vec4<bool>(arg_0.b.x, arg_2, true, true)), _wgslsmith_add_vec4_u32(vec4<u32>(7786u, 0u, 32417u, 36900u), vec4<u32>(0u, 4294967295u, u_input.e, u_input.e))), vec4<u32>(abs(49857u), 4294967295u, _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(31595u, 0u, u_input.a.x)), u_input.e)), _wgslsmith_f_op_vec2_f32(trunc(arg_1.b.yy))), arg_2 & all(select(!vec4<bool>(true, arg_2, true, arg_1.a.c.x), select(vec4<bool>(arg_2, false, arg_1.a.c.x, false), vec4<bool>(arg_0.c.x, arg_2, false, arg_2), arg_2), arg_0.b.x)), Struct_1(arg_0.a, vec2<bool>(arg_2, arg_1.a.b.x), arg_0.c));
    var var_1 = _wgslsmith_f_op_f32(arg_1.b.x + func_2(func_2(Struct_3(func_2(Struct_3(Struct_2(Struct_1(arg_1.a.a, arg_1.a.b, vec2<bool>(arg_1.a.c.x, false)), arg_1.b), vec4<u32>(u_input.d, var_0.b.x, 4294967295u, 19463u), vec2<f32>(var_0.a.b.x, 190f)), true, Struct_1(vec2<i32>(arg_3, arg_0.a.x), vec2<bool>(true, false), arg_0.b)).a, var_0.b & vec4<u32>(var_0.b.x, u_input.e, 4294967295u, 28527u), _wgslsmith_f_op_vec2_f32(exp2(var_0.a.b.zy))), false, func_4(false, Struct_3(arg_1, var_0.b, arg_1.b.xz), true).a), !(!arg_1.a.c.x), func_1(u_input.a.x >> (~0u % 32u), func_2(func_2(Struct_3(var_0.a, var_0.b, vec2<f32>(var_0.a.b.x, var_0.a.b.x)), false, Struct_1(vec2<i32>(u_input.b, 19753i), vec2<bool>(arg_1.a.c.x, false), arg_0.b)), false, var_0.a.a), Struct_2(func_2(Struct_3(arg_1, vec4<u32>(var_0.b.x, 3035u, 96484u, 56120u), vec2<f32>(118f, 171f)), false, arg_0).a.a, _wgslsmith_div_vec3_f32(vec3<f32>(var_0.a.b.x, 1866f, arg_1.b.x), vec3<f32>(-211f, 1000f, var_0.a.b.x))), _wgslsmith_f_op_f32(max(var_0.a.b.x, arg_1.b.x)) > var_0.c.x)).c.x);
    let var_2 = select(!(!vec3<bool>(true, true & var_0.a.a.c.x, any(var_0.a.a.b))), !(!vec3<bool>(var_0.a.a.b.x, true, arg_1.a.b.x)), any(select(select(!vec3<bool>(var_0.a.a.c.x, true, true), select(vec3<bool>(true, false, arg_1.a.b.x), vec3<bool>(false, arg_1.a.c.x, arg_2), true), var_0.a.a.c.x), select(!vec3<bool>(arg_0.c.x, true, arg_1.a.c.x), vec3<bool>(true, true, true), arg_1.a.c.x), !select(vec3<bool>(false, true, var_0.a.a.b.x), vec3<bool>(arg_1.a.c.x, false, false), vec3<bool>(arg_1.a.b.x, arg_0.c.x, arg_1.a.b.x)))));
    var_0 = Struct_3(arg_1, _wgslsmith_clamp_vec4_u32(var_0.b, _wgslsmith_add_vec4_u32(~(var_0.b >> (vec4<u32>(u_input.d, 4294967295u, var_0.b.x, u_input.d) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_u32(~vec4<u32>(18145u, var_0.b.x, u_input.a.x, u_input.d), min(var_0.b, var_0.b), vec4<u32>(16765u, u_input.e, var_0.b.x, 1u) << (vec4<u32>(var_0.b.x, var_0.b.x, u_input.d, 0u) % vec4<u32>(32u)))), vec4<u32>(~u_input.e & _wgslsmith_sub_u32(u_input.d, 4294967295u), 2848u, 1u, reverseBits(u_input.a.x))), arg_1.b.xz);
    let var_3 = -594f;
    return func_2(Struct_3(func_4(!func_1(u_input.d, Struct_3(Struct_2(var_0.a.a, vec3<f32>(var_3, arg_1.b.x, arg_1.b.x)), var_0.b, vec2<f32>(482f, -1996f)), arg_1, arg_1.a.c.x).b.x, func_2(func_2(Struct_3(var_0.a, var_0.b, arg_1.b.xy), false, Struct_1(var_0.a.a.a, vec2<bool>(arg_0.b.x, arg_1.a.c.x), vec2<bool>(var_2.x, true))), var_0.a.a.b.x, Struct_1(arg_1.a.a, vec2<bool>(true, var_0.a.a.c.x), var_0.a.a.c)), !all(vec3<bool>(false, true, arg_0.b.x))), ~countOneBits(var_0.b), var_0.a.b.yy), arg_0.c.x, func_1(var_0.b.x & _wgslsmith_clamp_u32(var_0.b.x, 1u, _wgslsmith_clamp_u32(var_0.b.x, var_0.b.x, u_input.e)), func_2(Struct_3(arg_1, ~vec4<u32>(var_0.b.x, 48151u, var_0.b.x, 0u), var_0.a.b.zy), any(func_2(Struct_3(Struct_2(Struct_1(vec2<i32>(u_input.b, var_0.a.a.a.x), vec2<bool>(arg_1.a.b.x, arg_1.a.b.x), var_2.yz), var_0.a.b), var_0.b, arg_1.b.xy), var_0.a.a.c.x, var_0.a.a).a.a.b), func_2(func_2(Struct_3(arg_1, var_0.b, vec2<f32>(var_0.a.b.x, var_3)), true, Struct_1(vec2<i32>(arg_0.a.x, var_0.a.a.a.x), vec2<bool>(false, true), vec2<bool>(false, false))), true, func_4(var_0.a.a.c.x, Struct_3(arg_1, var_0.b, arg_1.b.zz), arg_0.c.x).a).a.a), func_4(!(!arg_1.a.b.x), func_2(Struct_3(var_0.a, var_0.b, vec2<f32>(-224f, -556f)), false, Struct_1(vec2<i32>(arg_0.a.x, u_input.b), vec2<bool>(false, var_0.a.a.c.x), var_2.zy)), var_0.a.a.b.x), true)).c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -994f));
    var_0 = -1240f;
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6(Struct_1(vec2<i32>(-2147483647i, -1i), select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec2<bool>(true, true)), Struct_2(func_1(23135u, Struct_3(Struct_2(Struct_1(vec2<i32>(u_input.b, -2147483647i), vec2<bool>(false, true), vec2<bool>(true, false)), vec3<f32>(-1858f, -1073f, -711f)), vec4<u32>(u_input.a.x, u_input.a.x, u_input.e, 4294967295u), vec2<f32>(588f, 979f)), Struct_2(Struct_1(u_input.c.zx, vec2<bool>(true, false), vec2<bool>(false, true)), vec3<f32>(-1308f, 793f, -1798f)), true), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1285f, -904f, 729f) * vec3<f32>(-196f, -561f, -501f))), all(vec4<bool>(true, false, false, false)), u_input.c.x)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-429f * 268f)), _wgslsmith_f_op_f32(func_6(func_2(Struct_3(Struct_2(Struct_1(u_input.c.zx, vec2<bool>(true, false), vec2<bool>(false, true)), vec3<f32>(-3088f, 648f, 461f)), vec4<u32>(u_input.e, 522u, 89635u, u_input.d), vec2<f32>(-836f, 934f)), true, Struct_1(u_input.c.xx, vec2<bool>(true, false), vec2<bool>(true, true))).a.a, Struct_2(Struct_1(vec2<i32>(19471i, 1i), vec2<bool>(false, false), vec2<bool>(true, false)), vec3<f32>(-930f, 1120f, 1153f)), true, -20617i)))) - _wgslsmith_f_op_vec2_f32(-func_4(any(vec4<bool>(false, true, false, true)), Struct_3(Struct_2(Struct_1(u_input.c.yz, vec2<bool>(true, true), vec2<bool>(false, true)), vec3<f32>(-532f, -632f, 1479f)), abs(vec4<u32>(40242u, u_input.d, u_input.d, u_input.a.x)), vec2<f32>(-904f, 194f)), (-45652i ^ u_input.b) <= _wgslsmith_div_i32(u_input.b, 19474i)).b.zx));
    var_1 = _wgslsmith_div_f32(-896f, var_2.x);
    let var_3 = select(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true))), vec4<bool>(all(vec3<bool>(true, true, true)), 1u > u_input.d, false, false & any(vec4<bool>(false, false, true, true))), func_1(u_input.d >> (~u_input.d % 32u), Struct_3(func_2(Struct_3(Struct_2(Struct_1(vec2<i32>(u_input.c.x, u_input.b), vec2<bool>(true, false), vec2<bool>(false, false)), vec3<f32>(1221f, -1000f, var_2.x)), vec4<u32>(55712u, u_input.e, u_input.e, u_input.d), vec2<f32>(-2149f, 1599f)), false, Struct_1(vec2<i32>(0i, u_input.b), vec2<bool>(false, false), vec2<bool>(true, true))).a, vec4<u32>(u_input.d, 2506u, u_input.e, u_input.e), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1550f, var_2.x))), Struct_2(Struct_1(u_input.c.zy, vec2<bool>(true, false), vec2<bool>(true, false)), _wgslsmith_div_vec3_f32(vec3<f32>(var_2.x, -529f, 725f), vec3<f32>(var_2.x, var_2.x, -329f))), func_4(true, Struct_3(Struct_2(Struct_1(u_input.c.xz, vec2<bool>(false, false), vec2<bool>(true, false)), vec3<f32>(113f, 102f, 1000f)), vec4<u32>(0u, u_input.d, u_input.e, u_input.a.x), vec2<f32>(238f, var_2.x)), false).a.c.x | true).c.x), select(vec4<bool>(!all(vec3<bool>(false, false, false)), false, true, false), !select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false)), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true)), true), vec4<bool>(!func_1(u_input.d, Struct_3(Struct_2(Struct_1(u_input.c.xy, vec2<bool>(true, false), vec2<bool>(false, true)), vec3<f32>(var_2.x, -1057f, 819f)), vec4<u32>(0u, u_input.d, 4564u, u_input.e), vec2<f32>(var_2.x, var_2.x)), Struct_2(Struct_1(u_input.c.xz, vec2<bool>(true, true), vec2<bool>(false, false)), vec3<f32>(var_2.x, 444f, var_2.x)), false).b.x | false, !((u_input.c.x & -17278i) <= _wgslsmith_mod_i32(u_input.c.x, -2147483647i)), any(vec4<bool>(true, var_2.x == -2068f, true, false)), !(800f >= var_2.x) & true));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_2.x, var_2.x, var_2.x));
}

