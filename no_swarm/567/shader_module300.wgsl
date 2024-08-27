struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<bool>,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 12> = array<vec3<u32>, 12>(vec3<u32>(86106u, 4294967295u, 0u), vec3<u32>(29239u, 39940u, 1164u), vec3<u32>(4294967295u, 10157u, 0u), vec3<u32>(42191u, 0u, 0u), vec3<u32>(37511u, 8115u, 74369u), vec3<u32>(3181u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 12846u, 4294967295u), vec3<u32>(9412u, 1u, 4294967295u), vec3<u32>(18616u, 18803u, 73576u), vec3<u32>(47787u, 60592u, 4294967295u), vec3<u32>(61262u, 1u, 27998u), vec3<u32>(0u, 0u, 1u));

var<private> global1: array<Struct_1, 20>;

var<private> global2: array<vec2<u32>, 19> = array<vec2<u32>, 19>(vec2<u32>(2429u, 0u), vec2<u32>(1397u, 18342u), vec2<u32>(0u, 76391u), vec2<u32>(1u, 71170u), vec2<u32>(16227u, 94505u), vec2<u32>(4294967295u, 853u), vec2<u32>(92846u, 33492u), vec2<u32>(1u, 29088u), vec2<u32>(1u, 1u), vec2<u32>(30559u, 22416u), vec2<u32>(1u, 1u), vec2<u32>(1u, 1u), vec2<u32>(33653u, 45192u), vec2<u32>(72296u, 4294967295u), vec2<u32>(4294967295u, 0u), vec2<u32>(55429u, 0u), vec2<u32>(0u, 45560u), vec2<u32>(3621u, 27941u), vec2<u32>(1u, 4294967295u));

var<private> global3: u32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: i32, arg_3: f32) -> u32 {
    let var_0 = Struct_1(~(~(~vec4<u32>(arg_1.x, 33461u, arg_1.x, 19307u)) << (vec4<u32>(arg_1.x, arg_1.x, reverseBits(8291u), arg_1.x) % vec4<u32>(32u))), vec3<u32>(abs(~4294967295u) << ((arg_1.x & select(21148u, 36755u, arg_0.x)) % 32u), 72159u, 0u), vec4<bool>(true, arg_0.x, (false && arg_0.x) & arg_0.x, arg_0.x), u_input.b.x);
    var var_1 = ~arg_1.wyz;
    var var_2 = var_0;
    let var_3 = !(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(arg_3)), _wgslsmith_f_op_f32(-arg_3))) <= arg_3);
    var var_4 = Struct_1(var_0.a, _wgslsmith_mod_vec3_u32(select(countOneBits(var_0.b), var_2.b, all(var_0.c.zzy)) >> (~arg_1.xxy % vec3<u32>(32u)), var_2.a.yyz), !select(vec4<bool>(false, any(vec2<bool>(false, false)), select(var_0.c.x, false, true), true), vec4<bool>(!var_0.c.x, -988f < arg_3, 4294967295u != var_2.a.x, true), all(!vec2<bool>(arg_0.x, var_0.c.x))), arg_2);
    return select(firstTrailingBit(~(~(~54955u))), abs(~(~(~var_1.x))), var_4.c.x);
}

