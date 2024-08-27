struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(1u, 1u);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, u_input.d.x), vec2<i32>(-2147483647i, -2914i)), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(61162i, 18520i), u_input.d), abs(0i))), u_input.d.x), u_input.d.x);
    global0 = arg_0.a;
    global0 = reverseBits(arg_0.a);
    var var_1 = Struct_1(~(~(_wgslsmith_sub_vec2_u32(u_input.b.yw, u_input.a) >> (_wgslsmith_add_vec2_u32(arg_0.a, u_input.a) % vec2<u32>(32u)))), arg_0.b);
    var_1 = Struct_1(~(~_wgslsmith_sub_vec2_u32(vec2<u32>(global0.x, 85630u), vec2<u32>(13271u, 1u))) >> (_wgslsmith_add_vec2_u32(~(~u_input.b.xx), firstTrailingBit(vec2<u32>(49177u, 95527u)) & arg_0.a) % vec2<u32>(32u)), select(vec4<bool>(all(select(vec2<bool>(true, false), vec2<bool>(var_1.b.x, arg_0.b.x), arg_0.b.x)), var_1.b.x, true, false), arg_0.b, any(arg_0.b.wx) | (_wgslsmith_f_op_f32(f32(-1f) * -1980f) < _wgslsmith_f_op_f32(select(-2488f, 1142f, arg_0.b.x)))));
    return _wgslsmith_div_f32(886f, -629f) <= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(trunc(-1000f)))) * -965f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(580f, 1328f))));
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: i32) -> u32 {
    global0 = u_input.b.wy;
    global0 = vec2<u32>(~(~u_input.a.x), _wgslsmith_div_u32(~(~global0.x), _wgslsmith_dot_vec2_u32(u_input.a, u_input.a)));
    var var_0 = Struct_1(~(~_wgslsmith_mod_vec2_u32(u_input.b.xy, u_input.b.wy)), !vec4<bool>(true, true, func_3(Struct_1(vec2<u32>(7625u, global0.x), vec4<bool>(true, false, true, true))), all(vec3<bool>(true, false, false))));
    let var_1 = (i32(-1i) * -u_input.d.x) << (countOneBits(arg_0) % 32u);
    var_0 = Struct_1(var_0.a, var_0.b);
    return 29793u;
}

fn func_1() -> Struct_1 {
    let var_0 = -1344f;
    let var_1 = Struct_1(vec2<u32>(_wgslsmith_mod_u32(func_2(~global0.x, ~(-14287i), _wgslsmith_mult_i32(u_input.d.x, -13650i)), ~func_2(0u, u_input.d.x, 2147483647i)), 64217u), !vec4<bool>(true, all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false)), true, false));
    let var_2 = any(var_1.b.wwx);
    var var_3 = var_1.a.x;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2368f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0, -487f))), -139f))));
    return Struct_1(u_input.b.xx, select(vec4<bool>(var_2, !all(var_1.b), any(var_1.b), (var_1.b.x || var_1.b.x) || select(var_1.b.x, true, var_1.b.x)), select(var_1.b, select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, var_2, var_1.b.x), var_1.b), vec4<bool>(var_1.b.x, var_1.b.x, false, true), !var_1.b), select(select(var_1.b, vec4<bool>(true, var_2, false, var_1.b.x), vec4<bool>(var_2, false, var_2, false)), select(vec4<bool>(var_1.b.x, false, var_2, true), vec4<bool>(var_2, var_2, true, var_2), vec4<bool>(var_1.b.x, var_1.b.x, var_1.b.x, var_1.b.x)), select(true, true, false))), -(u_input.d.x << (var_1.a.x % 32u)) != u_input.d.x));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> vec4<bool> {
    global0 = vec2<u32>(4294967295u, _wgslsmith_dot_vec3_u32(~u_input.b.zxx, u_input.b.wyz));
    var var_0 = _wgslsmith_mod_u32(24323u & arg_0.a.x, arg_3.a.x);
    let var_1 = true;
    let var_2 = arg_2;
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -241f);
    return func_1().b;
}

fn func_5(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: i32) -> vec2<u32> {
    var var_0 = ~_wgslsmith_mult_u32(0u, u_input.a.x);
    let var_1 = !vec3<bool>(true, arg_2.b.x | true, !(arg_1.x < min(u_input.d.x, arg_1.x)));
    global0 = ~vec2<u32>(countOneBits(~global0.x), ~(15125u ^ arg_2.a.x)) >> (vec2<u32>(arg_2.a.x, abs(func_2(_wgslsmith_div_u32(81633u, arg_0.a.x), 0i, -20880i))) % vec2<u32>(32u));
    var var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -(~arg_1), -vec3<i32>(~1i, reverseBits(-1i), ~u_input.d.x)) ^ arg_1.x;
    global0 = firstLeadingBit(u_input.b.wy);
    return ~u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(Struct_1(u_input.a & (vec2<u32>(0u, global0.x) | u_input.a), func_4(func_1(), 0u, func_1(), func_1())), -vec3<i32>(_wgslsmith_div_i32(u_input.d.x, ~1i), 15152i, -firstLeadingBit(2147483647i)), func_1(), 2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(957f, 510f) * 1767f) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -908f), -842f))), vec3<f32>(_wgslsmith_f_op_f32(round(1f)), 1f, -769f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, -1076f), vec2<f32>(168f, -775f), vec2<bool>(false, false))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-204f, -506f) - vec2<f32>(903f, -1000f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(980f, 617f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(600f, -1666f)), vec2<bool>(true, true))) + vec2<f32>(1f, 1f))));
}

