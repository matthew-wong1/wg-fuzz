struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: Struct_2,
    d: u32,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct Struct_5 {
    a: u32,
    b: f32,
    c: vec3<i32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec2<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 5> = array<vec2<i32>, 5>(vec2<i32>(-14218i, 58713i), vec2<i32>(90623i, -1i), vec2<i32>(-12729i, 2147483647i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(-32170i, -2776i));

var<private> global1: Struct_1;

var<private> global2: vec3<f32> = vec3<f32>(1138f, 659f, 126f);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec2<u32>) -> vec2<f32> {
    global1 = Struct_1(global1.a, !select(global1.b, vec4<bool>(!global1.b.x, select(global1.b.x, global1.b.x, global1.b.x), u_input.b.x >= 1u, any(global1.b.wz)), vec4<bool>(u_input.a > 23111i, global1.b.x, false, false)), ~(~u_input.b.x));
    var var_0 = true;
    var var_1 = ~_wgslsmith_add_vec3_u32(u_input.b.yzy, u_input.b.xyy);
    global1 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global2.x, -2499f))), select(global1.b, vec4<bool>(all(global1.b.xw), any(!global1.b), any(select(global1.b.wwz, global1.b.wyx, vec3<bool>(false, true, global1.b.x))), true), global1.b), 24486u);
    global1 = Struct_1(-148f, global1.b, _wgslsmith_div_u32(arg_0.x, 71010u));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2.x)))), _wgslsmith_f_op_f32(-global2.x)));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global1.a, global2.x), _wgslsmith_f_op_vec2_f32(global2.zz * vec2<f32>(757f, global1.a)))), vec2<f32>(_wgslsmith_f_op_f32(global1.a + 718f), global2.x)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(global2.yx - global2.yx), _wgslsmith_f_op_vec2_f32(func_3(u_input.b.zy)), global1.b.x)), global2.zy)) * _wgslsmith_div_vec2_f32(global2.yz, vec2<f32>(global2.x, _wgslsmith_f_op_vec2_f32(func_3(~vec2<u32>(0u, global1.c))).x)));
    global0 = array<vec2<i32>, 5>();
    var var_1 = _wgslsmith_mod_u32(u_input.b.x, global1.c);
    global0 = array<vec2<i32>, 5>();
    global1 = Struct_1(138f, global1.b, u_input.b.x);
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.a)) * _wgslsmith_div_f32(global1.a, 1410f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1657f, global1.a, global1.b.x)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1427f))), vec4<bool>(true, false, !all(vec2<bool>(global1.b.x, false)), all(global1.b.yxx)), 1u);
}

fn func_1() -> Struct_3 {
    let var_0 = func_2();
    global1 = var_0;
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a - 478f), 536f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - global1.a)), _wgslsmith_f_op_f32(-738f * 181f), 1000f)), select(_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.c, u_input.c), vec3<i32>(u_input.a, 6539i, u_input.c)), ~vec3<i32>(1i, 2147483647i, 1i)), _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(39710i, -13733i, u_input.c), vec3<i32>(-1i, -35210i, u_input.a)), vec3<i32>(1i, 12192i, u_input.c) >> (vec3<u32>(1u, 4294967295u, 10958u) % vec3<u32>(32u)))), _wgslsmith_clamp_vec3_i32(vec3<i32>(-u_input.c, _wgslsmith_sub_i32(-8571i, u_input.a), u_input.a ^ u_input.a), vec3<i32>(27525i, _wgslsmith_mod_i32(0i, -1i), 2147483647i), _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, u_input.a, -22573i), vec3<i32>(u_input.a, 0i, 27955i), vec3<i32>(u_input.a, u_input.c, u_input.c)), reverseBits(vec3<i32>(0i, -2147483647i, 1i)))), _wgslsmith_f_op_f32(floor(global1.a)) > global1.a), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2217f, global1.a, -1000f)) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.a, -297f, 1866f))))), var_0, u_input.a), var_0.c);
    var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(var_1.c.a.x - 1465f), _wgslsmith_f_op_f32(-var_1.a.x), 361f, _wgslsmith_f_op_f32(-var_1.a.x)))), -_wgslsmith_div_vec3_i32(~vec3<i32>(u_input.c, u_input.c, 1189i), ~var_1.b) & vec3<i32>(-firstLeadingBit(0i), -abs(0i), -45240i), var_1.c, ~max(_wgslsmith_dot_vec2_u32(u_input.b.zz, ~vec2<u32>(48444u, 32579u)), ~_wgslsmith_mod_u32(var_0.c, u_input.b.x)));
    var var_2 = func_2().b.yw;
    return Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-var_1.a)))), vec3<i32>(_wgslsmith_mult_i32(-2147483647i, u_input.c), min(max(var_1.c.c, ~u_input.a), -2147483647i), 0i), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-432f + 526f) + _wgslsmith_f_op_f32(f32(-1f) * -1176f)), -652f, _wgslsmith_f_op_f32(func_2().a - _wgslsmith_f_op_f32(-var_0.a))), var_0, u_input.c), 1u);
}

