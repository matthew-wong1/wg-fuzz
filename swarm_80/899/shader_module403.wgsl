struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec3<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec4<u32>(4294967295u, 0u, 65643u, 10509u), 1u, 160u, 1i), Struct_1(vec4<u32>(4294967295u, 45041u, 1u, 27060u), 33144u, 0u, -62896i), Struct_1(vec4<u32>(1u, 0u, 91784u, 0u), 0u, 1u, -1i), Struct_1(vec4<u32>(0u, 19022u, 41762u, 4294967295u), 50098u, 1u, -64553i), Struct_1(vec4<u32>(20914u, 85286u, 4294967295u, 87099u), 4294967295u, 35878u, 4659i), Struct_1(vec4<u32>(0u, 1u, 0u, 0u), 31368u, 55728u, 75445i), Struct_1(vec4<u32>(18528u, 75855u, 1490u, 63933u), 4294967295u, 1u, -30519i), Struct_1(vec4<u32>(0u, 1u, 39527u, 69226u), 22140u, 50526u, 8289i), Struct_1(vec4<u32>(12604u, 0u, 4294967295u, 23527u), 0u, 15935u, -20431i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_3) -> i32 {
    var var_0 = 1i;
    var var_1 = vec2<i32>(abs(_wgslsmith_dot_vec3_i32(~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, 64480i, 2147483647i), vec3<i32>(-1i, 45738i, -40553i)), vec3<i32>(21036i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.b, arg_2.b, -2147483647i, -1i), vec4<i32>(-2147483647i, u_input.a, u_input.a, -2147483647i)), _wgslsmith_div_i32(2147483647i, -2147483647i)))), firstTrailingBit(_wgslsmith_div_i32(arg_2.b, -max(2147483647i, arg_1.d))));
    let var_2 = ~1i;
    var_0 = -_wgslsmith_clamp_i32(arg_1.d, 0i, reverseBits(_wgslsmith_div_i32(_wgslsmith_div_i32(-48294i, var_1.x), 1i)));
    let var_3 = Struct_1(arg_1.a ^ ~arg_1.a, 34014u, _wgslsmith_add_u32(arg_1.c, ~abs(~39535u)), 15952i);
    return _wgslsmith_mod_i32(-1816i, ~((i32(-1i) * -var_1.x) & -2147483647i));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec3<u32>) -> Struct_3 {
    var var_0 = _wgslsmith_sub_u32(1u, firstTrailingBit(~51504u));
    return Struct_3(arg_1.c, _wgslsmith_sub_i32(_wgslsmith_mod_i32(_wgslsmith_mult_i32(arg_1.d, 0i), 0i) & -_wgslsmith_div_i32(arg_1.d, arg_1.d), func_3(firstLeadingBit(u_input.a), Struct_1(reverseBits(arg_1.a), arg_2.x, arg_2.x, 14020i), Struct_3(~arg_1.a.x, arg_1.d, true))), !(false & !(arg_1.a.x > 23661u)));
}

fn func_1(arg_0: i32, arg_1: vec3<u32>) -> u32 {
    global0 = array<Struct_1, 9>();
    global0 = array<Struct_1, 9>();
    global0 = array<Struct_1, 9>();
    let var_0 = arg_1.x;
    let var_1 = func_2(arg_1.yz, global0[_wgslsmith_index_u32(var_0, 9u)], _wgslsmith_div_vec3_u32(select(arg_1 & (vec3<u32>(var_0, 4294967295u, 4294967295u) | arg_1), vec3<u32>(4294967295u, 16179u, firstTrailingBit(arg_1.x)), arg_0 != u_input.a), arg_1));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 9>();
    global0 = array<Struct_1, 9>();
    let var_0 = ~(~(~vec3<u32>(1u, 1u, 1u))) & vec3<u32>(firstTrailingBit(func_1(u_input.a, vec3<u32>(1u, 1u, 1u))), _wgslsmith_sub_u32(~1u >> (countOneBits(0u) % 32u), ~_wgslsmith_clamp_u32(27125u, 26865u, 57437u)), ~1u);
    let var_1 = 16843i;
    var var_2 = vec3<i32>(var_1, var_1, -1i);
    global0 = array<Struct_1, 9>();
    var_2 = vec3<i32>(1i, u_input.a, ~var_1);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(1u, reverseBits(var_0.x)), ~(~(~select(vec4<i32>(u_input.a, 16848i, u_input.a, var_1), vec4<i32>(u_input.a, -3270i, u_input.a, 11007i), vec4<bool>(true, true, false, false)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -903f), 733f), abs(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, u_input.a, var_1), firstTrailingBit(vec3<i32>(var_2.x, var_1, u_input.a))) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(var_1, 2147483647i, -2147483647i), _wgslsmith_add_vec3_i32(vec3<i32>(var_1, var_2.x, u_input.a), vec3<i32>(31770i, u_input.a, u_input.a)))), ~(~vec4<u32>(var_0.x, abs(var_0.x), 4294967295u, var_0.x)));
}

