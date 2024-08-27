struct Struct_1 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: Struct_1,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25>;

var<private> global1: array<Struct_2, 20>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec4<u32>, arg_2: vec2<bool>, arg_3: f32) -> u32 {
    global0 = array<Struct_1, 25>();
    global1 = array<Struct_2, 20>();
    global1 = array<Struct_2, 20>();
    var var_0 = select(!vec3<bool>(arg_2.x, true, !(arg_2.x && arg_2.x)), vec3<bool>(any(select(vec2<bool>(false, arg_2.x), arg_2, !arg_2.x)), true, arg_2.x), false);
    let var_1 = select(vec2<bool>(!(-7295i >= u_input.b.x), any(vec3<bool>(false, var_0.x, all(vec4<bool>(var_0.x, var_0.x, arg_2.x, var_0.x))))), !select(vec2<bool>(!arg_2.x, all(vec3<bool>(true, var_0.x, var_0.x))), select(vec2<bool>(false, var_0.x), vec2<bool>(arg_2.x, true), select(arg_2, vec2<bool>(true, false), arg_2)), var_0.zz), arg_2);
    return 0u;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    let var_0 = arg_0.d.b;
    var var_1 = Struct_2(_wgslsmith_f_op_f32(round(-352f)), _wgslsmith_sub_vec4_u32(vec4<u32>(abs(22888u), ~func_3(arg_2.b.x, arg_0.b, vec2<bool>(false, true), -1581f), arg_0.d.a, ~abs(arg_1.a)), ((vec4<u32>(arg_1.a, 1u, arg_2.a, 27987u) << (vec4<u32>(arg_2.a, 1u, arg_2.a, 10741u) % vec4<u32>(32u))) >> (countOneBits(vec4<u32>(arg_1.a, 3242u, arg_1.a, arg_2.a)) % vec4<u32>(32u))) ^ vec4<u32>(28082u, ~u_input.a, u_input.a, max(24455u, 4294967295u))), vec2<u32>(74942u, u_input.a), arg_2, arg_0.e);
    var var_2 = Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(4294967295u, arg_2.a), 1u, ~var_1.b.x), ~_wgslsmith_mod_vec3_u32(vec3<u32>(75773u, arg_0.c.x, 66440u), vec3<u32>(1u, 60734u, arg_2.a))) | abs(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_1.a, var_1.b.x, var_1.c.x), vec4<u32>(var_1.b.x, u_input.a, 58419u, 4294967295u))), ~(~max(var_0, var_1.d.b)) >> (~(~min(vec4<u32>(48951u, 0u, arg_1.a, var_1.b.x), vec4<u32>(arg_0.b.x, arg_1.a, arg_0.d.a, arg_1.a))) % vec4<u32>(32u)));
    var var_3 = global1[_wgslsmith_index_u32(firstTrailingBit(arg_2.a), 20u)];
    let var_4 = vec4<i32>(arg_0.d.b.x, i32(-1i) * -(var_2.b.x ^ 1i), abs(_wgslsmith_dot_vec3_i32(-var_2.b.yxy, vec3<i32>(-1i) * -vec3<i32>(25108i, u_input.b.x, arg_1.b.x))), countOneBits(-41747i));
    return ~firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, var_2.a, 1u, arg_2.a) & abs(var_1.b), ~arg_0.b));
}

fn func_1() -> vec2<u32> {
    var var_0 = vec4<u32>(u_input.a, _wgslsmith_add_u32(min(reverseBits(64028u), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(90405u, u_input.a), vec2<u32>(u_input.a, 12789u)), ~64127u)), _wgslsmith_add_u32(func_2(Struct_2(1118f, vec4<u32>(u_input.a, 42614u, u_input.a, u_input.a), vec2<u32>(1u, 23281u), global0[_wgslsmith_index_u32(u_input.a, 25u)], vec2<f32>(1000f, 1210f)), global0[_wgslsmith_index_u32(0u, 25u)], Struct_1(u_input.a, u_input.b)) >> (7839u % 32u), u_input.a)), u_input.a & countOneBits(u_input.a), _wgslsmith_sub_u32(6404u, abs(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)))));
    let var_1 = firstLeadingBit(~firstTrailingBit(func_3(reverseBits(u_input.b.x), ~vec4<u32>(u_input.a, u_input.a, u_input.a, var_0.x), vec2<bool>(true, true), _wgslsmith_f_op_f32(-2177f - 754f))));
    let var_2 = global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_sub_u32(var_1, ~var_1)), 25u)];
    var var_3 = Struct_1(var_1, vec4<i32>(-var_2.b.x | 2147483647i, -2147483647i, _wgslsmith_mult_i32(_wgslsmith_sub_i32(1i, var_2.b.x), 29995i), ~(-14032i >> (1u % 32u))) ^ vec4<i32>(-2147483647i ^ var_2.b.x, _wgslsmith_dot_vec4_i32(var_2.b & vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, -2147483647i), vec4<i32>(-72351i, -37727i, 8065i, 0i)), firstLeadingBit(-34675i), ~u_input.b.x));
    let var_4 = global0[_wgslsmith_index_u32(34811u, 25u)];
    return var_0.xw;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.a, 21291u), countOneBits(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), func_1()))), 20u)];
    var var_1 = firstTrailingBit((-1i & _wgslsmith_dot_vec3_i32(min(u_input.b.zxz, vec3<i32>(35236i, u_input.b.x, var_0.d.b.x)), -vec3<i32>(var_0.d.b.x, u_input.b.x, u_input.b.x))) & 34808i);
    let var_2 = false;
    var_1 = -_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(var_0.d.b.zx, var_0.d.b.zy), firstTrailingBit(u_input.b.x), reverseBits(-2147483647i), -2147483647i), abs(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, var_0.d.b.x, u_input.b.x, -100975i), var_0.d.b))), var_0.d.b.x, var_0.d.b.x);
    global1 = array<Struct_2, 20>();
    var var_3 = false;
    var_3 = all(select(!vec2<bool>(var_2, var_2), vec2<bool>(!(56600i != var_0.d.b.x), var_2), select(vec2<bool>(true, true), !vec2<bool>(true, var_2), var_2)));
    let var_4 = vec2<u32>(var_0.b.x, abs(~13181u)) | vec2<u32>(u_input.a, ~(~u_input.a) | 65211u);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d.a & countOneBits(~14697u));
}

