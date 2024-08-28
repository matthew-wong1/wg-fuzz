struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec2<bool>,
    d: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(vec4<i32>(37277i, 1i, 2147483647i, 7120i), Struct_1(false, true, vec4<u32>(4294967295u, 46043u, 0u, 68070u)), vec2<bool>(false, false), vec4<bool>(false, false, true, false)), vec2<bool>(true, false), -1i);

var<private> global1: array<Struct_1, 24>;

var<private> global2: array<Struct_1, 8>;

var<private> global3: array<u32, 9> = array<u32, 9>(92020u, 1u, 0u, 0u, 46126u, 0u, 4294967295u, 1u, 4294967295u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec2<f32>, arg_1: f32, arg_2: bool) -> bool {
    var var_0 = -firstLeadingBit(_wgslsmith_clamp_i32(~2147483647i, 8169i, 21106i));
    var var_1 = Struct_3(Struct_2(select(_wgslsmith_mult_vec4_i32(u_input.a, _wgslsmith_mod_vec4_i32(u_input.a, vec4<i32>(0i, u_input.a.x, -23595i, global0.c))), vec4<i32>(_wgslsmith_mult_i32(global0.c, u_input.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(28918i, 21895i, u_input.a.x), vec3<i32>(global0.c, 0i, u_input.a.x)), -1i >> (global0.a.b.c.x % 32u), u_input.a.x << (21429u % 32u)), any(vec2<bool>(false, true))), global1[_wgslsmith_index_u32(36000u, 24u)], !select(select(vec2<bool>(global0.a.d.x, arg_2), vec2<bool>(false, global0.b.x), arg_2), global0.a.d.xy, vec2<bool>(global0.b.x, arg_2)), !vec4<bool>(true, true, !global0.b.x, all(vec2<bool>(true, true)))), select(select(!global0.b, vec2<bool>(arg_2, false), (4294967295u | global3[_wgslsmith_index_u32(global0.a.b.c.x, 9u)]) >= firstLeadingBit(global3[_wgslsmith_index_u32(global0.a.b.c.x, 9u)])), vec2<bool>(!any(vec3<bool>(global0.a.d.x, true, false)), all(select(global0.a.d, global0.a.d, arg_2))), vec2<bool>(any(select(global0.a.d.xy, global0.b, vec2<bool>(true, true))), global0.a.d.x)), -global0.c);
    let var_2 = Struct_1(true, !(select(global0.a.c.x, true, arg_1 < arg_1) | var_1.a.c.x), select(~(~reverseBits(vec4<u32>(var_1.a.b.c.x, 4294967295u, var_1.a.b.c.x, global3[_wgslsmith_index_u32(1u, 9u)]))), _wgslsmith_sub_vec4_u32(firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(127563u, 0u, global3[_wgslsmith_index_u32(26154u, 9u)], 21766u), global0.a.b.c)), min(vec4<u32>(1u, 0u, global3[_wgslsmith_index_u32(58991u, 9u)], 17588u), _wgslsmith_div_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(global0.a.b.c.x, 9u)], 4294967295u, global0.a.b.c.x, global0.a.b.c.x), vec4<u32>(global0.a.b.c.x, var_1.a.b.c.x, var_1.a.b.c.x, 1u)))), vec4<bool>(all(!vec2<bool>(global0.b.x, global0.a.c.x)), arg_2, select(false, var_1.a.a.x <= -1i, any(vec3<bool>(true, var_1.b.x, false))), global0.a.d.x && all(vec3<bool>(var_1.b.x, var_1.a.d.x, global0.b.x)))));
    global0 = Struct_3(var_1.a, !(!select(!global0.a.c, var_1.b, !global0.b)), min(reverseBits(-2147483647i), _wgslsmith_mult_i32(-1i, (var_1.c | var_1.a.a.x) << (_wgslsmith_clamp_u32(var_2.c.x, global0.a.b.c.x, 65992u) % 32u))));
    let var_3 = u_input.a.x;
    return all(!vec4<bool>(global0.a.b.c.x >= 69875u, -global0.a.a.x <= ~u_input.a.x, !var_2.b | all(vec4<bool>(var_2.b, false, true, var_2.b)), true));
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = global0.a;
    global3 = array<u32, 9>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1449f)));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-818f)), _wgslsmith_f_op_f32(-1277f * _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1086f, -627f))))));
    var var_2 = global0.a;
    return Struct_1(global0.a.b.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -3158f))))) <= _wgslsmith_f_op_f32(select(-556f, _wgslsmith_f_op_f32(-507f + -497f), all(var_2.d) & func_3(vec2<f32>(-268f, 137f), 525f, arg_0))), global0.a.b.c);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_1) -> vec4<i32> {
    var var_0 = Struct_2(_wgslsmith_sub_vec4_i32(max(vec4<i32>(min(18653i, arg_1.a.x), ~arg_0.a.a.x, global0.c, _wgslsmith_div_i32(-1i, u_input.a.x)), arg_2.a.a), u_input.a), func_2(all(!(!global0.a.d))), vec2<bool>(arg_0.a.c.x, any(select(vec4<bool>(arg_2.a.d.x, global0.a.d.x, arg_3.a, arg_2.a.b.b), select(vec4<bool>(arg_3.b, arg_0.a.b.a, arg_1.d.x, global0.a.b.b), arg_2.a.d, arg_0.a.d), !arg_3.a))), select(vec4<bool>((-22554i >= arg_2.c) & all(arg_0.a.c), !arg_3.a, !(!arg_1.c.x), arg_2.a.c.x), vec4<bool>(select(arg_3.a & false, 67148u < global0.a.b.c.x, global0.b.x), !all(arg_2.a.d.xx), arg_1.d.x | false, true), arg_3.c.x > _wgslsmith_clamp_u32(arg_2.a.b.c.x ^ global0.a.b.c.x, _wgslsmith_add_u32(0u, arg_1.b.c.x), arg_3.c.x)));
    global2 = array<Struct_1, 8>();
    var var_1 = ~_wgslsmith_sub_vec2_u32(arg_2.a.b.c.zy, max(global0.a.b.c.wx, arg_0.a.b.c.zx));
    let var_2 = Struct_2(-select(vec4<i32>(2147483647i, 38630i << (arg_0.a.b.c.x % 32u), firstLeadingBit(var_0.a.x), arg_1.a.x), vec4<i32>(var_0.a.x ^ arg_1.a.x, _wgslsmith_dot_vec4_i32(var_0.a, arg_2.a.a), arg_2.c, ~1i), vec4<bool>(var_0.d.x, func_2(true).a, select(global0.a.b.a, false, true), false)), Struct_1((!arg_3.a | func_3(vec2<f32>(1758f, -148f), -507f, false)) | arg_0.a.b.a, true, ((arg_2.a.b.c ^ vec4<u32>(13047u, 1u, 27714u, 107174u)) ^ arg_3.c) | vec4<u32>(~var_0.b.c.x, 1u, ~global3[_wgslsmith_index_u32(59407u, 9u)], 0u)), select(!vec2<bool>(all(vec4<bool>(global0.b.x, true, arg_2.b.x, arg_0.b.x)), any(vec2<bool>(false, false))), select(arg_0.a.d.zy, select(select(vec2<bool>(arg_3.a, var_0.d.x), vec2<bool>(global0.a.b.b, false), vec2<bool>(false, arg_3.b)), vec2<bool>(false, false), var_0.d.xy), !(!vec2<bool>(var_0.c.x, true))), !(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)))), vec4<bool>(any(select(select(global0.a.d, var_0.d, false), vec4<bool>(arg_3.b, global0.a.b.a, false, arg_1.b.a), select(true, false, false))), any(!arg_1.d), var_0.b.b & !(0i > arg_1.a.x), false));
    var var_3 = _wgslsmith_clamp_vec2_i32(firstTrailingBit(~abs(vec2<i32>(var_0.a.x, var_0.a.x) ^ arg_2.a.a.wz)), arg_1.a.zw, ~var_0.a.yw);
    return _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(var_2.a.x, 83294i, ~2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_3.x, -1i, 20151i) << (vec3<u32>(19843u, global0.a.b.c.x, arg_0.a.b.c.x) % vec3<u32>(32u)), arg_2.a.a.wzw & vec3<i32>(global0.a.a.x, 0i, -2147483647i)))), _wgslsmith_div_vec4_i32(vec4<i32>(i32(-1i) * -1i, var_0.a.x, 2147483647i, abs(arg_0.a.a.x)), -_wgslsmith_div_vec4_i32(arg_2.a.a & vec4<i32>(2147483647i, arg_0.a.a.x, u_input.a.x, u_input.a.x), select(vec4<i32>(arg_2.a.a.x, var_2.a.x, 2147483647i, 7642i), vec4<i32>(var_2.a.x, -2147483647i, var_0.a.x, arg_1.a.x), arg_3.b))), firstTrailingBit(var_0.a));
}

