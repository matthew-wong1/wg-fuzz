struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_2,
    d: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: i32,
    d: vec4<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(1123f, Struct_2(vec2<f32>(217f, -435f)), Struct_2(vec2<f32>(634f, -367f)), vec4<u32>(27265u, 64637u, 1u, 0u));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>) -> f32 {
    global0 = Struct_3(_wgslsmith_f_op_f32(global0.c.a.x * 173f), global0.c, Struct_2(global0.c.a), global0.d);
    global0 = Struct_3(_wgslsmith_f_op_f32(-global0.a), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(866f, 395f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.c.a)))), Struct_2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1215f), -1000f)), global0.d);
    global0 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.c.a.x), 375f), Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.c.a)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_0), _wgslsmith_f_op_vec2_f32(-arg_0), vec2<bool>(true, true))))), Struct_2(_wgslsmith_f_op_vec2_f32(global0.c.a + arg_0)), abs(global0.d));
    let var_0 = global0.b;
    let var_1 = global0.d.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.c.a.x * _wgslsmith_f_op_f32(-1433f * 416f)))))));
}

fn func_2(arg_0: i32, arg_1: Struct_3, arg_2: vec2<bool>) -> Struct_4 {
    var var_0 = -277f;
    var var_1 = 319f;
    global0 = arg_1;
    var_0 = _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.c.a - global0.c.a))))));
    let var_2 = _wgslsmith_sub_vec2_u32(vec2<u32>(~_wgslsmith_div_u32(0u, 4294967295u), reverseBits(_wgslsmith_mod_u32(58724u, global0.d.x))), ~(~(global0.d.xz ^ vec2<u32>(0u, 0u))));
    return Struct_4(arg_1, arg_1, select(select(vec3<i32>(_wgslsmith_div_i32(0i, arg_0), _wgslsmith_mult_i32(-54746i, u_input.b.x), 2147483647i), vec3<i32>(~0i, arg_0, -u_input.c.x), vec3<bool>(arg_2.x || true, false, true)), ~(-_wgslsmith_sub_vec3_i32(u_input.b, u_input.c)), !(arg_1.d.x != abs(arg_1.d.x))), vec4<i32>(~(-u_input.c.x), -1i, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(u_input.a, u_input.c), -1i), abs(1i) << (~global0.d.x % 32u)) << (vec4<u32>(_wgslsmith_mod_u32(var_2.x & 1u, 31392u), ~31148u, ~47656u, ~abs(4294967295u)) % vec4<u32>(32u)));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3, arg_2: vec3<i32>, arg_3: vec4<u32>) -> u32 {
    let var_0 = true;
    var var_1 = select(vec3<bool>(true, true, true), vec3<bool>(true, var_0, all(!vec4<bool>(var_0, true, var_0, var_0))), !select(vec3<bool>(var_0, -1500f > global0.b.a.x, var_0), select(select(vec3<bool>(false, true, var_0), vec3<bool>(var_0, var_0, var_0), vec3<bool>(true, var_0, false)), vec3<bool>(false, false, var_0), true), vec3<bool>(true, var_0, true)));
    var var_2 = func_2((-_wgslsmith_mod_i32(arg_0.c.x, -1i) & firstTrailingBit(arg_2.x)) & -arg_2.x, arg_0.b, !var_1.zz).a.b;
    var var_3 = global0.a;
    var var_4 = -2191f;
    return arg_0.a.d.x;
}

fn func_1(arg_0: bool) -> i32 {
    var var_0 = _wgslsmith_mod_u32(84677u, ~global0.d.x);
    var var_1 = vec2<bool>(arg_0, true);
    var var_2 = global0.c.a;
    let var_3 = ~vec4<u32>(global0.d.x, 0u, func_4(func_2(_wgslsmith_div_i32(u_input.b.x, u_input.c.x), Struct_3(global0.a, Struct_2(global0.c.a), global0.c, global0.d), !vec2<bool>(var_1.x, false)), func_2(_wgslsmith_add_i32(-1i, 0i), Struct_3(-1000f, Struct_2(vec2<f32>(-796f, -1796f)), Struct_2(global0.c.a), global0.d), vec2<bool>(arg_0, false)).a, ~_wgslsmith_sub_vec3_i32(vec3<i32>(-8217i, u_input.b.x, u_input.c.x), vec3<i32>(47773i, -21080i, u_input.c.x)), global0.d), 30002u);
    var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.x))), -2184f)));
    return _wgslsmith_dot_vec2_i32(u_input.c.yx, countOneBits(vec2<i32>(countOneBits(1i), -1i)));
}

