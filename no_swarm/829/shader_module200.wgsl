struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: vec4<f32> = vec4<f32>(-1091f, 180f, -326f, 299f);

var<private> global2: vec3<i32>;

var<private> global3: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(53859i), Struct_2(0i), Struct_2(-1i), Struct_2(15860i), Struct_2(0i), Struct_2(-44102i), Struct_2(-26663i), Struct_2(i32(-2147483648)), Struct_2(-1i), Struct_2(37529i), Struct_2(-28707i), Struct_2(-1i), Struct_2(i32(-2147483648)), Struct_2(-3186i));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: i32) -> vec3<u32> {
    global2 = -min(max(firstTrailingBit(~vec3<i32>(12378i, u_input.a.x, global2.x)), _wgslsmith_add_vec3_i32(select(vec3<i32>(-42313i, 1i, 2147483647i), vec3<i32>(arg_2, 11879i, 55553i), vec3<bool>(false, arg_0, arg_0)), vec3<i32>(global2.x, -28867i, arg_2))), vec3<i32>(-global2.x, global2.x, countOneBits(_wgslsmith_add_i32(global2.x, 2147483647i))));
    let var_0 = vec4<bool>(all(vec3<bool>(true, _wgslsmith_f_op_f32(global1.x * -1373f) > _wgslsmith_f_op_f32(-702f - global1.x), true)), _wgslsmith_add_u32(global0.x, 0u) <= u_input.b.x, !(!all(vec2<bool>(true, true))), select(any(!vec2<bool>(false, arg_0)) & true, any(select(vec4<bool>(arg_0, true, arg_0, true), vec4<bool>(false, false, arg_0, arg_0), false)), arg_0));
    global3 = array<Struct_2, 14>();
    global3 = array<Struct_2, 14>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-global1.x), !var_0, !var_0.xw);
    return vec3<u32>(1u, arg_1, ~u_input.b.x);
}

fn func_2(arg_0: Struct_1) -> i32 {
    global3 = array<Struct_2, 14>();
    global0 = _wgslsmith_div_vec3_u32(func_3(all(!select(arg_0.b.wyw, arg_0.b.wwy, arg_0.b.x)), 5238u, _wgslsmith_div_i32(-32475i, _wgslsmith_add_i32(-81027i, global2.x & 15925i))), u_input.b.ywz);
    var var_0 = (_wgslsmith_add_u32(~(~1u), _wgslsmith_div_u32(u_input.b.x, global0.x) >> (20119u % 32u)) ^ ~func_3(arg_0.b.x, min(global0.x, u_input.b.x), ~(-1i)).x) < 42212u;
    var var_1 = _wgslsmith_div_vec4_i32(~vec4<i32>(_wgslsmith_mod_i32(u_input.a.x, global2.x) ^ global2.x, -16834i, 2147483647i, global2.x), vec4<i32>(abs(u_input.a.x >> (abs(7128u) % 32u)), _wgslsmith_clamp_i32(u_input.a.x, global2.x, (global2.x << (37735u % 32u)) | 54481i), global2.x, ~global2.x));
    var var_2 = u_input.b.x;
    return ~0i;
}