fn func_4(arg_0: i32, arg_1: vec4<i32>, arg_2: bool, arg_3: f32) -> Struct_2 {
    global3 = array<u32, 9>();
    global1 = array<Struct_1, 24>();
    global1 = array<Struct_1, 24>();
    global0 = Struct_3(Struct_2(~abs(firstLeadingBit(u_input.a)), Struct_1(true, !arg_2, func_2(true).c), global0.b, !global0.a.d), select(global0.b, global0.a.d.zy, select(vec2<bool>(select(arg_2, arg_2, false), true), select(vec2<bool>(true, true), global0.a.c, !arg_2), true)), -30420i);
    var var_0 = global0.a.b.c.x;
    return Struct_2(~vec4<i32>(-reverseBits(arg_1.x), -1i, -1i, _wgslsmith_div_i32(1i, _wgslsmith_mod_i32(arg_0, arg_1.x))), Struct_1(all(!(!vec2<bool>(false, arg_2))), global0.b.x, global0.a.b.c), global0.b, vec4<bool>(all(vec3<bool>(true, true, !arg_2)), arg_2, all(global0.a.d.wyw), any(!global0.a.d.zz)));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_3, arg_3: Struct_3) -> Struct_3 {
    let var_0 = reverseBits(arg_0.x | arg_1.c.x);
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1891f))), -964f, _wgslsmith_f_op_f32(select(-427f, 165f, false)) > _wgslsmith_f_op_f32(f32(-1f) * -980f))))), _wgslsmith_f_op_f32(trunc(1657f))));
    global3 = array<u32, 9>();
    global1 = array<Struct_1, 24>();
    let var_2 = ~vec2<u32>(~(arg_2.a.b.c.x ^ var_0), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~global0.a.b.c.zzz, vec3<u32>(46553u, arg_3.a.b.c.x, 74158u)), _wgslsmith_div_vec3_u32(~vec3<u32>(global3[_wgslsmith_index_u32(4294967295u, 9u)], arg_2.a.b.c.x, 0u), ~global0.a.b.c.xwz)));
    return Struct_3(global0.a, select(!arg_2.b, select(arg_3.a.c, !select(vec2<bool>(arg_2.b.x, arg_1.b), arg_2.b, true), global0.a.d.wx), arg_2.a.d.x), -(_wgslsmith_add_i32(u_input.a.x >> (var_0 % 32u), 6999i) | -abs(31769i)));
}

