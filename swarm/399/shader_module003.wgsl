struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec4<bool>,
    d: f32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<bool, 28> = array<bool, 28>(false, false, false, true, true, false, true, true, false, true, true, true, false, true, false, true, true, true, true, true, false, true, false, false, true, true, true, false);

var<private> global2: vec2<f32> = vec2<f32>(-239f, 546f);

var<private> global3: vec3<u32> = vec3<u32>(13429u, 4294967295u, 24793u);

var<private> global4: array<Struct_2, 5>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: bool) -> vec2<u32> {
    var var_0 = _wgslsmith_div_f32(1113f, 521f);
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(arg_0.d.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.a.x) - -226f) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-308f, -199f) * _wgslsmith_f_op_f32(trunc(arg_1))))), !select(vec4<bool>(arg_2, !arg_0.d.c.x, global1[_wgslsmith_index_u32(u_input.a, 28u)], all(arg_0.d.c.zyy)), arg_0.d.c, !arg_2), _wgslsmith_f_op_f32(-389f + _wgslsmith_f_op_f32(-901f * _wgslsmith_f_op_f32(select(arg_1, _wgslsmith_f_op_f32(-arg_1), true)))), select(vec3<i32>(-1i ^ u_input.e, firstLeadingBit(2147483647i), -arg_0.d.e.x | u_input.e), arg_0.c.e, any(arg_0.c.c.yw)));
    var var_2 = ~countOneBits(global0.zz);
    global4 = array<Struct_2, 5>();
    let var_3 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1945f)) * -465f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 - -295f) + -505f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(444f)))))));
    return ~vec2<u32>(3000u, arg_0.b.x);
}

