struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec3<bool>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<i32>,
    c: f32,
    d: vec3<u32>,
    e: Struct_2,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: Struct_4,
    d: Struct_2,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: vec2<f32>, arg_3: vec2<bool>) -> vec2<bool> {
    return vec2<bool>(false, !(-513f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x - arg_2.x))));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<bool>) -> u32 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1699f) != _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -650f), _wgslsmith_f_op_f32(-1000f + 1244f))))));
    var_0 = Struct_3(-2147483647i < (36240i | max(select(-34100i, -3892i, arg_1.x), min(-153i, -664i))));
    var var_1 = countOneBits(vec2<i32>(_wgslsmith_div_i32(_wgslsmith_sub_i32(_wgslsmith_mult_i32(-43545i, 21955i), _wgslsmith_clamp_i32(-2147483647i, -39982i, -2147483647i)), firstTrailingBit(1i)), ~(~firstTrailingBit(2147483647i))));
    let var_2 = select(vec3<bool>(any(!(!arg_1)), var_0.a, var_0.a), !(!(!(!vec3<bool>(false, false, var_0.a)))), select(!vec3<bool>(all(vec2<bool>(true, arg_1.x)), true, any(vec4<bool>(arg_1.x, false, false, true))), !select(select(vec3<bool>(var_0.a, false, var_0.a), vec3<bool>(arg_1.x, false, false), vec3<bool>(var_0.a, arg_1.x, var_0.a)), vec3<bool>(false, false, false), !vec3<bool>(arg_1.x, false, arg_1.x)), (_wgslsmith_add_u32(arg_0.x, 1u) == ~arg_0.x) & any(vec3<bool>(var_0.a, var_0.a, arg_1.x))));
    let var_3 = Struct_1(u_input.a, _wgslsmith_f_op_f32(f32(-1f) * -302f), select(!select(select(vec3<bool>(false, arg_1.x, false), var_2, true), !var_2, select(vec3<bool>(var_2.x, var_0.a, true), var_2, vec3<bool>(true, var_0.a, var_2.x))), vec3<bool>(true, any(!var_2.xy), func_3(firstTrailingBit(vec4<i32>(-11863i, 0i, var_1.x, 1i)), min(vec4<i32>(var_1.x, 0i, -75556i, -19234i), vec4<i32>(-30393i, var_1.x, var_1.x, var_1.x)), vec2<f32>(-2041f, 2540f), !var_2.zx).x), vec3<bool>(var_2.x | !var_0.a, (-56925i <= var_1.x) == all(vec4<bool>(false, arg_1.x, true, arg_1.x)), arg_1.x)), var_2);
    return _wgslsmith_mult_u32(u_input.a.x, arg_0.x);
}

fn func_2(arg_0: vec3<f32>, arg_1: f32, arg_2: vec3<u32>, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.x, arg_0.x)));
    var var_1 = arg_2;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(arg_0.x)), -988f)));
    var var_3 = vec4<u32>(func_4(u_input.a.xwy & (_wgslsmith_add_vec3_u32(u_input.a.yxw, vec3<u32>(arg_3.a.x, arg_2.x, arg_2.x)) & _wgslsmith_add_vec3_u32(arg_2, vec3<u32>(0u, var_1.x, arg_3.a.x))), select(func_3(vec4<i32>(1i, -68443i, 1i, 1i), -vec4<i32>(-47385i, 29471i, 35385i, 1i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(446f, arg_1)), vec2<bool>(false, true)), arg_3.c.xx, arg_3.d.zx)), min(~1u, ~(~_wgslsmith_mod_u32(82660u, arg_2.x))), arg_2.x, arg_3.a.x);
    var_2 = _wgslsmith_f_op_vec2_f32(min(arg_0.zx, arg_0.zy));
    return vec2<bool>(all(select(!(!vec3<bool>(arg_3.d.x, arg_3.c.x, arg_3.c.x)), select(vec3<bool>(true, false, false), arg_3.d, true), _wgslsmith_f_op_f32(sign(arg_0.x)) < _wgslsmith_div_f32(arg_0.x, arg_1))), _wgslsmith_dot_vec3_i32(~vec3<i32>(-1i, -1i, 10120i), vec3<i32>(select(0i, -34751i, arg_3.d.x), _wgslsmith_div_i32(1i, -11642i), _wgslsmith_sub_i32(13831i, 1i))) > ~reverseBits(select(-4177i, 1474i, arg_3.d.x)));
}

