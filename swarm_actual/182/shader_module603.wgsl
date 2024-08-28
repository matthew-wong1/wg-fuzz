struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = arg_0;
    let var_1 = -(i32(-1i) * -16264i);
    let var_2 = !var_0.b.x;
    let var_3 = true || any(vec2<bool>(!(!arg_0.b.x), true));
    return firstTrailingBit(1i);
}

fn func_4(arg_0: vec2<i32>) -> u32 {
    let var_0 = abs(min(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), _wgslsmith_mult_vec2_u32(countOneBits(vec2<u32>(1u, 1u)), ~(~vec2<u32>(24717u, 11861u)))));
    var var_1 = true;
    var_1 = true;
    let var_2 = ~var_0.x << (4294967295u % 32u);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1766f))));
    return _wgslsmith_sub_u32(~var_0.x << (var_0.x % 32u), countOneBits(~reverseBits(countOneBits(var_2))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = arg_0;
    var_0 = Struct_1(~func_4(vec2<i32>(func_3(arg_0), -1i)), vec3<bool>(any(vec4<bool>(arg_1.b.x, true, select(true, false, arg_0.b.x), any(vec4<bool>(true, arg_0.b.x, true, arg_1.b.x)))), true, arg_1.b.x), _wgslsmith_f_op_vec3_f32(floor(arg_1.c)));
    let var_1 = arg_1;
    let var_2 = arg_0;
    let var_3 = arg_0;
    return arg_1;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    var var_0 = arg_0.c.zy;
    var var_1 = arg_0.a;
    var var_2 = vec4<i32>(abs(u_input.a.x), -(u_input.a.x >> (countOneBits(firstTrailingBit(93012u)) % 32u)), select(~firstLeadingBit(16346i), _wgslsmith_dot_vec2_i32(u_input.a.zz, vec2<i32>(u_input.a.x, u_input.a.x)) & _wgslsmith_mult_i32(20280i, -1023i), true) & _wgslsmith_sub_i32(~(-u_input.a.x), ~_wgslsmith_mod_i32(-43596i, u_input.a.x)), u_input.a.x);
    var_1 = 1u;
    let var_3 = func_2(func_2(arg_0, Struct_1(1u, select(select(arg_0.b, vec3<bool>(arg_0.b.x, false, arg_0.b.x), arg_0.b.x), arg_0.b, any(vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, false))), _wgslsmith_f_op_vec3_f32(arg_0.c - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, arg_0.c.x) - vec3<f32>(-1488f, arg_0.c.x, var_0.x))))), func_2(arg_0, func_2(Struct_1(0u, select(vec3<bool>(arg_0.b.x, false, arg_0.b.x), arg_0.b, false), _wgslsmith_f_op_vec3_f32(arg_0.c * vec3<f32>(arg_0.c.x, -650f, -319f))), Struct_1(21753u, arg_0.b, vec3<f32>(arg_0.c.x, arg_0.c.x, 1000f)))));
    return func_2(arg_0, Struct_1(abs(1u ^ var_3.a) ^ select(_wgslsmith_add_u32(1u, var_3.a), 4294967295u >> (1u % 32u), false), var_3.b, arg_0.c));
}

fn func_6(arg_0: Struct_1, arg_1: i32, arg_2: i32) -> bool {
    var var_0 = false;
    var var_1 = _wgslsmith_add_u32(_wgslsmith_mult_u32(select(~(~0u), arg_0.a, func_5(Struct_1(45276u, arg_0.b, arg_0.c)).b.x), countOneBits(~select(89685u, arg_0.a, false))), arg_0.a);
    var var_2 = func_2(arg_0, arg_0);
    let var_3 = 45561i;
    var var_4 = arg_0;
    return -var_3 > 1i;
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(1968f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2527f) + -1128f))), arg_0.x, 438f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-966f))))));
    let var_1 = Struct_1(1u, vec3<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)), func_6(func_5(func_2(Struct_1(4294967295u, vec3<bool>(true, false, false), vec3<f32>(arg_0.x, arg_0.x, -824f)), Struct_1(4294967295u, vec3<bool>(true, false, true), var_0.yyz))), _wgslsmith_sub_i32(u_input.a.x, abs(-35285i)), min(-41714i, reverseBits(u_input.a.x))), any(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(arg_0.yyw)))))));
    var_0 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.c.x))), -519f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.x), -1000f)) + _wgslsmith_f_op_f32(ceil(-856f))), 741f), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(arg_0 + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(arg_0))))))));
    let var_2 = ~u_input.a.xzx;
    let var_3 = var_1.a;
    return func_2(func_2(Struct_1(~(var_1.a & 13833u), select(func_5(Struct_1(0u, vec3<bool>(false, var_1.b.x, false), vec3<f32>(var_1.c.x, arg_0.x, var_0.x))).b, !vec3<bool>(false, var_1.b.x, true), !var_1.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.xwy) + var_1.c)), Struct_1(3065u, func_5(func_2(var_1, var_1)).b, arg_0.xxz)), func_2(var_1, var_1));
}

