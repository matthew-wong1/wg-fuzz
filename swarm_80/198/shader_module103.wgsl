struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(4294967295u, 41655u, 4294967295u);

var<private> global1: vec2<i32> = vec2<i32>(-35320i, 7480i);

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<i32>) -> i32 {
    let var_0 = Struct_1(max(countOneBits(-min(vec4<i32>(global1.x, arg_1.x, 0i, global1.x), vec4<i32>(global1.x, 1i, 2147483647i, global1.x))), -vec4<i32>(global1.x, -8300i, 1i, ~(-10161i))), vec3<bool>(true, !any(vec2<bool>(true, false)), true));
    global0 = firstLeadingBit(vec3<u32>(~4294967295u, ~(~(~49412u)), ~1834u));
    global0 = vec3<u32>(_wgslsmith_mod_u32(19694u, _wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(arg_0.xz, arg_0.xx), vec2<u32>(arg_0.x, _wgslsmith_clamp_u32(global0.x, global0.x, 1u)))), 4294967295u, 61325u);
    var var_1 = 0i;
    global0 = _wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(45185u >> (_wgslsmith_sub_u32(4294967295u, 4294967295u) % 32u), _wgslsmith_mod_u32(7234u, global0.x), ~1u), ~abs(arg_0), vec3<u32>(1u, _wgslsmith_mod_u32(4294967295u << (global0.x % 32u), ~76771u), _wgslsmith_sub_u32(global0.x, ~1u))), vec3<u32>(arg_0.x, u_input.b, reverseBits(~(~u_input.b))), firstLeadingBit(vec3<u32>(global0.x, select(49829u, 4294967295u, false), ~global0.x)) ^ vec3<u32>(62491u, 29078u, arg_0.x));
    return -42568i;
}

fn func_3(arg_0: f32, arg_1: vec4<bool>, arg_2: bool) -> vec4<u32> {
    global0 = select(min(_wgslsmith_mult_vec3_u32(select(~vec3<u32>(global0.x, global0.x, 62980u), vec3<u32>(global0.x, global0.x, 4294967295u), !arg_2), min(~vec3<u32>(27800u, 99149u, 1u), vec3<u32>(0u, 1u, global0.x) & vec3<u32>(4294967295u, 26815u, 4294967295u))), countOneBits(firstLeadingBit(vec3<u32>(0u, 3942u, global0.x) << (vec3<u32>(global0.x, u_input.a, u_input.b) % vec3<u32>(32u))))), firstTrailingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 1u, 4294967295u) >> (min(vec3<u32>(4294967295u, global0.x, 4294967295u), vec3<u32>(global0.x, 1u, u_input.b)) % vec3<u32>(32u)), vec3<u32>(min(45770u, 4294967295u), ~global0.x, min(1u, 28991u)))), vec3<bool>(all(!vec3<bool>(arg_2, arg_2, arg_1.x)), select(any(vec4<bool>(false, true, arg_1.x, false)), any(select(vec3<bool>(arg_1.x, arg_1.x, false), vec3<bool>(false, true, false), arg_2)), !any(vec3<bool>(true, arg_1.x, arg_1.x))), any(select(!arg_1, select(arg_1, vec4<bool>(true, arg_2, arg_2, arg_2), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true)), any(arg_1)))));
    var var_0 = Struct_2(Struct_1(~vec4<i32>(_wgslsmith_clamp_i32(global1.x, 0i, -2147483647i), i32(-1i) * -1i, 0i, _wgslsmith_sub_i32(1i, 49284i)), arg_1.wxx), global1.x, Struct_1(vec4<i32>(_wgslsmith_mod_i32(-28007i, ~(-24758i)), -_wgslsmith_mult_i32(global1.x, global1.x), ~abs(-30541i), ~u_input.c.x), !(!arg_1.yxz)), _wgslsmith_mult_u32(_wgslsmith_div_u32(firstLeadingBit(u_input.b), 72595u), ~_wgslsmith_clamp_u32(firstTrailingBit(global0.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 4294967295u, u_input.b, 4672u), vec4<u32>(u_input.a, 4294967295u, 4294967295u, u_input.b)), abs(14760u))), Struct_1(~vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.c.zyz, vec3<i32>(-16377i, u_input.c.x, global1.x)), 1i, min(global1.x, global1.x), global1.x), !select(arg_1.zxy, select(arg_1.zwy, arg_1.wxx, arg_2), all(arg_1.wz))));
    var var_1 = ~max(vec2<u32>(1u, ~46400u ^ _wgslsmith_div_u32(3808u, var_0.d)), global0.zx);
    global0 = reverseBits(_wgslsmith_sub_vec3_u32(abs(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 1u, 30727u), vec3<u32>(30357u, var_1.x, global0.x) << (vec3<u32>(1u, global0.x, var_0.d) % vec3<u32>(32u)))), min(vec3<u32>(u_input.a, var_1.x, 18012u) >> (vec3<u32>(var_1.x, 1u, 35097u) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_div_u32(global0.x, 25955u), ~9573u, _wgslsmith_add_u32(u_input.b, 77373u)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0, 232f, -1759f), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0, -1295f, arg_0)))))))), select(~23815u <= var_1.x, arg_1.x, (max(2147483647i, 1i) & _wgslsmith_clamp_i32(2147483647i, 11741i, 0i)) != func_2(~vec3<u32>(1u, 1u, u_input.b), _wgslsmith_clamp_vec2_i32(vec2<i32>(global1.x, global1.x), var_0.e.a.zw, u_input.c.wz)))));
    return firstLeadingBit(vec4<u32>(u_input.a & abs(1u), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(global0.x, 36821u, u_input.a, 4294967295u)), ~vec4<u32>(global0.x, u_input.b, global0.x, 8203u)), u_input.b, _wgslsmith_dot_vec2_u32(~vec2<u32>(17625u, 0u), ~global0.zz)));
}

