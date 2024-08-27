struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
    d: f32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<i32>(-26761i, i32(-2147483648), 3508i, -13226i), Struct_2(vec2<i32>(0i, 41664i), 100982u, vec4<u32>(168u, 1u, 1u, 1u), 1054f), vec4<f32>(-455f, 1000f, 1592f, -1014f));

var<private> global1: vec2<f32> = vec2<f32>(-1741f, -298f);

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_2, arg_1: i32) -> vec4<i32> {
    global0 = Struct_3(vec4<i32>(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(-39310i, -50146i, 11242i, arg_0.a.x), u_input.a), 46702i, _wgslsmith_div_i32(~(~7389i), ~arg_0.a.x << (4294967295u % 32u))), Struct_2(_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(global0.a.zw, global0.b.a), _wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, 2147483647i), arg_0.a), firstTrailingBit(vec2<i32>(-12677i, arg_1))), _wgslsmith_add_vec2_i32(select(vec2<i32>(-2147483647i, global0.a.x), vec2<i32>(2147483647i, 63380i), vec2<bool>(true, true)), ~vec2<i32>(arg_1, 1i))), ~(~arg_0.c.x), abs(abs(_wgslsmith_clamp_vec4_u32(global0.b.c, vec4<u32>(66785u, global0.b.b, global0.b.b, 0u), global0.b.c))), 621f), vec4<f32>(arg_0.d, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(718f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + global0.b.d))), global1.x));
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-158f, global0.c.x)))), global0.c.yw))) - vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) + global0.b.d), global0.b.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-294f, _wgslsmith_f_op_f32(1044f - arg_0.d))) - 602f)));
    let var_0 = _wgslsmith_div_u32(~_wgslsmith_mod_u32(36876u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 4294967295u), ~vec3<u32>(arg_0.b, 7458u, arg_0.c.x))), 45209u);
    global0 = Struct_3(vec4<i32>(arg_0.a.x, ~u_input.b, abs(~(~1i)), -_wgslsmith_clamp_i32(1187i, -13416i, ~u_input.a.x)), arg_0, vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.d - _wgslsmith_div_f32(arg_0.d, arg_0.d)), -386f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.d)))), _wgslsmith_f_op_f32(global0.c.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1196f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, global1.x) - _wgslsmith_f_op_f32(ceil(global1.x))))));
    global0 = Struct_3(_wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(-arg_0.a.x, -2147483647i, ~global0.a.x, _wgslsmith_sub_i32(2147483647i, arg_1))), global0.a), global0.b, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.c)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.d, global1.x, global0.b.d, 773f), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global0.b.d, 476f, global1.x) * vec4<f32>(global0.c.x, global0.c.x, 446f, -370f))))))));
    return -vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, arg_0.a.x, 2147483647i), u_input.a.ywy), abs(0i)), -30980i, _wgslsmith_add_i32(1i, firstLeadingBit(u_input.b)), 1i) >> (~arg_0.c % vec4<u32>(32u));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<u32>) -> u32 {
    global0 = Struct_3(~_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(func_3(Struct_2(u_input.a.yx, global0.b.b, global0.b.c, -1093f), u_input.a.x), u_input.a, u_input.a), -u_input.a), global0.b, vec4<f32>(global0.b.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c.x - global0.b.d) - _wgslsmith_f_op_f32(-1809f * global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(global0.c.x)), _wgslsmith_f_op_f32(max(908f, global0.c.x)), all(vec3<bool>(false, true, false))))), global1.x));
    global0 = Struct_3(_wgslsmith_div_vec4_i32(vec4<i32>(-1i) * -global0.a, max(global0.a, -_wgslsmith_clamp_vec4_i32(u_input.a, vec4<i32>(u_input.b, u_input.b, 21909i, u_input.b), global0.a))), Struct_2(u_input.a.zw, 1u, ~(~global0.b.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1884f), _wgslsmith_f_op_f32(global1.x + 106f), true)), _wgslsmith_f_op_f32(min(global1.x, 244f)))), global0.c);
    let var_0 = !(!select(vec4<bool>(true, any(vec4<bool>(false, true, true, false)), -3450i <= global0.a.x, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)));
    global0 = Struct_3(vec4<i32>(~u_input.b, u_input.b, _wgslsmith_add_i32(-8184i, min(1i, ~global0.b.a.x)), 70066i), Struct_2(vec2<i32>(firstTrailingBit(49258i), _wgslsmith_clamp_i32(-2147483647i, 81366i, u_input.a.x)) | (select(u_input.a.ww, vec2<i32>(-83441i, 8563i), var_0.ww) ^ ~global0.a.yx), _wgslsmith_div_u32(_wgslsmith_clamp_u32(~global0.b.c.x, 1u, arg_1.x), ~103482u), arg_1 >> (_wgslsmith_div_vec4_u32(~vec4<u32>(global0.b.b, 4294967295u, 41886u, 29317u), global0.b.c << (vec4<u32>(5250u, global0.b.c.x, 4294967295u, arg_1.x) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(726f, 550f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-187f, arg_0.x, global1.x, arg_0.x))) * vec4<f32>(-334f, global0.b.d, global1.x, -646f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.c))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(arg_0 + vec4<f32>(global0.c.x, 135f, arg_0.x, arg_0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0 * arg_0)), true))));
    let var_1 = _wgslsmith_f_op_vec3_f32(trunc(global0.c.yzw));
    return 19481u;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    global0 = Struct_3(vec4<i32>(~_wgslsmith_mod_i32(-37583i, i32(-1i) * -6767i), u_input.b, abs(max(global0.b.a.x, -2147483647i) ^ -1i), _wgslsmith_dot_vec3_i32(u_input.a.xzz, vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -27644i), vec2<i32>(32235i, u_input.a.x)), -1i >> (arg_3.b % 32u), arg_2))), arg_1.b, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(global0.c)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(global0.c, vec4<f32>(-2147f, -179f, global1.x, -265f))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.d, 114f, 1107f, global1.x) + vec4<f32>(-624f, global1.x, 173f, global1.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.c), _wgslsmith_f_op_vec4_f32(sign(global0.c))))))));
    global0 = Struct_3(countOneBits(func_3(Struct_2(vec2<i32>(arg_1.a.x, 0i), arg_3.a, arg_0, global1.x), firstLeadingBit(-52229i)) ^ arg_1.a), arg_1.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.b.d))), _wgslsmith_f_op_f32(-614f + arg_1.b.d), 738f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1382f))))));
    var var_0 = min(1i, func_3(Struct_2(_wgslsmith_add_vec2_i32(global0.b.a, vec2<i32>(u_input.b, -41620i)) >> (~vec2<u32>(24686u, 24099u) % vec2<u32>(32u)), max(1u, _wgslsmith_sub_u32(141527u, arg_0.x)), _wgslsmith_mod_vec4_u32(~arg_1.b.c, reverseBits(global0.b.c)), _wgslsmith_f_op_f32(abs(arg_1.c.x))), (-5709i << (global0.b.c.x % 32u)) << (~(~78603u) % 32u)).x);
    global0 = arg_1;
    global1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.c.yz), _wgslsmith_f_op_vec2_f32(arg_1.c.zx * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global1.x, global1.x), global0.c.yx)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1581f, -211f))))));
    return arg_3;
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec4<bool>) -> Struct_2 {
    var var_0 = Struct_1((_wgslsmith_div_u32(arg_2.b.b, ~4294967295u) >> (abs(arg_2.b.c.x) % 32u)) & 58056u, abs(26614u), select(arg_3.yyw, vec3<bool>(false, !(18633u >= arg_2.b.c.x), true), arg_3.xxw));
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0, _wgslsmith_f_op_f32(max(arg_2.b.d, _wgslsmith_f_op_f32(abs(global0.b.d))))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(548f, global1.x), global0.c.xx) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1115f, 1262f) - global0.c.yz)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1683f, -1287f))));
    var var_1 = !vec2<bool>(true, !arg_3.x);
    var var_2 = 493f;
    let var_3 = arg_1;
    return Struct_2(~_wgslsmith_mod_vec2_i32(~select(vec2<i32>(-19360i, -7478i), vec2<i32>(global0.a.x, 15352i), var_0.c.zz), select(_wgslsmith_clamp_vec2_i32(global0.b.a, arg_2.b.a, vec2<i32>(2147483647i, -55860i)), arg_2.b.a, false)), ~_wgslsmith_add_u32(_wgslsmith_mod_u32(~13302u, ~var_3.b), ~4294967295u), (~(~arg_2.b.c) | countOneBits(~vec4<u32>(78788u, 1u, var_3.b, 4294967295u))) | abs(arg_2.b.c), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(382f + global0.c.x), _wgslsmith_f_op_f32(ceil(291f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-270f * 147f)))))));
}