fn func_7(arg_0: f32, arg_1: Struct_1, arg_2: i32) -> vec3<bool> {
    let var_0 = Struct_1(arg_1.a, !vec3<bool>(arg_1.b.x, false, false), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(func_1(vec4<f32>(163f, -286f, arg_1.c.x, arg_0)).c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -661f, arg_1.c.x)), arg_1.b.x))))));
    var var_1 = func_2(arg_1, func_2(Struct_1(reverseBits(103205u ^ arg_1.a), var_0.b, _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(arg_1.c, var_0.c), var_0.c)), func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(292f, arg_1.c.x, var_0.c.x, 346f) + vec4<f32>(arg_1.c.x, 274f, var_0.c.x, arg_0)))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1106f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.x + arg_0) * _wgslsmith_f_op_f32(-1028f + arg_1.c.x)) + _wgslsmith_f_op_f32(sign(func_1(vec4<f32>(-1000f, 124f, arg_1.c.x, -1502f)).c.x))))));
    var var_3 = !vec3<bool>(true, 234f != _wgslsmith_f_op_f32(-arg_0), all(vec2<bool>(true, true)));
    let var_4 = !select(vec4<bool>(true != !var_3.x, -u_input.a.x <= reverseBits(-56404i), _wgslsmith_f_op_f32(ceil(1136f)) >= -1037f, all(func_1(vec4<f32>(-982f, -444f, -1000f, var_1.c.x)).b)), vec4<bool>(var_0.c.x == _wgslsmith_f_op_f32(f32(-1f) * -708f), true, !(true || var_1.b.x), select(false, true, false | var_1.b.x)), var_0.b.x);
    return func_2(var_0, Struct_1(_wgslsmith_sub_u32(_wgslsmith_sub_u32(arg_1.a, var_0.a) >> (var_1.a % 32u), ~var_0.a), select(vec3<bool>(arg_1.b.x, var_0.b.x, !var_1.b.x), !var_0.b, var_0.b.x), var_1.c)).b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(1u, vec3<bool>(!any(vec3<bool>(true, true, true)), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false)))), -28679i == _wgslsmith_dot_vec4_i32(u_input.a, countOneBits(vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, -2147483647i)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(468f, 795f, 295f) + vec3<f32>(196f, 405f, -972f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1030f, 254f, 1285f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1812f, -238f, -1597f)))))));
    let var_1 = Struct_1(firstTrailingBit(var_0.a), select(!(!select(var_0.b, var_0.b, var_0.b)), !func_7(_wgslsmith_f_op_f32(ceil(var_0.c.x)), func_1(vec4<f32>(292f, var_0.c.x, 1215f, var_0.c.x)), u_input.a.x), !var_0.b), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + var_0.c.x)), -340f));
    let var_2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(var_0.c.xx)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.c.zx))));
    let var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.c.x, 445f, var_2.x))) + _wgslsmith_f_op_vec3_f32(select(var_1.c, var_1.c, var_0.b))))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -196f), -330f, _wgslsmith_f_op_f32(-var_2.x)), !var_1.b));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(391f, 1859f) * _wgslsmith_f_op_f32(var_3.x - -413f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -182f) * _wgslsmith_f_op_f32(exp2(var_1.c.x)))) - -111f));
    let var_5 = func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, -489f, -1000f, 1448f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.c.x, var_0.c.x, 107f, -132f))))));
    let var_6 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(abs(var_6.c.zz)));
}