fn func_1() -> bool {
    var var_0 = Struct_3(true);
    let var_1 = !select(select(select(!vec2<bool>(false, var_0.a), func_2(vec3<f32>(671f, -329f, -215f), 522f, vec3<u32>(u_input.a.x, 0u, u_input.a.x), Struct_1(u_input.a, 2525f, vec3<bool>(true, false, false), vec3<bool>(var_0.a, var_0.a, var_0.a))), !var_0.a), select(!vec2<bool>(true, var_0.a), vec2<bool>(false, var_0.a), !vec2<bool>(false, var_0.a)), -184f == _wgslsmith_f_op_f32(select(431f, -388f, var_0.a))), vec2<bool>(var_0.a, true), !select(vec2<bool>(var_0.a, true), select(vec2<bool>(var_0.a, false), vec2<bool>(var_0.a, var_0.a), var_0.a), vec2<bool>(true, true)));
    var_0 = Struct_3(true);
    let var_2 = Struct_5(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_div_vec2_f32(vec2<f32>(-1056f, -530f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-500f, -317f), vec2<f32>(517f, 190f), var_1.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(741f, 1267f) * vec2<f32>(-453f, -365f))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(533f, 471f))))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), Struct_4(Struct_2(false, Struct_1(~vec4<u32>(0u, 4294967295u, 48216u, u_input.a.x), _wgslsmith_f_op_f32(286f * -455f), !vec3<bool>(var_1.x, var_1.x, var_0.a), !vec3<bool>(var_1.x, var_0.a, true))), ~vec2<i32>(-51883i, -8245i) | firstLeadingBit(select(vec2<i32>(1i, -12372i), vec2<i32>(52087i, -20863i), var_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-696f))), u_input.a.ywx, Struct_2(false, Struct_1(min(u_input.a, u_input.a), _wgslsmith_f_op_f32(sign(-2313f)), !vec3<bool>(var_0.a, var_1.x, false), vec3<bool>(var_1.x, var_1.x, var_0.a)))), Struct_2(reverseBits(2147483647i) < _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -49586i), ~vec2<i32>(2147483647i, 2147483647i)), Struct_1(u_input.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -640f), -108f, true)), !vec3<bool>(var_1.x, false, false), vec3<bool>(any(var_1), !var_1.x, any(vec3<bool>(false, false, var_0.a))))), Struct_4(Struct_2(all(var_1), Struct_1(~vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 0u), -2065f, !vec3<bool>(false, var_0.a, true), !vec3<bool>(true, var_1.x, var_0.a))), _wgslsmith_sub_vec2_i32(-vec2<i32>(-1286i, 0i), _wgslsmith_add_vec2_i32(vec2<i32>(-3156i, -53460i), vec2<i32>(-15905i, -45156i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -950f), -1000f, func_3(vec4<i32>(2906i, 52795i, 1i, -2147483647i), vec4<i32>(-62039i, 1i, 2147483647i, -2147483647i), vec2<f32>(1000f, 367f), var_1).x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-847f)))), _wgslsmith_mod_vec3_u32(reverseBits(~vec3<u32>(4294967295u, u_input.a.x, 37378u)), u_input.a.xzy), Struct_2(var_0.a, Struct_1(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x), 486f, vec3<bool>(false, var_0.a, var_0.a), vec3<bool>(true, true, true)))));
    let var_3 = Struct_2(!all(!var_2.c.a.b.c), var_2.e.a.b);
    return !var_3.b.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(!(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false))));
    let var_1 = Struct_3(!func_1());
    var var_2 = Struct_4(Struct_2(all(!vec3<bool>(var_1.a, false, true)), Struct_1(u_input.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-1147f)), 543f)), !vec3<bool>(var_0.x, var_1.a, var_0.x), !vec3<bool>(var_0.x, var_1.a, var_1.a))), _wgslsmith_add_vec2_i32(vec2<i32>(reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-32867i, -11050i), vec2<i32>(-1i, 8161i))), max(i32(-1i) * -18i, _wgslsmith_sub_i32(-22944i, -2147483647i))), _wgslsmith_mod_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(25202i, 5821i), -(~vec2<i32>(7993i, -7668i)))), 936f, _wgslsmith_div_vec3_u32(~u_input.a.wyy, vec3<u32>(_wgslsmith_add_u32(_wgslsmith_add_u32(u_input.a.x, u_input.a.x), 7422u), u_input.a.x, ~min(40949u, u_input.a.x))), Struct_2(false || !var_0.x, Struct_1(u_input.a, _wgslsmith_f_op_f32(-682f + _wgslsmith_f_op_f32(1000f - 1979f)), var_0, vec3<bool>(var_0.x, any(vec4<bool>(false, var_1.a, var_1.a, true)), false && var_1.a))));
    var_2 = Struct_4(var_2.a, _wgslsmith_sub_vec2_i32(var_2.b, vec2<i32>(firstTrailingBit(_wgslsmith_add_i32(0i, var_2.b.x)), -var_2.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-1601f)), _wgslsmith_f_op_f32(-var_2.e.b.b), var_1.a)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(var_2.a.b.b)), _wgslsmith_div_f32(var_2.e.b.b, var_2.c)))), -828f), firstTrailingBit(var_2.d), var_2.a);
    let var_3 = ~(~_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, _wgslsmith_dot_vec4_u32(var_2.a.b.a, vec4<u32>(var_2.a.b.a.x, 34946u, 1u, var_2.a.b.a.x))), ~_wgslsmith_add_vec2_u32(var_2.d.xz, var_2.d.zx)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(var_2.b.x, var_2.b.x, 12960i), -abs(_wgslsmith_clamp_vec2_i32(-vec2<i32>(1i, 2147483647i), reverseBits(var_2.b), ~var_2.b)));
}

