struct Struct_1 {
    a: vec2<bool>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<u32>,
    d: f32,
    e: u32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: Struct_3,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 23>;

var<private> global1: array<i32, 25> = array<i32, 25>(-6449i, -3479i, -4033i, 25217i, -905i, 17024i, 1i, 17410i, -45761i, 2147483647i, -1i, -1i, 3291i, 674i, 32699i, i32(-2147483648), -1i, 18773i, -62212i, -23645i, -34980i, -719i, 36402i, 27479i, -33321i);

var<private> global2: array<bool, 5> = array<bool, 5>(false, true, true, false, false);

var<private> global3: array<Struct_4, 7>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: vec3<bool>) -> vec3<i32> {
    global1 = array<i32, 25>();
    global1 = array<i32, 25>();
    var var_0 = Struct_2(!(!(false | (arg_1.a.x | global2[_wgslsmith_index_u32(arg_0.a, 5u)]))), Struct_1(!select(vec2<bool>(arg_1.b.x, global2[_wgslsmith_index_u32(u_input.d, 5u)]), select(vec2<bool>(true, true), vec2<bool>(false, arg_1.a.x), arg_3.x), any(vec2<bool>(global2[_wgslsmith_index_u32(arg_0.a, 5u)], false))), vec2<bool>(global2[_wgslsmith_index_u32(min(0u, arg_2.x) >> ((u_input.a | arg_0.a) % 32u), 5u)], false)), _wgslsmith_sub_vec2_u32(max(vec2<u32>(max(u_input.a, 5830u), 42211u), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, arg_2.x), vec2<u32>(u_input.d, arg_2.x))), vec2<u32>(_wgslsmith_mod_u32(max(1778u, u_input.a), u_input.d), 0u)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-1018f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -293f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(146f)))))), select(abs(select(u_input.d, u_input.d, arg_1.b.x)), firstLeadingBit(_wgslsmith_add_u32(arg_2.x, 4294967295u)), false) >> (~arg_2.x % 32u));
    global1 = array<i32, 25>();
    let var_1 = ~vec4<i32>(_wgslsmith_clamp_i32(-2147483647i, 1i, firstTrailingBit(global1[_wgslsmith_index_u32(4294967295u, 25u)]) ^ u_input.c.x), -2147483647i, 1i, reverseBits(~1i));
    return ~(~var_1.wzw);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec3<i32>) -> vec2<bool> {
    global2 = array<bool, 5>();
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-222f * -194f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-941f - -583f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -270f)));
    global0 = array<vec4<i32>, 23>();
    let var_1 = Struct_2(global2[_wgslsmith_index_u32(6770u, 5u)], Struct_1(select(arg_1.b, !(!arg_1.a), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, 38581u), 25u)] < _wgslsmith_dot_vec3_i32(u_input.e.wxx, vec3<i32>(global1[_wgslsmith_index_u32(u_input.d, 25u)], u_input.c.x, arg_2.x))), arg_1.a), _wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(u_input.a, ~u_input.a)), ~select(~vec2<u32>(u_input.a, 1u), vec2<u32>(2074u, u_input.d) | vec2<u32>(u_input.a, u_input.d), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1580f * 1252f))))), ~(u_input.a & ~49586u));
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-3112f))));
    return !arg_1.a;
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: vec4<f32>) -> vec2<f32> {
    global1 = array<i32, 25>();
    var var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, arg_2.x, arg_2.x, arg_2.x)), vec4<f32>(arg_2.x, 1434f, -1504f, 2238f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(arg_2)) + vec4<f32>(arg_2.x, -522f, -359f, 1257f)), _wgslsmith_f_op_vec4_f32(-arg_2)))), _wgslsmith_mod_vec3_i32(vec3<i32>(-(~u_input.e.x), u_input.b, _wgslsmith_clamp_i32(38562i ^ u_input.b, -67790i, ~global1[_wgslsmith_index_u32(1u, 25u)])), select(u_input.c.yxx, u_input.e.zzx, arg_1)), Struct_3(_wgslsmith_dot_vec4_u32(min(vec4<u32>(u_input.a, u_input.a, 76818u, u_input.a), vec4<u32>(u_input.a, 10393u, 75244u, 4294967295u)) >> (select(vec4<u32>(u_input.d, 24982u, u_input.d, 4294967295u), vec4<u32>(u_input.d, u_input.a, 2920u, 1u), vec4<bool>(global2[_wgslsmith_index_u32(1u, 5u)], true, false, true)) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 4294967295u), vec2<u32>(0u, 4294967295u)), u_input.a, ~u_input.d, 1u))), select(u_input.c.zx, u_input.c.wy, func_4(false, Struct_1(select(vec2<bool>(true, arg_1), vec2<bool>(false, true), false), vec2<bool>(arg_0, false)), _wgslsmith_mult_vec3_i32(func_3(Struct_3(0u), Struct_1(vec2<bool>(false, arg_0), vec2<bool>(false, false)), vec4<u32>(u_input.a, u_input.a, 13099u, 90652u), vec3<bool>(true, true, true)), select(u_input.e.xxx, u_input.e.wzy, vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 5u)], arg_1, false))))), -reverseBits(u_input.e.yz));
    let var_1 = firstLeadingBit(~(~(~(~vec4<u32>(u_input.a, var_0.c.a, var_0.c.a, 40270u)))));
    global2 = array<bool, 5>();
    global1 = array<i32, 25>();
    return vec2<f32>(986f, var_0.a.x);
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<i32>) -> vec3<u32> {
    global1 = array<i32, 25>();
    var var_0 = _wgslsmith_f_op_vec2_f32(func_2(u_input.d >= u_input.d, global1[_wgslsmith_index_u32(~min(~u_input.d, ~u_input.a), 25u)] != _wgslsmith_sub_i32(-arg_0.x << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 4294967295u, u_input.a, 1u), vec4<u32>(13799u, 0u, 2372u, u_input.d)) % 32u), u_input.e.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(553f, 382f, -125f, 1513f))))))));
    return vec3<u32>(4294967295u, 130296u, u_input.d);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 5>();
    var var_0 = _wgslsmith_div_vec3_i32(u_input.e.wxx << (func_1(u_input.e.yyy, -u_input.c.zwx) % vec3<u32>(32u)), ~firstTrailingBit(_wgslsmith_sub_vec3_i32(u_input.c.xww, vec3<i32>(-1i, global1[_wgslsmith_index_u32(4294967295u, 25u)], 22383i))));
    let var_1 = Struct_1(!(!select(func_4(global2[_wgslsmith_index_u32(u_input.d, 5u)], Struct_1(vec2<bool>(true, global2[_wgslsmith_index_u32(1u, 5u)]), vec2<bool>(global2[_wgslsmith_index_u32(38601u, 5u)], true)), u_input.e.wwz), select(vec2<bool>(global2[_wgslsmith_index_u32(u_input.d, 5u)], false), vec2<bool>(global2[_wgslsmith_index_u32(u_input.d, 5u)], global2[_wgslsmith_index_u32(4294967295u, 5u)]), vec2<bool>(false, false)), true)), select(select(vec2<bool>(true, all(vec2<bool>(false, true))), select(vec2<bool>(global2[_wgslsmith_index_u32(46717u, 5u)], true), vec2<bool>(global2[_wgslsmith_index_u32(19545u, 5u)], true), vec2<bool>(true, true)), !func_4(false, Struct_1(vec2<bool>(global2[_wgslsmith_index_u32(7703u, 5u)], true), vec2<bool>(true, true)), u_input.e.ywy)), !vec2<bool>(global2[_wgslsmith_index_u32(0u, 5u)], global2[_wgslsmith_index_u32(1u, 5u)]), !(!vec2<bool>(global2[_wgslsmith_index_u32(20976u, 5u)], global2[_wgslsmith_index_u32(9758u, 5u)]))));
    global1 = array<i32, 25>();
    var var_2 = global3[_wgslsmith_index_u32(4294967295u, 7u)];
    var var_3 = u_input.c.www;
    global3 = array<Struct_4, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_2.c.a, _wgslsmith_mult_u32(0u, var_2.c.a), max(45443u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.c.a, u_input.a, 0u, 0u), vec4<u32>(10777u, 4294967295u, u_input.a, u_input.a))) << (reverseBits(_wgslsmith_add_u32(11416u, var_2.c.a)) % 32u)), vec2<i32>(_wgslsmith_dot_vec3_i32(var_2.b, var_2.b), abs(var_3.x)), var_2.c.a, max(_wgslsmith_sub_i32(~(-68551i), func_3(var_2.c, var_1, vec4<u32>(var_2.c.a, 2015u, 4294967295u, var_2.c.a), vec3<bool>(false, true, var_1.b.x)).x), _wgslsmith_clamp_i32(var_0.x, firstLeadingBit(var_3.x), ~24988i)) >> ((var_2.c.a >> (4294967295u % 32u)) % 32u), var_2.a);
}

