struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec3<f32>,
    d: f32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_3 {
    a: bool,
    b: bool,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: f32,
    d: vec3<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(false, true);

var<private> global1: Struct_1 = Struct_1(vec2<f32>(2047f, -438f), false, vec3<f32>(-477f, -1318f, -1765f), 294f, vec4<f32>(-398f, 1478f, -1519f, -1221f));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: Struct_2) -> vec3<f32> {
    var var_0 = Struct_4(_wgslsmith_dot_vec4_u32(~vec4<u32>(max(0u, 67720u), select(u_input.a.x, 4294967295u, global0.b), _wgslsmith_mod_u32(u_input.a.x, u_input.a.x), ~u_input.a.x), firstLeadingBit(select(vec4<u32>(0u, 102731u, u_input.a.x, 1u), vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x) & vec4<u32>(25686u, 16866u, 37716u, u_input.a.x), !arg_0.x))));
    let var_1 = (select((vec4<i32>(2147483647i, -1i, 9988i, -14683i) << (vec4<u32>(54636u, 4294967295u, var_0.a, 1u) % vec4<u32>(32u))) & ~vec4<i32>(-33491i, 49243i, 1i, -70190i), abs(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, 16458i, 31833i, 2147483647i), vec4<i32>(2147483647i, 18031i, -32560i, 1i))), select(arg_0, !arg_0, vec4<bool>(false, arg_1.b, false, global0.a))) | ~(-vec4<i32>(1i, -1263i, -1i, -2147483647i))) & _wgslsmith_mod_vec4_i32(vec4<i32>(abs(_wgslsmith_mod_i32(-2147483647i, -3011i)), firstLeadingBit(firstLeadingBit(-13231i)), -26378i, 2638i << (_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, 18140u, u_input.a.x, 41248u), vec4<u32>(0u, u_input.a.x, 53527u, 18797u)) % 32u)), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-23583i, -37603i, -5752i) << (u_input.a % vec3<u32>(32u)), vec3<i32>(-44156i, 1i, 43464i)), -2147483647i, -1i, -33681i));
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(round(arg_2.a.c.xx)), arg_2.a.b, vec3<f32>(arg_2.a.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1f)) * global1.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-999f, 571f)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_2.b.x + -687f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-451f + 1122f), _wgslsmith_div_f32(-967f, arg_2.a.d))) + _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_2.b.x, arg_2.b.x))))), vec4<f32>(403f, global1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(arg_2.a.c.x, arg_2.a.d, global1.b)), _wgslsmith_f_op_f32(-global1.d), all(vec2<bool>(global0.a, global0.a)))) * _wgslsmith_f_op_f32(f32(-1f) * -835f)), _wgslsmith_f_op_f32(f32(-1f) * -1820f)));
    let var_2 = Struct_4(u_input.a.x);
    global0 = Struct_3(arg_1.a, arg_2.a.d > -573f);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_2.a.e.x)), -781f, global1.e.x)))));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: f32) -> vec3<f32> {
    global0 = Struct_3(global1.b, ~54292u > u_input.a.x);
    var var_0 = Struct_3(!global1.b, !global0.a);
    let var_1 = Struct_3(!(!(!arg_1.a.b)), var_0.b);
    global0 = var_1;
    var var_2 = global1.c;
    return arg_1.b;
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_sub_vec4_u32(min(vec4<u32>(4294967295u, ~u_input.a.x, 4294967295u, u_input.a.x), vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.a.yy, u_input.a.zx), u_input.a.x, 43558u, 38731u)) & ~vec4<u32>(u_input.a.x, abs(0u), 0u, ~4294967295u), abs(~(~(~vec4<u32>(u_input.a.x, 20973u, u_input.a.x, 29366u)))));
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-587f)) + _wgslsmith_f_op_f32(159f * global1.a.x)), _wgslsmith_div_f32(-1071f, _wgslsmith_f_op_f32(f32(-1f) * -1845f))))), false, _wgslsmith_f_op_vec3_f32(func_4(u_input.a.x, Struct_2(Struct_1(global1.e.xw, true, _wgslsmith_f_op_vec3_f32(global1.c * global1.e.www), _wgslsmith_f_op_f32(535f + -444f), _wgslsmith_f_op_vec4_f32(-global1.e)), _wgslsmith_f_op_vec3_f32(func_3(select(vec4<bool>(global0.b, global0.a, false, false), vec4<bool>(true, false, global0.b, global0.b), vec4<bool>(global1.b, true, global0.b, global0.a)), Struct_3(true, false), Struct_2(Struct_1(global1.a, global0.a, vec3<f32>(-1000f, 354f, global1.e.x), global1.a.x, global1.e), global1.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-696f * 1772f))))), _wgslsmith_div_f32(global1.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1211f, 1746f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d))))), _wgslsmith_f_op_vec4_f32(min(global1.e, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.e.x, global1.e.x, global1.a.x, global1.e.x)), _wgslsmith_f_op_vec4_f32(global1.e + vec4<f32>(global1.d, -378f, -353f, -1077f)))))))));
    var var_1 = Struct_4(4294967295u);
    var_0 = vec4<u32>(_wgslsmith_clamp_u32(u_input.a.x, 24281u, _wgslsmith_clamp_u32(~countOneBits(u_input.a.x), _wgslsmith_clamp_u32(min(0u, 36933u), u_input.a.x, abs(var_0.x)), select(1u, 1u, true))), 7238u, _wgslsmith_mult_u32(~0u, ~reverseBits(select(var_0.x, var_0.x, global1.b))), _wgslsmith_dot_vec2_u32(~abs(~u_input.a.yy), abs(~var_0.xy)));
    let var_2 = Struct_2(Struct_1(global1.e.yy, true, global1.c, -747f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-global1.e))))), vec3<f32>(global1.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.d - _wgslsmith_div_f32(1000f, global1.c.x)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global1.c.x, 794f, true)), _wgslsmith_f_op_f32(-global1.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(637f * 857f) - 520f) + _wgslsmith_f_op_f32(f32(-1f) * -1462f))));
    return var_0.x;
}

