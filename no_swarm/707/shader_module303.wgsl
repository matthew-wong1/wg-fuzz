struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<f32>,
}

struct Struct_3 {
    a: f32,
    b: vec4<bool>,
    c: vec4<u32>,
    d: vec2<f32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec2<f32> = vec2<f32>(-559f, 1639f);

var<private> global2: vec2<bool> = vec2<bool>(true, true);

var<private> global3: bool = true;

var<private> global4: i32 = 2147483647i;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<f32>) -> vec3<f32> {
    var var_0 = vec3<bool>(any(vec2<bool>(any(select(vec4<bool>(global2.x, global2.x, global2.x, global2.x), vec4<bool>(true, true, global2.x, false), vec4<bool>(global2.x, global2.x, global2.x, global2.x))), global2.x)), global2.x, any(!(!vec4<bool>(global2.x, global2.x, global2.x, global2.x))));
    let var_1 = any(vec4<bool>(false, u_input.c.x > firstTrailingBit(31582u), true, global2.x)) && false;
    global1 = _wgslsmith_f_op_vec2_f32(-global0.c.yz);
    var var_2 = vec2<u32>(select(_wgslsmith_mod_u32(u_input.b, u_input.c.x), _wgslsmith_add_u32(abs(1u), _wgslsmith_dot_vec3_u32(u_input.c.yyy, vec3<u32>(u_input.c.x, 0u, u_input.c.x))), all(!select(vec2<bool>(global2.x, global2.x), vec2<bool>(var_1, true), false))), 81638u);
    var_0 = select(select(!(!(!vec3<bool>(false, var_0.x, var_0.x))), select(!vec3<bool>(false, global2.x, global2.x), !vec3<bool>(global2.x, global2.x, false), !vec3<bool>(global2.x, false, global2.x)), vec3<bool>(false, var_0.x, false)), select(vec3<bool>(global2.x, !(!var_0.x), true), !select(vec3<bool>(global2.x, var_1, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, var_0.x), var_1), select(vec3<bool>(false, true, true), vec3<bool>(var_0.x, true, global2.x), var_1)), !select(select(vec3<bool>(true, var_1, true), vec3<bool>(false, global2.x, var_0.x), true), !vec3<bool>(var_1, false, var_1), all(var_0.xx))), ~reverseBits(4294967295u) > ~_wgslsmith_mod_u32(u_input.c.x, 58999u));
    return _wgslsmith_f_op_vec3_f32(step(global0.c, vec3<f32>(-1915f, -1574f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(868f)) * _wgslsmith_f_op_f32(-arg_0.c.x)))));
}

fn func_2(arg_0: vec2<i32>) -> vec4<bool> {
    global0 = Struct_2(vec4<i32>(_wgslsmith_dot_vec2_i32(arg_0 & global0.b, vec2<i32>(global0.a.x, -14747i) ^ global0.b), -arg_0.x, 1i, abs(-global0.a.x)) ^ -global0.a, global0.a.zz, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_2(-vec4<i32>(arg_0.x, 0i, 0i, global0.b.x), _wgslsmith_add_vec2_i32(arg_0, vec2<i32>(arg_0.x, arg_0.x)), _wgslsmith_f_op_vec3_f32(global0.c - global0.c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-597f, global0.c.x, -1310f, global0.c.x)) - vec4<f32>(1583f, global1.x, -757f, global1.x)))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.c))))));
    var var_0 = select(!vec4<bool>(true, !(u_input.b >= u_input.a), u_input.c.x <= _wgslsmith_mult_u32(14121u, u_input.b), all(vec4<bool>(global2.x, false, global2.x, global2.x)) && false), !select(select(select(vec4<bool>(true, global2.x, global2.x, true), vec4<bool>(true, global2.x, false, global2.x), vec4<bool>(false, true, global2.x, true)), !vec4<bool>(global2.x, global2.x, global2.x, false), global2.x), select(vec4<bool>(global2.x, true, global2.x, global2.x), !vec4<bool>(global2.x, true, global2.x, global2.x), select(vec4<bool>(global2.x, true, true, global2.x), vec4<bool>(global2.x, false, global2.x, true), global2.x)), select(vec4<bool>(true, true, true, true), !vec4<bool>(global2.x, global2.x, false, false), vec4<bool>(false, global2.x, global2.x, global2.x))), !select(select(select(vec4<bool>(false, global2.x, global2.x, global2.x), vec4<bool>(global2.x, true, true, true), vec4<bool>(global2.x, true, true, global2.x)), vec4<bool>(true, true, global2.x, false), true), !vec4<bool>(global2.x, global2.x, true, global2.x), global2.x));
    global0 = Struct_2(select(-vec4<i32>(0i, arg_0.x, arg_0.x, -1i) >> (vec4<u32>(u_input.c.x << (u_input.c.x % 32u), abs(37932u), countOneBits(u_input.a), 45553u) % vec4<u32>(32u)), global0.a, all(var_0.zz)), vec2<i32>(-2147483647i, select(global0.a.x, ~arg_0.x, all(var_0.xw))), global0.c);
    var var_1 = all(select(select(select(!vec4<bool>(false, global2.x, global2.x, false), vec4<bool>(false, var_0.x, var_0.x, true), vec4<bool>(true, var_0.x, true, false)), !select(vec4<bool>(false, var_0.x, var_0.x, true), vec4<bool>(global2.x, var_0.x, var_0.x, false), vec4<bool>(var_0.x, false, true, true)), !(!vec4<bool>(true, var_0.x, global2.x, true))), select(select(select(vec4<bool>(global2.x, false, false, global2.x), vec4<bool>(var_0.x, true, global2.x, global2.x), global2.x), select(vec4<bool>(true, false, true, true), vec4<bool>(global2.x, true, false, false), vec4<bool>(var_0.x, var_0.x, var_0.x, global2.x)), var_0.x), !(!vec4<bool>(true, var_0.x, global2.x, false)), !(!vec4<bool>(global2.x, var_0.x, var_0.x, true))), select(select(select(vec4<bool>(var_0.x, global2.x, false, global2.x), vec4<bool>(global2.x, global2.x, var_0.x, global2.x), true), !vec4<bool>(false, var_0.x, global2.x, global2.x), !global2.x), !vec4<bool>(true, false, false, global2.x), vec4<bool>(var_0.x, !var_0.x, any(vec4<bool>(true, true, var_0.x, global2.x)), true))));
    let var_2 = false;
    return select(vec4<bool>(true, var_2, true, true), vec4<bool>(true, !(!(global0.c.x > global0.c.x)), true, true), !(39174i > global0.a.x));
}

