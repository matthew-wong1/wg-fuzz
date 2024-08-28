struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<bool>,
    d: bool,
}

struct Struct_3 {
    a: f32,
    b: vec2<f32>,
    c: vec2<i32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: u32,
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

var<private> global0: array<f32, 16> = array<f32, 16>(-1268f, 1000f, -1051f, -2380f, 1134f, 277f, -1278f, -1000f, 1236f, -673f, 1801f, -635f, 406f, 1459f, -445f, 1244f);

var<private> global1: i32 = 19375i;

var<private> global2: array<Struct_3, 17>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: Struct_3) -> bool {
    var var_0 = Struct_3(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~16832u, arg_1 << (arg_1 % 32u), u_input.a) & reverseBits(~vec3<u32>(arg_1, 60706u, u_input.a)), vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_add_u32(100341u, 1u), u_input.a), min(~arg_1, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(67092u, u_input.e))), 1u)), 16u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0[_wgslsmith_index_u32(38422u, 16u)], 849f), _wgslsmith_f_op_vec2_f32(-arg_2.b))), arg_2.b)), vec2<i32>(_wgslsmith_div_i32(2147483647i ^ arg_2.c.x, ~reverseBits(arg_0)), arg_2.c.x));
    var var_1 = vec3<f32>(-463f, _wgslsmith_f_op_f32(min(224f, arg_2.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(arg_1, 16u)], 281f, true)) + var_0.a))), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(0u, 16u)], var_0.a)))));
    let var_2 = abs(reverseBits(firstTrailingBit(select(vec3<u32>(arg_1, arg_1, arg_1), vec3<u32>(u_input.b, u_input.e, u_input.e), vec3<bool>(true, false, false))))) << (~_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.a, u_input.b, 1u), reverseBits(vec3<u32>(74416u, u_input.a, arg_1))), firstLeadingBit(vec3<u32>(u_input.a, 1u, 22733u)) & ~vec3<u32>(34133u, 4294967295u, u_input.e)) % vec3<u32>(32u));
    return true;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>) -> u32 {
    let var_0 = arg_0.a.xz;
    var var_1 = !vec2<bool>(func_3(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(var_0.x, -49393i, 35467i, u_input.c)), -28915i << (arg_1.x % 32u)), _wgslsmith_add_u32(_wgslsmith_add_u32(u_input.b, arg_0.c), min(0u, arg_1.x)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 1u, arg_1.x, 38319u), vec4<u32>(8478u, u_input.e, 55339u, u_input.a)), vec4<u32>(9813u, 99420u, u_input.a, 4294967295u)), 17u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(42614u, 16u)] - -650f), _wgslsmith_f_op_f32(f32(-1f) * -1260f)) > -459f);
    var var_2 = 10545i >> (_wgslsmith_clamp_u32(28360u, ~4294967295u, arg_1.x) % 32u);
    let var_3 = arg_0.a.xx;
    var var_4 = global0[_wgslsmith_index_u32(arg_0.c << (_wgslsmith_dot_vec4_u32(vec4<u32>(33696u, u_input.e, ~_wgslsmith_mod_u32(arg_0.c, arg_0.c), _wgslsmith_mult_u32(~arg_1.x, u_input.a & 4294967295u)), firstTrailingBit(vec4<u32>(_wgslsmith_mult_u32(24342u, 0u), 0u, arg_0.c, 24867u))) % 32u), 16u)];
    return arg_0.c;
}

fn func_1(arg_0: vec4<i32>) -> bool {
    var var_0 = ~((select(~vec3<u32>(u_input.a, u_input.e, 18193u), _wgslsmith_div_vec3_u32(vec3<u32>(14573u, 4294967295u, 8450u), vec3<u32>(u_input.a, 17312u, 94407u)), vec3<bool>(true, true, true)) ^ vec3<u32>(func_2(Struct_1(u_input.d.zyz, u_input.d.x, 1u), vec2<u32>(0u, 24781u)), _wgslsmith_sub_u32(1u, u_input.b), u_input.e)) & abs(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(18738u, 0u, 1u), vec3<u32>(u_input.a, 1072u, u_input.e)), ~vec3<u32>(u_input.e, u_input.a, 4294967295u))));
    global1 = firstTrailingBit(arg_0.x);
    var var_1 = false;
    global2 = array<Struct_3, 17>();
    var_1 = any(vec3<bool>(true, false | (~var_0.x == ~4294967295u), true));
    return true;
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: i32) -> Struct_4 {
    let var_0 = Struct_1(select(vec3<i32>(u_input.c, countOneBits(arg_0), ~u_input.c << (u_input.a % 32u)), firstTrailingBit(countOneBits(u_input.d.xxz)), vec3<bool>(!arg_1, arg_1, !arg_1)), u_input.c, 0u);
    let var_1 = arg_2;
    var var_2 = var_0;
    var var_3 = Struct_2(arg_1, var_0, select(vec4<bool>(arg_1, !(-1028f < global0[_wgslsmith_index_u32(u_input.a, 16u)]), arg_1, true), select(vec4<bool>(false, arg_1, select(arg_1, arg_1, true), true), vec4<bool>(arg_1, arg_1, false, arg_1), all(vec2<bool>(arg_1, arg_1)) && arg_1), !(!arg_1)), any(vec2<bool>(~26556u == (0u << (u_input.e % 32u)), arg_1)));
    var var_4 = all(!vec4<bool>(false, reverseBits(1u) < func_2(var_0, vec2<u32>(4294967295u, var_2.c)), var_3.c.x, func_1(~vec4<i32>(var_3.b.b, var_3.b.b, u_input.d.x, var_2.a.x))));
    return Struct_4(global0[_wgslsmith_index_u32(1u, 16u)], Struct_2(var_3.d, var_0, vec4<bool>(var_3.d, var_3.d | func_1(u_input.d), any(var_3.c.wy), !var_3.d), true), ~vec3<u32>(countOneBits(var_0.c), ~_wgslsmith_clamp_u32(4294967295u, u_input.e, var_3.b.c), 4445u << (0u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(select(_wgslsmith_mult_vec3_i32(vec3<i32>(-u_input.c, ~(-2147483647i), 0i), _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-34275i, u_input.c, -1i), vec3<i32>(u_input.c, u_input.c, u_input.d.x)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d.x, u_input.d.x, u_input.c), vec3<i32>(-9977i, u_input.c, u_input.d.x)))), vec3<i32>(u_input.c, -u_input.c, -20825i), true), -u_input.d.x, ~((u_input.a & ~u_input.a) | u_input.b));
    var var_1 = func_4(-u_input.c, !func_1(firstTrailingBit(~vec4<i32>(-2147483647i, var_0.a.x, var_0.a.x, var_0.b))), -_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, -1i), vec2<i32>(7727i, u_input.d.x)), vec2<i32>(~u_input.c, firstTrailingBit(u_input.c))));
    let var_2 = Struct_2(var_1.b.d, func_4(~var_0.b, !func_3(~(-17293i), var_0.c, Struct_3(-1000f, vec2<f32>(439f, var_1.a), var_0.a.xy)), 0i).b.b, func_4(2147483647i, all(var_1.b.c.zwx) & !(!var_1.b.d), var_1.b.b.a.x).b.c, func_1(u_input.d));
    let x = u_input.a;
    s_output = StorageBuffer(max(u_input.b, u_input.a));
}

