struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<bool>,
    d: vec2<bool>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: u32 = 21672u;

var<private> global1: vec2<bool>;

var<private> global2: vec4<u32> = vec4<u32>(0u, 48452u, 9264u, 2076u);

var<private> global3: Struct_1;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<i32> {
    global1 = select(select(select(global3.c, global3.c, true && !global1.x), vec2<bool>(global1.x, !(false || global1.x)), abs(-8624i | global3.e) < ~countOneBits(global3.b.x)), select(!select(select(vec2<bool>(global1.x, false), vec2<bool>(global3.d.x, global3.c.x), true), vec2<bool>(true, true), !global1.x), !select(!global3.c, !vec2<bool>(global3.d.x, global3.d.x), any(vec3<bool>(global3.c.x, true, false))), global1.x), select(select(!global3.d, vec2<bool>(u_input.a == u_input.a, false), global3.c), !select(!global3.d, global3.c, select(vec2<bool>(global3.c.x, global3.c.x), vec2<bool>(false, false), false)), global3.c.x));
    global3 = Struct_1(global3.b, global3.a, !select(vec2<bool>(global3.d.x, true), select(global3.c, global3.d, vec2<bool>(global1.x, true)), global3.c), global3.d, i32(-1i) * -2147483647i);
    global0 = max(firstTrailingBit(global2.x | global2.x) >> ((1u ^ select(13881u, _wgslsmith_mod_u32(57513u, global2.x), true)) % 32u), 0u);
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -113f) + _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1074f - 466f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -207f)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-152f, -455f) - vec2<f32>(-1369f, 1286f)))))));
    var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2141f, 529f)) - vec2<f32>(1000f, var_0.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-823f, var_0.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1307f, var_0.x) + vec2<f32>(587f, var_0.x))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1330f, var_0.x))), vec2<f32>(-1913f, var_0.x)))))));
    return reverseBits(-global3.b.xx & select(global3.a.yz, abs(vec2<i32>(4658i, global3.a.x)) ^ (global3.a.yx << (vec2<u32>(global2.x, global2.x) % vec2<u32>(32u))), global3.c));
}

fn func_2(arg_0: i32) -> i32 {
    global0 = ~countOneBits(~_wgslsmith_add_u32(firstTrailingBit(86582u), global2.x));
    var var_0 = _wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(~(global3.a.zx << (global2.wy % vec2<u32>(32u))), global3.a.yz) & min(global3.a.xz, global3.b.yz), firstLeadingBit(func_3()), global3.b.yz);
    let var_1 = Struct_1(-((_wgslsmith_div_vec3_i32(vec3<i32>(arg_0, global3.b.x, 22050i), global3.a) ^ vec3<i32>(-26242i, var_0.x, var_0.x)) >> (global2.wxx % vec3<u32>(32u))), vec3<i32>(~_wgslsmith_mult_i32(~15234i, var_0.x), var_0.x, -2147483647i), global3.d, !global3.d, global3.b.x);
    let var_2 = Struct_1(global3.a, global3.b, global3.d, select(var_1.c, vec2<bool>(true, true), select(global3.d, vec2<bool>(false, global1.x), !select(vec2<bool>(false, true), vec2<bool>(true, global1.x), vec2<bool>(global3.d.x, global3.d.x)))), i32(-1i) * -508i);
    let var_3 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-328f, 956f) - vec2<f32>(-112f, 309f)))))));
    return 28402i;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1) -> u32 {
    var var_0 = -379f;
    global1 = arg_1.c;
    let var_1 = arg_1;
    global2 = ~_wgslsmith_add_vec4_u32(min(select(~vec4<u32>(global2.x, 24257u, global2.x, 0u), ~vec4<u32>(global2.x, global2.x, 0u, global2.x), !vec4<bool>(arg_1.c.x, true, true, true)), vec4<u32>(_wgslsmith_mult_u32(global2.x, global2.x), 1u, 4529u, global2.x)), abs(~min(vec4<u32>(global2.x, global2.x, global2.x, global2.x), vec4<u32>(0u, global2.x, 1u, global2.x))));
    var var_2 = -abs(vec2<i32>(59963i, ~2147483647i) << (~_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(global2.x, global2.x)) % vec2<u32>(32u)));
    return 69724u;
}