fn func_6(arg_0: Struct_3, arg_1: u32) -> vec2<f32> {
    var var_0 = Struct_3(func_4(-12290i, vec4<i32>(firstTrailingBit(-arg_0.c), -firstTrailingBit(arg_0.c), reverseBits(-6744i), _wgslsmith_mod_i32(_wgslsmith_div_i32(-5115i, u_input.a.x), u_input.a.x)), true, _wgslsmith_f_op_f32(f32(-1f) * -562f)), select(arg_0.b, !(!select(global0.a.c, vec2<bool>(false, global0.a.c.x), global0.a.c)), vec2<bool>(all(vec2<bool>(arg_0.b.x, false)), true)), 1i);
    global2 = array<Struct_1, 8>();
    var_0 = func_5(_wgslsmith_add_vec3_u32(countOneBits(~var_0.a.b.c.yyz), _wgslsmith_mult_vec3_u32(vec3<u32>(~0u, arg_0.a.b.c.x | global3[_wgslsmith_index_u32(arg_1, 9u)], 11930u), global0.a.b.c.zyx ^ ~vec3<u32>(22681u, global0.a.b.c.x, 44331u))), func_4(arg_0.c, vec4<i32>(_wgslsmith_div_i32(-1i << (global0.a.b.c.x % 32u), abs(2147483647i)), u_input.a.x, countOneBits(func_5(var_0.a.b.c.wyz, Struct_1(global0.b.x, var_0.b.x, var_0.a.b.c), arg_0, arg_0).a.a.x), -1i), any(vec3<bool>(!var_0.a.d.x, false, any(arg_0.a.d.xwz))), _wgslsmith_div_f32(-152f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -350f))))).b, func_5(vec3<u32>(countOneBits(4294967295u) | global0.a.b.c.x, firstTrailingBit(_wgslsmith_mult_u32(15948u, arg_0.a.b.c.x)), abs(4294967295u) | _wgslsmith_dot_vec2_u32(var_0.a.b.c.yz, arg_0.a.b.c.zz)), arg_0.a.b, Struct_3(func_5(global0.a.b.c.xyz, func_4(global0.a.a.x, var_0.a.a, var_0.b.x, -161f).b, arg_0, func_5(global0.a.b.c.wzw, Struct_1(false, true, vec4<u32>(95710u, 0u, 16532u, var_0.a.b.c.x)), arg_0, arg_0)).a, var_0.a.c, 2147483647i), func_5(min(global0.a.b.c.ywz, firstTrailingBit(global0.a.b.c.xyx)), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~23318u, _wgslsmith_dot_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(arg_0.a.b.c.x, 9u)], arg_1, 8945u, global0.a.b.c.x), global0.a.b.c)), 8u)], Struct_3(arg_0.a, vec2<bool>(true, true), _wgslsmith_mod_i32(2147483647i, u_input.a.x)), Struct_3(func_4(20548i, vec4<i32>(global0.c, 25426i, 10642i, -2147483647i), var_0.b.x, -1011f), vec2<bool>(global0.a.c.x, false), abs(global0.a.a.x)))), Struct_3(func_4(-(var_0.a.a.x << (arg_0.a.b.c.x % 32u)), vec4<i32>(_wgslsmith_mult_i32(global0.c, -83792i), -u_input.a.x, abs(4815i), -83623i), false, 371f), func_5(~var_0.a.b.c.xwz, global0.a.b, arg_0, func_5(reverseBits(arg_0.a.b.c.yzw), arg_0.a.b, arg_0, Struct_3(Struct_2(vec4<i32>(2147483647i, arg_0.c, u_input.a.x, global0.c), Struct_1(false, arg_0.b.x, global0.a.b.c), arg_0.b, var_0.a.d), arg_0.b, 63283i))).b, ~(-25677i)));
    global0 = func_5(reverseBits(_wgslsmith_add_vec3_u32(~vec3<u32>(arg_1, 1u, 1u), vec3<u32>(global3[_wgslsmith_index_u32(arg_1 << (var_0.a.b.c.x % 32u), 9u)], var_0.a.b.c.x, ~global0.a.b.c.x))), func_4((~var_0.a.a.x ^ func_4(var_0.a.a.x, u_input.a, var_0.a.c.x, -1323f).a.x) >> (func_2(func_5(arg_0.a.b.c.xzx, Struct_1(var_0.a.b.b, false, arg_0.a.b.c), Struct_3(var_0.a, global0.a.c, global0.a.a.x), Struct_3(var_0.a, global0.a.c, 2890i)).b.x).c.x % 32u), -vec4<i32>(-64700i, ~0i, var_0.c, i32(-1i) * -2147483647i), !(!func_4(47538i, global0.a.a, true, 160f).d.x), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(872f, 760f)), _wgslsmith_f_op_f32(f32(-1f) * -277f))))).b, arg_0, Struct_3(func_4(max(-2397i, -1i), ~func_5(vec3<u32>(var_0.a.b.c.x, 0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_1, 9u)], 9u)]), Struct_1(var_0.b.x, var_0.a.c.x, var_0.a.b.c), Struct_3(Struct_2(arg_0.a.a, global1[_wgslsmith_index_u32(7596u, 24u)], arg_0.a.d.yz, vec4<bool>(false, true, var_0.a.c.x, global0.a.c.x)), arg_0.b, u_input.a.x), Struct_3(global0.a, vec2<bool>(arg_0.a.c.x, global0.b.x), arg_0.a.a.x)).a.a, false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(178f + 317f))), select(!(!arg_0.a.d.xw), select(arg_0.b, var_0.b, select(global0.a.d.x, false, false)), true), abs(2147483647i ^ arg_0.c)));
    let var_1 = global0.a;
    return _wgslsmith_f_op_vec2_f32(round(vec2<f32>(481f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1501f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_6(func_5(_wgslsmith_sub_vec3_u32(~_wgslsmith_div_vec3_u32(global0.a.b.c.wzy, vec3<u32>(0u, 0u, global0.a.b.c.x)), ~global0.a.b.c.wwy), Struct_1(any(global0.a.d), false, vec4<u32>(_wgslsmith_add_u32(27662u, 1u), global0.a.b.c.x << (46744u % 32u), global0.a.b.c.x, global0.a.b.c.x)), Struct_3(Struct_2(vec4<i32>(u_input.a.x, u_input.a.x, 1i, 31623i), Struct_1(global0.b.x, true, vec4<u32>(global3[_wgslsmith_index_u32(30765u, 9u)], 0u, 0u, global0.a.b.c.x)), !global0.b, vec4<bool>(global0.a.b.a, false, true, false)), select(global0.b, vec2<bool>(false, true), vec2<bool>(true, true)), global0.c), Struct_3(func_4(-u_input.a.x, func_1(Struct_3(Struct_2(global0.a.a, Struct_1(true, false, global0.a.b.c), global0.a.d.yz, vec4<bool>(true, false, true, false)), vec2<bool>(false, global0.a.d.x), global0.a.a.x), Struct_2(global0.a.a, Struct_1(global0.a.d.x, false, vec4<u32>(global0.a.b.c.x, 7738u, global0.a.b.c.x, 38209u)), global0.b, global0.a.d), Struct_3(Struct_2(u_input.a, global1[_wgslsmith_index_u32(4294967295u, 24u)], global0.a.c, global0.a.d), vec2<bool>(global0.a.c.x, global0.a.c.x), -28795i), Struct_1(false, global0.b.x, global0.a.b.c)), global0.a.d.x, _wgslsmith_f_op_f32(sign(1873f))), global0.a.c, -9623i)), 4294967295u));
    var var_1 = abs(1i);
    let var_2 = global0.a.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, _wgslsmith_div_u32(1u, firstTrailingBit(45506u >> (global0.a.b.c.x % 32u))), 46911u, _wgslsmith_sub_i32(~_wgslsmith_sub_i32(global0.c, _wgslsmith_dot_vec3_i32(u_input.a.xzw, global0.a.a.yzx)), 2147483647i), global0.a.b.c.zyw);
}

