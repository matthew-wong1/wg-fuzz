struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<f32>,
    d: f32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_3,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<Struct_4, 18>;

var<private> global2: bool = true;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1249f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-546f - -469f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(886f - -1544f)), 1045f)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -464f), -2326f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1155f)) + _wgslsmith_f_op_f32(abs(1113f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(1325f + _wgslsmith_f_op_f32(-1000f + -516f)))), false));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: i32) -> i32 {
    let var_0 = abs(-15029i);
    global0 = vec4<u32>(abs(31944u), abs(_wgslsmith_sub_u32(u_input.c, 16700u) & _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(global0.zw, vec2<u32>(1u, 1u)), _wgslsmith_add_u32(u_input.c, 4294967295u))), _wgslsmith_dot_vec2_u32(vec2<u32>(~20789u, 4294967295u), _wgslsmith_div_vec2_u32(global0.xz, firstTrailingBit(_wgslsmith_clamp_vec2_u32(global0.zx, global0.zx, vec2<u32>(u_input.c, 114990u))))), u_input.c);
    global0 = select(firstLeadingBit(~firstTrailingBit(vec4<u32>(4294967295u, 0u, 1u, u_input.c))), vec4<u32>(select(global0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(92016u, 4294967295u), global0.zx) | ~1u, !any(vec4<bool>(true, true, arg_0.b, true))), ~_wgslsmith_sub_u32(103648u & u_input.c, 8411u), u_input.c & 643u, global0.x), select(select(select(vec4<bool>(true, arg_1.b, arg_1.b, arg_0.b), select(vec4<bool>(true, arg_1.b, true, arg_0.b), vec4<bool>(arg_0.b, arg_1.b, arg_0.b, arg_0.b), arg_1.b), select(vec4<bool>(arg_0.b, arg_0.b, true, arg_1.b), vec4<bool>(true, arg_1.b, true, true), vec4<bool>(arg_0.b, false, false, arg_0.b))), select(!vec4<bool>(arg_0.b, true, arg_0.b, true), select(vec4<bool>(false, arg_1.b, true, false), vec4<bool>(false, false, arg_0.b, arg_1.b), vec4<bool>(arg_1.b, arg_1.b, arg_1.b, false)), arg_1.b), !(!arg_1.b)), select(select(vec4<bool>(arg_1.b, false, false, arg_1.b), !vec4<bool>(arg_1.b, arg_1.b, arg_1.b, arg_1.b), select(vec4<bool>(arg_0.b, false, true, arg_0.b), vec4<bool>(arg_0.b, false, arg_0.b, arg_0.b), vec4<bool>(true, arg_0.b, true, true))), !select(vec4<bool>(arg_1.b, arg_0.b, true, false), vec4<bool>(arg_0.b, arg_1.b, false, true), true), !(!vec4<bool>(arg_1.b, arg_1.b, false, true))), vec4<bool>(all(select(vec3<bool>(arg_0.b, arg_1.b, true), vec3<bool>(false, arg_0.b, arg_0.b), arg_1.b)), arg_1.b, (-2147483647i != var_0) & (arg_0.b | arg_0.b), (20148u <= global0.x) | false)));
    var var_1 = Struct_1(arg_0.a.x, 0i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(arg_0.a.wyz)), vec3<f32>(_wgslsmith_f_op_f32(-1000f + arg_0.a.x), _wgslsmith_f_op_f32(arg_1.a.x + 555f), -904f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(152f, 593f, false)), arg_0.a.x, _wgslsmith_f_op_f32(-arg_0.a.x)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1227f, arg_1.a.x, -792f), arg_1.a.zyy, vec3<bool>(arg_0.b, true, arg_0.b))) - vec3<f32>(arg_0.a.x, -559f, arg_1.a.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x + arg_1.a.x)), _wgslsmith_div_f32(-155f, _wgslsmith_f_op_f32(sign(arg_1.a.x))))))), arg_1.a);
    return _wgslsmith_dot_vec3_i32(vec3<i32>(-6447i, 1i, _wgslsmith_add_i32(0i, -select(u_input.a.x, var_0, true))), ~reverseBits(u_input.a.zwx));
}

