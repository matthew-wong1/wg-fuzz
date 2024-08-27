struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: bool,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<i32>,
    c: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<vec2<bool>, 27> = array<vec2<bool>, 27>(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec2<f32>) -> Struct_3 {
    let var_0 = -1i;
    global0 = Struct_4(global0.c, ~global0.a.a, global0.c);
    var var_1 = _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(499f - -717f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * arg_0.x)))));
    let var_2 = vec3<i32>(50135i, u_input.a.x, global0.a.a.x);
    let var_3 = global0.c.c;
    return global0.a;
}

fn func_3(arg_0: Struct_5) -> Struct_4 {
    global0 = Struct_4(func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1031f, -212f) - vec2<f32>(-989f, 1413f)))))), _wgslsmith_sub_vec3_i32(global0.b << (vec3<u32>(1u, global0.c.c.b ^ 6104u, 0u ^ arg_0.d.b) % vec3<u32>(32u)), vec3<i32>(global0.c.a.x, 1i, -58789i) << (global0.c.d % vec3<u32>(32u))), Struct_3(countOneBits(_wgslsmith_sub_vec3_i32(global0.a.c.c.yyx, vec3<i32>(arg_0.b.a.x, 1i, -26743i))), !((u_input.a.x | -2147483647i) >= u_input.a.x), Struct_1(~vec2<i32>(-2147483647i, global0.c.a.x), ~(~52263u), firstTrailingBit(countOneBits(arg_0.b.c.c))), vec3<u32>(0u, _wgslsmith_mod_u32(1u, arg_0.a.b), abs(4514u)) >> (~vec3<u32>(arg_0.b.c.b, 4294967295u, 1u) % vec3<u32>(32u))));
    let var_0 = Struct_2(func_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1000f, -377f)))))).c);
    var var_1 = var_0.a;
    let var_2 = vec3<bool>(any(!select(vec2<bool>(arg_0.b.b, global0.a.b), !vec2<bool>(arg_0.b.b, global0.a.b), false)), true, all(select(!vec3<bool>(true, true, arg_0.b.b), select(select(vec3<bool>(false, global0.c.b, true), vec3<bool>(false, global0.a.b, true), false), select(vec3<bool>(global0.c.b, arg_0.b.b, true), vec3<bool>(global0.c.b, arg_0.b.b, true), vec3<bool>(false, true, false)), true), select(vec3<bool>(false, global0.c.b, true), vec3<bool>(false, global0.c.b, global0.a.b), select(vec3<bool>(arg_0.b.b, false, true), vec3<bool>(global0.c.b, arg_0.b.b, false), vec3<bool>(false, true, true))))));
    var var_3 = !select(select(select(vec4<bool>(false, arg_0.b.b, global0.a.b, false), vec4<bool>(var_2.x, false, global0.c.b, var_2.x), true), vec4<bool>(true, true, true, false), select(select(vec4<bool>(var_2.x, global0.a.b, true, arg_0.b.b), vec4<bool>(arg_0.b.b, true, global0.c.b, true), true), select(vec4<bool>(global0.c.b, var_2.x, var_2.x, arg_0.b.b), vec4<bool>(false, arg_0.b.b, global0.c.b, true), false), 36275i <= var_1.c.x)), select(!vec4<bool>(true, arg_0.b.b, arg_0.b.b, arg_0.b.b), !vec4<bool>(global0.a.b, false, false, var_2.x), global0.a.b), select(select(vec4<bool>(false, true, false, false), !vec4<bool>(global0.c.b, var_2.x, arg_0.b.b, true), all(var_2)), select(vec4<bool>(var_2.x, true, true, false), !vec4<bool>(false, global0.a.b, var_2.x, arg_0.b.b), global0.c.b), ~arg_0.a.b != 0u));
    return Struct_4(global0.c, u_input.a, global0.c);
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: bool, arg_3: f32) -> Struct_1 {
    let var_0 = func_3(Struct_5(Struct_1(u_input.a.xy & vec2<i32>(-1i, global0.b.x), min(arg_1.b, _wgslsmith_mod_u32(1u, 11788u)), firstTrailingBit(-vec4<i32>(21551i, arg_1.c.x, arg_1.c.x, -22482i))), func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_3, -1084f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1211f, arg_3)))), func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3, arg_3))).c, Struct_1(select(vec2<i32>(arg_1.c.x, arg_1.c.x), _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, 5495i), global0.a.a.yz), global1[_wgslsmith_index_u32(global0.a.d.x, 27u)]), _wgslsmith_clamp_u32(~30979u, ~0u, _wgslsmith_div_u32(arg_1.b, 1u)), ~(-vec4<i32>(arg_1.c.x, 3027i, 0i, arg_1.c.x)))));
    global0 = var_0;
    var var_1 = arg_0;
    var var_2 = var_0.c.b;
    var var_3 = vec3<i32>(arg_1.a.x, _wgslsmith_dot_vec3_i32(-firstLeadingBit(~vec3<i32>(global0.c.a.x, var_0.b.x, var_0.a.c.c.x)), countOneBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(-23039i, arg_1.c.x, u_input.a.x), -vec3<i32>(1i, arg_1.c.x, var_0.a.a.x), global0.a.a))), 30810i);
    return func_3(Struct_5(global0.c.c, Struct_3(vec3<i32>(_wgslsmith_clamp_i32(var_0.c.a.x, 2147483647i, 4612i), max(global0.b.x, -20339i), _wgslsmith_dot_vec2_i32(var_3.xy, global0.b.zx)), all(vec2<bool>(arg_0, false)), func_3(Struct_5(var_0.c.c, Struct_3(vec3<i32>(arg_1.a.x, 2147483647i, var_0.a.c.a.x), var_0.a.b, Struct_1(var_3.zx, arg_1.b, arg_1.c), vec3<u32>(arg_1.b, 42449u, 85751u)), global0.c.c, global0.a.c)).a.c, vec3<u32>(~1u, 74857u, ~10187u)), func_3(Struct_5(func_3(Struct_5(arg_1, Struct_3(vec3<i32>(13466i, 2147483647i, 0i), global0.c.b, Struct_1(arg_1.c.xz, global0.c.c.b, arg_1.c), global0.c.d), Struct_1(u_input.a.zz, arg_1.b, vec4<i32>(-8206i, arg_1.a.x, 0i, var_0.b.x)), Struct_1(vec2<i32>(-46716i, global0.b.x), global0.c.c.b, vec4<i32>(var_3.x, var_3.x, 2147483647i, 2147483647i)))).c.c, Struct_3(vec3<i32>(var_3.x, var_3.x, var_3.x), true, Struct_1(arg_1.a, 0u, var_0.a.c.c), vec3<u32>(arg_1.b, arg_1.b, arg_1.b)), var_0.a.c, global0.c.c)).c.c, var_0.c.c)).a.c;
}

