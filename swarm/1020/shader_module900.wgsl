struct Struct_1 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: vec4<i32>,
    e: vec3<bool>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_3,
    c: Struct_1,
    d: Struct_3,
    e: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: vec4<i32>,
    c: vec4<i32>,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: vec2<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec4<u32>) -> u32 {
    global0 = Struct_4(-(~global0.e.c.b), Struct_3(!any(vec2<bool>(true, true)), _wgslsmith_mod_u32(global0.e.b, _wgslsmith_dot_vec2_u32(abs(arg_0.xx), arg_0.wz)), Struct_1(global0.e.c.a, reverseBits(countOneBits(global0.a))), global0.e.d, !(!(!global0.d.e))), global0.e.c, Struct_3(global0.e.a, _wgslsmith_div_u32(4294967295u, _wgslsmith_dot_vec3_u32(arg_0.xyx, arg_0.wwz)), Struct_1(1f, _wgslsmith_sub_vec2_i32(vec2<i32>(global0.c.b.x, 43236i), vec2<i32>(-2147483647i, 73938i))), ~_wgslsmith_sub_vec4_i32(~vec4<i32>(global0.a.x, global0.c.b.x, global0.e.d.x, global0.c.b.x), ~global0.e.d), !(!global0.e.e)), Struct_3(true, ~_wgslsmith_add_u32(40718u >> (global0.d.b % 32u), arg_0.x), global0.e.c, ~abs(~global0.e.d), !(!select(global0.e.e, global0.d.e, global0.b.e.x))));
    let var_0 = global0.d.b;
    var var_1 = Struct_3(true, global0.e.b, global0.e.c, ~vec4<i32>(_wgslsmith_dot_vec4_i32(global0.b.d, global0.d.d), _wgslsmith_dot_vec2_i32(~vec2<i32>(-2147483647i, 0i), global0.c.b), ~global0.a.x, 42187i), select(select(global0.b.e, select(select(global0.b.e, global0.b.e, global0.d.e.x), select(global0.e.e, global0.e.e, global0.e.e.x), select(vec3<bool>(global0.d.e.x, false, true), global0.b.e, global0.d.a)), -1000f != _wgslsmith_f_op_f32(max(global0.e.c.a, 552f))), select(!vec3<bool>(true, global0.e.a, true), !vec3<bool>(global0.d.a, true, global0.b.a), all(global0.e.e.xy)), true));
    var_1 = Struct_3(var_1.e.x, ~max(var_1.b, _wgslsmith_div_u32(~global0.d.b, 1u)), global0.d.c, vec4<i32>(-17388i, _wgslsmith_mod_i32(19751i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.c.b.x, -1i), vec2<i32>(-1i, 14877i))) ^ -_wgslsmith_add_i32(13599i, var_1.d.x), ~44207i, ~_wgslsmith_mult_i32(1i, 24160i)), var_1.e);
    global0 = Struct_4(_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(reverseBits(var_1.c.b), vec2<i32>(5564i, global0.e.c.b.x), vec2<i32>(var_1.d.x, -2147483647i)), min(vec2<i32>(12436i, global0.b.c.b.x), var_1.c.b) << (countOneBits(vec2<u32>(4294967295u, 1u)) % vec2<u32>(32u))), vec2<i32>(global0.b.d.x, countOneBits(0i))), global0.e, var_1.c, global0.e, global0.e);
    return firstLeadingBit(49401u);
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    var var_0 = vec2<bool>(!any(!vec2<bool>(global0.e.a, global0.d.e.x)), true);
    var_0 = vec2<bool>(global0.e.a, global0.b.a);
    var_0 = select(vec2<bool>(func_3(max(vec4<u32>(global0.d.b, u_input.a.x, 1u, global0.b.b), vec4<u32>(64614u, 0u, 4294967295u, 193u))) != ~4294967295u, true), vec2<bool>((!global0.e.a || (arg_0.x <= 193f)) && any(!vec4<bool>(true, true, global0.b.e.x, false)), all(select(vec4<bool>(global0.d.e.x, global0.d.e.x, false, var_0.x), !vec4<bool>(var_0.x, global0.e.a, global0.d.e.x, var_0.x), global0.b.a))), !vec2<bool>(global0.d.e.x, var_0.x & all(vec3<bool>(var_0.x, global0.b.e.x, true))));
    global0 = Struct_4(global0.c.b, Struct_3(!(!var_0.x), func_3(abs(abs(vec4<u32>(1u, 1u, 4294967295u, 14182u)))), global0.d.c, vec4<i32>(-min(global0.e.c.b.x, -2147483647i), 37029i, -9613i, -select(global0.e.d.x, 0i, global0.d.e.x)), select(vec3<bool>(true, all(vec4<bool>(true, true, global0.d.e.x, global0.b.e.x)), false), !(!global0.e.e), false)), global0.b.c, Struct_3(false, 57291u, global0.b.c, global0.b.d, vec3<bool>(global0.b.e.x, !(!var_0.x), false)), Struct_3(true, ~u_input.a.x, global0.d.c, vec4<i32>(-2147483647i, global0.b.c.b.x, -2147483647i, 1i), select(select(vec3<bool>(true, true, false), global0.b.e, !global0.b.e), global0.e.e, global0.b.e)));
    var var_1 = Struct_3(global0.b.e.x, _wgslsmith_sub_u32(0u, (firstTrailingBit(3420u) << (firstTrailingBit(13008u) % 32u)) & global0.b.b), Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * arg_0.x) - -346f))), vec2<i32>(~reverseBits(global0.c.b.x), _wgslsmith_dot_vec3_i32(global0.e.d.yzz | global0.d.d.yzx, vec3<i32>(-29065i, 29457i, -1i) >> (vec3<u32>(u_input.b.x, global0.d.b, 0u) % vec3<u32>(32u))))), abs(-_wgslsmith_add_vec4_i32(vec4<i32>(global0.b.d.x, global0.a.x, global0.a.x, -41760i), global0.e.d)) << (vec4<u32>(global0.e.b, global0.b.b, ~u_input.b.x, ~abs(global0.d.b)) % vec4<u32>(32u)), !vec3<bool>(var_0.x, false, any(vec2<bool>(var_0.x, global0.e.a))));
    return Struct_1(arg_0.x, select(~select(global0.c.b, var_1.c.b, false), vec2<i32>(_wgslsmith_div_i32(1i, global0.b.c.b.x), var_1.c.b.x), !global0.e.a & all(vec2<bool>(true, false))) | (~select(vec2<i32>(global0.b.c.b.x, -4029i), var_1.d.zx, var_0.x) & var_1.d.zz));
}

