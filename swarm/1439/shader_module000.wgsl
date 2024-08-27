struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: vec2<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_2,
    d: f32,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: Struct_2,
    d: vec3<u32>,
    e: u32,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_2 = Struct_2(4294967295u, 13229u, vec2<bool>(false, true));

var<private> global2: vec3<bool>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: Struct_5) -> vec4<i32> {
    global0 = arg_1;
    var var_0 = _wgslsmith_div_vec4_u32(countOneBits(max(vec4<u32>(u_input.c.x, 70878u, 13106u, global1.b), vec4<u32>(23456u, arg_1.a.x, u_input.b, u_input.b)) | (vec4<u32>(43527u, 62403u, 0u, arg_1.c.a) << (vec4<u32>(global1.b, 97161u, 73833u, 11037u) % vec4<u32>(32u)))), abs(~(~vec4<u32>(global1.a, 6703u, 4294967295u, arg_1.a.x)))) ^ ~_wgslsmith_sub_vec4_u32(vec4<u32>(7274u, arg_1.a.x, 44268u, 28u) >> (select(vec4<u32>(arg_1.c.a, 0u, 30165u, global1.a), vec4<u32>(9493u, 4294967295u, global1.a, 8807u), arg_2.a.x) % vec4<u32>(32u)), vec4<u32>(arg_1.a.x, 4294967295u, _wgslsmith_mod_u32(arg_1.b.b.x, arg_1.a.x), ~global0.b.b.x));
    let var_1 = 11033u;
    var var_2 = global0.c;
    global2 = select(select(arg_2.a, !select(arg_2.a, vec3<bool>(global2.x, arg_2.a.x, false), !vec3<bool>(global0.c.c.x, true, true)), arg_1.c.c.x), vec3<bool>(all(select(select(vec4<bool>(true, arg_2.a.x, var_2.c.x, global0.c.c.x), vec4<bool>(global0.c.c.x, var_2.c.x, true, false), false), vec4<bool>(global2.x, false, false, true), vec4<bool>(arg_1.c.c.x, true, true, true))), false, global0.c.c.x), !vec3<bool>(global1.c.x, any(select(var_2.c, vec2<bool>(true, global1.c.x), true)), all(arg_2.a)));
    return ~countOneBits(~(-select(vec4<i32>(-6934i, -2147483647i, 1110i, 55222i), vec4<i32>(-1i, arg_0.x, global0.b.c, global0.b.c), true)));
}

fn func_2(arg_0: vec4<i32>, arg_1: u32) -> vec2<i32> {
    let var_0 = _wgslsmith_mod_vec4_i32(firstLeadingBit(func_3(vec3<i32>(global0.b.d.x, -1i, -1i), Struct_3(global0.b.b.yy, Struct_1(1340f, u_input.c, arg_0.x, global0.b.d, 2147483647i), Struct_2(global1.a, u_input.b, vec2<bool>(false, false)), -402f), Struct_5(!vec3<bool>(global1.c.x, false, false)))), arg_0);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(floor(-788f)), vec3<u32>(max(_wgslsmith_add_u32(reverseBits(arg_1), global1.b), ~35007u), ~firstTrailingBit(47831u), abs(arg_1)), -(countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 1i), global0.b.d)) | -10406i), ~var_0.zw, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(var_0.zyy & (vec3<i32>(arg_0.x, global0.b.e, global0.b.d.x) >> (u_input.c % vec3<u32>(32u))), vec3<i32>(arg_0.x, global0.b.d.x, -16315i), vec3<i32>(var_0.x, ~29862i, 4645i)), ~_wgslsmith_clamp_vec3_i32(max(var_0.xwx, var_0.zyz), arg_0.yzz, vec3<i32>(-2147483647i, var_0.x, 1i))));
    var var_2 = Struct_3(vec2<u32>(_wgslsmith_dot_vec4_u32(firstLeadingBit(~vec4<u32>(u_input.c.x, 4294967295u, 0u, 47350u)), vec4<u32>(arg_1, u_input.c.x, ~arg_1, 4294967295u)), 73312u), Struct_1(_wgslsmith_f_op_f32(ceil(383f)), vec3<u32>(var_1.b.x, firstLeadingBit(~50197u), _wgslsmith_mod_u32(_wgslsmith_mult_u32(global1.a, u_input.a), 0u)), -14800i, ~firstTrailingBit(vec2<i32>(1i, -6904i)), countOneBits(-var_1.d.x)), Struct_2(_wgslsmith_sub_u32(4294967295u, 1u), ~abs(1u), select(!select(global0.c.c, global0.c.c, global1.c.x), vec2<bool>(false, any(vec4<bool>(true, global2.x, global0.c.c.x, true))), select(vec2<bool>(false, true), vec2<bool>(global2.x, false), all(vec4<bool>(false, true, false, global0.c.c.x))))), -1953f);
    global2 = select(select(!vec3<bool>(any(vec4<bool>(false, global2.x, global1.c.x, global1.c.x)), all(vec4<bool>(false, true, global2.x, global2.x)), u_input.c.x == arg_1), !(!select(vec3<bool>(global2.x, global1.c.x, true), vec3<bool>(false, var_2.c.c.x, global2.x), vec3<bool>(true, true, global1.c.x))), global1.c.x & !all(vec4<bool>(global1.c.x, global1.c.x, false, false))), select(!(!(!vec3<bool>(false, global1.c.x, global1.c.x))), vec3<bool>(global1.c.x, var_2.c.c.x, true), all(vec4<bool>(true, global2.x, false, false)) & (firstTrailingBit(var_2.b.e) <= -2147483647i)), !vec3<bool>(!any(vec4<bool>(global1.c.x, true, true, global1.c.x)), select(!global1.c.x, true, var_2.c.c.x | false), ~global0.a.x >= arg_1));
    let var_3 = Struct_3(var_1.b.xx, global0.b, Struct_2(~0u & global0.b.b.x, ~(~_wgslsmith_mod_u32(3040u, global1.a)), !vec2<bool>(true, all(vec2<bool>(global2.x, global1.c.x)))), 1073f);
    return ~(((~arg_0.zz << (max(vec2<u32>(var_1.b.x, 4294967295u), vec2<u32>(global0.b.b.x, 24490u)) % vec2<u32>(32u))) ^ vec2<i32>(_wgslsmith_add_i32(var_3.b.e, 0i), var_3.b.d.x)) & vec2<i32>(min(arg_0.x << (u_input.b % 32u), -var_0.x), -_wgslsmith_div_i32(3831i, var_0.x)));
}

