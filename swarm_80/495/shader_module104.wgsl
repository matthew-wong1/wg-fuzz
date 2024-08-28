struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<f32>,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 20> = array<vec2<bool>, 20>(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec3<u32>, arg_1: f32) -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-442f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(arg_1))))))), 0i >> (min(0u, u_input.d.x) % 32u), _wgslsmith_sub_vec3_i32(-(vec3<i32>(-1i, u_input.c, u_input.c) >> (arg_0 % vec3<u32>(32u))) ^ ~vec3<i32>(23530i, u_input.c, u_input.c), ~(-select(vec3<i32>(32379i, u_input.c, -3177i), vec3<i32>(u_input.c, -48660i, -1i), vec3<bool>(false, false, true)))));
    let var_1 = -897f;
    var var_2 = any(vec4<bool>(true, all(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), true)), !(!any(vec3<bool>(false, true, true))), false));
    global0 = array<vec2<bool>, 20>();
    var var_3 = Struct_1(var_0.a, countOneBits(~_wgslsmith_mod_i32(-2147483647i, -8151i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(i32(-1i) * -24047i, u_input.c), var_0.b, ~1i), -vec3<i32>(0i, -2147483647i, u_input.c ^ -1i), countOneBits(var_0.c)));
    return var_3.c.x;
}

fn func_2() -> Struct_1 {
    global0 = array<vec2<bool>, 20>();
    var var_0 = Struct_1(960f, -10392i, (-(~vec3<i32>(-47737i, 2147483647i, u_input.c)) << ((select(vec3<u32>(0u, u_input.a.x, 162383u), vec3<u32>(50250u, 4294967295u, 1u), vec3<bool>(true, true, true)) ^ vec3<u32>(u_input.b, u_input.a.x, u_input.d.x)) % vec3<u32>(32u))) | (~_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, u_input.c, 7040i), vec3<i32>(u_input.c, u_input.c, 0i)) ^ vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.c), vec2<i32>(1i, u_input.c)), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.c, 11038i, 2147483647i), vec4<i32>(u_input.c, 1i, u_input.c, u_input.c)), abs(u_input.c))));
    var var_1 = Struct_1(-861f, var_0.b, vec3<i32>(-_wgslsmith_div_i32(var_0.b, 15868i), abs(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, -2147483647i, var_0.b), vec3<i32>(-2147483647i, -2147483647i, -1i))), -var_0.c.x));
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a, -293f)) + 279f)), func_3(_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(18064u, 1u), u_input.d.x & 4294967295u, u_input.d.x), vec3<u32>(~82026u, _wgslsmith_clamp_u32(30673u, 1u, 4294967295u), u_input.b)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1536f, -1286f), -409f))), _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-30678i, var_1.c.x, -2147483647i), vec3<i32>(var_0.b, 25342i, var_1.b)) >> (vec3<u32>(0u, 33326u, 53928u) % vec3<u32>(32u)), vec3<i32>(-7591i, 6787i, -var_0.b)), -firstLeadingBit(vec3<i32>(2147483647i, -18628i, var_1.c.x))));
    var var_2 = _wgslsmith_add_vec4_i32(-_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(min(vec4<i32>(var_1.c.x, var_0.b, u_input.c, 1i), vec4<i32>(var_1.c.x, 0i, 1i, 2147483647i)), vec4<i32>(var_1.c.x, 1i, -15973i, -1i) << (vec4<u32>(0u, 5103u, 4294967295u, u_input.a.x) % vec4<u32>(32u))), vec4<i32>(6595i, -2147483647i, i32(-1i) * -10316i, 65253i)), ~(~(-vec4<i32>(0i, -2147483647i, 35400i, 7776i)) ^ vec4<i32>(var_1.b ^ var_0.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-123308i, var_0.c.x, var_0.c.x), var_1.c), 78943i >> (1u % 32u), u_input.c)));
    return Struct_1(126f, -u_input.c, ~(~vec3<i32>(~u_input.c, _wgslsmith_mod_i32(0i, var_0.c.x), 0i)));
}

