struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> bool {
    var var_0 = ~select(countOneBits(u_input.b.zx), u_input.b.yy, false);
    var var_1 = !select(!arg_1.b, arg_0.a.b, !select(!vec4<bool>(arg_1.a, false, arg_1.a, false), !arg_1.b, select(arg_1.b, arg_1.b, vec4<bool>(arg_1.a, true, arg_0.a.b.x, false))));
    return all(!(!select(vec3<bool>(true, var_1.x, false), vec3<bool>(arg_1.a, false, var_1.x), true))) && var_1.x;
}

fn func_4(arg_0: vec2<bool>, arg_1: i32, arg_2: vec4<bool>, arg_3: vec3<u32>) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f));
    var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - -1000f) + var_0.x), -296f)), _wgslsmith_f_op_f32(-var_0.x)) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.x, 1262f))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-616f, var_0.x), vec2<f32>(var_0.x, 1268f))), arg_2.wy)))))));
    let var_1 = vec3<u32>(6159u, reverseBits(0u), _wgslsmith_clamp_u32(~max(global0.x, 1u) & _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(45824u, 1u), arg_3.xx), _wgslsmith_clamp_vec2_u32(u_input.a.zy, vec2<u32>(arg_3.x, u_input.d.x), u_input.d.xz)), ~0u, global0.x));
    let var_2 = (global0.wxw >> (~(~max(u_input.d.wwx, vec3<u32>(arg_3.x, arg_3.x, u_input.c))) % vec3<u32>(32u))) ^ ~max(~var_1, ~min(vec3<u32>(u_input.a.x, 0u, var_1.x), global0.xyw));
    let var_3 = u_input.d;
    return vec4<u32>(min(~_wgslsmith_mod_u32(var_3.x, 27227u), 242u), select(~1u, _wgslsmith_mult_u32(~(206u >> (var_3.x % 32u)), arg_3.x), !(-u_input.b.x < ~28482i)), var_2.x, global0.x);
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: vec3<u32>) -> Struct_3 {
    global0 = min(vec4<u32>(u_input.a.x, ~(~_wgslsmith_div_u32(0u, 42357u)), ~0u, u_input.c ^ 0u), func_4(vec2<bool>(false, select(arg_1.c.a.b.x, arg_1.c.c.b.x, func_3(arg_1.c, arg_1.c.a))), -4324i, !arg_1.b.b, ~_wgslsmith_sub_vec3_u32(vec3<u32>(1u, arg_1.c.a.c, global0.x), ~u_input.a)));
    var var_0 = arg_1.c.c;
    var var_1 = Struct_3(vec4<i32>((firstTrailingBit(arg_0.x) >> (67565u % 32u)) >> (4294967295u % 32u), -2147483647i, -arg_1.a.x, arg_1.a.x), Struct_1(var_0.b.x, select(!arg_1.c.a.b, !select(vec4<bool>(true, false, true, arg_1.d), var_0.b, false), var_0.b), max(~_wgslsmith_mod_u32(73181u, 1u), 1u)), Struct_2(Struct_1(false, select(var_0.b, var_0.b, arg_1.c.a.b), _wgslsmith_div_u32(22204u, u_input.c)), -arg_1.c.b, arg_1.c.a), true);
    let var_2 = arg_1;
    let var_3 = _wgslsmith_clamp_u32(min(52694u, 4294967295u), ~4294967295u, 1u);
    return arg_1;
}

