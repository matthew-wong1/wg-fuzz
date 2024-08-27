struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-2551f, 850f, 1958f);

var<private> global1: f32;

var<private> global2: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(Struct_1(vec2<bool>(true, false), 122f, true, 4294967295u), vec2<f32>(1507f, 1076f)), Struct_2(Struct_1(vec2<bool>(true, false), -476f, true, 1u), vec2<f32>(389f, 1225f)), Struct_2(Struct_1(vec2<bool>(false, true), -1608f, false, 117874u), vec2<f32>(-771f, 407f)), Struct_2(Struct_1(vec2<bool>(true, false), 878f, true, 12586u), vec2<f32>(1273f, -1000f)), Struct_2(Struct_1(vec2<bool>(true, true), -155f, false, 13514u), vec2<f32>(-775f, -542f)), Struct_2(Struct_1(vec2<bool>(false, true), 206f, false, 90280u), vec2<f32>(-267f, -290f)), Struct_2(Struct_1(vec2<bool>(true, false), -666f, false, 39751u), vec2<f32>(254f, 246f)), Struct_2(Struct_1(vec2<bool>(false, true), -1000f, true, 4294967295u), vec2<f32>(1221f, 537f)), Struct_2(Struct_1(vec2<bool>(true, true), 1520f, true, 0u), vec2<f32>(-582f, -1081f)), Struct_2(Struct_1(vec2<bool>(true, false), 1000f, false, 27758u), vec2<f32>(1453f, -183f)), Struct_2(Struct_1(vec2<bool>(true, true), -1092f, false, 58208u), vec2<f32>(-1000f, 300f)), Struct_2(Struct_1(vec2<bool>(false, true), 954f, true, 0u), vec2<f32>(1512f, -1057f)), Struct_2(Struct_1(vec2<bool>(false, false), -574f, true, 8486u), vec2<f32>(-400f, 2365f)), Struct_2(Struct_1(vec2<bool>(false, false), -304f, true, 23467u), vec2<f32>(637f, 1041f)), Struct_2(Struct_1(vec2<bool>(true, false), -1040f, true, 23695u), vec2<f32>(-1625f, 993f)), Struct_2(Struct_1(vec2<bool>(false, true), -899f, false, 40395u), vec2<f32>(-510f, 643f)), Struct_2(Struct_1(vec2<bool>(true, true), -1390f, true, 8733u), vec2<f32>(326f, 2008f)), Struct_2(Struct_1(vec2<bool>(true, true), -1000f, false, 1u), vec2<f32>(512f, -1000f)), Struct_2(Struct_1(vec2<bool>(true, false), 955f, true, 41265u), vec2<f32>(258f, 829f)), Struct_2(Struct_1(vec2<bool>(false, true), 123f, true, 37036u), vec2<f32>(-1639f, -851f)), Struct_2(Struct_1(vec2<bool>(false, false), 2755f, false, 43887u), vec2<f32>(1154f, -1134f)), Struct_2(Struct_1(vec2<bool>(false, false), -595f, false, 540u), vec2<f32>(103f, -141f)), Struct_2(Struct_1(vec2<bool>(false, false), -206f, true, 12134u), vec2<f32>(-1261f, 160f)), Struct_2(Struct_1(vec2<bool>(false, true), 698f, true, 51920u), vec2<f32>(-625f, 1147f)));

var<private> global3: vec3<i32>;

var<private> global4: array<vec4<i32>, 20>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec3<bool> {
    global4 = array<vec4<i32>, 20>();
    let var_0 = Struct_2(Struct_1(select(select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(false, false), any(vec3<bool>(false, true, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec3<bool>(false, true, false))), any(vec2<bool>(false, true))), -944f, true, ~4294967295u), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1992f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -2704f) + global0.zy)));
    let var_1 = ~vec3<u32>(var_0.a.d, ~_wgslsmith_sub_u32(var_0.a.d, firstLeadingBit(u_input.a.x)), ~u_input.a.x);
    global3 = select(_wgslsmith_clamp_vec3_i32(u_input.c, u_input.c, vec3<i32>(_wgslsmith_clamp_i32(min(7203i, u_input.d), 1i, 45012i), countOneBits(2147483647i), ~(261i << (1u % 32u)))), vec3<i32>(global3.x, (1i >> (_wgslsmith_sub_u32(1u, 1u) % 32u)) << (_wgslsmith_div_u32(abs(1u), var_0.a.d) % 32u), global3.x), !vec3<bool>(select(global3.x >= u_input.d, any(vec3<bool>(var_0.a.a.x, false, var_0.a.a.x)), true), false, all(vec2<bool>(var_0.a.c, false)) || false));
    global2 = array<Struct_2, 24>();
    return !(!(!(!(!vec3<bool>(var_0.a.c, true, false)))));
}

