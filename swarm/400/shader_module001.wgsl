struct Struct_1 {
    a: f32,
    b: i32,
    c: i32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: i32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec3<u32> {
    let var_0 = Struct_3(global0.a, global0.b, firstLeadingBit(firstLeadingBit(_wgslsmith_clamp_vec2_i32(global0.c, _wgslsmith_add_vec2_i32(vec2<i32>(global0.c.x, global0.c.x), global0.c), -global0.c))));
    let var_1 = ~vec3<i32>(20681i, _wgslsmith_dot_vec2_i32(~u_input.d.zy, _wgslsmith_div_vec2_i32(global0.c, _wgslsmith_mod_vec2_i32(u_input.d.xy, global0.c))), _wgslsmith_add_i32(u_input.d.x << (~39530u % 32u), firstLeadingBit(var_0.a.c) ^ var_0.a.c));
    var var_2 = min(global0.b.e.c, i32(-1i) * -min(countOneBits(global0.c.x), var_0.b.e.c));
    var var_3 = u_input.c.x;
    var var_4 = vec3<f32>(global0.b.a.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(990f, _wgslsmith_f_op_f32(var_0.b.c.x - var_0.b.b.a))), _wgslsmith_f_op_f32(floor(var_0.b.c.x)))), _wgslsmith_f_op_f32(global0.a.d.x + var_0.b.b.d.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(var_0.a.a, 1554f)), _wgslsmith_f_op_f32(-var_0.a.d.x)))), _wgslsmith_div_f32(_wgslsmith_div_f32(-766f, _wgslsmith_f_op_f32(ceil(-1557f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1112f + var_0.b.e.d.x), _wgslsmith_f_op_f32(-var_0.a.d.x))))));
    return vec3<u32>(reverseBits(4294967295u), ~u_input.c.x, _wgslsmith_dot_vec2_u32(firstTrailingBit(~select(vec2<u32>(u_input.c.x, 113082u), u_input.c, vec2<bool>(false, true))), u_input.c));
}

