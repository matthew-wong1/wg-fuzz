struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<f32>,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: vec3<u32>, arg_1: bool, arg_2: vec3<i32>, arg_3: vec3<i32>) -> vec3<bool> {
    let var_0 = select(!vec3<bool>(any(vec2<bool>(arg_1, false)), !(!global0.x), arg_1), !vec3<bool>(all(select(vec3<bool>(global0.x, arg_1, arg_1), vec3<bool>(global0.x, false, global0.x), true)), all(!vec4<bool>(true, false, false, global0.x)), true), all(vec4<bool>(!(arg_1 && false), true, true, false)));
    var var_1 = false;
    let var_2 = Struct_2(-1i, Struct_1(!all(vec4<bool>(var_0.x, arg_1, var_0.x, true)), arg_0.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(255f, -243f), vec2<f32>(1259f, 1018f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(151f, -247f), vec2<f32>(-1000f, -1000f)))))), 80571u));
    var_1 = false;
    global0 = vec3<bool>(_wgslsmith_sub_u32(var_2.b.d, ~arg_0.x) == (max(arg_0.x, countOneBits(arg_0.x)) & ~(7898u >> (var_2.b.d % 32u))), var_0.x, true);
    return vec3<bool>(global0.x, any(select(global0.zx, global0.yz, var_0.x)), var_2.b.a);
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: f32) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-230f, -620f)))), _wgslsmith_f_op_f32(f32(-1f) * -620f), _wgslsmith_f_op_f32(arg_2 + arg_2)));
    var var_1 = vec4<f32>(1509f, var_0.x, arg_2, -551f);
    var var_2 = !all(!(!vec4<bool>(true, arg_1, arg_1, false))) || arg_1;
    var var_3 = Struct_1(any(vec2<bool>(arg_1, false)), 4294967295u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.xz)), var_1.yw)), ~(~24046u));
    return _wgslsmith_f_op_vec2_f32(ceil(var_0.zx));
}

fn func_4(arg_0: Struct_1) -> f32 {
    let var_0 = arg_0;
    global0 = !func_2(~select(vec3<u32>(arg_0.b, 763u, var_0.b), vec3<u32>(4294967295u, var_0.d, 4192u), var_0.a) << (~abs(vec3<u32>(var_0.d, 0u, 4294967295u)) % vec3<u32>(32u)), u_input.a.x < ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 0i, u_input.a.x, u_input.a.x), u_input.a), _wgslsmith_clamp_vec3_i32(vec3<i32>(27300i, 0i ^ u_input.a.x, -1i >> (var_0.b % 32u)), _wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(u_input.a.x, u_input.a.x, 18446i)), vec3<i32>(u_input.a.x, 0i, u_input.a.x)), u_input.a.yxx), -countOneBits(-vec3<i32>(-7799i, 0i, 1i)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x)));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.c.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.c.x + -565f))))) * 834f);
    global0 = select(func_2(abs(~(~vec3<u32>(var_0.b, arg_0.b, 4294967295u))), true && var_0.a, select(_wgslsmith_sub_vec3_i32(select(vec3<i32>(-1i, u_input.a.x, 0i), u_input.a.zzz, vec3<bool>(false, arg_0.a, false)), reverseBits(vec3<i32>(-7046i, -15611i, 31555i))), -(u_input.a.xzy ^ vec3<i32>(52040i, u_input.a.x, 0i)), !(!vec3<bool>(true, false, arg_0.a))), vec3<i32>(min(i32(-1i) * -56877i, u_input.a.x), -1i, -u_input.a.x)), vec3<bool>(select(true, arg_0.a, _wgslsmith_f_op_f32(-arg_0.c.x) >= _wgslsmith_div_f32(-1000f, -729f)), false, func_2(vec3<u32>(1u, _wgslsmith_mult_u32(44804u, arg_0.d), arg_0.d), true, ~(~u_input.a.zyy), ~u_input.a.yyw).x), all(vec2<bool>(!(1i < u_input.a.x), global0.x)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.c.x))))))));
}

