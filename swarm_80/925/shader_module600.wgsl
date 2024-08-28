struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: bool,
    d: vec2<f32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, false);

var<private> global1: vec2<i32>;

var<private> global2: vec3<u32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<bool>) -> vec2<i32> {
    let var_0 = Struct_3(Struct_1(select(select(vec4<bool>(arg_0.x, arg_0.x, global0.x, arg_0.x), vec4<bool>(global0.x, arg_0.x, true, false), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), !vec4<bool>(false, arg_0.x, false, true), select(vec4<bool>(global0.x, global0.x, false, false), vec4<bool>(global0.x, global0.x, global0.x, false), true)), vec4<bool>(false && global0.x, true, true, true)), global1.x, select(global0.x, true, true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(-106f)), _wgslsmith_f_op_f32(f32(-1f) * -1243f))), !(!select(vec3<bool>(false, arg_0.x, arg_0.x), arg_0, vec3<bool>(arg_0.x, global0.x, true)))), abs(u_input.e ^ -9403i), Struct_1(vec4<bool>(false, global1.x < global1.x, true, any(vec4<bool>(arg_0.x, true, arg_0.x, false)) | false), 0i, global0.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(-958f)), 136f) * vec2<f32>(1000f, _wgslsmith_f_op_f32(select(-955f, 1589f, global0.x)))), arg_0), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-302f * -911f)))))));
    global1 = vec2<i32>(~select(-reverseBits(u_input.b), -min(27917i, -1i), false), -24993i << (0u % 32u));
    var var_1 = ~(_wgslsmith_div_u32(~(~global2.x), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(global2.x, global2.x), global2.yz), global2.yz)) ^ ~_wgslsmith_div_u32(global2.x, _wgslsmith_dot_vec2_u32(u_input.d.xz, vec2<u32>(global2.x, 10901u))));
    let var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(439f, var_0.c.d.x, var_0.c.d.x, 2463f) * vec4<f32>(332f, var_0.d, -1865f, var_0.a.d.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.c.d.x, 130f, var_0.c.d.x, var_0.a.d.x), vec4<f32>(var_0.d, var_0.d, 974f, 710f), var_0.a.a)))), vec4<f32>(_wgslsmith_f_op_f32(trunc(833f)), _wgslsmith_f_op_f32(f32(-1f) * -252f), -2049f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-243f - -936f))), select(vec4<bool>(true, !arg_0.x, all(var_0.a.e), true), var_0.c.a, var_0.c.a)))));
    var var_3 = vec3<bool>(false | all(!vec3<bool>(false, true, var_0.c.a.x)), true, true);
    return vec2<i32>(-1i, countOneBits(-1i));
}

