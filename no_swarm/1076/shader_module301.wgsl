struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, false);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: f32) -> vec4<u32> {
    global0 = select(!vec3<bool>(21072i < firstTrailingBit(-4256i), global0.x, false), !vec3<bool>(true, !global0.x, !(!global0.x)), global0.x);
    global0 = select(vec3<bool>(global0.x, all(select(vec3<bool>(true, true, true), select(vec3<bool>(global0.x, global0.x, false), vec3<bool>(global0.x, true, true), vec3<bool>(global0.x, global0.x, global0.x)), select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(false, false, false), vec3<bool>(global0.x, false, global0.x)))), global0.x), vec3<bool>(true, all(vec3<bool>(true, true, global0.x | false)), !(!(false | global0.x))), vec3<bool>(!global0.x, true, true));
    var var_0 = ~vec3<i32>(firstTrailingBit(u_input.d), -1i, _wgslsmith_add_i32(-2147483647i, 1i));
    var var_1 = Struct_2(!select(select(global0.xy, select(vec2<bool>(global0.x, global0.x), vec2<bool>(false, true), vec2<bool>(global0.x, false)), global0.zx), !vec2<bool>(global0.x, global0.x), true), Struct_1(_wgslsmith_div_u32(_wgslsmith_add_u32(~1u, ~u_input.c), u_input.c), !vec2<bool>(any(global0.zy), !global0.x), _wgslsmith_add_u32(~u_input.c, _wgslsmith_mod_u32(u_input.c, 1u))), Struct_1(u_input.c, !(!select(global0.xz, vec2<bool>(true, global0.x), global0.x)), _wgslsmith_mod_u32(~(~4294967295u), min(u_input.c | 4294967295u, ~u_input.c))), Struct_1(14592u, !select(global0.yy, global0.xy, global0.xy), ~(0u >> (1u % 32u))), ~(firstLeadingBit(u_input.c) >> (u_input.c % 32u)));
    let var_2 = var_1.c.b.x;
    return min(vec4<u32>(var_1.c.c & ~(u_input.c >> (0u % 32u)), _wgslsmith_mod_u32(var_1.b.c, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 4294967295u, var_1.e, var_1.d.a), vec4<u32>(35577u, u_input.c, u_input.c, var_1.b.c)) | 40985u), 53746u, max(abs(~u_input.c), 25868u)), vec4<u32>(0u, select(_wgslsmith_mod_u32(~64532u, max(53043u, u_input.c)), ~(~var_1.e), all(vec4<bool>(false, false, global0.x, var_1.b.b.x))), min(u_input.c, countOneBits(4294967295u << (u_input.c % 32u))), max(firstTrailingBit(31889u), ~(u_input.c >> (83892u % 32u)))));
}

fn func_4(arg_0: Struct_2) -> i32 {
    let var_0 = _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(reverseBits(_wgslsmith_sub_vec2_u32(abs(vec2<u32>(arg_0.d.c, 4294967295u)), vec2<u32>(u_input.c, u_input.c) >> (vec2<u32>(u_input.c, arg_0.b.a) % vec2<u32>(32u)))), firstLeadingBit(vec2<u32>(u_input.c | u_input.c, u_input.c & 1u))), vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_add_u32(func_3(vec2<f32>(242f, 505f), vec3<f32>(-267f, 1257f, -242f), -1686f).x, arg_0.d.c), arg_0.d.c), 4294967295u));
    var var_1 = -u_input.a.xwy;
    return 2147483647i;
}

