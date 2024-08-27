struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: i32,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
    c: vec4<f32>,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: Struct_2,
    d: Struct_2,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 10>;

var<private> global1: array<Struct_1, 32>;

var<private> global2: array<f32, 29> = array<f32, 29>(1239f, -805f, -251f, 480f, 300f, -257f, 2192f, 2755f, 485f, 378f, -686f, 243f, 1000f, -505f, -281f, -177f, 495f, -2303f, -336f, -668f, 274f, 983f, -433f, 502f, 1173f, -339f, 168f, -2573f, 1242f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: vec4<i32>) -> u32 {
    var var_0 = Struct_1(select(vec3<bool>(all(vec3<bool>(global0[_wgslsmith_index_u32(53392u, 10u)], global0[_wgslsmith_index_u32(15797u, 10u)], false)), true, global0[_wgslsmith_index_u32(min(13148u, 39633u | u_input.a.x), 10u)]), !vec3<bool>(global0[_wgslsmith_index_u32(~u_input.a.x, 10u)], all(vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(u_input.a.x, 10u)])), arg_1.x > -1i), any(select(!vec4<bool>(false, global0[_wgslsmith_index_u32(43193u, 10u)], true, global0[_wgslsmith_index_u32(u_input.a.x, 10u)]), select(vec4<bool>(global0[_wgslsmith_index_u32(27030u, 10u)], global0[_wgslsmith_index_u32(14226u, 10u)], false, false), vec4<bool>(global0[_wgslsmith_index_u32(0u, 10u)], global0[_wgslsmith_index_u32(u_input.a.x, 10u)], global0[_wgslsmith_index_u32(1u, 10u)], global0[_wgslsmith_index_u32(u_input.a.x, 10u)]), vec4<bool>(global0[_wgslsmith_index_u32(58816u, 10u)], global0[_wgslsmith_index_u32(u_input.a.x, 10u)], global0[_wgslsmith_index_u32(u_input.a.x, 10u)], global0[_wgslsmith_index_u32(u_input.a.x, 10u)])), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 10u)], global0[_wgslsmith_index_u32(u_input.a.x, 10u)], global0[_wgslsmith_index_u32(0u, 10u)], global0[_wgslsmith_index_u32(u_input.a.x, 10u)])))), arg_1.xyz, _wgslsmith_sub_i32(~(-1i), firstLeadingBit(i32(-1i) * -6533i)), vec2<u32>(1u, ~30337u), firstLeadingBit(abs(vec4<u32>(u_input.a.x, 1u, u_input.a.x, ~u_input.a.x))));
    global2 = array<f32, 29>();
    let var_1 = Struct_3(Struct_2(countOneBits(var_0.b.x) & -2147483647i, firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(arg_0, 2147483647i, var_0.b.x, -66920i) & arg_1, firstLeadingBit(vec4<i32>(0i, 2147483647i, arg_1.x, 0i)))), vec4<f32>(_wgslsmith_f_op_f32(1000f + global2[_wgslsmith_index_u32(abs(var_0.e.x), 29u)]), -1552f, global2[_wgslsmith_index_u32(var_0.e.x, 29u)], global2[_wgslsmith_index_u32(15842u >> (0u % 32u), 29u)]), all(select(var_0.a.yy, var_0.a.xz, vec2<bool>(true, true)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(885f, -366f, global2[_wgslsmith_index_u32(u_input.a.x, 29u)], global2[_wgslsmith_index_u32(u_input.a.x, 29u)]))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1728f, -476f, global2[_wgslsmith_index_u32(0u, 29u)], global2[_wgslsmith_index_u32(var_0.d.x, 29u)])), true))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(254f)) * -1439f), _wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(var_0.d.x, 29u)])), global2[_wgslsmith_index_u32(122626u, 29u)], global2[_wgslsmith_index_u32(var_0.d.x ^ (var_0.d.x | 18631u), 29u)]))), Struct_2(-((arg_0 & -1i) ^ 0i), _wgslsmith_mult_vec4_i32(arg_1, firstLeadingBit(vec4<i32>(arg_1.x, -37159i, -1i, 22906i)) | (vec4<i32>(-34042i, var_0.c, arg_1.x, 1i) >> (vec4<u32>(u_input.a.x, 13325u, 31931u, var_0.e.x) % vec4<u32>(32u)))), vec4<f32>(_wgslsmith_f_op_f32(-1340f - -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(var_0.d.x, 29u)])), -2541f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(var_0.e.x, 29u)]))), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~u_input.a.x, 29u)])), false), Struct_2(999i & countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, -28549i, arg_0), var_0.b)), vec4<i32>(-2147483647i, reverseBits(60425i), -arg_0, arg_0) ^ arg_1, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(21371u, 29u)], global2[_wgslsmith_index_u32(79199u, 29u)], 1001f, global2[_wgslsmith_index_u32(11870u, 29u)]) * vec4<f32>(2006f, 1125f, global2[_wgslsmith_index_u32(1u, 29u)], 724f)))))), !any(select(var_0.a.zx, var_0.a.xy, vec2<bool>(var_0.a.x, global0[_wgslsmith_index_u32(15597u, 10u)])))), any(var_0.a.zz));
    let var_2 = arg_1;
    var var_3 = 37216u;
    return 16018u;
}

