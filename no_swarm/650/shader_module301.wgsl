struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: vec4<f32>,
    d: i32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_2,
    d: i32,
}

struct Struct_5 {
    a: vec2<bool>,
    b: Struct_1,
    c: u32,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 19>;

var<private> global1: i32 = 0i;

var<private> global2: array<f32, 19>;

var<private> global3: bool;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: u32) -> vec2<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(arg_0, 19u)], global2[_wgslsmith_index_u32(u_input.b, 19u)], -1070f) * vec3<f32>(-141f, global2[_wgslsmith_index_u32(u_input.b, 19u)], -226f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global2[_wgslsmith_index_u32(u_input.b, 19u)], 376f, -3158f))))), !vec4<bool>(all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true)), true, (u_input.a > u_input.a) & true, !(global2[_wgslsmith_index_u32(u_input.b, 19u)] <= 1000f)), vec4<f32>(-314f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(67234u, u_input.b), 19u)] - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_0, 19u)])))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 19u)] + 1203f), _wgslsmith_f_op_f32(f32(-1f) * -1221f))), -1000f), ~2147483647i, !select(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), true | (arg_0 >= 29259u)));
    return vec2<bool>(!(463f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -609f) - global2[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_0, 13706u), 19u)])), true);
}

fn func_2() -> vec2<u32> {
    var var_0 = 407f;
    let var_1 = Struct_5(!select(vec2<bool>(true, true), vec2<bool>(true, all(vec2<bool>(false, true))), func_3(26270u)), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(-482f)), 1793f, _wgslsmith_f_op_f32(-845f + 913f)) + vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 19u)], _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.b, 19u)] * 931f), global2[_wgslsmith_index_u32(u_input.b, 19u)])), !vec4<bool>(true, any(vec4<bool>(false, true, false, false)), true, true), global0[_wgslsmith_index_u32(reverseBits(~u_input.b), 19u)], 2147483647i, vec2<bool>(~u_input.b != (4294967295u | u_input.b), all(vec3<bool>(true, true, true)))), ~1u, Struct_2(select(-(vec2<i32>(u_input.a, u_input.a) ^ vec2<i32>(u_input.a, -2147483647i)), firstTrailingBit(vec2<i32>(u_input.a, -1i)), select(func_3(u_input.b), vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)))), 1i << (~u_input.b % 32u), Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(u_input.b, 19u)], 340f, global2[_wgslsmith_index_u32(36649u, 19u)]) + vec3<f32>(global2[_wgslsmith_index_u32(u_input.b, 19u)], 593f, global2[_wgslsmith_index_u32(u_input.b, 19u)])), _wgslsmith_div_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(u_input.b, 19u)], global2[_wgslsmith_index_u32(u_input.b, 19u)], -105f), vec3<f32>(global2[_wgslsmith_index_u32(36555u, 19u)], global2[_wgslsmith_index_u32(4294967295u, 19u)], -1706f)))), vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(u_input.b, 19u)], global2[_wgslsmith_index_u32(47070u, 19u)], -1267f, global2[_wgslsmith_index_u32(u_input.b, 19u)]))), abs(0i), vec2<bool>(true, true)), Struct_1(vec3<f32>(-618f, _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(u_input.b, 19u)], -665f, false)), global2[_wgslsmith_index_u32(min(0u, 19873u), 19u)]), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec3<bool>(true, false, false))), _wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(abs(u_input.b), 19u)] * _wgslsmith_f_op_vec4_f32(max(global0[_wgslsmith_index_u32(4294967295u, 19u)], global0[_wgslsmith_index_u32(31154u, 19u)]))), u_input.a & -22331i, vec2<bool>(true, true))));
    global1 = 18375i;
    var var_2 = reverseBits(_wgslsmith_clamp_vec4_i32(select(max(-vec4<i32>(var_1.d.d.d, -18312i, -51058i, var_1.b.d), vec4<i32>(var_1.d.d.d, -32185i, 24468i, var_1.d.c.d)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, 1917i, -2147483647i, var_1.d.a.x), firstTrailingBit(vec4<i32>(2147483647i, u_input.a, var_1.b.d, -31622i))), var_1.d.d.e.x), ~(~select(vec4<i32>(u_input.a, var_1.d.d.d, 1i, -8782i), vec4<i32>(2147483647i, -56163i, 0i, 0i), true)), ~firstTrailingBit(-vec4<i32>(var_1.d.d.d, var_1.b.d, var_1.b.d, 2147483647i))));
    let var_3 = _wgslsmith_f_op_vec2_f32(-var_1.b.c.yy);
    return ~(~((vec2<u32>(u_input.b, u_input.b) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.c, u_input.b), vec2<u32>(87043u, u_input.b), vec2<u32>(1u, u_input.b)) % vec2<u32>(32u))) | vec2<u32>(27960u, min(u_input.b, 20930u))));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<i32>, arg_2: vec3<f32>) -> Struct_5 {
    var var_0 = reverseBits(firstTrailingBit(_wgslsmith_mod_i32(-u_input.a, -2147483647i)));
    var var_1 = Struct_4(!vec2<bool>(any(vec3<bool>(false, false, true)) & select(false, true, true), true), Struct_1(vec3<f32>(-791f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2.x))), 1000f), !vec4<bool>(u_input.b <= u_input.b, false, true, true), vec4<f32>(1569f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(arg_2.x, global2[_wgslsmith_index_u32(26132u, 19u)])))), _wgslsmith_f_op_f32(abs(-1793f)), -1561f), -u_input.a, vec2<bool>(true, true)), Struct_2(reverseBits(arg_1.xz | vec2<i32>(-7157i, -8581i)), select(arg_1.x, i32(-1i) * -1i, true), Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 19u)], global2[_wgslsmith_index_u32(27311u, 19u)], 512f)))), vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(8641u, 19u)], arg_2.x, -1559f, arg_2.x) * global0[_wgslsmith_index_u32(u_input.b, 19u)]) * _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(arg_0.x, 19u)])), arg_1.x, func_3(_wgslsmith_dot_vec3_u32(vec3<u32>(26394u, arg_0.x, 17256u), vec3<u32>(arg_0.x, u_input.b, u_input.b)))), Struct_1(arg_2, vec4<bool>(0u != arg_0.x, any(vec3<bool>(true, true, true)), true, any(vec4<bool>(true, true, false, true))), vec4<f32>(_wgslsmith_f_op_f32(-arg_2.x), arg_2.x, -694f, -1000f), u_input.a | -11930i, vec2<bool>(true, true))), _wgslsmith_mod_i32(_wgslsmith_add_i32(-2147483647i, arg_1.x), (-u_input.a | arg_1.x) & ~(~(-2147483647i))));
    let var_2 = arg_2.x != _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(341f + arg_2.x))) - _wgslsmith_f_op_f32(f32(-1f) * -943f))));
    let var_3 = Struct_3(_wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(-58563i, 0i, 14582i, 3389i) >> (vec4<u32>(1u, arg_0.x, u_input.b, 0u) % vec4<u32>(32u))) & (min(vec4<i32>(1699i, -2147483647i, -11127i, arg_1.x), vec4<i32>(-15591i, u_input.a, u_input.a, arg_1.x)) ^ firstTrailingBit(vec4<i32>(arg_1.x, 2147483647i, u_input.a, arg_1.x))), ~_wgslsmith_div_vec4_i32(-vec4<i32>(arg_1.x, 2147483647i, var_1.d, 2147483647i), vec4<i32>(u_input.a, 66001i, -41359i, var_1.d))), arg_2.zz, var_1.c);
    var var_4 = _wgslsmith_f_op_f32(f32(-1f) * -589f);
    return Struct_5(select(select(vec2<bool>(global2[_wgslsmith_index_u32(arg_0.x, 19u)] >= global2[_wgslsmith_index_u32(u_input.b, 19u)], all(var_3.c.d.b.ww)), vec2<bool>(var_1.b.e.x, true), !vec2<bool>(var_3.c.d.b.x, var_2)), !var_1.b.b.zz, !((-213f != var_1.b.c.x) | select(var_2, var_2, true))), var_3.c.d, _wgslsmith_sub_u32(arg_0.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b, u_input.b, arg_0.x) ^ vec4<u32>(u_input.b, arg_0.x, arg_0.x, arg_0.x), abs(vec4<u32>(u_input.b, arg_0.x, 4294967295u, 72810u))), _wgslsmith_dot_vec2_u32(countOneBits(arg_0), ~vec2<u32>(4294967295u, u_input.b)))), var_1.c);
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    let var_0 = func_4(_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(~(~vec2<u32>(u_input.b, u_input.b)), vec2<u32>(0u, 1u & u_input.b)), func_2()), _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.a), vec2<i32>(2147483647i, u_input.a)) >> (u_input.b % 32u), u_input.a, _wgslsmith_mod_i32(u_input.a, -1i)), vec3<i32>(u_input.a, -3669i, u_input.a)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(2250f * global2[_wgslsmith_index_u32(0u, 19u)])))), 1378f, 1000f));
    let var_1 = min(var_0.c, ~(~(~abs(53592u))));
    let var_2 = Struct_5(func_3(_wgslsmith_div_u32(var_0.c, 0u)), var_0.d.d, _wgslsmith_mod_u32(abs(firstLeadingBit(1u) & _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 24479u), vec3<u32>(u_input.b, var_1, 5991u))), var_1), var_0.d);
    var var_3 = func_4(_wgslsmith_sub_vec2_u32(vec2<u32>(func_4(vec2<u32>(u_input.b, 76664u), vec3<i32>(var_0.b.d, var_2.d.d.d, -2147483647i), vec3<f32>(arg_0.x, 1000f, global2[_wgslsmith_index_u32(var_1, 19u)])).c, ~17979u), ~vec2<u32>(49226u, 7319u) >> (abs(vec2<u32>(u_input.b, 8419u)) % vec2<u32>(32u))) >> (max(vec2<u32>(_wgslsmith_mult_u32(0u, var_0.c), var_1), vec2<u32>(~42303u, var_2.c)) % vec2<u32>(32u)), _wgslsmith_mod_vec3_i32(min(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-38245i, u_input.a, u_input.a, var_2.d.a.x), vec4<i32>(u_input.a, 2147483647i, var_0.d.b, var_0.d.d.d)), ~u_input.a, -var_2.d.b), countOneBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_2.d.a.x, u_input.a, u_input.a), vec3<i32>(u_input.a, var_0.d.a.x, var_0.d.c.d), vec3<i32>(var_2.d.d.d, u_input.a, 1i)))), vec3<i32>(0i | _wgslsmith_sub_i32(u_input.a, u_input.a), _wgslsmith_clamp_i32(-2147483647i, i32(-1i) * -1i, -1i), firstLeadingBit(-1i))), vec3<f32>(arg_0.x, -786f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -281f))) - _wgslsmith_f_op_f32(round(-1000f))))).b;
    var var_4 = var_2.d.d.e.x;
    return var_0.d.c;
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_5, arg_3: Struct_4) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(arg_3.b.a.zz + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -965f))) - arg_2.d.d.a.x), 1622f));
    let var_1 = !(-(~0i) > arg_1.d);
    let var_2 = arg_2.b.e;
    var var_3 = ~select(88787u, abs(firstTrailingBit(min(arg_2.c, u_input.b))), !(true | !var_2.x));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(86189u, 19u)])) * global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(100345u, arg_2.c), 19u)])))));
    return Struct_3(_wgslsmith_mult_vec4_i32(firstLeadingBit(reverseBits(~vec4<i32>(arg_3.c.d.d, arg_2.b.d, -1i, 0i))), _wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(0i, arg_1.d, 1i, 46386i) | vec4<i32>(arg_3.c.b, -1i, arg_2.b.d, arg_3.b.d)), select(abs(vec4<i32>(0i, arg_2.b.d, arg_3.b.d, u_input.a)), reverseBits(vec4<i32>(27486i, 52272i, 86715i, arg_3.b.d)), vec4<bool>(false, arg_2.a.x, arg_1.b.x, false)))), arg_3.c.c.c.xy, Struct_2(abs(reverseBits(arg_2.d.a)), 1i & (arg_2.d.b & firstLeadingBit(u_input.a)), arg_1, arg_3.c.c));
}

