struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 25>;

var<private> global1: array<i32, 29>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> bool {
    global0 = array<vec4<bool>, 25>();
    let var_0 = !all(vec4<bool>(true, true, all(vec3<bool>(true, false, true)), true));
    var var_1 = Struct_2(!((any(vec2<bool>(var_0, var_0)) == true) || true));
    global0 = array<vec4<bool>, 25>();
    let var_2 = vec2<u32>(_wgslsmith_mod_u32(u_input.b, _wgslsmith_add_u32(~56602u, 1u)) ^ _wgslsmith_clamp_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.b), vec2<u32>(u_input.a, u_input.b)), 509u, _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(4294967295u, u_input.b, 1u)), ~vec3<u32>(0u, u_input.b, u_input.a))), 34351u >> (u_input.b % 32u));
    return var_0;
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_2(all(vec4<bool>(true, true, true, func_3())));
    let var_1 = countOneBits(~12681u);
    let var_2 = Struct_1(vec3<i32>(21855i, ~global1[_wgslsmith_index_u32(1u, 29u)], 1i), vec4<u32>(u_input.a, 4294967295u, min(55625u, _wgslsmith_add_u32(19820u << (u_input.a % 32u), _wgslsmith_sub_u32(0u, var_1))), _wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.b, 59926u), u_input.a) & (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, var_1, 4294967295u), vec4<u32>(1u, 43669u, 0u, 1u)) | ~1u)));
    let var_3 = Struct_2(var_0.a);
    global1 = array<i32, 29>();
    return Struct_2(func_3());
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: Struct_2) -> Struct_2 {
    return func_2();
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3, arg_2: i32, arg_3: Struct_3) -> Struct_1 {
    let var_0 = ~_wgslsmith_add_u32(arg_1.a.b.x, min(~u_input.a, _wgslsmith_dot_vec2_u32(arg_1.a.b.yz, arg_3.a.b.wx & arg_3.a.b.wz)));
    var var_1 = select(select(vec3<bool>(true, !all(vec3<bool>(arg_0.a, arg_0.a, false)), arg_0.a), select(select(vec3<bool>(false, arg_0.a, arg_0.a), vec3<bool>(false, arg_0.a, false), true), vec3<bool>(all(vec2<bool>(false, arg_0.a)), false, func_4(u_input.b, arg_2, Struct_2(false)).a), false), func_3() && true), !vec3<bool>(arg_0.a, func_3(), min(2147483647i, global1[_wgslsmith_index_u32(u_input.b, 29u)]) < -22425i), false);
    let var_2 = arg_1;
    global0 = array<vec4<bool>, 25>();
    global1 = array<i32, 29>();
    return Struct_1(vec3<i32>(_wgslsmith_mod_i32(-(arg_1.a.a.x ^ -13625i), -max(arg_3.a.a.x, arg_3.a.a.x)), var_2.a.a.x, _wgslsmith_dot_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(arg_1.a.a.x, -2147483647i, 1i, arg_1.a.a.x), vec4<i32>(51673i, 4926i, global1[_wgslsmith_index_u32(var_0, 29u)], arg_3.a.a.x)), -(~vec4<i32>(global1[_wgslsmith_index_u32(1u, 29u)], arg_3.a.a.x, -20357i, arg_2)))), _wgslsmith_add_vec4_u32(vec4<u32>(68751u, u_input.a, 4294967295u, 17430u), firstLeadingBit(vec4<u32>(34099u, ~arg_3.a.b.x, 4294967295u, 0u))));
}

fn func_1(arg_0: bool, arg_1: vec3<u32>) -> StorageBuffer {
    let var_0 = u_input.b ^ _wgslsmith_dot_vec4_u32(vec4<u32>(20259u, 2651u, _wgslsmith_mult_u32(33348u, arg_1.x), ~u_input.a), _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(arg_1.x, 37508u, arg_1.x, 17081u)), vec4<u32>(u_input.b, 4294967295u, arg_1.x, arg_1.x)), ~min(vec4<u32>(arg_1.x, u_input.a, arg_1.x, u_input.b), vec4<u32>(0u, 1u, 0u, 12714u))));
    let var_1 = func_5(func_4(~(~arg_1.x) << (u_input.a % 32u), -25309i, func_2()), Struct_3(Struct_1(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-27751i, global1[_wgslsmith_index_u32(arg_1.x, 29u)], global1[_wgslsmith_index_u32(var_0, 29u)]), vec3<i32>(42511i, global1[_wgslsmith_index_u32(arg_1.x, 29u)], -1i)), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, 4294967295u), 29u)], -10282i), ~firstLeadingBit(vec4<u32>(u_input.b, 26619u, arg_1.x, 32581u)))), global1[_wgslsmith_index_u32(u_input.a, 29u)], Struct_3(Struct_1(vec3<i32>(1i, max(global1[_wgslsmith_index_u32(arg_1.x, 29u)], 42136i), max(global1[_wgslsmith_index_u32(var_0, 29u)], 2147483647i)), min(vec4<u32>(var_0, arg_1.x, 32413u, var_0) & vec4<u32>(43878u, var_0, arg_1.x, u_input.a), firstTrailingBit(vec4<u32>(arg_1.x, u_input.a, var_0, u_input.a))))));
    global0 = array<vec4<bool>, 25>();
    var var_2 = Struct_3(func_5(Struct_2((arg_0 || arg_0) && false), Struct_3(Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(u_input.b, 29u)], 1i, var_1.a.x), vec3<i32>(24035i, var_1.a.x, -9172i)), ~vec4<u32>(131884u, var_1.b.x, 10430u, var_0))), 40282i, Struct_3(Struct_1(vec3<i32>(9367i, 0i, global1[_wgslsmith_index_u32(u_input.b, 29u)]) << (var_1.b.ywy % vec3<u32>(32u)), var_1.b))));
    global1 = array<i32, 29>();
    return StorageBuffer(_wgslsmith_mult_vec2_i32(min(var_1.a.zz, ~var_1.a.yz), var_1.a.zz), 0i, abs(vec4<i32>(-1i) * -vec4<i32>(0i, -5715i, var_2.a.a.x, var_1.a.x)), ~(~var_2.a.b));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1((~u_input.a >> (~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 69865u, 0u), vec3<u32>(u_input.b, 34751u, 13380u)) % 32u)) >= 0u, vec3<u32>(~_wgslsmith_mult_u32(u_input.b, ~0u), 10547u, ~2772u));
}