fn func_2(arg_0: f32, arg_1: f32) -> i32 {
    let var_0 = _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, u_input.a.x, 11259u, u_input.a.x) << ((u_input.a & vec4<u32>(u_input.a.x, 0u, 1u, 1u)) % vec4<u32>(32u))), u_input.a.x), vec2<u32>(~func_3(40882i, vec4<i32>(-55259i, 0i, -14180i, -37959i)), 21553u) >> (~_wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(1u, 30904u), vec2<u32>(u_input.a.x, 0u)), vec2<u32>(4294967295u, 1u), ~vec2<u32>(u_input.a.x, u_input.a.x)) % vec2<u32>(32u)));
    var var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, arg_1, global2[_wgslsmith_index_u32(1186u, 29u)]), vec3<f32>(arg_1, arg_1, arg_1)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, _wgslsmith_f_op_f32(778f + arg_0), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_0.x, 29u)])) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(var_0.x, 29u)], arg_1, arg_1) + vec3<f32>(arg_1, 618f, 265f)) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(172f, 1126f, 458f))))))));
    let var_2 = Struct_2(_wgslsmith_mult_i32(-(29383i << (var_0.x % 32u)), reverseBits(i32(-1i) * -37034i)) << (var_0.x % 32u), ~select(~firstLeadingBit(vec4<i32>(4405i, -4827i, -2147483647i, -2147483647i)), ~vec4<i32>(2147483647i, 1i, -46967i, -2147483647i), any(vec2<bool>(global0[_wgslsmith_index_u32(5199u, 10u)], false))), vec4<f32>(745f, _wgslsmith_f_op_f32(abs(-929f)), _wgslsmith_f_op_f32(min(-132f, 1233f)), global2[_wgslsmith_index_u32(0u, 29u)]), global0[_wgslsmith_index_u32(var_0.x, 10u)]);
    var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(var_2.c.xww))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-513f, 558f, 1f)))));
    global1 = array<Struct_1, 32>();
    return _wgslsmith_dot_vec4_i32(var_2.b | vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(var_2.a, var_2.a), -15031i), var_2.a, ~(-var_2.a), var_2.b.x), max(_wgslsmith_sub_vec4_i32(-(vec4<i32>(var_2.b.x, -1i, 0i, 2147483647i) & var_2.b), vec4<i32>(countOneBits(-1i), i32(-1i) * -2612i, var_2.b.x, 0i)), min(-vec4<i32>(var_2.b.x, var_2.a, var_2.a, var_2.b.x), var_2.b)));
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: vec4<u32>) -> Struct_3 {
    var var_0 = Struct_3(Struct_2(1i, vec4<i32>(30578i, _wgslsmith_add_i32(_wgslsmith_div_i32(2147483647i, -4940i), abs(arg_0.c.b.x)), arg_0.d.a, _wgslsmith_dot_vec2_i32(vec2<i32>(-80197i, arg_0.a.a), -vec2<i32>(arg_0.a.a, arg_0.c.b.x))), arg_0.b, select(all(vec4<bool>(global0[_wgslsmith_index_u32(arg_1, 10u)], false, true, arg_0.a.d)) | arg_0.c.d, global0[_wgslsmith_index_u32(abs(1u), 10u)], !arg_0.a.d)), arg_0.b, arg_0.d, arg_0.d, arg_0.c.d);
    global2 = array<f32, 29>();
    global2 = array<f32, 29>();
    var var_1 = -434f;
    var var_2 = Struct_3(Struct_2(_wgslsmith_clamp_i32(-arg_0.c.b.x, ~1i, _wgslsmith_add_i32(arg_0.a.a, var_0.d.b.x)) << (115583u % 32u), firstLeadingBit(-_wgslsmith_sub_vec4_i32(vec4<i32>(1i, arg_0.d.b.x, arg_0.c.a, -2147483647i), arg_0.a.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(var_0.d.c, vec4<f32>(arg_0.a.c.x, global2[_wgslsmith_index_u32(0u, 29u)], 210f, 1138f)))), select(_wgslsmith_f_op_f32(f32(-1f) * -1765f) <= _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(arg_2.x, 29u)] * var_0.a.c.x), all(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 10u)], global0[_wgslsmith_index_u32(0u, 10u)], global0[_wgslsmith_index_u32(15427u, 10u)], true)), arg_0.c.a <= arg_0.c.a)), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.b.x, arg_0.c.c.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(u_input.a.x, 29u)], var_0.c.c.x))))), _wgslsmith_f_op_f32(max(-371f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.c.c.x))))), _wgslsmith_f_op_f32(f32(-1f) * -534f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(489f)))), arg_0.d, arg_0.c, false);
    return Struct_3(Struct_2(var_0.a.a, var_0.d.b | arg_0.c.b, var_0.b, !var_2.c.d), arg_0.d.c, Struct_2(-2147483647i, vec4<i32>(var_2.d.b.x, _wgslsmith_dot_vec2_i32(var_2.c.b.xz, vec2<i32>(0i, 41338i)), arg_0.c.b.x, ~var_2.d.a), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-205f, arg_0.d.c.x, global2[_wgslsmith_index_u32(u_input.a.x, 29u)], global2[_wgslsmith_index_u32(arg_2.x, 29u)]), var_0.c.c)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2.b) * var_0.b)), arg_0.d.d), var_0.d, any(!select(!vec2<bool>(false, var_2.a.d), select(vec2<bool>(true, arg_0.a.d), vec2<bool>(var_2.d.d, false), vec2<bool>(arg_0.a.d, arg_0.c.d)), global0[_wgslsmith_index_u32(arg_2.x, 10u)])));
}

