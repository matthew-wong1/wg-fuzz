struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(true, vec3<f32>(-1083f, 1006f, 1088f), vec2<u32>(33224u, 628u)), Struct_1(true, vec3<f32>(1540f, 320f, -1501f), vec2<u32>(33366u, 4294967295u)), Struct_1(false, vec3<f32>(-447f, -526f, -456f), vec2<u32>(63145u, 52727u)), Struct_1(false, vec3<f32>(-784f, -443f, 569f), vec2<u32>(2408u, 4294967295u)));

var<private> global1: array<bool, 21>;

var<private> global2: Struct_1;

var<private> global3: i32 = i32(-2147483648);

var<private> global4: vec4<u32> = vec4<u32>(0u, 43613u, 0u, 4294967295u);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(~(~1u) ^ ~(~min(~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(global4.x, global2.c.x), global4.wz))), 4u)];
    let var_1 = vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, 8581i, countOneBits(-2147483647i), u_input.a.x), u_input.d), u_input.d), 1080i, ~(~(~(-1i & u_input.d.x))), _wgslsmith_mod_i32(~(15480i ^ -u_input.d.x), u_input.a.x));
    var var_2 = _wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_f_op_f32(min(-511f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.x))))) > _wgslsmith_f_op_f32(sign(var_0.b.x));
    var_2 = u_input.d.x >= 20910i;
    global1 = array<bool, 21>();
    return _wgslsmith_dot_vec4_u32(~(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, global2.c.x, 1u, 31111u), vec4<u32>(var_0.c.x, var_0.c.x, global4.x, 1u)))), vec4<u32>(global4.x, _wgslsmith_add_u32(~firstLeadingBit(var_0.c.x), ~(~0u)), 4294967295u, global2.c.x >> (~(34043u >> (global2.c.x % 32u)) % 32u)));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: u32) -> vec2<i32> {
    var var_0 = arg_0;
    let var_1 = Struct_1(!global1[_wgslsmith_index_u32(1u, 21u)], _wgslsmith_f_op_vec3_f32(var_0.b + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2.b + vec3<f32>(var_0.b.x, global2.b.x, -167f))))), ~(var_0.c << (abs(vec2<u32>(global4.x, global4.x)) % vec2<u32>(32u))));
    let var_2 = Struct_1(true, var_1.b, _wgslsmith_mult_vec2_u32(select(firstLeadingBit(global2.c), global4.yw, var_0.a) ^ ~(var_1.c & vec2<u32>(arg_0.c.x, 13394u)), _wgslsmith_sub_vec2_u32(var_0.c, global4.yw)));
    let var_3 = var_1;
    global3 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(-_wgslsmith_sub_vec3_i32(u_input.d.wxy, vec3<i32>(u_input.a.x, -1i, -31161i)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.d.x, u_input.a.x, 2125i), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, -23302i, u_input.a.x), vec3<i32>(2147483647i, 2147483647i, u_input.d.x)))), abs(~1i) << (~(~var_3.c.x) % 32u)), _wgslsmith_add_vec2_i32(~(u_input.a.zx << (vec2<u32>(var_0.c.x, arg_2) % vec2<u32>(32u))), firstLeadingBit(select(u_input.a.xx, u_input.d.yz, var_2.a))) & ~(-u_input.d.xz));
    return u_input.a.zy;
}

fn func_2() -> Struct_1 {
    let var_0 = -1i;
    var var_1 = func_4(global0[_wgslsmith_index_u32(global4.x, 4u)], !(!global1[_wgslsmith_index_u32(~u_input.b << (5874u % 32u), 21u)]), _wgslsmith_mult_u32(_wgslsmith_mod_u32(1u, select(global2.c.x, _wgslsmith_add_u32(global2.c.x, u_input.c), true)), func_3() ^ 24105u));
    let var_2 = ~vec4<u32>(firstLeadingBit(~_wgslsmith_dot_vec2_u32(global4.xz, vec2<u32>(global2.c.x, global2.c.x))), _wgslsmith_sub_u32(74230u, ~global2.c.x ^ abs(23218u)), 1u, ~(~_wgslsmith_sub_u32(global2.c.x, 8019u)));
    let var_3 = vec2<bool>(false, all(select(select(vec3<bool>(false, global2.a, false), select(vec3<bool>(false, false, true), vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.c, 21u)], true), vec3<bool>(global1[_wgslsmith_index_u32(global2.c.x, 21u)], false, false)), select(vec3<bool>(global1[_wgslsmith_index_u32(0u, 21u)], false, false), vec3<bool>(global2.a, global2.a, false), vec3<bool>(global1[_wgslsmith_index_u32(13986u, 21u)], global2.a, true))), vec3<bool>(global1[_wgslsmith_index_u32(8720u, 21u)], all(vec4<bool>(global1[_wgslsmith_index_u32(28295u, 21u)], true, global1[_wgslsmith_index_u32(var_2.x, 21u)], true)), false), false)));
    global4 = ~(~(~_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(var_2, var_2, vec4<u32>(u_input.c, 4294967295u, 14836u, 52582u)), var_2)));
    return Struct_1(var_2.x >= ~select(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.x, global4.x), vec2<u32>(var_2.x, global2.c.x)), u_input.b | 5889u, false), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b.x, global2.b.x, global2.b.x) - global2.b)) - global2.b))), ~(~global2.c << ((var_2.yy ^ ~global2.c) % vec2<u32>(32u))));
}