fn func_1(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = arg_0.c.x;
    var var_1 = func_5(_wgslsmith_f_op_f32(-275f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.x)))), func_4(vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(arg_0.b, 109665u, 17659u), global0.b.c.x), ~abs(100267u), 65618u, func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, -883f, -375f) + vec4<f32>(352f, global0.c.x, global0.c.x, -1000f)), vec4<u32>(arg_0.a, 0u, 4294967295u, 26521u) & vec4<u32>(9201u, 4294967295u, 4294967295u, 1u))), Struct_3(global0.a, Struct_2(~vec2<i32>(-1423i, 2090i), _wgslsmith_sub_u32(global0.b.c.x, 4294967295u), ~vec4<u32>(global0.b.c.x, 25939u, arg_0.b, 0u), global1.x), global0.c), -1i, arg_0), Struct_3(-global0.a, global0.b, global0.c), select(vec4<bool>(func_4(firstLeadingBit(vec4<u32>(global0.b.b, arg_0.b, arg_0.a, 0u)), Struct_3(u_input.a, global0.b, vec4<f32>(-951f, global1.x, -1523f, global1.x)), ~(-2147483647i), func_4(vec4<u32>(1u, 33445u, global0.b.b, arg_0.b), Struct_3(u_input.a, global0.b, vec4<f32>(-752f, global0.b.d, 148f, 878f)), -1i, Struct_1(32098u, 1u, arg_0.c))).c.x, true, all(!arg_0.c.zx), var_0), select(!vec4<bool>(var_0, arg_0.c.x, false, arg_0.c.x), select(!vec4<bool>(false, arg_0.c.x, var_0, arg_0.c.x), !vec4<bool>(true, true, arg_0.c.x, true), select(vec4<bool>(arg_0.c.x, var_0, var_0, var_0), vec4<bool>(false, arg_0.c.x, var_0, true), vec4<bool>(arg_0.c.x, false, arg_0.c.x, true))), any(func_4(vec4<u32>(global0.b.b, 13823u, global0.b.c.x, 6290u), Struct_3(u_input.a, global0.b, global0.c), -28400i, arg_0).c)), true));
    let var_2 = any(select(!(!(!vec4<bool>(true, arg_0.c.x, var_0, arg_0.c.x))), vec4<bool>(min(-2147483647i, global0.a.x) > countOneBits(global0.a.x), !(global1.x <= global1.x), false, true), !select(vec4<bool>(arg_0.c.x, true, var_0, var_0), select(vec4<bool>(false, var_0, true, var_0), vec4<bool>(var_0, true, false, false), vec4<bool>(false, var_0, arg_0.c.x, true)), vec4<bool>(arg_0.c.x, arg_0.c.x, var_0, false))));
    global1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.c.xw - vec2<f32>(global0.c.x, 1500f))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1075f), _wgslsmith_f_op_f32(round(global0.c.x))), func_4(~vec4<u32>(0u, 13679u, 1u, global0.b.b), Struct_3(vec4<i32>(0i, -1i, global0.a.x, -55682i), global0.b, vec4<f32>(497f, 199f, -1036f, 761f)), 7571i, Struct_1(global0.b.b, 40901u, arg_0.c)).c.x)) + _wgslsmith_f_op_vec2_f32(global0.c.yy * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1283f, -1172f))) * _wgslsmith_f_op_vec2_f32(trunc(global0.c.wz))))), vec2<f32>(1000f, 389f));
    global0 = Struct_3(-select(firstTrailingBit(firstLeadingBit(vec4<i32>(26958i, var_1.a.x, var_1.a.x, -11062i))), abs(abs(vec4<i32>(26788i, 28739i, -2147483647i, var_1.a.x))), vec4<bool>(u_input.b >= -1180i, !var_2, any(vec4<bool>(false, var_0, var_0, true)), !var_0)), global0.b, _wgslsmith_f_op_vec4_f32(select(global0.c, global0.c, select(vec4<bool>(var_1.a.x <= 29977i, !var_0, var_0, true), select(vec4<bool>(true, var_0, true, true), !vec4<bool>(arg_0.c.x, true, var_2, false), select(vec4<bool>(arg_0.c.x, var_2, true, var_0), vec4<bool>(true, true, var_0, var_0), vec4<bool>(true, true, var_0, true))), vec4<bool>(var_0, func_4(global0.b.c, Struct_3(vec4<i32>(var_1.a.x, u_input.b, u_input.a.x, -30649i), Struct_2(var_1.a, 18369u, vec4<u32>(6951u, 4294967295u, arg_0.b, 1u), 229f), global0.c), -3171i, Struct_1(arg_0.b, 1u, arg_0.c)).c.x, var_2, any(arg_0.c))))));
    return select(!(!(!vec4<bool>(var_0, var_2, var_0, true))), !vec4<bool>(false, ~10797u != arg_0.a, select(true, arg_0.c.x, select(var_2, arg_0.c.x, false)), false), false);
}