fn func_4(arg_0: Struct_5, arg_1: vec3<bool>, arg_2: bool, arg_3: Struct_4) -> Struct_5 {
    let var_0 = arg_0.d.b;
    var var_1 = arg_3.c.c;
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -227f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-620f)) + -771f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(938f, 966f, arg_2))))));
    let var_3 = Struct_3(arg_0.d.c.wyy, any(select(select(vec3<bool>(true, global0.c.b, global0.a.b), select(arg_1, arg_1, vec3<bool>(arg_1.x, true, arg_0.b.b)), arg_2), select(vec3<bool>(arg_3.a.b, arg_0.b.b, arg_3.a.b), vec3<bool>(true, false, true), var_2.x > var_2.x), select(!arg_1, arg_1, func_3(Struct_5(global0.c.c, Struct_3(global0.a.a, arg_1.x, Struct_1(vec2<i32>(-15078i, -1i), 43435u, vec4<i32>(4372i, arg_0.d.c.x, arg_0.a.a.x, 24016i)), vec3<u32>(4294967295u, 100755u, var_1.b)), Struct_1(arg_0.d.a, 4294967295u, vec4<i32>(arg_0.c.c.x, arg_0.a.a.x, 0i, global0.a.a.x)), arg_3.a.c)).a.b))), func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1651f, -1129f) - vec2<f32>(-393f, var_2.x))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2), vec2<f32>(var_2.x, -687f)))).c, abs(firstLeadingBit(arg_3.a.d)));
    global1 = array<vec2<bool>, 27>();
    return Struct_5(Struct_1(vec2<i32>(-var_1.a.x, -global0.a.a.x) | vec2<i32>(arg_0.a.c.x, var_3.a.x), reverseBits(~1u ^ max(var_0, arg_0.d.b)), vec4<i32>(_wgslsmith_mult_i32(global0.a.a.x >> (arg_3.c.d.x % 32u), 1i), firstTrailingBit(reverseBits(-2147483647i)), -(~1i), ~(0i << (1u % 32u)))), arg_3.c, Struct_1(func_1(func_2(var_2).b, Struct_1(_wgslsmith_mult_vec2_i32(global0.b.yx, arg_3.c.a.xy), var_0, func_3(arg_0).c.c.c), ~var_0 != ~var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * _wgslsmith_f_op_f32(var_2.x + 1891f))).c.ww, ~11249u, _wgslsmith_sub_vec4_i32(vec4<i32>(arg_3.a.a.x, _wgslsmith_add_i32(arg_0.d.c.x, 0i), 17270i | arg_0.b.a.x, 0i), vec4<i32>(-1i) * -global0.a.c.c)), Struct_1(global0.a.c.c.ww, var_1.b, var_1.c));
}

