struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: u32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_3 {
    a: bool,
    b: vec4<bool>,
    c: vec2<i32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: Struct_3,
    d: vec3<bool>,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec2<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: Struct_3;

var<private> global2: Struct_3 = Struct_3(false, vec4<bool>(false, false, true, false), vec2<i32>(2147483647i, -18429i));

var<private> global3: array<vec3<u32>, 19>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec4<bool>) -> u32 {
    global2 = Struct_3(false, !arg_0, (~(-vec2<i32>(global1.c.x, 0i)) & firstTrailingBit(vec2<i32>(global2.c.x, u_input.b.x) & global2.c)) >> (~u_input.a % vec2<u32>(32u)));
    let var_0 = Struct_3(u_input.c.x > ~_wgslsmith_div_i32(42375i, global2.c.x), !arg_0, max(select(global1.c, ~vec2<i32>(u_input.c.x, -34490i), vec2<bool>(global2.b.x, false)) << (~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a) % vec2<u32>(32u)), countOneBits(abs(global1.c))));
    global2 = var_0;
    var var_1 = select(!global2.b.yyx, !(!(!vec3<bool>(true, true, var_0.b.x))), var_0.b.x);
    let var_2 = ~abs(_wgslsmith_mod_vec3_u32(abs(global3[_wgslsmith_index_u32(max(u_input.a.x, 1u), 19u)]), vec3<u32>(50910u, u_input.a.x, _wgslsmith_add_u32(u_input.a.x, 44131u))));
    return 24284u;
}

fn func_2(arg_0: vec4<u32>) -> Struct_3 {
    var var_0 = vec2<u32>(~(1u & abs(func_3(global2.b))), ~_wgslsmith_clamp_u32(0u, countOneBits(~arg_0.x), ~(u_input.a.x ^ arg_0.x)));
    let var_1 = global2.c.x;
    var var_2 = Struct_4(~(-(_wgslsmith_sub_vec2_i32(vec2<i32>(global1.c.x, global2.c.x), vec2<i32>(1i, global1.c.x)) << (arg_0.wy % vec2<u32>(32u)))), vec3<f32>(1208f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_f_op_f32(f32(-1f) * -2387f)), _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(f32(-1f) * -1525f))), Struct_3(any(!vec3<bool>(true, global2.b.x, global2.a)), global2.b, global1.c), vec3<bool>(true, false, false), global1.a);
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, _wgslsmith_f_op_f32(-344f - -1470f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(global0.x)), _wgslsmith_f_op_f32(round(458f))) - _wgslsmith_f_op_vec2_f32(-global0.xx))));
    var var_4 = (64466u << (~_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(arg_0.zxz, vec3<u32>(arg_0.x, var_0.x, 0u), vec3<u32>(1u, arg_0.x, var_0.x)), ~arg_0.xxx) % 32u)) | (~arg_0.x & 16198u);
    return Struct_3(!(!(var_2.a.x >= max(-2147483647i, -2147483647i))), global1.b, -min(global1.c >> (arg_0.zy % vec2<u32>(32u)), ~vec2<i32>(24402i, u_input.c.x)) ^ ~u_input.c.wz);
}

fn func_4(arg_0: Struct_3) -> f32 {
    var var_0 = u_input.a.x;
    let var_1 = vec2<u32>(~min(~u_input.a.x, _wgslsmith_dot_vec3_u32(global3[_wgslsmith_index_u32(20885u, 19u)], global3[_wgslsmith_index_u32(26527u, 19u)])), max(select(7780u, 0u, global1.a && global1.a), max(~u_input.a.x, u_input.a.x))) ^ u_input.a;
    let var_2 = Struct_2(1310f, -vec2<i32>(i32(-1i) * -2147483647i, _wgslsmith_mod_i32(-1i, 6106i)) << (var_1 % vec2<u32>(32u)));
    global2 = Struct_3(false, vec4<bool>(!global2.a, global1.a, true, false | !all(arg_0.b.xyz)), firstLeadingBit(~vec2<i32>(global1.c.x, -2147483647i) | vec2<i32>(global1.c.x, global2.c.x)) & vec2<i32>(~func_2(vec4<u32>(54659u, 0u, 9723u, var_1.x)).c.x, abs(-1i)));
    var var_3 = Struct_3(any(select(vec3<bool>(false, var_2.a >= 1733f, true), vec3<bool>(all(vec4<bool>(true, false, global2.b.x, false)), true, any(vec2<bool>(true, global1.b.x))), global2.b.xww)), select(!select(vec4<bool>(true, true, false, global2.b.x), select(global2.b, vec4<bool>(false, arg_0.a, global2.b.x, false), vec4<bool>(false, false, arg_0.a, arg_0.a)), vec4<bool>(global1.a, global2.b.x, global2.b.x, true)), !(!vec4<bool>(global1.a, true, arg_0.a, false)), global2.b), vec2<i32>(0i, u_input.b.x));
    return -1268f;
}

