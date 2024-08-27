struct Struct_1 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(683f, -284f, 919f, -1007f), false);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<u32>) -> u32 {
    let var_0 = vec2<bool>(!global0.b, global0.b);
    global0 = Struct_1(global0.a, true);
    let var_1 = Struct_2(u_input.c.yz, Struct_1(global0.a, !(!(false || var_0.x))));
    let var_2 = var_1.b;
    let var_3 = Struct_3(~u_input.b.x, 1000f);
    return 52532u;
}

fn func_2() -> vec2<i32> {
    var var_0 = -204f;
    let var_1 = Struct_3(~select(~53127u & (u_input.b.x ^ 0u), u_input.b.x, 96289u > u_input.b.x), 205f);
    var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.b * 1000f)));
    var_0 = -822f;
    var var_2 = vec3<u32>(u_input.b.x, select(func_3(~(vec4<u32>(0u, u_input.b.x, var_1.a, 51644u) & vec4<u32>(var_1.a, 0u, var_1.a, 36048u))), ~1u, true == any(select(vec3<bool>(global0.b, global0.b, true), vec3<bool>(true, global0.b, global0.b), vec3<bool>(global0.b, global0.b, global0.b)))), _wgslsmith_dot_vec2_u32(~(~u_input.b), countOneBits(vec2<u32>(~39381u, var_1.a))));
    return _wgslsmith_add_vec2_i32(-vec2<i32>(_wgslsmith_add_i32(~u_input.c.x, select(9466i, 12232i, true)), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(u_input.c.xw, vec2<i32>(u_input.c.x, u_input.c.x)), 60382i)), ~(~_wgslsmith_add_vec2_i32(-vec2<i32>(u_input.a, u_input.a), -u_input.c.wz)));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: vec4<bool>) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(722f, _wgslsmith_f_op_f32(f32(-1f) * -837f), _wgslsmith_f_op_f32(ceil(global0.a.x)), _wgslsmith_f_op_f32(2002f - -372f)) * global0.a);
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -916f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.a.x), -1000f)), _wgslsmith_div_f32(var_0.x, -1000f), var_0.x))), !(664f == _wgslsmith_f_op_f32(sign(158f))));
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -600f)), var_0.x, 2266f, var_0.x) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1386f), -1082f, global0.a.x)))), any(!arg_2));
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(round(var_0)), global0.b);
    let var_1 = Struct_2(~(select(func_2(), vec2<i32>(u_input.c.x, u_input.c.x) ^ arg_1, select(vec2<bool>(true, arg_2.x), vec2<bool>(global0.b, false), vec2<bool>(global0.b, arg_2.x))) & u_input.c.zx), Struct_1(var_0, abs(_wgslsmith_sub_u32(u_input.b.x, 29695u)) != arg_0.x));
    return -(~(-vec4<i32>(47109i, -1384i, var_1.a.x, 0i) & ~min(vec4<i32>(-28173i, -24585i, 60764i, var_1.a.x), u_input.c)));
}

fn func_5(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: f32, arg_3: bool) -> Struct_3 {
    var var_0 = _wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.b.x ^ u_input.b.x, ~(15876u ^ u_input.b.x), u_input.b.x), select(_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.b.x, 0u, 16519u), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), _wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.b.x, u_input.b.x, 0u), vec3<u32>(4294967295u, 17663u, u_input.b.x) >> (vec3<u32>(1u, u_input.b.x, u_input.b.x) % vec3<u32>(32u))), ~firstLeadingBit(vec3<u32>(u_input.b.x, 84022u, 4294967295u))), select(vec3<u32>(_wgslsmith_add_u32(0u, 1u), u_input.b.x, ~u_input.b.x), vec3<u32>(_wgslsmith_add_u32(260u, u_input.b.x), _wgslsmith_sub_u32(u_input.b.x, 17704u), 1u), !select(vec3<bool>(global0.b, false, false), vec3<bool>(global0.b, arg_3, arg_3), vec3<bool>(false, arg_3, global0.b))), !select(!vec3<bool>(true, arg_3, global0.b), !vec3<bool>(false, global0.b, global0.b), arg_3)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x - arg_2)), global0.a.x, global0.a.x, arg_0.x) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, 394f, arg_2, arg_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, global0.a.x, global0.a.x, arg_2) * arg_0), !vec4<bool>(true, false, global0.b, global0.b))))), false);
    var var_2 = Struct_3(~u_input.b.x, _wgslsmith_f_op_f32(abs(-1704f)));
    return Struct_3(85805u >> (u_input.b.x % 32u), 1172f);
}