fn func_5(arg_0: Struct_5) -> Struct_3 {
    let var_0 = 728f;
    var var_1 = func_4(Struct_5(Struct_1(~abs(vec2<i32>(global0.b.x, -2147483647i)), arg_0.b.d.x, vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -1i, 0i), vec4<i32>(0i, u_input.a.x, -2147483647i, 1i)), -38935i, reverseBits(-2147483647i), 39472i)), global0.a, func_1(any(global1[_wgslsmith_index_u32(1u, 27u)]), Struct_1(-arg_0.c.a, arg_0.d.b << (1u % 32u), vec4<i32>(global0.b.x, 1i, arg_0.c.c.x, global0.c.c.c.x)), global0.c.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0)))), func_2(vec2<f32>(_wgslsmith_f_op_f32(854f + -2462f), var_0)).c), select(select(vec3<bool>(true, !arg_0.b.b, false), !select(vec3<bool>(false, arg_0.b.b, global0.a.b), vec3<bool>(false, false, global0.a.b), vec3<bool>(true, arg_0.b.b, arg_0.b.b)), !arg_0.b.b), vec3<bool>(all(vec2<bool>(false, true)), arg_0.b.b | (true == global0.c.b), var_0 >= _wgslsmith_f_op_f32(-var_0)), select(vec3<bool>(var_0 != -226f, var_0 < var_0, !arg_0.b.b), select(vec3<bool>(false, arg_0.b.b, true), !vec3<bool>(true, global0.a.b, true), true), select(vec3<bool>(false, arg_0.b.b, global0.a.b), select(vec3<bool>(global0.c.b, global0.a.b, global0.c.b), vec3<bool>(true, arg_0.b.b, arg_0.b.b), arg_0.b.b), vec3<bool>(global0.a.b, true, arg_0.b.b)))), global0.c.b, func_3(func_4(arg_0, vec3<bool>(all(vec4<bool>(arg_0.b.b, global0.c.b, arg_0.b.b, false)), true, 0u > arg_0.c.b), true, Struct_4(arg_0.b, _wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.b.c.a.x, global0.c.c.c.x, arg_0.d.a.x), arg_0.b.c.c.zyy), func_3(arg_0).a)))).b;
    let var_2 = var_1.d;
    let var_3 = Struct_4(Struct_3(_wgslsmith_div_vec3_i32(vec3<i32>(-9920i >> (global0.c.c.b % 32u), -1i, u_input.a.x), vec3<i32>(1i, 1i, 1i) << (_wgslsmith_div_vec3_u32(vec3<u32>(var_2.x, 1u, var_1.c.b), var_1.d) % vec3<u32>(32u))), abs(var_1.c.a.x) >= 1i, Struct_1(abs(var_1.c.a), func_1(all(vec4<bool>(false, true, global0.c.b, arg_0.b.b)), Struct_1(var_1.c.c.ww, var_2.x, arg_0.b.c.c), global0.c.b, -928f).b, vec4<i32>(u_input.a.x, -1i, var_1.c.a.x, global0.a.c.c.x) | abs(vec4<i32>(arg_0.a.c.x, arg_0.c.a.x, global0.a.c.c.x, 1i))), (_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.c.b, var_1.d.x, global0.a.c.b), vec3<u32>(arg_0.d.b, var_2.x, 4294967295u)) << (vec3<u32>(1u, var_1.d.x, 38365u) % vec3<u32>(32u))) >> (~(~vec3<u32>(global0.c.d.x, 89534u, 16224u)) % vec3<u32>(32u))), global0.b & -(~(-vec3<i32>(1i, u_input.a.x, u_input.a.x))), arg_0.b);
    var var_4 = var_3.a.c.c.yz;
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(global0.c.c.a.x, -1i, -7630i);
    global0 = Struct_4(func_5(func_4(Struct_5(func_1(true, global0.a.c, global0.c.b, -1000f), global0.c, Struct_1(var_0.yz, 18774u, global0.a.c.c), func_2(vec2<f32>(1023f, 1538f)).c), !select(vec3<bool>(global0.c.b, global0.c.b, global0.c.b), vec3<bool>(global0.c.b, global0.a.b, true), global0.a.b), true, Struct_4(Struct_3(vec3<i32>(34851i, var_0.x, var_0.x), global0.c.b, global0.a.c, global0.c.d), _wgslsmith_clamp_vec3_i32(vec3<i32>(global0.b.x, 0i, 2147483647i), vec3<i32>(u_input.a.x, var_0.x, -1452i), vec3<i32>(var_0.x, u_input.a.x, u_input.a.x)), Struct_3(global0.b, global0.c.b, global0.c.c, global0.c.d)))), ~countOneBits(firstTrailingBit(~u_input.a)), global0.a);
    let var_1 = _wgslsmith_mod_vec3_i32(u_input.a | _wgslsmith_div_vec3_i32(vec3<i32>(~1i, func_5(Struct_5(Struct_1(vec2<i32>(-44377i, u_input.a.x), 24023u, global0.c.c.c), Struct_3(u_input.a, false, Struct_1(var_0.xy, global0.c.d.x, vec4<i32>(-27215i, var_0.x, 2147483647i, global0.c.c.a.x)), vec3<u32>(global0.c.d.x, 25085u, 0u)), Struct_1(vec2<i32>(16529i, global0.a.c.a.x), 157965u, global0.a.c.c), Struct_1(u_input.a.zz, 71752u, global0.a.c.c))).a.x, reverseBits(var_0.x)), vec3<i32>(-31307i, -10682i, _wgslsmith_sub_i32(u_input.a.x, -41500i))), u_input.a);
    var var_2 = vec3<u32>(func_5(Struct_5(func_3(func_4(Struct_5(global0.a.c, Struct_3(var_1, false, global0.c.c, vec3<u32>(global0.c.d.x, global0.c.d.x, 4294967295u)), Struct_1(vec2<i32>(var_1.x, var_0.x), 1u, vec4<i32>(0i, 0i, 0i, var_1.x)), Struct_1(vec2<i32>(-2147483647i, 1i), global0.c.c.b, global0.c.c.c)), vec3<bool>(false, global0.c.b, false), false, Struct_4(Struct_3(var_1, global0.c.b, global0.c.c, global0.c.d), vec3<i32>(1i, var_0.x, -75432i), global0.a))).a.c, func_3(func_4(Struct_5(global0.c.c, global0.a, global0.c.c, global0.a.c), vec3<bool>(false, global0.a.b, false), global0.a.b, Struct_4(Struct_3(vec3<i32>(var_0.x, var_0.x, 1i), global0.c.b, Struct_1(var_0.yy, 1u, global0.a.c.c), vec3<u32>(global0.a.d.x, 4294967295u, global0.c.d.x)), vec3<i32>(1550i, 0i, var_1.x), global0.a))).c, global0.a.c, global0.c.c)).c.b, 1u, 21823u ^ firstLeadingBit(global0.c.c.b));
    var_0 = global0.b;
    global1 = array<vec2<bool>, 27>();
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(306f, _wgslsmith_f_op_f32(-1000f - 1f)));
    let x = u_input.a;
    s_output = StorageBuffer(-832f, global0.c.c.b);
}

