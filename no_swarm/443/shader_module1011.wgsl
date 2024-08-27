struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 14> = array<i32, 14>(-60946i, -1i, -34530i, -4486i, 11200i, -24116i, -1i, -37266i, -1i, -1i, 42841i, -22896i, 38274i, 22729i);

var<private> global1: array<Struct_2, 24>;

var<private> global2: Struct_1 = Struct_1(6918u, vec3<f32>(-774f, 1102f, 1081f), vec3<bool>(true, false, true));

var<private> global3: Struct_1;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_2) -> vec3<f32> {
    let var_0 = select(vec3<bool>(global2.c.x, global3.c.x, global3.c.x), !(!global2.c), global2.c);
    global3 = Struct_1((((43161u << (u_input.a.x % 32u)) >> (~8200u % 32u)) >> (_wgslsmith_mod_u32(1u, reverseBits(arg_0.a.x)) % 32u)) >> (4294967295u % 32u), global3.b, select(select(var_0, vec3<bool>(!var_0.x, !global2.c.x, false), vec3<bool>(true, any(vec4<bool>(var_0.x, false, global2.c.x, false)), global3.b.x == global3.b.x)), select(!vec3<bool>(global3.c.x, var_0.x, var_0.x), !global2.c, vec3<bool>(var_0.x, any(global2.c), global2.c.x)), (559f > _wgslsmith_div_f32(global2.b.x, -380f)) || any(vec2<bool>(global3.c.x, global2.c.x))));
    global1 = array<Struct_2, 24>();
    var var_1 = true;
    var var_2 = global1[_wgslsmith_index_u32(global2.a, 24u)];
    return _wgslsmith_f_op_vec3_f32(min(global2.b, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(global2.b * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-175f, 112f, global3.b.x)))))), vec3<f32>(global2.b.x, _wgslsmith_f_op_f32(min(global2.b.x, _wgslsmith_f_op_f32(global3.b.x + 1000f))), _wgslsmith_f_op_f32(select(201f, _wgslsmith_f_op_f32(-global2.b.x), true))))));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<i32>) -> vec3<bool> {
    global2 = Struct_1(global3.a, _wgslsmith_f_op_vec3_f32(func_3(Struct_2(vec2<u32>(global3.a, ~global2.a)))), select(select(select(select(vec3<bool>(global2.c.x, true, true), global2.c, global3.c), vec3<bool>(global3.c.x, global2.c.x, false), true), global3.c, global3.c), !global2.c, !vec3<bool>(global3.c.x, true, true)));
    global0 = array<i32, 14>();
    var var_0 = any(select(select(global2.c, global3.c, global3.c.x), !global3.c, any(select(select(vec4<bool>(true, false, true, false), vec4<bool>(global3.c.x, true, false, false), vec4<bool>(global3.c.x, true, true, global2.c.x)), !vec4<bool>(global3.c.x, true, false, global3.c.x), !global3.c.x))));
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global3.b.x, global2.b.x)) + global2.b.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(1277f))))), _wgslsmith_div_vec2_f32(global2.b.xz, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.b.zx - vec2<f32>(1922f, global3.b.x)) - vec2<f32>(-117f, global3.b.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.b.x, -1000f) + vec2<f32>(-333f, global2.b.x)))))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global2.b.x, global2.b.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.b.xz) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.b.x, -1338f)))))), true));
    global0 = array<i32, 14>();
    return vec3<bool>(!any(vec3<bool>(u_input.d == u_input.a.x, -789f < global3.b.x, false)), global3.c.x, global2.c.x);
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(0u, 24u)];
    return Struct_1(~max(_wgslsmith_sub_u32(4294967295u, ~arg_0.a), ~global2.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global3.b)) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_3.b) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-109f, -322f, arg_3.b.x), vec3<f32>(476f, 1829f, 1339f), false)))))), global2.c);
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    global0 = array<i32, 14>();
    global3 = Struct_1(global2.a, global3.b, global3.c);
    global3 = Struct_1(1u, vec3<f32>(global3.b.x, -907f, global3.b.x), global3.c);
    global2 = func_4(Struct_1(~global2.a, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.b.x), -895f), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1148f, global3.b.x))), _wgslsmith_f_op_f32(f32(-1f) * -1347f)), select(global3.c, global3.c, func_2(global1[_wgslsmith_index_u32(~global3.a, 24u)], ~vec4<i32>(global0[_wgslsmith_index_u32(18510u, 14u)], 2147483647i, global0[_wgslsmith_index_u32(global2.a, 14u)], u_input.e)))), min(-4709i, _wgslsmith_clamp_i32(u_input.c.x, -2147483647i, select(max(u_input.e, -2147483647i), abs(-1i), false))), true, Struct_1(max(global3.a, abs(abs(global2.a))), global2.b, !global3.c));
    var var_0 = ~_wgslsmith_add_u32(firstLeadingBit(0u), ~12730u);
    return func_4(Struct_1(select(firstLeadingBit(arg_0.x) | countOneBits(global3.a), 4294967295u, func_2(global1[_wgslsmith_index_u32(15052u, 24u)], vec4<i32>(global0[_wgslsmith_index_u32(arg_0.x, 14u)], -20243i, 2147483647i, 1i)).x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.b.x, _wgslsmith_f_op_f32(round(963f)), _wgslsmith_f_op_f32(select(-240f, 893f, false)))), func_2(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(23919u, ~global2.a), 24u)], vec4<i32>(-global0[_wgslsmith_index_u32(45537u, 14u)], ~global0[_wgslsmith_index_u32(u_input.b, 14u)], global0[_wgslsmith_index_u32(1u, 14u)], ~u_input.e))), _wgslsmith_sub_i32(-4456i & reverseBits(~u_input.e), abs(u_input.e)), select(arg_0.x, ~_wgslsmith_add_u32(62343u, arg_0.x), global3.c.x) >= countOneBits(21669u), func_4(func_4(Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 76667u, global2.a), vec3<u32>(u_input.a.x, 0u, 4294967295u)), global3.b, global2.c), 1i, select(global3.c.x, global3.c.x, func_2(Struct_2(vec2<u32>(2383u, arg_0.x)), vec4<i32>(-11789i, u_input.c.x, global0[_wgslsmith_index_u32(3263u, 14u)], u_input.e)).x), Struct_1(0u, global2.b, !global2.c)), ~u_input.e, (u_input.a.x < ~1u) || true, Struct_1(countOneBits(arg_0.x), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(672f, global2.b.x, -768f))), !vec3<bool>(true, global2.c.x, false))));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec3<bool>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-3733f, -381f, arg_1.b.x, 728f), vec4<f32>(-404f, 464f, 1464f, global3.b.x)))))))));
    let var_1 = func_1(vec3<u32>(45614u, firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(55866u, u_input.d, arg_1.a), vec3<u32>(0u, 2014u, global3.a))), 4294967295u));
    var var_2 = _wgslsmith_mod_vec3_i32(vec3<i32>(firstTrailingBit(24727i), _wgslsmith_dot_vec2_i32(reverseBits(u_input.c), abs(-vec2<i32>(-590i, u_input.c.x))), ~1i), vec3<i32>(_wgslsmith_clamp_i32(~(~(-1i)), select(~1i, global0[_wgslsmith_index_u32(1u, 14u)] ^ 10215i, !arg_0.x), max(_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(global2.a, 14u)], u_input.c.x, u_input.c.x), -54914i)), u_input.c.x, _wgslsmith_dot_vec3_i32(-(~vec3<i32>(36968i, -11107i, 11573i)), min(max(vec3<i32>(-1177i, 1i, u_input.e), vec3<i32>(global0[_wgslsmith_index_u32(arg_1.a, 14u)], 18380i, -1i)), ~vec3<i32>(-1i, 2147483647i, -50126i)))));
    var var_3 = 16655u;
    var var_4 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_1.a, 4294967295u), u_input.a.xy)), vec2<u32>(global3.a, 50369u)), func_4(var_1, abs(_wgslsmith_add_i32(var_2.x, var_2.x)), any(!vec2<bool>(var_1.c.x, true)), func_1(~vec3<u32>(1u, 0u, 1u))).a), ~vec2<u32>(global2.a, _wgslsmith_div_u32(1u, 4294967295u)));
    return max(~7352i, _wgslsmith_dot_vec4_i32((vec4<i32>(21836i, var_2.x, -40529i, 0i) << (vec4<u32>(4294967295u, arg_1.a, var_1.a, var_1.a) % vec4<u32>(32u))) << (abs(vec4<u32>(4294967295u, var_1.a, 4294967295u, global2.a)) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, global0[_wgslsmith_index_u32(4294967295u, 14u)], u_input.c.x, u_input.e), vec4<i32>(global0[_wgslsmith_index_u32(var_1.a, 14u)], 4058i, u_input.e, global0[_wgslsmith_index_u32(1u, 14u)])) << (~vec4<u32>(global3.a, 4294967295u, global3.a, 64488u) % vec4<u32>(32u))) << (_wgslsmith_mod_u32(arg_1.a, ~u_input.d << (1u % 32u)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -_wgslsmith_mult_i32(_wgslsmith_div_i32(func_5(vec3<bool>(global3.c.x, false, global3.c.x), func_1(vec3<u32>(global3.a, global2.a, u_input.a.x)), func_2(Struct_2(u_input.a.xx), vec4<i32>(-1i, -12082i, global0[_wgslsmith_index_u32(global2.a, 14u)], global0[_wgslsmith_index_u32(0u, 14u)]))), ~u_input.c.x << (~4294967295u % 32u)), -2147483647i);
    let var_1 = func_1(vec3<u32>(_wgslsmith_div_u32(u_input.b, min(u_input.a.x, global3.a)), firstLeadingBit(_wgslsmith_sub_u32(4294967295u, 27377u) | (u_input.d & 95271u)), ~global2.a));
    global1 = array<Struct_2, 24>();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-406f - var_1.b.x) * 1216f);
    global3 = Struct_1(4294967295u, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(283f, -297f) + var_1.b.x)), _wgslsmith_f_op_f32(global2.b.x - _wgslsmith_f_op_f32(-global3.b.x)), _wgslsmith_f_op_vec3_f32(func_3(global1[_wgslsmith_index_u32(var_1.a, 24u)])).x), !vec3<bool>(all(!vec2<bool>(var_1.c.x, var_1.c.x)), var_1.c.x, select(0i, u_input.e, var_1.c.x) == func_5(global3.c, var_1, vec3<bool>(global3.c.x, var_1.c.x, false))));
    let var_3 = var_1;
    let var_4 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(countOneBits(countOneBits(reverseBits(4294967295u))), ~(~1u)), 24u)];
    var var_5 = abs(-(max(~vec4<i32>(global0[_wgslsmith_index_u32(1u, 14u)], global0[_wgslsmith_index_u32(60651u, 14u)], global0[_wgslsmith_index_u32(20277u, 14u)], -7356i), vec4<i32>(u_input.c.x, 1i, 35553i, u_input.e)) & _wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(global0[_wgslsmith_index_u32(16546u, 14u)], -15346i, -2583i, 5360i)), vec4<i32>(20590i, global0[_wgslsmith_index_u32(var_1.a, 14u)], u_input.c.x, 2467i))));
    let var_6 = select(var_3.c, !global3.c, func_4(var_3, i32(-1i) * -17293i, true == !var_3.c.x, Struct_1(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, var_1.a, global2.a), vec3<u32>(var_1.a, global3.a, 13125u)), _wgslsmith_div_vec3_f32(global3.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.b.x, 442f, -1000f))), var_3.c)).c.x);
    let x = u_input.a;
    s_output = StorageBuffer(1277f, reverseBits(select(vec3<i32>(12401i, -2299i, u_input.e), var_5.zxw, select(func_2(global1[_wgslsmith_index_u32(u_input.a.x, 24u)], vec4<i32>(var_5.x, u_input.e, global0[_wgslsmith_index_u32(var_4.a.x, 14u)], u_input.c.x)).x, !var_6.x, all(vec3<bool>(var_6.x, true, false))))), func_4(var_1, _wgslsmith_mult_i32(~0i ^ max(-2147483647i, global0[_wgslsmith_index_u32(0u, 14u)]), ~(-u_input.c.x)), global2.c.x, func_4(var_3, global0[_wgslsmith_index_u32(11364u, 14u)], var_1.b.x == _wgslsmith_f_op_f32(-var_1.b.x), func_1(u_input.a))).a, max(reverseBits(vec4<u32>(54401u, var_4.a.x, global3.a, 14260u) ^ vec4<u32>(var_1.a, 4294967295u, 1u, global2.a)) & ~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_4.a.x, 25772u, 1575u, var_3.a), vec4<u32>(global3.a, var_1.a, global3.a, var_4.a.x), vec4<u32>(10575u, u_input.b, 4294967295u, 65028u)), ~firstLeadingBit(max(vec4<u32>(var_4.a.x, global2.a, 1u, u_input.a.x), vec4<u32>(4294967295u, 4294967295u, var_3.a, 11959u)))), firstLeadingBit(u_input.e));
}

