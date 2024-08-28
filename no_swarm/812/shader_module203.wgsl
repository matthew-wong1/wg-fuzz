struct Struct_1 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec4<i32>,
    c: u32,
    d: vec4<f32>,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: vec2<f32>, arg_1: f32) -> vec4<bool> {
    let var_0 = !select(!(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true))), vec4<bool>(true, true, arg_1 >= _wgslsmith_f_op_f32(arg_0.x + 1525f), false), all(vec2<bool>(true, true)));
    return vec4<bool>(!(firstLeadingBit(u_input.b.x) > max(4294967295u, u_input.b.x)) & true, true, 71065u == (u_input.d >> (~(~4294967295u) % 32u)), var_0.x && false);
}

fn func_3(arg_0: bool) -> f32 {
    let var_0 = !vec2<bool>(all(func_1(_wgslsmith_div_vec2_f32(vec2<f32>(260f, -380f), vec2<f32>(-336f, -215f)), -1455f).yyy), false);
    var var_1 = u_input.b;
    var var_2 = var_0.x;
    let var_3 = var_0;
    var_1 = _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(8u, ~u_input.b.x, firstTrailingBit(131833u)), var_1.x, _wgslsmith_add_u32(max(~13844u, u_input.d), ~1u), max(u_input.b.x, select(9700u, ~75651u, 2388u < u_input.d))), _wgslsmith_mult_vec4_u32(~_wgslsmith_mod_vec4_u32(select(u_input.b, vec4<u32>(0u, 22226u, var_1.x, 0u), true), vec4<u32>(1u, u_input.b.x, 1u, var_1.x)), vec4<u32>(4294967295u, select(1u, u_input.b.x, true), var_1.x, _wgslsmith_mod_u32(0u, 40731u)) << ((~u_input.b >> (u_input.b % vec4<u32>(32u))) % vec4<u32>(32u))));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1677f, _wgslsmith_div_f32(-2118f, 231f)) + 123f))));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<i32>, arg_2: Struct_4, arg_3: u32) -> Struct_5 {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(arg_2.d.zzw, _wgslsmith_f_op_vec3_f32(-arg_2.d.xyx), arg_2.e.b.wxw));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(round(179f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * 194f)) - -262f)), _wgslsmith_f_op_f32(func_3(false)));
    var var_1 = Struct_1(u_input.a | (vec3<i32>(-1i) * -vec3<i32>(27974i, arg_2.e.c.b, -20086i)), arg_2.e.c.b);
    return Struct_5(Struct_2(!(!arg_2.e.a.xy), Struct_1(arg_2.e.c.a, countOneBits(firstLeadingBit(var_1.a.x)))));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_2, arg_2: bool, arg_3: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(202f)), _wgslsmith_f_op_f32(f32(-1f) * -1879f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(arg_1.a.x)) + _wgslsmith_f_op_f32(ceil(-626f))))))));
    var var_1 = vec2<i32>(reverseBits(countOneBits(~1i)), reverseBits(~(i32(-1i) * -arg_0.a.b.b)));
    let var_2 = any(!(!func_1(vec2<f32>(var_0, var_0), -485f))) && true;
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(var_0, -722f, 315f), vec3<f32>(808f, -1006f, var_0)))))) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(318f, _wgslsmith_f_op_f32(1000f * var_0), var_0), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -702f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(var_0, var_0))))))));
    var var_4 = vec2<f32>(var_0, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(477f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_3.x, _wgslsmith_f_op_f32(min(var_0, 470f)))) + var_3.x))));
    return Struct_2(vec2<bool>(true, true), func_2(vec2<f32>(-199f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(var_0))))), select(_wgslsmith_add_vec3_i32(vec3<i32>(17662i, 1i, arg_0.a.b.a.x), vec3<i32>(-38910i, 4875i, arg_1.b.a.x)), _wgslsmith_div_vec3_i32(arg_0.a.b.a >> (vec3<u32>(43257u, u_input.d, 4294967295u) % vec3<u32>(32u)), ~arg_1.b.a), true), Struct_4(_wgslsmith_div_f32(1418f, var_3.x), ~(vec4<i32>(-39049i, arg_1.b.a.x, -2147483647i, var_1.x) ^ vec4<i32>(arg_3.a.x, arg_1.b.a.x, arg_0.a.b.b, var_1.x)), u_input.d, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0, 961f, -1631f, var_3.x))), Struct_3(!vec4<bool>(false, arg_1.a.x, true, arg_2), select(vec4<bool>(arg_0.a.a.x, arg_2, arg_2, false), vec4<bool>(arg_0.a.a.x, true, arg_0.a.a.x, arg_2), vec4<bool>(true, var_2, false, arg_0.a.a.x)), func_2(vec2<f32>(var_0, var_4.x), vec3<i32>(0i, u_input.c.x, 43303i), Struct_4(var_4.x, vec4<i32>(4539i, 1i, arg_3.a.x, 21047i), 1u, vec4<f32>(var_0, var_3.x, var_0, var_4.x), Struct_3(vec4<bool>(false, false, true, true), vec4<bool>(arg_0.a.a.x, arg_0.a.a.x, false, arg_0.a.a.x), arg_3)), u_input.b.x).a.b)), ~countOneBits(u_input.d)).a.b);
}

