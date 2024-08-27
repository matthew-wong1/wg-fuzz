struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: vec2<bool>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<bool>) -> i32 {
    var var_0 = select(vec3<bool>(arg_1.x, _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(-1i, -37324i, -1i)), max(vec3<i32>(0i, -2147483647i, u_input.a.x), vec3<i32>(u_input.a.x, 0i, -32782i))) == 1i, arg_1.x), vec3<bool>(false, true, true), arg_1.x);
    var_0 = select(vec3<bool>(any(!(!vec4<bool>(var_0.x, var_0.x, arg_1.x, arg_1.x))), arg_1.x | !all(vec3<bool>(var_0.x, true, true)), select(!(0u <= arg_0.x), select(true, any(arg_1), u_input.a.x == 1i), true & (arg_0.x >= 1u))), select(select(vec3<bool>(arg_1.x && false, true, arg_1.x), select(select(vec3<bool>(false, var_0.x, arg_1.x), vec3<bool>(var_0.x, arg_1.x, true), true), !vec3<bool>(true, var_0.x, true), !arg_1.x), vec3<bool>(!var_0.x, true, select(arg_1.x, arg_1.x, true))), vec3<bool>(any(vec2<bool>(true, false)), !var_0.x, arg_1.x), any(!vec2<bool>(arg_1.x, arg_1.x))), false);
    var_0 = !vec3<bool>(false, !arg_1.x, _wgslsmith_clamp_i32(u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(24962i, -7523i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), u_input.a.x) > _wgslsmith_mod_i32(u_input.a.x, ~0i));
    var var_1 = Struct_2(Struct_1(arg_1, !select(select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(false, arg_1.x, false), vec3<bool>(var_0.x, arg_1.x, true)), select(vec3<bool>(var_0.x, arg_1.x, true), vec3<bool>(false, var_0.x, false), vec3<bool>(var_0.x, var_0.x, false)), !vec3<bool>(arg_1.x, arg_1.x, true)), arg_1, u_input.a.x ^ -1i), _wgslsmith_sub_u32(select(arg_0.x, ~4031u, all(select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(true, arg_1.x, false), vec3<bool>(var_0.x, var_0.x, arg_1.x)))), 5229u));
    let var_2 = Struct_2(var_1.a, _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, countOneBits(1u)), ~vec2<u32>(var_1.b, 23873u)));
    return 35407i;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: i32) -> f32 {
    var var_0 = select(vec3<bool>(arg_1.b > _wgslsmith_clamp_u32(arg_1.b, _wgslsmith_mod_u32(arg_1.b, 3539u), abs(0u)), any(arg_1.a.a) && (select(arg_1.a.a.x, arg_0.x, true) == true), ~arg_1.b <= ((arg_1.b >> (arg_1.b % 32u)) ^ (5553u & arg_1.b))), !(!arg_1.a.b), false);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1f)));
}

