struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
    c: vec2<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 32>;

var<private> global1: array<vec2<i32>, 3>;

var<private> global2: array<u32, 32> = array<u32, 32>(1u, 3563u, 13732u, 38538u, 0u, 4294967295u, 5694u, 1u, 58152u, 0u, 4294967295u, 28426u, 1u, 21736u, 4294967295u, 15724u, 4294967295u, 4294967295u, 11383u, 1u, 4294967295u, 10370u, 0u, 50907u, 13622u, 0u, 3287u, 11960u, 4294967295u, 72436u, 29642u, 58843u);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> i32 {
    global0 = array<Struct_4, 32>();
    var var_0 = _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~(~abs(u_input.a)), _wgslsmith_mod_vec4_u32(u_input.a, _wgslsmith_mod_vec4_u32(vec4<u32>(2225u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(810u, 32u)], 32u)], 32u)], u_input.c, u_input.a.x), vec4<u32>(u_input.a.x, global2[_wgslsmith_index_u32(10312u, 32u)], 42989u, u_input.a.x)) ^ ~vec4<u32>(1u, 0u, 1u, global2[_wgslsmith_index_u32(u_input.c, 32u)]))), global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(u_input.c, 32u)] >> (~min(u_input.a.x, global2[_wgslsmith_index_u32(u_input.a.x, 32u)] & 4294967295u) % 32u), 32u)]);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(min(1552f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(1376f)))), -379f)))));
    let var_2 = 1u;
    var var_3 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1445f, var_1.a, var_1.a) - vec3<f32>(1578f, var_1.a, var_1.a)))))))));
    return ~_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, min(u_input.b, 62948i), 2147483647i, u_input.b), select(-vec4<i32>(u_input.b, u_input.b, 2147483647i, 2147483647i), -vec4<i32>(u_input.b, u_input.b, -221i, -2147483647i), any(vec4<bool>(true, true, false, false)))), ~(~vec4<i32>(21019i, -3504i, u_input.b, u_input.b)));
}

fn func_2(arg_0: vec2<f32>) -> Struct_3 {
    var var_0 = 40654u;
    var var_1 = Struct_2(u_input.b, min(-_wgslsmith_add_vec2_i32(max(global1[_wgslsmith_index_u32(11651u, 3u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 32u)], 3u)]), ~global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 32u)], 3u)]), global1[_wgslsmith_index_u32(21631u, 3u)]), vec2<bool>(all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false)), true)), false), Struct_1(-706f), Struct_1(_wgslsmith_f_op_f32(max(arg_0.x, arg_0.x))));
    global0 = array<Struct_4, 32>();
    var var_2 = global0[_wgslsmith_index_u32((29502u << (1u % 32u)) << (_wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.c, _wgslsmith_clamp_u32(73728u, 0u >> (global2[_wgslsmith_index_u32(4294967295u, 32u)] % 32u), abs(u_input.a.x))), _wgslsmith_add_u32(min(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(u_input.c, 32u)], 0u), 32807u), 1u ^ _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x))) % 32u), 32u)];
    let var_3 = vec2<i32>(var_2.a.x, func_3());
    return Struct_3(Struct_2(-1i, ~var_3, !(!(!var_1.c)), var_1.d, var_1.d), any(select(!vec3<bool>(var_1.c.x, var_1.c.x, var_1.c.x), !vec3<bool>(var_1.c.x, var_1.c.x, true), vec3<bool>(true, !var_1.c.x, var_1.c.x))), var_1.d);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4, arg_2: f32, arg_3: f32) -> vec2<bool> {
    let var_0 = -countOneBits(vec4<i32>(i32(-1i) * -14301i, ~(-2147483647i), -u_input.b, _wgslsmith_dot_vec2_i32(-arg_1.a.yx, vec2<i32>(-2147483647i, 1i))));
    let var_1 = all(vec3<bool>(true, arg_0.a.c.x, arg_0.b));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(arg_2 * _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_0.c.a)), -1279f)));
    global0 = array<Struct_4, 32>();
    let var_3 = firstTrailingBit(reverseBits(min(max(u_input.a, u_input.a), select(u_input.a, u_input.a, var_1))) | vec4<u32>(_wgslsmith_dot_vec4_u32(u_input.a | vec4<u32>(59162u, 30252u, 1u, global2[_wgslsmith_index_u32(108686u, 32u)]), u_input.a), u_input.a.x, 4294967295u, global2[_wgslsmith_index_u32(u_input.a.x, 32u)]));
    return !(!arg_0.a.c);
}

fn func_1(arg_0: Struct_4) -> Struct_2 {
    global1 = array<vec2<i32>, 3>();
    let var_0 = 1f;
    let var_1 = vec3<i32>(16328i, 1i, countOneBits(~(-u_input.b ^ 1i)));
    global1 = array<vec2<i32>, 3>();
    let var_2 = !vec2<bool>((_wgslsmith_f_op_f32(-154f + var_0) == _wgslsmith_f_op_f32(abs(var_0))) != true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(146f + 415f)));
    return Struct_2(min(_wgslsmith_mult_i32(20918i, ~u_input.b), _wgslsmith_clamp_i32(_wgslsmith_add_i32(firstTrailingBit(-39094i), 1i), ~(-2147483647i), firstTrailingBit(u_input.b))), -vec2<i32>(-2147483647i, -arg_0.c) & global1[_wgslsmith_index_u32(~(~1u), 3u)], func_4(func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) + _wgslsmith_div_vec2_f32(vec2<f32>(var_0, -471f), vec2<f32>(var_0, -1000f)))), Struct_4(vec4<i32>(1i, _wgslsmith_mod_i32(var_1.x, u_input.b), var_1.x, u_input.b), _wgslsmith_sub_vec3_i32(firstLeadingBit(arg_0.a.wyz), var_1), _wgslsmith_sub_i32(-u_input.b, u_input.b)), var_0, 1731f), func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) + vec2<f32>(var_0, var_0))))).c, func_2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, -1531f) * vec2<f32>(534f, 674f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)))))).a.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(select(firstTrailingBit(max(~global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(18641u, 32u)], 3u)], _wgslsmith_div_vec2_i32(vec2<i32>(1i, -7532i), vec2<i32>(-63585i, 57321i)))), vec2<i32>(_wgslsmith_dot_vec2_i32(max(vec2<i32>(52287i, 2147483647i), vec2<i32>(-1i, u_input.b)), vec2<i32>(u_input.b, u_input.b)), -abs(u_input.b)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(346u, u_input.c), u_input.a.ww) < ~reverseBits(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 32u)], 32u)])));
    var var_1 = func_1(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 32u)], 32u)]);
    var var_2 = func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.e.a, var_1.d.a)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.e.a, var_1.d.a) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d.a, -221f)))) + vec2<f32>(var_1.d.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-372f, 884f, var_1.c.x))))));
    var var_3 = var_2.a;
    var var_4 = global0[_wgslsmith_index_u32(~64967u, 32u)];
    let var_5 = min(vec4<i32>(countOneBits(u_input.b) >> (21941u % 32u), firstLeadingBit(var_1.b.x), select(~1i, -2147483647i, u_input.a.x < 19976u), i32(-1i) * -1i) >> (u_input.a % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(abs(var_4.a), var_4.a) & _wgslsmith_sub_vec4_i32(reverseBits(firstTrailingBit(vec4<i32>(-26315i, u_input.b, var_0.x, -2147483647i))), vec4<i32>(0i, _wgslsmith_dot_vec2_i32(var_2.a.b, var_4.a.yx), ~0i, 2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, var_3.d.a, 1353f);
}

