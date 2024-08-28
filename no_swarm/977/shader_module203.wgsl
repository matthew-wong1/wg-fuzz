struct Struct_1 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: u32,
    d: i32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec3<u32>(37416u, 20390u, 0u), vec3<bool>(false, true, false), 2064u, 0i, vec3<f32>(-348f, -203f, -249f)), Struct_1(vec3<u32>(26559u, 4294967295u, 58573u), vec3<bool>(false, true, true), 1u, 1i, vec3<f32>(1360f, -1507f, 1000f)), Struct_1(vec3<u32>(13183u, 76604u, 19049u), vec3<bool>(false, false, false), 63766u, i32(-2147483648), vec3<f32>(1000f, 350f, -1082f)), Struct_1(vec3<u32>(18077u, 1u, 1u), vec3<bool>(true, true, true), 17718u, -25778i, vec3<f32>(-2268f, -284f, 563f)), Struct_1(vec3<u32>(12448u, 0u, 86639u), vec3<bool>(false, false, true), 85873u, -11593i, vec3<f32>(863f, 105f, 1896f)), Struct_1(vec3<u32>(13977u, 1u, 4294967295u), vec3<bool>(false, true, true), 55274u, 0i, vec3<f32>(167f, 1669f, 1638f)), Struct_1(vec3<u32>(4294967295u, 8435u, 81402u), vec3<bool>(true, true, true), 1u, 0i, vec3<f32>(2515f, -1210f, -1077f)), Struct_1(vec3<u32>(93783u, 1773u, 9974u), vec3<bool>(false, false, false), 16805u, -1i, vec3<f32>(312f, 1930f, -563f)), Struct_1(vec3<u32>(45409u, 1u, 0u), vec3<bool>(false, false, true), 7393u, 18261i, vec3<f32>(-489f, -867f, -1349f)));

var<private> global1: vec3<i32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> vec3<u32> {
    let var_0 = (abs(~(~(-2147483647i))) == global1.x) & (_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.e.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.e.x)))) != arg_1.e.x);
    return max(~select(firstLeadingBit(arg_1.a), ~(~arg_1.a), arg_1.b), ~vec3<u32>(_wgslsmith_sub_u32(58838u, abs(arg_0)), countOneBits(_wgslsmith_sub_u32(48079u, 10373u)), 37716u));
}

fn func_2(arg_0: u32) -> vec3<i32> {
    let var_0 = Struct_1(func_3(19144u, global0[_wgslsmith_index_u32(~1u, 9u)]), select(vec3<bool>(true, true, true), vec3<bool>(~arg_0 <= _wgslsmith_add_u32(1u, arg_0), any(vec4<bool>(true, true, true, true)), true), vec3<bool>(false, true, false)), ~reverseBits(~countOneBits(u_input.b)), ~(-27917i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(267f, -633f, -1386f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-434f, -1493f, -1000f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(114f, 958f, 951f))) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1131f, 329f, -1384f)))))));
    var var_1 = all(!select(vec3<bool>(false, var_0.b.x, true), vec3<bool>(true, any(vec3<bool>(true, false, var_0.b.x)), false), !select(var_0.b, var_0.b, var_0.b.x)));
    return vec3<i32>(var_0.d, ~_wgslsmith_dot_vec2_i32(countOneBits(global1.zy), global1.zy | global1.zx), 0i);
}

fn func_1() -> vec3<u32> {
    let var_0 = u_input.a;
    global1 = vec3<i32>(-16785i, global1.x, _wgslsmith_sub_i32(-_wgslsmith_mult_i32(firstLeadingBit(80355i), _wgslsmith_div_i32(global1.x, global1.x)), global1.x));
    global0 = array<Struct_1, 9>();
    global0 = array<Struct_1, 9>();
    var var_1 = _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(0i, 0i, global1.x) & firstLeadingBit(~vec3<i32>(global1.x, -1i, global1.x)), _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(global1.x, global1.x, -1i), ~vec3<i32>(2147483647i, global1.x, global1.x)), ~_wgslsmith_mod_vec3_i32(vec3<i32>(global1.x, global1.x, global1.x), vec3<i32>(1i, global1.x, global1.x)))), func_2(_wgslsmith_add_u32(1u, ~max(4294967295u, var_0.x))));
    return _wgslsmith_mult_vec3_u32(select(~(~vec3<u32>(var_0.x, 15754u, var_0.x) & vec3<u32>(u_input.a.x, 115020u, u_input.b)), ~select(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), countOneBits(vec3<u32>(45613u, 4294967295u, 779u)), any(vec3<bool>(true, false, true))), vec3<bool>(true, true, true)), abs(~(_wgslsmith_sub_vec3_u32(vec3<u32>(24586u, var_0.x, 4294967295u), vec3<u32>(var_0.x, 45430u, 0u)) << (vec3<u32>(25876u, 29676u, 1u) % vec3<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(abs(select(countOneBits(vec3<u32>(1u, 4294967295u, 1u)), vec3<u32>(0u, 4438u, u_input.a.x), true)) << (_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 0u, 1u), vec3<u32>(u_input.b, u_input.b, u_input.a.x) >> (vec3<u32>(u_input.b, u_input.b, u_input.b) % vec3<u32>(32u))), _wgslsmith_mod_vec3_u32(func_1(), vec3<u32>(9684u, 48598u, 69304u))) % vec3<u32>(32u)), vec3<bool>(true, true, true), ~abs(u_input.b), global1.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1752f))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(round(837f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1726f * 123f), -976f, _wgslsmith_f_op_f32(f32(-1f) * -164f)) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1000f, 150f, -943f))))))));
    var var_1 = var_0.b.x;
    var var_2 = !(!any(vec2<bool>(select(false, true, var_0.b.x), var_0.b.x)));
    var_2 = true;
    global1 = reverseBits(abs(-(~vec3<i32>(var_0.d, global1.x, var_0.d)))) ^ select(abs(-vec3<i32>(global1.x, var_0.d, var_0.d)), (-vec3<i32>(1082i, global1.x, 2147483647i) >> (~var_0.a % vec3<u32>(32u))) & abs(_wgslsmith_mult_vec3_i32(vec3<i32>(global1.x, 27392i, 2147483647i), vec3<i32>(global1.x, -1i, 38404i))), false);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.e.x, var_0.e.x);
}

