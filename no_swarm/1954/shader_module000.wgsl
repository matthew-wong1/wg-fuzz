struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: u32,
    d: vec2<bool>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: bool,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: u32,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_1(false, vec3<bool>(true, true, true), 10464u, vec2<bool>(true, true), vec3<u32>(90645u, 36996u, 15279u)), 1i, 70572u, Struct_3(vec4<bool>(false, false, true, true)));

var<private> global1: vec4<bool>;

var<private> global2: vec4<f32>;

var<private> global3: vec4<i32> = vec4<i32>(2692i, 7902i, i32(-2147483648), i32(-2147483648));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: vec2<bool>, arg_3: vec2<f32>) -> bool {
    let var_0 = Struct_4(Struct_1((_wgslsmith_div_f32(-777f, -481f) != _wgslsmith_f_op_f32(-global2.x)) | select(!arg_2.x, !arg_0.a.b.x, false), !select(vec3<bool>(global1.x, false, false), global0.a.b, global1.yyy), firstLeadingBit(reverseBits(~global0.c)), select(select(vec2<bool>(true, true), !vec2<bool>(true, global1.x), false), global1.ww, vec2<bool>(-1253f >= arg_3.x, global0.c <= arg_0.a.e.x)), global0.a.e), global3.x, ~_wgslsmith_dot_vec3_u32(select(~vec3<u32>(arg_0.b, 51266u, arg_0.a.c), ~global0.a.e, !arg_0.a.b), vec3<u32>(min(arg_0.a.c, global0.c), global0.a.e.x, abs(global0.c))), Struct_3(vec4<bool>(arg_0.a.b.x || true, false, arg_0.a.d.x, !global1.x)));
    global1 = global0.d.a;
    let var_1 = Struct_4(Struct_1(true, vec3<bool>(min(global3.x, global3.x) < global3.x, arg_3.x <= _wgslsmith_f_op_f32(sign(-2103f)), var_0.d.a.x), min(abs(44933u), var_0.c) | _wgslsmith_mod_u32(~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(6794u, global0.c, 58066u), vec3<u32>(0u, 1u, 41692u))), var_0.d.a.xx, global0.a.e), -7760i, 27554u, global0.d);
    global2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -117f), 1000f, _wgslsmith_f_op_f32(trunc(global2.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1636f, 674f)))))));
    global0 = Struct_4(Struct_1(true, select(var_0.a.b, !global1.zyw, true), 1u, !global1.yy, arg_0.a.e), -18202i, countOneBits(arg_0.b), var_1.d);
    return any(select(var_1.d.a, vec4<bool>(var_0.d.a.x, true, true, (global0.d.a.x != global0.d.a.x) || true), select(!select(vec4<bool>(true, false, true, global1.x), var_1.d.a, true), !var_1.d.a, !(!var_0.d.a))));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: vec3<i32>, arg_3: f32) -> vec3<i32> {
    var var_0 = Struct_4(global0.a, firstTrailingBit(arg_2.x), global0.c >> (min(1u, global0.a.c) % 32u), Struct_3(!select(global0.d.a, select(vec4<bool>(true, global0.a.d.x, global1.x, arg_0.x), vec4<bool>(false, global0.d.a.x, global0.d.a.x, false), global0.d.a), true)));
    var var_1 = _wgslsmith_f_op_f32(-arg_1.x) < global2.x;
    var_0 = Struct_4(var_0.a, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.b, arg_2.x, 11492i, abs(global0.b)), firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(global3.x, -22575i, global3.x, 2147483647i), _wgslsmith_div_vec4_i32(vec4<i32>(global3.x, global0.b, -21874i, 35967i), vec4<i32>(u_input.a, -35688i, -1i, 2147483647i))))), 1u, Struct_3(!select(select(vec4<bool>(false, global1.x, false, global0.a.a), vec4<bool>(global0.a.d.x, global1.x, false, false), false), arg_0, global0.d.a.x)));
    let var_2 = ~(~_wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(var_0.c, 86275u), _wgslsmith_mult_u32(var_0.c, var_0.c)), ~74894u));
    global3 = vec4<i32>(-1i, -2147483647i, abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-68992i, _wgslsmith_mult_i32(37060i, var_0.b)), -vec2<i32>(global3.x, u_input.a) | (vec2<i32>(global3.x, 0i) >> (global0.a.e.zy % vec2<u32>(32u))))), i32(-1i) * -1i);
    return global3.wwz ^ ~(arg_2 >> (vec3<u32>(var_2 << (var_0.c % 32u), var_2, max(4294967295u, var_2)) % vec3<u32>(32u)));
}