fn func_2() -> f32 {
    var var_0 = func_4(Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(reverseBits(u_input.c))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-681f, -647f, 179f, -385f), _wgslsmith_f_op_vec4_f32(vec4<f32>(1903f, 1083f, 704f, 344f) * vec4<f32>(-200f, -1000f, -273f, -2450f)), true))), true), Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-239f, 1216f, 235f, 829f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-175f, -1014f, -644f, 547f) - vec4<f32>(-1168f, -628f, -399f, -260f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-379f, -374f, -492f, 363f)))), true), ~2147483647i);
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-645f + -1000f) + -803f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(1697f + 105f), _wgslsmith_f_op_f32(f32(-1f) * -1518f))), countOneBits(-min(1i, u_input.b)), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -654f), _wgslsmith_f_op_f32(ceil(-539f)), all(vec2<bool>(false, true)))), -1015f, _wgslsmith_div_f32(-829f, -111f)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - 263f), _wgslsmith_f_op_f32(floor(411f))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-560f, -954f, 497f, 370f), vec4<f32>(442f, -957f, -540f, -675f)))))))), vec2<f32>(1f, 1f));
    global2 = u_input.c <= ~54048u;
    global2 = var_1.a.b <= var_1.a.b;
    var var_2 = _wgslsmith_clamp_i32(-func_4(Struct_3(vec4<f32>(var_1.b.x, 518f, -614f, -843f), true), Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.e.x, 831f, var_1.a.e.x, var_1.a.c.x) * var_1.a.e), any(vec3<bool>(false, false, false))), ~u_input.b), (abs(func_4(Struct_3(vec4<f32>(838f, 362f, var_1.b.x, var_1.a.c.x), false), Struct_3(vec4<f32>(-894f, 1000f, 400f, -1192f), false), u_input.b)) >> (global0.x % 32u)) << (max(reverseBits(_wgslsmith_dot_vec3_u32(global0.ywy, vec3<u32>(0u, global0.x, 3352u))), 0u) % 32u), reverseBits(firstLeadingBit(~(-47276i))) >> (~((u_input.c << (global0.x % 32u)) ^ 8651u) % 32u));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.a.c.x), _wgslsmith_f_op_f32(var_1.b.x + var_1.a.a)))))) - var_1.b.x);
}

fn func_1(arg_0: i32, arg_1: Struct_3, arg_2: vec4<i32>, arg_3: u32) -> f32 {
    let var_0 = select(vec4<bool>(any(!vec2<bool>(true, arg_1.b)), -47521i != min(0i | arg_2.x, 1i), arg_1.b, true), select(select(select(vec4<bool>(arg_1.b, arg_1.b, arg_1.b, true), !vec4<bool>(true, true, arg_1.b, arg_1.b), arg_1.b), select(select(vec4<bool>(false, arg_1.b, arg_1.b, true), vec4<bool>(false, true, true, true), false), !vec4<bool>(false, arg_1.b, arg_1.b, true), select(vec4<bool>(true, arg_1.b, arg_1.b, arg_1.b), vec4<bool>(false, arg_1.b, false, arg_1.b), vec4<bool>(arg_1.b, true, arg_1.b, false))), !(arg_2.x < arg_0)), vec4<bool>(arg_1.b, 639f != _wgslsmith_f_op_f32(func_2()), true, true), select(select(select(vec4<bool>(arg_1.b, true, true, arg_1.b), vec4<bool>(false, false, true, true), vec4<bool>(true, arg_1.b, arg_1.b, arg_1.b)), vec4<bool>(true, arg_1.b, arg_1.b, true), vec4<bool>(arg_1.b, arg_1.b, true, false)), select(vec4<bool>(true, false, false, arg_1.b), vec4<bool>(true, arg_1.b, arg_1.b, arg_1.b), select(vec4<bool>(arg_1.b, arg_1.b, true, arg_1.b), vec4<bool>(arg_1.b, arg_1.b, true, true), arg_1.b)), !(!vec4<bool>(arg_1.b, arg_1.b, arg_1.b, arg_1.b)))), arg_1.b);
    let var_1 = -arg_0;
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-939f, arg_1.a.x) * vec2<f32>(-345f, arg_1.a.x)) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-327f, -431f), arg_1.a.zx, false)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.a.yx * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1407f, arg_1.a.x), arg_1.a.yw))))));
    global2 = arg_1.b;
    global2 = arg_1.b;
    return _wgslsmith_f_op_f32(-arg_1.a.x);
}

