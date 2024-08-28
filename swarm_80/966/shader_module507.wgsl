struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 28>;

var<private> global1: array<vec2<bool>, 20> = array<vec2<bool>, 20>(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: vec3<i32>) -> f32 {
    let var_0 = vec2<bool>(true, ((select(global0[_wgslsmith_index_u32(1u, 28u)], global0[_wgslsmith_index_u32(arg_0.e, 28u)], global0[_wgslsmith_index_u32(4294967295u, 28u)]) || arg_0.b.x) & (_wgslsmith_f_op_f32(-arg_0.a.a) < _wgslsmith_f_op_f32(-arg_0.c.a))) && global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(~arg_0.e, arg_0.e), 28u)]);
    return _wgslsmith_f_op_f32(arg_0.a.d * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.a.a - arg_0.c.a))));
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = vec4<u32>(1u, 1u, 1u, 1u);
    global1 = array<vec2<bool>, 20>();
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(848f, arg_1.b, vec2<i32>(-59776i, 1603i), arg_1.a), vec3<bool>(true, global0[_wgslsmith_index_u32(3629u, 28u)], false), Struct_1(arg_1.a, vec3<i32>(arg_1.b.x, arg_1.c.x, -2147483647i), vec2<i32>(0i, arg_1.b.x), -1324f), u_input.a.x, var_0.x), _wgslsmith_sub_i32(-1i, firstLeadingBit(arg_1.b.x)), vec3<i32>(21966i, i32(-1i) * -16893i, u_input.a.x))), vec3<i32>(-2147483647i, -2147483647i, _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(arg_1.c.x, -1i, u_input.a.x, 0i)), vec4<i32>(arg_1.c.x, arg_0, -50547i, u_input.a.x))), -(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, 2147483647i), u_input.a.zx) | arg_1.c), arg_1.d), vec3<bool>(true, true, _wgslsmith_div_i32(arg_0, u_input.a.x) == arg_0), Struct_1(_wgslsmith_f_op_f32(-arg_1.d), u_input.a, _wgslsmith_mult_vec2_i32(~u_input.a.yz ^ (vec2<i32>(-20953i, -10258i) << (vec2<u32>(var_0.x, 4294967295u) % vec2<u32>(32u))), _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(arg_1.b.zz, vec2<i32>(u_input.a.x, 10180i)), vec2<i32>(arg_0, arg_1.c.x))), -1657f), 2147483647i, ~var_0.x);
    global0 = array<bool, 28>();
    let var_2 = Struct_1(arg_1.d, ~(~vec3<i32>(1i, var_1.a.c.x, arg_0)), ~vec2<i32>(-16401i, _wgslsmith_dot_vec2_i32(u_input.a.zy, vec2<i32>(arg_1.c.x, arg_1.c.x))), arg_1.d);
    return Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(select(1145f, arg_1.d, global0[_wgslsmith_index_u32(1u, 28u)])))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1247f) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2191f, var_2.a))))), var_1.c.b, _wgslsmith_clamp_vec2_i32(vec2<i32>(~select(u_input.a.x, var_1.d, global0[_wgslsmith_index_u32(var_0.x, 28u)]), arg_0), max(u_input.a.zz, vec2<i32>(1i, var_2.c.x)), select(arg_1.c, ~u_input.a.xy, !select(var_1.b.yx, vec2<bool>(false, true), var_1.b.x))), _wgslsmith_f_op_f32(f32(-1f) * -891f));
}