fn func_2() -> u32 {
    var var_0 = func_4(select(select(global0.d.a, vec4<bool>(false || global0.a.d.x, global0.d.a.x, false, global0.d.a.x), true), !vec4<bool>(global0.a.b.x, !global0.a.d.x, u_input.a > global3.x, func_3(Struct_2(Struct_1(true, vec3<bool>(global0.a.d.x, true, global0.d.a.x), 38749u, global0.d.a.zy, vec3<u32>(global0.c, 0u, global0.c)), 34586u, global1.x, vec4<u32>(global0.a.e.x, 4294967295u, 1u, global0.a.c), vec4<i32>(global0.b, 25816i, -37317i, global3.x)), u_input.a, vec2<bool>(false, global1.x), vec2<f32>(904f, global2.x))), select(select(global0.d.a, vec4<bool>(global0.a.a, global1.x, global1.x, true), false), vec4<bool>(!global1.x, global1.x || global1.x, true, global0.d.a.x), !global0.d.a)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-876f))) - _wgslsmith_f_op_f32(max(global2.x, _wgslsmith_f_op_f32(323f * -1668f)))), -225f, -1521f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x))))), -(countOneBits(vec3<i32>(u_input.a, global3.x, -2147483647i)) >> (_wgslsmith_add_vec3_u32(global0.a.e >> (vec3<u32>(4294967295u, global0.c, 52606u) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(global0.a.e, vec3<u32>(global0.c, global0.a.c, 1u))) % vec3<u32>(32u))), 282f);
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-1412f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1030f - 787f)) * 1f)) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-166f * global2.x))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2.x))), -100f))));
    var_0 = ~vec3<i32>(~1i, -global0.b, ~u_input.a);
    var var_2 = Struct_4(Struct_1(true, global1.wxy, ~countOneBits(global0.a.e.x & global0.a.c), global1.yx, vec3<u32>(~countOneBits(global0.c), _wgslsmith_mod_u32(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.a.e.x, global0.c), vec2<u32>(4294967295u, 1u))), ~25335u << (_wgslsmith_dot_vec4_u32(vec4<u32>(global0.c, 17816u, global0.c, global0.c), vec4<u32>(global0.a.e.x, global0.a.e.x, global0.c, global0.c)) % 32u))), -10223i, global0.a.c, Struct_3(select(global0.d.a, vec4<bool>(true, true, global1.x | global0.d.a.x, 2147483647i >= global3.x), global0.d.a.x)));
    global2 = vec4<f32>(-1092f, _wgslsmith_f_op_f32(trunc(var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-519f, _wgslsmith_f_op_f32(var_1.x * -471f), !global0.a.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2.x)))))));
    return var_2.c;
}

fn func_1() -> StorageBuffer {
    var var_0 = _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(global0.a.c ^ global0.c, global0.a.c, func_2(), 1u), vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, global0.c, global0.a.e.x, global0.a.e.x), ~vec4<u32>(global0.c, global0.c, global0.a.c, global0.a.e.x)), global0.c, 1u, 4294967295u)), min(_wgslsmith_mod_vec4_u32(~(~vec4<u32>(global0.c, 4294967295u, 27064u, global0.c)), _wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(global0.c, global0.a.c, 47058u, global0.c)), ~vec4<u32>(65935u, 4294967295u, global0.c, global0.a.c))), ~(abs(vec4<u32>(51925u, 59307u, 49274u, 58044u)) & _wgslsmith_add_vec4_u32(vec4<u32>(global0.a.e.x, global0.c, 32821u, 24289u), vec4<u32>(global0.a.e.x, global0.c, global0.a.c, global0.a.e.x)))));
    global1 = !select(select(select(vec4<bool>(global1.x, false, global0.a.d.x, global1.x), !vec4<bool>(false, true, false, global1.x), global1.x), select(!vec4<bool>(true, global1.x, global0.d.a.x, false), global0.d.a, true), select(vec4<bool>(true, global1.x, global1.x, false), global0.d.a, true)), vec4<bool>(!(0u >= var_0.x), select(global1.x & global0.d.a.x, false, false), any(vec3<bool>(global0.a.a, global0.d.a.x, true)), global0.d.a.x), any(vec4<bool>(all(global0.d.a), true, true, !global1.x)));
    global1 = global0.d.a;
    global0 = Struct_4(global0.a, _wgslsmith_mult_i32(-22184i, global3.x), global0.a.e.x, Struct_3(select(vec4<bool>(func_3(Struct_2(global0.a, var_0.x, true, vec4<u32>(global0.a.c, 103690u, global0.c, global0.a.e.x), vec4<i32>(u_input.a, 1i, u_input.a, 11440i)), global3.x, global0.a.d, vec2<f32>(-758f, 1047f)), true, all(vec3<bool>(false, true, global0.d.a.x)), all(vec2<bool>(global1.x, true))), global0.d.a, !global1.x != any(global0.d.a))));
    var var_1 = 1u;
    return StorageBuffer(~vec2<i32>(~(~u_input.a), _wgslsmith_mult_i32(-1i, global0.b >> (var_0.x % 32u))), _wgslsmith_dot_vec2_i32(vec2<i32>(global3.x, ~(i32(-1i) * -2147483647i)), firstTrailingBit(global3.wx)), 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_u32(~(~_wgslsmith_add_u32(global0.a.e.x, 4294967295u)), global0.c, max(4294967295u, ~1u));
    let var_1 = global2.x;
    let x = u_input.a;
    s_output = func_1();
}

