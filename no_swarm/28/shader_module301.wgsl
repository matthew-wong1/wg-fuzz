struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 17948i;

var<private> global1: array<vec2<f32>, 2>;

var<private> global2: array<vec3<u32>, 7> = array<vec3<u32>, 7>(vec3<u32>(8416u, 4294967295u, 0u), vec3<u32>(1u, 1u, 2988u), vec3<u32>(20343u, 0u, 0u), vec3<u32>(32465u, 0u, 50244u), vec3<u32>(0u, 1u, 0u), vec3<u32>(4294967295u, 4294967295u, 57693u), vec3<u32>(48480u, 4294967295u, 4294967295u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: Struct_1) -> vec4<u32> {
    global0 = u_input.a;
    var var_0 = !any(!select(!vec4<bool>(arg_0, arg_0, arg_0, true), vec4<bool>(arg_0, false, arg_2.b.x, false), vec4<bool>(true, false, arg_0, false)));
    global0 = reverseBits(769i);
    global1 = array<vec2<f32>, 2>();
    let var_1 = -arg_2.d;
    return ~arg_2.e & ~vec4<u32>(arg_2.e.x << (_wgslsmith_mod_u32(arg_2.e.x, 0u) % 32u), 41343u, arg_1, 4294967295u);
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    var var_0 = arg_2.d.xw;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1169f)), _wgslsmith_f_op_f32(select(304f, -430f, arg_3.b.x)))))));
    let var_2 = Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(~44672u, firstLeadingBit(4294967295u), 1u, 63925u), arg_1.e) & func_3(arg_3.b.x, ~arg_2.e.x & arg_1.c.x, Struct_1(vec4<u32>(arg_1.c.x, 4294967295u, arg_2.e.x, 0u) | vec4<u32>(0u, 1u, 43780u, arg_1.e.x), !vec2<bool>(arg_2.b.x, arg_1.b.x), ~arg_1.e.yww, vec4<i32>(1i, 10727i, arg_2.d.x, arg_1.d.x), arg_2.e)), !vec2<bool>(arg_0, true), vec3<u32>(max(_wgslsmith_mod_u32(22755u >> (arg_3.c.x % 32u), ~93370u), (0u ^ arg_2.e.x) & ~1u), _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_1.e.x, 0u, arg_3.c.x), min(~arg_1.a.xwz, select(arg_3.e.yzx, vec3<u32>(arg_2.c.x, 66830u, 1u), vec3<bool>(true, arg_3.b.x, true)))), _wgslsmith_mult_u32(~arg_2.c.x, 31864u)), arg_1.d, reverseBits(vec4<u32>(~(arg_1.e.x >> (arg_2.a.x % 32u)), abs(~arg_3.e.x), reverseBits(1u) ^ _wgslsmith_clamp_u32(arg_2.a.x, arg_3.c.x, 1u), 0u)));
    global2 = array<vec3<u32>, 7>();
    let var_3 = true;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(328f)) * -611f))));
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(true, Struct_1(vec4<u32>(0u, 39535u, 1u, 0u), vec2<bool>(true, true), vec3<u32>(5417u, 9611u, 6514u), vec4<i32>(2147483647i, u_input.a, 0i, -61019i), vec4<u32>(0u, 4799u, 1u, 4294967295u)), Struct_1(vec4<u32>(19174u, 1u, 1u, 4294967295u), vec2<bool>(false, false), vec3<u32>(40967u, 4294967295u, 17033u), vec4<i32>(6219i, u_input.a, 18284i, 0i), vec4<u32>(0u, 709u, 1u, 0u)), Struct_1(vec4<u32>(27240u, 0u, 4294967295u, 4294967295u), vec2<bool>(false, false), vec3<u32>(48345u, 4294967295u, 4294967295u), vec4<i32>(u_input.a, 1i, 4533i, u_input.a), vec4<u32>(1u, 888u, 1u, 45907u)))), _wgslsmith_f_op_f32(f32(-1f) * -588f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1460f + -203f))))), _wgslsmith_f_op_f32(select(161f, -1330f, true)), all(vec3<bool>(true, true, true)))));
    global2 = array<vec3<u32>, 7>();
    global1 = array<vec2<f32>, 2>();
    global1 = array<vec2<f32>, 2>();
    var var_1 = Struct_1(vec4<u32>(min(1u, func_3(true, ~4294967295u, Struct_1(vec4<u32>(21115u, 11920u, 0u, 4294967295u), vec2<bool>(false, true), vec3<u32>(33091u, 42232u, 4294967295u), vec4<i32>(u_input.a, u_input.a, u_input.a, 2147483647i), vec4<u32>(38381u, 0u, 16613u, 13414u))).x), (firstTrailingBit(9720u) << (max(72246u, 1u) % 32u)) ^ 1u, 50603u, 0u), !(!vec2<bool>(all(vec2<bool>(true, false)), u_input.a != u_input.a)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(~55317u, select(65683u, 0u, false), _wgslsmith_dot_vec3_u32(vec3<u32>(66292u, 4294967295u, 0u), global2[_wgslsmith_index_u32(74017u, 7u)])), _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(max(global2[_wgslsmith_index_u32(4294967295u, 7u)], vec3<u32>(1u, 1u, 51661u)), _wgslsmith_sub_vec3_u32(global2[_wgslsmith_index_u32(1u, 7u)], vec3<u32>(19554u, 3692u, 48813u)), vec3<u32>(4294967295u, 50479u, 15913u)), ~abs(vec3<u32>(21815u, 73697u, 1u))), vec3<u32>(max(~9363u, 4992u), 1u, ~57503u)), _wgslsmith_div_vec4_i32(-firstLeadingBit(~vec4<i32>(u_input.a, -10860i, u_input.a, u_input.a)), vec4<i32>(_wgslsmith_mult_i32(u_input.a, u_input.a), u_input.a, 5366i, 2147483647i)), reverseBits(vec4<u32>(0u, 1u, 1824u, 0u)));
    return _wgslsmith_dot_vec3_u32(abs(~(~(~global2[_wgslsmith_index_u32(var_1.c.x, 7u)]))), vec3<u32>(~(var_1.a.x | ~76570u), 71584u, ~4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(vec4<u32>(~(~21262u) >> (_wgslsmith_div_u32(0u, _wgslsmith_add_u32(0u, 58075u)) % 32u), ~(~func_1()), ~26572u, max(reverseBits(func_3(true, 4294967295u, Struct_1(vec4<u32>(4294967295u, 134254u, 20969u, 4294967295u), vec2<bool>(false, true), vec3<u32>(4294967295u, 1u, 0u), vec4<i32>(u_input.a, -2147483647i, u_input.a, u_input.a), vec4<u32>(4294967295u, 8891u, 99439u, 1u))).x), 1u)));
    global1 = array<vec2<f32>, 2>();
    global0 = ~u_input.a;
    global0 = u_input.a;
    var var_1 = vec3<u32>(_wgslsmith_sub_u32(36399u << (~firstLeadingBit(var_0.x) % 32u), ~(~(~var_0.x))), var_0.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(4294967295u, var_0.x, var_0.x), var_0.x, _wgslsmith_clamp_u32(var_0.x, 9120u, 19809u)), vec3<u32>(~4294967295u, 34681u, firstLeadingBit(1u))));
    global1 = array<vec2<f32>, 2>();
    var var_2 = _wgslsmith_mod_i32(_wgslsmith_div_i32(0i, _wgslsmith_dot_vec4_i32(-vec4<i32>(-1i, u_input.a, u_input.a, u_input.a), countOneBits(vec4<i32>(-1i, 1i, -2147483647i, -64897i)))), -61621i) & -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_f_op_f32(func_2(any(vec2<bool>(true, true)) | true, Struct_1(var_0 >> (~vec4<u32>(var_1.x, var_1.x, var_0.x, 0u) % vec4<u32>(32u)), vec2<bool>(true, true), global2[_wgslsmith_index_u32(1u, 7u)], firstTrailingBit(vec4<i32>(u_input.a, -24733i, u_input.a, u_input.a)), _wgslsmith_sub_vec4_u32(var_0 >> (vec4<u32>(var_1.x, 36363u, var_0.x, var_1.x) % vec4<u32>(32u)), ~vec4<u32>(1u, var_1.x, 39568u, 1u))), Struct_1(_wgslsmith_mult_vec4_u32(select(vec4<u32>(4294967295u, 0u, 1u, var_0.x), var_0, vec4<bool>(true, true, false, false)), ~var_0), vec2<bool>(any(vec2<bool>(true, false)), true), var_0.yzw, _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.a, -2147483647i, 11620i), vec4<i32>(7638i, -54538i, u_input.a, u_input.a)), vec4<i32>(44905i, u_input.a, u_input.a, 2147483647i), min(vec4<i32>(1i, u_input.a, -1i, 0i), vec4<i32>(1i, 90738i, 2147483647i, 0i))), var_0), Struct_1(min(vec4<u32>(var_0.x, 0u, var_0.x, var_0.x), vec4<u32>(19144u, 49937u, 1u, var_1.x)), vec2<bool>(true, true), vec3<u32>(var_1.x | var_0.x, abs(var_0.x), var_1.x), reverseBits(vec4<i32>(2147483647i, 1i, 57950i, -2147483647i)), (var_0 << (vec4<u32>(4242u, 41059u, 89518u, 4294967295u) % vec4<u32>(32u))) ^ (vec4<u32>(8341u, var_0.x, 0u, 14164u) & var_0)))));
}

