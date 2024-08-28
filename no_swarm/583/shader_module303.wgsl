struct Struct_1 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: i32,
    d: i32,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(36875i, -25500i, i32(-2147483648));

var<private> global1: Struct_2 = Struct_2(vec2<u32>(1u, 49034u), vec4<f32>(300f, 152f, 1070f, -885f), 0i, 0i);

var<private> global2: array<vec3<i32>, 21>;

var<private> global3: vec3<f32>;

var<private> global4: Struct_1 = Struct_1(true, vec4<f32>(513f, 1000f, -936f, 302f));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_2(arg_0: i32) -> Struct_1 {
    global0 = vec3<i32>(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, reverseBits(-2147483647i), countOneBits(1015i << (global1.a.x % 32u)), arg_0), min(vec4<i32>(_wgslsmith_add_i32(arg_0, arg_0), ~2147483647i, global0.x & arg_0, reverseBits(28181i)), vec4<i32>(-2147483647i, global0.x | arg_0, ~2147483647i, 0i))), _wgslsmith_mult_i32(_wgslsmith_mult_i32(abs(u_input.b.x), global0.x), 2147483647i));
    var var_0 = global3.x;
    global0 = global2[_wgslsmith_index_u32(4294967295u, 21u)];
    var var_1 = Struct_3(_wgslsmith_clamp_vec2_i32(vec2<i32>(min(~u_input.b.x, global1.d), arg_0), global0.yy, u_input.b ^ -u_input.b));
    var var_2 = global4.a;
    return Struct_1(false, _wgslsmith_f_op_vec4_f32(ceil(global4.b)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> Struct_2 {
    let var_0 = func_2(firstLeadingBit(arg_1.c));
    let var_1 = arg_1;
    let var_2 = _wgslsmith_clamp_u32(_wgslsmith_sub_u32(countOneBits(~global1.a.x), ~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 82418u, arg_1.a.x), vec3<u32>(0u, u_input.c, 36542u)), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, global1.a.x, var_1.a.x), vec3<u32>(0u, global1.a.x, var_1.a.x)))), min(71023u, 4294967295u), reverseBits(13830u));
    var var_3 = -1458f;
    var var_4 = Struct_2(global1.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(step(-393f, arg_1.b.x)), _wgslsmith_f_op_f32(abs(global3.x)), global4.b.x, var_0.b.x))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-787f, arg_1.b.x, var_0.b.x, -1000f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.b.x, global1.b.x, arg_0.b.x, 1432f)))))), abs(-2147483647i), ~reverseBits(0i));
    return Struct_2(~u_input.d, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.b)))), vec4<f32>(_wgslsmith_div_f32(global4.b.x, _wgslsmith_div_f32(var_1.b.x, global4.b.x)), _wgslsmith_f_op_f32(exp2(global1.b.x)), _wgslsmith_f_op_f32(-var_4.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.x))))), abs(2147483647i), 28833i);
}

fn func_4(arg_0: i32, arg_1: Struct_2) -> bool {
    var var_0 = arg_1;
    let var_1 = abs(4294967295u);
    global2 = array<vec3<i32>, 21>();
    let var_2 = _wgslsmith_sub_i32(_wgslsmith_add_i32(_wgslsmith_clamp_i32(_wgslsmith_div_i32(global1.c, 2147483647i), max(2147483647i, u_input.b.x), arg_1.c), var_0.d) ^ -2147483647i, _wgslsmith_dot_vec4_i32(~firstTrailingBit(vec4<i32>(global0.x, -2147483647i, arg_1.c, var_0.d)), select(max(abs(vec4<i32>(0i, 2147483647i, var_0.d, 2147483647i)), -vec4<i32>(arg_0, var_0.d, global0.x, -8623i)), -(~vec4<i32>(24561i, var_0.d, arg_0, -7966i)), all(select(vec2<bool>(global4.a, global4.a), vec2<bool>(global4.a, false), vec2<bool>(false, false))))));
    let var_3 = Struct_3(_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(u_input.b, u_input.b) >> (_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(global1.a.x, 8510u), vec2<u32>(4459u, global1.a.x)), global1.a) % vec2<u32>(32u)), vec2<i32>(~1i, arg_1.c)));
    return true;
}

