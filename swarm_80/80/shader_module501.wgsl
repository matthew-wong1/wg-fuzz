struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 28>;

var<private> global1: f32 = 1000f;

var<private> global2: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(vec4<f32>(1000f, 797f, -1126f, 546f), vec3<i32>(0i, i32(-2147483648), 0i), Struct_1(vec3<i32>(14283i, 2147483647i, i32(-2147483648)))), Struct_2(vec4<f32>(-1134f, 1749f, -1962f, 1740f), vec3<i32>(2147483647i, 2147483647i, 0i), Struct_1(vec3<i32>(8071i, 2147483647i, i32(-2147483648)))), Struct_2(vec4<f32>(344f, 954f, -1682f, 164f), vec3<i32>(i32(-2147483648), 968i, 42553i), Struct_1(vec3<i32>(-1i, 62287i, 1i))), Struct_2(vec4<f32>(-1365f, 995f, -2048f, 474f), vec3<i32>(2147483647i, 43275i, i32(-2147483648)), Struct_1(vec3<i32>(0i, 1i, -14282i))), Struct_2(vec4<f32>(-1148f, -789f, -1133f, -1000f), vec3<i32>(-1i, -52171i, -7451i), Struct_1(vec3<i32>(-32066i, 33393i, 16855i))), Struct_2(vec4<f32>(538f, -552f, 751f, -207f), vec3<i32>(2147483647i, 56316i, 32627i), Struct_1(vec3<i32>(-13542i, -3053i, i32(-2147483648)))), Struct_2(vec4<f32>(-658f, 1433f, -626f, 578f), vec3<i32>(26723i, 0i, 6425i), Struct_1(vec3<i32>(-1i, 1i, i32(-2147483648)))));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: vec3<bool>) -> u32 {
    var var_0 = vec3<i32>(30454i, _wgslsmith_dot_vec3_i32(u_input.b.zwz, vec3<i32>(-u_input.b.x, 2147483647i, firstLeadingBit(0i))) >> (u_input.a.x % 32u), u_input.b.x);
    var var_1 = arg_0.xx;
    var var_2 = global2[_wgslsmith_index_u32(abs(u_input.a.x), 7u)];
    var_1 = vec2<bool>(select(arg_0.x, any(vec2<bool>(true, all(vec2<bool>(false, false)))), select(true, !(arg_0.x || true), var_1.x)), true || (~_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, var_0.x, u_input.b.x, var_0.x), u_input.b) < ~var_0.x));
    let var_3 = vec3<u32>(~u_input.a.x, u_input.a.x, u_input.a.x);
    return u_input.a.x;
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1, arg_1, arg_1), vec3<f32>(global0[_wgslsmith_index_u32(15232u, 28u)], global0[_wgslsmith_index_u32(u_input.a.x, 28u)], -359f), false))), vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(69170u, 28u)]), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(803f - arg_1))) - vec3<f32>(arg_1, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(6345u, 28u)]))), 687f)) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * _wgslsmith_div_f32(804f, 110f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(34653u, 28u)] + global0[_wgslsmith_index_u32(u_input.a.x, 28u)])), global0[_wgslsmith_index_u32(~u_input.a.x ^ u_input.a.x, 28u)]), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(166f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 28u)]), 182f))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.x, 261f, var_0.x))))) + var_0)));
    let var_2 = countOneBits(_wgslsmith_mult_i32(71690i, arg_0.a.x));
    let var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(967f)) - arg_1), 1433f, arg_1, _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, 14625u), 28u)]))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -556f, -728f, var_0.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 28u)], -278f, 488f, arg_1), vec4<f32>(global0[_wgslsmith_index_u32(1u, 28u)], 1090f, arg_1, var_0.x))))), arg_0.a, Struct_1(u_input.b.zww >> (~vec3<u32>(u_input.a.x, 10817u, u_input.a.x) % vec3<u32>(32u))));
    var var_4 = -2147483647i;
    return _wgslsmith_f_op_vec3_f32(-var_3.a.zxz);
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec4<bool>) -> vec4<bool> {
    var var_0 = abs(u_input.b);
    var var_1 = 2147483647i;
    global0 = array<f32, 28>();
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 28u)]))) - 189f);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-694f, 136f))))));
    return select(!select(arg_2, select(arg_0, vec4<bool>(false, arg_0.x, arg_2.x, arg_0.x), !vec4<bool>(arg_2.x, arg_0.x, arg_2.x, false)), vec4<bool>(true && arg_0.x, any(vec2<bool>(true, arg_0.x)), !arg_0.x, !arg_2.x)), select(!arg_0, !(!arg_2), arg_0.x), vec4<bool>(all(!(!arg_0)), arg_2.x, any(!arg_0), !all(select(vec2<bool>(true, arg_0.x), vec2<bool>(arg_0.x, true), vec2<bool>(false, true)))));
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: vec4<u32>, arg_3: vec4<bool>) -> Struct_2 {
    global1 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1869f, global0[_wgslsmith_index_u32(2233u, 28u)]), _wgslsmith_f_op_f32(873f + -1674f))) - _wgslsmith_f_op_f32(min(-588f, _wgslsmith_f_op_f32(-arg_0)))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~countOneBits(vec3<u32>(0u, 4773u, 28517u)), ~arg_2.yzz), 28u)]), 1265f));
    var var_0 = vec2<f32>(arg_0, global0[_wgslsmith_index_u32(reverseBits(arg_2.x), 28u)]);
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(-671f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, 1000f)) * 432f))), 320f);
    global1 = 1565f;
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1f, -1362f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1109f, -126f))) + vec2<f32>(_wgslsmith_f_op_f32(sign(var_0.x)), _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(arg_2.x, 28u)])))))));
    return Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -257f)), global0[_wgslsmith_index_u32(1u, 28u)], var_0.x, var_0.x), max(~_wgslsmith_sub_vec3_i32(u_input.b.wxw ^ u_input.b.wyx, vec3<i32>(1i, arg_1, u_input.b.x) >> (vec3<u32>(u_input.a.x, 0u, arg_2.x) % vec3<u32>(32u))), select(vec3<i32>(u_input.b.x, arg_1, _wgslsmith_sub_i32(u_input.b.x, 2147483647i)), min(vec3<i32>(u_input.b.x, -1i, -1760i), u_input.b.zyz) ^ u_input.b.zwz, !(!arg_3.x))), Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, 1i, u_input.b.x), vec3<i32>(-2147483647i, arg_1, -15005i)) >> (arg_2.xxz % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 7>();
    var var_0 = global2[_wgslsmith_index_u32(u_input.a.x >> (~4294967295u % 32u), 7u)];
    global0 = array<f32, 28>();
    let var_1 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(u_input.a.x, 28u)])), _wgslsmith_f_op_f32(abs(-1000f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 28u)]))) - _wgslsmith_f_op_f32(-var_0.a.x)), u_input.b.x, vec4<u32>(0u, ~min(_wgslsmith_mod_u32(1u, u_input.a.x), _wgslsmith_div_u32(u_input.a.x, u_input.a.x)), _wgslsmith_add_u32(countOneBits(76091u & u_input.a.x), func_1(vec3<bool>(true, false, true)) << (max(u_input.a.x, u_input.a.x) % 32u)), u_input.a.x), select(vec4<bool>(!(var_0.a.x <= -396f), any(vec3<bool>(true, true, true)), false, !all(vec4<bool>(true, false, false, false))), select(vec4<bool>(true, any(vec2<bool>(true, true)), select(true, true, false), true), func_2(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false)), var_0.c, vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)));
    var var_2 = func_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 28u)] - -375f))), _wgslsmith_f_op_f32(-var_0.a.x)))), _wgslsmith_mult_i32(-47329i, -abs(2147483647i) >> (u_input.a.x % 32u)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 42689u, ~4294967295u, ~u_input.a.x), vec4<u32>(64850u, 12252u, u_input.a.x, u_input.a.x) >> (countOneBits(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 105456u)) % vec4<u32>(32u))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, !func_2(vec4<bool>(false, true, true, false), Struct_1(var_1.b), vec4<bool>(true, false, false, false)).x, false), vec4<bool>(any(vec4<bool>(true, true, true, true)), select(67841u, u_input.a.x, true) < 1u, u_input.a.x <= u_input.a.x, select(true, all(vec4<bool>(true, false, true, false)), false)))).c;
    var_0 = global2[_wgslsmith_index_u32(u_input.a.x, 7u)];
    var var_3 = func_4(_wgslsmith_f_op_f32(-var_1.a.x), abs(firstLeadingBit(~var_1.c.a.x)), vec4<u32>(select(u_input.a.x, _wgslsmith_sub_u32(4294967295u, u_input.a.x), false), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, u_input.a.x, 23644u) >> (~vec3<u32>(u_input.a.x, 34259u, 1u) % vec3<u32>(32u)), ~vec3<u32>(95146u, 38437u, u_input.a.x) & select(vec3<u32>(u_input.a.x, 109631u, 24273u), vec3<u32>(u_input.a.x, u_input.a.x, 27272u), false)), reverseBits(u_input.a.x), u_input.a.x), !vec4<bool>(true, ~u_input.a.x == ~0u, true, true)).c;
    var_3 = var_0.c;
    var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(955f, global0[_wgslsmith_index_u32(u_input.a.x, 28u)], var_1.a.x, _wgslsmith_f_op_f32(-var_1.a.x))), vec3<i32>(1i, var_3.a.x, 0i), func_4(-931f, 70089i, firstTrailingBit(~vec4<u32>(u_input.a.x, u_input.a.x, 27800u, u_input.a.x)), select(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true)), select(vec4<bool>(false, false, true, false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true)), any(vec2<bool>(true, true))), vec4<bool>(false, true, true, true))).c);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.yxw, -26287i, var_0.a.yz, _wgslsmith_f_op_f32(f32(-1f) * -1186f));
}

