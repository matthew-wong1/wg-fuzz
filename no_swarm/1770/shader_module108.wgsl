struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 31> = array<vec2<u32>, 31>(vec2<u32>(0u, 0u), vec2<u32>(26351u, 1u), vec2<u32>(1u, 4294967295u), vec2<u32>(7175u, 4294967295u), vec2<u32>(89899u, 0u), vec2<u32>(0u, 41779u), vec2<u32>(15657u, 1u), vec2<u32>(1u, 12432u), vec2<u32>(43638u, 45432u), vec2<u32>(0u, 1839u), vec2<u32>(15362u, 0u), vec2<u32>(48808u, 30071u), vec2<u32>(4294967295u, 64755u), vec2<u32>(32469u, 4294967295u), vec2<u32>(4294967295u, 88865u), vec2<u32>(17486u, 56269u), vec2<u32>(4294967295u, 36754u), vec2<u32>(41376u, 21615u), vec2<u32>(4294967295u, 34421u), vec2<u32>(37167u, 1u), vec2<u32>(0u, 1u), vec2<u32>(14426u, 64952u), vec2<u32>(43768u, 4972u), vec2<u32>(23160u, 0u), vec2<u32>(37137u, 0u), vec2<u32>(30992u, 4294967295u), vec2<u32>(51583u, 3708u), vec2<u32>(10724u, 14861u), vec2<u32>(1u, 4294967295u), vec2<u32>(21057u, 1u), vec2<u32>(1u, 20267u));

var<private> global1: Struct_2 = Struct_2(vec3<bool>(true, false, false), true, vec2<i32>(-58540i, 1i));

var<private> global2: bool;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = ~arg_0.d;
    global2 = arg_0.a.x;
    global0 = array<vec2<u32>, 31>();
    var var_1 = Struct_2(select(vec3<bool>(!(!global1.b), true, true), arg_0.a, arg_0.a), arg_0.a.x, vec2<i32>(u_input.c, ~(-1i)));
    global2 = global1.a.x;
    return select(!select(!vec4<bool>(false, arg_0.a.x, true, global1.b), vec4<bool>(!global1.b, select(var_1.b, false, arg_0.a.x), var_1.b, true), global1.b), vec4<bool>(!var_1.b, true, true, arg_0.a.x), vec4<bool>(!(!(var_0.x != 10403u)), any(var_1.a.zz), select(!global1.a.x || (arg_0.a.x || arg_0.a.x), arg_0.a.x, !global1.a.x), !var_1.b));
}

fn func_2(arg_0: bool) -> bool {
    var var_0 = Struct_2(global1.a, all(!func_3(Struct_1(vec3<bool>(false, global1.a.x, true), u_input.a, global1.c.x, vec2<u32>(1u, u_input.a), -2810f))), ~(u_input.b.wy ^ vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.b.zyx, u_input.b.xyy), i32(-1i) * -2147483647i)));
    global2 = !arg_0;
    return !(!any(select(func_3(Struct_1(vec3<bool>(true, var_0.a.x, false), u_input.a, global1.c.x, global0[_wgslsmith_index_u32(u_input.a, 31u)], -1000f)).yx, func_3(Struct_1(var_0.a, 1u, u_input.c, global0[_wgslsmith_index_u32(60628u, 31u)], 358f)).yw, var_0.a.yx)));
}

fn func_4(arg_0: bool, arg_1: vec2<bool>, arg_2: bool) -> f32 {
    global1 = Struct_2(!func_3(Struct_1(vec3<bool>(arg_2, global1.a.x, false), u_input.a, global1.c.x, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(u_input.a, u_input.a)), 31u)], -437f)).yxy, arg_2 | (~abs(global1.c.x) <= ~countOneBits(-2147483647i)), firstLeadingBit(abs(vec2<i32>(_wgslsmith_sub_i32(1i, -10049i), _wgslsmith_mult_i32(-1483i, 1i)))));
    let var_0 = Struct_2(func_3(Struct_1(global1.a, ~(~u_input.a), global1.c.x, ~global0[_wgslsmith_index_u32(~u_input.a, 31u)], 1000f)).yxz, false, min(~vec2<i32>(_wgslsmith_sub_i32(-1i, -27376i), min(global1.c.x, -1i)), ~global1.c));
    global2 = true;
    global2 = false;
    let var_1 = !(!(!vec4<bool>(var_0.c.x <= u_input.b.x, true, !arg_0, any(global1.a.zz))));
    return _wgslsmith_f_op_f32(1000f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1133f - 524f)) * _wgslsmith_f_op_f32(-1220f * _wgslsmith_div_f32(-311f, -559f))), -1000f));
}

fn func_1(arg_0: i32) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(any(!vec2<bool>(global1.a.x, true)) | true, global1.a.xy, func_2(true) && true)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_4(~u_input.a != ~u_input.a, global1.a.yy, true)), -1935f, func_2(!global1.b))));
}