fn func_5(arg_0: vec3<f32>, arg_1: bool, arg_2: i32) -> Struct_1 {
    global0 = vec4<u32>(43048u, ~_wgslsmith_div_u32(_wgslsmith_sub_u32(abs(u_input.c), ~4294967295u), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(global0.wxx, vec3<u32>(global0.x, global0.x, 90660u)), ~global0.wyw)), ~4294967295u, ~(_wgslsmith_mult_u32(global0.x, u_input.c & 1u) >> ((_wgslsmith_mod_u32(57030u, global0.x) | global0.x) % 32u)));
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -523f)))))), _wgslsmith_f_op_vec4_f32(func_3(30836u)).x, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + 1671f) * _wgslsmith_f_op_f32(-arg_0.x)), -1289f))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, 686f, arg_0.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, 946f, -1392f, arg_0.x) * vec4<f32>(arg_0.x, arg_0.x, var_0.x, 1364f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.x, var_0.x, 1022f, arg_0.x))) + vec4<f32>(1054f, arg_0.x, 1805f, -773f))) - _wgslsmith_f_op_vec4_f32(func_3(~(~u_input.c)))));
    let var_2 = _wgslsmith_f_op_f32(-var_1.x);
    var var_3 = any(select(!vec3<bool>(!arg_1, all(vec2<bool>(true, arg_1)), select(arg_1, false, arg_1)), !select(!vec3<bool>(arg_1, arg_1, true), select(vec3<bool>(arg_1, arg_1, true), vec3<bool>(arg_1, false, arg_1), vec3<bool>(false, true, arg_1)), true), any(vec4<bool>(true, false && arg_1, any(vec3<bool>(false, arg_1, false)), false))));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(arg_2, Struct_3(var_1, arg_1), vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, 2147483647i), global0.x)) * -2942f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), -arg_2, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(var_0.x * arg_0.x), 475f, -321f), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(646f, -1000f, 1480f), vec3<f32>(arg_0.x, -887f, -1080f))), var_1.zwz)), select(vec3<bool>(true, false, arg_1), !vec3<bool>(arg_1, false, arg_1), all(vec4<bool>(arg_1, true, false, false))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, arg_0.x, -1492f) * arg_0), _wgslsmith_f_op_vec3_f32(var_0.xzx - arg_0), 13552u != global0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1270f, var_2, 1000f) + vec3<f32>(500f, 272f, 1000f)))), !vec3<bool>(any(vec2<bool>(true, arg_1)), false, global0.x >= u_input.c))), var_0.x, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -637f), 0u < u_input.c)), _wgslsmith_f_op_vec4_f32(func_3(u_input.c)).x, -708f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.x), var_2))))));
}

