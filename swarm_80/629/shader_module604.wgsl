struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(71018i, vec4<f32>(-558f, 101f, 744f, 740f), vec2<bool>(true, false));

var<private> global1: Struct_2 = Struct_2(554f, 1000f, 0i, vec4<u32>(26916u, 12928u, 1u, 18206u), 0u);

var<private> global2: f32 = 588f;

var<private> global3: array<u32, 16> = array<u32, 16>(0u, 53167u, 16579u, 35482u, 1u, 0u, 1u, 109600u, 71663u, 4294967295u, 4294967295u, 0u, 45023u, 0u, 1u, 801u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec4<f32>, arg_2: vec4<u32>, arg_3: i32) -> vec3<bool> {
    let var_0 = any(select(vec4<bool>(!all(vec4<bool>(global0.c.x, global0.c.x, false, false)), true, !all(vec3<bool>(global0.c.x, global0.c.x, false)), true), select(!select(vec4<bool>(true, global0.c.x, false, true), vec4<bool>(true, global0.c.x, global0.c.x, false), global0.c.x), select(vec4<bool>(true, global0.c.x, global0.c.x, global0.c.x), vec4<bool>(true, false, false, global0.c.x), !vec4<bool>(false, true, global0.c.x, global0.c.x)), false), !global0.c.x || (_wgslsmith_f_op_f32(round(1442f)) == arg_0)));
    let var_1 = _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(trunc(1737f)));
    var var_2 = Struct_1(_wgslsmith_dot_vec3_i32(-u_input.a, firstLeadingBit(vec3<i32>(1i, 2147483647i | global1.c, _wgslsmith_sub_i32(arg_3, arg_3)))), global0.b, !global0.c);
    global3 = array<u32, 16>();
    let var_3 = _wgslsmith_f_op_vec3_f32(exp2(arg_1.yxz));
    return select(vec3<bool>(global0.c.x, false, false), vec3<bool>(true, all(global0.c) & ((global0.c.x & var_0) && select(false, false, false)), var_0), select(vec3<bool>(global0.c.x, false, !var_0), select(vec3<bool>(all(vec2<bool>(var_2.c.x, false)), !var_0, arg_3 == global0.a), select(vec3<bool>(true, true, global0.c.x), select(vec3<bool>(var_2.c.x, false, true), vec3<bool>(false, true, true), true), any(vec4<bool>(true, var_2.c.x, var_0, true))), !select(vec3<bool>(false, global0.c.x, false), vec3<bool>(false, var_2.c.x, false), global0.c.x)), !select(!vec3<bool>(true, var_0, var_2.c.x), select(vec3<bool>(true, var_2.c.x, true), vec3<bool>(var_0, true, true), vec3<bool>(false, true, var_0)), var_0)));
}

fn func_2() -> vec4<i32> {
    global0 = Struct_1(-abs(_wgslsmith_mult_i32(-72549i, ~global1.c)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global0.b, global0.b))))), global0.c);
    global0 = Struct_1(_wgslsmith_mod_i32(min(~(~global1.c), countOneBits(reverseBits(global0.a))), _wgslsmith_dot_vec3_i32(select(~vec3<i32>(18600i, u_input.b, 8783i), vec3<i32>(global0.a, global0.a, u_input.a.x), func_3(-444f, vec4<f32>(307f, 1605f, global1.b, -532f), vec4<u32>(19320u, global3[_wgslsmith_index_u32(global1.d.x, 16u)], u_input.c, global3[_wgslsmith_index_u32(0u, 16u)]), global0.a)), vec3<i32>(-2147483647i, -2147483647i, global1.c) & -u_input.a)), global0.b, vec2<bool>(global0.c.x && all(vec2<bool>(global0.c.x, true)), any(!func_3(273f, vec4<f32>(global0.b.x, 119f, -149f, global0.b.x), global1.d, -19968i))));
    var var_0 = Struct_1(global0.a, global0.b, global0.c);
    var var_1 = Struct_2(global1.b, -1675f, u_input.a.x, _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(global1.d, global1.d, select(global1.d, global1.d, false)), ~(global1.d | global1.d)), firstLeadingBit(vec4<u32>(u_input.c, global1.d.x, 0u << (global1.e % 32u), firstTrailingBit(4294967295u)))), 20114u);
    var_0 = Struct_1(countOneBits(-46131i), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-968f, var_0.b.x)) + var_1.a), var_0.b.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-542f - _wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.b, -261f, false))), all(select(vec3<bool>(false, global0.c.x, false), vec3<bool>(global0.c.x, false, false), var_0.c.x)))), var_1.a), global0.c);
    return _wgslsmith_mod_vec4_i32(-_wgslsmith_mod_vec4_i32(~vec4<i32>(global0.a, 0i, global1.c, global1.c), vec4<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, global1.c, global1.c, global0.a), vec4<i32>(global1.c, 13106i, global1.c, global1.c)), -20130i, ~(-17138i))), ~vec4<i32>(~(-1i), countOneBits(global0.a), global1.c >> (13319u % 32u), 1i) << (~vec4<u32>(_wgslsmith_clamp_u32(global1.d.x, u_input.c, 123u), 1u, 1u, var_1.e | 1u) % vec4<u32>(32u)));
}

