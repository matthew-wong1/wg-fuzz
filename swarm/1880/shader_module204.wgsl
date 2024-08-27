struct Struct_1 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<bool>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: i32,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_4,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: Struct_5;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec2<f32> {
    global1 = Struct_5(_wgslsmith_mod_vec2_u32(select(~global1.a, max(vec2<u32>(4294967295u, 1u) & vec2<u32>(4369u, global1.a.x), vec2<u32>(global1.a.x, u_input.a) ^ vec2<u32>(global1.a.x, 33864u)), !(!global1.c.e.a.xz)), global1.a & _wgslsmith_mod_vec2_u32(~vec2<u32>(44693u, 1u), global1.a)), Struct_1(global1.c.e.a, countOneBits(vec3<i32>(global1.c.c, -26426i, global1.b.b.x) << (~vec3<u32>(global1.e, u_input.a, 19767u) % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.d, _wgslsmith_div_f32(-978f, 1310f), _wgslsmith_f_op_f32(-global1.b.c.x)))), Struct_4(vec2<bool>(true, global0.x), global1.b.c.xx, global1.b.b.x, vec2<f32>(_wgslsmith_f_op_f32(-309f * _wgslsmith_f_op_f32(-1000f + global1.c.e.c.x)), -477f), Struct_1(select(select(global1.c.e.a, vec4<bool>(global0.x, true, global1.c.e.a.x, global1.b.a.x), global0.x), global1.c.e.a, global1.b.a), global1.c.e.b, _wgslsmith_div_vec3_f32(global1.c.e.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(-652f, -891f, -479f) + vec3<f32>(-691f, -433f, global1.c.d.x))))), global1.d, _wgslsmith_sub_u32(min(_wgslsmith_add_u32(global1.e, ~1u), abs(global1.e & u_input.a)), u_input.a));
    global1 = Struct_5(global1.a, global1.b, global1.c, global1.c.b.x, select(_wgslsmith_dot_vec2_u32(global1.a, firstLeadingBit(_wgslsmith_add_vec2_u32(vec2<u32>(43977u, u_input.a), vec2<u32>(4294967295u, 38128u)))), 28439u, true & (-2147483647i > -global1.b.b.x)));
    global0 = select(select(!(!(!vec2<bool>(false, global1.c.e.a.x))), !select(global1.b.a.wy, select(global1.b.a.yx, vec2<bool>(global1.c.a.x, global0.x), true), global1.a.x < 47452u), !vec2<bool>(any(global1.b.a.xxw), true)), !global1.c.e.a.yz, !vec2<bool>(false, global1.c.e.a.x | (global1.d <= global1.c.b.x)));
    var var_0 = global1.a;
    let var_1 = Struct_4(vec2<bool>(any(select(select(global1.c.e.a, vec4<bool>(global0.x, global1.c.a.x, true, global1.b.a.x), vec4<bool>(global0.x, global1.c.e.a.x, global1.c.a.x, false)), vec4<bool>(false, global0.x, false, false), any(global1.c.e.a.wxx))), (global1.a.x != firstLeadingBit(1u)) | true), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global1.b.c.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(546f * 1169f), _wgslsmith_div_f32(1000f, 1286f)))), global1.c.b)), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32((vec2<i32>(global1.c.e.b.x, global1.c.c) ^ vec2<i32>(global1.b.b.x, 2147483647i)) | global1.b.b.xx, global1.b.b.zz), -firstTrailingBit(global1.b.b.zx)), _wgslsmith_f_op_vec2_f32(select(global1.b.c.xz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(global1.d)), _wgslsmith_f_op_f32(-global1.d))), select(!(!vec2<bool>(true, global1.c.e.a.x)), select(select(global1.c.a, vec2<bool>(global0.x, global0.x), true), global1.b.a.zx, vec2<bool>(global1.c.e.a.x, global1.c.a.x)), all(vec2<bool>(true, true))))), Struct_1(global1.c.e.a, vec3<i32>(global1.b.b.x, 0i, 1i), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-global1.b.c), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -808f), 1563f, _wgslsmith_f_op_f32(global1.d - global1.c.d.x))))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-global1.c.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_1.e.c.yy, vec2<f32>(var_1.e.c.x, -614f)) + _wgslsmith_f_op_vec2_f32(floor(global1.b.c.zy))) * global1.b.c.zz))));
}