fn func_1() -> vec3<bool> {
    let var_0 = func_2(min(_wgslsmith_clamp_vec4_i32(reverseBits(~vec4<i32>(69511i, -1i, 2147483647i, 0i)), min(vec4<i32>(-73280i, global0.b.c, global0.b.e, 0i) << (vec4<u32>(12724u, 65393u, 0u, 35902u) % vec4<u32>(32u)), vec4<i32>(2147483647i, global0.b.c, global0.b.c, -22941i)), firstTrailingBit(vec4<i32>(global0.b.c, global0.b.e, -2147483647i, global0.b.c) << (vec4<u32>(global0.c.b, global1.a, 4294967295u, 9010u) % vec4<u32>(32u)))), firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(-36783i, global0.b.c, global0.b.c, -1i), vec4<i32>(2147483647i, global0.b.c, global0.b.c, global0.b.d.x)) | select(vec4<i32>(-21039i, global0.b.d.x, global0.b.e, -1i), vec4<i32>(2147483647i, global0.b.e, global0.b.d.x, -5674i), global0.c.c.x))), u_input.c.x);
    let var_1 = -min(~abs(vec4<i32>(var_0.x, 2147483647i, -1i, var_0.x)), select(vec4<i32>(global0.b.c, global0.b.e, -80879i, -2147483647i) ^ vec4<i32>(global0.b.d.x, var_0.x, -41050i, global0.b.c), vec4<i32>(-global0.b.c, -47i, global0.b.c, i32(-1i) * -7665i), all(global1.c)));
    let var_2 = Struct_4(global0.d, Struct_3(vec2<u32>(_wgslsmith_mod_u32(global0.a.x, 0u), 4294967295u), global0.b, global0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.d))) - 1f)), global0.c, select(vec3<u32>(u_input.b, ~global0.a.x, 36800u), ~u_input.c, false), ~1u);
    global0 = var_2.b;
    global1 = var_2.b.c;
    return !(!vec3<bool>(true, all(global2.yx), !(!global0.c.c.x)));
}