fn func_5(arg_0: f32, arg_1: Struct_3, arg_2: vec4<u32>, arg_3: f32) -> bool {
    let var_0 = func_2(vec2<i32>(min(-1i, 1i), arg_1.a.x), Struct_3(select(func_2(-vec2<i32>(arg_1.a.x, arg_1.a.x), func_2(vec2<i32>(arg_1.c.b.x, -9583i), Struct_3(arg_1.a, Struct_1(true, arg_1.c.a.b, 32642u), arg_1.c, arg_1.b.a), u_input.d.wzx), u_input.d.xwx >> (global0.zyy % vec3<u32>(32u))).a, reverseBits(vec4<i32>(u_input.b.x, u_input.b.x, arg_1.a.x, 1i)) | -arg_1.a, select(vec4<bool>(arg_1.b.a, arg_1.b.a, arg_1.c.c.b.x, true), vec4<bool>(false, arg_1.d, true, false), false)), func_2(-u_input.b.zy, func_2(min(u_input.b.yz, vec2<i32>(10073i, 28053i)), arg_1, global0.zzz), select(reverseBits(vec3<u32>(arg_2.x, 4294967295u, 0u)), vec3<u32>(global0.x, arg_2.x, 4294967295u), select(vec3<bool>(true, arg_1.b.a, true), vec3<bool>(true, true, false), arg_1.b.b.yxz))).c.a, func_2(-(~u_input.b.xx), Struct_3(~arg_1.a, func_2(vec2<i32>(u_input.b.x, 1i), arg_1, vec3<u32>(u_input.c, global0.x, u_input.d.x)).b, Struct_2(arg_1.b, vec2<i32>(arg_1.a.x, arg_1.a.x), Struct_1(arg_1.b.a, arg_1.c.a.b, 24034u)), arg_1.b.b.x), countOneBits(u_input.a)).c, select(true, !select(true, true, arg_1.d), arg_1.c.a.b.x && true)), arg_2.yxz).c;
    let var_1 = Struct_1(true, arg_1.c.a.b, ~u_input.a.x);
    global0 = firstTrailingBit(vec4<u32>(var_1.c, ~(1u >> (u_input.d.x % 32u)), abs(56717u ^ global0.x), 1u) >> (~vec4<u32>(~arg_1.b.c, reverseBits(arg_2.x), ~u_input.a.x, arg_1.b.c) % vec4<u32>(32u)));
    var var_2 = arg_3;
    var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(sign(arg_0))))))));
    return true;
}

