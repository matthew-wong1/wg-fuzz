struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: vec2<bool>, arg_3: vec2<i32>) -> vec2<u32> {
    var var_0 = Struct_1(-11126i);
    var var_1 = !vec4<bool>(false, false, true, _wgslsmith_mod_i32(_wgslsmith_div_i32(32708i, 23339i), _wgslsmith_sub_i32(-26272i, 34221i)) <= _wgslsmith_dot_vec3_i32(-vec3<i32>(arg_0.b.a, -2147483647i, u_input.c), ~vec3<i32>(-10916i, 1i, var_0.a)));
    var var_2 = arg_0.c;
    let var_3 = arg_0.b;
    var_2 = var_1.x;
    return vec2<u32>(4294967295u, ~_wgslsmith_clamp_u32(select(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(56564u, arg_1, 10850u)), 4294967295u, true), ~arg_1 >> (~arg_1 % 32u), ~0u));
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = true;
    var var_1 = u_input.a;
    return vec4<bool>(true, var_0, var_0, select(false, !var_0, all(vec3<bool>(var_0, all(vec2<bool>(var_0, var_0)), true))));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: u32) -> Struct_2 {
    let var_0 = firstTrailingBit(firstTrailingBit(_wgslsmith_mult_vec2_u32(func_2(Struct_2(false, Struct_1(u_input.c), true, -744f), arg_3, vec2<bool>(false, false), abs(vec2<i32>(u_input.c, arg_1.a))), select(select(vec2<u32>(17273u, 13827u), arg_2, vec2<bool>(false, false)), func_2(Struct_2(false, arg_1, false, arg_0.x), u_input.a, vec2<bool>(true, true), vec2<i32>(arg_1.a, arg_1.a)), true))));
    var var_1 = !(!func_3(Struct_1(u_input.c >> (var_0.x % 32u))));
    var var_2 = abs(abs(abs(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 29443u, 0u, 29276u), vec4<u32>(u_input.a, var_0.x, var_0.x, var_0.x)) | vec4<u32>(1u, 38952u, 1u, 14250u))));
    var var_3 = vec3<f32>(1333f, arg_0.x, arg_0.x);
    var_2 = ~vec4<u32>(~_wgslsmith_clamp_u32(51685u & arg_3, firstLeadingBit(1u), firstTrailingBit(0u)), arg_2.x ^ select(var_0.x >> (arg_3 % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 29420u, arg_2.x, var_2.x), vec4<u32>(708u, var_2.x, var_0.x, 7426u)), true), var_2.x, u_input.b.x);
    return Struct_2(true, Struct_1(-min(~u_input.c, ~18098i)), 1000f == _wgslsmith_div_f32(-471f, _wgslsmith_f_op_f32(var_3.x - arg_0.x)), _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(-var_3.x)))));
}