fn func_4(arg_0: vec3<bool>) -> u32 {
    var var_0 = ~global0.b.b.x;
    let var_1 = _wgslsmith_f_op_f32(-global0.b.a);
    global2 = func_1();
    let var_2 = i32(-1i) * -10388i;
    var var_3 = vec2<bool>(true, any(select(global1.c, !arg_0.zy, global0.c.c)));
    return _wgslsmith_mod_u32(global1.a, _wgslsmith_mult_u32(~global0.b.b.x & 37441u, min(_wgslsmith_add_u32(u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.b.b.x, global1.a, global1.a, global1.a), vec4<u32>(15995u, 0u, global0.b.b.x, global1.b))), global0.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.c;
    var var_1 = 16982u;
    var var_2 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(718f))), Struct_3(_wgslsmith_sub_vec2_u32(vec2<u32>(global0.a.x ^ var_0.a, 54673u), vec2<u32>(u_input.b, u_input.c.x) & vec2<u32>(44904u, global0.c.a)), Struct_1(global0.b.a, u_input.c, firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.b.e, -2147483647i, 1i), vec3<i32>(-1i, 5835i, global0.b.c))), global0.b.d ^ ~global0.b.d, -2147483647i), Struct_2(_wgslsmith_add_u32(67599u, global0.a.x), min(_wgslsmith_add_u32(0u, var_0.a), 36780u << (u_input.c.x % 32u)), global0.c.c), _wgslsmith_f_op_f32(-global0.b.a)), global0.c, u_input.c & vec3<u32>(0u, func_4(func_1()), 4294967295u), _wgslsmith_dot_vec4_u32(select(~vec4<u32>(global0.c.b, global1.b, 61458u, 4294967295u), max(vec4<u32>(49610u, global0.a.x, 1u, global1.a), vec4<u32>(global0.b.b.x, 4294967295u, u_input.c.x, 29847u)) ^ max(vec4<u32>(4294967295u, global0.a.x, 0u, var_0.b), vec4<u32>(1u, 17733u, var_0.b, var_0.b)), var_0.c.x), ~(vec4<u32>(u_input.c.x, global1.b, 4294967295u, 0u) >> (vec4<u32>(global1.a, 4294967295u, u_input.c.x, 41234u) % vec4<u32>(32u))) >> (_wgslsmith_mult_vec4_u32(select(vec4<u32>(u_input.a, u_input.a, var_0.a, 0u), vec4<u32>(1u, 23967u, global0.c.a, 0u), vec4<bool>(global0.c.c.x, var_0.c.x, true, false)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, var_0.a, u_input.b, 20199u), vec4<u32>(global1.a, global0.a.x, global1.a, global1.b))) % vec4<u32>(32u))));
    var var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.d)));
    var var_4 = Struct_4(global0.b.a, Struct_3(_wgslsmith_mod_vec2_u32(~(~vec2<u32>(1u, global1.b)), ~(~var_2.b.a)), Struct_1(global0.b.a, vec3<u32>(global0.b.b.x, abs(72407u), ~u_input.a), _wgslsmith_dot_vec4_i32(-vec4<i32>(var_2.b.b.c, -22340i, global0.b.e, -39783i), reverseBits(vec4<i32>(global0.b.c, var_2.b.b.d.x, global0.b.e, 1i))), vec2<i32>(global0.b.e, global0.b.c), _wgslsmith_mult_i32(11889i >> (var_2.e % 32u), var_2.b.b.d.x)), Struct_2(var_2.d.x, ~var_2.b.c.b, vec2<bool>(false, any(vec3<bool>(var_2.b.c.c.x, false, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-454f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.b.a)) + var_2.a))), Struct_2(func_4(select(!vec3<bool>(var_2.b.c.c.x, true, false), select(vec3<bool>(false, global0.c.c.x, true), vec3<bool>(var_0.c.x, true, true), var_0.c.x), vec3<bool>(global1.c.x, false, global1.c.x))), ~var_0.b ^ (~21114u << (~var_0.a % 32u)), !select(vec2<bool>(var_2.b.c.c.x, true), vec2<bool>(global2.x, var_0.c.x), !var_2.b.c.c)), abs(reverseBits(firstLeadingBit(u_input.c & u_input.c))), ~func_4(select(vec3<bool>(global2.x, false, var_2.b.c.c.x), vec3<bool>(false, true, true), var_2.b.c.c.x)) << (min(global0.b.b.x, 24319u) % 32u));
    var_3 = var_4.b.b.a;
    var_2 = Struct_4(var_4.b.b.a, Struct_3(vec2<u32>(13602u, 95404u), var_4.b.b, Struct_2(~_wgslsmith_div_u32(var_0.a, 0u), var_0.b, !(!vec2<bool>(var_0.c.x, var_4.b.c.c.x))), 1000f), var_2.c, (vec3<u32>(var_2.d.x, ~4294967295u, global1.b) << (vec3<u32>(min(u_input.c.x, 9903u), 1u, 14127u) % vec3<u32>(32u))) ^ _wgslsmith_add_vec3_u32(global0.b.b, min(var_2.d, vec3<u32>(var_4.e, u_input.c.x, 13816u))), ~global1.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(abs(~(8664u ^ var_2.e)), 1u), select(firstLeadingBit(min(vec4<i32>(-30408i, global0.b.e, -11296i, var_2.b.b.d.x), vec4<i32>(0i, 1i, -2147483647i, var_2.b.b.d.x) | vec4<i32>(global0.b.e, global0.b.d.x, global0.b.c, 0i))), max(-vec4<i32>(23125i, var_4.b.b.e, var_4.b.b.e, 46839i), _wgslsmith_add_vec4_i32(vec4<i32>(global0.b.c, 27323i, -4146i, 16636i), vec4<i32>(20744i, 0i, var_2.b.b.c, var_2.b.b.e))) << (_wgslsmith_mod_vec4_u32(~vec4<u32>(1u, 43185u, global0.b.b.x, 17478u), vec4<u32>(global1.b, var_2.c.b, global0.c.a, 26090u)) % vec4<u32>(32u)), true), 356f, abs(_wgslsmith_dot_vec4_i32(firstLeadingBit(~vec4<i32>(1i, var_2.b.b.c, 2147483647i, var_2.b.b.d.x)), ~vec4<i32>(global0.b.c, global0.b.c, -22635i, global0.b.d.x) & _wgslsmith_add_vec4_i32(vec4<i32>(global0.b.d.x, -9801i, 0i, global0.b.e), vec4<i32>(-38228i, -62098i, 43023i, 1i)))));
}

