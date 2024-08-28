struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<vec4<f32>, 32>;

var<private> global2: Struct_3;

var<private> global3: array<Struct_1, 31>;

var<private> global4: vec4<f32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: u32) -> vec4<bool> {
    var var_0 = 13858u;
    var var_1 = global2.a.x;
    var var_2 = global2.b.a.x | global2.b.a.x;
    var var_3 = i32(-1i) * -global2.a.x;
    var_0 = ~max(34448u, _wgslsmith_sub_u32(abs(_wgslsmith_sub_u32(5643u, 1u)), max(_wgslsmith_dot_vec2_u32(global2.b.b.c, vec2<u32>(arg_1, u_input.a.x)), arg_2)));
    return global2.b.a;
}

fn func_2() -> Struct_1 {
    var var_0 = ~(~(_wgslsmith_div_vec2_u32(u_input.a, global2.b.b.c) >> (vec2<u32>(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), 4294967295u >> (global2.b.b.b % 32u)) % vec2<u32>(32u))));
    var var_1 = global4.x;
    global0 = global2.b.a;
    global1 = array<vec4<f32>, 32>();
    global2 = Struct_3(global2.a, Struct_2(select(vec4<bool>(-1i != global2.b.b.a, all(vec4<bool>(false, false, false, false)), global0.x, global0.x), func_3(_wgslsmith_add_u32(global2.b.b.b, 14454u), ~var_0.x, 1u), true), Struct_1(1i, global2.b.b.c.x, max(vec2<u32>(u_input.a.x, var_0.x), vec2<u32>(var_0.x, var_0.x)), 21008u)));
    return global3[_wgslsmith_index_u32(global2.b.b.d, 31u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: i32) -> Struct_3 {
    global3 = array<Struct_1, 31>();
    var var_0 = _wgslsmith_mult_i32(abs(arg_0.a), ~15345i);
    var var_1 = 5040u;
    let var_2 = vec4<i32>(-17457i, -18426i, _wgslsmith_div_i32(63825i, -525i), _wgslsmith_mod_i32(i32(-1i) * -2147483647i, 35338i));
    var var_3 = abs(vec3<u32>(countOneBits(_wgslsmith_mult_u32(u_input.a.x, 35445u)), global2.b.b.c.x, 8820u ^ func_2().d));
    return arg_1;
}

fn func_1(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    var var_0 = global2.b.b.a;
    let var_1 = func_4(func_2(), Struct_3(select(global2.a, vec2<i32>(-35142i, arg_2.a), func_3(arg_2.b << (35405u % 32u), _wgslsmith_div_u32(4294967295u, u_input.a.x), 29507u).zy), Struct_2(func_3(func_2().d, ~4294967295u, func_2().b), func_2())), arg_2.a);
    global4 = _wgslsmith_f_op_vec4_f32(floor(global1[_wgslsmith_index_u32(u_input.a.x, 32u)]));
    let var_2 = vec4<bool>(any(func_3(16680u, _wgslsmith_mod_u32(firstLeadingBit(arg_0.x), ~u_input.a.x), _wgslsmith_add_u32(0u >> (arg_2.c.x % 32u), _wgslsmith_sub_u32(29714u, arg_0.x))).yx), true, any(vec3<bool>(!arg_1, _wgslsmith_f_op_f32(round(321f)) != global4.x, func_4(arg_2, var_1, 15397i).b.a.x & !global0.x)), arg_1);
    let var_3 = global4.yww;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.b.a.wy;
    var var_1 = -1978f;
    var var_2 = func_1(vec2<u32>(~u_input.a.x, min(1u << (_wgslsmith_mod_u32(global2.b.b.c.x, 55421u) % 32u), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, 1152u, global2.b.b.c.x), ~vec3<u32>(u_input.a.x, global2.b.b.d, 44175u)))), global2.b.a.x, Struct_1(-global2.b.b.a, global2.b.b.d, _wgslsmith_mult_vec2_u32(u_input.a, vec2<u32>(global2.b.b.b, global2.b.b.c.x)) & ~_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, global2.b.b.c.x), u_input.a, u_input.a), 14188u));
    var var_3 = func_4(func_1(_wgslsmith_add_vec2_u32(var_2.c, firstLeadingBit(var_2.c | u_input.a)), false, Struct_1(var_2.a, (u_input.a.x << (57313u % 32u)) | _wgslsmith_add_u32(global2.b.b.d, 56103u), vec2<u32>(_wgslsmith_sub_u32(global2.b.b.b, 56547u), u_input.a.x), _wgslsmith_clamp_u32(max(u_input.a.x, var_2.d), _wgslsmith_div_u32(0u, 16561u), u_input.a.x))), Struct_3(-firstLeadingBit(global2.a), global2.b), _wgslsmith_mult_i32(~_wgslsmith_div_i32(31976i, _wgslsmith_dot_vec4_i32(vec4<i32>(96i, -1i, 1i, -2147483647i), vec4<i32>(12179i, 1i, -1i, var_2.a))), -2147483647i));
    var var_4 = func_4(global2.b.b, func_4(func_4(global3[_wgslsmith_index_u32(0u, 31u)], Struct_3(global2.a, Struct_2(global2.b.a, var_3.b.b)), _wgslsmith_add_i32(_wgslsmith_sub_i32(global2.a.x, -41304i), global2.a.x)).b.b, func_4(global3[_wgslsmith_index_u32(1u, 31u)], Struct_3(-var_3.a, Struct_2(var_3.b.a, global3[_wgslsmith_index_u32(global2.b.b.c.x, 31u)])), func_1(max(vec2<u32>(4294967295u, var_3.b.b.b), u_input.a), true, func_2()).a), abs(firstTrailingBit(-global2.a.x))), 1i).b;
    let var_5 = global2.b.a.yz;
    var var_6 = ~0u;
    let x = u_input.a;
    s_output = StorageBuffer(func_4(func_1(_wgslsmith_sub_vec2_u32(var_2.c, var_2.c) ^ ~vec2<u32>(global2.b.b.b, 36893u), var_5.x, Struct_1(global2.a.x, global2.b.b.d >> (9669u % 32u), ~u_input.a, var_2.b)), func_4(func_1(vec2<u32>(u_input.a.x, 19989u), global2.b.a.x || true, func_1(vec2<u32>(u_input.a.x, 787u), global0.x, Struct_1(14616i, 0u, u_input.a, var_4.b.d))), func_4(var_3.b.b, func_4(Struct_1(15878i, 1u, vec2<u32>(972u, var_3.b.b.d), 22906u), Struct_3(vec2<i32>(-50928i, var_3.a.x), global2.b), var_2.a), _wgslsmith_add_i32(21630i, -17830i)), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(9362i, global2.b.b.a, -1i)), firstTrailingBit(vec3<i32>(var_3.a.x, 8046i, 12083i)))), var_3.b.b.a).b.b.a, _wgslsmith_f_op_f32(floor(2520f)), abs(reverseBits(min(vec4<u32>(u_input.a.x, global2.b.b.b, global2.b.b.c.x, 18788u), vec4<u32>(20887u, var_2.d, u_input.a.x, u_input.a.x))) << (_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 23221u, global2.b.b.d, var_3.b.b.d) | vec4<u32>(var_4.b.c.x, 4294967295u, u_input.a.x, u_input.a.x), min(vec4<u32>(var_4.b.c.x, u_input.a.x, 0u, 95765u), vec4<u32>(1u, 4294967295u, 0u, 41134u))) % vec4<u32>(32u))));
}

