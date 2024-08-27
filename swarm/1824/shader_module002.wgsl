struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<u32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: Struct_2,
    d: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: vec2<i32>,
    c: vec3<f32>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: vec4<bool>;

var<private> global2: array<f32, 10>;

var<private> global3: array<Struct_2, 12>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<i32>, arg_2: Struct_4) -> f32 {
    global0 = min(_wgslsmith_clamp_vec3_u32(countOneBits(arg_2.b.c), _wgslsmith_mod_vec3_u32(~(vec3<u32>(global0.x, 0u, 50463u) ^ u_input.e), vec3<u32>(4294967295u, firstTrailingBit(arg_0.b.c.x), arg_2.a.c.x)), u_input.e), _wgslsmith_mod_vec3_u32(arg_2.a.c, ~(~vec3<u32>(u_input.e.x, global0.x, arg_0.b.c.x))));
    var var_0 = Struct_2(arg_0.b, ~10623u);
    global2 = array<f32, 10>();
    var var_1 = arg_2;
    let var_2 = arg_2;
    return var_1.b.b;
}

fn func_2(arg_0: f32, arg_1: f32) -> Struct_5 {
    let var_0 = Struct_1(_wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.d.x & u_input.d.x, -4300i) >> (~global0.x % 32u), (u_input.d.x ^ u_input.c.x) | -(~0i)), _wgslsmith_f_op_f32(func_3(Struct_4(Struct_1(countOneBits(u_input.c.x), _wgslsmith_f_op_f32(f32(-1f) * -828f), u_input.e, vec2<bool>(global1.x, global1.x)), Struct_1(u_input.d.x, _wgslsmith_f_op_f32(-arg_0), select(u_input.e, vec3<u32>(u_input.e.x, u_input.b, 61150u), vec3<bool>(global1.x, false, global1.x)), !global1.xw)), _wgslsmith_sub_vec4_i32(-u_input.c, u_input.c) >> (vec4<u32>(abs(global0.x), _wgslsmith_add_u32(global0.x, u_input.b), 19385u, u_input.b) % vec4<u32>(32u)), Struct_4(Struct_1(~u_input.c.x, 1f, vec3<u32>(global0.x, global0.x, 55549u), vec2<bool>(true, false)), Struct_1(_wgslsmith_dot_vec3_i32(u_input.d, u_input.c.zzw), _wgslsmith_f_op_f32(f32(-1f) * -249f), _wgslsmith_div_vec3_u32(vec3<u32>(19230u, global0.x, u_input.b), u_input.e), global1.zz)))), min(vec3<u32>(41307u | u_input.b, global0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 11914u, global0.x, 0u), vec4<u32>(51754u, 4294967295u, 1u, 25663u))), vec3<u32>(4965u, _wgslsmith_div_u32(25925u, 1u), u_input.b)) << (countOneBits(select(u_input.e, ~u_input.e, select(vec3<bool>(global1.x, true, false), vec3<bool>(true, true, global1.x), false))) % vec3<u32>(32u)), !(!(!global1.xz)));
    var var_1 = Struct_3(false, 0u, global3[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(~var_0.c.x, 5329u), ~u_input.b << (var_0.c.x % 32u)), 12u)], arg_0);
    let var_2 = select(!vec4<bool>(21305u < _wgslsmith_div_u32(var_0.c.x, 4294967295u), !global1.x, true, true), !select(select(!vec4<bool>(true, true, false, var_0.d.x), !vec4<bool>(var_0.d.x, true, false, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, var_0.d.x, true, var_0.d.x), vec4<bool>(true, var_1.c.a.d.x, false, var_0.d.x), vec4<bool>(false, false, true, var_1.c.a.d.x)), !var_1.c.a.d.x), _wgslsmith_add_u32(~u_input.b & abs(var_1.c.a.c.x), 1u) != 1u);
    let var_3 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1812f, var_0.b, _wgslsmith_f_op_f32(arg_1 + -686f), _wgslsmith_div_f32(221f, var_1.d)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2[_wgslsmith_index_u32(global0.x, 10u)], arg_0, var_1.d, -1000f), vec4<f32>(127f, var_1.d, -730f, arg_0), false)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(global0.x, 10u)], var_1.c.a.b, global2[_wgslsmith_index_u32(1u, 10u)], global2[_wgslsmith_index_u32(global0.x, 10u)]) + vec4<f32>(global2[_wgslsmith_index_u32(u_input.b, 10u)], arg_1, -319f, 1789f)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1490f, arg_0, 2092f, 784f))))))))));
    global3 = array<Struct_2, 12>();
    return Struct_5(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-645f)), _wgslsmith_f_op_f32(-var_3.x)) * _wgslsmith_f_op_f32(var_1.c.a.b - _wgslsmith_f_op_f32(func_3(Struct_4(var_0, var_0), vec4<i32>(-2147483647i, var_1.c.a.a, var_0.a, -33350i), Struct_4(Struct_1(-3207i, arg_1, var_0.c, var_1.c.a.d), var_1.c.a))))), ~vec2<i32>(_wgslsmith_add_i32(-1i, -2147483647i), -countOneBits(var_1.c.a.a)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-305f, global2[_wgslsmith_index_u32(1u, 10u)])), _wgslsmith_f_op_f32(var_3.x + arg_0))), _wgslsmith_f_op_f32(f32(-1f) * -547f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d * arg_0) + -695f) * global2[_wgslsmith_index_u32(var_0.c.x, 10u)])), _wgslsmith_f_op_f32(373f + 1531f));
}