fn func_1(arg_0: u32) -> vec3<bool> {
    let var_0 = func_2();
    return select(!select(select(vec3<bool>(true, true, global2.a), select(vec3<bool>(var_0.a, global1[_wgslsmith_index_u32(0u, 21u)], global1[_wgslsmith_index_u32(47809u, 21u)]), vec3<bool>(false, true, false), vec3<bool>(false, global2.a, var_0.a)), select(vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.c, 21u)], true), vec3<bool>(var_0.a, true, true), false)), select(vec3<bool>(true, global1[_wgslsmith_index_u32(global2.c.x, 21u)], global1[_wgslsmith_index_u32(4294967295u, 21u)]), vec3<bool>(true, var_0.a, false), select(vec3<bool>(global1[_wgslsmith_index_u32(0u, 21u)], false, var_0.a), vec3<bool>(var_0.a, var_0.a, global2.a), vec3<bool>(true, global2.a, global1[_wgslsmith_index_u32(u_input.c, 21u)]))), false), vec3<bool>(all(vec2<bool>(true, true)), var_0.a, var_0.a), any(select(select(vec3<bool>(true, true, true), !vec3<bool>(true, global2.a, global1[_wgslsmith_index_u32(var_0.c.x, 21u)]), true || global1[_wgslsmith_index_u32(82121u, 21u)]), vec3<bool>(!global1[_wgslsmith_index_u32(15732u, 21u)], !global1[_wgslsmith_index_u32(var_0.c.x, 21u)], true), vec3<bool>(true, func_2().a, select(global1[_wgslsmith_index_u32(52069u, 21u)], false, false)))));
}

fn func_5(arg_0: vec3<bool>, arg_1: vec3<bool>) -> u32 {
    var var_0 = vec3<bool>(true, false, (!global1[_wgslsmith_index_u32(1u, 21u)] & all(vec4<bool>(global1[_wgslsmith_index_u32(global4.x, 21u)], true, global1[_wgslsmith_index_u32(24669u, 21u)], true))) && true);
    var var_1 = global0[_wgslsmith_index_u32(max(1u, u_input.b), 4u)];
    let var_2 = func_2().b.xz;
    let var_3 = all(select(select(vec4<bool>(global2.a, !var_0.x, any(arg_0), true), select(!vec4<bool>(true, true, var_1.a, false), vec4<bool>(true, false, var_1.a, false), true), vec4<bool>(arg_0.x, true, u_input.d.x == u_input.a.x, true)), !(!(!vec4<bool>(var_1.a, var_0.x, true, true))), vec4<bool>(true, true, true, true)));
    var var_4 = select(_wgslsmith_mod_vec3_i32(~(~vec3<i32>(-42933i, u_input.d.x, u_input.a.x)), u_input.d.wxx >> (~vec3<u32>(28378u, 35795u, u_input.b) % vec3<u32>(32u))), _wgslsmith_mult_vec3_i32(abs(max(u_input.a << (global4.wyx % vec3<u32>(32u)), u_input.a)), _wgslsmith_add_vec3_i32(select(vec3<i32>(u_input.a.x, 59355i, -1i), vec3<i32>(u_input.d.x, -8110i, u_input.d.x), !vec3<bool>(global1[_wgslsmith_index_u32(global4.x, 21u)], var_0.x, arg_1.x)), vec3<i32>(3196i, i32(-1i) * -19112i, abs(u_input.a.x)))), true);
    return global2.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global4.xwz;
    global0 = array<Struct_1, 4>();
    global4 = ~vec4<u32>(_wgslsmith_mult_u32(u_input.c, 1u) << (max(4294967295u, _wgslsmith_add_u32(1u, global2.c.x)) % 32u), select(~_wgslsmith_mult_u32(0u, 0u), 4294967295u, global1[_wgslsmith_index_u32(~select(var_0.x, u_input.c, false), 21u)]), global2.c.x << (reverseBits(29056u) % 32u), global4.x);
    let var_1 = _wgslsmith_f_op_f32(round(global2.b.x));
    global4 = vec4<u32>(var_0.x, func_5(vec3<bool>(any(vec3<bool>(true, false, true)) || true, 582f >= _wgslsmith_f_op_f32(-global2.b.x), !(-21784i != u_input.a.x)), select(vec3<bool>(global2.a, true, true), !select(vec3<bool>(true, false, false), vec3<bool>(global2.a, false, true), vec3<bool>(true, global1[_wgslsmith_index_u32(global2.c.x, 21u)], false)), func_1(~u_input.c))), firstLeadingBit(_wgslsmith_mult_u32(~89302u, global4.x)), ~0u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1198f), _wgslsmith_f_op_f32(-139f - _wgslsmith_f_op_f32(-var_1)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1 + var_1), _wgslsmith_f_op_f32(f32(-1f) * -815f)), -1000f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.b.xx - vec2<f32>(_wgslsmith_div_f32(-858f, global2.b.x), _wgslsmith_f_op_f32(max(1077f, 481f))))), _wgslsmith_sub_vec3_i32(vec3<i32>(1396i << (_wgslsmith_sub_u32(var_0.x, 59632u) % 32u), _wgslsmith_add_i32(reverseBits(u_input.d.x), -u_input.d.x), firstTrailingBit(_wgslsmith_dot_vec4_i32(u_input.d, u_input.d))), vec3<i32>(u_input.a.x, u_input.a.x, 32822i)), -countOneBits(func_4(Struct_1(global2.a, vec3<f32>(1173f, 1843f, global2.b.x), vec2<u32>(1u, 0u)), true, ~u_input.b).x), u_input.d.x);
}

