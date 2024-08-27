struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 8>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>) -> vec4<u32> {
    let var_0 = Struct_2(u_input.b.x, Struct_1(-u_input.b.x <= ~abs(u_input.b.x), select(~4294967295u, _wgslsmith_sub_u32(~14393u, 1344u), arg_0.b.a | arg_0.d.a), _wgslsmith_clamp_vec3_i32(select(vec3<i32>(u_input.b.x, 0i, arg_0.d.c.x), vec3<i32>(-54472i, 1i, arg_0.a), true) << (u_input.c.xww % vec3<u32>(32u)), -reverseBits(global0[_wgslsmith_index_u32(arg_1.x, 8u)]), arg_0.d.c), u_input.d), true, arg_0.b, -919f);
    var var_1 = 64295i;
    let var_2 = Struct_1(!(!var_0.b.a), u_input.c.x, vec3<i32>(var_0.b.c.x, -35400i, 2147483647i), 0u);
    global0 = array<vec3<i32>, 8>();
    var var_3 = !select(vec2<bool>(true, true), !(!(!vec2<bool>(false, var_2.a))), select(vec2<bool>(true, var_0.b.a), select(select(vec2<bool>(arg_0.d.a, false), vec2<bool>(var_2.a, var_0.c), vec2<bool>(false, arg_0.c)), !vec2<bool>(var_0.b.a, arg_0.c), select(vec2<bool>(var_2.a, false), vec2<bool>(true, var_2.a), vec2<bool>(false, var_2.a))), true));
    return vec4<u32>(u_input.c.x, countOneBits(~_wgslsmith_sub_u32(arg_1.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 4294967295u), arg_1.yy))), reverseBits(var_0.b.d), 4294967295u);
}

fn func_2(arg_0: vec3<i32>) -> vec3<i32> {
    var var_0 = u_input.b;
    var var_1 = func_3(Struct_2(abs(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(27503i, 47671i, u_input.b.x, -12226i), vec4<i32>(2147483647i, arg_0.x, 1i, -14641i)), -1i | u_input.b.x)), Struct_1((i32(-1i) * -60896i) >= _wgslsmith_sub_i32(var_0.x, u_input.b.x), abs(_wgslsmith_mult_u32(50950u, 58392u)), vec3<i32>(-36646i, select(var_0.x, -1i, false), 15763i), ~(~5936u)), u_input.a < u_input.a, Struct_1(false, 0u, arg_0, u_input.c.x), _wgslsmith_f_op_f32(-1242f * _wgslsmith_f_op_f32(select(-1000f, -513f, true)))), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(36927u, u_input.d))) << (reverseBits(~u_input.c.yyz) % vec3<u32>(32u)), ~vec3<u32>(u_input.a, u_input.a, u_input.d)));
    var var_2 = _wgslsmith_add_u32(u_input.c.x, 1u);
    var var_3 = func_3(Struct_2(select(arg_0.x, var_0.x, select(false, true, true)), Struct_1(true, var_1.x, vec3<i32>(54467i, var_0.x, -1i), abs(59370u)), any(vec3<bool>(true, false, false)), Struct_1(all(vec2<bool>(false, true)), ~0u, firstLeadingBit(vec3<i32>(9729i, -1i, 20418i)), var_1.x), 610f), u_input.c.xww).x | u_input.c.x;
    var var_4 = Struct_2(~(-27876i | -arg_0.x), Struct_1(select(false, true, all(vec3<bool>(true, false, false))), 4294967295u, vec3<i32>(var_0.x, countOneBits(-arg_0.x), _wgslsmith_dot_vec2_i32(var_0.zz << (var_1.yw % vec2<u32>(32u)), -vec2<i32>(1i, var_0.x))), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(1u | u_input.c.x, 1u, _wgslsmith_dot_vec3_u32(var_1.xzz, var_1.wyx)), 1u)), !all(vec4<bool>(true, true, true, true)), Struct_1(true, ~13744u, ~var_0.wyw, u_input.c.x), _wgslsmith_f_op_f32(exp2(1f)));
    return firstLeadingBit(vec3<i32>(~_wgslsmith_mult_i32(arg_0.x, 2147483647i) & -1i, _wgslsmith_sub_i32(u_input.b.x, 0i << (u_input.d % 32u)) ^ arg_0.x, var_4.d.c.x));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(true, _wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(4294967295u, _wgslsmith_mult_u32(u_input.c.x, 23845u)), (33818u & arg_1.d) & 65583u), arg_1.d), arg_1.c << (vec3<u32>(firstTrailingBit(~118359u), firstTrailingBit(23105u | arg_1.d), _wgslsmith_clamp_u32(u_input.c.x, ~u_input.d, _wgslsmith_div_u32(arg_0.b, 4294967295u))) % vec3<u32>(32u)), ~arg_0.b);
    var var_1 = Struct_2(_wgslsmith_add_i32(_wgslsmith_div_i32(~(-2147483647i), arg_0.c.x), i32(-1i) * -func_2(vec3<i32>(var_0.c.x, -1i, u_input.b.x)).x), arg_0, arg_0.a, arg_1, 697f);
    global0 = array<vec3<i32>, 8>();
    let var_2 = all(vec4<bool>(true, arg_0.a, !all(!vec4<bool>(arg_1.a, var_1.b.a, var_0.a, var_0.a)), var_0.a));
    var var_3 = firstTrailingBit(-31117i);
    return arg_1;
}