fn func_2(arg_0: vec2<bool>, arg_1: f32, arg_2: bool) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-492f, arg_1))) - -321f);
    global1 = array<Struct_1, 20>();
    global1 = array<Struct_1, 20>();
    let var_1 = Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(firstLeadingBit(76731u), ~62212u, 70604u, 1u), ~vec4<u32>(reverseBits(7737u), 11753u, func_3(vec3<bool>(true, arg_2, arg_2), vec4<u32>(23164u, 4294967295u, 3448u, 44962u), -25292i, -559f), 18308u)), vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, 1u), ~vec3<u32>(0u, 11368u, 4294967295u) ^ global0[_wgslsmith_index_u32(0u, 12u)]), abs(func_3(!vec3<bool>(false, false, arg_2), vec4<u32>(39583u, 1u, 0u, 4294967295u), ~u_input.e, _wgslsmith_f_op_f32(1685f - arg_1))), _wgslsmith_dot_vec2_u32(firstLeadingBit(global2[_wgslsmith_index_u32(4294967295u, 19u)]), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 40630u), global2[_wgslsmith_index_u32(4294967295u, 19u)])) >> (~_wgslsmith_sub_u32(1u, 0u) % 32u)), select(vec4<bool>(arg_2, false, firstTrailingBit(u_input.b.x) >= 0i, !arg_2), select(select(!vec4<bool>(arg_2, arg_2, arg_0.x, true), select(vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), vec4<bool>(arg_0.x, false, true, false), arg_0.x), select(arg_2, false, true)), select(vec4<bool>(true, arg_0.x, arg_0.x, arg_2), select(vec4<bool>(true, arg_0.x, true, true), vec4<bool>(arg_0.x, arg_0.x, arg_2, true), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true)), true), arg_0.x), true), firstTrailingBit(u_input.e));
    var var_2 = var_1;
    return var_2.a.x << (abs(_wgslsmith_add_u32(25564u, var_2.b.x)) % 32u);
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<i32>) -> vec4<i32> {
    var var_0 = _wgslsmith_mod_u32(28933u, func_2(!vec2<bool>(any(vec2<bool>(true, false)), true), _wgslsmith_f_op_f32(step(-279f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1150f))))), true));
    var var_1 = global0[_wgslsmith_index_u32(~0u, 12u)];
    global0 = array<vec3<u32>, 12>();
    global1 = array<Struct_1, 20>();
    global3 = ~(~var_1.x);
    return vec4<i32>(1i, min(-2147483647i, _wgslsmith_dot_vec3_i32((arg_1.xxw >> (vec3<u32>(8817u, 1u, var_1.x) % vec3<u32>(32u))) >> (abs(vec3<u32>(var_1.x, var_1.x, 28437u)) % vec3<u32>(32u)), vec3<i32>(49473i, 11635i, 20056i) >> (global0[_wgslsmith_index_u32(var_1.x, 12u)] % vec3<u32>(32u)))), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x, _wgslsmith_dot_vec4_i32(arg_1, vec4<i32>(u_input.e, u_input.d, arg_1.x, 49872i))), _wgslsmith_mult_vec2_i32(-arg_0, -vec2<i32>(arg_1.x, arg_0.x))) << (var_1.x % 32u), 41556i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_div_i32(-2147483647i, u_input.d), 463i, 0i, i32(-1i) * -26504i) >> (_wgslsmith_add_vec4_u32(vec4<u32>(0u, 1u, 1u, 15524u), vec4<u32>(1u, 26079u, 31644u, 75468u)) % vec4<u32>(32u)), vec4<i32>(-1i, 17372i, firstLeadingBit(-8156i), firstTrailingBit(-8714i))) >> (~(vec4<u32>(1u, 1u, 1u, 1u) | select(vec4<u32>(4294967295u, 4294967295u, 18515u, 4294967295u), vec4<u32>(1u, 1u, 1u, 1u), true)) % vec4<u32>(32u));
    let var_1 = true;
    let var_2 = countOneBits(var_0.xzy);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1876f, 753f)), _wgslsmith_f_op_f32(f32(-1f) * -351f)) * 1660f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1107f * 137f) + _wgslsmith_f_op_f32(417f * 1389f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1483f, -1232f, 893f), vec3<f32>(-2049f, -2070f, -1485f), vec3<bool>(var_1, var_1, var_1)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-661f, -507f, -336f), vec3<f32>(887f, -1450f, -1865f))))), true)), -_wgslsmith_mult_vec4_i32(func_1(u_input.b.zz, vec4<i32>(19683i, -2147483647i, var_2.x, -4281i)), -vec4<i32>(2147483647i, u_input.a.x, u_input.b.x, u_input.a.x)), firstTrailingBit(~vec3<u32>(4078u, 1u, 10640u)) ^ firstTrailingBit(global0[_wgslsmith_index_u32(~1u, 12u)]), var_2);
}