fn func_1(arg_0: bool) -> vec3<bool> {
    global1 = array<Struct_1, 32>();
    var var_0 = func_4(Struct_3(Struct_2(func_2(_wgslsmith_f_op_f32(trunc(348f)), 285f), vec4<i32>(-2147483647i, ~45399i, ~(-2147483647i), 2147483647i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 29u)], 1267f, global2[_wgslsmith_index_u32(u_input.a.x, 29u)], global2[_wgslsmith_index_u32(68031u, 29u)])), false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 29u)], global2[_wgslsmith_index_u32(0u, 29u)], global2[_wgslsmith_index_u32(u_input.a.x, 29u)], global2[_wgslsmith_index_u32(u_input.a.x, 29u)])))), Struct_2(53814i, _wgslsmith_sub_vec4_i32(-vec4<i32>(0i, 7855i, -5307i, -2147483647i), select(vec4<i32>(1i, -79811i, -1i, -20155i), vec4<i32>(2147483647i, 0i, -1i, -35994i), global0[_wgslsmith_index_u32(u_input.a.x, 10u)])), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 29u)], -1091f, global2[_wgslsmith_index_u32(31478u, 29u)], -512f), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2[_wgslsmith_index_u32(48270u, 29u)], -222f, global2[_wgslsmith_index_u32(u_input.a.x, 29u)], 414f))))), false), Struct_2(abs(reverseBits(-23899i)), ~(-vec4<i32>(0i, 9424i, -1i, 0i)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2[_wgslsmith_index_u32(0u, 29u)], global2[_wgslsmith_index_u32(1u, 29u)], -830f, -2727f))), !(!global0[_wgslsmith_index_u32(46728u, 10u)])), true), 1u, u_input.a);
    return !vec3<bool>(global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_sub_u32(u_input.a.x, 56346u)), 10u)], true, false);
}