fn func_1(arg_0: vec3<u32>) -> vec2<f32> {
    let var_0 = Struct_2(17476i, func_4(Struct_1(any(vec2<bool>(true, true)), min(1u << (arg_0.x % 32u), ~u_input.c.x), (vec3<i32>(u_input.b.x, 1606i, -2147483647i) ^ vec3<i32>(-2147483647i, 2147483647i, -1i)) & u_input.b.zzz, u_input.d), Struct_1(any(vec2<bool>(true, true)), 1u, func_2(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)), 12817u)), true, Struct_1(false, 15167u, global0[_wgslsmith_index_u32(arg_0.x, 8u)], firstLeadingBit(u_input.c.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-167f, 500f)))))));
    global0 = array<vec3<i32>, 8>();
    global0 = array<vec3<i32>, 8>();
    global0 = array<vec3<i32>, 8>();
    global0 = array<vec3<i32>, 8>();
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.e, 1000f))))));
}

fn func_5(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: i32, arg_3: Struct_2) -> vec2<i32> {
    let var_0 = arg_3;
    let var_1 = any(!vec4<bool>(arg_3.d.a, any(vec4<bool>(arg_3.c, var_0.b.a, true, false)), all(select(vec4<bool>(arg_3.c, false, false, var_0.d.a), vec4<bool>(true, false, var_0.b.a, false), vec4<bool>(arg_3.b.a, arg_3.c, arg_3.b.a, var_0.c))), arg_3.b.a));
    let var_2 = -785f;
    let var_3 = _wgslsmith_sub_u32(~u_input.a, _wgslsmith_mult_u32(4294967295u, _wgslsmith_sub_u32(~var_0.b.b, ~var_0.d.d) | _wgslsmith_dot_vec2_u32(vec2<u32>(arg_3.b.b, u_input.a), vec2<u32>(u_input.c.x, 1771u))));
    let var_4 = false;
    return _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_div_i32(~1i, _wgslsmith_add_i32(-27109i, -34030i) | _wgslsmith_sub_i32(-1i, u_input.b.x)), -42411i), -_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, var_0.b.c.x) ^ arg_1, vec2<i32>(_wgslsmith_div_i32(arg_1.x, -5394i), 1i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(firstLeadingBit(vec3<u32>(1u, 25755u, 0u)))) * vec2<f32>(_wgslsmith_f_op_f32(1891f - 1111f), 153f))), _wgslsmith_sub_vec2_i32(u_input.b.xx, u_input.b.wz), abs(abs(-2147483647i)), Struct_2(u_input.b.x, func_4(func_4(Struct_1(true, 0u, u_input.b.yyy, u_input.a), Struct_1(false, u_input.d, vec3<i32>(u_input.b.x, u_input.b.x, -2147483647i), 0u)), Struct_1(true, ~58384u, vec3<i32>(1i, 1i, u_input.b.x), 6780u)), true, func_4(func_4(Struct_1(false, 51790u, vec3<i32>(u_input.b.x, -41854i, u_input.b.x), u_input.c.x), func_4(Struct_1(true, u_input.d, vec3<i32>(-2147483647i, u_input.b.x, u_input.b.x), 3967u), Struct_1(true, 83351u, global0[_wgslsmith_index_u32(4294967295u, 8u)], 23718u))), Struct_1(any(vec2<bool>(true, false)), u_input.c.x, ~u_input.b.xwx, 7915u)), _wgslsmith_f_op_f32(trunc(580f))));
    global0 = array<vec3<i32>, 8>();
    var var_1 = ~var_0;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(342f))))) > -2158f, firstLeadingBit(max(u_input.c.x, u_input.c.x)), global0[_wgslsmith_index_u32(abs(abs(43080u)), 8u)], 0u);
    let var_3 = Struct_2(-(~(u_input.b.x | _wgslsmith_dot_vec4_i32(vec4<i32>(28175i, 1722i, var_2.c.x, var_0.x), u_input.b))), Struct_1(var_2.a, ~1u, ~vec3<i32>(var_0.x, u_input.b.x, var_2.c.x) | var_2.c, u_input.d), var_2.a, Struct_1(true, _wgslsmith_mult_u32(81233u, _wgslsmith_add_u32(var_2.b ^ 0u, func_3(Struct_2(-30111i, var_2, var_2.a, Struct_1(true, var_2.b, vec3<i32>(u_input.b.x, var_1.x, -1i), u_input.d), -2063f), u_input.c.zyz).x)), firstLeadingBit(global0[_wgslsmith_index_u32(~1u ^ select(var_2.d, u_input.d, false), 8u)]), ~(~u_input.c.x)), _wgslsmith_f_op_vec2_f32(func_1(u_input.c.xwz)).x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(func_1(vec3<u32>(~_wgslsmith_mult_u32(var_3.d.b, 33099u), 1u, 1u))).x, ~firstLeadingBit(_wgslsmith_mod_vec3_u32(min(u_input.c.zxw, u_input.c.zwz), u_input.c.yxy)), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(firstTrailingBit(u_input.b), u_input.b), -select(13665i, var_1.x, true)) | _wgslsmith_dot_vec4_i32(u_input.b, _wgslsmith_clamp_vec4_i32(~vec4<i32>(1i, -1i, 2147483647i, 1i), select(u_input.b, vec4<i32>(11673i, var_3.b.c.x, var_3.a, -6670i), var_3.c), vec4<i32>(var_2.c.x, 1i, var_1.x, -2147483647i))));
}

