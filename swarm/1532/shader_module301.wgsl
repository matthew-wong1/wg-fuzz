struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_4 {
    a: u32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 25>;

var<private> global1: bool;

var<private> global2: Struct_4 = Struct_4(1u, vec2<u32>(4294967295u, 11378u));

var<private> global3: vec4<f32>;

var<private> global4: i32 = -54671i;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: bool) -> vec4<i32> {
    var var_0 = vec3<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(-u_input.c.x, ~firstLeadingBit(u_input.d)), 0i), u_input.d, -u_input.c.x);
    let var_1 = Struct_4(_wgslsmith_sub_u32(firstLeadingBit(~_wgslsmith_clamp_u32(u_input.e, u_input.a.x, 1u)), ~(firstTrailingBit(global2.a) & global2.b.x)), _wgslsmith_sub_vec2_u32(firstLeadingBit(vec2<u32>(~1u, firstTrailingBit(u_input.e))), ~(~u_input.a)));
    let var_2 = -firstLeadingBit(_wgslsmith_dot_vec2_i32(u_input.c.xz, vec2<i32>(2147483647i, u_input.b))) | ~(-2147483647i);
    global0 = array<Struct_2, 25>();
    global1 = any(select(vec2<bool>(all(vec3<bool>(true, false, arg_0)), true), vec2<bool>(false, any(!vec4<bool>(false, arg_0, true, false))), vec2<bool>(u_input.c.x <= _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.d, u_input.c.x), u_input.c), ~0u <= var_1.a)));
    return firstLeadingBit(abs(max(vec4<i32>(-2147483647i, 3541i, u_input.d, var_0.x), vec4<i32>(23792i, var_2, var_2, var_0.x))) | max(min(vec4<i32>(75205i, -1i, -8161i, 23042i), vec4<i32>(var_0.x, 1i, -1i, u_input.c.x)), ~vec4<i32>(-2147483647i, 0i, u_input.c.x, -1i))) << (min(vec4<u32>(~1u, ~_wgslsmith_clamp_u32(var_1.a, 1u, 83820u), 1u, _wgslsmith_add_u32(var_1.b.x >> (48183u % 32u), _wgslsmith_clamp_u32(global2.b.x, var_1.a, 32165u))), vec4<u32>(global2.a, 4294967295u, 42864u, global2.b.x)) % vec4<u32>(32u));
}

fn func_4(arg_0: vec4<i32>, arg_1: bool) -> f32 {
    let var_0 = ~((arg_0.xw ^ vec2<i32>(arg_0.x, 2147483647i)) ^ ~max(vec2<i32>(u_input.b, 1i), arg_0.wy)) << (firstTrailingBit(u_input.a) % vec2<u32>(32u));
    var var_1 = false;
    var_1 = arg_1;
    var var_2 = !arg_1;
    let var_3 = Struct_2(firstLeadingBit(abs(max(113285u, 79456u)) >> (firstLeadingBit(global2.b.x) % 32u)), _wgslsmith_mod_vec3_u32(select(~vec3<u32>(global2.a, u_input.e, 10207u), ~vec3<u32>(u_input.e, global2.a, global2.a), !vec3<bool>(false, arg_1, arg_1)), vec3<u32>(reverseBits(u_input.a.x), 11146u, u_input.e)));
    return -1709f;
}

fn func_2(arg_0: vec2<i32>, arg_1: bool, arg_2: vec4<f32>, arg_3: vec3<bool>) -> vec2<bool> {
    global4 = arg_0.x;
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(vec4<i32>(_wgslsmith_dot_vec4_i32(func_3(arg_1), _wgslsmith_add_vec4_i32(vec4<i32>(20304i, -1i, arg_0.x, 2147483647i), vec4<i32>(u_input.b, u_input.b, arg_0.x, u_input.b))), 1i, (u_input.c.x ^ arg_0.x) | min(-2147483647i, 22407i), _wgslsmith_mod_i32(_wgslsmith_mult_i32(-25278i, 8206i), _wgslsmith_dot_vec3_i32(vec3<i32>(20979i, -1i, 36997i), vec3<i32>(u_input.b, -27499i, 8702i)))), all(arg_3))));
    var var_1 = _wgslsmith_div_vec4_i32(~abs(max(vec4<i32>(44296i, 0i, -1i, u_input.d), ~vec4<i32>(u_input.b, -13122i, arg_0.x, 1745i))), -_wgslsmith_mult_vec4_i32(~reverseBits(vec4<i32>(22516i, u_input.c.x, u_input.c.x, -26781i)), vec4<i32>(_wgslsmith_div_i32(u_input.b, 0i), arg_0.x, ~arg_0.x, _wgslsmith_add_i32(arg_0.x, -2147483647i))));
    let var_2 = global0[_wgslsmith_index_u32(4294967295u, 25u)];
    let var_3 = countOneBits(vec3<u32>(~(~(~1u)), 32694u, var_2.a));
    return vec2<bool>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(216f))), -557f)) >= _wgslsmith_f_op_f32(step(982f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(647f, 564f)), -1532f)))), false);
}