fn func_2() -> vec4<bool> {
    return vec4<bool>(!(!(!(!global1[_wgslsmith_index_u32(67451u, 28u)]))), _wgslsmith_dot_vec2_u32(~func_3(global4[_wgslsmith_index_u32(47847u, 5u)], -220f, global1[_wgslsmith_index_u32(1u, 28u)]), ~vec2<u32>(1u, 33825u)) < global3.x, global1[_wgslsmith_index_u32(4294967295u, 28u)], global1[_wgslsmith_index_u32(18472u, 28u)]);
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> f32 {
    var var_0 = global4[_wgslsmith_index_u32(~(~_wgslsmith_clamp_u32(30989u, 0u, reverseBits(37450u)) | (min(countOneBits(global0.x), u_input.b) << (_wgslsmith_dot_vec4_u32(vec4<u32>(global3.x, 78281u, global0.x, 16699u), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 4294967295u, 41173u, u_input.b), vec4<u32>(u_input.a, global3.x, 43949u, global0.x))) % 32u))), 5u)];
    global1 = array<bool, 28>();
    var var_1 = !(!var_0.a.c);
    let var_2 = _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(~global0.x, firstTrailingBit(global0.x), _wgslsmith_dot_vec3_u32(vec3<u32>(global3.x, 4294967295u, u_input.c), vec3<u32>(arg_0, global0.x, 4294967295u)), select(1u, u_input.d.x, var_1.x)) << ((~var_0.e >> (firstTrailingBit(var_0.e) % vec4<u32>(32u))) % vec4<u32>(32u)), (_wgslsmith_sub_vec4_u32(var_0.e, vec4<u32>(var_0.e.x, global3.x, 4294967295u, 0u)) ^ var_0.e) & (abs(vec4<u32>(global0.x, global0.x, arg_0, 3474u)) | var_0.e)), var_0.e);
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(-656f)), _wgslsmith_f_op_f32(round(485f)), _wgslsmith_f_op_f32(-global2.x), 1000f)) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b, var_0.d.d, arg_2.a.x, -100f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.d, -190f, arg_2.d, -949f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, arg_2.a.x, -997f, arg_3))), true)));
    return 1912f;
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(func_4(u_input.c, Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(global2.x, 759f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1848f, global2.x) + vec2<f32>(1067f, 1543f))))), global2.x, select(!select(vec4<bool>(true, false, false, global1[_wgslsmith_index_u32(global0.x, 28u)]), vec4<bool>(true, true, global1[_wgslsmith_index_u32(16125u, 28u)], true), global1[_wgslsmith_index_u32(4597u, 28u)]), func_2(), !(!vec4<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 28u)], global1[_wgslsmith_index_u32(43920u, 28u)], true))), global2.x, -vec3<i32>(reverseBits(1388i), ~1781i, u_input.e)), Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, global2.x) - vec2<f32>(global2.x, global2.x)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, 484f), vec2<f32>(global2.x, global2.x), vec2<bool>(false, true))))), vec2<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(681f - 1925f)))), global2.x, vec4<bool>(all(func_2().xzx), any(!vec4<bool>(false, global1[_wgslsmith_index_u32(78264u, 28u)], global1[_wgslsmith_index_u32(1u, 28u)], false)), global1[_wgslsmith_index_u32(global0.x, 28u)], false), global2.x, -abs(vec3<i32>(u_input.e, u_input.e, 20399i) ^ vec3<i32>(6259i, 17815i, 0i))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(global2.x)), global2.x))));
    let var_1 = Struct_3(-1i, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(15608u, global3.x) << (u_input.d.zy % vec2<u32>(32u)), select(u_input.d.zy, ~vec2<u32>(0u, 10376u), select(vec2<bool>(global1[_wgslsmith_index_u32(global0.x, 28u)], true), vec2<bool>(true, global1[_wgslsmith_index_u32(1u, 28u)]), vec2<bool>(global1[_wgslsmith_index_u32(global0.x, 28u)], false)))), _wgslsmith_dot_vec2_u32(~(~global3.yy), firstTrailingBit(vec2<u32>(global3.x, global3.x)) >> ((vec2<u32>(global3.x, u_input.a) ^ vec2<u32>(38023u, 14028u)) % vec2<u32>(32u)))), -4338i, _wgslsmith_sub_u32(global0.x, _wgslsmith_mult_u32(_wgslsmith_add_u32(~4294967295u, u_input.b), abs(u_input.b))));
    global1 = array<bool, 28>();
    let var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(global2.x - -582f), _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1554f, global2.x, 152f)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.x, -911f, global2.x), vec3<f32>(global2.x, global2.x, 1350f), global1[_wgslsmith_index_u32(global0.x, 28u)]))), vec3<f32>(_wgslsmith_f_op_f32(abs(-515f)), global2.x, 981f))))));
    let var_3 = Struct_4(Struct_3(u_input.e & -_wgslsmith_div_i32(0i, 2147483647i), ~global3.x, -1i, ~_wgslsmith_div_u32(global3.x, 11307u)));
    return 76859u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_mod_vec3_u32(vec3<u32>(func_1(), 19527u, firstTrailingBit(abs(188u)) << (func_1() % 32u)), u_input.d);
    global0 = vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.d.yz, _wgslsmith_mod_vec2_u32(global0.zy, vec2<u32>(4294967295u, u_input.c))) << (global3.x % 32u), firstTrailingBit(_wgslsmith_div_u32(_wgslsmith_add_u32(~global0.x, ~4294967295u), _wgslsmith_mult_u32(min(global0.x, 22065u), _wgslsmith_clamp_u32(global0.x, 82937u, 4294967295u)))), ~_wgslsmith_mod_u32(_wgslsmith_mult_u32(global0.x, 0u), global0.x));
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, 1546f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1045f, 1525f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-512f, global2.x)))), global2.x, vec4<bool>(!any(vec3<bool>(true, false, true)), all(select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 28u)], global1[_wgslsmith_index_u32(global3.x, 28u)], global1[_wgslsmith_index_u32(48245u, 28u)], true), vec4<bool>(false, global1[_wgslsmith_index_u32(22490u, 28u)], true, false), true)), u_input.e <= firstTrailingBit(u_input.e), false), -1000f, firstTrailingBit(vec3<i32>(0i, _wgslsmith_div_i32(34788i, 22153i), u_input.e))), ~vec4<u32>(21031u, u_input.b & ~global0.x, 17988u, u_input.a), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, 1126f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), func_2(), _wgslsmith_f_op_f32(-155f * 3082f), firstTrailingBit(vec3<i32>(i32(-1i) * -1i, u_input.e, -2147483647i))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.x, global2.x) * global2.x), 102f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1080f) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(global2.x, -584f)), -681f, true))), select(!select(vec4<bool>(global1[_wgslsmith_index_u32(94650u, 28u)], global1[_wgslsmith_index_u32(u_input.b, 28u)], global1[_wgslsmith_index_u32(0u, 28u)], false), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 28u)], global1[_wgslsmith_index_u32(global3.x, 28u)], false, global1[_wgslsmith_index_u32(4294967295u, 28u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 28u)], false, global1[_wgslsmith_index_u32(1u, 28u)])), vec4<bool>(global1[_wgslsmith_index_u32(global0.x, 28u)], u_input.e == 2147483647i, global1[_wgslsmith_index_u32(1u >> (u_input.a % 32u), 28u)], false), func_2()), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1f)), _wgslsmith_f_op_f32(abs(1000f))), firstTrailingBit(-vec3<i32>(2147483647i, -1i, u_input.e)) ^ (vec3<i32>(-1i) * -vec3<i32>(u_input.e, u_input.e, 820i))), ~(~abs(~vec4<u32>(0u, 0u, 7461u, 104209u))));
    global4 = array<Struct_2, 5>();
    global0 = countOneBits(reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(var_0.b.x, u_input.b, 0u), var_0.b.zxz)) ^ (_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.a, 4294967295u, 4294967295u), select(vec3<u32>(global0.x, global3.x, 1u), vec3<u32>(0u, 4294967295u, 72015u), var_0.d.c.x)) & _wgslsmith_sub_vec3_u32(vec3<u32>(var_0.b.x, 1u, 33508u), min(vec3<u32>(global3.x, u_input.c, global3.x), u_input.d))));
    let var_1 = _wgslsmith_f_op_f32(-global2.x);
    let var_2 = global3.x;
    global1 = array<bool, 28>();
    global1 = array<bool, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, var_0.c.e.x, -2147483647i, var_0.c.e.x) ^ vec4<i32>(var_0.c.e.x, u_input.e, 0i, u_input.e), min(vec4<i32>(var_0.a.e.x, -1i, 17645i, 7039i), reverseBits(vec4<i32>(u_input.e, u_input.e, -2147483647i, 8363i)))), firstLeadingBit(abs(vec4<i32>(1i, 20583i, var_0.a.e.x, 43472i)))), _wgslsmith_f_op_f32(-global2.x), var_0.a.e);
}

