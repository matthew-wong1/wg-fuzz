struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
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

var<private> global0: vec3<u32> = vec3<u32>(0u, 4294967295u, 56897u);

var<private> global1: array<u32, 4>;

var<private> global2: vec3<i32> = vec3<i32>(26146i, -19745i, 50428i);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global1 = array<u32, 4>();
    global0 = ~max(~vec3<u32>(5685u, 56747u, arg_0.b), countOneBits(~vec3<u32>(global0.x, global0.x, u_input.a.x))) ^ firstLeadingBit(vec3<u32>(global1[_wgslsmith_index_u32(1u, 4u)], 83097u, u_input.b.x));
    global0 = vec3<u32>(~1979u, 0u, 84873u);
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1610f)), 1466f);
    var var_1 = global2.x;
    return Struct_1(max(~(global1[_wgslsmith_index_u32(arg_0.b, 4u)] & arg_0.a) << (arg_0.a % 32u), ~1u), 0u);
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -209f), 1f)), _wgslsmith_f_op_f32(f32(-1f) * -768f), 1f, _wgslsmith_f_op_f32(ceil(-909f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1964f, 686f, 259f, 1306f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(252f, -1446f, -175f, 1000f))))));
    let var_1 = arg_2;
    global2 = vec3<i32>(global2.x, global2.x, ~_wgslsmith_dot_vec2_i32(~global2.zx, global2.zx));
    var var_2 = Struct_1(1u, ~(~(~(~0u))));
    return Struct_1(~(~(~global1[_wgslsmith_index_u32(1u, 4u)])), arg_2.a);
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(329f, -1197f, true))))))));
    global0 = ~(~vec3<u32>(26082u, 6140u, ~(~u_input.a.x)));
    global1 = array<u32, 4>();
    global1 = array<u32, 4>();
    let var_1 = countOneBits(global0.yz);
    return Struct_2(vec3<i32>(arg_0, global2.x, ~global2.x));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: vec2<i32>) -> Struct_2 {
    var var_0 = func_4(firstTrailingBit(2147483647i), Struct_1(arg_1.a, func_3(~firstLeadingBit(vec4<u32>(0u, 52879u, u_input.a.x, global1[_wgslsmith_index_u32(1u, 4u)])), arg_1, arg_1, select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))).b));
    var var_1 = vec3<bool>(false, true, !((any(vec4<bool>(false, false, false, false)) && (68432u > global1[_wgslsmith_index_u32(35705u, 4u)])) == true));
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(571f * 1291f))), 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1850f))) * -774f)));
    let var_3 = _wgslsmith_f_op_f32(-549f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(790f)), var_2, all(select(vec4<bool>(true, var_1.x, var_1.x, var_1.x), select(vec4<bool>(false, var_1.x, var_1.x, var_1.x), vec4<bool>(false, true, var_1.x, true), vec4<bool>(false, var_1.x, true, var_1.x)), !var_1.x)))));
    let var_4 = func_4(firstLeadingBit(select(-35431i, 30516i, var_1.x) ^ ~global2.x) >> (4294967295u % 32u), Struct_1(0u, ~1u & _wgslsmith_clamp_u32(~4294967295u, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global0.x, 0u, arg_1.b), vec4<u32>(3721u, 4294967295u, 0u, global1[_wgslsmith_index_u32(7812u, 4u)])))));
    return func_4(1i, arg_1);
}