fn func_1() -> Struct_3 {
    global4 = min(u_input.b, u_input.d);
    let var_0 = !select(vec2<bool>(any(vec4<bool>(true, true, true, false)), any(vec2<bool>(true, true))), func_2(vec2<i32>(u_input.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 688i, 0i, u_input.d), vec4<i32>(0i, u_input.c.x, 41416i, u_input.b))), all(vec4<bool>(true, true, false, true)) == all(vec3<bool>(false, false, true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1849f, global3.x, 1114f, -1771f)), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true)), true);
    let var_1 = 1u;
    var var_2 = Struct_2(67502u, vec3<u32>(global2.a, 13206u, countOneBits(min(var_1, ~u_input.a.x))));
    var var_3 = Struct_1(global2.a, select(select(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, var_0.x), vec4<bool>(var_0.x, false, false, var_0.x)), select(select(vec4<bool>(var_0.x, var_0.x, true, true), vec4<bool>(var_0.x, var_0.x, true, true), var_0.x), vec4<bool>(false, var_0.x, false, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, var_0.x, var_0.x, var_0.x), false)), false), select(select(!vec4<bool>(var_0.x, var_0.x, var_0.x, true), select(vec4<bool>(var_0.x, false, var_0.x, false), vec4<bool>(true, var_0.x, var_0.x, var_0.x), var_0.x), vec4<bool>(true, true, true, true)), vec4<bool>(func_2(u_input.c.yx, true, vec4<f32>(global3.x, -481f, global3.x, 1000f), vec3<bool>(false, var_0.x, var_0.x)).x, global2.a > global2.a, var_0.x, u_input.b < 1i), select(vec4<bool>(false, true, var_0.x, var_0.x), select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(false, false, false, false), false), vec4<bool>(var_0.x, var_0.x, true, true))), select(var_0.x, !all(vec3<bool>(var_0.x, var_0.x, var_0.x)), all(!var_0))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, _wgslsmith_f_op_f32(-747f * global3.x), 818f) * vec3<f32>(_wgslsmith_f_op_f32(global3.x + _wgslsmith_f_op_f32(func_4(vec4<i32>(u_input.b, u_input.d, 48958i, 1i), false))), 237f, -1765f)));
    return Struct_3(19676u, Struct_1(2532u, select(select(var_3.b, !var_3.b, var_0.x || var_0.x), !(!vec4<bool>(false, true, var_0.x, var_0.x)), all(var_3.b.zx)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(var_3.c.x, global3.x)), -854f, _wgslsmith_f_op_f32(-global3.x)))), _wgslsmith_clamp_vec4_i32(-_wgslsmith_sub_vec4_i32(vec4<i32>(1i, u_input.d, -31464i, 3669i), firstLeadingBit(vec4<i32>(u_input.b, u_input.c.x, -17274i, u_input.d))), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(56i, u_input.c.x, u_input.c.x, u_input.d) >> (vec4<u32>(236u, var_3.a, u_input.e, 20592u) % vec4<u32>(32u)), reverseBits(vec4<i32>(u_input.b, u_input.d, 1i, 4809i))), 2147483647i, _wgslsmith_add_i32(-4i, u_input.d), _wgslsmith_mod_i32(min(1i, 493i), i32(-1i) * -2147483647i)), vec4<i32>(-reverseBits(-1i), min(i32(-1i) * -19736i, -1i), max(select(34299i, -1i, true), i32(-1i) * -3839i), u_input.d << (var_3.a % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global4 = 1i;
    let var_1 = ~(~global2.b);
    let var_2 = firstLeadingBit(var_0.a);
    let var_3 = firstTrailingBit(~reverseBits(~vec4<u32>(u_input.a.x, 14488u, 0u, global2.b.x) << ((vec4<u32>(var_0.a, u_input.e, 0u, 86558u) >> (vec4<u32>(4294967295u, u_input.e, 1u, global2.b.x) % vec4<u32>(32u))) % vec4<u32>(32u))));
    var var_4 = func_1();
    let var_5 = global0[_wgslsmith_index_u32(22498u, 25u)];
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, ~73837u, 783f);
}

