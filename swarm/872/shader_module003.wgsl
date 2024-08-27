struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: i32,
    d: bool,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: bool = true;

var<private> global2: Struct_1;

var<private> global3: u32 = 37327u;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<f32>) -> vec2<u32> {
    var var_0 = Struct_1(global2.b, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global2.e.x + arg_0.x), _wgslsmith_f_op_f32(global0.x + -109f), _wgslsmith_f_op_f32(arg_0.x * -1106f), _wgslsmith_f_op_f32(trunc(-896f)))))), global2.c, true, global2.a.wxx);
    let var_1 = !global2.d;
    let var_2 = select(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(var_0.d, var_0.d), vec2<bool>(var_1, true)), false), select(!vec2<bool>(var_0.d, true), vec2<bool>(global2.d, true), select(vec2<bool>(true, true), select(vec2<bool>(var_0.d, false), vec2<bool>(var_0.d, global2.d), var_1), true)), select(vec2<bool>(all(vec3<bool>(false, true, false)), !var_0.d), vec2<bool>(true, u_input.b.x >= u_input.a), vec2<bool>(all(vec2<bool>(var_1, global2.d)), global2.d))), vec2<bool>(var_1, !(!var_1)), false);
    let var_3 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-583f)))), var_0.e.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(abs(arg_0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.b.x, 444f, arg_0.x, -734f), global2.a)))))), var_0.c, true, _wgslsmith_f_op_vec3_f32(-var_0.a.xwx));
    global2 = var_3;
    return ~firstLeadingBit(~(~vec2<u32>(4294967295u, 54957u)));
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: f32, arg_3: vec4<bool>) -> bool {
    var var_0 = _wgslsmith_div_vec2_u32(vec2<u32>(9125u, 4294967295u), ~(~func_3(global2.b.yz) & u_input.b));
    let var_1 = Struct_2(max(~_wgslsmith_mult_vec3_u32(vec3<u32>(5436u, arg_0, var_0.x) >> (vec3<u32>(arg_1, var_0.x, 1u) % vec3<u32>(32u)), max(vec3<u32>(arg_1, 4294967295u, u_input.a), vec3<u32>(0u, 1u, u_input.b.x))), ~(vec3<u32>(arg_1, 1u, u_input.a) >> (firstTrailingBit(vec3<u32>(58788u, var_0.x, 4294967295u)) % vec3<u32>(32u)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.e.x, _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(trunc(global2.e.x))), _wgslsmith_f_op_f32(f32(-1f) * -429f))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2.a - global2.b))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(global2.a)))), global2.c & countOneBits(~global2.c), true, global2.b.yzx));
    var var_2 = var_1.c;
    var var_3 = _wgslsmith_f_op_f32(-464f - _wgslsmith_f_op_f32(-1069f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(arg_2, -1946f, var_1.c.d)), _wgslsmith_div_f32(global0.x, 1020f))) * -443f)));
    let var_4 = var_1.c;
    return var_1.c.d;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: bool) -> Struct_2 {
    var var_0 = true;
    var_0 = !global2.d;
    let var_1 = Struct_1(global2.a, vec4<f32>(251f, _wgslsmith_f_op_f32(f32(-1f) * -401f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1217f))), global2.e.x), 1i, all(select(select(!vec3<bool>(arg_2, true, false), vec3<bool>(true, true, true), !vec3<bool>(arg_1.d, false, arg_2)), vec3<bool>(global2.d, false, select(false, arg_1.d, false)), global2.d)), _wgslsmith_f_op_vec3_f32(arg_1.e - global2.e));
    var_0 = arg_1.d && true;
    let var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(596f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.b.x, 136f) - _wgslsmith_f_op_f32(ceil(-1935f))), _wgslsmith_f_op_f32(ceil(arg_0.x)))), arg_1.a.xzz));
    return Struct_2(vec3<u32>(u_input.b.x, ~(~4294967295u), 67826u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b.x, arg_0.x, -125f)), vec3<f32>(arg_1.b.x, arg_1.a.x, var_2.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(arg_1.e, vec3<f32>(136f, 848f, -371f))))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-713f, global2.e.x, -1230f) + var_1.a.xxy), vec3<f32>(-666f, var_2.x, _wgslsmith_f_op_f32(trunc(-541f))), vec3<bool>(!arg_1.d, global2.c <= global2.c, true)))), var_1);
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_2) -> Struct_1 {
    global2 = func_4(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), arg_1.c.b.x), Struct_1(vec4<f32>(global0.x, 1085f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(global2.e.x)), 1448f)), -756f), _wgslsmith_f_op_vec4_f32(arg_1.c.a + global2.b), ~global2.c, func_2(21142u, ~(48071u << (u_input.b.x % 32u)), _wgslsmith_f_op_f32(global2.e.x * 1825f), select(select(vec4<bool>(arg_1.c.d, arg_1.c.d, arg_1.c.d, global2.d), vec4<bool>(true, true, global2.d, true), vec4<bool>(arg_1.c.d, true, true, global2.d)), vec4<bool>(arg_1.c.d, false, arg_1.c.d, arg_1.c.d), !vec4<bool>(arg_1.c.d, true, arg_1.c.d, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(1186f, arg_0.x, 336f) * global2.a.zzx))))), arg_1.c.a.x == _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1698f), _wgslsmith_f_op_f32(f32(-1f) * -1014f))).c;
    var var_0 = !select(!vec2<bool>(func_2(u_input.a, u_input.a, -564f, vec4<bool>(global2.d, arg_1.c.d, arg_1.c.d, global2.d)), !arg_1.c.d), vec2<bool>(true & global2.d, arg_1.b.x > 530f), arg_1.c.d);
    let var_1 = Struct_2(abs(min(firstLeadingBit(vec3<u32>(4294967295u, arg_1.a.x, arg_1.a.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, 39871u, arg_1.a.x), vec3<u32>(arg_1.a.x, u_input.a, 28255u)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_1.c.a.zzw, global2.e, select(!vec3<bool>(global2.d, false, false), select(vec3<bool>(false, true, true), vec3<bool>(global2.d, arg_1.c.d, global2.d), global2.d), !vec3<bool>(arg_1.c.d, arg_1.c.d, arg_1.c.d))))), func_4(vec2<f32>(_wgslsmith_f_op_f32(floor(-186f)), _wgslsmith_div_f32(-1691f, _wgslsmith_f_op_f32(-1000f * arg_0.x))), arg_1.c, any(select(!vec2<bool>(arg_1.c.d, true), vec2<bool>(true, false), vec2<bool>(var_0.x, var_0.x)))).c);
    var var_2 = _wgslsmith_f_op_vec4_f32(-global2.b);
    global1 = true;
    return var_1.c;
}

