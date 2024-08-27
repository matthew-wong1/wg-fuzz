struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_2,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: vec4<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(49537i, 0i, i32(-2147483648));

var<private> global1: array<f32, 23>;

var<private> global2: array<Struct_1, 13>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec3<f32>, arg_1: i32, arg_2: i32) -> bool {
    let var_0 = 9166u;
    let var_1 = Struct_1(vec4<bool>(true, true, var_0 == ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0, var_0, var_0), vec3<u32>(0u, var_0, var_0)), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(~4294967295u, 23u)]))), !(!vec3<bool>(true, false, all(vec3<bool>(true, false, false)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -197f) - 438f), var_1.b) + _wgslsmith_f_op_vec2_f32(-arg_0.xz));
    global2 = array<Struct_1, 13>();
    var var_3 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-865f, global1[_wgslsmith_index_u32(var_0, 23u)], var_1.b, global1[_wgslsmith_index_u32(142558u, 23u)]), vec4<f32>(global1[_wgslsmith_index_u32(16115u, 23u)], -616f, -2744f, 1444f), vec4<bool>(false, true, var_1.a.x, var_1.c.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, -775f, global1[_wgslsmith_index_u32(1u, 23u)], 2927f))), select(!var_1.a, vec4<bool>(var_1.a.x, var_1.c.x, false, false), var_1.a))) + vec4<f32>(var_1.b, var_1.b, _wgslsmith_f_op_f32(-1f), global1[_wgslsmith_index_u32(firstLeadingBit(6433u), 23u)]))));
    return any(select(select(vec4<bool>(!var_1.c.x, true, var_1.a.x, true), select(!vec4<bool>(var_1.a.x, true, var_1.a.x, var_1.c.x), var_1.a, !vec4<bool>(var_1.a.x, false, false, true)), _wgslsmith_f_op_f32(-var_1.b) > global1[_wgslsmith_index_u32(~2829u, 23u)]), vec4<bool>(var_1.c.x, false, false, true), true));
}

fn func_2() -> vec3<i32> {
    global2 = array<Struct_1, 13>();
    var var_0 = func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(-1319f, global1[_wgslsmith_index_u32(1u, 23u)])), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(4294967295u, 23u)], -604f), -1000f)) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1470f, global1[_wgslsmith_index_u32(0u, 23u)], 2900f) - vec3<f32>(818f, global1[_wgslsmith_index_u32(33066u, 23u)], 239f))))))), -37526i, 0i);
    let var_1 = _wgslsmith_add_vec4_i32(countOneBits(max(firstTrailingBit(select(vec4<i32>(-1i, 1i, global0.x, global0.x), vec4<i32>(0i, u_input.b, global0.x, 0i), false)), vec4<i32>(global0.x, 2147483647i, global0.x, 2147483647i))), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(9491i, global0.x, u_input.b, global0.x), ~vec4<i32>(44180i, u_input.c, -36640i, u_input.b), ~vec4<i32>(-2147483647i, 2147483647i, 50426i, global0.x)) & vec4<i32>(~(~34620i), -16151i, -10498i, _wgslsmith_mod_i32(1i, ~(-47839i))));
    var var_2 = Struct_3(Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(0u, 53019u, 0u, 52379u)), 4294967295u), 23u)], max(var_1.x, -var_1.x), Struct_1(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), true), global1[_wgslsmith_index_u32(~1u, 23u)], vec3<bool>(true, true, true))));
    var var_3 = _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(var_1.x, var_1.x, var_2.a.b), vec3<i32>(u_input.a, var_2.a.b, -1i) >> (vec3<u32>(1u, 4294967295u, 96501u) % vec3<u32>(32u))) << (_wgslsmith_div_u32(_wgslsmith_clamp_u32(0u, 1751u, 58344u), _wgslsmith_mult_u32(86812u, 40428u)) % 32u), 2147483647i, global0.x), _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(-u_input.b, -21813i << (1u % 32u)), ~(-77421i) >> (1u % 32u), 1847i), ~(-vec3<i32>(u_input.c, global0.x, var_1.x)) << (~max(vec3<u32>(1u, 0u, 86898u), vec3<u32>(118047u, 6999u, 23848u)) % vec3<u32>(32u))));
    return select(vec3<i32>(-1i) * -vec3<i32>(global0.x, ~1i, global0.x), ~_wgslsmith_mult_vec3_i32(var_1.ywy, var_1.wyw ^ _wgslsmith_mod_vec3_i32(var_1.yzw, var_1.zzy)), vec3<bool>(true, false, var_2.a.c.c.x));
}

