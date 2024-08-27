struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<u32>(44387u, 36721u, 4364u, 37984u), vec3<bool>(false, true, true), false, false);

var<private> global1: array<Struct_1, 30>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<i32>, arg_1: i32, arg_2: i32, arg_3: Struct_1) -> u32 {
    let var_0 = arg_3;
    var var_1 = _wgslsmith_mult_i32(2147483647i, i32(-1i) * -1i) & arg_2;
    var var_2 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-507f + -885f))), 1f, -1211f, _wgslsmith_f_op_f32(-105f + _wgslsmith_f_op_f32(step(-198f, -844f))))));
    global0 = var_0;
    let var_3 = !select(!select(select(vec4<bool>(true, false, true, arg_3.c), vec4<bool>(false, global0.d, false, true), vec4<bool>(true, false, var_0.b.x, var_0.c)), select(vec4<bool>(true, true, arg_3.d, global0.c), vec4<bool>(true, true, global0.b.x, var_0.d), vec4<bool>(false, false, global0.c, arg_3.c)), !vec4<bool>(false, false, var_0.c, global0.d)), vec4<bool>(-1161f == _wgslsmith_f_op_f32(var_2.x - var_2.x), arg_3.d, true, false), var_0.c);
    return global0.a.x;
}

fn func_2() -> bool {
    global1 = array<Struct_1, 30>();
    var var_0 = ~func_3(vec3<i32>(-1i) * -vec3<i32>(1i, 1i, 1i), _wgslsmith_sub_i32(reverseBits(-2147483647i), 1i), select(-16357i, firstLeadingBit(-2147483647i >> (u_input.a.x % 32u)), true), global1[_wgslsmith_index_u32(4294967295u, 30u)]);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-693f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-535f - 1000f)))) + -1660f));
    var var_2 = ~(~firstLeadingBit(vec3<i32>(1i, 1i, 1i)));
    let var_3 = ~select(vec4<u32>(global0.a.x, 44872u, global0.a.x, 64230u), global0.a, global0.b.x);
    return false;
}

fn func_1(arg_0: f32, arg_1: vec3<u32>) -> i32 {
    var var_0 = Struct_1(global0.a, vec3<bool>(!all(vec2<bool>(true, true)), all(select(!vec4<bool>(false, global0.b.x, global0.c, false), vec4<bool>(global0.b.x, true, true, global0.b.x), !global0.c)), global0.c), true, true);
    var var_1 = _wgslsmith_mod_vec4_i32(select(max(min(min(vec4<i32>(1i, -10244i, -74682i, 2108i), vec4<i32>(-33303i, -1i, 30054i, -9788i)), vec4<i32>(0i, -21048i, -1i, 2147483647i)), ~vec4<i32>(-47364i, -1i, -2147483647i, 2147483647i)), _wgslsmith_div_vec4_i32(vec4<i32>(firstTrailingBit(-2147483647i), -2147483647i, ~0i, i32(-1i) * -60415i), vec4<i32>(1i, 1i, 1i, 1i)), global0.c), select(_wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(16615i, 26253i, -2147483647i, 10559i)), vec4<i32>(-1i) * -vec4<i32>(-2147483647i, -1i, -20165i, -9119i)), vec4<i32>(1i, 1i, 1i, 1i) ^ (vec4<i32>(2147483647i, 0i, -1i, 20830i) << (vec4<u32>(u_input.b.x, 4294967295u, var_0.a.x, 1u) % vec4<u32>(32u))), vec4<bool>(all(vec4<bool>(true, true, global0.b.x, false)) || true, false | global0.c, func_2(), true)));
    let var_2 = Struct_1(firstTrailingBit(~var_0.a), select(!(!select(var_0.b, vec3<bool>(global0.d, false, true), vec3<bool>(true, global0.c, true))), !global0.b, var_0.d | !any(vec2<bool>(false, false))), true, true);
    let var_3 = -431f;
    var var_4 = Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(~global0.a.x, _wgslsmith_mult_u32(~55577u, 1u << (var_0.a.x % 32u)), ~u_input.a.x, var_0.a.x), firstTrailingBit(~vec4<u32>(1u, 0u, var_2.a.x, 59894u))), vec3<bool>(true, u_input.c.x >= _wgslsmith_clamp_u32(58584u, 52611u, global0.a.x), var_0.d), var_0.d, true);
    return _wgslsmith_div_i32(-1i, var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-195f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-566f))))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(549f, -471f) * 1000f))), 1f));
    var var_1 = global1[_wgslsmith_index_u32(abs(1u), 30u)];
    let var_2 = vec4<i32>(-1i, max(~_wgslsmith_dot_vec2_i32(vec2<i32>(-26869i, 1i), vec2<i32>(1i, 2147483647i)), func_1(_wgslsmith_f_op_f32(882f + 787f), global0.a.zxz >> (global0.a.yxz % vec3<u32>(32u)))) & -1i, 1i, 22840i);
    var var_3 = global1[_wgslsmith_index_u32(33227u, 30u)];
    var_1 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(select(55166u, max(var_1.a.x, ~u_input.a.x), false), u_input.a.x), 30u)];
    var var_4 = _wgslsmith_div_vec4_u32(max(reverseBits(vec4<u32>(u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_1.a.x, 31946u), u_input.c), _wgslsmith_mod_u32(20541u, 81572u), global0.a.x)), vec4<u32>(_wgslsmith_mod_u32(~36257u, var_1.a.x & 0u), _wgslsmith_mult_u32(global0.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 23861u, global0.a.x), u_input.c)), func_3(vec3<i32>(-1i, -74910i, var_2.x), 0i, -36254i, Struct_1(vec4<u32>(4294967295u, u_input.c.x, 4294967295u, 0u), var_1.b, false, var_3.d)), _wgslsmith_mod_u32(~var_3.a.x, ~var_3.a.x))), ~select(~var_1.a, ~select(var_1.a, vec4<u32>(43813u, var_1.a.x, global0.a.x, 55604u), vec4<bool>(false, global0.d, true, false)), select(vec4<bool>(global0.d, var_3.d, var_1.d, var_3.d), vec4<bool>(false, var_1.b.x, global0.d, var_1.d), !vec4<bool>(true, var_3.d, false, true))));
    var var_5 = Struct_1(vec4<u32>(var_4.x, var_3.a.x, ~(~1u) ^ select(firstTrailingBit(u_input.b.x), 0u, false), abs(firstLeadingBit(u_input.a.x) >> (0u % 32u))), var_3.b, any(select(!vec3<bool>(var_3.b.x, true, var_3.b.x), select(!var_1.b, vec3<bool>(var_1.c, true, var_3.b.x), var_3.a.x > u_input.b.x), global0.b)), true);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.x);
}