fn func_6(arg_0: bool, arg_1: vec3<bool>, arg_2: f32) -> Struct_1 {
    let var_0 = func_2(~vec2<i32>(32987i, min(max(u_input.b.x, u_input.b.x), u_input.b.x)), func_2(_wgslsmith_add_vec2_i32(abs(countOneBits(u_input.b.zx)), vec2<i32>(u_input.b.x, u_input.b.x)), Struct_3(vec4<i32>(u_input.b.x, -u_input.b.x, 23354i, _wgslsmith_div_i32(u_input.b.x, -2147483647i)), Struct_1(true, vec4<bool>(true, arg_0, false, arg_1.x), global0.x), func_2(u_input.b.xx, func_2(u_input.b.zy, Struct_3(vec4<i32>(u_input.b.x, -1i, u_input.b.x, 23813i), Struct_1(true, vec4<bool>(arg_0, true, true, false), 10166u), Struct_2(Struct_1(arg_1.x, vec4<bool>(arg_0, false, false, arg_0), 22455u), vec2<i32>(u_input.b.x, 26966i), Struct_1(false, vec4<bool>(false, false, arg_1.x, true), 1u)), true), vec3<u32>(u_input.a.x, u_input.a.x, 0u)), vec3<u32>(0u, u_input.a.x, global0.x)).c, arg_1.x), vec3<u32>(4294967295u, 0u, ~_wgslsmith_add_u32(global0.x, u_input.a.x))), ~global0.wzw).c.a.b;
    var var_1 = firstTrailingBit(min(_wgslsmith_mult_u32(1247u, 1u), 1u));
    let var_2 = func_2(firstLeadingBit(vec2<i32>(-reverseBits(-44987i), ~(-54916i))), Struct_3(vec4<i32>(min(u_input.b.x, -2147483647i), u_input.b.x & u_input.b.x, _wgslsmith_div_i32(-1i, -16949i), -30437i) & _wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(u_input.b.x, 71819i, 39269i, 34280i)), vec4<i32>(-21115i, 0i, 18863i, -1i)), Struct_1(false, vec4<bool>(true, true, !arg_1.x, select(var_0.x, true, arg_1.x)), global0.x), Struct_2(func_2(u_input.b.yx >> (vec2<u32>(0u, global0.x) % vec2<u32>(32u)), func_2(vec2<i32>(u_input.b.x, u_input.b.x), Struct_3(vec4<i32>(1i, -1i, u_input.b.x, u_input.b.x), Struct_1(arg_1.x, vec4<bool>(arg_0, false, arg_1.x, true), 58035u), Struct_2(Struct_1(var_0.x, var_0, global0.x), u_input.b.xz, Struct_1(arg_1.x, var_0, global0.x)), var_0.x), u_input.d.xzw), ~vec3<u32>(u_input.d.x, 4294967295u, 1u)).b, vec2<i32>(u_input.b.x, _wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, u_input.b.x)), func_2(abs(u_input.b.xz), Struct_3(vec4<i32>(14083i, -1i, 0i, -2147483647i), Struct_1(false, var_0, 0u), Struct_2(Struct_1(arg_0, vec4<bool>(true, true, false, arg_0), 0u), u_input.b.yz, Struct_1(arg_1.x, var_0, 6705u)), false), vec3<u32>(28447u, 4044u, 4294967295u)).b), any(!func_2(u_input.b.yx, Struct_3(vec4<i32>(u_input.b.x, 0i, 1i, u_input.b.x), Struct_1(true, var_0, 32388u), Struct_2(Struct_1(var_0.x, var_0, u_input.c), u_input.b.zz, Struct_1(true, vec4<bool>(false, arg_1.x, arg_1.x, true), 1u)), arg_1.x), global0.xwx).c.c.b)), global0.wxy).c;
    var var_3 = var_2;
    let var_4 = var_3.b.x;
    return Struct_1(-_wgslsmith_add_i32(var_3.b.x, u_input.b.x) >= -u_input.b.x, vec4<bool>(arg_0, all(var_3.c.b.zzx), true, all(vec4<bool>(!var_0.x, false, var_2.c.a, any(arg_1)))), global0.x);
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = vec3<bool>(true, true, true);
    var var_1 = u_input.b.x;
    let var_2 = _wgslsmith_div_f32(-1000f, arg_0);
    var var_3 = Struct_3(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 1i), func_6(func_5(var_2, func_2(u_input.b.xy, Struct_3(vec4<i32>(2147483647i, 2147483647i, u_input.b.x, u_input.b.x), Struct_1(false, vec4<bool>(true, false, var_0.x, true), u_input.a.x), Struct_2(Struct_1(true, vec4<bool>(false, true, true, var_0.x), 4294967295u), u_input.b.xz, Struct_1(var_0.x, vec4<bool>(var_0.x, var_0.x, false, true), u_input.d.x)), var_0.x), u_input.a), max(vec4<u32>(0u, 33979u, global0.x, 27673u), u_input.d), 1493f) != var_0.x, vec3<bool>(false, all(!var_0.xx), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))), Struct_2(func_6(var_0.x, var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(832f - var_2) + _wgslsmith_div_f32(var_2, var_2))), countOneBits(u_input.b.xz), func_2(-(~vec2<i32>(-29715i, u_input.b.x)), Struct_3(~vec4<i32>(u_input.b.x, u_input.b.x, 1i, u_input.b.x), func_2(u_input.b.zz, Struct_3(vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, u_input.b.x), Struct_1(true, vec4<bool>(true, false, var_0.x, var_0.x), 6074u), Struct_2(Struct_1(true, vec4<bool>(false, var_0.x, false, false), 4822u), vec2<i32>(-51952i, u_input.b.x), Struct_1(var_0.x, vec4<bool>(false, var_0.x, var_0.x, var_0.x), u_input.c)), true), u_input.d.wzx).c.c, func_2(vec2<i32>(32134i, u_input.b.x), Struct_3(vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, 39624i), Struct_1(var_0.x, vec4<bool>(true, false, true, false), u_input.c), Struct_2(Struct_1(var_0.x, vec4<bool>(var_0.x, var_0.x, true, false), 0u), vec2<i32>(u_input.b.x, u_input.b.x), Struct_1(true, vec4<bool>(false, false, true, false), global0.x)), var_0.x), u_input.d.wzz).c, var_0.x), select(vec3<u32>(4294967295u, global0.x, 48234u), u_input.a << (vec3<u32>(u_input.a.x, 4294967295u, 50132u) % vec3<u32>(32u)), !var_0)).c.a), true);
    var_3 = func_2(vec2<i32>(u_input.b.x, _wgslsmith_sub_i32(1i, u_input.b.x)), func_2(-_wgslsmith_sub_vec2_i32(-u_input.b.zx, -vec2<i32>(-88095i, u_input.b.x)), func_2(firstLeadingBit(u_input.b.xy), Struct_3(vec4<i32>(u_input.b.x, var_3.c.b.x, var_3.a.x, 0i) | vec4<i32>(-51127i, u_input.b.x, 10037i, var_3.c.b.x), Struct_1(true, vec4<bool>(var_0.x, true, false, var_0.x), 49711u), Struct_2(Struct_1(false, vec4<bool>(var_3.b.a, var_0.x, var_0.x, false), 53462u), u_input.b.xz, var_3.c.a), false), u_input.a), vec3<u32>(20102u, global0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, 1u), ~vec2<u32>(global0.x, global0.x)))), ~global0.xyx);
    return func_2(vec2<i32>(var_3.c.b.x, u_input.b.x), func_2(firstLeadingBit(u_input.b.yz), Struct_3(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(var_3.a, var_3.a), vec4<i32>(23486i, 2147483647i, 6820i, var_3.c.b.x)), func_6(true, !var_0, _wgslsmith_f_op_f32(ceil(872f))), Struct_2(Struct_1(true, vec4<bool>(false, var_0.x, var_3.d, var_3.b.b.x), var_3.b.c), ~u_input.b.zy, func_6(false, var_3.b.b.yzw, 188f)), true), _wgslsmith_add_vec3_u32(global0.zyx, vec3<u32>(4294967295u, 0u, global0.x) & firstTrailingBit(vec3<u32>(15149u, u_input.c, var_3.c.a.c)))), u_input.a).b;
}