fn func_5(arg_0: u32, arg_1: vec4<i32>) -> Struct_1 {
    global0 = Struct_3(global1.b, all(select(vec3<bool>(false, global1.e.x > global1.a.x, global0.a), select(vec3<bool>(true, true, true), vec3<bool>(true, global0.a, global0.b), true), select(select(vec3<bool>(global0.a, false, global1.b), vec3<bool>(global1.b, global0.b, global1.b), vec3<bool>(global1.b, global1.b, true)), vec3<bool>(false, true, global1.b), true))));
    let var_0 = -36588i;
    let var_1 = Struct_4(abs(func_2()));
    let var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(global1.e, vec4<f32>(global1.a.x, global1.d, global1.e.x, -872f))))) * _wgslsmith_f_op_vec4_f32(min(global1.e, _wgslsmith_f_op_vec4_f32(-global1.e))))));
    global1 = Struct_1(var_2.xw, all(vec3<bool>(true, true, true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1742f))), 186f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1800f, var_2.x)))), 362f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.x, -372f, 918f, var_2.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, -349f, -347f, 1000f)), u_input.a.x <= 0u)))));
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(global1.c.xz)) + _wgslsmith_f_op_vec2_f32(floor(global1.c.zx))))), false, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.c * var_2.yyw)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, 379f, var_2.x) - global1.c) - var_2.xwz)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.e.zyw - var_2.xxw)) * vec3<f32>(-2157f, -1278f, 1590f))), var_2.x, _wgslsmith_f_op_vec4_f32(var_2 * _wgslsmith_f_op_vec4_f32(round(global1.e))));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2) -> Struct_1 {
    global1 = arg_0.a;
    global1 = func_5(~18439u, vec4<i32>(1i, ~select(_wgslsmith_clamp_i32(2147483647i, -1i, -1i), 15953i << (0u % 32u), !global1.b), _wgslsmith_dot_vec3_i32(~_wgslsmith_sub_vec3_i32(vec3<i32>(27148i, 22092i, 7149i), vec3<i32>(15240i, -29234i, -14054i)), max(-vec3<i32>(-69542i, 35916i, 1i), reverseBits(vec3<i32>(-10147i, 10864i, -20586i)))), _wgslsmith_dot_vec4_i32(-vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_clamp_vec4_i32(-vec4<i32>(1i, 33959i, 43334i, 63611i), firstLeadingBit(vec4<i32>(0i, -1i, 16736i, -1i)), countOneBits(vec4<i32>(27687i, 2147483647i, 1037i, 0i))))));
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(550f, arg_1.a.c.x)))))) + _wgslsmith_f_op_vec2_f32(trunc(arg_1.a.a))), (_wgslsmith_f_op_f32(exp2(global1.d)) > global1.a.x) && !arg_1.a.b, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(-731f, 445f)), _wgslsmith_f_op_f32(exp2(arg_1.a.d)), _wgslsmith_f_op_vec3_f32(func_3(vec4<bool>(false, arg_1.a.b, true, true), Struct_3(false, global0.b), arg_0)).x)), _wgslsmith_f_op_vec3_f32(-arg_1.a.e.wwx))), arg_0.b.x, arg_0.a.e);
    var var_0 = -6406i;
    let var_1 = Struct_3(arg_1.a.b, true);
    return func_5(_wgslsmith_add_u32(1u, reverseBits(min(~u_input.a.x, u_input.a.x))), vec4<i32>(1i, 1i, 1i, 1i));
}