fn func_1(arg_0: vec3<u32>, arg_1: i32) -> Struct_1 {
    global0 = !select(vec3<bool>(global0.x, global0.x, true), vec3<bool>(!(arg_0.x >= arg_0.x), global0.x && true, false), global0.x);
    global0 = func_2(vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, arg_0.x, 1u), vec4<u32>(65096u, 35832u, 4294967295u, arg_0.x)) ^ 88983u, arg_0.x, _wgslsmith_mod_u32(36817u, abs(~9309u))), false, firstTrailingBit(_wgslsmith_sub_vec3_i32(-u_input.a.ywz, u_input.a.zwz)) | u_input.a.zzw, vec3<i32>(-23201i, firstTrailingBit(1i), -1i));
    let var_0 = vec4<bool>(true, false, any(!vec2<bool>(any(global0.yz), true)), global0.x);
    var var_1 = countOneBits(vec3<u32>(1u, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, 0u, 0u) | arg_0, ~vec3<u32>(arg_0.x, arg_0.x, arg_0.x)), arg_0.x), ~abs(63312u)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1480f))) * 789f), -1636f)) + _wgslsmith_f_op_f32(func_4(Struct_1(global0.x, ~var_1.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(u_input.a.x, var_0.x, 674f))), ~abs(4196u)))));
    return Struct_1(var_0.x, 79259u, vec2<f32>(-320f, _wgslsmith_f_op_f32(select(var_2, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_vec2_f32(func_3(1i, var_0.x, var_2)).x)), global0.x))), ~var_1.x);
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = arg_0;
    return Struct_1(true, var_0.d, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(arg_0.c)))), ~(~_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(12993u, var_0.b, 4294967295u, 87838u)), vec4<u32>(34401u, arg_0.d, 4294967295u, 0u))));
}

fn func_6(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global0 = vec3<bool>(arg_0.x, select(all(func_2(vec3<u32>(23415u, arg_1.b, arg_1.b), false, vec3<i32>(-2147483647i, 36039i, 1i), vec3<i32>(1566i, u_input.a.x, 1i))) || !(!arg_0.x), 1i == reverseBits(-u_input.a.x), 1608f < _wgslsmith_f_op_f32(arg_1.c.x - _wgslsmith_f_op_f32(floor(1794f)))), global0.x);
    global0 = vec3<bool>(true, !global0.x, !all(!vec4<bool>(arg_0.x, arg_1.a, arg_1.a, arg_0.x)));
    let var_0 = vec2<f32>(1673f, -1751f);
    global0 = select(vec3<bool>(arg_2.a, true, true), func_2(min(firstTrailingBit(vec3<u32>(0u, arg_1.b, arg_1.b) << (vec3<u32>(0u, 2484u, arg_1.d) % vec3<u32>(32u))), vec3<u32>(4294967295u, ~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_2.b), vec2<u32>(89134u, arg_1.b)))), true, -(~max(u_input.a.zwz, u_input.a.yyz)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) | select(vec3<i32>(31649i, 2147483647i, u_input.a.x), vec3<i32>(-2147483647i, u_input.a.x, -1i), global0.x), vec3<i32>(1668i, 0i, abs(u_input.a.x)))), select(select(select(vec3<bool>(false, true, true), vec3<bool>(global0.x, true, arg_0.x), select(vec3<bool>(true, global0.x, true), vec3<bool>(arg_2.a, false, arg_1.a), true)), select(vec3<bool>(arg_1.a, arg_2.a, true), vec3<bool>(arg_1.a, false, false), all(vec2<bool>(arg_0.x, arg_1.a))), vec3<bool>(!arg_0.x, arg_1.c.x >= arg_1.c.x, !arg_1.a)), select(select(vec3<bool>(false, false, arg_2.a), !vec3<bool>(arg_1.a, arg_1.a, true), true), !(!vec3<bool>(arg_1.a, false, arg_0.x)), !(!vec3<bool>(global0.x, arg_0.x, true))), !arg_2.a));
    var var_1 = abs(~0u) < arg_1.b;
    return func_1(~abs(~(vec3<u32>(4294967295u, arg_2.d, arg_1.d) ^ vec3<u32>(28997u, arg_1.b, arg_1.b))), (_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a.x, u_input.a.x, u_input.a.x), u_input.a), ~36568i) << (arg_2.d % 32u)) & _wgslsmith_mod_i32(-2147483647i, _wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), u_input.a.x)));
}