fn func_1(arg_0: bool, arg_1: bool) -> Struct_1 {
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(-global0.a), all(select(vec2<bool>(!arg_0, arg_0), !(!vec2<bool>(arg_1, global0.b)), arg_1)));
    var var_0 = func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1929f, global0.a.x, 874f, global0.a.x))), _wgslsmith_div_vec4_f32(vec4<f32>(838f, 787f, 1000f, global0.a.x), vec4<f32>(global0.a.x, global0.a.x, global0.a.x, global0.a.x))) * global0.a), ~_wgslsmith_clamp_vec4_i32(select(u_input.c, _wgslsmith_div_vec4_i32(u_input.c, u_input.c), true), func_4(~vec2<u32>(1u, u_input.b.x), func_2(), vec4<bool>(arg_0, false, false, true)), ~_wgslsmith_div_vec4_i32(vec4<i32>(85495i, u_input.c.x, 3125i, 0i), u_input.c)), _wgslsmith_f_op_f32(abs(global0.a.x)), arg_1 && false);
    let var_1 = vec2<i32>(u_input.c.x, 0i ^ ~(u_input.a | u_input.c.x)) | reverseBits(u_input.c.yy);
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -575f);
    var var_3 = true;
    return Struct_1(_wgslsmith_f_op_vec4_f32(min(global0.a, vec4<f32>(var_2, -1093f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 - 1662f)), -294f))), arg_0);
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    let var_0 = u_input.a;
    let var_1 = u_input.c.wwx;
    let var_2 = _wgslsmith_f_op_f32(-419f + _wgslsmith_div_f32(global0.a.x, arg_0.a.x));
    let var_3 = 27659u;
    var var_4 = Struct_2(-abs(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, u_input.c.x), vec2<i32>(var_1.x, var_1.x)) >> (reverseBits(u_input.b) % vec2<u32>(32u))), func_1(false, !all(select(vec2<bool>(global0.b, global0.b), vec2<bool>(true, global0.b), vec2<bool>(false, true)))));
    return func_1(true, false);
}

fn func_7(arg_0: Struct_1) -> vec3<bool> {
    let var_0 = Struct_3(_wgslsmith_div_u32(1u, firstTrailingBit(~78076u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)))) - _wgslsmith_f_op_f32(abs(global0.a.x))));
    let var_1 = var_0.a;
    var var_2 = vec3<u32>(var_1, 1u, (min(var_1, 1u) & ~66236u) << (var_0.a % 32u));
    let var_3 = Struct_2(vec2<i32>(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(u_input.a, u_input.c.x, u_input.a)), ~_wgslsmith_add_vec3_i32(u_input.c.ywy, vec3<i32>(2147483647i, -2147483647i, -3071i))), ~u_input.a), func_1(any(vec4<bool>(arg_0.b, false, true, true)) != false, arg_0.a.x > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.a.x)))));
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x * -203f)), -667f);
    return vec3<bool>(global0.b, all(!vec4<bool>(var_3.b.b && var_3.b.b, !arg_0.b, global0.b, func_6(arg_0).b)), true);
}