fn func_1(arg_0: vec2<bool>, arg_1: f32) -> Struct_1 {
    global2 = _wgslsmith_sub_vec3_i32(vec3<i32>(-22330i, _wgslsmith_sub_i32(global2.x, ~func_2(Struct_1(global1.x, vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), arg_0))), -33748i), select(-countOneBits(_wgslsmith_sub_vec3_i32(vec3<i32>(-17001i, 1i, global2.x), vec3<i32>(-38004i, global2.x, 2147483647i))), _wgslsmith_div_vec3_i32(vec3<i32>(~u_input.a.x, -64285i, firstLeadingBit(global2.x)), countOneBits(vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i))), true));
    var var_0 = global3[_wgslsmith_index_u32(~(_wgslsmith_sub_u32(46830u, _wgslsmith_mult_u32(~4294967295u, global0.x)) & 1u), 14u)];
    let var_1 = ~(33514i << ((u_input.b.x ^ ~u_input.b.x) % 32u)) >> (global0.x % 32u);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(exp2(global1.x)), vec4<bool>(any(select(vec2<bool>(false, arg_0.x), arg_0, arg_0.x)) != arg_0.x, !(13504u > _wgslsmith_dot_vec3_u32(u_input.b.zwx, u_input.b.yyx)), arg_0.x, arg_0.x), vec2<bool>(arg_0.x, !(!(!arg_0.x))));
    let var_3 = global3[_wgslsmith_index_u32(u_input.b.x, 14u)];
    return Struct_1(arg_1, var_2.b, !select(vec2<bool>(true, false), !vec2<bool>(arg_0.x, var_2.b.x), select(!vec2<bool>(arg_0.x, false), arg_0, true)));
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)))), global1.x);
    var var_1 = _wgslsmith_div_i32(-18568i, global2.x);
    var var_2 = ~(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global2.x, global2.x, u_input.a.x), vec3<i32>(u_input.a.x, 1i, global2.x)), -_wgslsmith_mult_i32(u_input.a.x, global2.x), 0i, ~u_input.a.x) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(1u, firstTrailingBit(0u), 0u, 21205u), firstTrailingBit(vec4<u32>(1u, global0.x, u_input.b.x, 0u) >> (vec4<u32>(46719u, 13590u, u_input.b.x, 0u) % vec4<u32>(32u)))) % vec4<u32>(32u)));
    let var_3 = _wgslsmith_f_op_f32(1910f * _wgslsmith_f_op_f32(f32(-1f) * -556f));
    var var_4 = _wgslsmith_mod_i32(global2.x, _wgslsmith_dot_vec3_i32(abs(var_2.wxw), -vec3<i32>(global2.x, var_2.x, 2147483647i)) >> ((u_input.b.x >> (_wgslsmith_div_u32(global0.x, global0.x) % 32u)) % 32u)) ^ reverseBits(0i);
    return global3[_wgslsmith_index_u32(4294967295u, 14u)];
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2) -> u32 {
    let var_0 = func_4(arg_0);
    let var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + global1.x), _wgslsmith_f_op_f32(arg_0.a - -128f)), vec4<bool>((~u_input.b.x <= u_input.b.x) != true, any(!vec3<bool>(arg_1, arg_0.c.x, false)), true, !arg_0.b.x), vec2<bool>(any(vec3<bool>(arg_0.b.x, !arg_0.c.x, arg_1 == true)), -func_2(Struct_1(342f, vec4<bool>(true, arg_0.b.x, arg_0.c.x, true), arg_0.c)) <= -_wgslsmith_mod_i32(u_input.a.x, 0i)));
    let var_2 = ~abs(vec4<i32>(5545i, _wgslsmith_mult_i32(u_input.a.x, min(u_input.a.x, 0i)), abs(-5913i), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.a, 1i, var_0.a, var_0.a), vec4<i32>(-2147483647i, 33506i, arg_2.a, arg_2.a)) ^ select(arg_2.a, u_input.a.x, false)));
    var var_3 = _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(countOneBits(abs(vec4<i32>(18378i, -2147483647i, -1i, u_input.a.x))), firstLeadingBit(var_2)), var_2);
    var var_4 = 197u;
    return _wgslsmith_mult_u32(u_input.b.x, global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<u32>(abs(0u), ~1u, func_5(Struct_1(global1.x, vec4<bool>(true, -28397i == u_input.a.x, select(true, false, false), false), select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, true), false))), all(vec2<bool>(true, all(vec4<bool>(false, true, false, true)))), func_4(func_1(vec2<bool>(true, true), _wgslsmith_f_op_f32(global1.x - 252f)))));
    let var_0 = vec4<u32>(_wgslsmith_dot_vec3_u32(~firstLeadingBit(select(u_input.b.xxw, vec3<u32>(u_input.b.x, global0.x, u_input.b.x), true)), vec3<u32>(func_5(Struct_1(-406f, vec4<bool>(true, false, false, false), vec2<bool>(false, false)), true, Struct_2(58420i)), global0.x, _wgslsmith_sub_u32(firstLeadingBit(global0.x), _wgslsmith_add_u32(global0.x, u_input.b.x)))), global0.x, ~(~abs(~4294967295u)), firstTrailingBit(_wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 0u, 4294967295u), u_input.b.xxx), vec3<u32>(firstLeadingBit(0u), 0u << (global0.x % 32u), global0.x))));
    global2 = vec3<i32>(i32(-1i) * -11191i, abs(38304i), -(~_wgslsmith_clamp_i32(1i, select(-651i, global2.x, true), -u_input.a.x)));
    var var_1 = max(firstLeadingBit(vec3<i32>(global2.x & 14965i, select(u_input.a.x, -1i, false), _wgslsmith_add_i32(-38806i, u_input.a.x))), -firstLeadingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, -2147483647i, global2.x), vec3<i32>(global2.x, 0i, -18547i)))) | vec3<i32>(1i, func_4(Struct_1(global1.x, vec4<bool>(true, false, true, false), vec2<bool>(false, true))).a, ~_wgslsmith_mod_i32(1i, func_4(Struct_1(-258f, vec4<bool>(false, true, true, false), vec2<bool>(false, false))).a));
    global2 = _wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.a.x, i32(-1i) * -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, u_input.a.x, var_1.x), vec3<i32>(global2.x, global2.x, -2147483647i))) << (~vec3<u32>(~4294967295u, ~var_0.x, ~var_0.x) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(vec3<i32>(-reverseBits(-25328i), 28774i, _wgslsmith_dot_vec3_i32(vec3<i32>(global2.x, u_input.a.x, var_1.x), vec3<i32>(-2147483647i, var_1.x, global2.x) >> (vec3<u32>(0u, global0.x, var_0.x) % vec3<u32>(32u)))), ~abs(-vec3<i32>(u_input.a.x, u_input.a.x, -1i))));
    let var_2 = func_1(vec2<bool>(true, any(!func_1(vec2<bool>(false, true), global1.x).b.ww)), 732f);
    var_1 = ~vec3<i32>(min(u_input.a.x, u_input.a.x & -51689i) & _wgslsmith_add_i32(0i, -6950i), firstLeadingBit(select(2147483647i, min(var_1.x, u_input.a.x), any(vec2<bool>(true, false)))), -1i);
    global0 = abs(reverseBits(vec3<u32>(4294967295u, _wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.b.x, 8806u), 0u), 2252u)));
    let var_3 = vec3<i32>(~1i, abs(-(~u_input.a.x)) & 1i, -abs(firstTrailingBit(var_1.x) | func_4(var_2).a));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~firstTrailingBit(18152u), _wgslsmith_mod_u32(u_input.b.x, u_input.b.x), var_0.x, 46916u) >> (var_0 % vec4<u32>(32u)));
}

