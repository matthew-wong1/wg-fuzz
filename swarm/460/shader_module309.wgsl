struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: vec3<i32>,
    c: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: Struct_4;

var<private> global2: bool = true;

var<private> global3: vec4<i32>;

var<private> global4: array<Struct_4, 31>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: Struct_4) -> bool {
    let var_0 = Struct_4(Struct_2(global1.a.a, select(!vec4<bool>(global0.x, true, global0.x, true), arg_2.a.b, arg_2.a.b.x)), firstLeadingBit(~0i));
    let var_1 = var_0.a;
    let var_2 = -8731i;
    let var_3 = -_wgslsmith_mod_vec2_i32(vec2<i32>(countOneBits(min(var_0.b, -1i)), 0i), -firstLeadingBit(~global3.xw));
    var var_4 = _wgslsmith_f_op_f32(-121f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1405f, 1f, var_1.b.x)) - _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-2280f, _wgslsmith_f_op_f32(f32(-1f) * -1558f))))));
    return !(global1.a.b.x & (min(countOneBits(arg_1), -23460i ^ var_3.x) >= _wgslsmith_sub_i32(arg_2.a.a.b, 1i)));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_3) -> Struct_4 {
    global1 = Struct_4(Struct_2(global1.a.a, select(global1.a.b, global1.a.b, vec4<bool>(true, global1.a.b.x, false || arg_1.c.x, true))), reverseBits(max(-1i, 17611i)));
    let var_0 = vec4<u32>(_wgslsmith_sub_u32(u_input.a | ~abs(global1.a.a.d.x), _wgslsmith_mod_u32(~u_input.c.x | 0u, ~1u)), 5030u, ~countOneBits(_wgslsmith_sub_u32(1u, ~u_input.c.x)), ~1u);
    let var_1 = vec4<u32>(firstTrailingBit(_wgslsmith_add_u32(_wgslsmith_mult_u32(0u, ~4294967295u), var_0.x)), u_input.c.x, max(~_wgslsmith_mult_u32(~4294967295u, reverseBits(47747u)), _wgslsmith_mult_u32(~global1.a.a.c.x, u_input.a)), global1.a.a.c.x | (global1.a.a.d.x >> (_wgslsmith_mult_u32(global1.a.a.c.x ^ 1u, select(0u, global1.a.a.c.x, false)) % 32u)));
    return Struct_4(Struct_2(global1.a.a, vec4<bool>(func_3(28305u, countOneBits(-1i), global4[_wgslsmith_index_u32(var_0.x, 31u)]), any(arg_1.c.yz), global0.x == arg_1.c.x, any(!vec4<bool>(false, false, arg_1.c.x, false)))), 1i ^ global1.b);
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> u32 {
    var var_0 = func_2(-(~((vec4<i32>(0i, arg_1, -2147483647i, global1.a.a.a) << (vec4<u32>(u_input.c.x, u_input.c.x, 3117u, global1.a.a.d.x) % vec4<u32>(32u))) ^ ~vec4<i32>(global1.b, global3.x, -61391i, 2147483647i))), Struct_3(true, vec3<i32>(-19546i, arg_1, -(arg_0.b ^ global1.b)), vec3<bool>(select(global0.x, !global1.a.b.x, !global1.a.b.x), 1i != ~global1.b, all(select(vec2<bool>(global1.a.b.x, global0.x), global1.a.b.wz, true)))));
    let var_1 = any(global1.a.b.ywy);
    var_0 = Struct_4(Struct_2(func_2(~(~vec4<i32>(arg_1, -76893i, -2147483647i, u_input.b.x)), Struct_3(var_0.a.b.x || false, global3.yyz, !global1.a.b.yxw)).a.a, global1.a.b), ~((i32(-1i) * -1i) | ~(~global1.a.a.a)));
    var var_2 = vec2<bool>(var_1, false);
    var var_3 = global4[_wgslsmith_index_u32(~7558u, 31u)];
    return u_input.c.x;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<u32>) -> vec4<i32> {
    var var_0 = ~_wgslsmith_clamp_i32(~(i32(-1i) * -54137i), 1i, global3.x << (87238u % 32u));
    let var_1 = all(func_2(-(vec4<i32>(5350i, global3.x, -10714i, 2147483647i) | vec4<i32>(0i, -2147483647i, 2147483647i, 15933i)), Struct_3(false, ~(global3.ywy & vec3<i32>(0i, global1.a.a.a, 22248i)), global1.a.b.zyx)).a.b);
    global2 = !global1.a.b.x;
    let var_2 = abs(u_input.b.x);
    var var_3 = global1.a.a;
    return firstTrailingBit(vec4<i32>(u_input.b.x, global3.x, global1.b >> (_wgslsmith_mult_u32(func_1(Struct_1(global3.x, 6359i, arg_1.yz, global1.a.a.d), 3166i), var_3.c.x) % 32u), 48773i | (global3.x << (abs(u_input.a) % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = countOneBits(-vec4<i32>(u_input.b.x, abs(global3.x), 1i, 40763i));
    global3 = _wgslsmith_mult_vec4_i32(func_4(vec4<bool>(true != any(vec2<bool>(global1.a.b.x, false)), any(vec3<bool>(global1.a.b.x, global1.a.b.x, false)), all(vec3<bool>(global1.a.b.x, true, false)), global0.x), vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(global1.a.a.c.x, 4294967295u), _wgslsmith_sub_u32(global1.a.a.d.x, 0u)), u_input.c.x, max(func_1(Struct_1(global1.b, 475i, vec2<u32>(u_input.c.x, global1.a.a.d.x), vec3<u32>(16193u, u_input.a, u_input.a)), 2147483647i), 55276u), ~global1.a.a.c.x)), ((~vec4<i32>(u_input.b.x, global3.x, -1i, global1.a.a.b) | -vec4<i32>(-15030i, -2147483647i, -6458i, u_input.b.x)) & ~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, 29107i, -1i, -1i), vec4<i32>(-14651i, u_input.b.x, global3.x, global3.x))) >> (vec4<u32>(52825u, 0u, ~26103u | ~u_input.a, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, global1.a.a.d.x, 4294967295u, global1.a.a.c.x), vec4<u32>(4294967295u, global1.a.a.d.x, u_input.c.x, 28056u)), max(vec4<u32>(global1.a.a.d.x, 49230u, 4294967295u, u_input.a), vec4<u32>(global1.a.a.d.x, global1.a.a.d.x, 11009u, 1u)))) % vec4<u32>(32u)));
    let var_0 = countOneBits(vec4<u32>(firstLeadingBit(abs(~1u)), _wgslsmith_dot_vec4_u32(vec4<u32>(24347u, _wgslsmith_add_u32(0u, u_input.c.x), global1.a.a.d.x, ~23191u), vec4<u32>(global1.a.a.d.x, firstTrailingBit(global1.a.a.d.x), _wgslsmith_dot_vec2_u32(vec2<u32>(global1.a.a.c.x, 4294967295u), vec2<u32>(global1.a.a.d.x, global1.a.a.c.x)), u_input.a)), ~(~100012u), ~(~countOneBits(u_input.c.x))));
    var var_1 = u_input.b.x | func_2(_wgslsmith_clamp_vec4_i32(vec4<i32>(firstLeadingBit(0i), _wgslsmith_mod_i32(u_input.b.x, u_input.b.x), 1i, -global3.x), vec4<i32>(_wgslsmith_clamp_i32(23048i, 2147483647i, 1i), 2039i, 63775i, u_input.b.x), vec4<i32>(global1.a.a.b, u_input.b.x, u_input.b.x, -u_input.b.x)), Struct_3(true, func_4(vec4<bool>(false, global0.x, false, false), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, global1.a.a.c.x, var_0.x, global1.a.a.c.x), vec4<u32>(var_0.x, 4294967295u, 1u, u_input.a))).wxx, !global1.a.b.zyx)).a.a.a;
    global2 = true || (_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -589f))))) != 1f);
    global1 = Struct_4(Struct_2(global1.a.a, select(!select(global1.a.b, vec4<bool>(global0.x, false, true, false), global1.a.b.x), select(!global1.a.b, vec4<bool>(true, true, true, true), true), global1.a.a.c.x == 34684u)), ~39532i);
    var var_2 = -228f;
    var var_3 = global4[_wgslsmith_index_u32(50499u, 31u)];
    var var_4 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.b.x, 2147483647i, var_3.a.a.b, global3.x) ^ (vec4<i32>(var_3.b, var_3.a.a.b, -26281i, -14322i) & vec4<i32>(var_3.a.a.a, 0i, 38127i, -48283i)), ~_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, -15032i, u_input.b.x, global3.x), vec4<i32>(global1.a.a.a, u_input.b.x, u_input.b.x, -2147483647i))), vec4<i32>(-_wgslsmith_sub_i32(u_input.b.x, -2147483647i), -1i, -1i, -global1.b)), abs(~global1.a.a.d), ~0u);
}

