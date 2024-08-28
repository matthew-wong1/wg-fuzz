struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
    d: vec2<f32>,
    e: i32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_3,
    e: f32,
}

struct Struct_5 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 3> = array<vec4<i32>, 3>(vec4<i32>(i32(-2147483648), -26447i, -24696i, -19405i), vec4<i32>(1i, i32(-2147483648), 0i, 50958i), vec4<i32>(-23328i, i32(-2147483648), 1i, 0i));

var<private> global1: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(-302f), Struct_2(-1000f), Struct_2(163f), Struct_2(446f), Struct_2(-325f), Struct_2(750f), Struct_2(910f), Struct_2(583f), Struct_2(-354f), Struct_2(505f), Struct_2(841f), Struct_2(-755f), Struct_2(-1288f), Struct_2(-1059f), Struct_2(488f), Struct_2(258f), Struct_2(-446f), Struct_2(433f), Struct_2(-449f), Struct_2(-1575f), Struct_2(-597f), Struct_2(-539f), Struct_2(618f));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_2) -> u32 {
    var var_0 = !(!vec3<bool>(true & all(vec2<bool>(false, true)), all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true))), any(vec3<bool>(true, true, false))));
    let var_1 = vec4<u32>(reverseBits(~(_wgslsmith_mod_u32(30875u, 17905u) ^ u_input.a)), _wgslsmith_add_u32(~u_input.c.x ^ u_input.c.x, ~(0u ^ u_input.b)) >> (26058u % 32u), 30502u << (u_input.b % 32u), u_input.a);
    var var_2 = arg_0.a;
    let var_3 = abs(reverseBits(vec2<i32>(-u_input.d, 1711i | u_input.d) & vec2<i32>(28493i & u_input.d, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, 2147483647i, -2147483647i), vec3<i32>(u_input.d, u_input.d, u_input.d)))));
    var_2 = -120f;
    return firstLeadingBit(_wgslsmith_add_u32(0u, ~(reverseBits(var_1.x) ^ 4294967295u)));
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_3(Struct_2(-113f));
    global1 = array<Struct_2, 23>();
    let var_1 = !vec3<bool>(!all(vec3<bool>(true, true, true)), true, any(vec4<bool>(87592u <= u_input.a, true, true, true)));
    let var_2 = Struct_4(!(!vec4<bool>(false, !var_1.x, any(vec4<bool>(true, false, false, var_1.x)), true)), Struct_1(true, var_0.a.a, func_3(var_0.a), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.a, var_0.a.a))))), -1i), _wgslsmith_sub_vec2_u32(u_input.c >> (_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, u_input.a), abs(vec2<u32>(71960u, u_input.c.x))) % vec2<u32>(32u)), ~u_input.c), Struct_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.a * -236f)))), var_0.a.a);
    let var_3 = firstTrailingBit(-vec3<i32>(_wgslsmith_div_i32(2147483647i, ~var_2.b.e), 1i, var_2.b.e));
    return Struct_4(!(!(!vec4<bool>(var_1.x, true, false, var_2.b.a))), var_2.b, vec2<u32>(~(~0u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.c.x, u_input.c.x, var_2.b.c), vec3<u32>(var_2.c.x, 77794u, var_2.c.x))) ^ vec2<u32>(~0u, _wgslsmith_sub_u32(var_2.c.x, ~6356u)), Struct_3(var_0.a), _wgslsmith_f_op_f32(select(-804f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(208f))))), (firstTrailingBit(46132u) >> (var_2.c.x % 32u)) != 40813u)));
}

fn func_1() -> f32 {
    global0 = array<vec4<i32>, 3>();
    var var_0 = ~0u;
    let var_1 = func_2();
    global0 = array<vec4<i32>, 3>();
    var_0 = _wgslsmith_add_u32(u_input.c.x, ~_wgslsmith_dot_vec3_u32(abs(vec3<u32>(30623u, var_1.c.x, 0u) ^ vec3<u32>(72207u, 4294967295u, 40692u)), max(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 51850u, var_1.b.c), vec3<u32>(12211u, var_1.b.c, 32315u)), vec3<u32>(1043u, 4294967295u, 20221u))));
    return var_1.d.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(f32(-1f) * -2301f)));
    let var_1 = u_input.d;
    global0 = array<vec4<i32>, 3>();
    let var_2 = 4294967295u;
    var var_3 = Struct_5(vec2<f32>(_wgslsmith_f_op_f32(func_1()), func_2().d.a.a));
    var var_4 = func_2();
    let var_5 = all(vec4<bool>(var_4.a.x, any(vec3<bool>(true, all(var_4.a.xy), false && var_4.a.x)), false, -758f < _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(var_3.a.x, -462f)), -1802f))));
    var var_6 = Struct_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(var_3.a + var_3.a))))));
    let x = u_input.a;
    s_output = StorageBuffer(1u, ~_wgslsmith_dot_vec3_i32(-firstTrailingBit(vec3<i32>(-54606i, -40175i, u_input.d)), ~vec3<i32>(-4431i, u_input.d, -32045i) & min(vec3<i32>(var_4.b.e, var_4.b.e, -16600i), vec3<i32>(u_input.d, u_input.d, u_input.d))), -max((-1i | var_4.b.e) << (var_2 % 32u), -u_input.d), 584f);
}