fn func_1(arg_0: Struct_4) -> vec4<bool> {
    let var_0 = func_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.c.a)) * _wgslsmith_f_op_f32(-702f * _wgslsmith_f_op_f32(min(arg_0.e.c.a, global0.d.c.a)))), arg_0.c.a));
    var var_1 = min(global0.d.d, arg_0.e.d) >> (_wgslsmith_mult_vec4_u32(abs(~vec4<u32>(global0.b.b, 0u, u_input.b.x, arg_0.d.b)), reverseBits(~vec4<u32>(u_input.b.x, 4719u, global0.d.b, 3456u)) | ~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, arg_0.b.b, 23245u, 1u), vec4<u32>(global0.b.b, arg_0.d.b, 36637u, global0.d.b))) % vec4<u32>(32u));
    var_1 = ~vec4<i32>(var_1.x, ~0i, 1i << (min(countOneBits(arg_0.e.b), u_input.b.x) % 32u), ~(~(-34940i)));
    var var_2 = arg_0.d;
    global0 = Struct_4(~(~(arg_0.d.d.zz | vec2<i32>(37131i, var_2.c.b.x))) >> ((u_input.b & min(u_input.b, ~u_input.b)) % vec2<u32>(32u)), global0.e, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -270f), vec2<i32>(-arg_0.e.c.b.x, -_wgslsmith_sub_i32(var_1.x, 1i))), Struct_3(true, arg_0.e.b | abs(~4294967295u), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1572f + -1137f) + global0.c.a), firstLeadingBit(global0.c.b)), -max(global0.e.d ^ var_2.d, ~global0.e.d), !(!(!vec3<bool>(true, false, global0.d.a)))), Struct_3(any(!vec3<bool>(false, false, var_2.e.x)), 1u, func_2(vec2<f32>(_wgslsmith_f_op_f32(-var_2.c.a), arg_0.d.c.a)), vec4<i32>(global0.a.x, ~var_1.x, _wgslsmith_mod_i32(reverseBits(global0.b.d.x), _wgslsmith_clamp_i32(var_1.x, 0i, var_1.x)), ~1i), !arg_0.d.e));
    return !vec4<bool>(true, arg_0.b.e.x, 1i != abs(firstLeadingBit(var_2.c.b.x)), any(var_2.e));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec3<i32>, arg_3: Struct_3) -> u32 {
    global0 = Struct_4(vec2<i32>(select(arg_0.b.x, select(arg_3.c.b.x, 50384i, true), global0.b.a), i32(-1i) * -global0.c.b.x) & global0.d.d.wx, global0.b, func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(1325f, -1347f) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(-1517f, 1625f), vec2<f32>(global0.b.c.a, 1730f)))))), arg_3, Struct_3(false, ~u_input.a.x, Struct_1(_wgslsmith_div_f32(-2201f, -591f), -arg_0.b), arg_3.d, select(select(select(arg_3.e, vec3<bool>(arg_1.x, false, arg_3.a), global0.d.e.x), select(vec3<bool>(global0.e.e.x, true, arg_1.x), arg_1.zzy, arg_1.yzx), select(vec3<bool>(arg_3.e.x, true, arg_1.x), arg_1.yyx, true)), func_1(Struct_4(arg_2.xz, Struct_3(arg_3.e.x, 0u, global0.b.c, vec4<i32>(global0.b.c.b.x, -27315i, arg_3.c.b.x, arg_3.d.x), arg_1.zyy), global0.c, global0.e, Struct_3(arg_3.e.x, u_input.b.x, arg_3.c, vec4<i32>(arg_0.b.x, -46783i, global0.e.c.b.x, arg_2.x), vec3<bool>(true, true, true)))).yyw, true)));
    var var_0 = Struct_4(~vec2<i32>(~(i32(-1i) * -13833i), 14242i), global0.d, arg_3.c, arg_3, Struct_3(arg_1.x, 415u, func_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(409f, 397f) - vec2<f32>(arg_3.c.a, global0.e.c.a))))), abs(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, 31458i, arg_3.c.b.x, arg_0.b.x), -vec4<i32>(4538i, arg_2.x, arg_0.b.x, -29747i))), select(arg_1.www, vec3<bool>(true, global0.b.e.x, arg_1.x), global0.d.e)));
    let var_1 = 29988u;
    var var_2 = 778f;
    let var_3 = Struct_5(var_0.d.a, arg_3.d, ~vec4<i32>(arg_0.b.x, abs(arg_2.x) >> (15367u % 32u), -1i, 55249i), _wgslsmith_f_op_f32(abs(var_0.e.c.a)), _wgslsmith_mod_i32(global0.d.c.b.x, 1558i));
    return abs(abs(~_wgslsmith_add_u32(1u, var_1)));
}