fn func_1() -> Struct_1 {
    var var_0 = func_2();
    var var_1 = ~vec4<u32>(_wgslsmith_mod_u32(countOneBits(abs(0u)), ~u_input.d.x), _wgslsmith_div_u32(firstLeadingBit(10171u), u_input.a.x), ~u_input.b, ~60779u);
    global0 = array<vec2<bool>, 20>();
    var_0 = func_2();
    let var_2 = func_2();
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = vec4<i32>(var_0.c.x, select(35956i << (firstLeadingBit(u_input.a.x) % 32u), var_0.c.x, true), _wgslsmith_sub_i32(_wgslsmith_add_i32(reverseBits(u_input.c), ~(-15220i)), _wgslsmith_mult_i32(u_input.c, abs(u_input.c)) & var_0.c.x), 41602i);
    let var_2 = vec3<f32>(var_0.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)))), -855f);
    let var_3 = _wgslsmith_mod_vec4_u32(firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.d.x, u_input.d.x, 23859u), _wgslsmith_mod_vec4_u32(vec4<u32>(85544u, u_input.b, u_input.d.x, 3396u), vec4<u32>(15549u, u_input.d.x, u_input.a.x, 1u))) & firstLeadingBit(~vec4<u32>(4294967295u, 84763u, 10917u, u_input.d.x))), _wgslsmith_div_vec4_u32(vec4<u32>(~7868u, u_input.a.x, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d.x, 20708u, 71605u, u_input.a.x), vec4<u32>(4294967295u, 84620u, u_input.d.x, u_input.b)), firstLeadingBit(vec4<u32>(0u, u_input.b, u_input.a.x, u_input.a.x))), ~108097u & _wgslsmith_mod_u32(4294967295u, u_input.b)), vec4<u32>(_wgslsmith_div_u32(~61900u, 1u), 49150u, 1u, u_input.d.x)));
    var_1 = vec4<i32>(u_input.c, -25312i << (u_input.a.x % 32u), ((2147483647i & var_0.c.x) << ((min(4294967295u, var_3.x) & u_input.a.x) % 32u)) | ~0i, -14640i);
    let var_4 = func_2();
    var_1 = reverseBits(-vec4<i32>(u_input.c, var_0.b, ~var_4.b, -1i) & vec4<i32>(~(48874i | var_4.c.x), abs(20412i), 1i, -var_0.c.x | max(var_4.c.x, var_1.x)));
    var_1 = ~_wgslsmith_sub_vec4_i32(max(select(reverseBits(vec4<i32>(43802i, var_0.b, -1i, var_1.x)), select(vec4<i32>(-22283i, var_1.x, var_1.x, 0i), vec4<i32>(-1i, 38163i, var_0.b, u_input.c), true), any(global0[_wgslsmith_index_u32(8914u, 20u)])), firstTrailingBit(vec4<i32>(1i, var_4.c.x, 0i, var_4.b))), max(max(vec4<i32>(var_1.x, -2147483647i, 24136i, var_4.c.x) ^ vec4<i32>(var_0.b, 2147483647i, -5438i, 29857i), -vec4<i32>(0i, -36819i, var_4.c.x, var_1.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, 16877i, 7770i, u_input.c), vec4<i32>(var_0.b, var_1.x, u_input.c, u_input.c), vec4<i32>(1i, 2147483647i, -1i, var_4.c.x)) >> (vec4<u32>(4294967295u, u_input.b, 25501u, var_3.x) % vec4<u32>(32u))));
    let var_5 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(1u, var_3.ww, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2 + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_0.a, var_2.x)))), var_3.x, select(-var_4.c.zx ^ -vec2<i32>(var_1.x, 0i), _wgslsmith_mod_vec2_i32(var_1.yy, ~var_5.c.zz), !((var_3.x < var_3.x) & true)));
}