fn func_2(arg_0: i32) -> u32 {
    let var_0 = Struct_3(u_input.a.zxw, func_4(Struct_2(global0.zx, Struct_1(0u | u_input.c, global0.yy, firstTrailingBit(0u)), Struct_1(abs(17937u), vec2<bool>(true, true), ~42847u), Struct_1(min(u_input.c, u_input.c), !global0.zx, ~u_input.c), _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 7814u, u_input.c, u_input.c), func_3(vec2<f32>(-910f, 1709f), vec3<f32>(280f, -395f, 593f), 503f)))));
    var var_1 = _wgslsmith_mult_i32(var_0.b, (29669i >> (_wgslsmith_dot_vec2_u32(vec2<u32>(21548u, u_input.c), _wgslsmith_div_vec2_u32(vec2<u32>(0u, u_input.c), vec2<u32>(67232u, 1u))) % 32u)) | ~_wgslsmith_mod_i32(0i, _wgslsmith_add_i32(u_input.b.x, u_input.d)));
    let var_2 = !(!(!(!global0.xz)));
    global0 = !vec3<bool>(false | all(select(vec4<bool>(global0.x, true, true, var_2.x), vec4<bool>(var_2.x, global0.x, false, global0.x), true)), true, var_2.x);
    var var_3 = abs(func_4(Struct_2(vec2<bool>(any(vec3<bool>(var_2.x, global0.x, var_2.x)), var_2.x), Struct_1(select(4338u, 22684u, false), global0.xz, 4294967295u), Struct_1(reverseBits(u_input.c), select(global0.xy, vec2<bool>(true, false), var_2.x), _wgslsmith_sub_u32(u_input.c, u_input.c)), Struct_1(~u_input.c, vec2<bool>(false, global0.x), 0u), (1u | u_input.c) & ~u_input.c)));
    return u_input.c;
}

fn func_1(arg_0: f32) -> i32 {
    var var_0 = vec2<f32>(-574f, -191f);
    var var_1 = Struct_2(vec2<bool>(true, !global0.x), Struct_1(u_input.c, global0.yx, ~u_input.c), Struct_1(reverseBits(u_input.c), select(global0.xy, global0.zz, any(vec4<bool>(true, global0.x, true, false))), reverseBits(4294967295u)), Struct_1(func_2(-1i), select(vec2<bool>(false, !global0.x), select(global0.zy, select(vec2<bool>(global0.x, true), vec2<bool>(true, global0.x), global0.xz), select(global0.zx, vec2<bool>(true, true), global0.xz)), true), ~(~(~4294967295u))), 4294967295u);
    var var_2 = ~countOneBits(-(~vec2<i32>(1i, 0i)));
    var var_3 = var_1.e;
    global0 = !vec3<bool>(var_1.d.b.x, var_1.d.b.x, all(vec3<bool>(true, global0.x, true)));
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !vec3<bool>(true, global0.x, all(vec3<bool>(any(vec2<bool>(global0.x, false)), false, !global0.x)));
    var var_0 = Struct_1(_wgslsmith_sub_u32(u_input.c, 1u), global0.yx, u_input.c);
    var var_1 = vec2<f32>(-909f, _wgslsmith_div_f32(293f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -205f)))));
    var_1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(761f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, 980f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)) - var_1.x)), _wgslsmith_f_op_f32(round(var_1.x)));
    let var_2 = global0.xy;
    var var_3 = select(_wgslsmith_sub_vec4_i32(u_input.a, _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, u_input.b.x, _wgslsmith_clamp_i32(-1i, 2147483647i, 2147483647i), func_1(var_1.x)), -u_input.a)), ~_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(64861i, 0i, u_input.b.x, 0i), u_input.a, u_input.a), vec4<i32>(3365i, u_input.d, u_input.d, u_input.a.x) ^ u_input.a), ~(~vec4<i32>(u_input.d, u_input.b.x, 16100i, 28990i))), any(vec2<bool>(false, true)));
    var var_4 = _wgslsmith_f_op_f32(var_1.x - -1476f);
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.x)) * _wgslsmith_f_op_f32(step(var_1.x, var_1.x))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) - vec2<f32>(var_1.x, var_1.x)) + vec2<f32>(694f, var_1.x)), vec2<f32>(-195f, _wgslsmith_f_op_f32(var_1.x - var_1.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1449f)))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1124f, var_1.x), vec2<f32>(_wgslsmith_f_op_f32(var_1.x - -2383f), _wgslsmith_f_op_f32(var_1.x - var_1.x)), true))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1213f + var_1.x))) + _wgslsmith_f_op_f32(var_1.x - -1355f)))));
}