fn func_5(arg_0: i32, arg_1: Struct_4, arg_2: Struct_3, arg_3: i32) -> vec4<i32> {
    var var_0 = Struct_2(Struct_1(arg_2.c.a, -select(global0.c.b & arg_1.e.c.b, vec2<i32>(2147483647i, 2147483647i), vec2<bool>(global0.e.e.x, arg_1.d.a))), vec4<bool>(1u >= (~arg_2.b & ~arg_1.d.b), !arg_2.a, 0i == _wgslsmith_mod_i32(1i, select(17004i, 28299i, false)), arg_2.a));
    var_0 = Struct_2(func_2(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.b.c.a, 907f)))), select(!vec4<bool>(true, arg_2.c.a >= arg_1.d.c.a, true, arg_2.e.x), !func_1(Struct_4(vec2<i32>(-2147483647i, 0i), arg_2, arg_1.d.c, global0.e, arg_2)), !func_1(arg_1)));
    var var_1 = Struct_5(all(vec2<bool>(true, all(vec3<bool>(true, false, true)))), _wgslsmith_div_vec4_i32(abs(select(vec4<i32>(arg_2.d.x, -1i, 32607i, arg_2.d.x), min(vec4<i32>(arg_1.e.d.x, -6787i, var_0.a.b.x, arg_2.c.b.x), vec4<i32>(-3472i, arg_2.d.x, arg_1.e.c.b.x, arg_0)), !var_0.b)), global0.e.d), ~vec4<i32>(arg_0 << ((arg_1.e.b << (global0.d.b % 32u)) % 32u), -(arg_3 << (global0.b.b % 32u)), firstTrailingBit(_wgslsmith_add_i32(0i, var_0.a.b.x)), select(arg_2.c.b.x | arg_2.d.x, -2147483647i, arg_1.e.e.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.e.c.a) * arg_1.d.c.a))) - _wgslsmith_f_op_f32(max(arg_1.b.c.a, _wgslsmith_div_f32(var_0.a.a, _wgslsmith_f_op_f32(floor(606f)))))), ~select(-var_0.a.b.x, -24404i, (0i < arg_2.c.b.x) == !var_0.b.x));
    var var_2 = vec4<f32>(162f, var_0.a.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -974f), _wgslsmith_f_op_f32(ceil(var_1.d))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -707f), -167f)))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -934f), -1000f))));
    let var_3 = Struct_3(all(var_0.b), 70136u, Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_2.c.a * global0.c.a), _wgslsmith_f_op_f32(-var_2.x))), vec2<i32>(abs(-1i), var_1.c.x)), vec4<i32>(~2147483647i, _wgslsmith_mult_i32(_wgslsmith_add_i32(arg_1.e.c.b.x, arg_0), ~arg_0) >> (1u % 32u), -max(var_0.a.b.x, _wgslsmith_mult_i32(arg_0, var_1.e)), _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.c.x, ~1i), vec2<i32>(arg_3 << (0u % 32u), arg_0))), !(!vec3<bool>(false, true, func_1(Struct_4(global0.a, Struct_3(var_0.b.x, 0u, Struct_1(-1371f, vec2<i32>(global0.d.c.b.x, var_1.e)), vec4<i32>(arg_0, arg_0, arg_1.e.c.b.x, -1i), vec3<bool>(false, false, arg_2.e.x)), var_0.a, Struct_3(true, 18585u, arg_1.c, var_1.b, vec3<bool>(true, arg_2.e.x, false)), arg_1.b)).x)));
    return -global0.d.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.b;
    let var_1 = func_5(_wgslsmith_mult_i32(-(~global0.d.d.x), -1i), Struct_4(global0.a, Struct_3(false, _wgslsmith_add_u32(~31338u, _wgslsmith_clamp_u32(24712u, 7355u, var_0.b)), Struct_1(_wgslsmith_f_op_f32(-global0.d.c.a), global0.c.b), _wgslsmith_mult_vec4_i32(global0.d.d, -vec4<i32>(var_0.c.b.x, 1i, global0.c.b.x, -1i)), global0.b.e), global0.b.c, global0.b, Struct_3(false, func_4(Struct_1(-751f, vec2<i32>(-12373i, -84144i)), func_1(Struct_4(vec2<i32>(global0.c.b.x, global0.b.d.x), global0.b, Struct_1(-264f, vec2<i32>(global0.e.d.x, 0i)), Struct_3(global0.d.a, global0.e.b, Struct_1(-1467f, vec2<i32>(var_0.d.x, -1i)), global0.d.d, vec3<bool>(global0.e.a, true, var_0.a)), global0.b)), _wgslsmith_mod_vec3_i32(vec3<i32>(global0.e.c.b.x, 1i, var_0.c.b.x), vec3<i32>(39187i, global0.e.c.b.x, 29170i)), global0.b), func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.a, -1425f))), vec4<i32>(-1i, var_0.d.x, -5823i, 2147483647i), vec3<bool>(any(vec4<bool>(global0.e.a, false, global0.e.e.x, true)), true, false))), Struct_3(false, 45772u, var_0.c, vec4<i32>(_wgslsmith_div_i32(global0.a.x, 0i), ~global0.d.d.x, _wgslsmith_add_i32(var_0.d.x, var_0.d.x), 27918i) | var_0.d, vec3<bool>(!(!global0.d.a), var_0.a, !global0.e.e.x & (var_0.a || global0.b.e.x))), min(-(~var_0.c.b.x), func_2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-2429f, -195f), vec2<f32>(global0.b.c.a, -1731f)))).b.x) | global0.b.c.b.x);
    global0 = Struct_4(var_0.d.yy, Struct_3(var_0.e.x, 0u, Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(global0.d.c.a)))), vec2<i32>(1i, var_1.x)), _wgslsmith_sub_vec4_i32(var_1, max(vec4<i32>(-2147483647i, 14003i, 54338i, var_0.c.b.x) >> (vec4<u32>(76015u, 1u, var_0.b, 0u) % vec4<u32>(32u)), vec4<i32>(var_1.x, global0.a.x, -2147483647i, global0.c.b.x))), vec3<bool>(select(true, !var_0.a, global0.b.e.x), true, (4294967295u >> (global0.b.b % 32u)) > 1u)), func_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-191f, global0.b.c.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -567f)))), global0.e, Struct_3(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(13539u, 21821u, u_input.b.x)), vec3<u32>(3615u, var_0.b, u_input.a.x)) != func_3(countOneBits(vec4<u32>(u_input.b.x, u_input.a.x, 40477u, global0.b.b))), var_0.b, var_0.c, -min(global0.e.d, ~vec4<i32>(var_1.x, global0.c.b.x, var_0.c.b.x, var_1.x)), vec3<bool>(var_0.a, var_0.a, abs(var_0.b) != (global0.d.b >> (7745u % 32u)))));
    var var_2 = 4294967295u;
    var_2 = 4294967295u;
    var_2 = 13852u;
    let x = u_input.a;
    s_output = StorageBuffer(-262f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.c.a, -777f))).a)), 55096u, ~vec2<i32>(abs(var_1.x), min(var_0.d.x, 2147483647i) | -1i), _wgslsmith_mult_vec3_u32(max(~(~vec3<u32>(4294967295u, global0.e.b, u_input.a.x)), vec3<u32>(0u, ~global0.b.b, abs(u_input.b.x))), vec3<u32>(global0.e.b, reverseBits(u_input.b.x) << (select(1131u, global0.b.b, true) % 32u), reverseBits(u_input.b.x))));
}