fn func_4(arg_0: Struct_3) -> f32 {
    global0 = array<vec2<i32>, 5>();
    global1 = arg_0.c.b;
    let var_0 = true;
    let var_1 = ~abs(countOneBits(_wgslsmith_dot_vec4_u32(u_input.b, u_input.b ^ u_input.b)));
    let var_2 = global1.b;
    return _wgslsmith_f_op_f32(-global2.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 5>();
    global2 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(global2.x * -345f)), global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -351f) - _wgslsmith_f_op_f32(1814f - global2.x)) * _wgslsmith_f_op_f32(func_4(func_1()))))));
    global0 = array<vec2<i32>, 5>();
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(func_2().a, _wgslsmith_f_op_f32(f32(-1f) * -836f), _wgslsmith_f_op_f32(global2.x + 1046f), _wgslsmith_f_op_f32(-global1.a)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.a, global1.a, -1319f, 1673f), vec4<f32>(1397f, 713f, 128f, -276f))))), firstTrailingBit(vec3<i32>(func_1().c.c, _wgslsmith_mod_i32(i32(-1i) * -40661i, func_1().c.c), ~11655i >> (~u_input.b.x % 32u))), Struct_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2310f, 1255f, global1.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global2.x, global1.a, global1.a), vec3<f32>(-1393f, global2.x, global2.x)) + vec3<f32>(global1.a, 1605f, 225f)))), Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(1044f)))), vec4<bool>(true, true, all(global1.b.xyx), !global1.b.x), u_input.b.x), max(min(_wgslsmith_dot_vec2_i32(global0[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(1u, 5u)]), -10721i), u_input.a)), u_input.b.x);
    global1 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(~global1.c, 19121u), u_input.b.x), 58153u, _wgslsmith_sub_u32(_wgslsmith_div_u32(~51914u, u_input.b.x), 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.d, var_0.d, 0u), firstTrailingBit(u_input.b.zxx)) << ((global1.c >> (u_input.b.x % 32u)) % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2.x)))))), _wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.b.x ^ u_input.b.x, u_input.b.x), _wgslsmith_mod_vec2_u32(vec2<u32>(var_0.c.b.c, var_0.d), _wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(4294967295u, 0u)), u_input.b.xy))), vec4<f32>(2617f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-465f + _wgslsmith_f_op_f32(max(-754f, -274f))), 1f)), 970f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1707f + _wgslsmith_f_op_f32(func_4(Struct_3(vec4<f32>(1000f, 902f, var_0.a.x, -1388f), vec3<i32>(44841i, 1i, u_input.c), Struct_2(vec3<f32>(var_0.c.a.x, 687f, -462f), var_0.c.b, var_0.b.x), global1.c)))) - 531f)));
}