fn func_4(arg_0: Struct_5, arg_1: u32, arg_2: i32, arg_3: Struct_3) -> vec3<u32> {
    let var_0 = arg_3.c;
    global2 = array<f32, 10>();
    global3 = array<Struct_2, 12>();
    var var_1 = Struct_4(Struct_1(-(~min(7477i, var_0.a.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2143f * 989f))), vec3<u32>(28672u, countOneBits(arg_1), ~max(4294967295u, 25032u)), vec2<bool>(var_0.a.d.x, var_0.a.d.x)), Struct_1(_wgslsmith_dot_vec4_i32(min(vec4<i32>(u_input.c.x, arg_2, arg_3.c.a.a, u_input.d.x), vec4<i32>(-2147483647i, 0i, var_0.a.a, arg_0.b.x)) | (vec4<i32>(0i, -20652i, u_input.c.x, var_0.a.a) << (vec4<u32>(u_input.b, var_0.a.c.x, global0.x, 47274u) % vec4<u32>(32u))), vec4<i32>(27123i, arg_0.b.x, 2147483647i, arg_0.b.x)), _wgslsmith_f_op_f32(abs(arg_3.d)), select(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.c.x, arg_1), vec2<u32>(u_input.b, arg_3.b)), arg_1, 29706u), ~reverseBits(vec3<u32>(0u, 79147u, 1835u)), global1.x), !(!var_0.a.d)));
    global0 = var_0.a.c;
    return vec3<u32>(~_wgslsmith_dot_vec3_u32(max(min(arg_3.c.a.c, vec3<u32>(u_input.b, 4294967295u, 1u)), min(vec3<u32>(arg_3.b, 1u, 70279u), vec3<u32>(3670u, arg_3.b, global0.x))), ~u_input.e), _wgslsmith_sub_u32(arg_3.b & var_1.b.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b, max(1u, arg_3.c.b), arg_1), _wgslsmith_mod_vec3_u32(~arg_3.c.a.c, var_0.a.c))), _wgslsmith_dot_vec2_u32(u_input.e.yz << (~_wgslsmith_mult_vec2_u32(vec2<u32>(global0.x, var_1.a.c.x), vec2<u32>(global0.x, 4294967295u)) % vec2<u32>(32u)), ~u_input.e.xz));
}