fn func_5(arg_0: vec3<bool>, arg_1: i32, arg_2: f32) -> u32 {
    let var_0 = Struct_3(func_4(func_4(func_4(Struct_3(Struct_2(70172i, vec4<i32>(arg_1, arg_1, arg_1, 0i), vec4<f32>(global2[_wgslsmith_index_u32(10646u, 29u)], -164f, 2201f, -446f), arg_0.x), vec4<f32>(-309f, 1251f, -1582f, global2[_wgslsmith_index_u32(83018u, 29u)]), Struct_2(arg_1, vec4<i32>(-33964i, 0i, 1884i, arg_1), vec4<f32>(arg_2, 524f, arg_2, -454f), false), Struct_2(arg_1, vec4<i32>(-24412i, arg_1, -8221i, -1i), vec4<f32>(-147f, arg_2, arg_2, arg_2), global0[_wgslsmith_index_u32(1u, 10u)]), false), _wgslsmith_dot_vec3_u32(u_input.a.zyz, u_input.a.xyy), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_clamp_u32(~u_input.a.x, u_input.a.x, 1u), u_input.a), ~18270u, vec4<u32>((4294967295u & u_input.a.x) << (_wgslsmith_mult_u32(113u, u_input.a.x) % 32u), ~u_input.a.x >> (u_input.a.x % 32u), 55647u, ~(~u_input.a.x))).a, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2[_wgslsmith_index_u32(1u, 29u)], _wgslsmith_f_op_f32(trunc(arg_2)), arg_2, -286f))), Struct_2(-5604i, firstTrailingBit(select(abs(vec4<i32>(arg_1, 9130i, -6577i, arg_1)), select(vec4<i32>(arg_1, 13181i, -1i, 1i), vec4<i32>(1i, -2147483647i, 17689i, 1i), vec4<bool>(arg_0.x, true, true, global0[_wgslsmith_index_u32(u_input.a.x, 10u)])), false)), vec4<f32>(906f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1433f) * _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(19719u, 29u)] - arg_2)), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, firstLeadingBit(u_input.a.x)), 29u)], 2364f), true | any(!vec4<bool>(false, false, arg_0.x, false))), func_4(func_4(func_4(Struct_3(Struct_2(arg_1, vec4<i32>(arg_1, -2147483647i, arg_1, -1i), vec4<f32>(global2[_wgslsmith_index_u32(11880u, 29u)], -254f, global2[_wgslsmith_index_u32(1u, 29u)], -2021f), global0[_wgslsmith_index_u32(u_input.a.x, 10u)]), vec4<f32>(arg_2, arg_2, -1191f, -658f), Struct_2(arg_1, vec4<i32>(arg_1, 9018i, -20697i, arg_1), vec4<f32>(509f, 270f, arg_2, -1241f), arg_0.x), Struct_2(-1i, vec4<i32>(-1i, arg_1, arg_1, 1i), vec4<f32>(arg_2, global2[_wgslsmith_index_u32(0u, 29u)], -2062f, arg_2), true), arg_0.x), ~11407u, abs(u_input.a)), u_input.a.x, vec4<u32>(~1u, u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(18164u, 54944u), u_input.a.wx), _wgslsmith_clamp_u32(0u, 4294967295u, 32206u))), ~(~u_input.a.x & select(19217u, 44132u, global0[_wgslsmith_index_u32(1u, 10u)])), u_input.a).d, true);
    var var_1 = var_0.a;
    global1 = array<Struct_1, 32>();
    global0 = array<bool, 10>();
    var var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(397f, -654f, _wgslsmith_f_op_f32(1115f - var_0.c.c.x), _wgslsmith_f_op_f32(249f - var_1.c.x)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(837f, global2[_wgslsmith_index_u32(u_input.a.x, 29u)], -812f, -416f))))))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(u_input.a.x | 5046u, 29u)], 594f), arg_2, -596f, var_1.c.x)))));
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 10>();
    var var_0 = max(firstTrailingBit(u_input.a), reverseBits(vec4<u32>(_wgslsmith_dot_vec4_u32(~u_input.a, u_input.a), _wgslsmith_dot_vec2_u32(~u_input.a.zy, _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), vec2<u32>(u_input.a.x, u_input.a.x))), max(35189u, u_input.a.x >> (1u % 32u)), u_input.a.x)));
    var var_1 = Struct_2(_wgslsmith_dot_vec2_i32(~vec2<i32>(max(0i, -30403i), 1i), _wgslsmith_div_vec2_i32(vec2<i32>(-40424i, -1i) << (vec2<u32>(u_input.a.x, 4294967295u) % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(vec2<i32>(-2969i, -1817i), vec2<i32>(2147483647i, 18733i))) & vec2<i32>(~(-2147483647i), 1i)), vec4<i32>(1i, 1i, 1i, 1i) & -((vec4<i32>(2362i, -16542i, -7387i, -2147483647i) << (u_input.a % vec4<u32>(32u))) | -vec4<i32>(8096i, 1i, -31191i, 2147483647i)), vec4<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(func_5(func_1(global0[_wgslsmith_index_u32(u_input.a.x, 10u)]), ~0i, 722f), 29u)] * _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~var_0.x, 29u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(u_input.a.x, 29u)])))) * 1455f), -449f, global2[_wgslsmith_index_u32(4294967295u, 29u)]), select(true, global0[_wgslsmith_index_u32(func_5(vec3<bool>(global0[_wgslsmith_index_u32(49899u, 10u)], true & global0[_wgslsmith_index_u32(1u, 10u)], false), 1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(24779u, 29u)] * 1175f) + -338f)), 10u)], any(vec4<bool>(global0[_wgslsmith_index_u32(3599u, 10u)], true, global0[_wgslsmith_index_u32(0u, 10u)] && global0[_wgslsmith_index_u32(var_0.x, 10u)], false))));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1860f, 2546f) - var_1.c.zy) * _wgslsmith_div_vec2_f32(vec2<f32>(var_1.c.x, var_1.c.x), var_1.c.yz)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c.x, var_1.c.x) - vec2<f32>(var_1.c.x, -430f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 29u)], global2[_wgslsmith_index_u32(var_0.x, 29u)])))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c.x, -536f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_1.c.zz, vec2<f32>(var_1.c.x, -374f)) - vec2<f32>(global2[_wgslsmith_index_u32(23496u, 29u)], -508f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 29u)]), -813f))));
    global0 = array<bool, 10>();
    var_2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.c.yx))));
    var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(var_0.x, 4294967295u), 29u)]))), var_2.x);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_f32(-var_2.x))) - _wgslsmith_f_op_f32(round(-100f)));
    var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c.x, var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(u_input.a.x, 29u)])), var_1.c.x)));
}

