struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: bool,
    d: vec2<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: bool,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_3,
    d: vec3<f32>,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: f32,
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: Struct_4, arg_3: vec4<u32>) -> u32 {
    var var_0 = !vec4<bool>(all(select(vec2<bool>(true, arg_2.c.b.x), vec2<bool>(arg_0.c, arg_2.c.c), true)), false, _wgslsmith_f_op_f32(-215f * _wgslsmith_f_op_f32(-1017f + arg_0.a.a)) == _wgslsmith_f_op_f32(f32(-1f) * -1450f), all(select(arg_2.c.b.zzx, vec3<bool>(arg_0.c, false, true), arg_2.c.d.d.x & true)));
    var_0 = vec4<bool>(!(any(arg_2.c.b) & true) || var_0.x, !var_0.x, _wgslsmith_dot_vec3_u32(select(vec3<u32>(arg_2.a.c, arg_3.x, 4294967295u), vec3<u32>(87409u, arg_2.c.d.b, 1u), all(vec3<bool>(false, true, arg_2.c.c))), u_input.a) < arg_2.a.c, true);
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1345f) - arg_2.c.d.a.a))), -(~arg_2.c.d.a.b), ~arg_2.a.c), _wgslsmith_mod_u32(arg_2.b.c, 49183u), arg_0.b == (_wgslsmith_div_u32(u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(17622u, arg_0.a.c), vec2<u32>(arg_2.a.c, 9668u))) ^ arg_3.x), arg_2.c.d.d);
    let var_2 = all(arg_0.d);
    var_0 = !(!arg_2.c.b);
    return 66602u;
}

fn func_2(arg_0: bool, arg_1: vec2<f32>) -> vec4<u32> {
    let var_0 = min(abs(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 1i), vec2<i32>(-31242i, -3254i)), -17303i, 30145i, _wgslsmith_mult_i32(-1i, 0i))), vec4<i32>(abs(-2147483647i), firstTrailingBit(~1i), 26842i, reverseBits(0i) << (_wgslsmith_div_u32(0u, 4294967295u) % 32u))) & vec4<i32>(firstTrailingBit((-1i >> (u_input.a.x % 32u)) >> (_wgslsmith_div_u32(0u, 50708u) % 32u)), _wgslsmith_div_i32(1i, -35860i), ~_wgslsmith_sub_i32(29976i, 15557i) >> (~func_3(Struct_2(Struct_1(-916f, vec4<i32>(2147483647i, -2147483647i, 2147483647i, 2147483647i), u_input.a.x), u_input.a.x, arg_0, vec2<bool>(arg_0, false)), vec2<i32>(-2147483647i, -16167i), Struct_4(Struct_1(1155f, vec4<i32>(-1i, -64327i, 0i, 11041i), 27026u), Struct_1(arg_1.x, vec4<i32>(-2147483647i, 37340i, 1i, 1i), 1u), Struct_3(vec2<i32>(-1i, 1i), vec4<bool>(arg_0, true, true, arg_0), arg_0, Struct_2(Struct_1(arg_1.x, vec4<i32>(1i, 2147483647i, 0i, -1i), u_input.a.x), u_input.a.x, arg_0, vec2<bool>(false, false))), vec3<f32>(arg_1.x, -956f, 452f), -2147483647i), vec4<u32>(u_input.a.x, 18588u, 25239u, u_input.a.x)) % 32u), 1i);
    let var_1 = 0i;
    var var_2 = ~_wgslsmith_sub_i32(max(_wgslsmith_mod_i32(2147483647i, var_1), abs(var_0.x)), var_1) | (i32(-1i) * -var_1);
    let var_3 = _wgslsmith_mod_vec4_i32(~var_0, var_0);
    let var_4 = Struct_3(firstLeadingBit(vec2<i32>(0i, var_1)), select(vec4<bool>(!(!arg_0), true, arg_0, true), !(!select(vec4<bool>(true, false, false, arg_0), vec4<bool>(arg_0, arg_0, false, false), false)), select(vec4<bool>(true, arg_0 | true, true, any(vec2<bool>(arg_0, false))), vec4<bool>(true, false, true, any(vec3<bool>(arg_0, arg_0, true))), !select(vec4<bool>(false, arg_0, false, true), vec4<bool>(arg_0, true, false, true), true))), !all(select(select(vec2<bool>(false, arg_0), vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, true)), vec2<bool>(arg_0, arg_0), true)), Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.x))), var_0, ~(~655u)), 7081u, true, select(vec2<bool>(-1i > var_1, !arg_0), select(select(vec2<bool>(arg_0, arg_0), vec2<bool>(true, true), arg_0), select(vec2<bool>(true, arg_0), vec2<bool>(true, arg_0), vec2<bool>(false, arg_0)), true), true)));
    return vec4<u32>(~var_4.d.a.c, _wgslsmith_div_u32(u_input.a.x | func_3(var_4.d, vec2<i32>(var_3.x, var_1), Struct_4(var_4.d.a, var_4.d.a, var_4, vec3<f32>(-433f, -1167f, 142f), var_1), countOneBits(vec4<u32>(40517u, 1u, var_4.d.b, 9092u))), abs(u_input.a.x >> (~0u % 32u))), _wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, 18758u, 36943u, u_input.a.x), abs(vec4<u32>(u_input.a.x, u_input.a.x, var_4.d.b, var_4.d.a.c))), var_4.d.b), abs(u_input.a.x));
}