fn func_2(arg_0: Struct_3) -> f32 {
    var var_0 = ~((min(vec3<i32>(-36446i, global0.b.b.c, 36526i), u_input.d.zwz) << (min(~vec3<u32>(u_input.b, 1u, u_input.b), func_3()) % vec3<u32>(32u))) << (u_input.a % vec3<u32>(32u)));
    var_0 = vec3<i32>(arg_0.c.x, abs(-26801i), global0.c.x);
    var_0 = ~u_input.d.ywz ^ u_input.d.zzz;
    let var_1 = true;
    var_0 = (vec3<i32>(global0.c.x, _wgslsmith_mod_i32(-41971i, global0.a.c), reverseBits(_wgslsmith_dot_vec3_i32(u_input.d.xyz, vec3<i32>(-1i, var_0.x, 1i)))) & select(firstLeadingBit(~vec3<i32>(u_input.d.x, arg_0.a.c, -19281i)), vec3<i32>(-5653i, 0i, -2147483647i | global0.c.x), vec3<bool>(true, var_1, false))) | min(max(~u_input.d.yyx, u_input.d.yxy), vec3<i32>(~_wgslsmith_sub_i32(1i, u_input.d.x), u_input.e, 15487i));
    return 179f;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec4<f32>) -> Struct_3 {
    global0 = Struct_3(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(Struct_3(Struct_1(758f, u_input.e, u_input.d.x, vec3<f32>(-293f, arg_2.x, arg_2.x)), global0.b, vec2<i32>(-1i, arg_0.c)))), arg_0.d.x), global0.c.x, global0.a.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-139f, -1375f, global0.b.e.a) - arg_0.d))))), global0.b, global0.c << (_wgslsmith_mult_vec2_u32(~vec2<u32>(40831u, 4294967295u), _wgslsmith_mult_vec2_u32(vec2<u32>(11282u, 0u), _wgslsmith_clamp_vec2_u32(u_input.a.yx, vec2<u32>(u_input.c.x, u_input.a.x), vec2<u32>(21847u, u_input.a.x)))) % vec2<u32>(32u)));
    global0 = Struct_3(Struct_1(arg_2.x, u_input.e, _wgslsmith_div_i32(abs(select(global0.c.x, -1i, false)), -arg_1), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, arg_2.x, global0.b.c.x)) - _wgslsmith_f_op_vec3_f32(global0.b.e.d + global0.b.a.d)), _wgslsmith_f_op_vec3_f32(global0.a.d + vec3<f32>(global0.a.d.x, -141f, arg_2.x)), !select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true))))), global0.b, u_input.d.yx);
    let var_0 = _wgslsmith_f_op_f32(-arg_0.d.x);
    let var_1 = ~(min(max(max(vec4<u32>(u_input.c.x, 4294967295u, u_input.b, 26757u), vec4<u32>(4294967295u, 1u, u_input.a.x, u_input.a.x)), vec4<u32>(1u, u_input.b, u_input.c.x, u_input.b)), min(vec4<u32>(u_input.b, 4294967295u, 0u, u_input.b) & vec4<u32>(u_input.b, u_input.c.x, u_input.a.x, 4294967295u), abs(vec4<u32>(u_input.b, u_input.c.x, 0u, u_input.c.x)))) >> (((_wgslsmith_mult_vec4_u32(vec4<u32>(37272u, u_input.c.x, 1u, 4294967295u), vec4<u32>(9748u, u_input.a.x, 1u, 0u)) >> (vec4<u32>(u_input.c.x, 83873u, 4294967295u, 22839u) % vec4<u32>(32u))) << (~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, 33460u, u_input.b, 29288u), vec4<u32>(u_input.c.x, 0u, u_input.b, u_input.c.x)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    global0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(294f)) - 1253f), -arg_1, ~reverseBits(69817i), vec3<f32>(_wgslsmith_f_op_f32(min(1177f, _wgslsmith_f_op_f32(-446f - global0.a.a))), var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1086f)))), Struct_2(global0.a, Struct_1(-395f, i32(-1i) * -9929i, max(u_input.e, select(u_input.d.x, u_input.e, false)), global0.b.e.d), arg_2.yzz, arg_0, Struct_1(arg_2.x, 0i, _wgslsmith_div_i32(-27990i, 44997i), vec3<f32>(478f, arg_0.d.x, _wgslsmith_div_f32(196f, global0.a.a)))), global0.c);
    return Struct_3(global0.a, Struct_2(Struct_1(-638f, 0i, firstLeadingBit(8369i & arg_0.b), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_2.x, -1073f, 889f)))), global0.a, vec3<f32>(_wgslsmith_f_op_f32(-arg_0.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - -1000f), _wgslsmith_f_op_f32(global0.a.a - arg_2.x)), Struct_1(423f, global0.a.b, 9716i, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_2.zwx, global0.b.c) + arg_0.d)), global0.a), _wgslsmith_mod_vec2_i32(vec2<i32>(arg_0.c, _wgslsmith_dot_vec4_i32(~vec4<i32>(825i, u_input.d.x, global0.c.x, arg_1), u_input.d)), vec2<i32>(abs(_wgslsmith_mult_i32(arg_1, 19403i)), countOneBits(firstTrailingBit(28372i)))));
}

