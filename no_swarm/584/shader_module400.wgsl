struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(false, 1u), Struct_2(true, 4294967295u), Struct_2(false, 4294967295u), Struct_2(false, 13193u));

var<private> global1: Struct_1;

var<private> global2: array<u32, 19>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> bool {
    global2 = array<u32, 19>();
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-901f, global1.c, 1000f, arg_0.c)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1000f, arg_0.c, -329f, -1360f)))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(472f, arg_0.c, global1.c, 368f), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1688f, arg_0.c, global1.c, global1.c)))))))), ~countOneBits(vec3<u32>(arg_0.d, 25236u, 1u)) >> (vec3<u32>(1u, 4294967295u, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a, u_input.a), vec2<u32>(arg_0.d, u_input.a.x) ^ vec2<u32>(global2[_wgslsmith_index_u32(4294967295u, 19u)], global2[_wgslsmith_index_u32(27001u, 19u)]))) % vec3<u32>(32u)), u_input.b.x, u_input.b, -(max(firstTrailingBit(u_input.b.yx), u_input.b.xz) | u_input.b.yx));
    return false & arg_0.b;
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_1(global1.a, global1.b, _wgslsmith_f_op_f32(f32(-1f) * -1630f), ~(~(~38012u)));
    global0 = array<Struct_2, 4>();
    let var_1 = Struct_1(var_0.a, select((-2147483647i >> ((4294967295u ^ global2[_wgslsmith_index_u32(var_0.d, 19u)]) % 32u)) == u_input.b.x, !func_3(Struct_1(vec3<bool>(global1.a.x, global1.a.x, global1.a.x), var_0.a.x, global1.c, global1.d)), any(var_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-129f, 985f)), _wgslsmith_f_op_f32(global1.c + 1860f)))))), 0u);
    let var_2 = global0[_wgslsmith_index_u32(4294967295u, 4u)];
    return Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c, global1.c, 1000f, -1193f) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(134f, global1.c, global1.c, var_1.c)))) - vec4<f32>(_wgslsmith_f_op_f32(var_0.c - global1.c), 1f, _wgslsmith_f_op_f32(ceil(var_1.c)), _wgslsmith_f_op_f32(-var_1.c)))), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 4294967295u, 4294967295u), _wgslsmith_mod_vec3_u32(select(vec3<u32>(0u, 1u, 19117u), vec3<u32>(47930u, 1u, var_0.d), false), vec3<u32>(global2[_wgslsmith_index_u32(1u, 19u)], var_0.d, var_0.d)), abs(~vec3<u32>(0u, 74754u, global1.d))) & select(~abs(vec3<u32>(var_2.b, global1.d, 79366u)), ~max(vec3<u32>(1u, 45186u, 51487u), vec3<u32>(0u, 60666u, var_1.d)), vec3<bool>(true, true, all(var_1.a.yz))), ~1i, _wgslsmith_sub_vec3_i32(-(vec3<i32>(-1i) * -u_input.b), ~(_wgslsmith_clamp_vec3_i32(u_input.b, u_input.b, vec3<i32>(u_input.b.x, -15727i, -1i)) | (vec3<i32>(u_input.b.x, u_input.b.x, 1i) >> (vec3<u32>(global2[_wgslsmith_index_u32(var_1.d, 19u)], var_1.d, var_0.d) % vec3<u32>(32u))))), u_input.b.xz);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_3) -> vec3<u32> {
    let var_0 = firstLeadingBit(~abs(~arg_1.b.xx));
    let var_1 = global0[_wgslsmith_index_u32(99255u, 4u)];
    global1 = Struct_1(global1.a, any(select(vec4<bool>(true, true, all(vec4<bool>(true, global1.a.x, true, arg_0.x)), any(vec4<bool>(var_1.a, true, false, true))), vec4<bool>(func_3(Struct_1(vec3<bool>(arg_0.x, true, false), false, -757f, 4294967295u)), 26391i >= arg_1.e.x, true, !var_1.a), !vec4<bool>(global1.b, global1.a.x, global1.b, false))), _wgslsmith_f_op_f32(-arg_1.a.x), u_input.a.x);
    let var_2 = (all(!global1.a) || arg_0.x) & false;
    global0 = array<Struct_2, 4>();
    return ~arg_1.b;
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_3) -> f32 {
    let var_0 = ~(~(~(27446u << (min(24186u, global2[_wgslsmith_index_u32(1u, 19u)]) % 32u))));
    global2 = array<u32, 19>();
    global0 = array<Struct_2, 4>();
    return 912f;
}