fn func_2(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_3) -> vec4<f32> {
    global1 = Struct_5(arg_2.a.ww, global1.b, Struct_4(!global1.c.a, global1.b.c.zy, 0i, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(func_3()))), global1.c.e), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(global1.c.e.c.x, _wgslsmith_f_op_f32(floor(756f)))), -368f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.d + global1.c.d.x)), !(!arg_2.b.x))), global1.a.x);
    global1 = Struct_5(select(vec2<u32>(u_input.a, _wgslsmith_dot_vec4_u32(arg_2.a, vec4<u32>(16778u, 1u, 4294967295u, 28666u))), _wgslsmith_add_vec2_u32(select(vec2<u32>(arg_2.a.x, 12896u), arg_2.a.zz, arg_0), vec2<u32>(4294967295u, u_input.a)), !vec2<bool>(false, arg_2.b.x)) >> (~firstTrailingBit(vec2<u32>(arg_2.a.x, 45729u)) % vec2<u32>(32u)), global1.b, global1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-672f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1737f)) - -545f))), _wgslsmith_clamp_u32(abs(global1.e), _wgslsmith_mult_u32(max(arg_2.a.x, 1u), select(4294967295u, 4152u, false)), 22441u) << (countOneBits(4294967295u) % 32u));
    global0 = !vec2<bool>(!(!any(global1.b.a)), global1.b.a.x);
    global1 = Struct_5(global1.a, Struct_1(!(!select(vec4<bool>(arg_2.b.x, false, true, false), global1.c.e.a, arg_2.b.x)), -global1.c.e.b, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(global1.b.c, global1.b.c))))))), Struct_4(arg_0, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global1.b.c.x, global1.b.c.x), vec2<f32>(global1.c.d.x, -1179f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.b.c.x, 133f), vec2<f32>(142f, 391f), arg_2.b.xz)))), ~((global1.b.b.x << (arg_2.a.x % 32u)) ^ (i32(-1i) * -1i)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b.c.x, 1032f) - global1.c.d), _wgslsmith_f_op_vec2_f32(global1.b.c.xx - global1.b.c.yx))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.c.e.c.xz) * global1.c.e.c.xz)), Struct_1(select(!vec4<bool>(false, false, global1.b.a.x, true), global1.b.a, arg_0.x), global1.c.e.b >> ((arg_2.a.wwy >> (arg_2.a.wyy % vec3<u32>(32u))) % vec3<u32>(32u)), global1.c.e.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1188f - 135f)), 1u);
    let var_0 = 1i;
    return vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(160f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.b.c.x)) + 1f)), global1.b.c.x), 149f, global1.c.d.x);
}

fn func_4(arg_0: vec4<f32>) -> Struct_5 {
    global1 = Struct_5(global1.a, Struct_1(!select(select(global1.c.e.a, vec4<bool>(global1.c.a.x, global1.c.e.a.x, global1.b.a.x, global0.x), global1.c.e.a), global1.b.a, any(vec2<bool>(false, true))), countOneBits(global1.c.e.b), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.x, -508f, arg_0.x), vec3<f32>(536f, global1.d, arg_0.x), false)))))), Struct_4(vec2<bool>(global1.c.a.x, global1.b.a.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_vec2_f32(func_3()).x, -712f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(456f, arg_0.x))), -14684i, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.xz - vec2<f32>(-1073f, global1.b.c.x)) + vec2<f32>(-1000f, arg_0.x))), Struct_1(global1.b.a, _wgslsmith_mult_vec3_i32(global1.c.e.b, select(vec3<i32>(-39022i, global1.c.c, -1i), vec3<i32>(global1.b.b.x, global1.b.b.x, 0i), true)), arg_0.zxz)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_0.x, 1000f, global1.b.a.x)), -1000f) + _wgslsmith_f_op_f32(-arg_0.x)), arg_0.x), reverseBits(~u_input.a));
    var var_0 = false;
    let var_1 = Struct_2(global1.b, global1.b.a.x, global1.c.e.c);
    var_0 = false;
    var_0 = true;
    return Struct_5(~(~global1.a), global1.b, Struct_4(!select(select(var_1.a.a.yx, vec2<bool>(global0.x, false), global1.c.e.a.x), var_1.a.a.zy, true && var_1.a.a.x), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-319f, global1.c.d.x), vec2<f32>(-679f, var_1.c.x)))))), 22867i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.d, global1.d))), Struct_1(global1.c.e.a, -global1.b.b, vec3<f32>(_wgslsmith_f_op_f32(-109f + global1.d), _wgslsmith_div_f32(arg_0.x, arg_0.x), global1.c.e.c.x))), _wgslsmith_f_op_vec2_f32(func_3()).x, _wgslsmith_sub_u32(~80088u, countOneBits(_wgslsmith_mod_u32(u_input.a, ~40769u))));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_5, arg_2: Struct_1, arg_3: Struct_3) -> vec4<bool> {
    let var_0 = abs(abs(_wgslsmith_mod_vec2_u32(~(~vec2<u32>(u_input.a, 4294967295u)), arg_3.a.xz)));
    let var_1 = ~(~(~_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 1u, u_input.a), arg_0)));
    global1 = arg_1;
    global0 = select(arg_1.c.a, !vec2<bool>(any(func_4(vec4<f32>(arg_1.d, arg_2.c.x, arg_1.b.c.x, 346f)).c.a), all(vec2<bool>(false, arg_2.a.x))), all(arg_3.b.yy));
    var var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1252f, -1833f, arg_1.b.c.x, global1.b.c.x) - vec4<f32>(global1.d, -854f, arg_1.d, -1000f))))))));
    return !(!(!arg_2.a));
}