fn func_2(arg_0: u32) -> i32 {
    global2 = array<Struct_2, 24>();
    global2 = array<Struct_2, 24>();
    var var_0 = vec3<i32>(global3.x, ~abs(u_input.e ^ 3228i), u_input.e) | vec3<i32>(min(-75047i, reverseBits(global3.x)) ^ 1i, 1i, global3.x);
    var var_1 = global2[_wgslsmith_index_u32(~81195u, 24u)];
    let var_2 = select(vec3<bool>(false, var_1.a.c, var_1.a.c != (~global3.x != (var_0.x >> (1u % 32u)))), func_3(), vec3<bool>(all(func_3().zx), !func_3().x, var_1.a.a.x));
    return -global3.x;
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: Struct_2) -> u32 {
    global4 = array<vec4<i32>, 20>();
    var var_0 = _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(~arg_3.a.d, ~33612u), ~arg_1.a.d), 20u)], vec4<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 0i, u_input.e), vec3<i32>(arg_0.x, 22329i, arg_0.x)), 2147483647i | global3.x), _wgslsmith_sub_i32(61386i, 2147483647i) >> (_wgslsmith_sub_u32(arg_1.a.d, arg_3.a.d) % 32u), _wgslsmith_dot_vec2_i32(u_input.c.zz, u_input.c.xy & vec2<i32>(0i, global3.x)), u_input.c.x)), vec4<i32>(~0i, arg_0.x, -(1i << ((arg_3.a.d << (arg_3.a.d % 32u)) % 32u)), 2147483647i));
    var var_1 = arg_1;
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(arg_1.a.b))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.b))));
    var var_2 = select(vec4<i32>(func_2(u_input.a.x), u_input.c.x, -14463i, u_input.d), ~global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(20273u, ~18421u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 12910u), u_input.a), select(arg_3.a.d, 0u, arg_2.x)), max(~vec4<u32>(arg_3.a.d, u_input.b, arg_1.a.d, 60489u), abs(vec4<u32>(u_input.b, arg_3.a.d, arg_3.a.d, 47885u)))), 20u)], true);
    return arg_1.a.d;
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    let var_0 = 1u;
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2656f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-966f + -339f) - 414f), 1000f)));
    global4 = array<vec4<i32>, 20>();
    var var_1 = Struct_1(arg_0.a.a, arg_0.a.b, true, 0u);
    var var_2 = func_1(~u_input.c.xx, arg_0, func_3(), arg_0);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 24>();
    global4 = array<vec4<i32>, 20>();
    let var_0 = func_4(global2[_wgslsmith_index_u32(select(0u, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.b, 4294967295u), ~vec3<u32>(4294967295u, u_input.a.x, 1u)), vec3<u32>(func_1(global3.zx, global2[_wgslsmith_index_u32(0u, 24u)], vec3<bool>(true, false, false), Struct_2(Struct_1(vec2<bool>(false, true), global0.x, false, 4294967295u), global0.xy)), u_input.a.x, ~10920u)), false), 24u)]);
    global1 = func_4(global2[_wgslsmith_index_u32(func_1(countOneBits(global3.yz), Struct_2(var_0.a, _wgslsmith_f_op_vec2_f32(-global0.zz)), !select(vec3<bool>(true, false, var_0.a.a.x), !vec3<bool>(false, var_0.a.c, var_0.a.c), !var_0.a.a.x), Struct_2(var_0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global0.xx, global0.yx)))), 24u)]).b.x;
    let var_1 = var_0.a;
    var var_2 = u_input.e;
    let var_3 = reverseBits(firstLeadingBit(select(_wgslsmith_mod_vec3_i32(vec3<i32>(-42048i, -2147483647i, global3.x), abs(vec3<i32>(global3.x, -37851i, -14656i))), abs(_wgslsmith_clamp_vec3_i32(u_input.c, u_input.c, vec3<i32>(u_input.e, -67416i, 800i))), select(!vec3<bool>(var_1.c, false, var_1.c), vec3<bool>(var_0.a.c, var_0.a.a.x, true), vec3<bool>(var_0.a.a.x, false, var_1.a.x)))));
    let var_4 = !(!select(var_0.a.a.x, any(var_0.a.a), select(any(var_0.a.a), var_1.a.x, !var_1.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(round(var_0.a.b)), _wgslsmith_f_op_f32(var_1.b + 1842f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1042f) - var_0.a.b)), ~firstLeadingBit(~vec4<i32>(u_input.e, -6222i, global3.x, var_3.x)) | vec4<i32>(-53363i, u_input.d, ~(u_input.d | var_3.x), abs(~u_input.d)));
}

