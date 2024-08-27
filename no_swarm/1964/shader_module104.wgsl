struct Struct_1 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: vec4<i32>,
    d: i32,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 6> = array<f32, 6>(1532f, -261f, 2135f, -1608f, 1217f, 355f);

var<private> global1: vec3<u32>;

var<private> global2: array<vec2<i32>, 32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2() -> vec2<bool> {
    return !vec2<bool>(any(vec4<bool>(true, true, true, true)), !(any(vec2<bool>(false, false)) && (u_input.a > u_input.c.x)));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec3<bool>, arg_3: Struct_2) -> i32 {
    global2 = array<vec2<i32>, 32>();
    var var_0 = arg_0;
    var var_1 = Struct_3(vec3<bool>(true & (var_0.b >= firstLeadingBit(0i)), all(vec2<bool>(!arg_1, -1481f <= global0[_wgslsmith_index_u32(4294967295u, 6u)])), arg_2.x), Struct_2(arg_3.a), vec4<i32>(-_wgslsmith_mult_i32(-19085i, ~arg_0.b), var_0.b, 0i, var_0.b), arg_3.a.x, Struct_1(~firstTrailingBit(~var_0.a), var_0.b));
    let var_2 = vec3<i32>(_wgslsmith_mod_i32(abs(u_input.a), -(~(84887i >> (arg_0.a.x % 32u)))), _wgslsmith_clamp_i32(0i, u_input.c.x, ~arg_3.a.x), select(-var_1.d ^ _wgslsmith_dot_vec4_i32(-var_1.c, ~vec4<i32>(arg_0.b, arg_0.b, 44690i, arg_0.b)), arg_3.a.x, (u_input.d << (arg_0.a.x % 32u)) == ~u_input.b));
    let var_3 = ~(arg_0.b >> (_wgslsmith_dot_vec2_u32(abs(~vec2<u32>(global1.x, global1.x)), global1.yz) % 32u));
    return ~firstLeadingBit(abs(11125i));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<u32>) -> vec3<u32> {
    let var_0 = (true & !arg_0.a.x) & false;
    global0 = array<f32, 6>();
    let var_1 = vec4<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(4294967295u, 6u)], global0[_wgslsmith_index_u32(67902u, 6u)])) * _wgslsmith_f_op_f32(f32(-1f) * -418f))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(global1.x, 6u)]))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(77042u, 6u)] * global0[_wgslsmith_index_u32(4294967295u, 6u)]), global0[_wgslsmith_index_u32(global1.x, 6u)])))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(441u, 6u)] + 982f))));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -332f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~arg_1.x, max(4294967295u, arg_0.e.a.x)), 6u)]))), global0[_wgslsmith_index_u32(~(~u_input.d), 6u)], global0[_wgslsmith_index_u32(arg_0.e.a.x, 6u)]);
    global1 = u_input.e.yzx;
    return vec3<u32>(_wgslsmith_dot_vec3_u32(arg_1, ~vec3<u32>(select(arg_1.x, arg_1.x, false), u_input.d, 4294967295u >> (1u % 32u))), _wgslsmith_mult_u32(arg_1.x, ~abs(~u_input.b)), _wgslsmith_div_u32(arg_0.e.a.x, arg_0.e.a.x));
}

fn func_1() -> Struct_4 {
    global2 = array<vec2<i32>, 32>();
    var var_0 = !func_2();
    global1 = func_4(Struct_3(vec3<bool>(false, var_0.x, true), Struct_2(-vec4<i32>(u_input.a, u_input.c.x, u_input.a, u_input.a)), abs(~(vec4<i32>(u_input.c.x, u_input.a, 0i, u_input.c.x) | vec4<i32>(0i, -1i, -31617i, -25779i))), func_3(Struct_1(u_input.e.wy, 64608i), func_2().x, vec3<bool>(false, true, false), Struct_2(vec4<i32>(25608i, 1i, u_input.a, u_input.a))) | _wgslsmith_sub_i32(select(u_input.c.x, u_input.a, var_0.x), u_input.a & 1220i), Struct_1(vec2<u32>(_wgslsmith_clamp_u32(global1.x, u_input.d, u_input.b), 0u), i32(-1i) * -u_input.c.x)), vec3<u32>(1u, 137516u, _wgslsmith_dot_vec2_u32(~(global1.yx >> (vec2<u32>(u_input.b, 1u) % vec2<u32>(32u))), vec2<u32>(u_input.b, 57366u))));
    var var_1 = 0i;
    var_0 = vec2<bool>(true, true);
    return Struct_4(func_2(), Struct_2(vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(-2147483647i, -12357i, 2147483647i), -22280i), -6352i, -abs(u_input.a), _wgslsmith_div_i32(-u_input.a, 0i))), Struct_2(vec4<i32>(u_input.c.x, -37724i, _wgslsmith_add_i32(-u_input.c.x, -9567i), 1i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = Struct_1(countOneBits(select(vec2<u32>(~u_input.d, firstTrailingBit(30907u)), vec2<u32>(max(0u, 0u), global1.x), global1.x < reverseBits(u_input.d))), -1936i);
    var_0 = Struct_4(vec2<bool>(any(!vec3<bool>(var_0.a.x, var_0.a.x, true)) | (true == func_1().a.x), var_0.a.x), var_0.c, var_0.b);
    let var_2 = Struct_3(vec3<bool>(false, any(var_0.a), var_0.a.x), var_0.c, ~vec4<i32>(-(-1i << (var_1.a.x % 32u)), 0i, -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.b, u_input.c.x, -212i) & vec3<i32>(-2147483647i, var_1.b, u_input.c.x), _wgslsmith_clamp_vec3_i32(var_0.b.a.ywz, vec3<i32>(24556i, u_input.c.x, var_1.b), vec3<i32>(1i, var_0.c.a.x, 9923i)))), -select(-var_0.c.a.x, _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(var_0.b.a.x, var_0.c.a.x)), vec2<i32>(var_1.b, var_0.b.a.x) & u_input.c.zz), !(var_0.a.x != var_0.a.x)), Struct_1(~(func_4(Struct_3(vec3<bool>(true, true, false), var_0.c, vec4<i32>(var_0.c.a.x, 8988i, u_input.a, 11160i), -25867i, Struct_1(vec2<u32>(u_input.b, global1.x), -1i)), u_input.e.xzw).zx | u_input.e.xy), _wgslsmith_dot_vec3_i32(u_input.c, abs(_wgslsmith_div_vec3_i32(vec3<i32>(-32826i, var_0.b.a.x, u_input.a), vec3<i32>(0i, var_1.b, u_input.a))))));
    let var_3 = vec4<i32>(_wgslsmith_add_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(1i, var_0.b.a.x, -1i, var_0.b.a.x), ~vec4<i32>(u_input.c.x, var_2.b.a.x, var_0.c.a.x, -2147483647i)), select(~var_0.c.a.x, _wgslsmith_dot_vec3_i32(~u_input.c, ~var_2.c.ywy), var_0.a.x)), ~_wgslsmith_clamp_i32(~0i, var_1.b, var_2.c.x), var_2.c.x | (var_0.c.a.x << (_wgslsmith_clamp_u32(var_2.e.a.x, ~20827u, global1.x) % 32u)), ~1i);
    let x = u_input.a;
    s_output = StorageBuffer(~select(~firstTrailingBit(4294967295u), var_2.e.a.x, var_3.x != -2147483647i), abs(firstTrailingBit(-(~var_0.c.a.x))));
}