fn func_1(arg_0: f32) -> Struct_2 {
    global0 = global2.b.zx;
    let var_0 = Struct_2((vec3<u32>(0u, ~65022u, _wgslsmith_mod_u32(5801u, 34679u)) << (~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 0u, 1u), vec3<u32>(u_input.a, 1u, u_input.b.x)) % vec3<u32>(32u))) | vec3<u32>(1u, 3951u, 1u), global2.b.xzy, func_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2164f, 905f)), func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1208f, global2.a.x)))), Struct_1(vec4<f32>(1018f, -1354f, global0.x, 3437f), global2.a, global2.c, global2.d, vec3<f32>(global0.x, global0.x, global2.b.x)), select(true, global2.d, func_2(u_input.b.x, u_input.a, global2.a.x, vec4<bool>(false, false, global2.d, false))))));
    let var_1 = func_4(_wgslsmith_f_op_vec2_f32(func_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1976f, -991f)) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(227f, var_0.c.a.x)))), Struct_2(vec3<u32>(4294967295u, 1065u, 18952u), global2.a.zww, func_5(vec2<f32>(global0.x, -2242f), var_0))).e.xx * _wgslsmith_f_op_vec2_f32(-var_0.c.e.xy)), var_0.c, false).c;
    let var_2 = func_4(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.e.x, var_1.e.x) - var_0.b.zy))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global2.a.yw, global2.b.zz) + vec2<f32>(985f, -1000f))), _wgslsmith_f_op_vec2_f32(-var_1.a.xy))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_1.b, vec4<f32>(global0.x, global2.e.x, global2.a.x, global2.a.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(global2.a * global2.a))) - var_1.b), select(var_0.c.c, 1i, all(select(vec2<bool>(var_1.d, var_0.c.d), vec2<bool>(var_1.d, var_1.d), var_1.d))), reverseBits(1i) >= ~max(var_0.c.c, 21531i), vec3<f32>(-409f, var_1.e.x, global2.b.x)), select(true, global2.d, var_1.d));
    let var_3 = min(min(select(var_2.a >> (vec3<u32>(0u, var_0.a.x, 4294967295u) % vec3<u32>(32u)), reverseBits(max(var_2.a, vec3<u32>(1u, u_input.a, 33501u))), vec3<bool>(true, false, global2.d)), vec3<u32>(_wgslsmith_mod_u32(max(var_2.a.x, 4294967295u), 1u), ~min(20740u, u_input.a), _wgslsmith_sub_u32(func_3(vec2<f32>(1347f, -2554f)).x, ~0u))), ~var_2.a);
    return Struct_2(vec3<u32>(reverseBits(~var_2.a.x), u_input.b.x, _wgslsmith_sub_u32(1u, _wgslsmith_sub_u32(u_input.b.x >> (var_0.a.x % 32u), var_0.a.x))), var_1.a.wxx, var_1);
}

