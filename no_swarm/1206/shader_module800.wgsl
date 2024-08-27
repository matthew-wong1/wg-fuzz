struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_2(arg_0: Struct_1) -> vec4<i32> {
    let var_0 = vec3<u32>(~(_wgslsmith_clamp_u32(abs(4294967295u), 1u, u_input.c) ^ ~u_input.a), u_input.b.x | countOneBits(_wgslsmith_clamp_u32(~u_input.c, u_input.a, countOneBits(0u))), u_input.c);
    let var_1 = arg_0;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global0.a.x, _wgslsmith_f_op_f32(floor(var_1.a.x)), !(324f == _wgslsmith_f_op_f32(-arg_0.a.x)))), _wgslsmith_f_op_f32(-var_1.a.x));
    let var_3 = arg_0;
    var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -770f) - 1149f) * _wgslsmith_f_op_f32(trunc(357f))), -1578f));
    return vec4<i32>(0i & -global0.b.x, ~(-1i), select(~firstTrailingBit(arg_0.b.x), global0.b.x >> (var_0.x % 32u), true || (var_3.a.x > var_1.a.x)), countOneBits(0i));
}

fn func_3() -> vec3<i32> {
    global0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(select(global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(129f + 121f)), all(vec2<bool>(false, true)))), -658f), ~global0.b);
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(515f, -490f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-966f)), _wgslsmith_f_op_f32(-global0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) + _wgslsmith_f_op_f32(ceil(global0.a.x))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1070f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)), -706f)));
    let var_1 = global0.b.x;
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)), _wgslsmith_f_op_vec2_f32(-var_0.zy))), global0.b);
    let var_3 = var_2;
    return ~vec3<i32>(min(var_2.b.x, min(_wgslsmith_add_i32(61564i, var_2.b.x), var_2.b.x ^ var_3.b.x)), global0.b.x, ~(-43044i >> (select(21194u, 1u, true) % 32u)));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.a + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(global0.a, global0.a))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.a))), global0.b);
    let var_1 = ~(-(~vec2<i32>(-21962i, 1i)));
    var var_2 = true;
    var var_3 = vec4<i32>(11819i, i32(-1i) * -40099i, 1i, var_0.b.x);
    var_3 = ~(func_2(Struct_1(vec2<f32>(736f, var_0.a.x), vec3<i32>(var_3.x, var_3.x, 13181i))) | (func_2(Struct_1(var_0.a, vec3<i32>(21259i, var_1.x, var_0.b.x))) & -(vec4<i32>(var_3.x, global0.b.x, var_1.x, 14661i) ^ vec4<i32>(var_1.x, -1i, var_0.b.x, 2147483647i))));
    return Struct_1(global0.a, func_3());
}

fn func_4(arg_0: Struct_1) -> vec3<i32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-536f, global0.a.x) - _wgslsmith_f_op_vec2_f32(ceil(arg_0.a)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.a) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.x, arg_0.a.x) + global0.a)))), vec2<bool>(!all(vec2<bool>(true, false)), true))), global0.b);
    var var_1 = var_0.a.x;
    let var_2 = vec4<i32>(i32(-1i) * -_wgslsmith_add_i32(_wgslsmith_div_i32(arg_0.b.x, -1i), 1i), _wgslsmith_div_i32(0i, func_3().x), -65767i, 2147483647i);
    global0 = func_1();
    let var_3 = ~countOneBits(vec3<i32>(var_0.b.x, -func_2(arg_0).x, -2147483647i));
    return _wgslsmith_clamp_vec3_i32(abs(var_3), firstLeadingBit(var_0.b) << (min(vec3<u32>(~0u, _wgslsmith_sub_u32(u_input.a, u_input.a), ~0u), ~vec3<u32>(9752u, u_input.b.x, 24712u)) % vec3<u32>(32u)), vec3<i32>(reverseBits(-arg_0.b.x), -firstTrailingBit(9196i), 2147483647i) >> (vec3<u32>(1u, 1u & _wgslsmith_mod_u32(u_input.c, u_input.c), _wgslsmith_dot_vec2_u32(u_input.b, ~u_input.b)) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(_wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(global0.b, select(vec3<i32>(-5646i, global0.b.x, global0.b.x), global0.b, select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false))), abs(func_4(func_1()))), -vec3<i32>(reverseBits(global0.b.x), ~global0.b.x, global0.b.x));
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(select(global0.a, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(global0.a)))), all(vec4<bool>(true, true, any(vec4<bool>(true, true, true, true)), true)))), var_0);
    var var_1 = !vec3<bool>(u_input.a == u_input.b.x, _wgslsmith_div_i32(1i, -2147483647i) <= -_wgslsmith_sub_i32(var_0.x, var_0.x), true);
    let var_2 = _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, abs(u_input.a | 0u), 0u), vec3<u32>(~reverseBits(27371u), u_input.b.x, ~4294967295u)) | 1u;
    let var_3 = vec2<i32>(11566i, _wgslsmith_dot_vec3_i32(abs(global0.b ^ reverseBits(vec3<i32>(global0.b.x, 40721i, var_0.x))), -(vec3<i32>(33912i, var_0.x, var_0.x) ^ var_0) & var_0));
    global0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(global0.a.x)), _wgslsmith_f_op_f32(1f * -1691f), _wgslsmith_f_op_f32(sign(global0.a.x)), _wgslsmith_f_op_f32(select(global0.a.x, -220f, 4294967295u >= var_2))) - vec4<f32>(global0.a.x, 1599f, _wgslsmith_f_op_f32(trunc(104f)), 273f)));
}

