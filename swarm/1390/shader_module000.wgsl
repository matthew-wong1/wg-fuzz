struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec3<i32>,
    d: vec3<u32>,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: vec2<f32>,
    d: vec4<u32>,
    e: i32,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
    c: Struct_2,
    d: Struct_2,
    e: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, vec3<bool>(true, false, false), vec3<i32>(21415i, 2147483647i, i32(-2147483648)), vec3<u32>(57913u, 35294u, 1u), false);

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_2) -> i32 {
    let var_0 = arg_1.c;
    let var_1 = Struct_1(false, !select(arg_0.b, vec3<bool>(arg_0.b.x, !arg_1.b.x, arg_1.b.x & global0.e), !(!arg_1.b)), abs(-(vec3<i32>(arg_1.e.x, global0.c.x, var_0.e) >> (vec3<u32>(67433u, var_0.d.x, global0.d.x) % vec3<u32>(32u)))), firstTrailingBit(vec3<u32>(~var_0.b.x, _wgslsmith_mod_u32(18787u, 1u) << (_wgslsmith_add_u32(arg_2.b.x, 75462u) % 32u), 3027u)), (true | any(arg_1.b.xz)) == true);
    var var_2 = Struct_4(var_1, arg_1);
    let var_3 = vec4<u32>(_wgslsmith_div_u32(4294967295u, 21499u), ~arg_1.d.b.x, ~(~u_input.b.x), 4294967295u);
    global0 = Struct_1(1274f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1115f)))), select(var_1.b, !vec3<bool>(true, false, any(var_1.b.xx)), vec3<bool>(false && (33315u <= global0.d.x), arg_1.b.x, _wgslsmith_div_i32(u_input.c, u_input.c) < 1i)), var_2.a.c, _wgslsmith_div_vec3_u32(~(~arg_0.d), min(vec3<u32>(~u_input.b.x, firstTrailingBit(22710u), ~u_input.d.x), _wgslsmith_add_vec3_u32(u_input.b.yzx, ~var_1.d))), (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.a, 427f, true)) - _wgslsmith_f_op_f32(sign(-1482f))) >= arg_2.a) != (true || all(vec4<bool>(false, true, false, false))));
    return _wgslsmith_mult_i32(_wgslsmith_add_i32(arg_2.e, 71059i), 2147483647i);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(!global0.b.x, global0.b, vec3<i32>(-2147483647i, _wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.c, u_input.e, global0.c.x) ^ ~2147483647i, _wgslsmith_sub_i32(-25478i, func_3(Struct_1(global0.b.x, vec3<bool>(global0.a, global0.e, global0.a), global0.c, vec3<u32>(4294967295u, u_input.d.x, 35855u), true), Struct_3(-1683f, global0.b, Struct_2(-787f, vec4<u32>(0u, u_input.b.x, 4294967295u, 48806u), vec2<f32>(2790f, -428f), u_input.b, 1i), Struct_2(-1000f, vec4<u32>(4294967295u, u_input.a, global0.d.x, u_input.a), vec2<f32>(-593f, 2442f), u_input.b, global0.c.x), vec2<i32>(global0.c.x, global0.c.x)), Struct_2(-913f, u_input.b, vec2<f32>(1000f, 354f), u_input.b, 14554i)))), u_input.e), ~min(_wgslsmith_mod_vec3_u32(u_input.b.zxy, min(vec3<u32>(4294967295u, global0.d.x, 55512u), vec3<u32>(global0.d.x, 14211u, u_input.d.x))), abs(~global0.d)), !all(select(vec3<bool>(false, false, true), vec3<bool>(global0.b.x, global0.e, global0.e), global0.b)) & false);
    let var_1 = Struct_4(Struct_1(!(!(global0.a == true)), vec3<bool>(true, true, any(var_0.b)), vec3<i32>(430i, _wgslsmith_mod_i32(global0.c.x, var_0.c.x), -var_0.c.x | abs(global0.c.x)), u_input.b.zww, !(u_input.c <= (39392i >> (u_input.d.x % 32u)))), Struct_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-773f - 1073f)))), !vec3<bool>(global0.b.x, var_0.a, true), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1629f), u_input.b, vec2<f32>(_wgslsmith_f_op_f32(-1167f - 312f), _wgslsmith_f_op_f32(step(-1099f, -660f))), ~vec4<u32>(13086u, u_input.d.x, var_0.d.x, 117191u) | select(u_input.b, vec4<u32>(4294967295u, 52006u, 41228u, u_input.b.x), false), _wgslsmith_add_i32(-u_input.e, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.c.x, u_input.c, -31874i), vec3<i32>(-60867i, global0.c.x, -16421i)))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(756f))), u_input.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-972f, -241f), vec2<f32>(1025f, -1078f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-784f, 459f))), vec4<u32>(_wgslsmith_mult_u32(var_0.d.x, 0u), 93964u, ~global0.d.x, _wgslsmith_mod_u32(1u, global0.d.x)), global0.c.x), global0.c.xx));
    var_0 = var_1.a;
    global0 = Struct_1(global0.e, select(vec3<bool>(true, (var_1.b.c.e | -55324i) <= global0.c.x, var_1.b.a >= _wgslsmith_f_op_f32(f32(-1f) * -178f)), vec3<bool>(var_0.e, !(!var_1.a.a), true), var_0.b), countOneBits(~global0.c), var_1.a.d, !(var_1.a.b.x && (all(var_1.b.b) && var_1.a.b.x)));
    var var_2 = vec3<i32>(-1i) * -_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(abs(vec3<i32>(-22154i, 56616i, global0.c.x)), abs(vec3<i32>(1i, var_0.c.x, -12380i))), global0.c);
    return Struct_1((~func_3(var_1.a, Struct_3(1577f, global0.b, Struct_2(var_1.b.d.c.x, u_input.b, vec2<f32>(-733f, 1114f), var_1.b.c.d, u_input.c), var_1.b.d, var_1.b.e), var_1.b.d) ^ 0i) > (reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e, 2147483647i, -1i), vec3<i32>(var_1.a.c.x, 15953i, -5815i))) & 14988i), !var_0.b, global0.c, var_0.d, 10495i < ~_wgslsmith_div_i32(abs(0i), firstTrailingBit(-20654i)));
}