fn func_1(arg_0: vec2<bool>, arg_1: u32, arg_2: vec4<i32>) -> Struct_3 {
    var var_0 = max(6140i, -771i);
    var var_1 = Struct_4(_wgslsmith_clamp_vec2_i32(global2.c, _wgslsmith_sub_vec2_i32(firstTrailingBit(select(vec2<i32>(-21804i, -1i), global2.c, global2.a)), firstTrailingBit(global1.c)), arg_2.yz), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-568f, _wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(func_4(func_2(vec4<u32>(2666u, arg_1, arg_1, arg_1)))))), Struct_3(firstLeadingBit(_wgslsmith_add_u32(arg_1, arg_1)) < ~46899u, global2.b, countOneBits(vec2<i32>(~arg_2.x, global2.c.x & -54298i))), vec3<bool>(any(global2.b), false, firstTrailingBit(1u) >= ~_wgslsmith_div_u32(44119u, u_input.a.x)), false);
    global1 = func_2(~vec4<u32>(_wgslsmith_mult_u32(~u_input.a.x, _wgslsmith_mult_u32(1u, u_input.a.x)), ~(~u_input.a.x), 4294967295u, _wgslsmith_mod_u32(arg_1, abs(17996u))));
    var_1 = Struct_4(vec2<i32>(_wgslsmith_dot_vec4_i32(~abs(vec4<i32>(global2.c.x, -2147483647i, global2.c.x, 5635i)), firstLeadingBit(vec4<i32>(53822i, -34908i, -52963i, -3111i)) << (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 82885u, 50408u), vec4<u32>(4294967295u, arg_1, 4294967295u, arg_1)) % vec4<u32>(32u))), ~_wgslsmith_mod_i32(abs(arg_2.x), min(arg_2.x, 0i))), _wgslsmith_f_op_vec3_f32(var_1.b - _wgslsmith_f_op_vec3_f32(-var_1.b)), func_2(~select(vec4<u32>(0u, u_input.a.x, u_input.a.x, 1u), select(vec4<u32>(0u, 69639u, 16359u, 32328u), vec4<u32>(60838u, u_input.a.x, 72138u, 5595u), var_1.c.b.x), select(vec4<bool>(arg_0.x, true, global2.b.x, global2.a), vec4<bool>(global2.a, global1.b.x, true, true), true))), func_2(vec4<u32>(7670u, _wgslsmith_sub_u32(1u, firstLeadingBit(4294967295u)), 0u, max(u_input.a.x, _wgslsmith_add_u32(u_input.a.x, 1u)))).b.wwx, true);
    var_1 = Struct_4(~vec2<i32>(select(global2.c.x | 1i, i32(-1i) * -34470i, true), 2147483647i), var_1.b, Struct_3(true, func_2(select(select(vec4<u32>(25547u, u_input.a.x, 75595u, 33863u), vec4<u32>(u_input.a.x, arg_1, 21950u, 37541u), false), min(vec4<u32>(0u, u_input.a.x, 4294967295u, 25142u), vec4<u32>(arg_1, 16380u, arg_1, 0u)), select(vec4<bool>(arg_0.x, true, false, true), vec4<bool>(false, true, arg_0.x, var_1.c.a), var_1.c.b))).b, min(select(-vec2<i32>(1i, global2.c.x), _wgslsmith_add_vec2_i32(vec2<i32>(var_1.c.c.x, 31036i), var_1.a), all(global1.b)), global1.c >> (vec2<u32>(29899u, 4294967295u) % vec2<u32>(32u)))), vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-129f))) == _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, 630f)), all(!(!arg_0)), true), any(global2.b));
    return func_2(~abs(~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.a.x, u_input.a.x, arg_1), vec4<u32>(0u, 77006u, arg_1, arg_1))));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: f32, arg_3: vec3<u32>) -> vec4<f32> {
    global1 = Struct_3(arg_1.c.a, func_1(func_1(func_1(vec2<bool>(true, global2.a), 4294967295u, -vec4<i32>(u_input.b.x, global1.c.x, -21409i, global2.c.x)).b.wz, ~abs(1u), vec4<i32>(-2147483647i, 0i, global1.c.x, 17305i) << (countOneBits(vec4<u32>(arg_3.x, arg_0.x, arg_3.x, arg_3.x)) % vec4<u32>(32u))).b.wx, ~(u_input.a.x << (arg_3.x % 32u)), vec4<i32>(-23976i, arg_1.a.x, u_input.b.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, arg_3.x, u_input.a.x, 8062u), vec4<u32>(arg_0.x, 67025u, 1u, arg_0.x)) % 32u), global1.c.x)).b, _wgslsmith_mult_vec2_i32(firstLeadingBit(vec2<i32>(global1.c.x, 0i)), func_2(vec4<u32>(_wgslsmith_clamp_u32(arg_3.x, u_input.a.x, arg_0.x), _wgslsmith_dot_vec2_u32(arg_3.xy, u_input.a), 1u, _wgslsmith_div_u32(4294967295u, 39427u))).c));
    return _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-722f - global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.x + _wgslsmith_f_op_f32(-arg_1.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_2(vec4<u32>(21499u, arg_3.x, arg_0.x, 3819u)))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(1035f, global0.x))))), _wgslsmith_f_op_f32(-arg_1.b.x)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(f32(-1f) * -296f), arg_2, arg_2)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_5(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a.x, 4294967295u, 11561u) << (47417u % 32u), 19u)], Struct_4(firstTrailingBit(vec2<i32>(global2.c.x, 1i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1225f, -993f, 251f)), func_1(vec2<bool>(global1.a, global1.a), u_input.a.x, vec4<i32>(global1.c.x, global1.c.x, u_input.c.x, 24696i)), select(vec3<bool>(false, false, false), global2.b.yxw, vec3<bool>(false, global2.b.x, global2.a)), !global2.a), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(1000f)))), _wgslsmith_clamp_vec3_u32(~global3[_wgslsmith_index_u32(u_input.a.x, 19u)], vec3<u32>(4294967295u, 42501u, 52797u), global3[_wgslsmith_index_u32(11523u, 19u)] & global3[_wgslsmith_index_u32(49271u, 19u)]))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-global0.x), global0.x, _wgslsmith_div_f32(global0.x, global0.x), global0.x))))));
    let var_1 = 4294967295u;
    let var_2 = (-27707i >> (_wgslsmith_dot_vec3_u32(global3[_wgslsmith_index_u32(6821u, 19u)], global3[_wgslsmith_index_u32(17780u, 19u)]) % 32u)) <= global1.c.x;
    let var_3 = Struct_2(_wgslsmith_f_op_f32(-335f + -997f), vec2<i32>(max(-2147483647i, _wgslsmith_div_i32(-2147483647i, -1i)), -45560i));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-747f, -1059f, var_0.x) - vec3<f32>(var_3.a, global0.x, -842f)))), var_0.wyx)) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(var_0.x + 1506f), 667f, _wgslsmith_f_op_f32(-466f + -232f))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, var_3.b.x, _wgslsmith_div_vec4_u32(vec4<u32>(~var_1 & (u_input.a.x >> (var_1 % 32u)), u_input.a.x, _wgslsmith_dot_vec3_u32(global3[_wgslsmith_index_u32(0u << (var_1 % 32u), 19u)], global3[_wgslsmith_index_u32(15151u << (u_input.a.x % 32u), 19u)]), var_1), ~vec4<u32>(min(u_input.a.x, 3136u), _wgslsmith_dot_vec2_u32(u_input.a, u_input.a), ~u_input.a.x, abs(u_input.a.x))), var_0.xy, vec2<u32>(u_input.a.x, u_input.a.x));
}

