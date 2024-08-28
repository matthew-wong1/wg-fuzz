struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<i32, 23>;

var<private> global2: array<Struct_1, 4>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<u32>, arg_1: f32, arg_2: vec2<f32>) -> vec4<i32> {
    var var_0 = ~(vec4<u32>(~arg_0.x, ~_wgslsmith_mod_u32(arg_0.x, arg_0.x), min(arg_0.x, 4294967295u ^ arg_0.x), ~arg_0.x | 4294967295u) << (firstTrailingBit(~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.x, 1u, arg_0.x, arg_0.x), vec4<u32>(67463u, arg_0.x, arg_0.x, 53917u))) % vec4<u32>(32u)));
    global1 = array<i32, 23>();
    let var_1 = global2[_wgslsmith_index_u32(arg_0.x, 4u)];
    return -vec4<i32>(-31504i, u_input.b.x & var_1.a, i32(-1i) * -2147483647i, 717i);
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: Struct_2, arg_3: vec4<i32>) -> vec2<u32> {
    global1 = array<i32, 23>();
    let var_0 = !select(select(select(vec2<bool>(arg_0, true), select(vec2<bool>(true, true), vec2<bool>(true, false), arg_0), arg_0), select(!vec2<bool>(arg_0, false), vec2<bool>(false, true), select(vec2<bool>(true, arg_0), vec2<bool>(arg_0, false), false)), arg_0), !(!select(vec2<bool>(true, arg_0), vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0))), arg_0);
    global1 = array<i32, 23>();
    let var_1 = vec4<u32>(min(~_wgslsmith_dot_vec4_u32(vec4<u32>(71772u, 11147u, 0u, 33226u), vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_sub_u32(~1u, firstTrailingBit(~23721u))), _wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(61748u, 47443u, 4294967295u), vec3<u32>(33788u, 4294967295u, 4294967295u)), reverseBits(2281u << (0u % 32u))), 77759u), 1u, 17931u);
    let var_2 = _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_3.x, -(~25086i), u_input.a.x, 14474i), ~arg_3, arg_3 << (var_1 % vec4<u32>(32u))), min(u_input.b, select(firstLeadingBit(arg_3), -u_input.b, vec4<bool>(false, false, false, arg_0)) >> (vec4<u32>(var_1.x << (var_1.x % 32u), var_1.x, firstTrailingBit(39479u), 22328u) % vec4<u32>(32u))));
    return var_1.wy;
}

fn func_2() -> vec4<bool> {
    var var_0 = vec2<u32>(4294967295u, ~(~(24432u >> (0u % 32u)))) >> (~func_4(true, ~(~5865i), Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(67722u, 8624u, 1u), vec3<u32>(1u, 0u, 4294967295u)), 4u)], -23224i, -2147483647i), _wgslsmith_clamp_vec4_i32(-u_input.b, func_3(vec3<u32>(29865u, 2636u, 8895u), 1000f, vec2<f32>(-245f, global0.x)), vec4<i32>(global1[_wgslsmith_index_u32(19982u, 23u)], u_input.b.x, global1[_wgslsmith_index_u32(4294967295u, 23u)], -45484i))) % vec2<u32>(32u));
    let var_1 = Struct_1(select(26219i, max(_wgslsmith_add_i32(-4617i, 62357i), -_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(1u, 23u)], 1i)), true));
    var_0 = vec2<u32>(~(~countOneBits(var_0.x)) << (var_0.x % 32u), 0u);
    var var_2 = vec3<u32>(4294967295u, _wgslsmith_dot_vec2_u32(~(countOneBits(vec2<u32>(96816u, var_0.x)) & countOneBits(vec2<u32>(4294967295u, var_0.x))), vec2<u32>(var_0.x, _wgslsmith_sub_u32(var_0.x, ~var_0.x))), var_0.x);
    let var_3 = countOneBits(~(~vec4<u32>(0u, var_0.x, 36134u << (var_0.x % 32u), ~0u)));
    return select(vec4<bool>(any(vec2<bool>(true, true)), false, select(~var_0.x >= ~var_3.x, false, global0.x <= global0.x), any(vec4<bool>(true, true, any(vec2<bool>(true, false)), var_3.x > var_2.x))), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(select(true, false, false), true, false, false), true), vec4<bool>(select(any(vec3<bool>(false, false, true)), any(vec2<bool>(false, false)), all(vec2<bool>(false, false))) | any(vec4<bool>(true, true, true, true)), _wgslsmith_mult_u32(_wgslsmith_div_u32(var_3.x, var_0.x), 6832u) < var_3.x, true, true));
}

fn func_1(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = abs(_wgslsmith_div_vec4_i32(u_input.b, select(u_input.b, -_wgslsmith_div_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(40693u, 23u)], -29865i, u_input.b.x, 2147483647i), u_input.b), true)));
    let var_1 = select(select(func_2(), !vec4<bool>(true, any(vec3<bool>(true, true, true)), select(true, false, false), select(true, false, true)), true), !(!func_2()), all(vec2<bool>(true, true)));
    let var_2 = vec2<u32>(select(~1u, 30216u, true) & _wgslsmith_mult_u32(1u, ~9044u), ~(~firstTrailingBit(4294967295u))) ^ firstLeadingBit(~(~vec2<u32>(4294967295u, 1u)));
    global1 = array<i32, 23>();
    let var_3 = Struct_1(-_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(var_0.wz, vec2<i32>(arg_0.a, -1i)), var_0.yz) ^ firstLeadingBit(firstTrailingBit(22800i)));
    return !select(vec2<bool>(true & !var_1.x, true), vec2<bool>(_wgslsmith_f_op_f32(ceil(1000f)) >= _wgslsmith_f_op_f32(min(global0.x, global0.x)), _wgslsmith_f_op_f32(abs(global0.x)) < global0.x), true);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 4>();
    var var_0 = !select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)))), !select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(true, true), func_1(Struct_1(23309i)), true));
    global2 = array<Struct_1, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_div_vec3_i32(-vec3<i32>(u_input.a.x, 1i, u_input.a.x), vec3<i32>(2147483647i, -10557i, -2147483647i)) >> (~(~vec3<u32>(10307u, 0u, 38055u)) % vec3<u32>(32u)));
}