fn func_1() -> bool {
    let var_0 = all(vec4<bool>(global4.a, select(false, true, true | (global4.a | global4.a)), func_4(global1.d, func_3(func_2(u_input.b.x), Struct_2(vec2<u32>(global1.a.x, 0u), global4.b, u_input.b.x, -12137i))), func_2(-2257i).a));
    global0 = min(min(vec3<i32>(-5295i, func_3(func_2(global0.x), Struct_2(vec2<u32>(1u, global1.a.x), global1.b, 1i, 1i)).c, func_3(func_2(u_input.b.x), func_3(Struct_1(var_0, vec4<f32>(-1066f, global3.x, -276f, global4.b.x)), Struct_2(vec2<u32>(global1.a.x, 31122u), global1.b, u_input.b.x, u_input.b.x))).d), _wgslsmith_div_vec3_i32(vec3<i32>(-17779i, global1.c, 2147483647i), global2[_wgslsmith_index_u32(~abs(50415u), 21u)])), vec3<i32>(~u_input.b.x | _wgslsmith_mult_i32(-u_input.b.x, global1.c), ~global0.x, _wgslsmith_dot_vec4_i32(reverseBits(-vec4<i32>(8923i, 0i, -8850i, global0.x)), ~vec4<i32>(22586i, 27935i, u_input.b.x, -1i) & ~vec4<i32>(global1.d, 51848i, u_input.b.x, 1i))));
    global3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(1000f, global4.b.x), _wgslsmith_f_op_f32(global1.b.x - global4.b.x), _wgslsmith_f_op_f32(-1000f + global1.b.x)) * vec3<f32>(_wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_f_op_f32(global3.x - global3.x), _wgslsmith_f_op_f32(round(-984f))))) + vec3<f32>(global3.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -196f))), global4.b.x));
    var var_1 = Struct_3(vec2<i32>(1i, ~global1.d));
    global0 = max(~_wgslsmith_div_vec3_i32(global2[_wgslsmith_index_u32(min(~4294967295u, 51627u), 21u)], ~vec3<i32>(0i, global0.x, 2147483647i) & select(global2[_wgslsmith_index_u32(u_input.d.x, 21u)], vec3<i32>(global0.x, -8982i, 1i), global4.a)), _wgslsmith_clamp_vec3_i32(global2[_wgslsmith_index_u32(min(u_input.a, _wgslsmith_add_u32(4294967295u, global1.a.x)), 21u)], max(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global1.a.x, global1.a.x ^ 36433u), 21u)], abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(global1.d, -1i, 42352i), global2[_wgslsmith_index_u32(global1.a.x, 21u)], vec3<i32>(u_input.b.x, -19607i, global1.d)))), _wgslsmith_add_vec3_i32(max(_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, global1.c, 0i), global2[_wgslsmith_index_u32(global1.a.x, 21u)]), vec3<i32>(u_input.b.x, -10146i, 2147483647i)), vec3<i32>(u_input.b.x, -19348i, -2147483647i) | (global2[_wgslsmith_index_u32(global1.a.x, 21u)] << (vec3<u32>(4294967295u, 97511u, global1.a.x) % vec3<u32>(32u))))));
    return false;
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    return func_2(_wgslsmith_mod_i32(1i, func_3(Struct_1(global4.a || true, arg_1.b), Struct_2(global1.a, arg_3.b, u_input.b.x >> (47655u % 32u), max(u_input.b.x, 0i))).c));
}

fn func_6(arg_0: vec3<u32>, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = global0.x;
    global1 = Struct_2(select(vec2<u32>(0u, global1.a.x), arg_0.xx, select(vec2<bool>(func_2(global0.x).a, !global4.a), !select(vec2<bool>(arg_3.a, arg_2.a), vec2<bool>(false, arg_3.a), arg_1), true)), vec4<f32>(_wgslsmith_f_op_f32(round(arg_3.b.x)), arg_3.b.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global4.b.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1474f)), global4.b.x)), u_input.b.x, abs(global0.x));
    global4 = func_5(-1i, func_5(abs(-firstTrailingBit(1i)), func_2(-(~(-1719i))), arg_2, func_2(firstTrailingBit(~global0.x))), Struct_1(arg_3.a, arg_3.b), Struct_1(!global4.a, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(arg_3.b * vec4<f32>(1000f, 1170f, global1.b.x, global4.b.x)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(arg_3.b)), func_5(1i, arg_3, Struct_1(arg_3.a, vec4<f32>(global4.b.x, arg_2.b.x, global1.b.x, global3.x)), Struct_1(arg_2.a, vec4<f32>(arg_3.b.x, -108f, arg_2.b.x, -3323f))).b))))));
    var var_1 = func_3(func_5(global0.x & 1i, func_2(global0.x), Struct_1(false, global1.b), func_2(-30897i)), Struct_2(~arg_0.yz, global1.b, 1i, 1i));
    let var_2 = select(vec3<bool>(false, any(!select(vec4<bool>(false, arg_1, arg_3.a, arg_1), vec4<bool>(true, global4.a, arg_3.a, false), vec4<bool>(true, false, arg_1, global4.a))), all(!vec3<bool>(arg_3.a, arg_2.a, arg_1))), select(!vec3<bool>(-1733f > global3.x, true, false || arg_3.a), vec3<bool>(!(global4.a & false), true, func_2(-1i).a), select(!select(vec3<bool>(arg_1, arg_2.a, true), vec3<bool>(arg_3.a, false, false), vec3<bool>(true, arg_1, true)), !vec3<bool>(global4.a, false, false), select(vec3<bool>(arg_3.a, false, arg_2.a), select(vec3<bool>(global4.a, global4.a, arg_3.a), vec3<bool>(arg_2.a, global4.a, true), arg_3.a), !vec3<bool>(arg_2.a, arg_2.a, arg_2.a)))), select(vec3<bool>(global4.a, arg_1, !all(vec4<bool>(false, global4.a, true, false))), select(select(select(vec3<bool>(true, true, false), vec3<bool>(global4.a, global4.a, false), vec3<bool>(global4.a, true, true)), select(vec3<bool>(arg_1, true, true), vec3<bool>(false, true, arg_3.a), vec3<bool>(true, global4.a, arg_1)), vec3<bool>(false, arg_3.a, arg_2.a)), !(!vec3<bool>(true, arg_3.a, arg_3.a)), arg_2.b.x >= var_1.b.x), true));
    return Struct_1(true, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_3.b + arg_2.b) * _wgslsmith_f_op_vec4_f32(arg_2.b * vec4<f32>(-204f, 1278f, global1.b.x, arg_3.b.x))), vec4<f32>(_wgslsmith_f_op_f32(step(1022f, -988f)), arg_3.b.x, var_1.b.x, -895f))))));
}