fn func_4(arg_0: vec4<u32>, arg_1: i32, arg_2: i32, arg_3: Struct_1) -> Struct_4 {
    var var_0 = select(arg_3.b.zzw, vec3<i32>(0i, ~abs(arg_1), arg_1) | vec3<i32>(arg_2, arg_3.b.x, _wgslsmith_div_i32(arg_2, -2147483647i) | _wgslsmith_dot_vec3_i32(arg_3.b.ywz, vec3<i32>(-2147483647i, -1i, arg_3.b.x))), true);
    let var_1 = reverseBits(arg_1);
    let var_2 = abs(arg_3.b.zzx) | min(arg_3.b.zxz, vec3<i32>(17716i, arg_1, arg_2));
    var var_3 = Struct_4(Struct_1(arg_3.a, arg_3.b, arg_0.x), arg_3, Struct_3(var_0.yx, select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(floor(-764f)) == _wgslsmith_f_op_f32(-arg_3.a), Struct_2(arg_3, ~1u, all(vec4<bool>(true, false, true, true)), vec2<bool>(all(vec2<bool>(true, true)), true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-881f, arg_3.a, arg_3.a), vec3<f32>(arg_3.a, 105f, arg_3.a))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.a, 875f, arg_3.a)))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(881f, arg_3.a, arg_3.a) * vec3<f32>(arg_3.a, -1000f, -363f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-906f, -1500f, -776f)))))), arg_1);
    var var_4 = var_3.d.zx;
    return Struct_4(arg_3, Struct_1(arg_3.a, arg_3.b, func_3(var_3.c.d, vec2<i32>(0i, var_3.b.b.x), Struct_4(Struct_1(624f, vec4<i32>(arg_3.b.x, -45960i, var_3.a.b.x, 51835i), arg_3.c), Struct_1(var_4.x, arg_3.b, 82051u), var_3.c, vec3<f32>(var_4.x, arg_3.a, -273f), var_3.c.a.x), vec4<u32>(33535u, arg_3.c, 1u, arg_3.c)) & arg_0.x), var_3.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(var_4.x, -318f), _wgslsmith_f_op_f32(f32(-1f) * -2419f), var_4.x), vec3<f32>(-522f, _wgslsmith_f_op_f32(-var_4.x), _wgslsmith_f_op_f32(var_4.x - 694f)))), -16842i);
}