fn func_2() -> Struct_1 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(488f, _wgslsmith_f_op_f32(trunc(588f))))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1709f + -1000f))))), _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), Struct_2(Struct_1(vec2<bool>(true, true), vec3<bool>(false, false, false), vec2<bool>(false, false), -14250i), 1u), func_3(vec4<u32>(1u, 21962u, 12115u, 29553u), vec2<bool>(false, false))))), (_wgslsmith_f_op_f32(step(-1022f, -585f)) == _wgslsmith_f_op_f32(trunc(-1061f))) || true)));
    var var_1 = ~max(26367u, ~firstLeadingBit(~664u));
    var var_2 = Struct_3(vec4<i32>(-(~(u_input.a.x << (0u % 32u))), u_input.a.x & (-40196i | (u_input.a.x >> (4294967295u % 32u))), 46167i, ~_wgslsmith_div_i32(u_input.a.x, ~(-1i))), Struct_2(Struct_1(vec2<bool>(true, true), vec3<bool>(true, true, true), select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(false, false), false)), 2147483647i), 34284u));
    var var_3 = Struct_3(-(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, var_2.a.x, -21653i, u_input.a.x), vec4<i32>(u_input.a.x, var_2.a.x, -8560i, 30888i)) & ~max(vec4<i32>(var_2.b.a.d, -84013i, 10977i, var_2.a.x), vec4<i32>(-14523i, -1i, 2147483647i, 5740i))), Struct_2(Struct_1(select(!vec2<bool>(var_2.b.a.c.x, var_2.b.a.a.x), var_2.b.a.a, all(vec3<bool>(false, true, false))), vec3<bool>(var_2.b.a.b.x, any(var_2.b.a.b), var_2.b.a.b.x), select(!var_2.b.a.b.xx, !vec2<bool>(true, var_2.b.a.b.x), var_2.b.a.a.x | var_2.b.a.a.x), u_input.a.x), ~(_wgslsmith_mod_u32(var_2.b.b, 1u) & _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.b.b, 31057u), vec2<u32>(58042u, var_2.b.b)))));
    var_1 = 57403u;
    return var_2.b.a;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = arg_2.x;
    let var_1 = vec4<u32>(~countOneBits(abs(45889u)), _wgslsmith_mod_u32(reverseBits(0u), firstTrailingBit(3238u)), 4294967295u, _wgslsmith_add_u32(4294967295u, arg_1.b.b));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) - _wgslsmith_f_op_f32(arg_2.x * arg_2.x))))) - _wgslsmith_div_f32(_wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(-441f * _wgslsmith_f_op_f32(-273f + 666f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(848f))))));
    let var_3 = Struct_3(~(-(arg_1.a ^ vec4<i32>(u_input.a.x, arg_1.b.a.d, -2147483647i, 1i))), Struct_2(arg_1.b.a, arg_1.b.b));
    let var_4 = !vec2<bool>(all(select(select(vec4<bool>(true, arg_1.b.a.b.x, false, arg_0.b.x), vec4<bool>(arg_1.b.a.a.x, false, true, var_3.b.a.c.x), var_3.b.a.a.x), !vec4<bool>(var_3.b.a.b.x, true, arg_1.b.a.a.x, arg_1.b.a.c.x), vec4<bool>(false, arg_1.b.a.b.x, arg_0.b.x, arg_0.b.x))), true);
    return Struct_1(select(!select(func_2().a, func_2().b.yz, true), !(!arg_0.b.zx), !(!any(vec4<bool>(true, var_3.b.a.b.x, arg_1.b.a.c.x, true)))), arg_1.b.a.b, arg_0.c, _wgslsmith_sub_i32(-arg_1.a.x | u_input.a.x, -29130i));
}

fn func_6(arg_0: Struct_1, arg_1: vec2<u32>) -> vec2<i32> {
    var var_0 = Struct_2(arg_0, min(arg_1.x, arg_1.x));
    var var_1 = vec4<bool>(true, !all(select(var_0.a.b.zx, vec2<bool>(arg_0.c.x, arg_0.a.x), vec2<bool>(true, true))) != true, any(!select(vec4<bool>(false, var_0.a.b.x, true, true), vec4<bool>(var_0.a.b.x, false, arg_0.c.x, arg_0.b.x), select(vec4<bool>(var_0.a.b.x, false, arg_0.b.x, true), vec4<bool>(false, true, var_0.a.b.x, var_0.a.b.x), vec4<bool>(true, var_0.a.c.x, false, false)))), !(!var_0.a.c.x));
    var var_2 = select(vec4<bool>(true, all(func_2().b.zz), var_0.a.b.x & all(arg_0.b), var_1.x), select(vec4<bool>(false, var_1.x, !(!var_1.x), true), !(!select(vec4<bool>(var_1.x, false, arg_0.c.x, true), vec4<bool>(arg_0.a.x, arg_0.c.x, false, var_0.a.b.x), true)), any(vec2<bool>(false, true)) | (~var_0.b <= 48880u)), true);
    let var_3 = u_input.a;
    var var_4 = !var_0.a.b.x;
    return reverseBits(~select(~_wgslsmith_div_vec2_i32(var_3, u_input.a), vec2<i32>(-1i >> (var_0.b % 32u), func_3(vec4<u32>(0u, arg_1.x, var_0.b, 0u), var_1.zx)), !(!vec2<bool>(var_0.a.a.x, true))));
}