fn func_6(arg_0: vec4<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec2_u32((~(~vec2<u32>(55916u, global0.b.c.x)) | _wgslsmith_mult_vec2_u32(reverseBits(vec2<u32>(43607u, 13657u)), ~global0.b.c.yy)) | max(~vec2<u32>(59391u, global0.b.b), global0.b.c.wy & vec2<u32>(global0.b.b, global0.b.b)), select(~(~global0.b.c.xw), _wgslsmith_div_vec2_u32(max(vec2<u32>(global0.b.c.x, 0u) | vec2<u32>(global0.b.b, global0.b.b), global0.b.c.wy), ~_wgslsmith_mult_vec2_u32(global0.b.c.wy, vec2<u32>(1u, 1u))), true));
    var var_1 = Struct_1(~59186u, 1u, !(!func_1(func_4(vec4<u32>(1742u, global0.b.b, 22245u, global0.b.b), Struct_3(vec4<i32>(global0.a.x, 232i, global0.a.x, -2147483647i), Struct_2(vec2<i32>(2147483647i, u_input.b), global0.b.c.x, vec4<u32>(global0.b.c.x, global0.b.b, 8216u, 1u), global0.c.x), vec4<f32>(-533f, 735f, 1226f, global1.x)), 2147483647i, Struct_1(global0.b.c.x, global0.b.b, arg_0.yzz))).zxz));
    var var_2 = vec2<u32>(var_1.b & var_1.a, firstTrailingBit(1u));
    var var_3 = Struct_1(1u, ~var_1.b, vec3<bool>(!(!(!var_1.c.x)), false, true));
    let var_4 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-func_5(-421f, Struct_1(global0.b.b, var_1.b, var_1.c), Struct_3(u_input.a, global0.b, global0.c), arg_0).d)))));
    return func_4(countOneBits(global0.b.c), Struct_3(global0.a, func_5(global1.x, Struct_1(~var_3.a, ~1u, vec3<bool>(var_1.c.x, true, false)), Struct_3(-u_input.a, global0.b, _wgslsmith_f_op_vec4_f32(-global0.c)), arg_0), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(712f, global1.x, global1.x, global1.x), global0.c))), global0.c, !(!vec4<bool>(var_1.c.x, false, var_3.c.x, false))))), 2078i, Struct_1(var_2.x, var_1.b, vec3<bool>(arg_0.x, false, all(arg_0))));
}