fn func_2(arg_0: i32) -> Struct_1 {
    global1 = select(func_3(!(!select(vec3<bool>(true, false, global0.x), vec3<bool>(true, false, false), global0.x))), firstTrailingBit(func_3(vec3<bool>(arg_0 < u_input.b, false, true))), all(vec3<bool>(all(vec3<bool>(global0.x, true, false)), all(global0.zz), true)));
    let var_0 = vec4<u32>(24152u, _wgslsmith_dot_vec2_u32(abs(~vec2<u32>(global2.x, 0u)), _wgslsmith_sub_vec2_u32(select(vec2<u32>(1u, u_input.a), vec2<u32>(1u, 56295u), global0.zz), reverseBits(global2.xx))), _wgslsmith_sub_u32(~(global2.x << (global2.x % 32u)), u_input.a), _wgslsmith_dot_vec2_u32(u_input.c.yx, _wgslsmith_div_vec2_u32(vec2<u32>(52111u, u_input.c.x), global2.xz) & _wgslsmith_clamp_vec2_u32(vec2<u32>(global2.x, 0u), vec2<u32>(u_input.d.x, 4294967295u), vec2<u32>(1u, u_input.c.x)))) & vec4<u32>(82208u, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 43191u, 0u), u_input.c), u_input.d & vec3<u32>(10628u, 16105u, u_input.d.x), u_input.c), vec3<u32>(min(global2.x, u_input.c.x), ~u_input.d.x, select(u_input.c.x, global2.x, global0.x))), ~_wgslsmith_add_u32(~u_input.d.x, 4294967295u), 0u);
    var var_1 = 29418u;
    global1 = -(~reverseBits(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_0, 36282i), vec2<i32>(-1i, global1.x)))) & ~((abs(vec2<i32>(-12522i, -85238i)) << (_wgslsmith_mod_vec2_u32(var_0.ww, vec2<u32>(63067u, var_0.x)) % vec2<u32>(32u))) >> (vec2<u32>(~u_input.a, 0u) % vec2<u32>(32u)));
    let var_2 = _wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(arg_0 >> (~44097u % 32u), _wgslsmith_mod_i32(arg_0, max(arg_0, arg_0)), -1i)), _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(~vec3<i32>(-2147483647i, global1.x, -25315i), (vec3<i32>(arg_0, global1.x, 5249i) << (var_0.zww % vec3<u32>(32u))) | vec3<i32>(0i, u_input.b, arg_0)), _wgslsmith_div_vec3_i32(vec3<i32>(global1.x, -29497i, arg_0) & vec3<i32>(u_input.b, 65929i, global1.x), -vec3<i32>(-61034i, 22621i, -14630i)) & select(vec3<i32>(u_input.e, -24884i, global1.x) ^ vec3<i32>(-66056i, -1i, u_input.b), firstTrailingBit(vec3<i32>(global1.x, global1.x, global1.x)), true)));
    return Struct_1(!(!(!vec4<bool>(true, false, global0.x, global0.x))), ~0i, !(reverseBits(55307u) != reverseBits(var_0.x)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-889f, 480f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-736f, 537f), vec2<f32>(-2425f, 389f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(156f, 1260f)))))), select(!select(select(vec3<bool>(true, true, true), vec3<bool>(global0.x, global0.x, false), vec3<bool>(global0.x, global0.x, false)), !vec3<bool>(global0.x, true, global0.x), any(vec3<bool>(true, global0.x, true))), select(vec3<bool>(true, true, global0.x & global0.x), !(!vec3<bool>(global0.x, true, true)), !(!vec3<bool>(global0.x, false, true))), ~1u >= ~_wgslsmith_add_u32(u_input.a, 0u)));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    let var_0 = Struct_1(select(vec4<bool>(all(func_2(448i).a.zx), false, false, true), arg_1.a, !arg_1.e.x), -1i, true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(arg_0, vec2<f32>(385f, 1000f))))) + vec2<f32>(134f, _wgslsmith_f_op_f32(-arg_1.d.x))) * _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(1953f, 2574f), _wgslsmith_f_op_f32(ceil(-791f))), vec2<f32>(_wgslsmith_f_op_f32(trunc(arg_0.x)), _wgslsmith_f_op_f32(arg_0.x + 692f)))), vec3<bool>(arg_1.e.x, arg_1.e.x == true, false));
    global0 = vec3<bool>(!var_0.a.x, (all(arg_1.a.xy) & ((var_0.c | true) | global0.x)) | !(!(var_0.b <= global1.x)), (4294967295u < u_input.c.x) & true);
    let var_1 = Struct_3(Struct_1(var_0.a, u_input.e, (var_0.c == global0.x) | arg_1.a.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, var_0.d.x))), !vec3<bool>(true, true, all(var_0.e))), _wgslsmith_mult_i32(16025i, i32(-1i) * -_wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.b, global1.x), vec3<i32>(global1.x, -16230i, 2147483647i))), Struct_1(arg_1.a, -_wgslsmith_mult_i32(-1i, 2147483647i) >> (_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.c, vec3<u32>(global2.x, 22206u, arg_2)), ~u_input.c) % 32u), arg_1.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(var_0.d.x + 370f))), arg_1.e), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.x)) - _wgslsmith_f_op_f32(-1140f + -1615f)))), 150f));
    return Struct_1(arg_1.a, 52478i, all(select(var_0.a, arg_1.a, _wgslsmith_add_u32(0u, u_input.d.x) <= max(global2.x, global2.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(704f, _wgslsmith_f_op_f32(exp2(var_0.d.x)))), select(!select(vec3<bool>(true, true, false), arg_1.a.wwz, !var_0.a.yzy), select(vec3<bool>(var_1.c.e.x || false, true, all(var_0.a.zyz)), func_2(var_1.c.b).a.xyz, !(!arg_1.e)), !vec3<bool>(true, arg_1.c, arg_1.c)));
}

fn func_1(arg_0: Struct_4, arg_1: i32, arg_2: u32, arg_3: f32) -> vec4<u32> {
    let var_0 = ~(~(~vec3<i32>(1i, u_input.b, -9661i))) & -_wgslsmith_add_vec3_i32(~vec3<i32>(-2874i, 1i, 2147483647i), firstLeadingBit(vec3<i32>(1i, -2147483647i, arg_1)));
    var var_1 = true;
    let var_2 = Struct_3(func_4(arg_0.a.a.d, func_2(arg_0.a.a.b), 4294967295u), 15337i, arg_0.b.c, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1093f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.b.b.d.x, arg_0.b.c.d.x, true)) + arg_3)), _wgslsmith_f_op_f32(1828f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b.b.d.x, -553f))))));
    let var_3 = ~vec3<u32>(~u_input.c.x << (~abs(4294967295u) % 32u), _wgslsmith_sub_u32(global2.x ^ 4294967295u, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global2.x, 77527u, 26801u, 118273u), vec4<u32>(0u, 1u, 0u, 4294967295u)), ~vec4<u32>(74092u, 22401u, u_input.a, arg_2))), _wgslsmith_mult_u32(~abs(global2.x), ~arg_0.c));
    var var_4 = ~reverseBits(var_3.xy);
    return ~(~vec4<u32>(var_3.x, ~global2.x, ~1u, _wgslsmith_add_u32(global2.x, u_input.a)) ^ ~select(vec4<u32>(u_input.a, arg_0.c, 4294967295u, 170u) ^ vec4<u32>(arg_0.c, global2.x, u_input.d.x, arg_2), vec4<u32>(34837u, 0u, 0u, 4294967295u), func_4(vec2<f32>(-1222f, var_2.c.d.x), var_2.c, arg_2).e.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec4_u32(~(~min(vec4<u32>(u_input.d.x, u_input.d.x, global2.x, 52037u), vec4<u32>(4294967295u, global2.x, 37835u, u_input.d.x)) | vec4<u32>(global2.x, firstLeadingBit(u_input.c.x), max(global2.x, u_input.d.x), u_input.a)), func_1(Struct_4(Struct_3(Struct_1(vec4<bool>(true, global0.x, false, global0.x), u_input.b, true, vec2<f32>(509f, -761f), vec3<bool>(global0.x, global0.x, global0.x)), 965i, Struct_1(vec4<bool>(global0.x, true, true, false), 0i, global0.x, vec2<f32>(-362f, -227f), vec3<bool>(global0.x, global0.x, false)), 395f), Struct_2(global1.x, Struct_1(vec4<bool>(global0.x, global0.x, true, global0.x), global1.x, false, vec2<f32>(776f, -1323f), vec3<bool>(global0.x, global0.x, global0.x)), Struct_1(vec4<bool>(false, false, true, true), -3230i, false, vec2<f32>(216f, 1000f), vec3<bool>(global0.x, false, global0.x)), vec3<bool>(global0.x, false, global0.x)), global2.x), -(u_input.e ^ -2147483647i), countOneBits(_wgslsmith_div_u32(u_input.c.x, 4294967295u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(165f, 623f)))) >> (~_wgslsmith_sub_vec4_u32(vec4<u32>(12523u, 1u, u_input.d.x, 24446u) << (vec4<u32>(4294967295u, u_input.d.x, u_input.a, global2.x) % vec4<u32>(32u)), ~vec4<u32>(global2.x, 38411u, 76715u, u_input.c.x)) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-846f, 1262f, 546f, -1000f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1275f), -176f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), -999f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1326f, 275f, -108f)) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-784f, 665f, 957f, -666f)))))), _wgslsmith_dot_vec4_u32(reverseBits(var_0), vec4<u32>(1u, 12402u, 12172u, 0u) & vec4<u32>(var_0.x, 1u, 1518u, var_0.x)) != (~u_input.d.x >> (~1u % 32u)))), func_2(u_input.b).b, u_input.b, -vec4<i32>(u_input.e, abs(-global1.x), max(global1.x >> (var_0.x % 32u), -global1.x), _wgslsmith_sub_i32(min(-1i, global1.x), ~global1.x)));
}

