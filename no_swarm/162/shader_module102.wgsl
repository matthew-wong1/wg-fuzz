struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 16>;

var<private> global1: array<f32, 32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_2) -> i32 {
    var var_0 = 11274u;
    let var_1 = vec4<u32>(firstLeadingBit(select(_wgslsmith_div_u32(4294967295u, _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x)), ~(~55150u), true)), min(u_input.a.x, _wgslsmith_dot_vec4_u32(arg_0.a.a, arg_0.a.a)) << ((_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0.a.a.x, arg_0.a.a.x, arg_0.a.a.x), vec3<u32>(1u, 1u, 1u)) << (max(1u, 0u) % 32u)) % 32u), min(1u, arg_0.a.a.x), ~1u);
    var var_2 = -select(-u_input.b.yy, vec2<i32>(-u_input.c, arg_0.a.b), !(!any(vec4<bool>(true, false, false, true))));
    global1 = array<f32, 32>();
    let var_3 = _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(~vec2<u32>(0u, 1u), u_input.a.xx), u_input.a.zz), 32u)]);
    return _wgslsmith_mult_i32(1i, -1i);
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: f32) -> vec4<u32> {
    var var_0 = vec2<bool>(arg_2.x, arg_2.x);
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var var_2 = ~u_input.a.x;
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-217f)))), _wgslsmith_f_op_f32(sign(var_1))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_1)) * vec2<f32>(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.a.x, 32u)], -1000f), _wgslsmith_f_op_f32(-arg_3)))));
    global1 = array<f32, 32>();
    return _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(countOneBits(~firstTrailingBit(arg_1.a.a)), vec4<u32>(arg_1.a.a.x, u_input.a.x, 40086u, firstLeadingBit(_wgslsmith_add_u32(arg_1.a.a.x, 1u)))), arg_1.a.a);
}

fn func_2(arg_0: i32, arg_1: vec2<i32>, arg_2: vec3<u32>) -> f32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(67713u, 7551u, u_input.a.x, u_input.a.x), countOneBits(vec4<u32>(arg_2.x, arg_2.x, 1u, u_input.a.x)), vec4<u32>(u_input.a.x, 38652u, u_input.a.x, arg_2.x) << (vec4<u32>(u_input.a.x, arg_2.x, arg_2.x, 185530u) % vec4<u32>(32u))), func_4(func_3(Struct_2(Struct_1(vec4<u32>(28344u, 93421u, 4294967295u, 37388u), -12744i))), Struct_2(Struct_1(vec4<u32>(3758u, 75092u, 13741u, 98686u), arg_1.x)), vec3<bool>(false, false, true), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a.x, 32u)] - -1000f))), _wgslsmith_mult_i32(u_input.c, -(arg_0 & arg_0))));
    let var_1 = vec4<bool>(true, all(!vec3<bool>(true, select(false, true, false), true)), false, all(!(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false)))));
    var var_2 = var_0.a;
    var var_3 = var_0;
    var var_4 = reverseBits(_wgslsmith_div_u32(4294967295u, var_3.a.a.x));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(52168u, arg_2.x, var_2.a.x), 32u)] - _wgslsmith_f_op_f32(sign(340f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-2123f)))));
}

fn func_1(arg_0: f32) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_sub_i32(u_input.c, u_input.c), select(vec2<i32>(3382i, u_input.c), u_input.b.yw, false), ~u_input.a))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~u_input.a.x, 32u)]) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(11239u, 32u)])))))));
    var var_1 = Struct_1(vec4<u32>(_wgslsmith_clamp_u32(firstTrailingBit(u_input.a.x), reverseBits(u_input.a.x), countOneBits(abs(u_input.a.x))), u_input.a.x, firstTrailingBit(_wgslsmith_mod_u32(~u_input.a.x, 0u)), select(~(~24134u), 1u, false)), -47726i);
    let var_2 = ~_wgslsmith_div_i32(-_wgslsmith_mod_i32(u_input.d.x, var_1.b), var_1.b);
    global1 = array<f32, 32>();
    global1 = array<f32, 32>();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(true, false, -869f <= _wgslsmith_f_op_f32(func_1(-389f)), any(vec4<bool>(!select(false, false, false), false, u_input.a.x == (4294967295u >> (u_input.a.x % 32u)), all(vec4<bool>(true, true, true, true)))));
    var var_1 = Struct_2(Struct_1(~vec4<u32>(4294967295u, u_input.a.x, 39041u, 134u) << (select(countOneBits(vec4<u32>(u_input.a.x, 5651u, u_input.a.x, 68990u)), vec4<u32>(1u, 4294967295u, u_input.a.x, u_input.a.x), any(vec3<bool>(true, var_0.x, var_0.x))) % vec4<u32>(32u)), u_input.c & -2147483647i));
    var_1 = Struct_2(var_1.a);
    let var_2 = u_input.b.xww | vec3<i32>(var_1.a.b, ~(~_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(0i, u_input.b.x, u_input.b.x, 0i))), var_1.a.b);
    var var_3 = ~u_input.b.x & 1i;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c);
}