fn func_1() -> Struct_1 {
    var var_0 = -_wgslsmith_mult_i32(1i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.c.x, u_input.a.x, 6385u), vec4<u32>(u_input.b, u_input.a.x, u_input.b, 5940u)) % 32u), 24057i) & u_input.e;
    global0 = func_4(Struct_1(1297f, ~(-8829i), 12718i, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1254f - global0.b.e.a), -1581f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_3(global0.a, global0.b, vec2<i32>(u_input.e, u_input.e))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global0.a.a, global0.b.c.x)), _wgslsmith_f_op_f32(-global0.a.a)))), (_wgslsmith_div_i32(-2147483647i, u_input.d.x) & ~20782i) & abs(38435i | reverseBits(global0.b.b.b)), vec4<f32>(1636f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.a.a))))), -326f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a.a * _wgslsmith_f_op_f32(-712f - global0.a.d.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(448f)))))));
    global0 = func_4(func_4(Struct_1(1360f, _wgslsmith_mult_i32(select(u_input.e, u_input.d.x, true), ~1i), global0.a.b, func_4(Struct_1(global0.b.e.d.x, u_input.e, u_input.e, vec3<f32>(-395f, -287f, -1301f)), 0i, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(274f, global0.b.e.a, 515f, global0.a.d.x)))).b.c), -(countOneBits(global0.b.b.c) >> (1u % 32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.a.d.x), _wgslsmith_f_op_f32(-302f + global0.a.a), 1000f, -480f))).b.d, 2147483647i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.e.d.x, -134f, 258f, global0.a.a) + vec4<f32>(-383f, global0.a.d.x, 246f, -1032f))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.a.d.x, global0.b.a.d.x, global0.b.a.d.x, global0.a.a))));
    let var_1 = func_4(Struct_1(_wgslsmith_f_op_f32(-599f + _wgslsmith_f_op_f32(1076f - 1000f)), u_input.e, u_input.d.x, vec3<f32>(-1545f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.b.b.d.x, global0.b.e.a) * _wgslsmith_f_op_f32(f32(-1f) * -278f)), global0.a.a)), _wgslsmith_dot_vec4_i32(u_input.d, ~select(_wgslsmith_mod_vec4_i32(u_input.d, vec4<i32>(u_input.e, 0i, 0i, u_input.e)), ~vec4<i32>(global0.b.b.c, u_input.e, -2147483647i, -2493i), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(1045f, global0.a.d.x, 1501f, global0.b.a.a) - vec4<f32>(-643f, global0.a.d.x, global0.b.b.a, 735f)))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-global0.a.a), _wgslsmith_f_op_f32(step(global0.b.e.d.x, 1000f)), global0.a.d.x, _wgslsmith_f_op_f32(global0.b.a.d.x + global0.a.a))))))).b;
    var var_2 = func_4(Struct_1(_wgslsmith_f_op_f32(global0.a.d.x - -395f), -abs(u_input.d.x) << (~func_3().x % 32u), 2147483647i, global0.a.d), 1i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, var_1.a.a)), -745f, _wgslsmith_f_op_f32(-189f * _wgslsmith_f_op_f32(-var_1.d.a)), 205f))).b.d.d.x;
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-187f + 1197f) + global0.b.b.a))), -872f), ~u_input.d.x, 8965i, vec3<f32>(-624f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.e.a, -1000f)))), var_1.c.x));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2) -> Struct_1 {
    let var_0 = ~max(~_wgslsmith_add_vec4_u32(max(vec4<u32>(u_input.b, u_input.c.x, u_input.b, 70768u), vec4<u32>(0u, u_input.b, 4294967295u, 19696u)), vec4<u32>(102850u, u_input.b, u_input.c.x, 34216u)), ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 0u, u_input.b, 41894u), vec4<u32>(u_input.b, u_input.a.x, 1u, 15808u)) ^ min(vec4<u32>(u_input.c.x, u_input.c.x, u_input.a.x, 4294967295u) ^ vec4<u32>(1u, 8432u, 13184u, u_input.a.x), select(vec4<u32>(u_input.a.x, 0u, 0u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 1148u, u_input.a.x), vec4<bool>(true, true, true, true))));
    var var_1 = global0.b;
    var var_2 = Struct_2(func_1(), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1089f, -1022f)), _wgslsmith_f_op_f32(trunc(-922f))), reverseBits(firstLeadingBit(27294i)), func_1().b, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(arg_1.b.d.x)), _wgslsmith_f_op_f32(-var_1.d.a), arg_1.e.a) + _wgslsmith_f_op_vec3_f32(vec3<f32>(789f, global0.a.a, -215f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(576f, -245f, arg_1.b.a) - arg_1.e.d)))), global0.a.d, func_1(), arg_1.a);
    var var_3 = select(vec4<bool>(select(true, any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), true)), arg_1.b.c <= arg_0.b), any(vec2<bool>(true, true)) | !select(true, false, false), all(vec4<bool>(true, true, true, true)), !all(vec3<bool>(true, true, true))), select(!select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true)), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), true), true), vec4<bool>(all(vec3<bool>(true, true, true)), false, select(true, u_input.d.x > arg_1.e.b, true), !(-867f <= arg_0.d.x)), select(vec4<bool>(false, true, true, false), select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, -587f < global0.b.b.a))), true);
    var var_4 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.b.e.d.x, -160f, global0.a.a, var_2.c.x))), vec4<f32>(-132f, global0.b.d.d.x, var_2.d.d.x, var_1.e.a)))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.a, -1063f, var_1.e.a, global0.a.a))))))));
    return global0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(max(~0i, ~1i));
    let var_1 = global0.b.c.x;
    let var_2 = true;
    global0 = Struct_3(Struct_1(-1000f, -select(~(-2147483647i), 2147483647i, var_2), -1i, vec3<f32>(_wgslsmith_f_op_f32(trunc(global0.b.c.x)), _wgslsmith_f_op_f32(global0.b.e.a * _wgslsmith_f_op_f32(-global0.a.d.x)), global0.a.d.x)), Struct_2(Struct_1(global0.a.a, ~(-1i), 26149i, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(global0.a.d + global0.b.e.d)))), func_5(global0.b.b, Struct_2(func_1(), func_1(), vec3<f32>(832f, global0.b.e.d.x, global0.a.a), Struct_1(global0.a.d.x, u_input.d.x, global0.b.a.b, vec3<f32>(1290f, -425f, -284f)), func_4(Struct_1(278f, var_0, var_0, vec3<f32>(global0.a.d.x, global0.a.a, global0.b.e.d.x)), -2147483647i, vec4<f32>(1387f, 412f, -928f, -103f)).a)), vec3<f32>(413f, _wgslsmith_f_op_f32(global0.b.a.a * -2638f), -818f), Struct_1(_wgslsmith_f_op_f32(-519f * _wgslsmith_f_op_f32(385f + -397f)), countOneBits(1i), _wgslsmith_div_i32(32051i, _wgslsmith_add_i32(-18885i, 2147483647i)), func_4(global0.a, u_input.e, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.a, global0.b.a.a, 2952f, global0.a.a))).a.d), func_1()), select(vec2<i32>(min(~var_0, global0.c.x), var_0), vec2<i32>(-64406i, select(-var_0, _wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(var_0, var_0, -2147483647i, -10468i)), var_2)), any(vec3<bool>(any(vec3<bool>(var_2, true, false)), true, any(vec4<bool>(var_2, var_2, var_2, var_2))))));
    var var_3 = countOneBits(vec4<i32>(-2147483647i, i32(-1i) * -1483i, 2147483647i, u_input.e));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.a.d.x))), func_5(func_1(), Struct_2(Struct_1(-935f, 0i, -2147483647i, global0.b.d.d), global0.a, vec3<f32>(global0.b.d.a, 1186f, 403f), Struct_1(-408f, var_3.x, global0.c.x, global0.a.d), global0.a)).a), _wgslsmith_f_op_vec2_f32(ceil(func_5(global0.b.d, Struct_2(Struct_1(global0.b.a.d.x, u_input.e, var_0, vec3<f32>(global0.a.d.x, global0.b.a.a, 1000f)), Struct_1(-450f, 0i, -1i, vec3<f32>(global0.b.e.a, global0.a.a, global0.a.a)), vec3<f32>(268f, -102f, 593f), Struct_1(-993f, var_3.x, u_input.d.x, vec3<f32>(global0.b.e.a, global0.a.d.x, global0.b.a.a)), Struct_1(2696f, var_0, 1i, vec3<f32>(-1201f, 1000f, 591f)))).d.xz))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-421f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1314f))))))), -(~(-2147483647i)) << (abs(~4294967295u) % 32u), _wgslsmith_f_op_f32(exp2(global0.a.d.x)), (-u_input.e << (~abs(u_input.b) % 32u)) | u_input.e);
}