fn func_5(arg_0: f32, arg_1: Struct_4) -> Struct_1 {
    let var_0 = arg_1.a.c;
    var var_1 = min(~func_2(true, arg_1.d.yy).wxw, vec3<u32>(4294967295u, 42902u, (u_input.a.x & arg_1.b.c) << (_wgslsmith_mult_u32(0u, arg_1.c.d.b) % 32u)) >> (vec3<u32>(var_0, _wgslsmith_div_u32(abs(u_input.a.x), 4294967295u), ~1u) % vec3<u32>(32u)));
    var_1 = u_input.a;
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(arg_1.b.a))));
    var var_3 = vec2<i32>(_wgslsmith_mult_i32(-arg_1.e, arg_1.a.b.x), arg_1.c.a.x) ^ _wgslsmith_sub_vec2_i32(-arg_1.c.a, arg_1.a.b.zy);
    return Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-265f - var_2))))), arg_1.b.b | -arg_1.b.b, (~_wgslsmith_mod_u32(arg_1.c.d.b, arg_1.c.d.a.c) << (var_0 % 32u)) << (abs(12239u) % 32u));
}

fn func_1(arg_0: i32, arg_1: vec2<i32>, arg_2: u32) -> vec4<u32> {
    let var_0 = _wgslsmith_dot_vec2_u32(~(~u_input.a.zx | u_input.a.zz), u_input.a.yy);
    var var_1 = Struct_2(func_5(-759f, func_4(func_2(any(vec2<bool>(false, false)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(486f, 1073f))), 16571i, 1i, Struct_1(1f, vec4<i32>(-2147483647i, -3724i, -2744i, 2147483647i), ~13928u))), ~var_0, false, vec2<bool>(true, true));
    let var_2 = select(select(select(vec3<bool>(!var_1.d.x, var_1.c, all(var_1.d)), select(!vec3<bool>(false, var_1.d.x, false), !vec3<bool>(var_1.d.x, var_1.d.x, true), false), var_1.c), vec3<bool>(var_1.d.x, true, !any(vec3<bool>(var_1.c, var_1.d.x, true))), func_4(countOneBits(abs(vec4<u32>(76290u, arg_2, 4294967295u, 1u))), select(_wgslsmith_div_i32(-1i, arg_1.x), firstLeadingBit(-1i), var_1.d.x), arg_1.x, Struct_1(_wgslsmith_f_op_f32(-1970f + var_1.a.a), vec4<i32>(56042i, arg_0, -2147483647i, 1i), ~arg_2)).c.b.yzw), !select(!vec3<bool>(true, false, var_1.c), select(!vec3<bool>(false, false, var_1.d.x), vec3<bool>(var_1.c, var_1.d.x, var_1.d.x), var_1.d.x), func_4(vec4<u32>(21379u, 55679u, 1u, u_input.a.x), -1i | arg_1.x, _wgslsmith_mult_i32(-25849i, arg_0), var_1.a).c.b.wwx), true);
    let var_3 = ~vec2<u32>(var_1.a.c, _wgslsmith_sub_u32(58605u, var_0));
    let var_4 = func_4(~select(vec4<u32>(_wgslsmith_sub_u32(var_1.b, var_1.b), ~1u, var_1.b, _wgslsmith_add_u32(var_3.x, 1u)), abs(~vec4<u32>(var_3.x, arg_2, 6077u, 1u)), false), ~abs(arg_0), 0i, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -959f) * _wgslsmith_f_op_f32(439f + var_1.a.a)), vec4<i32>(~func_5(var_1.a.a, Struct_4(Struct_1(288f, var_1.a.b, 58533u), var_1.a, Struct_3(vec2<i32>(-2147483647i, var_1.a.b.x), vec4<bool>(true, true, false, var_1.c), var_1.c, Struct_2(Struct_1(2087f, var_1.a.b, var_3.x), 5168u, var_1.c, vec2<bool>(var_1.d.x, var_1.c))), vec3<f32>(538f, var_1.a.a, var_1.a.a), var_1.a.b.x)).b.x, var_1.a.b.x, -25370i, -2147483647i), 1u)).c.d;
    return ~abs(~(~vec4<u32>(var_0, 4294967295u, arg_2, var_0)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(-1i, vec2<i32>(1i, 1i), ~firstLeadingBit(43038u));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.xzz | ~func_2(true, vec2<f32>(-716f, -1289f)).yxw, ~var_0, 461f);
}

