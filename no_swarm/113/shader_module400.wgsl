struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec4<bool>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec3<u32>,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec3<u32> = vec3<u32>(915u, 21444u, 1u);

var<private> global2: Struct_1;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32) -> u32 {
    global0 = all(select(vec3<bool>(true, !global2.d, ~global2.b.x <= firstLeadingBit(global2.b.x)), select(!vec3<bool>(global2.d, true, global2.c.x), global2.c.zxx, select(global2.c.yyy, select(global2.c.zzz, global2.c.wzx, global2.d), vec3<bool>(global2.d, true, global2.c.x))), true && !any(vec2<bool>(global2.c.x, false))));
    return 4294967295u;
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = arg_1;
    let var_1 = func_3(-(global2.b.x & (global2.b.x ^ _wgslsmith_sub_i32(-2147483647i, arg_0))));
    global1 = vec3<u32>(_wgslsmith_add_u32(u_input.a ^ abs(0u), abs(var_1)), global1.x, countOneBits(1u ^ var_1));
    let var_2 = _wgslsmith_sub_vec2_i32(~vec2<i32>(arg_1.b.x, _wgslsmith_mod_i32(~26495i, 1i)), abs(vec2<i32>(arg_1.b.x, _wgslsmith_div_i32(~89172i, 16933i ^ arg_0))));
    global1 = countOneBits(~select(firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(global1.x, global1.x, global1.x), vec3<u32>(global1.x, 0u, var_1))), vec3<u32>(76441u, reverseBits(5787u), abs(17942u)), var_0.c.ywx));
    return Struct_1(163f, arg_1.b & global2.b, select(var_0.c, global2.c, !(true || (false & global2.d))), -global2.b.x == countOneBits(arg_1.b.x));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<bool>) -> bool {
    let var_0 = global2.c.x;
    let var_1 = 25846i;
    let var_2 = ~21784u;
    global0 = arg_0.x & arg_1.c.x;
    global2 = func_2(select(-1i, arg_2.b.x, any(arg_2.c.xyx)), Struct_1(-1465f, vec2<i32>(~(~(-1i)), -(i32(-1i) * -22453i)), func_2(~var_1 >> ((var_2 & 1u) % 32u), Struct_1(global2.a, vec2<i32>(2147483647i, 38967i), arg_1.c, true)).c, false));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-func_2(-25715i, Struct_1(-168f, arg_1.b, arg_2.c, arg_1.c.x)).a))) < arg_1.a;
}