fn func_1() -> Struct_5 {
    global0 = vec2<bool>(global0.x && all(select(vec4<bool>(true, true, global1.c.e.a.x, true), vec4<bool>(global1.c.e.a.x, global1.b.a.x, false, false), !vec4<bool>(global0.x, global1.c.a.x, true, true))), global0.x);
    global0 = global1.b.a.xy;
    var var_0 = vec3<bool>(true, global0.x, 1i < global1.b.b.x);
    let var_1 = Struct_5(global1.a, global1.c.e, global1.c, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -899f))), 4294967295u);
    var var_2 = Struct_1(func_5(~(~vec3<u32>(var_1.a.x, 60678u, 4294967295u) << (_wgslsmith_div_vec3_u32(vec3<u32>(64673u, u_input.a, u_input.a), vec3<u32>(1u, 4294967295u, global1.e)) % vec3<u32>(32u))), func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(var_1.c.e.a.wy, 0i, Struct_3(vec4<u32>(u_input.a, global1.a.x, 46342u, 0u), global1.c.e.a.www))))), func_4(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global1.c.e.c.x, 1084f, global1.d))))).b, Struct_3(vec4<u32>(~var_1.e, 31511u, var_1.a.x << (u_input.a % 32u), ~u_input.a), vec3<bool>(all(var_1.b.a), !global1.c.e.a.x, false))), min(-firstLeadingBit(global1.b.b), -(~_wgslsmith_sub_vec3_i32(var_1.c.e.b, global1.b.b))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1045f, global1.c.d.x, var_1.d))))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1396f), var_1.b.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(717f * 1182f) + 227f))));
    return var_1;
}

fn func_6(arg_0: Struct_5) -> vec4<u32> {
    var var_0 = vec2<bool>(global1.c.a.x, all(arg_0.b.a.yw));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-global1.d), 1201f, global1.b.c.x, -702f);
    let var_2 = -_wgslsmith_add_vec3_i32(~_wgslsmith_mult_vec3_i32(vec3<i32>(14408i, global1.b.b.x, 6039i), _wgslsmith_add_vec3_i32(vec3<i32>(0i, -17350i, arg_0.c.e.b.x), vec3<i32>(global1.b.b.x, global1.c.e.b.x, -2668i))), _wgslsmith_mult_vec3_i32(global1.c.e.b << (vec3<u32>(global1.e, 0u, 0u) % vec3<u32>(32u)), ~global1.c.e.b) & vec3<i32>(_wgslsmith_add_i32(arg_0.b.b.x, 19576i), func_4(var_1).b.b.x, ~25795i));
    var_0 = select(arg_0.c.e.a.xx, global1.c.a, !(arg_0.b.a.x & var_0.x));
    global0 = arg_0.b.a.wz;
    return min(vec4<u32>(max(~27274u, arg_0.a.x), 1u, ~165128u, _wgslsmith_add_u32(u_input.a, ~(~arg_0.a.x))), abs(~min(~vec4<u32>(arg_0.e, 63493u, arg_0.e, 1u), countOneBits(vec4<u32>(1u, arg_0.a.x, 7936u, u_input.a)))));
}