fn func_1() -> vec4<i32> {
    let var_0 = ~38205u;
    var var_1 = Struct_2(Struct_1(min(vec4<i32>(u_input.d, 1i, 1i, global1.x), u_input.c) ^ vec4<i32>(-u_input.c.x, global1.x, func_2(vec3<u32>(u_input.a, 17070u, 4294967295u), u_input.c.yy), global1.x), vec3<bool>(true, true, true)), u_input.c.x, Struct_1(-((vec4<i32>(34867i, global1.x, 47990i, global1.x) ^ u_input.c) >> (func_3(2872f, vec4<bool>(false, false, false, true), false) % vec4<u32>(32u))), vec3<bool>(true, true, true)), ~(50829u | u_input.b), Struct_1(vec4<i32>(_wgslsmith_div_i32(-517i, firstLeadingBit(u_input.d)), _wgslsmith_add_i32(2147483647i, _wgslsmith_sub_i32(u_input.c.x, -43928i)), u_input.c.x, global1.x), !(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false)))));
    var_1 = Struct_2(var_1.c, -u_input.c.x, Struct_1(var_1.a.a, !var_1.a.b), ~_wgslsmith_mult_u32(1u, 48510u), Struct_1(select(var_1.c.a | u_input.c, u_input.c, var_1.a.b.x), var_1.c.b));
    let var_2 = var_1.a;
    var_1 = Struct_2(Struct_1(var_2.a, var_1.c.b), select(31615i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.a.x, u_input.c.x, 286i), u_input.c.zwx) ^ var_1.a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(230f, -222f)) > _wgslsmith_f_op_f32(max(870f, _wgslsmith_f_op_f32(trunc(633f))))), var_1.e, min(firstTrailingBit(~_wgslsmith_mult_u32(var_1.d, 38013u)), 15204u), var_1.c);
    return abs(~_wgslsmith_mult_vec4_i32(reverseBits(select(u_input.c, var_1.e.a, vec4<bool>(false, true, var_2.b.x, var_1.c.b.x))), reverseBits(vec4<i32>(var_2.a.x, 33620i, 0i, var_1.a.a.x))));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(u_input.c, !vec3<bool>(true, !arg_2.b.x, any(vec2<bool>(arg_2.b.x, true)))), -37025i, Struct_1(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, u_input.c.x, arg_1, -4246i) ^ vec4<i32>(12017i, 2147483647i, u_input.c.x, u_input.c.x), u_input.c), select(vec4<i32>(-72766i, -2147483647i, 0i, arg_2.a.x), arg_2.a, arg_2.b.x)), select(!select(vec3<bool>(arg_0.b.x, arg_2.b.x, true), vec3<bool>(arg_0.b.x, false, arg_0.b.x), arg_0.b.x), select(!arg_0.b, select(vec3<bool>(true, arg_2.b.x, arg_0.b.x), vec3<bool>(arg_2.b.x, false, false), vec3<bool>(false, true, true)), true), arg_0.b)), global0.x, Struct_1(arg_2.a, !select(!vec3<bool>(arg_2.b.x, arg_2.b.x, false), arg_2.b, false)));
    let var_1 = ~_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(reverseBits(vec3<u32>(u_input.a, 12527u, 0u)), vec3<u32>(u_input.a, 1u, var_0.d), ~vec3<u32>(global0.x, global0.x, 0u)) ^ _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 4294967295u, u_input.b), vec3<u32>(var_0.d, 16074u, global0.x)), select(vec3<u32>(u_input.a, 4294967295u, 1u), vec3<u32>(4294967295u, 18577u, 1u), vec3<bool>(false, true, false))), max(select(vec3<u32>(4294967295u, 15050u, global0.x), vec3<u32>(var_0.d, 23213u, 75334u), arg_2.b) << (vec3<u32>(u_input.b, 1u, 42086u) % vec3<u32>(32u)), (vec3<u32>(54276u, u_input.a, 39511u) << (vec3<u32>(54131u, var_0.d, 7610u) % vec3<u32>(32u))) << ((vec3<u32>(global0.x, 37992u, global0.x) & vec3<u32>(11534u, 25841u, global0.x)) % vec3<u32>(32u))));
    let var_2 = Struct_1(~_wgslsmith_mod_vec4_i32(arg_2.a, countOneBits(vec4<i32>(global1.x, arg_0.a.x, 2147483647i, 19777i))), vec3<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, arg_0.b.x, arg_2.b.x), false)), !arg_2.b.x, true == any(vec2<bool>(arg_0.b.x, var_0.c.b.x))));
    let var_3 = var_0;
    global1 = arg_2.a.xw & -vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_mult_i32(var_0.b, var_0.e.a.x), min(arg_2.a.x, u_input.c.x)), 1i);
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(abs(_wgslsmith_add_vec4_i32(func_1(), firstLeadingBit(u_input.c))), vec3<bool>(true, true, true)), global1.x, Struct_1(vec4<i32>(_wgslsmith_add_i32(min(global1.x, 0i), _wgslsmith_add_i32(u_input.d, u_input.d)), u_input.c.x, -1i, firstLeadingBit(u_input.d | -46410i)), select(vec3<bool>(true, true, true), !select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), all(vec2<bool>(false, true)))), max(~abs(-global1.x), func_1().x));
    let var_1 = func_4(Struct_1(reverseBits(-u_input.c | var_0.a), select(var_0.b, var_0.b, true)), _wgslsmith_sub_i32(~(-(~(-65111i))), select(-1i, -16058i, true)), func_4(func_4(func_4(Struct_1(u_input.c, var_0.b), var_0.a.x, func_4(Struct_1(var_0.a, var_0.b), -2147483647i, Struct_1(var_0.a, var_0.b), -5445i), -16040i), 1i | _wgslsmith_div_i32(u_input.d, var_0.a.x), func_4(Struct_1(var_0.a, var_0.b), u_input.c.x, func_4(Struct_1(vec4<i32>(21254i, 0i, var_0.a.x, var_0.a.x), var_0.b), u_input.d, Struct_1(vec4<i32>(-3156i, -1i, -1i, var_0.a.x), var_0.b), 1i), abs(6265i)), u_input.c.x), countOneBits(-1i), Struct_1(var_0.a, !(!var_0.b)), -58111i), 0i);
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1253f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1380f * 845f))))));
    var var_3 = Struct_2(Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(0i | u_input.d, -1i, ~var_0.a.x, 14682i), -u_input.c ^ _wgslsmith_add_vec4_i32(vec4<i32>(u_input.d, 13518i, u_input.c.x, 1i), u_input.c)), vec3<bool>(true, false, select(var_0.b.x, var_0.b.x, false) != true)), firstLeadingBit(_wgslsmith_add_i32(global1.x, 51086i) >> (0u % 32u)), func_4(func_4(func_4(func_4(var_1, 2147483647i, var_1, -1i), u_input.d, func_4(Struct_1(var_1.a, var_0.b), var_0.a.x, var_1, var_0.a.x), global1.x), 0i, func_4(Struct_1(vec4<i32>(2147483647i, 1i, var_0.a.x, 50333i), vec3<bool>(true, var_0.b.x, var_1.b.x)), _wgslsmith_mod_i32(var_0.a.x, var_0.a.x), func_4(Struct_1(vec4<i32>(var_1.a.x, var_1.a.x, global1.x, var_1.a.x), vec3<bool>(true, true, false)), var_1.a.x, var_1, u_input.d), abs(global1.x)), ~(global1.x & u_input.c.x)), ~1i, Struct_1(vec4<i32>(~27032i, var_1.a.x, -u_input.d, 7946i), vec3<bool>(all(vec4<bool>(false, var_1.b.x, true, var_1.b.x)), !var_0.b.x, var_1.b.x)), 29523i), _wgslsmith_mod_u32(global0.x, ~0u), Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(-14158i, reverseBits(var_1.a.x), select(1i, u_input.c.x, true), ~5261i), -var_1.a, reverseBits(~vec4<i32>(2147483647i, var_0.a.x, -54155i, var_1.a.x))), !func_4(var_1, -1i, Struct_1(vec4<i32>(global1.x, -38616i, 15059i, u_input.d), vec3<bool>(var_1.b.x, true, var_0.b.x)), _wgslsmith_div_i32(-26788i, 2147483647i)).b));
    var_3 = Struct_2(var_3.a, var_1.a.x, var_3.a, 4294967295u, func_4(Struct_1(vec4<i32>(-var_1.a.x, -38945i, _wgslsmith_div_i32(u_input.c.x, 2186i), var_1.a.x), !func_4(Struct_1(u_input.c, vec3<bool>(var_3.c.b.x, true, var_3.a.b.x)), 3998i, var_3.a, global1.x).b), 35529i, var_3.e, _wgslsmith_dot_vec2_i32(var_3.c.a.xw | var_0.a.xw, var_1.a.zx) | u_input.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.e.a.wyx, ~(global1.x ^ (~var_0.a.x << (u_input.a % 32u))), vec3<u32>(1u, u_input.a, 20416u), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, var_2, var_2, var_2)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-750f, var_2, var_2, var_2))), _wgslsmith_div_vec4_f32(vec4<f32>(-292f, var_2, -234f, var_2), vec4<f32>(var_2, -682f, var_2, var_2))))));
}