fn func_4(arg_0: bool, arg_1: Struct_2) -> Struct_2 {
    let var_0 = func_1(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1.d, _wgslsmith_f_op_f32(abs(arg_1.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-211f * -1111f))))), arg_1.b, ~(~(~vec2<u32>(16607u, u_input.a)) ^ ~reverseBits(u_input.b.zy)), 59804u).b;
    let var_1 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-173f, arg_1.d, -525f) * vec3<f32>(arg_1.d, arg_1.d, 220f)))))), Struct_1(~(-2147483647i)), u_input.b.yy, u_input.a).b;
    let var_2 = vec2<i32>(firstTrailingBit(u_input.c), u_input.c);
    let var_3 = var_0;
    var var_4 = !(!(!select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(false, arg_1.a, false), any(vec4<bool>(false, arg_1.c, true, arg_0)))));
    return func_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_1.d, arg_1.d, 770f))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1.d, -138f, arg_1.d))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1292f, 327f, 399f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.d, arg_1.d, arg_1.d), vec3<f32>(arg_1.d, 757f, arg_1.d), vec3<bool>(false, arg_1.c, arg_0)))))))), Struct_1(-1i), ~_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, reverseBits(1u)), ~_wgslsmith_div_vec2_u32(vec2<u32>(0u, u_input.b.x), vec2<u32>(10907u, u_input.b.x))), _wgslsmith_dot_vec3_u32(u_input.b, min(u_input.b, ~(~u_input.b))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_2 {
    let var_0 = -vec3<i32>(max(~_wgslsmith_dot_vec2_i32(vec2<i32>(0i, arg_2.a), vec2<i32>(2147483647i, -59280i)), _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.c, arg_3.a, -2147483647i), _wgslsmith_div_vec3_i32(vec3<i32>(-1i, 2147483647i, u_input.c), vec3<i32>(2147483647i, arg_1.a, u_input.c)))), max(~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.a, -2147483647i, 27623i), vec3<i32>(arg_1.a, arg_0.b.a, arg_0.b.a)), u_input.c), arg_3.a);
    var var_1 = arg_0.b;
    var_1 = Struct_1(_wgslsmith_sub_i32(var_0.x, 2147483647i));
    var var_2 = arg_0.c;
    var_1 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1022f, arg_0.d, 319f)))) - vec3<f32>(arg_0.d, _wgslsmith_f_op_f32(sign(-2059f)), arg_0.d))), func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d, 240f, 1761f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-204f, arg_0.d, 1570f))), arg_1, firstLeadingBit(vec2<u32>(1u, ~u_input.b.x)), abs(0u)).b, firstTrailingBit(~firstTrailingBit(vec2<u32>(23150u, 1u))) << (select(func_2(Struct_2(false, arg_2, true, -624f), func_2(Struct_2(arg_0.c, Struct_1(-2147483647i), true, -993f), 19521u, vec2<bool>(true, arg_0.a), vec2<i32>(-2147483647i, 47668i)).x, vec2<bool>(true, true), vec2<i32>(arg_2.a, 0i)), ~u_input.b.xz, true) % vec2<u32>(32u)), u_input.a).b;
    return Struct_2(any(vec4<bool>(arg_0.c, any(vec2<bool>(arg_0.a, true)), true, false)), func_4(func_3(func_1(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0.d, arg_0.d, 1143f))), Struct_1(-15124i), vec2<u32>(u_input.b.x, 97588u), u_input.a).b).x, Struct_2(arg_0.c, func_4(true, Struct_2(false, Struct_1(arg_0.b.a), arg_0.a, -621f)).b, arg_0.a, _wgslsmith_div_f32(-737f, _wgslsmith_f_op_f32(arg_0.d + arg_0.d)))).b, !(!arg_0.a), arg_0.d);
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32, arg_3: vec2<f32>) -> Struct_2 {
    var var_0 = countOneBits(min(vec4<u32>(~u_input.a & _wgslsmith_mult_u32(u_input.b.x, u_input.b.x), ~(~u_input.b.x), u_input.a, max(_wgslsmith_mod_u32(7555u, 1u), ~26767u)), countOneBits(countOneBits(vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a)))));
    var var_1 = arg_3.x < _wgslsmith_div_f32(1721f, arg_0.d);
    var var_2 = ~(~_wgslsmith_clamp_u32(~u_input.a, abs(var_0.x), u_input.b.x | 4294967295u)) > 0u;
    var var_3 = arg_0.b;
    var_2 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(42340u, 15691u, 1u, u_input.a)), ~vec4<u32>(var_0.x, 70015u, 27605u, var_0.x)) & 24361u, _wgslsmith_dot_vec3_u32(~(vec3<u32>(30922u, var_0.x, var_0.x) | u_input.b), u_input.b), _wgslsmith_mod_u32(45696u, _wgslsmith_mod_u32(u_input.b.x & u_input.a, _wgslsmith_add_u32(1u, var_0.x)))) >= (func_2(Struct_2(all(vec2<bool>(arg_0.a, true)), arg_1, any(vec4<bool>(true, true, arg_0.c, arg_0.a)), _wgslsmith_f_op_f32(1276f - -415f)), 23824u, select(vec2<bool>(false, false), vec2<bool>(true, true), arg_0.c), vec2<i32>(firstLeadingBit(arg_0.b.a), ~0i)).x | var_0.x);
    return func_4(true == arg_0.a, func_4(!all(!vec3<bool>(true, arg_0.a, true)), Struct_2(func_5(func_1(vec3<f32>(-1000f, arg_3.x, arg_3.x), arg_1, vec2<u32>(1u, var_0.x), 0u), arg_1, func_4(true, Struct_2(true, arg_0.b, true, -1626f)).b, Struct_1(arg_0.b.a)).a, arg_0.b, false, func_5(Struct_2(arg_0.c, arg_1, false, arg_3.x), func_5(Struct_2(false, Struct_1(arg_0.b.a), arg_0.c, -230f), Struct_1(4665i), arg_0.b, arg_0.b).b, arg_0.b, Struct_1(-2147483647i)).d)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = !(!(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, 1562f, var_0)) * 498f) >= 218f));
    let var_2 = func_6(func_5(func_4(any(vec3<bool>(var_1, var_0, var_0)), func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-331f, 484f, -143f) + vec3<f32>(-1467f, 592f, 174f)), Struct_1(u_input.c), u_input.b.xx, 0u)), func_1(vec3<f32>(1561f, _wgslsmith_f_op_f32(min(-1000f, 209f)), -1000f), func_1(vec3<f32>(1442f, -629f, 589f), Struct_1(u_input.c), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 4294967295u), u_input.b.yx), _wgslsmith_sub_u32(4294967295u, u_input.b.x)).b, firstTrailingBit(vec2<u32>(1u, u_input.a)), _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(u_input.a, 32506u, 16960u)), u_input.b)).b, func_4(var_1, func_4(true, func_4(true, Struct_2(var_0, Struct_1(u_input.c), false, -1906f)))).b, Struct_1(~28179i)), Struct_1(2147483647i), func_5(Struct_2(true, func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(123f, 1802f, 225f) - vec3<f32>(-994f, -1148f, 154f)), func_5(Struct_2(var_1, Struct_1(50156i), var_0, -490f), Struct_1(u_input.c), Struct_1(u_input.c), Struct_1(-40277i)).b, _wgslsmith_sub_vec2_u32(u_input.b.zz, vec2<u32>(1u, 1u)), _wgslsmith_mult_u32(u_input.b.x, 28285u)).b, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1551f))), func_4(true, func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1497f, 874f, -2977f)), Struct_1(-1i), vec2<u32>(u_input.b.x, u_input.a), ~1u)).b, func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1516f, -415f, 1921f))), func_4(var_0, Struct_2(var_0, Struct_1(u_input.c), var_1, -920f)).b, ~vec2<u32>(1u, 48192u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, 51431u, 18987u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.b.x), vec4<u32>(76978u, 6274u, 0u, u_input.a)))).b, Struct_1(u_input.c ^ u_input.c)).d, vec2<f32>(_wgslsmith_f_op_f32(floor(-966f)), _wgslsmith_f_op_f32(floor(func_4(true, Struct_2(var_1, Struct_1(u_input.c), var_1, 575f)).d))));
    let var_3 = func_6(var_2, Struct_1(u_input.c), _wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-906f - var_2.d), 970f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.d, var_2.d)), !(!vec2<bool>(var_0, var_1)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1006f, _wgslsmith_f_op_f32(var_2.d - 495f)) + vec2<f32>(var_2.d, 734f))));
    let var_4 = var_3.b;
    var var_5 = vec3<f32>(-694f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.d)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-348f - var_2.d))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.d, var_3.d))))), _wgslsmith_f_op_f32(-func_5(Struct_2(false, func_5(var_2, var_4, Struct_1(2147483647i), Struct_1(var_2.b.a)).b, any(vec2<bool>(true, false)), var_2.d), var_4, Struct_1(abs(var_2.b.a)), var_2.b).d));
    var var_6 = func_5(func_5(func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.d, var_5.x, var_3.d)), func_1(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_3.d, var_5.x, var_5.x))), Struct_1(1i), u_input.b.yy, ~u_input.a).b, u_input.b.xz, u_input.a), var_3.b, func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(151f, 337f, 711f), vec3<f32>(var_2.d, 2091f, var_5.x), var_2.a))), func_4(false, func_4(false, Struct_2(var_0, var_3.b, true, 1000f))).b, ~(vec2<u32>(0u, u_input.a) | u_input.b.yz), _wgslsmith_add_u32(u_input.b.x, 1u)).b, func_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_5.x, 1724f, var_3.d) + vec3<f32>(var_5.x, var_5.x, var_5.x)))), func_5(var_3, func_4(true, Struct_2(var_3.a, Struct_1(-9379i), true, 1667f)).b, var_2.b, var_4).b, ~(~vec2<u32>(u_input.a, 59326u)), 0u).b), var_2.b, func_5(func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.d, -1000f, var_2.d) + vec3<f32>(-303f, var_3.d, var_2.d)), func_5(var_2, Struct_1(-2147483647i), func_1(vec3<f32>(617f, var_5.x, -198f), Struct_1(-6423i), vec2<u32>(1u, u_input.a), u_input.b.x).b, var_3.b).b, _wgslsmith_clamp_vec2_u32(max(u_input.b.xy, u_input.b.yz), u_input.b.yy, max(u_input.b.yy, u_input.b.yy)), 0u), func_5(func_1(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(454f, 1278f, -329f))), var_4, ~u_input.b.zx, u_input.b.x), var_2.b, func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_5.x, var_2.d, var_3.d)), var_2.b, u_input.b.xx, 4294967295u).b, func_6(func_5(var_2, Struct_1(u_input.c), var_2.b, var_3.b), func_5(Struct_2(false, Struct_1(u_input.c), false, 432f), var_4, var_2.b, var_2.b).b, var_5.x, _wgslsmith_f_op_vec2_f32(-var_5.yy)).b).b, Struct_1(firstLeadingBit(2147483647i) & _wgslsmith_mult_i32(var_4.a, -64158i)), Struct_1(-var_4.a)).b, Struct_1(36565i)).b;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b.x);
}