fn func_6(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: bool, arg_3: bool) -> Struct_4 {
    global0 = array<vec4<f32>, 19>();
    var var_0 = u_input.b == _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.x, arg_0.x), _wgslsmith_mod_vec2_u32(~arg_0, arg_0)), _wgslsmith_sub_vec2_u32(~arg_0, vec2<u32>(abs(0u), 0u)));
    let var_1 = Struct_4(vec2<bool>(!(!(-18775i <= u_input.a)), arg_1.c.c.d == -2147483647i), arg_1.c.c, func_5(func_1(_wgslsmith_f_op_vec4_f32(-arg_1.c.d.c)).b.yy, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(2980f + 1519f), global2[_wgslsmith_index_u32(arg_0.x | 17195u, 19u)], 1984f), arg_1.c.d.b, global0[_wgslsmith_index_u32(~62486u, 19u)], 0i, arg_1.c.c.e), func_4(~(~vec2<u32>(6636u, arg_0.x)), arg_1.a.xwz, vec3<f32>(_wgslsmith_f_op_f32(min(arg_1.b.x, 139f)), _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(13697u, 19u)])), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b, 19u)]))), Struct_4(func_4(vec2<u32>(0u, arg_0.x), ~vec3<i32>(u_input.a, 0i, u_input.a), _wgslsmith_f_op_vec3_f32(abs(arg_1.c.d.a))).a, Struct_1(arg_1.c.c.a, func_4(arg_0, vec3<i32>(arg_1.c.d.d, 3448i, -2147483647i), arg_1.c.c.c.zyw).d.c.b, global0[_wgslsmith_index_u32(firstTrailingBit(0u), 19u)], firstTrailingBit(arg_1.a.x), !vec2<bool>(false, arg_2)), arg_1.c, 41013i)).c, 13221i);
    var var_2 = Struct_1(arg_1.c.d.a, vec4<bool>(!any(var_1.c.d.b.wyy), true, true, var_1.a.x), func_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(firstTrailingBit(u_input.b), 19u)]), var_1.b.c))).c, _wgslsmith_dot_vec3_i32(arg_1.a.yxx, _wgslsmith_mod_vec3_i32(select(vec3<i32>(var_1.d, -17920i, -2147483647i), arg_1.a.yyy, var_1.b.b.wxx), arg_1.a.wyy)), var_1.c.c.e);
    let var_3 = Struct_5(var_2.e, arg_1.c.d, arg_0.x, arg_1.c);
    return Struct_4(var_1.a, arg_1.c.c, var_3.d, var_1.c.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(vec2<u32>(_wgslsmith_mult_u32(u_input.b >> (firstLeadingBit(18027u) % 32u), ~49751u), _wgslsmith_add_u32(47927u, u_input.b)), func_5(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))), func_1(global0[_wgslsmith_index_u32(~4294967295u >> (u_input.b % 32u), 19u)]), func_4(vec2<u32>(24880u, u_input.b) | (vec2<u32>(1u, 0u) & vec2<u32>(u_input.b, 4294967295u)), -vec3<i32>(u_input.a, u_input.a, u_input.a) >> (abs(vec3<u32>(0u, 18414u, 1u)) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(129f, global2[_wgslsmith_index_u32(49307u, 19u)], -269f))))), Struct_4(vec2<bool>(func_3(u_input.b).x, true), func_4(vec2<u32>(u_input.b, 8570u), vec3<i32>(u_input.a, u_input.a, u_input.a) << (vec3<u32>(u_input.b, u_input.b, 27643u) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(2914u, 19u)], -182f, global2[_wgslsmith_index_u32(u_input.b, 19u)]))).d.c, func_4(abs(vec2<u32>(89671u, 1u)), -vec3<i32>(u_input.a, u_input.a, -1i), vec3<f32>(global2[_wgslsmith_index_u32(u_input.b, 19u)], global2[_wgslsmith_index_u32(42512u, 19u)], -336f)).d, max(i32(-1i) * -2837i, -83486i))), all(select(vec2<bool>(true, false), vec2<bool>(true, true), false)) | (u_input.b <= abs(abs(43823u))), !(!((global2[_wgslsmith_index_u32(u_input.b, 19u)] < 582f) & true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.b.c + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.b.c)))));
}

