struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 28>;

var<private> global1: array<Struct_1, 29>;

var<private> global2: array<vec4<u32>, 23> = array<vec4<u32>, 23>(vec4<u32>(0u, 73190u, 39088u, 81049u), vec4<u32>(4294967295u, 1u, 1u, 4294967295u), vec4<u32>(1u, 29358u, 4294967295u, 0u), vec4<u32>(82309u, 0u, 2918u, 4294967295u), vec4<u32>(4294967295u, 5812u, 19561u, 66015u), vec4<u32>(43823u, 1u, 27288u, 4294967295u), vec4<u32>(1u, 71274u, 41934u, 4294967295u), vec4<u32>(76376u, 18460u, 0u, 1u), vec4<u32>(122446u, 30489u, 59821u, 87930u), vec4<u32>(9656u, 25878u, 1u, 1u), vec4<u32>(12107u, 23586u, 78452u, 0u), vec4<u32>(44401u, 1u, 4294967295u, 3825u), vec4<u32>(15930u, 4294967295u, 67778u, 1u), vec4<u32>(49131u, 4294967295u, 1u, 1u), vec4<u32>(115262u, 1u, 118877u, 4294967295u), vec4<u32>(1u, 1u, 10962u, 1u), vec4<u32>(0u, 1u, 41338u, 4294967295u), vec4<u32>(1u, 89317u, 39640u, 76104u), vec4<u32>(25580u, 0u, 34115u, 1038u), vec4<u32>(0u, 25464u, 0u, 37319u), vec4<u32>(4294967295u, 9152u, 0u, 45568u), vec4<u32>(47291u, 1u, 4294967295u, 1u), vec4<u32>(1u, 0u, 25784u, 0u));

var<private> global3: array<i32, 12>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
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

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    return !select(select(vec3<bool>(all(arg_0.a), !arg_0.a.x, !arg_0.a.x), !select(vec3<bool>(false, true, true), vec3<bool>(true, arg_0.a.x, true), vec3<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x)), ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 28u)], 28u)], 28u)] < 0u), vec3<bool>(arg_0.a.x, false, true), select(vec3<bool>(false, true, 30529i == global3[_wgslsmith_index_u32(68141u, 12u)]), select(!vec3<bool>(arg_0.a.x, arg_0.a.x, false), vec3<bool>(false, false, true), global0[_wgslsmith_index_u32(u_input.c, 28u)] < 7431u), vec3<bool>(true, !arg_0.a.x, !arg_0.a.x)));
}

fn func_4(arg_0: vec3<bool>) -> i32 {
    let var_0 = global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(18329u, global0[_wgslsmith_index_u32(4294967295u, 28u)] ^ (1u >> (firstLeadingBit(29584u) % 32u))), 28u)], 28u)], 23u)];
    var var_1 = u_input.b;
    var_1 = vec2<i32>(~var_1.x, -8162i);
    var_1 = u_input.b;
    var var_2 = Struct_1(select(vec2<bool>(true, any(!vec2<bool>(arg_0.x, true))), !(!arg_0.yz), all(select(vec4<bool>(false, arg_0.x, true, false), select(vec4<bool>(false, false, arg_0.x, arg_0.x), vec4<bool>(true, false, arg_0.x, arg_0.x), vec4<bool>(false, arg_0.x, arg_0.x, false)), vec4<bool>(true, true, false, true)))));
    return firstTrailingBit(min(i32(-1i) * -29599i, 2147483647i)) >> (select(reverseBits(~(~1u)), var_0.x | firstTrailingBit(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(10873u, 28u)], var_0.x), 28u)]), arg_0.x) % 32u);
}