fn func_5(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: f32, arg_3: Struct_2) -> Struct_1 {
    let var_0 = Struct_4(-980f, vec4<i32>(countOneBits(u_input.a.x) >> (max(~arg_0.x, _wgslsmith_mult_u32(arg_0.x, 4294967295u)) % 32u), ~_wgslsmith_sub_i32(~arg_3.b.b, _wgslsmith_clamp_i32(-1i, arg_3.b.b, -1i)), _wgslsmith_sub_i32(0i | arg_3.b.a.x, -2147483647i ^ u_input.a.x) & _wgslsmith_mod_i32(-2147483647i, max(-30158i, arg_3.b.b)), arg_3.b.a.x), abs(_wgslsmith_add_u32(_wgslsmith_add_u32(arg_0.x, 2031u), arg_0.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_2, arg_2, arg_2, 122f), vec4<f32>(785f, -733f, arg_2, arg_2)))))), vec4<f32>(_wgslsmith_f_op_f32(floor(arg_2)), -459f, _wgslsmith_f_op_f32(-382f * 683f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2))), vec4<bool>(!any(vec3<bool>(arg_3.a.x, true, false)), any(!arg_1), arg_3.a.x, true))), Struct_3(vec4<bool>(arg_1.x, !(!arg_1.x), !(arg_1.x & false), true | func_2(vec2<f32>(1338f, arg_2), vec3<i32>(arg_3.b.b, arg_3.b.b, u_input.c.x), Struct_4(arg_2, vec4<i32>(arg_3.b.b, u_input.c.x, 10677i, -12861i), u_input.d, vec4<f32>(-296f, 447f, arg_2, 413f), Struct_3(vec4<bool>(true, arg_3.a.x, arg_1.x, arg_1.x), vec4<bool>(arg_3.a.x, true, false, true), arg_3.b)), arg_0.x).a.a.x), !func_1(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_2, -1268f))), 1f), arg_3.b));
    var var_1 = i32(-1i) * -52446i;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.d));
    var_1 = u_input.c.x;
    var var_3 = all(vec2<bool>(var_0.e.b.x, !any(arg_1)));
    return var_0.e.c;
}