fn func_1(arg_0: f32, arg_1: vec3<u32>) -> vec2<bool> {
    global0 = array<bool, 28>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1290f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1508f))))), (vec3<i32>(~0i, u_input.a.x, u_input.a.x) << (~countOneBits(arg_1) % vec3<u32>(32u))) << (~(~arg_1) % vec3<u32>(32u)), _wgslsmith_div_vec2_i32(reverseBits(vec2<i32>(5255i, -10443i)) & ~u_input.a.xy, max(~u_input.a.zy, vec2<i32>(-17527i, 1i))) & u_input.a.zy, _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)) + _wgslsmith_f_op_f32(floor(arg_0)))));
    var var_1 = func_2(_wgslsmith_dot_vec2_i32(abs(var_0.c), abs(var_0.c)), var_0);
    global0 = array<bool, 28>();
    let var_2 = select(abs(vec3<u32>(firstTrailingBit(arg_1.x) & arg_1.x, arg_1.x, 0u)), vec3<u32>(arg_1.x & arg_1.x, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 44509u, 1u, arg_1.x), _wgslsmith_add_vec4_u32(vec4<u32>(arg_1.x, arg_1.x, arg_1.x, 34991u), vec4<u32>(59897u, 4294967295u, arg_1.x, arg_1.x))), vec4<u32>(max(19288u, arg_1.x), arg_1.x ^ arg_1.x, _wgslsmith_dot_vec3_u32(arg_1, vec3<u32>(57075u, arg_1.x, 31500u)), select(arg_1.x, arg_1.x, true))), arg_1.x), select(!(!vec3<bool>(global0[_wgslsmith_index_u32(0u, 28u)], global0[_wgslsmith_index_u32(arg_1.x, 28u)], true)), select(vec3<bool>(1000f >= var_1.d, select(true, true, global0[_wgslsmith_index_u32(arg_1.x, 28u)]), true), select(select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 28u)], global0[_wgslsmith_index_u32(arg_1.x, 28u)], true), vec3<bool>(true, true, global0[_wgslsmith_index_u32(arg_1.x, 28u)]), false), vec3<bool>(true, true, true), select(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 28u)], true, global0[_wgslsmith_index_u32(1u, 28u)]), vec3<bool>(global0[_wgslsmith_index_u32(arg_1.x, 28u)], global0[_wgslsmith_index_u32(15208u, 28u)], false), global0[_wgslsmith_index_u32(arg_1.x, 28u)])), select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), global0[_wgslsmith_index_u32(arg_1.x, 28u)]), vec3<bool>(global0[_wgslsmith_index_u32(arg_1.x, 28u)], false, true), vec3<bool>(global0[_wgslsmith_index_u32(arg_1.x, 28u)], global0[_wgslsmith_index_u32(arg_1.x, 28u)], false))), vec3<bool>(true, select(true | global0[_wgslsmith_index_u32(arg_1.x, 28u)], global0[_wgslsmith_index_u32(4294967295u, 28u)] | false, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_1.x, 0u), 28u)]), -var_0.c.x == var_1.b.x)));
    return global1[_wgslsmith_index_u32(1u, 20u)];
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = arg_2.c.d;
    var var_1 = arg_0.b.x;
    let var_2 = 0u;
    var var_3 = func_2(0i, func_2(_wgslsmith_dot_vec3_i32(-arg_2.c.b, select(u_input.a, vec3<i32>(-42223i, u_input.a.x, -18482i), true)) ^ -arg_2.a.c.x, func_2(0i, func_2(_wgslsmith_sub_i32(33257i, 103521i), Struct_1(arg_2.c.d, arg_0.b, arg_2.c.b.xy, arg_0.d)))));
    var var_4 = Struct_2(func_2(reverseBits(_wgslsmith_dot_vec4_i32(~vec4<i32>(-33419i, u_input.a.x, arg_0.b.x, -1i), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, arg_2.d, arg_0.c.x, u_input.a.x), vec4<i32>(var_3.c.x, u_input.a.x, 58727i, 4890i)))), func_2(2147483647i, arg_0)), arg_2.b, arg_0, ~max(~min(u_input.a.x, -4013i), -2147483647i), _wgslsmith_dot_vec3_u32(min(vec3<u32>(58559u, firstLeadingBit(arg_2.e), arg_2.e), _wgslsmith_add_vec3_u32(abs(vec3<u32>(10284u, 1u, arg_2.e)), _wgslsmith_div_vec3_u32(vec3<u32>(11127u, var_2, 0u), vec3<u32>(1u, arg_2.e, 0u)))), _wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(arg_2.e, arg_2.e, var_2)), ~_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 32545u, arg_2.e), vec3<u32>(1u, 4294967295u, var_2)))));
    return func_2(var_4.a.c.x, func_2(arg_2.a.c.x, arg_2.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1083f, 840f)), -418f)), vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), u_input.a.x), _wgslsmith_dot_vec2_i32(u_input.a.yx, u_input.a.xy) >> (8974u % 32u), _wgslsmith_div_i32(-u_input.a.x, ~16867i)), u_input.a.xy, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1489f - 699f) * 506f), 715f)), func_1(_wgslsmith_f_op_f32(f32(-1f) * -804f), vec3<u32>(max(_wgslsmith_mod_u32(4294967295u, 76883u), ~50455u), 1u, 1u)), Struct_2(func_2(31102i, func_2(_wgslsmith_mult_i32(2414i, u_input.a.x), Struct_1(317f, vec3<i32>(u_input.a.x, -1i, 0i), vec2<i32>(u_input.a.x, 21197i), -307f))), !select(select(vec3<bool>(false, true, global0[_wgslsmith_index_u32(0u, 28u)]), vec3<bool>(false, false, global0[_wgslsmith_index_u32(8715u, 28u)]), vec3<bool>(global0[_wgslsmith_index_u32(9138u, 28u)], global0[_wgslsmith_index_u32(4294967295u, 28u)], global0[_wgslsmith_index_u32(3399u, 28u)])), vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 28u)], true), true), func_2(u_input.a.x, Struct_1(_wgslsmith_f_op_f32(abs(-729f)), ~u_input.a, _wgslsmith_mult_vec2_i32(u_input.a.zz, vec2<i32>(-6465i, u_input.a.x)), _wgslsmith_div_f32(-824f, 1000f))), 13694i, 1u));
    global1 = array<vec2<bool>, 20>();
    var var_1 = var_0;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -731f), _wgslsmith_f_op_f32(-var_0.d), global0[_wgslsmith_index_u32(57652u, 28u)])), u_input.a, var_0.c, _wgslsmith_f_op_f32(var_1.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var var_3 = var_0;
    let var_4 = Struct_2(var_2, select(vec3<bool>(true, true, any(vec4<bool>(global0[_wgslsmith_index_u32(23493u, 28u)], true, global0[_wgslsmith_index_u32(1u, 28u)], global0[_wgslsmith_index_u32(4294967295u, 28u)]))), vec3<bool>(true, func_1(_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(-207f, vec3<i32>(var_2.b.x, var_0.b.x, 24735i), vec2<i32>(-54063i, 0i), var_2.d), vec3<bool>(true, global0[_wgslsmith_index_u32(122687u, 28u)], global0[_wgslsmith_index_u32(8666u, 28u)]), Struct_1(556f, vec3<i32>(var_2.c.x, -6824i, 55087i), vec2<i32>(-2147483647i, 2147483647i), 751f), var_0.b.x, 1u), var_1.b.x, u_input.a)), select(vec3<u32>(19825u, 4294967295u, 0u), vec3<u32>(1493u, 47025u, 0u), false)).x, true), _wgslsmith_sub_i32(-2147483647i, u_input.a.x) < (var_1.b.x >> (1u % 32u))), var_2, _wgslsmith_div_i32(func_2(i32(-1i) * -2121i, func_4(Struct_1(-1678f, vec3<i32>(2147483647i, 67565i, var_3.c.x), vec2<i32>(var_1.c.x, var_0.c.x), var_3.a), vec2<bool>(false, global0[_wgslsmith_index_u32(1u, 28u)]), Struct_2(var_2, vec3<bool>(global0[_wgslsmith_index_u32(1u, 28u)], false, true), Struct_1(var_3.a, var_3.b, vec2<i32>(var_2.c.x, var_1.c.x), var_1.a), var_3.b.x, 44108u))).b.x ^ -1i, func_4(Struct_1(_wgslsmith_f_op_f32(var_1.d + var_1.a), var_3.b, var_1.c, _wgslsmith_f_op_f32(-var_3.d)), vec2<bool>(any(global1[_wgslsmith_index_u32(12275u, 20u)]), false), Struct_2(var_0, select(vec3<bool>(false, global0[_wgslsmith_index_u32(7462u, 28u)], global0[_wgslsmith_index_u32(12250u, 28u)]), vec3<bool>(global0[_wgslsmith_index_u32(21972u, 28u)], false, global0[_wgslsmith_index_u32(19306u, 28u)]), global0[_wgslsmith_index_u32(16847u, 28u)]), Struct_1(-672f, vec3<i32>(2147483647i, -2147483647i, -29936i), var_0.b.xx, var_0.d), -1i, _wgslsmith_div_u32(15532u, 44747u))).c.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(9920u, 1u, ~6026u, ~1u), ~_wgslsmith_mod_vec4_u32(vec4<u32>(37132u, 0u, 75576u, 46260u), vec4<u32>(1084u, 51028u, 48875u, 34398u))));
    let var_5 = Struct_1(func_2(func_4(func_2(~2147483647i, var_2), func_1(_wgslsmith_f_op_f32(-1064f * -366f), _wgslsmith_div_vec3_u32(vec3<u32>(0u, var_4.e, 15305u), vec3<u32>(1u, var_4.e, var_4.e))), Struct_2(func_2(var_2.b.x, Struct_1(408f, vec3<i32>(-25159i, var_1.c.x, 0i), var_2.b.zx, -108f)), select(var_4.b, vec3<bool>(false, true, var_4.b.x), vec3<bool>(false, global0[_wgslsmith_index_u32(48880u, 28u)], var_4.b.x)), func_2(var_3.b.x, Struct_1(var_0.a, var_1.b, var_3.b.yz, var_4.c.a)), _wgslsmith_add_i32(var_4.c.c.x, 24021i), _wgslsmith_dot_vec3_u32(vec3<u32>(var_4.e, var_4.e, var_4.e), vec3<u32>(0u, var_4.e, var_4.e)))).c.x, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -645f)), firstLeadingBit(var_3.b ^ var_4.a.b), _wgslsmith_mod_vec2_i32(vec2<i32>(var_3.c.x, var_1.b.x), var_3.b.zx) | firstLeadingBit(vec2<i32>(0i, var_4.a.b.x)), _wgslsmith_f_op_f32(-1441f + _wgslsmith_f_op_f32(select(1263f, var_2.a, global0[_wgslsmith_index_u32(var_4.e, 28u)]))))).d, _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(77468i, firstLeadingBit(0i)), 28500i, 2147483647i), u_input.a & var_0.b), func_2(var_0.b.x, func_2(var_0.b.x, Struct_1(271f, ~vec3<i32>(var_0.c.x, 2147483647i, var_4.c.b.x), ~vec2<i32>(0i, 31243i), -1000f))).b.yx, 1509f);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a);
}