fn func_1(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = vec3<i32>(abs(-_wgslsmith_mult_i32(i32(-1i) * -42165i, -27991i)), global2.b.x | 0i, 29309i);
    let var_1 = select(all(global2.c.wyz), global2.d, !global2.d);
    global0 = select(func_4(!vec4<bool>(var_0.x > 32139i, var_1, select(true, arg_0.c.x, arg_0.c.x), !arg_0.c.x), func_2(-var_0.x << (abs(92289u) % 32u), Struct_1(-556f, vec2<i32>(-23732i, global2.b.x), vec4<bool>(global2.d, arg_0.d, global2.d, var_1), arg_0.c.x)), func_2(-global2.b.x, func_2(_wgslsmith_sub_i32(arg_0.b.x, 20377i), func_2(26236i, arg_0))), vec3<bool>(var_0.x != reverseBits(-1i), var_1, arg_0.c.x)), _wgslsmith_f_op_f32(120f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(global2.a * arg_0.a))) <= global2.a, !select(false, global2.d, !arg_0.c.x));
    var var_2 = ~(~select(_wgslsmith_add_u32(1u, ~44929u), _wgslsmith_sub_u32(global1.x, abs(0u)), true));
    global2 = Struct_1(252f, var_0.yx, !vec4<bool>(true, all(vec2<bool>(false, false)) == arg_0.c.x, all(!arg_0.c.yw), all(vec4<bool>(var_1, false, false, arg_0.c.x))), true);
    return select(_wgslsmith_div_vec4_u32(select(abs(~vec4<u32>(1u, global1.x, global1.x, global1.x)), max(~vec4<u32>(global1.x, u_input.a, 1596u, u_input.a), ~vec4<u32>(1u, u_input.a, u_input.a, u_input.a)), vec4<bool>(989f >= arg_0.a, true, all(vec2<bool>(global2.c.x, var_1)), all(vec2<bool>(true, false)))), vec4<u32>(~global1.x & reverseBits(25154u), _wgslsmith_sub_u32(~global1.x, 0u), _wgslsmith_sub_u32(u_input.a, ~u_input.a), ~firstLeadingBit(28077u))), select(select(vec4<u32>(u_input.a ^ global1.x, u_input.a, 1u, 4294967295u), ~(~vec4<u32>(global1.x, u_input.a, global1.x, global1.x)), arg_0.d), _wgslsmith_sub_vec4_u32(select(vec4<u32>(0u, global1.x, 51347u, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(58670u, 57539u, 0u, 1u), vec4<u32>(global1.x, 1u, 71877u, 11779u)), !global2.c), ~vec4<u32>(32721u, 0u, u_input.a, u_input.a)), 1i < var_0.x), vec4<bool>(any(vec4<bool>(all(global2.c), func_2(-2147483647i, Struct_1(global2.a, arg_0.b, arg_0.c, var_1)).d, false | var_1, true)), false, (var_1 == true) && func_2(23564i, arg_0).d, global2.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-1251f, _wgslsmith_add_vec2_i32(global2.b, _wgslsmith_clamp_vec2_i32(global2.b, global2.b, _wgslsmith_mod_vec2_i32(global2.b, vec2<i32>(57751i, global2.b.x)))), select(vec4<bool>(global2.c.x, global2.c.x, (0i == global2.b.x) | global2.c.x, false), vec4<bool>(select(true, false, select(true, true, global2.d)), false, any(vec2<bool>(global2.c.x, false)), !(global2.d & global2.c.x)), vec4<bool>(global2.c.x, false, global2.d & true, false)), _wgslsmith_dot_vec4_u32(func_1(Struct_1(1000f, global2.b, global2.c, false)), _wgslsmith_mod_vec4_u32(vec4<u32>(32556u, 1793u, u_input.a, 0u), _wgslsmith_mod_vec4_u32(vec4<u32>(global1.x, 4294967295u, global1.x, 1u), vec4<u32>(13003u, global1.x, 93820u, 9991u)))) <= 4294967295u);
    global2 = func_2(countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 16011i, global2.b.x) << (_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 0u, global1.x), vec3<u32>(7423u, u_input.a, global1.x)) % vec3<u32>(32u)), vec3<i32>(~1i, -44246i | var_0.b.x, 1i))), func_2(-select(firstLeadingBit(95i), var_0.b.x, any(vec3<bool>(false, true, global2.c.x))), var_0));
    let var_1 = _wgslsmith_mult_u32(u_input.a, 14071u);
    global0 = var_0.c.x;
    global0 = 41212u == _wgslsmith_mult_u32(~(~1u), ~var_1);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-25784i, -13148i, ~(var_0.b.x >> (68822u % 32u)) & ~_wgslsmith_mod_i32(global2.b.x, -1i)), _wgslsmith_div_f32(219f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1804f, global2.a) * -723f))), vec3<u32>(~u_input.a, firstTrailingBit(1u), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, var_1, 5012u, var_1), vec4<u32>(4294967295u, global1.x, 1u, u_input.a))), -3910i, select(select(vec4<i32>(var_0.b.x, ~11314i, -1i, -2147483647i), ~(~vec4<i32>(var_0.b.x, global2.b.x, -67831i, var_0.b.x)), !var_0.c), _wgslsmith_mult_vec4_i32(vec4<i32>(~(-10287i), -global2.b.x, ~(-30944i), global2.b.x), ~vec4<i32>(29180i, global2.b.x, 0i, var_0.b.x) >> ((vec4<u32>(0u, 4294967295u, 4294967295u, global1.x) & vec4<u32>(1u, var_1, u_input.a, var_1)) % vec4<u32>(32u))), func_2(0i, func_2(firstTrailingBit(22638i), func_2(8377i, var_0))).c));
}

