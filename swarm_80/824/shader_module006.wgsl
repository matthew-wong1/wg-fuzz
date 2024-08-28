struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec4<u32>,
    d: f32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec2<i32>,
    e: vec2<i32>,
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

var<private> global0: array<u32, 19>;

var<private> global1: array<vec4<u32>, 4> = array<vec4<u32>, 4>(vec4<u32>(4294967295u, 30155u, 1u, 1u), vec4<u32>(70793u, 0u, 43050u, 22226u), vec4<u32>(1u, 29501u, 87629u, 1u), vec4<u32>(0u, 0u, 1u, 20735u));

var<private> global2: array<Struct_1, 29>;

var<private> global3: i32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    var var_0 = Struct_1(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(57234u, 4208u), 4u)], arg_0.b, vec4<u32>(1u, ~25473u, 32470u, u_input.a.x), arg_1.d, vec3<i32>(-1i) * -select(min(arg_1.e, vec3<i32>(1439i, -19753i, -40370i)), vec3<i32>(u_input.d.x, u_input.e.x, arg_1.e.x), vec3<bool>(true, true, true)));
    global3 = 0i;
    let var_1 = arg_1;
    let var_2 = !(max(_wgslsmith_mod_u32(var_0.a.x, ~var_0.c.x), _wgslsmith_mult_u32(var_0.a.x, _wgslsmith_clamp_u32(arg_0.c.x, 1u, arg_0.c.x))) > 13347u);
    global2 = array<Struct_1, 29>();
    return var_0.a.x | ~arg_1.a.x;
}

fn func_4(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_1) -> f32 {
    var var_0 = Struct_1(vec4<u32>(4294967295u, _wgslsmith_clamp_u32(arg_2.c.x, global0[_wgslsmith_index_u32(u_input.a.x | ~u_input.a.x, 19u)], ~1u), _wgslsmith_add_u32(reverseBits(~arg_1.x), ~17974u), ~firstLeadingBit(select(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(97548u, 19u)], 19u)], 4294967295u, true))), arg_2.b, arg_2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0, 112f, false))), 409f))), select((select(arg_2.e, vec3<i32>(-1i, arg_2.e.x, arg_2.e.x), true) & ~arg_2.e) << (vec3<u32>(13057u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], 71421u), 19u)], 19u)], ~4294967295u) % vec3<u32>(32u)), arg_2.e, !(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.b)))), _wgslsmith_f_op_f32(floor(-1101f)));
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32((_wgslsmith_div_u32(61749u, global0[_wgslsmith_index_u32(1u, 19u)]) << (arg_1.x % 32u)) & ~var_0.a.x, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1.x, 23400u, global0[_wgslsmith_index_u32(var_0.a.x, 19u)], 24977u), arg_2.a), select(~0u, ~14467u, true))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(69329u, 19u)], var_0.a.x, abs(abs(0u))), vec3<u32>(global0[_wgslsmith_index_u32(arg_1.x >> (~4294967295u % 32u), 19u)], var_0.c.x, arg_2.a.x)), 19u)]), 29u)];
    var var_3 = global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(3856u, max(~(~var_2.a.x), u_input.a.x)), 29u)];
    var var_4 = -848f;
    return var_1;
}

fn func_2(arg_0: i32, arg_1: vec2<i32>) -> Struct_1 {
    var var_0 = u_input.a.wwy;
    var var_1 = global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 19u)], 29u)];
    var var_2 = global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~(~1u), 19u)], 29u)];
    var var_3 = _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(trunc(var_2.b)), vec3<u32>(var_0.x, 1u, var_0.x), Struct_1(_wgslsmith_mult_vec4_u32(abs(~vec4<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 19u)], var_0.x, 1u, 10122u)), global1[_wgslsmith_index_u32(func_3(global2[_wgslsmith_index_u32(abs(var_1.c.x), 29u)], Struct_1(u_input.a, 1000f, u_input.b, var_1.d, var_1.e)), 4u)]), 526f, _wgslsmith_sub_vec4_u32(var_2.c, vec4<u32>(1u, u_input.b.x, _wgslsmith_mult_u32(4294967295u, var_0.x), var_2.c.x)), var_2.b, vec3<i32>(~(1i | arg_0), -1i, abs(1i)))));
    var var_4 = Struct_1(~vec4<u32>(global0[_wgslsmith_index_u32(~u_input.b.x, 19u)], 4294967295u, 0u, var_2.a.x) ^ vec4<u32>(~(0u >> (1u % 32u)), 79050u, var_0.x, ~(~global0[_wgslsmith_index_u32(u_input.b.x, 19u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(328f))), firstLeadingBit(~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a.yzx, ~var_1.c.yzx), 4u)]), var_1.b, _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(-select(var_1.e, var_1.e, vec3<bool>(false, true, true)), _wgslsmith_div_vec3_i32(vec3<i32>(0i, arg_1.x, 15433i), vec3<i32>(-1i, 2147483647i, var_2.e.x))), vec3<i32>(abs(0i), _wgslsmith_mod_i32(1i, u_input.e.x), _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.e.x, arg_1.x, arg_1.x, 24193i), vec4<i32>(-2147483647i, var_2.e.x, 0i, u_input.c)) >> (var_2.c.x % 32u))));
    return global2[_wgslsmith_index_u32(1u, 29u)];
}

fn func_1(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = vec2<u32>(4294967295u, 4294967295u >> (global0[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_0.a.x, u_input.b.x), 19u)] % 32u));
    var var_1 = u_input.c;
    var var_2 = func_2(arg_0.e.x, u_input.d);
    var var_3 = var_2.d;
    return countOneBits(vec4<u32>(~_wgslsmith_clamp_u32(~962u, arg_0.c.x, ~arg_0.a.x), _wgslsmith_sub_u32(arg_0.a.x, ~func_3(arg_0, arg_0)), global0[_wgslsmith_index_u32(abs(20053u | global0[_wgslsmith_index_u32(var_0.x, 19u)]), 19u)] & abs(55672u), abs(~arg_0.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.e;
    var var_1 = vec2<bool>(true, (all(vec4<bool>(true, true, true, true)) || !(var_0.x <= 0i)) | true);
    global0 = array<u32, 19>();
    global0 = array<u32, 19>();
    let var_2 = global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~(~u_input.b.x), 19u)], 19u)], 29u)];
    var var_3 = Struct_1(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(min(4294967295u, 24828u), ~(~(var_2.c.x << (0u % 32u)))), 4u)], _wgslsmith_f_op_f32(ceil(var_2.b)), ~_wgslsmith_mult_vec4_u32(var_2.c, func_1(Struct_1(var_2.a, var_2.b, var_2.c, var_2.d, var_2.e))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.d * _wgslsmith_f_op_f32(max(-483f, -151f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.b, _wgslsmith_f_op_f32(-614f * var_2.b))))), ~vec3<i32>(countOneBits(-1i), func_2(-var_2.e.x, abs(vec2<i32>(0i, -1i))).e.x, abs(1i)));
    var var_4 = !(!vec2<bool>(false, (true && var_1.x) | select(var_1.x, var_1.x, var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(-_wgslsmith_clamp_i32(-13686i, ~2147483647i, i32(-1i) * -42968i), var_2.e.x));
}