fn func_6(arg_0: f32, arg_1: u32, arg_2: Struct_1, arg_3: vec2<i32>) -> Struct_1 {
    var var_0 = ~_wgslsmith_mod_i32(arg_2.a.x, arg_2.a.x);
    let var_1 = 1i;
    let var_2 = func_4(Struct_5(func_2(vec2<f32>(arg_0, -1088f), arg_2.a, Struct_4(arg_0, _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, u_input.a.x, u_input.c.x), vec4<i32>(arg_2.b, 2147483647i, 1i, 0i)), min(4294967295u, arg_1), vec4<f32>(arg_0, 820f, 1050f, arg_0), Struct_3(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), arg_2)), 42752u).a), Struct_2(!vec2<bool>(true, arg_1 > 7961u), arg_2), false, func_2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0, -328f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -346f))))), vec3<i32>(min(65484i, -1i), firstTrailingBit(arg_2.a.x), 0i) | _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_2.a.x, -2147483647i, 5364i), arg_2.a, arg_2.a), Struct_4(_wgslsmith_div_f32(arg_0, arg_0), firstTrailingBit(~vec4<i32>(1i, 21500i, var_1, u_input.a.x)), ~(1u | u_input.d), vec4<f32>(1713f, arg_0, _wgslsmith_f_op_f32(f32(-1f) * -838f), _wgslsmith_div_f32(-1941f, arg_0)), Struct_3(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), Struct_1(u_input.a, var_1))), _wgslsmith_dot_vec3_u32(u_input.b.yyw, vec3<u32>(arg_1, 2145u, ~10173u))).a.b);
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1988f, arg_0))))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-167f, arg_0), vec2<f32>(-362f, arg_0)))) + vec2<f32>(-583f, arg_0)))));
    var_0 = ~(-45694i);
    return Struct_1(vec3<i32>(~(1i & _wgslsmith_sub_i32(var_2.b.a.x, 0i)), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(~vec2<i32>(6837i, arg_3.x), arg_3), max(_wgslsmith_mult_vec2_i32(var_2.b.a.yy, u_input.c), countOneBits(vec2<i32>(u_input.c.x, -19534i)))), _wgslsmith_add_i32(~u_input.c.x, -2147483647i)), min(select(5659i, _wgslsmith_div_i32(var_1, -41080i), firstLeadingBit(arg_3.x) >= 2147483647i), abs((4776i | var_2.b.a.x) & reverseBits(var_1))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x;
    var var_1 = Struct_2(select(vec2<bool>(true, any(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false)))), vec2<bool>(true, any(vec4<bool>(true, false, false, true))), vec2<bool>(_wgslsmith_sub_u32(4294967295u, var_0) <= _wgslsmith_mult_u32(13547u, var_0), any(func_1(vec2<f32>(-601f, -603f), -1487f)))), func_6(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(758f, _wgslsmith_f_op_f32(238f + 1102f)))), 2242u, func_5(reverseBits(vec2<u32>(var_0, 0u)), vec3<bool>(true, true, true), 914f, func_4(func_2(vec2<f32>(-1000f, 817f), u_input.a, Struct_4(1801f, vec4<i32>(u_input.a.x, u_input.a.x, 26276i, u_input.a.x), u_input.b.x, vec4<f32>(-530f, -1430f, -1190f, 1257f), Struct_3(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), Struct_1(u_input.a, 68814i))), 0u), Struct_2(vec2<bool>(true, false), Struct_1(vec3<i32>(2147483647i, 78577i, u_input.c.x), -19311i)), true, Struct_1(u_input.a, u_input.a.x))), -select(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(u_input.c.x, u_input.a.x)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c.x, u_input.c.x), u_input.a.xz), vec2<bool>(false, true))));
    var_1 = func_4(Struct_5(func_4(Struct_5(func_2(vec2<f32>(1010f, 887f), vec3<i32>(-24573i, 36464i, var_1.b.a.x), Struct_4(-1000f, vec4<i32>(var_1.b.a.x, var_1.b.a.x, var_1.b.b, 17183i), var_0, vec4<f32>(-479f, 798f, 338f, 1089f), Struct_3(vec4<bool>(true, true, var_1.a.x, true), vec4<bool>(var_1.a.x, var_1.a.x, true, var_1.a.x), var_1.b)), var_0).a), Struct_2(vec2<bool>(false, false), func_5(u_input.b.ww, vec3<bool>(true, true, var_1.a.x), -1000f, Struct_2(var_1.a, Struct_1(vec3<i32>(-1i, -24948i, 0i), u_input.a.x)))), _wgslsmith_div_i32(2147483647i, var_1.b.a.x) > (i32(-1i) * -2147483647i), Struct_1(-u_input.a, ~u_input.c.x))), Struct_2(!var_1.a, Struct_1(u_input.a, _wgslsmith_mult_i32(var_1.b.b, u_input.a.x | u_input.c.x))), true, Struct_1(vec3<i32>(-u_input.a.x, -(~var_1.b.b), firstTrailingBit(-var_1.b.a.x)), u_input.a.x));
    var_1 = func_2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(469f, 349f)))))), var_1.b.a, Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-1000f, 363f)), _wgslsmith_f_op_f32(-705f + -570f), var_1.a.x)) * _wgslsmith_f_op_f32(round(-974f))), _wgslsmith_mult_vec4_i32(max(~vec4<i32>(2147483647i, 2147483647i, 46453i, var_1.b.b), vec4<i32>(1i, u_input.a.x, 36296i, u_input.a.x) & vec4<i32>(u_input.a.x, u_input.a.x, 1i, var_1.b.b)), -_wgslsmith_div_vec4_i32(vec4<i32>(99609i, 2147483647i, var_1.b.b, -1i), vec4<i32>(1i, 0i, 1i, -2147483647i))), u_input.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1306f, 611f, -980f, -1116f))) - vec4<f32>(1f, _wgslsmith_f_op_f32(553f + -668f), _wgslsmith_f_op_f32(f32(-1f) * -1499f), 612f)), Struct_3(!select(vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x), vec4<bool>(true, true, var_1.a.x, var_1.a.x), var_1.a.x), !(!vec4<bool>(false, false, true, var_1.a.x)), Struct_1(vec3<i32>(0i, 0i, -1i), _wgslsmith_sub_i32(u_input.c.x, var_1.b.b)))), 1u).a;
    var var_2 = func_4(Struct_5(func_4(Struct_5(Struct_2(var_1.a, Struct_1(vec3<i32>(var_1.b.a.x, -1i, -54590i), 2147483647i))), func_4(func_2(vec2<f32>(486f, -928f), vec3<i32>(var_1.b.b, var_1.b.a.x, 2147483647i), Struct_4(1140f, vec4<i32>(0i, -1i, var_1.b.a.x, u_input.a.x), 8714u, vec4<f32>(2497f, 639f, -675f, 2135f), Struct_3(vec4<bool>(var_1.a.x, true, true, var_1.a.x), vec4<bool>(false, true, var_1.a.x, var_1.a.x), var_1.b)), 20209u), Struct_2(vec2<bool>(var_1.a.x, var_1.a.x), Struct_1(u_input.a, var_1.b.b)), true, func_2(vec2<f32>(2274f, 1000f), u_input.a, Struct_4(1441f, vec4<i32>(var_1.b.a.x, u_input.c.x, u_input.a.x, var_1.b.a.x), 1686u, vec4<f32>(347f, 491f, -504f, 108f), Struct_3(vec4<bool>(false, true, true, true), vec4<bool>(false, var_1.a.x, false, var_1.a.x), var_1.b)), 63954u).a.b), !var_1.a.x, func_6(_wgslsmith_f_op_f32(floor(-331f)), _wgslsmith_div_u32(1u, 22669u), Struct_1(var_1.b.a, u_input.c.x), func_5(vec2<u32>(1u, 1u), vec3<bool>(var_1.a.x, var_1.a.x, var_1.a.x), 285f, Struct_2(var_1.a, Struct_1(var_1.b.a, u_input.a.x))).a.xx))), Struct_2(select(var_1.a, var_1.a, vec2<bool>(false, all(vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x)))), Struct_1(u_input.a, -23933i)), true, var_1.b);
    var_2 = Struct_2(!var_1.a, func_4(Struct_5(Struct_2(var_1.a, Struct_1(var_2.b.a, var_2.b.a.x))), Struct_2(var_1.a, var_2.b), true, Struct_1(u_input.a, u_input.a.x)).b);
    var var_3 = vec2<i32>(2147483647i, -(~(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x), vec3<i32>(-1i, u_input.a.x, -27465i)))));
    let x = u_input.a;
    s_output = StorageBuffer(0u, ~vec2<i32>(_wgslsmith_add_i32(2147483647i, select(102715i, 1i, true)), abs(var_1.b.a.x)), var_0);
}