fn func_1(arg_0: i32, arg_1: i32) -> vec2<bool> {
    let var_0 = func_4(vec3<i32>(-arg_1, _wgslsmith_dot_vec4_i32(vec4<i32>(countOneBits(-39981i), func_2(arg_0), countOneBits(u_input.a), u_input.a), vec4<i32>(_wgslsmith_clamp_i32(arg_0, -2147483647i, arg_0), ~1i, -u_input.a, global3.a.x)), u_input.a), Struct_1(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-6398i, 1i, -15i, arg_0) << (vec4<u32>(global2.x, 23500u, global2.x, global2.x) % vec4<u32>(32u)), -vec4<i32>(arg_1, -15454i, arg_1, arg_1)), ~(u_input.a | -51656i), u_input.a), global3.a, select(global3.c, select(vec2<bool>(global3.c.x, true), select(vec2<bool>(global3.c.x, false), vec2<bool>(global1.x, true), global3.d), select(vec2<bool>(true, global3.d.x), vec2<bool>(global3.c.x, true), true)), !global3.d), vec2<bool>(global3.c.x, true), -(i32(-1i) * -7297i) >> (firstLeadingBit(3211u) % 32u)));
    global1 = !select(!select(vec2<bool>(global1.x, global1.x), select(vec2<bool>(true, false), vec2<bool>(true, global3.c.x), vec2<bool>(true, global3.c.x)), vec2<bool>(true, true)), !global3.d, true);
    let var_1 = 1u;
    global1 = select(select(select(global3.d, !global3.d, all(vec4<bool>(global1.x, true, false, global3.d.x)) | global3.d.x), select(vec2<bool>(all(vec3<bool>(global1.x, global3.d.x, true)), any(vec2<bool>(false, true))), select(global3.c, global3.d, true), all(vec4<bool>(global1.x, true, true, true))), select(vec2<bool>(false, all(global3.c)), select(vec2<bool>(true, true), global3.d, !vec2<bool>(global3.c.x, false)), true)), select(global3.c, global3.d, vec2<bool>(true, true)), global1.x);
    global1 = global3.c;
    return select(vec2<bool>(true, true & global3.d.x), !select(select(vec2<bool>(true, false), select(global3.d, vec2<bool>(global1.x, global1.x), global3.d), select(global3.d, vec2<bool>(global3.c.x, false), global1.x)), select(!vec2<bool>(global1.x, global3.d.x), vec2<bool>(global3.c.x, global3.c.x), !global3.c.x), select(!global3.c, select(global3.c, vec2<bool>(false, global1.x), false), select(global3.d, vec2<bool>(false, global1.x), global3.d))), false | global1.x);
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: vec4<i32>) -> Struct_1 {
    global2 = abs(~(~(vec4<u32>(global2.x, 1u, 0u, 70738u) << (vec4<u32>(4294967295u, 1u, 1u, 50926u) % vec4<u32>(32u))))) & vec4<u32>(12922u, ~global2.x, 41158u, min(16493u, ~global2.x >> (12496u % 32u)));
    let var_0 = _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(898f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-560f * -284f)))));
    let var_1 = ~select(~arg_0.b.x, 34298i, ((-152f != var_0) && arg_0.c.x) != (any(global3.c) & all(vec2<bool>(arg_1, true))));
    let var_2 = select(!vec4<bool>(true, select(var_1 < var_1, true, global2.x < global2.x), global1.x, true), !select(vec4<bool>(true, !arg_1, 1000f < var_0, !global3.d.x), !vec4<bool>(false, global1.x, arg_1, global3.d.x), !(!vec4<bool>(arg_0.d.x, false, global3.c.x, global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0))) == _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-463f * -736f), _wgslsmith_f_op_f32(-var_0))), 578f)));
    global3 = arg_0;
    return arg_0;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<f32>) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(arg_3, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1642f * arg_3.x) + 1663f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) + -1358f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_3), _wgslsmith_f_op_vec2_f32(select(arg_3, vec2<f32>(arg_3.x, 1707f), arg_0.c)))))), arg_2.c));
    var var_1 = _wgslsmith_mod_vec3_u32(max(countOneBits(vec3<u32>(~global2.x, global2.x, 0u)), vec3<u32>(0u, 890u, 4294967295u)), vec3<u32>(~global2.x, _wgslsmith_clamp_u32(max(_wgslsmith_add_u32(8319u, 0u), ~global2.x), 151649u, global2.x), global2.x));
    let var_2 = ~firstLeadingBit(vec2<u32>(70066u, abs(87290u)));
    let var_3 = Struct_1(vec3<i32>(-1i) * -global3.a, arg_0.b, func_1((0i << ((global2.x >> (43139u % 32u)) % 32u)) | arg_1.b.x, arg_0.a.x), arg_1.c, ~arg_0.e);
    global1 = !var_3.d;
    return func_5(func_5(Struct_1(arg_1.a, vec3<i32>(-66969i, var_3.e | arg_1.e, arg_2.e), vec2<bool>(arg_2.d.x, true & arg_0.c.x), !select(arg_0.c, vec2<bool>(global1.x, false), arg_1.d), reverseBits(firstTrailingBit(arg_2.a.x))), any(select(var_3.c, select(vec2<bool>(true, false), vec2<bool>(arg_0.d.x, false), arg_1.c), arg_0.c)), _wgslsmith_clamp_vec4_i32(-vec4<i32>(arg_2.e, global3.b.x, arg_2.e, 1i), reverseBits(countOneBits(vec4<i32>(1i, -1i, 101866i, 1i))), vec4<i32>(~global3.b.x, _wgslsmith_mult_i32(u_input.a, 74085i), -global3.b.x, arg_1.e))), global1.x & (var_3.d.x && true), vec4<i32>(-2147483647i, func_5(func_5(Struct_1(arg_1.a, vec3<i32>(var_3.e, 35386i, arg_2.b.x), vec2<bool>(true, true), var_3.d, -103487i), false, vec4<i32>(-13869i, arg_2.b.x, arg_2.e, -70504i)), any(vec4<bool>(false, true, true, global1.x)), vec4<i32>(2147483647i, arg_0.e, global3.e, arg_0.b.x)).b.x, -(global3.e >> (0u % 32u)), firstTrailingBit(0i)) & -_wgslsmith_mod_vec4_i32(vec4<i32>(var_3.e, -23041i, 0i, arg_2.b.x) | vec4<i32>(1i, arg_1.b.x, 19227i, arg_2.e), _wgslsmith_mod_vec4_i32(vec4<i32>(global3.e, arg_2.e, arg_1.a.x, 0i), vec4<i32>(arg_0.a.x, arg_2.e, 17558i, global3.e)))).c;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_6(func_5(Struct_1(-global3.b | global3.a, -global3.a, func_1(10402i, 0i), select(!vec2<bool>(false, global1.x), global3.d, true), global3.a.x), any(select(global3.d, select(global3.c, global3.d, global1.x), false)), (vec4<i32>(u_input.a, global3.a.x, -2147483647i, -1i) >> (_wgslsmith_div_vec4_u32(vec4<u32>(0u, global2.x, global2.x, 1u), vec4<u32>(31832u, global2.x, 4294967295u, global2.x)) % vec4<u32>(32u))) << (min(max(vec4<u32>(4147u, 1u, 19130u, global2.x), vec4<u32>(global2.x, 0u, global2.x, 0u)), ~vec4<u32>(41045u, global2.x, global2.x, 80398u)) % vec4<u32>(32u))), Struct_1(vec3<i32>(-u_input.a, global3.b.x, 47490i), -abs(global3.b), !(!(!vec2<bool>(global3.d.x, global1.x))), global3.d, u_input.a), func_5(Struct_1(vec3<i32>(~0i, 1i, max(-2147483647i, u_input.a)), global3.b, vec2<bool>(true, true), vec2<bool>(global3.c.x, global3.c.x), global3.e), any(vec2<bool>(global1.x, true)), vec4<i32>(-1i) * -vec4<i32>(1i, global3.a.x, 56906i, u_input.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1260f)), vec2<f32>(827f, 618f))) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-881f, -210f))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1000f, 428f), vec2<f32>(-885f, 235f))))))));
    let var_0 = !(!all(!vec4<bool>(true, true, false, global3.c.x)));
    let var_1 = global2.yw;
    var var_2 = Struct_1(func_5(func_5(func_5(Struct_1(global3.a, vec3<i32>(u_input.a, 16726i, 0i), global3.d, vec2<bool>(global3.d.x, global1.x), global3.a.x), true & global1.x, vec4<i32>(10264i, u_input.a, -34720i, 0i) | vec4<i32>(0i, 16588i, 55179i, global3.b.x)), global1.x, max(-vec4<i32>(u_input.a, u_input.a, global3.b.x, global3.a.x), firstTrailingBit(vec4<i32>(0i, -29278i, 0i, -45176i)))), true, abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, 30916i, u_input.a, 18929i), vec4<i32>(global3.a.x, u_input.a, u_input.a, -2147483647i), vec4<i32>(-1i, u_input.a, global3.e, global3.b.x)) >> ((vec4<u32>(var_1.x, var_1.x, 8579u, 5532u) | vec4<u32>(global2.x, var_1.x, var_1.x, 1423u)) % vec4<u32>(32u)))).b, global3.b, global3.d, !func_1(-13958i, -50275i), _wgslsmith_add_i32(firstTrailingBit(-10310i) | 0i, ~_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(5218i, u_input.a), vec2<i32>(u_input.a, -5320i)), vec2<i32>(global3.b.x, u_input.a))));
    global0 = ~select(var_1.x, global2.x, all(vec2<bool>(func_6(Struct_1(global3.b, vec3<i32>(0i, global3.a.x, -3225i), vec2<bool>(false, true), vec2<bool>(global1.x, true), global3.b.x), Struct_1(vec3<i32>(var_2.a.x, 2147483647i, var_2.b.x), var_2.a, var_2.d, global3.c, -14892i), Struct_1(global3.b, global3.b, vec2<bool>(true, var_2.d.x), global3.d, var_2.e), vec2<f32>(312f, 1114f)).x, true)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.x);
}