fn func_8(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: vec4<f32>) -> Struct_1 {
    let var_0 = arg_2;
    let var_1 = arg_3;
    var var_2 = min(countOneBits(reverseBits(0u)), 50443u);
    var_2 = _wgslsmith_mult_u32(_wgslsmith_div_u32(~(~u_input.b.x), ~u_input.b.x), firstLeadingBit(firstLeadingBit(u_input.b.x)));
    var_2 = _wgslsmith_clamp_u32(func_5(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, var_1.x, -1373f, -1952f)), vec4<f32>(-893f, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-var_1.x), var_0.b.a.x)), -(~u_input.c >> (vec4<u32>(0u, 5584u, u_input.b.x, u_input.b.x) % vec4<u32>(32u))), var_0.b.a.x, var_0.b.b).a, countOneBits(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 10790u, u_input.b.x), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<u32>(16978u, u_input.b.x, u_input.b.x))), func_5(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(192f, arg_3.x, -429f, -470f), vec4<f32>(var_1.x, global0.a.x, 989f, 201f), true)), -vec4<i32>(u_input.c.x, arg_1.x, var_0.a.x, u_input.a), var_1.x, func_1(true, false).b).a, ~_wgslsmith_sub_u32(u_input.b.x, 4294967295u))), _wgslsmith_clamp_u32(~u_input.b.x, 8616u, ~firstLeadingBit(~u_input.b.x)));
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(var_1)) + _wgslsmith_f_op_vec4_f32(select(var_1, var_0.b.a, vec4<bool>(false, false, false, global0.b)))))), countOneBits(~(~u_input.b.x)) == max(u_input.b.x, ~(~u_input.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -2474f;
    var var_1 = func_8(select(vec3<bool>(any(select(vec3<bool>(global0.b, true, false), vec3<bool>(global0.b, false, true), vec3<bool>(global0.b, global0.b, global0.b))), !all(vec3<bool>(false, false, false)), global0.b), select(vec3<bool>(false, u_input.b.x == 1u, global0.b), vec3<bool>(global0.b, u_input.b.x != u_input.b.x, false), true), func_7(func_6(func_1(false, true)))), u_input.c.wy, Struct_2(vec2<i32>(11944i, -22317i), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(step(global0.a.x, 764f)), -1199f, -959f, _wgslsmith_f_op_f32(f32(-1f) * -1452f)), select(global0.b, !global0.b, func_6(Struct_1(global0.a, false)).b))), _wgslsmith_f_op_vec4_f32(sign(global0.a)));
    var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_1.a.x, var_0, 1f))), any(!(!select(vec4<bool>(false, var_1.b, var_1.b, global0.b), vec4<bool>(var_1.b, true, true, false), vec4<bool>(true, global0.b, var_1.b, global0.b)))));
    let var_2 = Struct_2(_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i >> (firstTrailingBit(u_input.b.x) % 32u), -abs(1i)), u_input.c.wy, select(reverseBits(max(u_input.c.zx, vec2<i32>(1i, u_input.c.x))), u_input.c.zz, false)), func_8(vec3<bool>(var_1.b, true, false & (u_input.b.x != u_input.b.x)), _wgslsmith_mult_vec2_i32(-vec2<i32>(-34259i, u_input.a), -(~u_input.c.xw)), Struct_2(firstLeadingBit(vec2<i32>(15847i, u_input.c.x)), func_8(!vec3<bool>(var_1.b, true, global0.b), ~u_input.c.yw, Struct_2(vec2<i32>(u_input.a, -20569i), Struct_1(var_1.a, false)), var_1.a)), _wgslsmith_f_op_vec4_f32(-var_1.a)));
    let var_3 = _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_div_u32(func_3(~vec4<u32>(u_input.b.x, u_input.b.x, 70113u, u_input.b.x)), 24758u), u_input.b.x), vec2<u32>((u_input.b.x | 4294967295u) << (~1u % 32u), u_input.b.x));
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-112f, 1f, 1738f, -693f)), var_1.b);
    var var_4 = 1295u;
    var var_5 = func_5(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1175f, var_2.b.a.x, var_2.b.a.x, global0.a.x) + global0.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.a)))), u_input.c, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-526f)))), all(!select(vec2<bool>(var_1.b, var_2.b.b), vec2<bool>(true, global0.b), true)) == any(vec3<bool>(var_1.b, all(vec4<bool>(true, false, var_1.b, var_2.b.b)), var_1.b)));
    global0 = func_8(vec3<bool>(false, global0.b, true), vec2<i32>(u_input.c.x, var_2.a.x), var_2, func_6(func_6(func_8(select(vec3<bool>(global0.b, var_2.b.b, false), vec3<bool>(false, var_1.b, var_1.b), vec3<bool>(true, var_2.b.b, var_1.b)), _wgslsmith_sub_vec2_i32(u_input.c.wz, var_2.a), var_2, _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -932f, -2110f, var_5.b) + global0.a)))).a);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(2885i, ~(-_wgslsmith_div_i32(u_input.a, var_2.a.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_2.b.a.wy))))) + func_8(!(!vec3<bool>(global0.b, var_2.b.b, global0.b)), vec2<i32>(_wgslsmith_div_i32(2147483647i, 35536i), u_input.c.x), var_2, vec4<f32>(-750f, var_5.b, global0.a.x, _wgslsmith_f_op_f32(var_2.b.a.x - 920f))).a.wy), var_1.a.ywy, _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x >> (u_input.b.x % 32u), u_input.b.x, ~4294967295u) | vec3<u32>(u_input.b.x, u_input.b.x, _wgslsmith_sub_u32(var_3.x, 0u)), reverseBits(firstTrailingBit(vec3<u32>(var_3.x, 13085u, 0u))) ^ select(reverseBits(vec3<u32>(0u, 19442u, u_input.b.x)), vec3<u32>(1u, 0u, 39235u) & vec3<u32>(var_5.a, 4294967295u, u_input.b.x), true)));
}