fn func_1() -> vec2<i32> {
    global1 = Struct_1(global1.a, false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1419f + _wgslsmith_f_op_f32(select(-440f, global1.c, true)))), 1u);
    let var_0 = vec2<u32>(min(9853u, ~(~(global1.d << (u_input.a.x % 32u)))), ~1u >> (~global2[_wgslsmith_index_u32(firstTrailingBit(abs(4294967295u)), 19u)] % 32u));
    let var_1 = max(_wgslsmith_sub_vec2_i32(~u_input.b.yy, max(u_input.b.yz, -u_input.b.zz) ^ u_input.b.xx), _wgslsmith_mod_vec2_i32(firstLeadingBit(max(u_input.b.yz, u_input.b.xx)), select(select(vec2<i32>(-2310i, -2147483647i), u_input.b.xy, global1.a.x), select(u_input.b.zx, u_input.b.xx, vec2<bool>(global1.b, false)), vec2<bool>(false, false))) & vec2<i32>(_wgslsmith_div_i32(-u_input.b.x, u_input.b.x | -48026i), -39342i));
    let var_2 = vec4<f32>(-620f, _wgslsmith_f_op_f32(global1.c + _wgslsmith_f_op_f32(-global1.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(sign(1202f)))) - global1.c) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1393f - 141f))), _wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1049f, global1.c, global1.c, 434f))), vec4<f32>(_wgslsmith_f_op_f32(-955f + 289f), global1.c, global1.c, global1.c))), Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c, 1290f, -1533f, -684f) * vec4<f32>(-1000f, 1537f, global1.c, global1.c))), func_4(!global1.a.zx, func_2()), reverseBits(firstTrailingBit(u_input.b.x)), -select(vec3<i32>(2147483647i, 33000i, -19419i), vec3<i32>(u_input.b.x, -2147483647i, 0i), global1.a), u_input.b.zx))));
    var var_3 = Struct_1(select(vec3<bool>(true, true, _wgslsmith_mod_i32(u_input.b.x, 26568i) != _wgslsmith_mod_i32(var_1.x, u_input.b.x)), global1.a, select(!global1.b, true, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(1u, 19u)], 98368u), 19u)] <= func_2().b.x)), all(global1.a), 142f, min(1u, ~firstTrailingBit(0u) & _wgslsmith_add_u32(~67067u, var_0.x)));
    return ~var_1;
}