fn func_1(arg_0: i32) -> bool {
    var var_0 = -1035f;
    let var_1 = min(u_input.a, ~u_input.a);
    let var_2 = global1.c;
    let var_3 = max(_wgslsmith_clamp_vec4_i32(select(select(_wgslsmith_add_vec4_i32(vec4<i32>(1i, -409i, global1.c, 18140i), vec4<i32>(u_input.b, var_1.x, 0i, -1i)), vec4<i32>(global0.a, -1i, arg_0, global0.a), vec4<bool>(false, global0.c.x, global0.c.x, true)), ~(~vec4<i32>(global1.c, 2147483647i, global0.a, global0.a)), vec4<bool>(!global0.c.x, global3[_wgslsmith_index_u32(1u, 16u)] > 31954u, any(global0.c), global0.c.x)), func_2(), vec4<i32>(_wgslsmith_mult_i32(-60781i, global1.c) ^ arg_0, var_1.x, -_wgslsmith_mult_i32(-1i, global0.a), arg_0)), vec4<i32>(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(global0.a, u_input.b, arg_0)), u_input.a), -53279i, var_1.x, global1.c) >> (vec4<u32>(global1.e, 1u, max(~36257u, ~u_input.c), max(u_input.c, global1.d.x)) % vec4<u32>(32u)));
    var var_4 = var_3 | vec4<i32>(global1.c, ~firstTrailingBit(2147483647i), reverseBits(~var_1.x), _wgslsmith_mod_i32(firstTrailingBit(-global0.a), _wgslsmith_clamp_i32(1i, var_1.x, -22710i >> (global1.d.x % 32u))));
    return all(!vec4<bool>(global0.c.x, global0.c.x, true, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    var var_1 = _wgslsmith_f_op_f32(global0.b.x - global0.b.x);
    global1 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1938f), 256f, global0.a ^ u_input.b, global1.d, ~(~1u));
    let var_2 = select(select(!global0.c, vec2<bool>(global0.c.x, func_1(global1.c | 14206i)), !select(vec2<bool>(global0.c.x, false), !global0.c, vec2<bool>(global0.c.x, global0.c.x))), !vec2<bool>(!(global0.b.x >= -900f), global0.c.x), all(vec3<bool>(true, !func_1(global0.a), _wgslsmith_f_op_f32(-global1.a) >= 891f)));
    global2 = _wgslsmith_f_op_f32(-global1.a);
    global3 = array<u32, 16>();
    let var_3 = 1322f;
    var var_4 = Struct_1(~(-(i32(-1i) * -1730i)), _wgslsmith_f_op_vec4_f32(-global0.b), global0.c);
    global3 = array<u32, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(var_4.b))), 0u, _wgslsmith_div_u32(global3[_wgslsmith_index_u32(min(115662u, reverseBits(~1u)), 16u)], ~(_wgslsmith_div_u32(u_input.c, 31324u) << (~30069u % 32u))), vec3<u32>(1u, 22160u >> (~reverseBits(4294967295u) % 32u), u_input.c), var_3);
}

