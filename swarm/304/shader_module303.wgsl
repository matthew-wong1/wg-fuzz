struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: bool,
    d: bool,
    e: bool,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
    c: Struct_1,
    d: f32,
    e: f32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_2,
    c: u32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: Struct_3;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: f32, arg_1: Struct_4, arg_2: u32) -> vec4<bool> {
    return vec4<bool>(!(~(~global0.c) > global0.b.b.a.x), false, arg_1.a.x, true);
}

fn func_3(arg_0: f32, arg_1: vec4<bool>, arg_2: bool, arg_3: Struct_4) -> vec2<u32> {
    global1 = Struct_3(_wgslsmith_f_op_f32(ceil(arg_0)), ~max(global1.c.b, global1.b), global1.c, -1174f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0))) * _wgslsmith_f_op_f32(trunc(-1781f))));
    global1 = Struct_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1125f, 865f, global0.a.x)))))), _wgslsmith_add_vec3_u32(~_wgslsmith_sub_vec3_u32(~global0.b.b.b, vec3<u32>(global0.c, global0.c, global0.c)), ~(~global0.b.b.b)), Struct_1(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 35944u), vec2<u32>(19256u, u_input.b)), global0.b.b.a), select(vec2<u32>(4294967295u, 58722u), abs(global1.c.b.xx), vec2<bool>(true, false))), global0.b.b.b, (global1.c.c & min(global0.b.b.a, global1.c.c)) << (vec2<u32>(global1.b.x ^ 4294967295u, min(4294967295u, 55489u)) % vec2<u32>(32u))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-634f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) * global1.e)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(global1.e)), _wgslsmith_f_op_f32(floor(-1846f)))) * arg_0))));
    var var_0 = Struct_2(vec4<bool>(~abs(arg_3.c) != global1.b.x, arg_1.x, arg_2, false), arg_3.b.b, !(!(!global0.d.x)), any(arg_3.d), false);
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(exp2(arg_0))));
    let var_2 = _wgslsmith_div_u32(1u, 4294967295u);
    return vec2<u32>(u_input.b, ~(~(~33374u)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2) -> Struct_4 {
    let var_0 = global0.a.yx;
    global1 = arg_0;
    var var_1 = Struct_2(global0.b.a, Struct_1(global0.b.b.b.zy, abs(~vec3<u32>(arg_0.b.x, arg_0.b.x, 1u)), abs(vec2<u32>(0u, 4294967295u) & vec2<u32>(arg_0.b.x, global1.c.c.x)) & min(vec2<u32>(1u, u_input.b) ^ arg_0.c.b.yx, ~vec2<u32>(45921u, 1u))), func_2(_wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_4(arg_1.a.wwx, Struct_2(!global0.b.a, Struct_1(global1.c.c, arg_0.b, vec2<u32>(u_input.b, arg_1.b.a.x)), !global0.d.x, any(global0.b.a), var_0.x && global0.a.x), firstLeadingBit(global1.b.x) | ~arg_1.b.a.x, !vec4<bool>(false, false, false, global0.d.x)), 3005u).x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1455f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(arg_0.d))))) == global1.e, false);
    let var_2 = !(!(arg_0.a != _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1335f, 510f)))));
    return Struct_4(var_1.a.zyz, Struct_2(vec4<bool>(true, !var_0.x, global0.d.x, true), global1.c, true, true, all(var_1.a.xw)), reverseBits(11071u), var_1.a);
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = global0.d.zx;
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(global1.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(global1.a)))))), global1.a));
    global0 = func_4(Struct_3(var_1.x, vec3<u32>(u_input.b, 1u, ~_wgslsmith_dot_vec3_u32(global1.c.b, global1.b)), Struct_1(_wgslsmith_clamp_vec2_u32(global1.c.b.yz, countOneBits(vec2<u32>(arg_0, u_input.b)), ~vec2<u32>(14697u, 4294967295u)), global0.b.b.b, _wgslsmith_sub_vec2_u32(global0.b.b.a, global1.b.xy)), var_1.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(global1.e, _wgslsmith_f_op_f32(-871f - 761f))), _wgslsmith_f_op_f32(trunc(-854f))))), Struct_2(!func_2(_wgslsmith_f_op_f32(step(global1.a, global1.d)), Struct_4(vec3<bool>(var_0.x, global0.d.x, global0.a.x), global0.b, arg_0, global0.d), arg_0), Struct_1(func_3(-2832f, global0.d, global0.b.e, Struct_4(global0.a, global0.b, global1.b.x, global0.d)) | vec2<u32>(arg_0, global0.c), global0.b.b.b & vec3<u32>(17331u, arg_0, arg_0), ~(vec2<u32>(19996u, global1.c.c.x) << (vec2<u32>(4294967295u, arg_0) % vec2<u32>(32u)))), all(vec4<bool>(all(global0.a.xz), all(global0.b.a), var_0.x, true)), !func_2(_wgslsmith_f_op_f32(-global1.e), Struct_4(vec3<bool>(true, false, global0.b.c), global0.b, 1u, vec4<bool>(false, true, false, true)), _wgslsmith_div_u32(arg_0, arg_0)).x, global0.a.x));
    var var_2 = Struct_2(vec4<bool>(global0.b.d, any(select(vec2<bool>(var_0.x, global0.b.c), vec2<bool>(true, true), true)), all(global0.a), false), global1.c, var_0.x, true, ~(~_wgslsmith_clamp_u32(75576u, 58057u, 33863u)) > u_input.b);
    global1 = Struct_3(_wgslsmith_f_op_f32(ceil(-682f)), ~vec3<u32>(firstTrailingBit(arg_0), 16739u, ~var_2.b.c.x), var_2.b, global1.a, global1.e);
    return func_4(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -254f)))), var_2.b.b, func_4(Struct_3(_wgslsmith_f_op_f32(-var_1.x), ~var_2.b.b, Struct_1(vec2<u32>(125675u, global1.b.x), global1.c.b, vec2<u32>(global0.c, 4294967295u)), global1.a, var_1.x), Struct_2(vec4<bool>(true, global0.d.x, var_0.x, false), Struct_1(global0.b.b.c, vec3<u32>(var_2.b.b.x, 45814u, 34801u), global0.b.b.a), false, true, true)).b.b, _wgslsmith_f_op_f32(f32(-1f) * -1384f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-978f)) + -1116f))), global0.b).b.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~58480u;
    global1 = Struct_3(_wgslsmith_f_op_f32(404f * -383f), _wgslsmith_mod_vec3_u32(~global0.b.b.b, ~(~vec3<u32>(39995u, 4294967295u, u_input.b))), func_1(~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0, global0.c), global0.b.b.a), u_input.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.d), global1.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.d * _wgslsmith_f_op_f32(-754f - 854f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.e), _wgslsmith_f_op_f32(-379f + -1245f))));
    global1 = Struct_3(global1.d, global1.c.b, func_4(Struct_3(_wgslsmith_f_op_f32(-636f * _wgslsmith_f_op_f32(-216f + global1.d)), vec3<u32>(_wgslsmith_add_u32(41712u, 1u), abs(var_0), _wgslsmith_mod_u32(var_0, global0.b.b.a.x)), func_1(func_4(Struct_3(-115f, global0.b.b.b, Struct_1(global0.b.b.b.zy, vec3<u32>(4294967295u, var_0, 4294967295u), vec2<u32>(var_0, u_input.b)), -1535f, global1.e), Struct_2(global0.b.a, global1.c, global0.d.x, false, global0.a.x)).b.b.a.x), _wgslsmith_f_op_f32(ceil(-321f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.e) * -449f)), Struct_2(!vec4<bool>(global0.a.x, true, false, global0.a.x), func_4(Struct_3(global1.a, global1.b, global0.b.b, global1.d, global1.d), Struct_2(vec4<bool>(false, global0.b.e, global0.a.x, true), Struct_1(global1.b.xy, global1.b, vec2<u32>(1u, 1u)), global0.d.x, true, global0.b.d)).b.b, true, !(!global0.b.c), any(func_2(-604f, Struct_4(vec3<bool>(true, global0.d.x, true), global0.b, 21064u, vec4<bool>(global0.d.x, false, global0.a.x, true)), global0.b.b.c.x)))).b.b, global1.d, global1.d);
    global0 = func_4(Struct_3(_wgslsmith_f_op_f32(floor(global1.a)), vec3<u32>(0u >> (global1.b.x % 32u), 14325u, ~_wgslsmith_sub_u32(63586u, 41596u)), global1.c, 2185f, global1.a), global0.b);
    let var_1 = countOneBits(global0.b.b.b);
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -969f);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_dot_vec2_i32(max(firstLeadingBit(vec2<i32>(u_input.a, 40600i)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, -49524i), vec2<i32>(-2147483647i, 1i))), vec2<i32>(u_input.a, _wgslsmith_clamp_i32(u_input.a, 0i, u_input.a))), -73427i, _wgslsmith_mult_i32(~u_input.a | 2147483647i, -(u_input.a >> (global0.c % 32u)))), vec2<f32>(_wgslsmith_f_op_f32(743f * 1137f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(388f, _wgslsmith_f_op_f32(1092f + global1.e), 1835f == global1.a)))));
}