fn func_1(arg_0: u32, arg_1: i32) -> i32 {
    global0 = vec3<u32>(_wgslsmith_clamp_u32(global0.x, global0.x, ~(~global0.x)), select(~(~_wgslsmith_add_u32(76983u, 58913u)), 1u, global1.x), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~(u_input.e >> (u_input.e % vec3<u32>(32u))), func_4(func_2(global2[_wgslsmith_index_u32(u_input.b, 10u)], 470f), ~arg_0, select(arg_1, 1i, false), Struct_3(false, u_input.b, Struct_2(Struct_1(-36609i, global2[_wgslsmith_index_u32(31715u, 10u)], vec3<u32>(arg_0, 36690u, 22214u), vec2<bool>(global1.x, false)), global0.x), global2[_wgslsmith_index_u32(global0.x, 10u)]))), _wgslsmith_mult_vec3_u32(u_input.e, vec3<u32>(global0.x, func_4(Struct_5(-226f, u_input.c.wx, vec3<f32>(global2[_wgslsmith_index_u32(0u, 10u)], -501f, global2[_wgslsmith_index_u32(global0.x, 10u)]), -1623f), u_input.e.x, arg_1, Struct_3(false, 1u, Struct_2(Struct_1(u_input.d.x, 2002f, u_input.e, vec2<bool>(global1.x, true)), 1u), 509f)).x, global0.x))));
    let var_0 = Struct_1(-firstTrailingBit(31315i), _wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(~(~4294967295u), 10u)])), u_input.e, select(vec2<bool>(true, ~1u != _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, global0.x, arg_0, 1u), vec4<u32>(global0.x, 1u, 4294967295u, 27811u))), select(vec2<bool>(global1.x, arg_1 >= 28008i), vec2<bool>(all(global1.xxy), global1.x), global1.x), true));
    var var_1 = var_0;
    let var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b, global2[_wgslsmith_index_u32(var_1.c.x, 10u)], 529f))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, -1101f, 2146f)))), select(vec3<bool>(true, var_1.d.x, var_1.d.x), global1.ywy, false))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 10u)]), _wgslsmith_div_f32(var_1.b, 1059f)), 1095f, _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(240f + var_1.b))))));
    var var_3 = abs(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.c.x, arg_0, 4294967295u) ^ ~(~var_0.c), u_input.e));
    return max(var_1.a, ~max(1i, ~var_1.a)) >> (_wgslsmith_add_u32(abs(33102u), select(~u_input.b, func_4(Struct_5(-257f, vec2<i32>(-2147483647i, var_1.a), var_2, var_0.b), 43606u, -1i, Struct_3(true, 4294967295u, global3[_wgslsmith_index_u32(24728u, 12u)], var_1.b)).x, var_1.d.x) & _wgslsmith_dot_vec3_u32(vec3<u32>(var_3.x, 4294967295u, var_0.c.x), vec3<u32>(u_input.b, arg_0, var_1.c.x))) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec3_i32(u_input.d, _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, ~u_input.d.x ^ -u_input.d.x, -func_1(u_input.e.x, 1i)), u_input.d, ~vec3<i32>(_wgslsmith_div_i32(u_input.c.x, -1i), min(1i, 48352i), ~u_input.a.x)));
    var var_1 = ~u_input.e;
    global0 = u_input.e;
    var var_2 = Struct_2(Struct_1(-1i << (~(~1u) % 32u), 425f, vec3<u32>(1u, firstTrailingBit(0u), 0u), vec2<bool>(any(global1.xz) | global1.x, false)), var_1.x);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(abs(4294967295u), 10u)]) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~1u, 10u)]) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(2178u, 10u)])), var_2.a.b)));
    let x = u_input.a;
    s_output = StorageBuffer(max(vec4<u32>(4294967295u, var_1.x, 87425u, 33893u), select(max(vec4<u32>(u_input.e.x, 7981u, 15470u, u_input.e.x) | vec4<u32>(global0.x, 70749u, 12167u, 1u), vec4<u32>(u_input.e.x, 0u, 59306u, 1u) ^ vec4<u32>(43211u, 4294967295u, var_1.x, 20810u)), max(vec4<u32>(var_1.x, var_2.a.c.x, var_2.a.c.x, 1u), vec4<u32>(var_2.b, 8865u, u_input.b, u_input.b)), select(select(vec4<bool>(true, global1.x, global1.x, true), vec4<bool>(global1.x, var_2.a.d.x, true, var_2.a.d.x), true), select(vec4<bool>(true, global1.x, global1.x, true), vec4<bool>(var_2.a.d.x, false, true, global1.x), vec4<bool>(global1.x, global1.x, false, false)), false))), var_2.a.b);
}