fn func_2(arg_0: vec3<u32>, arg_1: i32, arg_2: u32) -> Struct_1 {
    var var_0 = vec3<i32>(~func_4(func_3(global1[_wgslsmith_index_u32(24629u, 29u)])), min(_wgslsmith_div_i32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global0[_wgslsmith_index_u32(2343u, 28u)], u_input.c, 117218u), vec4<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_2, 28u)], 28u)], u_input.d.x, global0[_wgslsmith_index_u32(u_input.d.x, 28u)])), 12u)], arg_1), -_wgslsmith_mod_i32(reverseBits(-25622i), firstLeadingBit(global3[_wgslsmith_index_u32(u_input.c, 12u)]))), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(min(~46703u, 1u), min(~63633u, arg_0.x ^ 32861u)), ~arg_0.xz), 12u)]);
    global1 = array<Struct_1, 29>();
    let var_1 = _wgslsmith_f_op_f32(select(835f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))))), !((any(vec2<bool>(true, true)) | true) || any(vec2<bool>(false, false)))));
    var_0 = _wgslsmith_mult_vec3_i32(-(~vec3<i32>(1i, 2147483647i, 2147483647i)), _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(max(vec3<i32>(-1i, -1016i, var_0.x), vec3<i32>(42849i, global3[_wgslsmith_index_u32(u_input.d.x, 12u)], 14365i)), -vec3<i32>(1i, 1i, -2147483647i), abs(vec3<i32>(u_input.a, global3[_wgslsmith_index_u32(arg_2, 12u)], -2147483647i))), -firstLeadingBit(vec3<i32>(13365i, 47392i, -2147483647i))) & ~countOneBits(vec3<i32>(-2159i, 1i, 32128i) << (vec3<u32>(global0[_wgslsmith_index_u32(arg_0.x, 28u)], 28709u, 1u) % vec3<u32>(32u))));
    global2 = array<vec4<u32>, 23>();
    return global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32((66474u << (0u % 32u)) & abs(global0[_wgslsmith_index_u32(~arg_0.x, 28u)] >> (global0[_wgslsmith_index_u32(abs(0u), 28u)] % 32u)), 21388u), 28u)], 29u)];
}

fn func_1(arg_0: vec4<bool>, arg_1: f32, arg_2: vec4<i32>, arg_3: Struct_1) -> StorageBuffer {
    global1 = array<Struct_1, 29>();
    var var_0 = func_2(~(~(~vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(u_input.c, 28u)], 0u) & ~vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 28u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(52673u, 28u)], 28u)], 28u)], u_input.d.x))), -(~arg_2.x), abs(select(42709u, _wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.c, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(652u, 28u)], 28u)]), 4294967295u), true)));
    var var_1 = 7258i;
    var var_2 = Struct_1(!vec2<bool>(false, arg_3.a.x));
    var var_3 = Struct_1(var_2.a);
    return StorageBuffer(1i, vec3<u32>(_wgslsmith_div_u32(1u, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(u_input.d.x, 28u)], global0[_wgslsmith_index_u32(4294967295u, 28u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(8130u, 28u)], 28u)]) & vec3<u32>(6387u, global0[_wgslsmith_index_u32(4294967295u, 28u)], global0[_wgslsmith_index_u32(1u, 28u)]), _wgslsmith_add_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(20490u, 28u)], 1u, global0[_wgslsmith_index_u32(u_input.d.x, 28u)]), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 28u)], 28u)], global0[_wgslsmith_index_u32(u_input.d.x, 28u)], global0[_wgslsmith_index_u32(4294967295u, 28u)]))), 28u)]), min(~global0[_wgslsmith_index_u32(~u_input.c, 28u)], ~u_input.c), ~u_input.d.x), min(~(~select(vec3<u32>(4294967295u, u_input.c, u_input.d.x), vec3<u32>(global0[_wgslsmith_index_u32(27979u, 28u)], 1u, global0[_wgslsmith_index_u32(u_input.c, 28u)]), vec3<bool>(false, false, true))), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u & u_input.c, u_input.c, ~global0[_wgslsmith_index_u32(32697u, 28u)]), abs(vec3<u32>(0u, global0[_wgslsmith_index_u32(4294967295u, 28u)], 1u)))), _wgslsmith_f_op_f32(abs(930f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec2<bool>((1i | u_input.b.x) >= -_wgslsmith_mult_i32(1i, 44805i), true), vec2<bool>(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true))), !any(vec3<bool>(true, false, false))), vec2<bool>(true, true));
    let var_1 = firstLeadingBit(~(~(vec2<i32>(0i, -2147483647i) | (u_input.b ^ u_input.b))));
    let x = u_input.a;
    s_output = func_1(!vec4<bool>(max(38351u, 0u) == _wgslsmith_add_u32(global0[_wgslsmith_index_u32(0u, 28u)], u_input.d.x), !(var_0.x || var_0.x), !(var_0.x | true), true), _wgslsmith_f_op_f32(-1f), vec4<i32>(-(~global3[_wgslsmith_index_u32(1u, 12u)]), min(u_input.b.x, 0i | (u_input.a | var_1.x)), 2147483647i, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(1i, 1i, -2147483647i)), vec3<i32>(1i, 0i, global3[_wgslsmith_index_u32(1u, 12u)]) | vec3<i32>(28018i, 21513i, 9535i)), _wgslsmith_sub_vec3_i32(vec3<i32>(var_1.x, -1i, -63065i), max(vec3<i32>(u_input.a, -2147483647i, -1i), vec3<i32>(1i, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(17468u, 28u)], 12u)], global3[_wgslsmith_index_u32(0u, 12u)]))))), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~(~(u_input.d.x & 4294967295u)), 28u)], 29u)]);
}