fn func_6(arg_0: bool, arg_1: vec2<i32>, arg_2: vec2<i32>) -> u32 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(-2267f, global1.c, 334f, 1793f), vec4<f32>(global1.c, 1033f, global1.c, global1.c)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c, global1.c, global1.c, global1.c) - vec4<f32>(2407f, 566f, -527f, -897f)) + vec4<f32>(global1.c, -193f, global1.c, global1.c))))), _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.d, 1u, 4294967295u), vec3<u32>(5968u, 24432u, u_input.a.x)), 72332u, 18793u) << (vec3<u32>(~103599u, abs(global1.d), 18357u) % vec3<u32>(32u)), select(vec3<u32>(global2[_wgslsmith_index_u32(0u, 19u)], 0u, global2[_wgslsmith_index_u32(54660u, 19u)]) ^ abs(vec3<u32>(29035u, u_input.a.x, global1.d)), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, global1.d, 9735u), vec3<u32>(global1.d, global1.d, 4294967295u)), !arg_0 || false), func_4(select(select(vec2<bool>(false, true), global1.a.zx, true), select(vec2<bool>(false, false), vec2<bool>(global1.a.x, true), false), true), Struct_3(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.c, global1.c, global1.c, 1000f))), _wgslsmith_mod_vec3_u32(vec3<u32>(44774u, global1.d, global1.d), vec3<u32>(104058u, global2[_wgslsmith_index_u32(74920u, 19u)], global1.d)), firstTrailingBit(u_input.b.x), _wgslsmith_add_vec3_i32(vec3<i32>(-9442i, u_input.b.x, 1i), vec3<i32>(1i, arg_1.x, 2147483647i)), -arg_1))), -5470i, select(countOneBits(u_input.b), vec3<i32>(_wgslsmith_sub_i32(firstLeadingBit(u_input.b.x), firstLeadingBit(arg_1.x)), 0i, arg_2.x), !(!select(vec3<bool>(arg_0, global1.a.x, false), vec3<bool>(global1.b, false, global1.a.x), arg_0))), arg_1);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.a * _wgslsmith_div_vec4_f32(var_0.a, var_0.a)))) + vec4<f32>(_wgslsmith_f_op_f32(182f + _wgslsmith_div_f32(global1.c, _wgslsmith_f_op_f32(ceil(var_0.a.x)))), 408f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x * var_0.a.x)), _wgslsmith_f_op_f32(trunc(global1.c))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.c), _wgslsmith_f_op_f32(abs(-615f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x - var_0.a.x)))));
    let var_2 = ~reverseBits(_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, global2[_wgslsmith_index_u32(0u, 19u)]), var_0.b.xy), var_0.b.zy) | _wgslsmith_div_vec2_u32(~u_input.a, ~u_input.a));
    return ~min(0u, global1.d);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 4>();
    global2 = array<u32, 19>();
    let var_0 = Struct_1(global1.a, all(select(global1.a.zx, select(vec2<bool>(true, true), global1.a.xz, false), vec2<bool>(true, true))), 892f, func_6(true, vec2<i32>(min(min(-1i, -1i), u_input.b.x), -u_input.b.x & 0i), func_1()));
    global0 = array<Struct_2, 4>();
    var var_1 = ~_wgslsmith_clamp_vec4_u32(~select(vec4<u32>(var_0.d, u_input.a.x, u_input.a.x, 26264u), ~vec4<u32>(4294967295u, var_0.d, global1.d, 4294967295u), vec4<bool>(true, false, true, false)), max(_wgslsmith_clamp_vec4_u32(~vec4<u32>(134272u, global1.d, global2[_wgslsmith_index_u32(u_input.a.x, 19u)], 37736u), max(vec4<u32>(u_input.a.x, 14024u, u_input.a.x, global2[_wgslsmith_index_u32(29830u, 19u)]), vec4<u32>(var_0.d, 0u, 1u, global2[_wgslsmith_index_u32(1u, 19u)])), ~vec4<u32>(global1.d, global1.d, global1.d, 33128u)), ~vec4<u32>(var_0.d, var_0.d, 1u, var_0.d)), vec4<u32>(114988u, ~4294967295u, _wgslsmith_sub_u32(~1u, max(var_0.d, global1.d)), ~var_0.d));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c, -224f) - vec2<f32>(global1.c, -2692f)))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1.c, global1.c))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c, var_0.c) * vec2<f32>(-111f, var_0.c)))))) - vec2<f32>(_wgslsmith_f_op_f32(-1f), 1f));
    var var_3 = var_0;
    var var_4 = vec4<f32>(1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1303f)) * var_0.c))), 743f, _wgslsmith_f_op_f32(-587f + var_3.c));
    let x = u_input.a;
    s_output = StorageBuffer(1i, vec4<i32>(_wgslsmith_mult_i32(u_input.b.x, ~(u_input.b.x << (var_3.d % 32u))), u_input.b.x, 1i, u_input.b.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(116f * 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.c)) + _wgslsmith_div_f32(1913f, 568f)), var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c + -611f) * _wgslsmith_f_op_f32(exp2(global1.c)))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c, var_3.c, 1000f, 674f))))));
}