fn func_7(arg_0: Struct_1) -> StorageBuffer {
    var var_0 = 2147483647i;
    var_0 = 2147483647i;
    let var_1 = _wgslsmith_dot_vec2_i32(~abs(~(vec2<i32>(-677i, u_input.b.x) ^ u_input.b.yy)), vec2<i32>(1i, u_input.b.x) << (global0.yx % vec2<u32>(32u)));
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f * -2000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-836f, _wgslsmith_f_op_f32(trunc(-746f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-913f - 394f), _wgslsmith_f_op_f32(step(1896f, -1206f))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1543f + -1352f), _wgslsmith_div_f32(1845f, -1672f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-522f, -1089f), vec2<f32>(-555f, -1781f))) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(2034f, -453f))))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(1076f, -452f), vec2<f32>(-1717f, 467f)), vec2<f32>(_wgslsmith_f_op_f32(1345f * -293f), _wgslsmith_f_op_f32(-729f + 599f)), !arg_0.b.zz))));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(576f, var_2.x))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-555f, var_2.x))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(403f, -1000f)), vec2<f32>(-230f, 594f), arg_0.b.x))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, 656f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-497f, -1156f) - vec2<f32>(338f, 103f))))));
    return StorageBuffer(var_1, _wgslsmith_mult_vec3_i32(u_input.b, u_input.b), var_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(reverseBits(u_input.d), u_input.d), ~(vec4<u32>(u_input.a.x, 1u, 52010u, global0.x) ^ vec4<u32>(12615u, 4294967295u, u_input.d.x, 17669u)) & u_input.d);
    global0 = reverseBits(u_input.d);
    let var_0 = 1f;
    global0 = u_input.d;
    var var_1 = global0.x;
    let var_2 = countOneBits(-vec2<i32>(52287i, u_input.b.x)) | countOneBits(vec2<i32>(~(-u_input.b.x), -908i));
    let var_3 = ~u_input.b.x;
    var_1 = min(1u, _wgslsmith_mult_u32(u_input.a.x, 98116u));
    let var_4 = global0.x;
    let x = u_input.a;
    s_output = func_7(func_1(var_0));
}