fn func_6(arg_0: Struct_2) -> Struct_2 {
    let var_0 = 686f;
    let var_1 = !select(!(!vec3<bool>(global2.d, arg_0.c.d, true)), !(!vec3<bool>(arg_0.c.d, arg_0.c.d, global2.d)), vec3<bool>(false, func_5(vec2<f32>(1030f, global0.x), Struct_2(arg_0.a, vec3<f32>(global0.x, 1034f, -667f), arg_0.c)).d | global2.d, false | arg_0.c.d));
    global3 = _wgslsmith_clamp_u32(_wgslsmith_mult_u32(~(~(~15566u)), func_1(global2.a.x).a.x ^ ~arg_0.a.x), _wgslsmith_add_u32(u_input.a, 1u), arg_0.a.x);
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_0.c.b.xz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(func_4(vec2<f32>(var_0, 1683f), Struct_1(arg_0.c.b, global2.a, 1i, global2.d, global2.a.yxz), true).b.zz))), all(select(vec2<bool>(var_1.x, global2.d), select(var_1.xx, vec2<bool>(true, false), true), select(vec2<bool>(arg_0.c.d, true), var_1.yz, global2.d))))), _wgslsmith_f_op_vec2_f32(floor(func_1(919f).b.zz)));
    var var_3 = func_3(func_1(651f).b.yz).x;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.b.ww - global2.b.xx) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(973f, -1000f))))));
    var var_0 = -_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global2.c, 2147483647i, 53238i, global2.c) | _wgslsmith_clamp_vec4_i32(vec4<i32>(global2.c, 12780i, 1i, global2.c), vec4<i32>(0i, global2.c, global2.c, global2.c), vec4<i32>(1i, global2.c, global2.c, global2.c)), -vec4<i32>(global2.c, 28617i, 1i, global2.c)), _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, global2.c, -54891i, -33552i), vec4<i32>(7248i, 1i, -14672i, -1i)) << ((vec4<u32>(1u, 27151u, u_input.a, u_input.b.x) & vec4<u32>(u_input.b.x, 1u, 59956u, 0u)) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, global2.c, 0i, -2147483647i) >> (vec4<u32>(u_input.b.x, 48875u, 4294967295u, u_input.b.x) % vec4<u32>(32u)), reverseBits(vec4<i32>(-2147483647i, global2.c, -27785i, 2147483647i)))));
    var var_1 = _wgslsmith_dot_vec3_i32(firstLeadingBit(reverseBits(_wgslsmith_mult_vec3_i32(reverseBits(vec3<i32>(global2.c, global2.c, global2.c)), ~vec3<i32>(global2.c, global2.c, -2147483647i)))), _wgslsmith_add_vec3_i32(vec3<i32>(40110i, -1i, countOneBits(firstTrailingBit(global2.c))), _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_div_i32(global2.c, global2.c), global2.c, 1i), ~vec3<i32>(-24945i, global2.c, global2.c) ^ vec3<i32>(-2147483647i, 37290i, 70018i), ~(-vec3<i32>(global2.c, global2.c, global2.c)))));
    let var_2 = func_6(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) - global0.x)));
    global3 = var_2.a.x;
    let var_3 = false;
    var var_4 = func_6(var_2);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a.x);
}