fn func_7(arg_0: vec4<u32>, arg_1: Struct_1) -> Struct_5 {
    global1 = Struct_5(vec2<u32>(~_wgslsmith_sub_u32(_wgslsmith_div_u32(4294967295u, 4294967295u), ~global1.a.x), ~abs(arg_0.x) >> (reverseBits(~1u) % 32u)), global1.b, func_4(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-473f, 219f, arg_1.c.x, -385f))) - vec4<f32>(172f, arg_1.c.x, -258f, arg_1.c.x))))).c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -987f))) + arg_1.c.x), abs(56914u) & ((_wgslsmith_mod_u32(14798u, u_input.a) ^ func_1().e) << (abs(_wgslsmith_add_u32(global1.a.x, u_input.a)) % 32u)));
    let var_0 = ~_wgslsmith_div_u32(u_input.a, abs(~_wgslsmith_add_u32(0u, 1u)));
    let var_1 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -769f), -1105f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.c.x))), arg_1.c.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -440f)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.c.x, -1000f)) * arg_1.c.x) * 1000f), global1.d, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c.x) * global1.b.c.x), 737f)), arg_1.c.x)));
    let var_2 = global1.c.e.b;
    global1 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(func_2(global1.c.a, 0i, Struct_3(arg_0, arg_1.a.zxw)))))));
    return Struct_5(global1.a, arg_1, global1.c, -608f, 0u ^ select(1u, ~(~global1.a.x), var_1.x != 569f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !(!(!global1.b.a.xw));
    global1 = func_7(firstTrailingBit(func_6(func_1())), Struct_1(!select(vec4<bool>(false, global0.x, global0.x, true), global1.b.a, func_1().c.e.a), _wgslsmith_mult_vec3_i32(~global1.c.e.b, ~(vec3<i32>(-59609i, 2147483647i, global1.c.c) << (vec3<u32>(u_input.a, global1.a.x, global1.e) % vec3<u32>(32u)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec4_f32(func_2(vec2<bool>(true, false), _wgslsmith_mult_i32(global1.b.b.x, 0i), Struct_3(vec4<u32>(28753u, global1.a.x, 27683u, 0u), vec3<bool>(true, global1.c.a.x, true)))).wzx * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(747f, global1.d, global1.c.b.x))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.d, -461f, global1.b.c.x))))));
    let var_0 = min(global1.b.b.x, ~countOneBits(-2147483647i)) >> (1u % 32u);
    let var_1 = Struct_2(func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(-396f, -2248f)), _wgslsmith_f_op_f32(step(558f, -181f)), 1000f, _wgslsmith_f_op_f32(global1.d * -667f)))).c.e, false, vec3<f32>(_wgslsmith_f_op_f32(-839f + _wgslsmith_f_op_f32(f32(-1f) * -875f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -539f) - _wgslsmith_f_op_f32(func_1().b.c.x * _wgslsmith_f_op_f32(-global1.c.e.c.x))), global1.c.e.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~(~global1.a.x)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1087f, 331f, var_1.c.x, 812f))))) - vec4<f32>(_wgslsmith_div_f32(var_1.a.c.x, var_1.a.c.x), global1.b.c.x, _wgslsmith_f_op_f32(-173f - 2603f), global1.b.c.x)))), _wgslsmith_mult_vec3_i32(abs(vec3<i32>(_wgslsmith_mod_i32(var_0, var_0), -55865i, var_1.a.b.x)), vec3<i32>(-1i, 1i, _wgslsmith_dot_vec4_i32(select(vec4<i32>(var_1.a.b.x, var_1.a.b.x, var_0, var_1.a.b.x), vec4<i32>(-2147483647i, 0i, var_0, -17679i), global1.c.e.a.x), max(vec4<i32>(-1i, global1.c.e.b.x, -13196i, global1.b.b.x), vec4<i32>(var_0, -2147483647i, 4360i, var_0))))));
}