fn func_7(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1) -> vec3<u32> {
    var var_0 = -func_3(func_5(arg_1.d, arg_0, Struct_3(vec4<i32>(u_input.a.x, arg_1.a.x, -24193i, 0i), Struct_2(vec2<i32>(u_input.a.x, global0.a.x), global0.b.c.x, vec4<u32>(arg_2.a, arg_0.a, arg_0.a, arg_1.b), arg_1.d), global0.c), !(!vec4<bool>(false, arg_2.c.x, arg_2.c.x, true))), u_input.b);
    let var_1 = any(vec4<bool>(false, arg_0.c.x, true, (global0.a.x | global0.a.x) < u_input.b));
    var var_2 = func_5(_wgslsmith_f_op_f32(round(arg_1.d)), Struct_1(arg_2.a, ~_wgslsmith_mod_u32(~arg_0.a, arg_2.b), func_4(func_5(-930f, arg_2, Struct_3(u_input.a, arg_1, global0.c), vec4<bool>(true, false, arg_2.c.x, true)).c ^ vec4<u32>(arg_0.a, 4294967295u, arg_2.a, 20254u), Struct_3(u_input.a, global0.b, _wgslsmith_div_vec4_f32(vec4<f32>(1217f, 272f, 651f, -533f), vec4<f32>(global0.c.x, global0.c.x, 1244f, 935f))), -(-1i << (global0.b.b % 32u)), Struct_1(abs(0u), _wgslsmith_add_u32(0u, arg_0.b), func_4(global0.b.c, Struct_3(vec4<i32>(-49902i, -24753i, 7453i, -1i), Struct_2(u_input.a.yy, arg_0.b, arg_1.c, global0.b.d), vec4<f32>(global0.b.d, 953f, global0.c.x, global0.b.d)), global0.a.x, arg_0).c)).c), Struct_3(min(vec4<i32>(_wgslsmith_clamp_i32(arg_1.a.x, arg_1.a.x, 1i), u_input.a.x, arg_1.a.x & var_0.x, -2147483647i), ~(vec4<i32>(u_input.a.x, -62454i, 11239i, arg_1.a.x) << (global0.b.c % vec4<u32>(32u)))), global0.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.c - vec4<f32>(global1.x, -1000f, global1.x, global1.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.c + global0.c)))), vec4<bool>(_wgslsmith_div_f32(global0.c.x, global1.x) < _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(global1.x, -486f)))), !((arg_0.c.x == arg_0.c.x) & all(vec2<bool>(arg_0.c.x, false))), all(vec4<bool>(true, any(arg_0.c), all(vec4<bool>(false, true, arg_0.c.x, false)), false)), true));
    let var_3 = arg_1.a.x;
    global1 = global0.c.wz;
    return vec3<u32>(reverseBits(_wgslsmith_mod_u32(firstLeadingBit(4294967295u << (arg_2.a % 32u)), 15683u)), ~arg_1.b & (32037u >> (_wgslsmith_add_u32(firstLeadingBit(arg_2.a), arg_2.a) % 32u)), 38332u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~reverseBits(88803u));
    var var_1 = func_7(func_6(vec4<bool>(any(vec2<bool>(false, true)), all(func_1(Struct_1(0u, global0.b.b, vec3<bool>(true, false, false)))), false, true)), global0.b, func_6(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), global0.c.x < global1.x)));
    let var_2 = vec3<bool>(any(func_4(vec4<u32>(~var_0, 1792u, firstTrailingBit(var_0), _wgslsmith_div_u32(13253u, var_0)), Struct_3(~global0.a, Struct_2(vec2<i32>(-2147483647i, u_input.b), var_1.x, global0.b.c, 1440f), _wgslsmith_f_op_vec4_f32(-global0.c)), _wgslsmith_clamp_i32(1i, u_input.b, func_5(3855f, Struct_1(var_1.x, var_0, vec3<bool>(true, true, false)), Struct_3(u_input.a, global0.b, vec4<f32>(-928f, global1.x, 1252f, global0.b.d)), vec4<bool>(false, true, false, true)).a.x), Struct_1(~var_1.x, ~global0.b.c.x, vec3<bool>(true, false, true))).c.yy), func_1(Struct_1(_wgslsmith_div_u32(~var_1.x, func_7(Struct_1(var_1.x, 35449u, vec3<bool>(false, false, false)), global0.b, Struct_1(global0.b.c.x, 60783u, vec3<bool>(true, false, true))).x), ~var_1.x, vec3<bool>(true, true, true))).x, all(vec4<bool>(true == func_1(Struct_1(var_0, 1u, vec3<bool>(false, true, true))).x, !(471f <= global0.b.d), true, true)));
    global0 = Struct_3(firstLeadingBit(reverseBits(_wgslsmith_sub_vec4_i32(-global0.a, ~u_input.a))), Struct_2(~u_input.a.yw, _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(0u, var_0, var_0)), abs(global0.b.c.zzz)) ^ ~var_0, ~(~vec4<u32>(40236u, global0.b.c.x, 60086u, var_0)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(global1.x, _wgslsmith_f_op_f32(-global0.c.x), false)), global0.b.d))), global0.c);
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.d * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2578f)))), global1.x);
    var_1 = _wgslsmith_add_vec3_u32(vec3<u32>(~(53482u & var_0), var_1.x, 45787u) >> (vec3<u32>(~4294967295u, var_1.x, 0u) % vec3<u32>(32u)), abs(firstLeadingBit(~global0.b.c.zxz)) ^ select(abs(vec3<u32>(global0.b.b, global0.b.c.x, 14179u)) ^ global0.b.c.wyw, global0.b.c.wyw, vec3<bool>(all(vec4<bool>(var_2.x, true, true, var_2.x)), false, var_2.x)));
    global0 = Struct_3(vec4<i32>(i32(-1i) * -1i, _wgslsmith_clamp_i32(-(global0.b.a.x << (1u % 32u)), -abs(2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(global0.b.a.x, -2147483647i) & vec2<i32>(-2147483647i, 1i), global0.a.xz | vec2<i32>(global0.b.a.x, 0i))), -global0.a.x, select(firstTrailingBit(~global0.b.a.x), -21959i, !var_2.x)), func_5(_wgslsmith_f_op_f32(round(var_3)), func_4(~_wgslsmith_sub_vec4_u32(global0.b.c, vec4<u32>(var_0, global0.b.c.x, var_0, var_0)), Struct_3(global0.a, global0.b, _wgslsmith_f_op_vec4_f32(exp2(global0.c))), _wgslsmith_dot_vec3_i32(min(vec3<i32>(global0.a.x, global0.b.a.x, global0.b.a.x), global0.a.zyy), vec3<i32>(10970i, -39676i, -4301i)), Struct_1(reverseBits(global0.b.b), func_7(Struct_1(var_0, global0.b.b, vec3<bool>(var_2.x, var_2.x, false)), Struct_2(global0.a.ww, var_1.x, vec4<u32>(var_0, 74062u, var_1.x, global0.b.b), -304f), Struct_1(1u, 76521u, var_2)).x, vec3<bool>(true, true, false))), Struct_3(vec4<i32>(~u_input.a.x, 1i, abs(global0.a.x), abs(0i)), func_5(_wgslsmith_f_op_f32(step(global0.b.d, 1552f)), Struct_1(global0.b.c.x, var_0, vec3<bool>(true, true, var_2.x)), Struct_3(vec4<i32>(u_input.a.x, global0.b.a.x, -2147483647i, 19633i), Struct_2(vec2<i32>(40620i, global0.a.x), var_1.x, global0.b.c, global1.x), vec4<f32>(var_3, global1.x, 1000f, -860f)), !vec4<bool>(true, true, false, var_2.x)), global0.c), select(vec4<bool>(true, true, var_2.x, false), func_1(func_6(vec4<bool>(false, true, true, false))), select(select(vec4<bool>(var_2.x, var_2.x, true, true), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), true), select(vec4<bool>(var_2.x, var_2.x, true, var_2.x), vec4<bool>(true, false, false, var_2.x), false), vec4<bool>(false, true, var_2.x, true)))), global0.c);
    let var_4 = firstLeadingBit((global0.a ^ ~(~vec4<i32>(global0.b.a.x, -1i, 1i, global0.a.x))) ^ abs(_wgslsmith_mult_vec4_i32(reverseBits(u_input.a), -vec4<i32>(u_input.a.x, 0i, 20673i, 2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x, ~_wgslsmith_sub_i32(global0.b.a.x, 2147483647i) | _wgslsmith_dot_vec4_i32(-(global0.a | var_4), vec4<i32>(func_5(global0.c.x, Struct_1(var_0, 1u, vec3<bool>(var_2.x, true, true)), Struct_3(vec4<i32>(-25013i, u_input.a.x, 0i, var_4.x), Struct_2(u_input.a.yw, var_0, global0.b.c, var_3), global0.c), vec4<bool>(true, var_2.x, true, true)).a.x, ~global0.a.x, -20777i, _wgslsmith_div_i32(u_input.a.x, 2147483647i))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1091f), _wgslsmith_f_op_f32(-global1.x), true)))), 1013f, global1.x);
}