fn func_1(arg_0: Struct_4, arg_1: vec4<f32>) -> vec2<u32> {
    global0 = func_2();
    global0 = arg_0.a;
    return global0.d.yx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(4294967295u, ~(~1u | u_input.b.x), ~global0.d.x, select(73337u, _wgslsmith_dot_vec2_u32(func_1(Struct_4(Struct_1(global0.e, vec3<bool>(global0.a, true, true), vec3<i32>(-36179i, global0.c.x, u_input.e), global0.d, global0.e), Struct_3(-1012f, global0.b, Struct_2(1329f, vec4<u32>(u_input.d.x, u_input.a, u_input.b.x, 9030u), vec2<f32>(-281f, -1943f), u_input.b, u_input.c), Struct_2(1061f, vec4<u32>(u_input.b.x, 4294967295u, 97981u, 1u), vec2<f32>(1531f, 154f), u_input.b, 17043i), vec2<i32>(22589i, -16134i))), vec4<f32>(1832f, -1225f, -2238f, 1000f)), vec2<u32>(1u, u_input.a)) ^ (select(0u, 4294967295u, global0.a) ^ 4294967295u), global0.e));
    global0 = func_2();
    var var_1 = func_2().b.x;
    global0 = Struct_1(!all(global0.b), !vec3<bool>(!global0.b.x && false, true, !(var_0.x != global0.d.x)), global0.c, _wgslsmith_sub_vec3_u32(vec3<u32>(var_0.x, ~0u, var_0.x), ~vec3<u32>(var_0.x, 69782u, global0.d.x) >> ((vec3<u32>(20280u, var_0.x, 4294967295u) ^ vec3<u32>(44517u, var_0.x, u_input.d.x)) % vec3<u32>(32u))) & ~(~u_input.b.zwz), true);
    global0 = Struct_1(func_2().b.x, !select(select(!global0.b, global0.b, global0.b), func_2().b, (global0.d.x & 69337u) >= ~19516u), vec3<i32>(-3178i, -34735i, ~(i32(-1i) * -u_input.e)), select(~_wgslsmith_sub_vec3_u32(~var_0.zyx, vec3<u32>(global0.d.x, 23557u, var_0.x)), vec3<u32>(min(1u, global0.d.x), u_input.d.x, var_0.x << (global0.d.x % 32u)), true), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(max(global0.c.zz, _wgslsmith_add_vec2_i32(global0.c.yx, ~global0.c.xz)), firstTrailingBit(select(global0.c.zx, abs(vec2<i32>(u_input.c, -1i)), vec2<bool>(true, true)))));
}

