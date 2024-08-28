struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec4<bool>,
    d: bool,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<i32>(0i, 32166i, -14703i, -26347i), -146f, vec4<bool>(true, false, false, true), false, vec2<u32>(4294967295u, 25710u));

var<private> global1: array<Struct_1, 10>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: u32) -> vec4<bool> {
    let var_0 = Struct_1(global0.a, global0.b, select(vec4<bool>(~global0.a.x != _wgslsmith_dot_vec4_i32(global0.a, vec4<i32>(17978i, u_input.d, 25694i, 13938i)), true, !global0.d, any(global0.c.xyx)), global0.c, global0.c.x), global0.c.x, select(~vec2<u32>(1u, 1u), _wgslsmith_clamp_vec2_u32(abs(vec2<u32>(1u, 4294967295u)), abs(vec2<u32>(arg_0, arg_0)), global0.e >> (global0.e % vec2<u32>(32u))) << ((~u_input.c.yz | vec2<u32>(global0.e.x, arg_0)) % vec2<u32>(32u)), !vec2<bool>(!global0.d, true)));
    global1 = array<Struct_1, 10>();
    var var_1 = firstLeadingBit((~(~vec4<u32>(u_input.c.x, 3129u, arg_0, global0.e.x)) << (vec4<u32>(0u, _wgslsmith_dot_vec2_u32(var_0.e, u_input.c.wy), global0.e.x, _wgslsmith_dot_vec2_u32(var_0.e, global0.e)) % vec4<u32>(32u))) ^ u_input.c);
    let var_2 = Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, -2147483647i, ~(-16003i), 32457i << (u_input.c.x % 32u)), _wgslsmith_div_vec4_i32(global0.a | vec4<i32>(var_0.a.x, var_0.a.x, 1i, 2147483647i), select(var_0.a, vec4<i32>(46105i, 1i, u_input.b, var_0.a.x), true)), var_0.a) ^ ~_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(var_0.a, global0.a), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, u_input.a, 12647i, global0.a.x), var_0.a)), _wgslsmith_f_op_f32(-2002f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1211f)) * var_0.b)), select(!vec4<bool>(true, global0.d != global0.c.x, true, all(vec2<bool>(var_0.d, var_0.c.x))), global0.c, !any(vec4<bool>(true, var_0.d, true, global0.d))), true && global0.d, _wgslsmith_div_vec2_u32(vec2<u32>(~_wgslsmith_dot_vec3_u32(var_1.wyz, vec3<u32>(arg_0, u_input.c.x, 24569u)), 45291u), max(vec2<u32>(var_1.x, _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(5052u, 1u, var_0.e.x, u_input.c.x))), vec2<u32>(100065u, 48676u))));
    global1 = array<Struct_1, 10>();
    return select(!select(select(var_0.c, global0.c, var_0.c), !select(var_2.c, vec4<bool>(var_2.d, global0.d, false, var_2.c.x), var_0.c.x), var_0.c), vec4<bool>(var_0.d, true || select(var_2.c.x, var_1.x <= 4294967295u, true), true, 1i > var_0.a.x), !var_2.c);
}

fn func_2(arg_0: vec4<i32>) -> StorageBuffer {
    global0 = Struct_1(vec4<i32>(abs(~(-63646i)), -29583i, 2147483647i, 0i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -656f)), !func_3(~(~11442u)), global0.d, reverseBits(~(~select(u_input.c.wz, global0.e, true))));
    global0 = global1[_wgslsmith_index_u32(15420u, 10u)];
    return StorageBuffer(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, _wgslsmith_mult_i32(-80968i ^ arg_0.x, select(1i, 2147483647i, false)), 0i, ~arg_0.x), vec4<i32>(u_input.d, 3295i, select(global0.a.x, arg_0.x, global0.d), -global0.a.x) & (-arg_0 << (vec4<u32>(global0.e.x, 1u, global0.e.x, global0.e.x) % vec4<u32>(32u)))));
}

fn func_1(arg_0: Struct_1) -> StorageBuffer {
    var var_0 = !arg_0.d;
    global1 = array<Struct_1, 10>();
    var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(-1i, 0i & arg_0.a.x), ~reverseBits(2147483647i), arg_0.a.x, max(7816i, u_input.b) | _wgslsmith_sub_i32(u_input.d, global0.a.x)), -global0.a) != max(~_wgslsmith_dot_vec4_i32(countOneBits(arg_0.a), vec4<i32>(arg_0.a.x, global0.a.x, u_input.b, -1618i)), _wgslsmith_dot_vec4_i32(~arg_0.a, vec4<i32>(-1i) * -vec4<i32>(21930i, 2147483647i, u_input.a, 1i)));
    let var_1 = arg_0;
    return func_2(arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.c.x;
    let x = u_input.a;
    s_output = func_1(global1[_wgslsmith_index_u32(~(_wgslsmith_sub_u32(~4294967295u, ~var_0) | 12018u), 10u)]);
}