fn func_1(arg_0: vec4<f32>, arg_1: bool, arg_2: vec2<f32>) -> vec4<bool> {
    var var_0 = func_6(func_5(func_2(), Struct_3(~(-vec4<i32>(12308i, u_input.a.x, 0i, u_input.a.x)), Struct_2(func_2(), reverseBits(0u))), arg_0.zy), ~_wgslsmith_div_vec2_u32(~vec2<u32>(73543u, 1u), _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(40053u, 38344u), vec2<u32>(45834u, 17965u)), ~vec2<u32>(84573u, 4294967295u), vec2<u32>(4294967295u, 18664u))));
    var var_1 = Struct_3(vec4<i32>(-2147483647i, u_input.a.x, abs(0i), _wgslsmith_dot_vec2_i32(vec2<i32>(abs(-2147483647i), ~13459i), u_input.a)), Struct_2(Struct_1(vec2<bool>(true, true), !(!vec3<bool>(arg_1, true, arg_1)), func_5(func_5(Struct_1(vec2<bool>(arg_1, false), vec3<bool>(arg_1, arg_1, true), vec2<bool>(arg_1, true), u_input.a.x), Struct_3(vec4<i32>(u_input.a.x, 61279i, var_0.x, u_input.a.x), Struct_2(Struct_1(vec2<bool>(false, arg_1), vec3<bool>(false, arg_1, arg_1), vec2<bool>(false, arg_1), -1i), 0u)), arg_2), Struct_3(vec4<i32>(-5719i, 39741i, -2147483647i, 2880i), Struct_2(Struct_1(vec2<bool>(arg_1, arg_1), vec3<bool>(arg_1, false, true), vec2<bool>(false, false), 24537i), 1u)), _wgslsmith_f_op_vec2_f32(min(arg_2, arg_2))).c, _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(2147483647i, 16238i, u_input.a.x)), vec3<i32>(u_input.a.x, var_0.x, -62483i) & vec3<i32>(u_input.a.x, -35240i, u_input.a.x))), firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 12424u, 4294967295u), vec3<u32>(74760u, 93878u, 11945u)) & ~42850u)));
    var_0 = -u_input.a;
    var_1 = Struct_3(var_1.a, var_1.b);
    let var_2 = _wgslsmith_f_op_f32(-arg_2.x);
    return vec4<bool>(true, true, true, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(true, !(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 2190u), vec2<u32>(1u, 1u)) <= ~(~0u)), false, !(((u_input.a.x | -33590i) >> (1u % 32u)) < (u_input.a.x << (5052u % 32u))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-310f)));
    var_1 = -790f;
    var_0 = select(!select(vec4<bool>(all(vec2<bool>(var_0.x, false)), true | var_0.x, true, true), vec4<bool>(all(var_0.zzz), !var_0.x, -566i > u_input.a.x, !var_0.x), select(!vec4<bool>(var_0.x, false, true, var_0.x), !vec4<bool>(false, var_0.x, false, true), vec4<bool>(false, var_0.x, true, true))), !select(vec4<bool>(true, all(vec4<bool>(var_0.x, var_0.x, var_0.x, true)), any(vec3<bool>(true, var_0.x, var_0.x)), true), !func_1(vec4<f32>(1000f, -645f, 946f, -1028f), true, vec2<f32>(-1055f, 142f)), var_0.x), !vec4<bool>(true, select(false, !var_0.x, var_0.x), func_2().c.x, func_2().b.x));
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -676f);
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-233f, 1731f, -482f, 511f) - vec4<f32>(465f, -396f, 2034f, 320f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-423f, 704f, 213f, -869f), vec4<f32>(-936f, -1287f, 153f, 1353f)))))))), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -375f), _wgslsmith_f_op_f32(283f * -421f), var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_4(var_0.ww, Struct_2(Struct_1(vec2<bool>(false, false), var_0.zyy, var_0.zw, u_input.a.x), 0u), u_input.a.x))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(3329f + 746f), _wgslsmith_div_f32(-1150f, -936f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f)))), 869f), var_0.x));
    var var_3 = Struct_2(func_2(), 3687u);
    var var_4 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(1i));
}