fn func_6(arg_0: vec2<u32>, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = arg_1.b;
    let var_1 = _wgslsmith_f_op_f32(-arg_1.c.x);
    global1 = array<Struct_4, 18>();
    global0 = abs(countOneBits(~_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(12493u, 4294967295u, 980u, 4817u), vec4<u32>(arg_0.x, global0.x, arg_0.x, 4294967295u)), vec4<u32>(4294967295u, global0.x, 22176u, arg_0.x) << (vec4<u32>(arg_0.x, 11010u, global0.x, 80989u) % vec4<u32>(32u)))));
    var var_2 = arg_1.e.x;
    return select(select(!select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(false, true)), vec2<bool>(false, false), false), vec2<bool>(false, true), vec2<bool>(true, all(vec3<bool>(true, true, true)) & any(vec3<bool>(true, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_4, 18>();
    var var_0 = Struct_4(func_6(vec2<u32>(4294967295u, 37635u) | max(~global0.yz, ~vec2<u32>(u_input.c, 11346u)), func_5(vec3<f32>(-105f, -1534f, _wgslsmith_f_op_f32(func_1(0i, Struct_3(vec4<f32>(502f, -1608f, 750f, -1898f), false), vec4<i32>(-2147483647i, -3078i, u_input.a.x, u_input.b), u_input.c))), true, -(u_input.a.x & 0i))), Struct_3(vec4<f32>(1000f, func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1520f, -627f, 1159f)), true, func_4(Struct_3(vec4<f32>(-836f, 1610f, 1657f, 1585f), false), Struct_3(vec4<f32>(1000f, -877f, -3075f, -722f), true), -14229i)).e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(u_input.b, Struct_3(vec4<f32>(-224f, -1616f, 581f, -1435f), false), vec4<i32>(2147483647i, 42283i, 0i, u_input.b), global0.x)) * _wgslsmith_f_op_f32(f32(-1f) * -734f)), -1000f), true), Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(247f, 919f, -622f, 560f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1064f, -103f, 1860f, 1000f))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2007f, -286f, -1267f, -231f))))), true));
    var var_1 = -vec3<i32>(~33282i, u_input.a.x, u_input.b) << (reverseBits(vec3<u32>(global0.x, ~0u, u_input.c)) % vec3<u32>(32u));
    var_1 = firstLeadingBit((-u_input.a.zzz >> (global0.wyz % vec3<u32>(32u))) >> (_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_add_u32(global0.x, u_input.c), u_input.c, u_input.c), vec3<u32>(~0u, 46614u, u_input.c | u_input.c)) % vec3<u32>(32u)));
    var var_2 = var_0.b;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(func_1(var_1.x, var_0.c, ~vec4<i32>(_wgslsmith_clamp_i32(u_input.b, -2147483647i, u_input.a.x), _wgslsmith_sub_i32(0i, u_input.a.x), _wgslsmith_div_i32(-49051i, 1i), 1i), 27533u)), _wgslsmith_dot_vec2_i32(~firstTrailingBit(u_input.a.yy), -vec2<i32>(max(u_input.a.x, 31594i), -2147483647i)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(select(-175f, -194f, func_6(global0.zy, Struct_1(var_2.a.x, var_1.x, var_0.c.a.xxz, -877f, var_2.a)).x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x + 683f)), 1000f), vec3<f32>(var_0.c.a.x, _wgslsmith_div_f32(-669f, -927f), var_2.a.x), vec3<bool>(any(vec3<bool>(false, true, true)), false, var_0.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -725f) * 959f))) - _wgslsmith_f_op_f32(-var_0.c.a.x)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.c.a.x, 145f, 411f, _wgslsmith_f_op_f32(f32(-1f) * -650f)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(var_2.a))))))));
    var var_4 = _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-firstLeadingBit(0i), var_1.x, 9999i, _wgslsmith_mult_i32(_wgslsmith_mult_i32(1i, -18965i), var_1.x | 34500i)), u_input.a), _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(-u_input.a, min(vec4<i32>(var_3.b, -1i, 37044i, var_1.x) << (vec4<u32>(25892u, 589u, global0.x, 1u) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(u_input.a, u_input.a))), vec4<i32>(-1i) * -vec4<i32>(-28613i, -3661i, 0i, u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_2.a.x), abs(~firstLeadingBit(0u)) << (0u % 32u), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a.x, 251f, var_2.a.x)) + _wgslsmith_f_op_vec3_f32(-var_3.e.zzz)), var_2.a.xzz)), _wgslsmith_f_op_vec3_f32(-var_2.a.yzx))));
}