fn func_1() -> Struct_3 {
    var var_0 = global2[_wgslsmith_index_u32(~4294967295u, 13u)];
    global0 = _wgslsmith_sub_vec3_i32(func_2(), _wgslsmith_mult_vec3_i32(vec3<i32>(~1i, _wgslsmith_mod_i32(u_input.a, u_input.a), global0.x) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_sub_i32(abs(u_input.c), -2147483647i), _wgslsmith_mod_i32(~2147483647i, -u_input.a), -11579i)));
    let var_1 = Struct_4(select(vec2<bool>(true, false), !vec2<bool>(all(vec4<bool>(var_0.a.x, false, var_0.a.x, var_0.a.x)), var_0.a.x), vec2<bool>(!select(var_0.c.x, true, false), true)), global2[_wgslsmith_index_u32(select(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(0u, 14519u, 71932u)), 21979u, all(select(var_0.c, vec3<bool>(var_0.a.x, true, true), true))), 13u)], Struct_2(_wgslsmith_f_op_f32(1601f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(10969u, 23u)], global1[_wgslsmith_index_u32(58429u, 23u)], var_0.c.x)) - _wgslsmith_f_op_f32(floor(-499f)))), abs(firstLeadingBit(19316i)), global2[_wgslsmith_index_u32(1u, 13u)]), _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(u_input.b, 0i, global0.x, 12410i) | vec4<i32>(-18980i, u_input.b, global0.x, u_input.a)), ~(vec4<i32>(1i, global0.x, -465i, global0.x) & vec4<i32>(2147483647i, global0.x, 1i, global0.x))), vec4<i32>(u_input.b, 2147483647i, ~global0.x, _wgslsmith_sub_i32(~30142i, ~(-20692i)))), global0.zz);
    let var_2 = vec4<bool>(true, var_1.b.a.x && var_1.c.c.c.x, any(vec3<bool>(-188f == global1[_wgslsmith_index_u32(abs(1u), 23u)], any(select(vec4<bool>(true, var_1.b.c.x, false, var_0.a.x), vec4<bool>(var_1.c.c.c.x, true, var_1.b.a.x, var_0.c.x), var_1.b.a)), _wgslsmith_mod_i32(global0.x, -68380i) == select(1i, 1i, var_0.c.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(46042u, 23u)] - -1377f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1747u), vec2<u32>(102633u, 72269u)), 23u)]))) <= _wgslsmith_f_op_f32(trunc(-1147f)));
    var var_3 = !vec2<bool>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)) != _wgslsmith_sub_u32(~1443u, _wgslsmith_div_u32(0u, 43160u)), var_2.x);
    return Struct_3(Struct_2(-1122f, var_1.e.x, var_1.c.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(-reverseBits(-1i), 1i, _wgslsmith_div_i32(abs(u_input.a), -1i), firstTrailingBit(global0.x));
    let var_1 = func_1();
    global0 = var_0.zzx;
    var var_2 = -abs(~0i);
    global0 = _wgslsmith_mod_vec3_i32(var_0.yxx >> (_wgslsmith_add_vec3_u32(vec3<u32>(~0u, 4294967295u, ~23630u), vec3<u32>(1u, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 42162u, 4294967295u), vec3<u32>(21166u, 4294967295u, 1u)))) % vec3<u32>(32u)), -((vec3<i32>(var_0.x, -2759i, 1i) >> (vec3<u32>(33827u, 32970u, 42760u) % vec3<u32>(32u))) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))));
    var_2 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(1u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(15450u, 60795u), vec2<u32>(4294967295u, 26920u)))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(2172u, 23u)]), func_2().x, _wgslsmith_mod_vec4_i32(var_0, -(-vec4<i32>(-10479i, 39149i, -2147483647i, 35275i) ^ var_0)), firstTrailingBit(~reverseBits(~vec2<i32>(0i, 210i))));
}