fn func_6(arg_0: i32, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: Struct_2) -> vec3<i32> {
    let var_0 = func_5(Struct_2(firstTrailingBit(-vec3<i32>(arg_3.a.x, arg_3.a.x, -2147483647i)) >> (reverseBits(vec3<u32>(0u, 4294967295u, u_input.c)) % vec3<u32>(32u))), func_3(~vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(4294967295u, 4u)], 4294967295u, 0u) & ~countOneBits(vec4<u32>(global1[_wgslsmith_index_u32(global0.x, 4u)], 35078u, global1[_wgslsmith_index_u32(44173u, 4u)], u_input.d)), func_3(firstTrailingBit(vec4<u32>(48069u, global0.x, u_input.b.x, 39427u) << (vec4<u32>(u_input.c, global0.x, 1u, 1u) % vec4<u32>(32u))), Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.d, 0u), vec3<u32>(global1[_wgslsmith_index_u32(10011u, 4u)], 18894u, 19832u)), ~global1[_wgslsmith_index_u32(4294967295u, 4u)]), Struct_1(~u_input.a.x, _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(global0.x, 4u)], 32488u)), vec3<bool>(arg_3.a.x >= arg_1.a.x, false, true)), func_2(Struct_1(firstTrailingBit(1u), 29089u)), vec3<bool>(true, false, !any(vec3<bool>(true, true, false)))), arg_1.a.xy, vec2<i32>(0i, -14902i) ^ firstLeadingBit(func_4(arg_1.a.x | -55869i, Struct_1(global0.x, 4294967295u)).a.zy));
    let var_1 = ~var_0.a.x;
    let var_2 = arg_1.a.yy;
    let var_3 = ~_wgslsmith_mod_vec4_u32(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 4u)], global1[_wgslsmith_index_u32(u_input.b.x, 4u)], 32391u, global0.x), vec4<u32>(4294967295u, u_input.c, 4294967295u, global1[_wgslsmith_index_u32(16652u, 4u)]))), countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(58851u, global1[_wgslsmith_index_u32(1u, 4u)], 0u, u_input.a.x), ~vec4<u32>(656u, u_input.b.x, u_input.b.x, 1u))));
    let var_4 = !any(vec4<bool>(true, true, true, u_input.a.x > 1u));
    return (vec3<i32>(-_wgslsmith_mod_i32(global2.x, arg_1.a.x), select(_wgslsmith_mod_i32(var_1, 0i), i32(-1i) * -2147483647i, var_4), arg_1.a.x) & -_wgslsmith_add_vec3_i32(vec3<i32>(global2.x, 0i, var_2.x), vec3<i32>(var_0.a.x, arg_1.a.x, -1i))) & var_0.a;
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<i32>, arg_2: vec3<u32>, arg_3: f32) -> Struct_1 {
    global0 = arg_2;
    global2 = func_6(_wgslsmith_mult_i32(0i, arg_1.x), Struct_2(firstLeadingBit(arg_0.wwz)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_3, 154f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3 + -672f) + -1092f)))), func_5(func_4(arg_0.x << (global0.x % 32u), func_3(vec4<u32>(4625u, u_input.d, 81225u, 24245u), Struct_1(u_input.a.x, arg_2.x), func_2(Struct_1(16753u, 42569u)), vec3<bool>(true, true, true))), func_2(Struct_1(~4294967295u, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 37669u), 4u)])), arg_0.yx, arg_1.yz));
    let var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_3, arg_3, 490f), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(119f, -570f, arg_3))) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1494f, 2106f, -463f)))))), true))));
    var var_1 = 0u;
    let var_2 = Struct_2(-arg_0.yww);
    return func_3(vec4<u32>(arg_2.x, ~63520u, _wgslsmith_add_u32(func_3(vec4<u32>(global1[_wgslsmith_index_u32(u_input.c, 4u)], u_input.b.x, 66561u, 49264u), Struct_1(global1[_wgslsmith_index_u32(63873u, 4u)], 18251u), Struct_1(115764u, 1u), vec3<bool>(true, false, false)).b & _wgslsmith_dot_vec3_u32(arg_2, arg_2), ~reverseBits(82907u)), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(select(global0.xx, arg_2.yz, false), vec2<u32>(56241u, 40391u)), 13609u)), Struct_1(~_wgslsmith_sub_u32(~1u, _wgslsmith_div_u32(34998u, global0.x)), func_2(Struct_1(1u, arg_2.x)).b), Struct_1(4294967295u, min(global1[_wgslsmith_index_u32(u_input.b.x, 4u)], u_input.a.x) << (u_input.c % 32u)), vec3<bool>(true, true, true));
}

fn func_7(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> vec3<u32> {
    let var_0 = select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true)), true), vec4<bool>(true, true, (any(vec3<bool>(false, false, true)) && true) | true, false), vec4<bool>(any(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true))), true || ((arg_0 >= -756f) && true), arg_0 == _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0))), all(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), true))));
    var var_1 = Struct_2(_wgslsmith_clamp_vec3_i32(~firstLeadingBit(countOneBits(vec3<i32>(global2.x, global2.x, -3763i))), vec3<i32>(0i, -_wgslsmith_add_i32(global2.x, global2.x), firstLeadingBit(~8336i)), ~_wgslsmith_mult_vec3_i32(func_4(global2.x, Struct_1(arg_1.a, u_input.a.x)).a, vec3<i32>(-16965i, 175i, 2147483647i) & vec3<i32>(-1961i, global2.x, global2.x))));
    var var_2 = 1u;
    var var_3 = arg_2.b;
    var var_4 = 0u;
    return ~vec3<u32>(arg_2.b, 4294967295u, firstTrailingBit(_wgslsmith_mult_u32(_wgslsmith_mod_u32(global0.x, u_input.a.x), 0u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -956f)) + -2391f) + -326f);
    let var_1 = global2.x;
    global0 = _wgslsmith_mult_vec3_u32(abs(vec3<u32>(min(~global0.x, ~0u), ~firstTrailingBit(3652u), 0u)), select(countOneBits(select(vec3<u32>(4197u, 7351u, u_input.b.x), reverseBits(vec3<u32>(0u, 55619u, global0.x)), any(vec3<bool>(true, true, true)))), select(~(~vec3<u32>(19796u, 28535u, 43501u)), func_7(_wgslsmith_f_op_f32(round(var_0)), func_1(vec4<i32>(-2147483647i, -47380i, global2.x, global2.x), vec3<i32>(7735i, global2.x, -26935i), vec3<u32>(global0.x, 3989u, u_input.d), var_0), func_1(vec4<i32>(-15180i, global2.x, global2.x, 67546i), vec3<i32>(global2.x, global2.x, -53573i), vec3<u32>(global0.x, 7447u, global0.x), 397f)), select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false), vec3<bool>(true, false, false), false)), false));
    let var_2 = -722f;
    let var_3 = Struct_1(_wgslsmith_sub_u32(_wgslsmith_add_u32(min(global0.x, firstLeadingBit(global0.x)), countOneBits(4294967295u)), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, 100156u, 0u), vec3<u32>(~u_input.d, func_2(Struct_1(1u, 41107u)).a, global0.x))), u_input.a.x);
    global1 = array<u32, 4>();
    var var_4 = any(select(select(select(vec3<bool>(false, false, false), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false))), vec3<bool>(true, true, true), all(vec4<bool>(false, true, false, false))), !(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false))), !(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), true))));
    let x = u_input.a;
    s_output = StorageBuffer(global2.x & global2.x);
}