fn func_1(arg_0: vec2<u32>, arg_1: bool) -> vec2<i32> {
    global1 = func_6(Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-244f, 577f) + global1.e.yz), false, _wgslsmith_f_op_vec3_f32(ceil(global1.e.wxy)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1689f) + 486f), _wgslsmith_f_op_vec4_f32(floor(global1.e))), _wgslsmith_f_op_vec3_f32(-global1.c)), Struct_2(func_5(func_2(), _wgslsmith_clamp_vec4_i32(vec4<i32>(11774i, -53399i, 8211i, -1i), vec4<i32>(56661i, 14612i, 5351i, -1i), vec4<i32>(1i, 0i, 1i, 0i))), global1.e.zyz));
    global0 = Struct_3(((1i ^ (1i << (u_input.a.x % 32u))) < reverseBits(select(2147483647i, -2147483647i, global0.b))) && global0.a, true);
    var var_0 = global1.e;
    var var_1 = Struct_3(true, global0.b);
    global1 = func_5(73340u, firstLeadingBit(select(select(~vec4<i32>(7373i, -1i, 76140i, 27807i), _wgslsmith_add_vec4_i32(vec4<i32>(29833i, 32703i, 0i, -2354i), vec4<i32>(-23875i, -50868i, 0i, 4527i)), 43190u < u_input.a.x), vec4<i32>(min(-1i, -20335i), 1i, -8798i, -8690i), (u_input.a.x != u_input.a.x) | true)));
    return ~(-_wgslsmith_add_vec2_i32(vec2<i32>(1i, 108256i), select(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(19915i, -21947i), true)) & ~min(max(vec2<i32>(1i, 0i), vec2<i32>(0i, -8651i)), vec2<i32>(1i, 1i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec2<bool>(any(vec3<bool>(global0.b, global0.a & true, global1.b)), any(vec4<bool>(true | global1.b, false, global1.b, global0.b))), vec2<bool>(995f > _wgslsmith_f_op_f32(min(-832f, _wgslsmith_f_op_f32(-395f * global1.d))), _wgslsmith_dot_vec2_i32(func_1(u_input.a.yy, true), -vec2<i32>(1573i, 2147483647i)) < ~(~(-41498i))), select(vec2<bool>(true, true), select(select(vec2<bool>(false, global1.b), select(vec2<bool>(global0.a, false), vec2<bool>(true, global0.a), false), select(vec2<bool>(true, global0.a), vec2<bool>(global1.b, global0.a), vec2<bool>(global1.b, false))), select(select(vec2<bool>(true, true), vec2<bool>(true, false), global0.b), select(vec2<bool>(global0.b, global1.b), vec2<bool>(global0.a, false), vec2<bool>(false, global0.b)), vec2<bool>(false, global1.b)), select(select(vec2<bool>(global0.a, false), vec2<bool>(false, global0.b), global1.b), vec2<bool>(false, global1.b), all(vec2<bool>(false, global1.b)))), all(select(vec4<bool>(global1.b, global1.b, true, global0.a), vec4<bool>(false, global1.b, global0.b, global0.b), !global0.b))));
    var var_1 = firstTrailingBit(1i);
    var_1 = -28090i;
    var_0 = vec2<bool>(!((i32(-1i) * -10119i) > ~select(0i, -67263i, global0.a)), false);
    global1 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(global1.c.xy, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1492f, global1.d) * vec2<f32>(global1.e.x, global1.d)), all(vec2<bool>(global0.a, var_0.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.e.yx * global1.e.wz)))), global1.e.wy), _wgslsmith_add_u32(max(~4294967295u, u_input.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(63504u, 1u, u_input.a.x), vec3<u32>(1u, u_input.a.x, u_input.a.x)) ^ (u_input.a.x ^ u_input.a.x)) != ~max(4294967295u, _wgslsmith_add_u32(u_input.a.x, u_input.a.x)), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(global1.d)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1283f - 341f), global1.e.x)))), -1800f, _wgslsmith_f_op_f32(f32(-1f) * -194f)), -1000f, func_5(10659u, -vec4<i32>(1i, 1i, 1i, 1i)).e);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-1000f, _wgslsmith_f_op_f32(trunc(-1040f)), -1000f, global1.a.x), ~6219u, _wgslsmith_f_op_f32(sign(func_5(4140u, ~select(vec4<i32>(-6766i, 24869i, 62866i, -2147483647i), vec4<i32>(2147483647i, -1i, -1i, 32409i), vec4<bool>(false, false, false, global1.b))).c.x)), u_input.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(global1.a + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-2291f, -333f), vec2<f32>(global1.a.x, 1263f))))))));
}