fn func_7(arg_0: vec3<u32>, arg_1: Struct_1) -> vec2<u32> {
    var var_0 = Struct_3(_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(global0.xx, global0.yx >> (vec2<u32>(global1.a.x, 52719u) % vec2<u32>(32u))), reverseBits(u_input.b)), reverseBits(global0.xy)));
    var var_1 = arg_1;
    global2 = array<vec3<i32>, 21>();
    var var_2 = 1u;
    var var_3 = arg_1;
    return _wgslsmith_mod_vec2_u32(global1.a, vec2<u32>(max(_wgslsmith_sub_u32(arg_0.x, abs(0u)), abs(~u_input.c)), _wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(4630u, arg_0.x), vec2<u32>(4294967295u, 4294967295u)), _wgslsmith_clamp_u32(~global1.a.x, 21730u, ~arg_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1435f;
    let var_1 = func_7(~(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 0u, global1.a.x) | vec3<u32>(global1.a.x, 1u, global1.a.x), ~vec3<u32>(global1.a.x, u_input.a, global1.a.x))), func_6(max(~vec3<u32>(0u, global1.a.x, u_input.a), vec3<u32>(_wgslsmith_mult_u32(global1.a.x, global1.a.x), select(1u, 0u, true), global1.a.x)), select(all(!vec3<bool>(true, global4.a, true)), (u_input.d.x > 6672u) | global4.a, !global4.a), Struct_1(true, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-global1.b), _wgslsmith_f_op_vec4_f32(-global1.b)))), func_5(-44185i, Struct_1(func_1(), _wgslsmith_div_vec4_f32(global1.b, vec4<f32>(749f, global1.b.x, global4.b.x, global1.b.x))), func_2(_wgslsmith_div_i32(-1i, u_input.b.x)), func_2(0i))));
    var_0 = -1164f;
    global0 = vec3<i32>(global1.d, firstTrailingBit(countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, u_input.b.x, global1.d, 3956i), vec4<i32>(0i, 0i, u_input.b.x, u_input.b.x)))), -(~_wgslsmith_sub_i32(_wgslsmith_sub_i32(global1.c, global0.x), 1i)));
    global1 = func_3(func_2(-1i >> (global1.a.x % 32u)), func_3(func_2(func_3(Struct_1(true, global1.b), Struct_2(vec2<u32>(u_input.d.x, 0u), vec4<f32>(-138f, 919f, 1780f, global3.x), global1.c, global1.c)).d), Struct_2(vec2<u32>(u_input.d.x, func_7(vec3<u32>(1u, 0u, 4294967295u), Struct_1(global4.a, global4.b)).x), global1.b, global1.d, min(max(0i, u_input.b.x), abs(33718i)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-504f, _wgslsmith_f_op_f32(-global1.b.x), global1.b.x)) - func_6(~_wgslsmith_sub_vec3_u32(vec3<u32>(global1.a.x, global1.a.x, 30151u), vec3<u32>(4294967295u, 7191u, 4294967295u)), (global4.a && global4.a) & global4.a, func_5(-2147483647i, Struct_1(global4.a, vec4<f32>(1000f, global4.b.x, 682f, global4.b.x)), Struct_1(global4.a, vec4<f32>(-579f, -1000f, global1.b.x, -2217f)), func_6(vec3<u32>(global1.a.x, var_1.x, 38197u), global4.a, Struct_1(global4.a, global4.b), Struct_1(false, vec4<f32>(global4.b.x, 434f, 2532f, 203f)))), func_5(firstTrailingBit(2147483647i), func_5(10097i, Struct_1(true, global4.b), Struct_1(false, vec4<f32>(1078f, 1228f, -1000f, 926f)), Struct_1(global4.a, vec4<f32>(720f, global3.x, global4.b.x, global3.x))), func_5(u_input.b.x, Struct_1(true, global1.b), Struct_1(true, vec4<f32>(global3.x, -595f, global4.b.x, 547f)), Struct_1(global4.a, vec4<f32>(-763f, -720f, -1000f, 1492f))), func_2(-17568i))).b.xyw));
}