fn func_7(arg_0: vec3<u32>, arg_1: i32, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = Struct_1(true, 0u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.c)), func_6(!(!global0.zy), arg_2, func_1(vec3<u32>(_wgslsmith_div_u32(0u, arg_2.b), ~10652u, 1u), u_input.a.x)).d);
    let var_1 = (vec4<u32>(7219u, var_0.d, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.d, 1u, var_0.d, var_0.d), vec4<u32>(1u, 50180u, arg_2.b, 0u)) << (~22964u % 32u), var_0.d) ^ reverseBits(~(vec4<u32>(arg_0.x, arg_2.b, var_0.b, var_0.b) | vec4<u32>(var_0.b, 34180u, arg_0.x, var_0.b)))) << (_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.b, 21639u, arg_0.x, ~arg_2.b), vec4<u32>(firstTrailingBit(_wgslsmith_add_u32(80747u, 0u)), var_0.b, 1u, 26852u)) % vec4<u32>(32u));
    let var_2 = Struct_2(u_input.a.x | max(2147483647i, u_input.a.x), func_1(_wgslsmith_div_vec3_u32(~(~var_1.yxz), var_1.wzx), 0i));
    let var_3 = u_input.a.x;
    let var_4 = -1111f;
    return !select(vec3<bool>(func_5(arg_2).a, arg_2.a, select(true, true, func_5(Struct_1(true, 4294967295u, arg_2.c, var_0.b)).a)), select(vec3<bool>(global0.x && var_2.b.a, true, func_6(vec2<bool>(false, true), Struct_1(false, 4294967295u, var_2.b.c, 19818u), arg_2).a), vec3<bool>(arg_2.a, all(vec3<bool>(arg_2.a, true, global0.x)), true), vec3<bool>(u_input.a.x != -1i, all(vec4<bool>(var_2.b.a, false, true, var_2.b.a)), arg_2.a)), func_2(arg_0, true, abs(u_input.a.wzx), -(~vec3<i32>(2147483647i, var_2.a, u_input.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(any(select(!(!vec3<bool>(false, true, global0.x)), !vec3<bool>(global0.x, false, true), !(!vec3<bool>(true, global0.x, false)))), false, global0.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(160f, -624f, -1279f, -997f)), _wgslsmith_div_vec4_f32(vec4<f32>(-322f, 400f, -441f, 867f), vec4<f32>(-1676f, 554f, 1232f, 753f)))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-246f, -249f, -170f, -126f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, 1516f, -537f, 1000f))))))));
    global0 = !select(vec3<bool>(var_0.x, !(!global0.x), global0.x), vec3<bool>(var_0.x, true, !all(vec4<bool>(true, global0.x, global0.x, global0.x))), any(!select(vec3<bool>(true, global0.x, global0.x), var_0, vec3<bool>(var_0.x, false, false))));
    global0 = !func_7(~_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 1u, 1u), select(vec3<u32>(1u, 4294967295u, 24317u), vec3<u32>(0u, 4294967295u, 27646u), vec3<bool>(var_0.x, false, true))), _wgslsmith_dot_vec4_i32(-u_input.a, u_input.a) >> (~38440u % 32u), func_6(select(var_0.yx, select(vec2<bool>(global0.x, true), global0.zz, false), false), func_5(func_1(vec3<u32>(4294967295u, 4294967295u, 1u), u_input.a.x)), Struct_1(true, 1u, _wgslsmith_f_op_vec2_f32(var_1.yz - var_1.zw), 1u)));
    global0 = var_0;
    var var_2 = u_input.a.x;
    let var_3 = u_input.a;
    global0 = var_0;
    global0 = !var_0;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_u32(_wgslsmith_clamp_u32(~4294967295u, ~13422u, _wgslsmith_mult_u32(1u, 0u)), ~32935u), ~(~17475u), _wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, ~25907i, u_input.a.x), ~(~vec3<i32>(-2147483647i, u_input.a.x, var_3.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.zw)))) * var_1.yz), var_3.zw);
}