fn func_1() -> u32 {
    let var_0 = Struct_3(-1008f, select(func_2(max(vec2<i32>(global0.b.x, global0.b.x), vec2<i32>(global0.b.x, global0.b.x) | vec2<i32>(1i, global0.a.x))), !(!select(vec4<bool>(global2.x, true, global2.x, global2.x), vec4<bool>(true, false, global2.x, true), true)), true), select(vec4<u32>(select(1u, u_input.c.x, u_input.a <= u_input.b), 58531u, 4294967295u, u_input.c.x), u_input.c, true), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.x, -346f))), _wgslsmith_f_op_f32(f32(-1f) * -1396f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c.x, -540f)) - global0.c.zx)), vec4<bool>(!all(!vec4<bool>(global2.x, false, global2.x, false)), global2.x, true, !all(!vec4<bool>(global2.x, global2.x, true, global2.x))));
    global0 = Struct_2(vec4<i32>(max(~(-2147483647i), _wgslsmith_clamp_i32(global0.a.x, firstLeadingBit(-25721i), 11162i)), countOneBits(-2147483647i), firstLeadingBit(global0.b.x), ~firstLeadingBit(-1i) >> (_wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.c.x, var_0.c.x), var_0.c.x) % 32u)), vec2<i32>(_wgslsmith_mod_i32(reverseBits(abs(global0.b.x)), _wgslsmith_div_i32(_wgslsmith_add_i32(31017i, 8923i), ~1i)), -select(_wgslsmith_dot_vec3_i32(global0.a.xzz, global0.a.zwz), global0.b.x, !global2.x)), _wgslsmith_f_op_vec3_f32(-global0.c));
    let var_1 = -34973i;
    return _wgslsmith_sub_u32(u_input.a, ~26993u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(min((1u >> (~u_input.c.x % 32u)) | func_1(), _wgslsmith_mod_u32(_wgslsmith_mod_u32(1u, u_input.b), ~u_input.a)));
    global0 = Struct_2(global0.a, ~global0.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(108f, 433f, 1020f), _wgslsmith_div_vec3_f32(global0.c, global0.c)))) * _wgslsmith_f_op_vec3_f32(global0.c - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(global1.x, global1.x, 330f), vec3<f32>(-173f, 1261f, -2015f)))))));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -251f);
    global0 = Struct_2(~global0.a << (~u_input.c % vec4<u32>(32u)), max(min(vec2<i32>(global0.b.x, global0.b.x), abs(vec2<i32>(global0.a.x, -1i))) << (abs(~u_input.c.xz) % vec2<u32>(32u)), abs(abs(_wgslsmith_mod_vec2_i32(global0.b, vec2<i32>(global0.b.x, 0i))))), global0.c);
    var var_2 = Struct_2(-global0.a, -vec2<i32>(_wgslsmith_add_i32(global0.a.x, _wgslsmith_clamp_i32(global0.a.x, global0.b.x, -5130i)), -(i32(-1i) * -9044i)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(global0.c * global0.c))));
    var var_3 = func_2(min(~firstLeadingBit(var_2.a.xy), _wgslsmith_div_vec2_i32(~vec2<i32>(0i, global0.b.x), select(vec2<i32>(var_2.a.x, global0.b.x), vec2<i32>(-30384i, var_2.b.x), vec2<bool>(true, global2.x)))) >> (u_input.c.zx % vec2<u32>(32u))).ww;
    global1 = vec2<f32>(var_2.c.x, 1042f);
    global1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.c.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(var_1)))), _wgslsmith_f_op_f32(floor(805f))))) + var_2.c.zz);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(global0.c.x - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.x) * _wgslsmith_f_op_f32(global0.c.x - global0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1)))))), var_2.c.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.x) + _wgslsmith_f_op_f32(min(-442f, _wgslsmith_f_op_f32(f32(-1f) * -886f)))), 722f, !any(vec2<bool>(var_3.x, var_3.x)))), _wgslsmith_dot_vec2_u32(~u_input.c.xw, min(vec2<u32>(min(1u, u_input.b), reverseBits(4294967295u)), u_input.c.zw)));
}