fn func_5(arg_0: f32, arg_1: vec4<bool>) -> u32 {
    var var_0 = Struct_1(vec3<bool>(global1.a.x, false, arg_1.x), u_input.a, reverseBits(abs(~(-global1.c.x))), vec2<u32>(0u, u_input.a), 1292f);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.e, var_0.e, arg_0))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.e, var_0.e, arg_0) - vec3<f32>(arg_0, 1000f, 365f)) + vec3<f32>(-829f, 644f, arg_0)))));
    var var_2 = 1421f;
    let var_3 = _wgslsmith_add_vec4_i32(vec4<i32>(-_wgslsmith_div_i32(_wgslsmith_add_i32(45225i, -78193i), reverseBits(var_0.c)), -_wgslsmith_dot_vec2_i32(global1.c, _wgslsmith_sub_vec2_i32(vec2<i32>(13664i, -44291i), vec2<i32>(10311i, global1.c.x))), u_input.b.x >> (~select(8394u, var_0.d.x, arg_1.x) % 32u), 2147483647i), select(vec4<i32>(global1.c.x, 0i, _wgslsmith_sub_i32(u_input.b.x, 2147483647i), global1.c.x), vec4<i32>(~(-41136i), global1.c.x, u_input.c, -10489i), vec4<bool>(false, var_0.a.x, true, true)));
    var var_4 = vec2<u32>(4294967295u, var_0.d.x);
    return 60380u;
}

fn func_6(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1, arg_3: i32) -> u32 {
    let var_0 = Struct_1(!select(!select(arg_1.a, vec3<bool>(true, arg_2.a.x, global1.a.x), true), func_3(arg_2).yyz, false), 1u, _wgslsmith_add_i32(~arg_1.c.x, 0i), countOneBits(vec2<u32>(abs(arg_0), u_input.a)) ^ _wgslsmith_mod_vec2_u32(firstTrailingBit(firstTrailingBit(arg_2.d)), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(33479u, arg_2.d.x)) << (~global0[_wgslsmith_index_u32(u_input.a, 31u)] % vec2<u32>(32u))), _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.e) + _wgslsmith_f_op_f32(func_1(-1i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.e + arg_2.e) - -1186f))))));
    var var_1 = u_input.b;
    let var_2 = reverseBits(var_0.d.x);
    var var_3 = arg_2;
    var_1 = _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_div_i32(-30653i, i32(-1i) * -25380i), -u_input.c | _wgslsmith_div_i32(arg_1.c.x, var_0.c), countOneBits(arg_3), var_0.c), vec4<i32>(max(~global1.c.x, arg_2.c >> (4294967295u % 32u)), _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(arg_2.c, global1.c.x, u_input.c, var_3.c)), -reverseBits(u_input.b.x), global1.c.x)) << ((select(vec4<u32>(~63456u, var_0.b, ~16463u, _wgslsmith_mult_u32(arg_0, 1u)), abs(vec4<u32>(var_2, 86318u, 22755u, var_3.b)) << (~vec4<u32>(arg_2.d.x, 4294967295u, var_3.b, 1u) % vec4<u32>(32u)), !(!vec4<bool>(var_0.a.x, arg_2.a.x, var_3.a.x, arg_1.a.x))) << (firstLeadingBit(~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 1u, 58405u, u_input.a), vec4<u32>(u_input.a, var_2, 37747u, 0u))) % vec4<u32>(32u))) % vec4<u32>(32u));
    return var_2 ^ 26310u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(_wgslsmith_f_op_f32(func_1(global1.c.x)), !func_3(Struct_1(global1.a, u_input.a, 0i, global0[_wgslsmith_index_u32(u_input.a, 31u)], -490f))), Struct_2(vec3<bool>(func_3(Struct_1(vec3<bool>(global1.a.x, global1.b, global1.b), u_input.a, -39152i, global0[_wgslsmith_index_u32(42762u, 31u)], 1188f)).x != all(vec2<bool>(global1.b, true)), any(vec4<bool>(false, global1.b, global1.a.x, global1.b)) == all(global1.a.xz), global1.a.x), any(select(global1.a.yx, func_3(Struct_1(vec3<bool>(global1.b, true, true), u_input.a, global1.c.x, global0[_wgslsmith_index_u32(u_input.a, 31u)], 597f)).zx, true)), global1.c), Struct_1(global1.a, 4766u, select((-2147483647i & global1.c.x) | reverseBits(global1.c.x), max(-28613i, _wgslsmith_div_i32(global1.c.x, -38677i)), any(vec3<bool>(global1.a.x, global1.b, true))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(countOneBits(~vec3<u32>(29457u, u_input.a, u_input.a)), _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(33047u, 1u, 4294967295u), vec3<u32>(u_input.a, 1u, u_input.a)), vec3<u32>(12964u, u_input.a, u_input.a))), 31u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1322f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(887f * -989f))))), 1i);
    var var_1 = Struct_2(select(vec3<bool>(global1.b, true, any(global1.a.yz)), global1.a, global1.b), !global1.a.x, reverseBits((u_input.b.yx << (vec2<u32>(29410u, 8542u) % vec2<u32>(32u))) >> (vec2<u32>(0u, 35612u) % vec2<u32>(32u))) | u_input.b.yz);
    global1 = Struct_2(var_1.a, true, ~abs(~vec2<i32>(u_input.c, 9075i)));
    var var_2 = u_input.c;
    var_1 = Struct_2(var_1.a, false, abs(-vec2<i32>(~u_input.b.x, var_1.c.x)));
    var var_3 = ~firstLeadingBit(abs(global1.c.x));
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(367f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(776f - -1234f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_4.x))), -1296f)), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(var_0, ~13997u, var_0)), ~(~vec3<u32>(53078u, var_0, 0u)) | ~select(vec3<u32>(35323u, 35749u, 23782u), vec3<u32>(21009u, 28818u, 0u), global1.a)));
}