fn func_5(arg_0: vec2<i32>, arg_1: i32) -> Struct_2 {
    global0 = Struct_3(_wgslsmith_div_f32(-674f, -344f), func_2(u_input.a.x, func_2(3324i, Struct_3(-334f, func_2(1i, Struct_3(1488f, global0.c, Struct_2(vec2<f32>(global0.a, -657f)), vec4<u32>(global0.d.x, global0.d.x, global0.d.x, 4294967295u)), vec2<bool>(false, false)).a.b, func_2(-5037i, Struct_3(562f, Struct_2(vec2<f32>(-450f, global0.b.a.x)), global0.c, vec4<u32>(global0.d.x, 4294967295u, 4294967295u, 38519u)), vec2<bool>(true, false)).b.c, ~global0.d), vec2<bool>(true, false)).b, vec2<bool>(!(global0.d.x == 4294967295u), true || any(vec2<bool>(false, false)))).b.b, Struct_2(global0.b.a), countOneBits(select(global0.d, vec4<u32>(~global0.d.x, _wgslsmith_dot_vec3_u32(global0.d.zwx, vec3<u32>(global0.d.x, global0.d.x, 0u)), ~0u, ~global0.d.x), vec4<bool>(all(vec2<bool>(false, false)), true, true, all(vec4<bool>(true, false, true, false))))));
    return global0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_add_i32(u_input.b.x, countOneBits(_wgslsmith_dot_vec2_i32(u_input.c.xx << (vec2<u32>(27680u, global0.d.x) % vec2<u32>(32u)), countOneBits(u_input.c.yz))));
    let var_1 = func_5(vec2<i32>(u_input.a.x, reverseBits(-2147483647i)), func_1(any(vec3<bool>(true, true, true))));
    var var_2 = _wgslsmith_add_vec4_i32(firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(~1i, ~u_input.a.x, _wgslsmith_sub_i32(u_input.b.x, -4976i), u_input.c.x), ~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, -2147483647i, u_input.a.x, 28961i), vec4<i32>(u_input.b.x, -40850i, 0i, 8221i)))), -(~vec4<i32>(9071i, -84i, ~u_input.a.x, _wgslsmith_div_i32(-9231i, -7070i))));
    let var_3 = Struct_2(_wgslsmith_div_vec2_f32(var_1.a, global0.c.a));
    var_0 = i32(-1i) * -2147483647i;
    let var_4 = Struct_4(func_2(0i, func_2(-13355i, Struct_3(_wgslsmith_f_op_f32(global0.b.a.x * -702f), global0.b, global0.b, global0.d), vec2<bool>(true, true)).b, vec2<bool>(true, !(2147483647i == u_input.a.x))).a, Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(826f - -1329f), _wgslsmith_f_op_f32(-var_3.a.x), false)) * -1229f), func_5(~_wgslsmith_mod_vec2_i32(vec2<i32>(-9839i, var_2.x), vec2<i32>(u_input.b.x, var_2.x)), var_2.x), Struct_2(var_1.a), select(~vec4<u32>(global0.d.x, global0.d.x, 1u, 26786u), firstLeadingBit(vec4<u32>(global0.d.x, 25119u, 38040u, global0.d.x)), vec4<bool>(true, true, true, true))), var_2.wzw, firstLeadingBit(-vec4<i32>(-u_input.c.x, ~var_2.x, u_input.a.x, var_2.x)));
    let var_5 = var_4.b.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(var_4.c, var_2.xwy), -2162f, u_input.b.x, var_4.d, vec3<u32>(countOneBits(0u), 17009u, ~var_4.a.d.x) ^ ~(~vec3<u32>(0u, global0.d.x, var_4.a.d.x)));
}

