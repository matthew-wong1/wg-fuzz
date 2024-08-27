struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: Struct_2,
    d: i32,
    e: i32,
}

struct Struct_4 {
    a: i32,
    b: vec2<u32>,
    c: bool,
    d: Struct_2,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: bool = true;

var<private> global2: vec2<bool> = vec2<bool>(false, true);

var<private> global3: vec3<i32> = vec3<i32>(-1i, -10451i, -34969i);

var<private> global4: Struct_1 = Struct_1(vec4<u32>(9259u, 0u, 25166u, 0u), vec4<u32>(1u, 88968u, 44265u, 25304u), -600f);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<u32>, arg_1: bool) -> bool {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(global4.c + global4.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(725f + global4.c)))) * global4.c));
    global0 = any(!(!(!(!vec3<bool>(false, arg_1, arg_1)))));
    let var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, firstLeadingBit(global3.x), 1i), firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(global3.x, global3.x, global3.x), _wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(-6284i, -17306i, 0i)), -vec3<i32>(global3.x, 2147483647i, global3.x)))));
    global2 = !(!vec2<bool>(all(vec4<bool>(false, false, arg_1, global2.x)) == (-1000f == global4.c), true));
    var var_2 = vec2<u32>(~20383u, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.c, 1u, 42042u, arg_0.x)), ~global4.a), 4294967295u));
    return all(!select(!vec2<bool>(arg_1, false), select(vec2<bool>(arg_1, global2.x), vec2<bool>(true, true), false), true));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_4) -> vec2<bool> {
    global2 = !(!(!(!arg_3.e.zy)));
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.a.c, global4.c, 1253f, arg_0.b.a.c) + vec4<f32>(-1462f, 644f, 506f, 1111f))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.d.c.x, arg_1.c, 727f, 172f))))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1005f, arg_3.d.a.c, arg_1.c, global4.c), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_2.c.x, 812f, arg_2.a.c, -1763f), vec4<f32>(-565f, arg_2.c.x, global4.c, arg_2.a.c))), 0i != arg_0.d)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c, arg_3.d.a.c, 663f, arg_0.b.c.x)))))));
    let var_1 = Struct_2(Struct_1(vec4<u32>(1u, arg_2.a.a.x, max(1u, ~0u), ~arg_1.b.x), firstTrailingBit(vec4<u32>(~u_input.a, 4294967295u, min(arg_3.d.a.b.x, u_input.a), 78481u)), 1000f), any(select(select(!vec4<bool>(arg_3.c, true, false, true), !vec4<bool>(true, arg_3.d.b, arg_3.c, false), func_3(vec3<u32>(arg_3.d.a.b.x, 12445u, arg_2.a.a.x), global2.x)), !select(vec4<bool>(arg_0.c.b, arg_0.b.b, arg_2.b, arg_3.d.b), vec4<bool>(arg_3.e.x, global2.x, true, false), global2.x), select(!vec4<bool>(true, arg_2.b, false, false), !vec4<bool>(arg_2.b, arg_3.d.b, false, false), true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(arg_1.c)), _wgslsmith_f_op_f32(arg_0.c.c.x + -1000f))));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global4.c + -1762f), _wgslsmith_f_op_f32(-1149f * var_1.c.x)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c, 524f)) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(144f, -1161f), arg_2.c))))) + vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_3.d.c.x, arg_3.d.c.x)) + _wgslsmith_f_op_f32(1734f + 148f)))), var_1.c.x));
    global1 = false;
    return select(select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), select(arg_3.e.yx, arg_3.e.yz, true), arg_3.e.zz), vec2<bool>(var_1.b | false, true)), arg_3.e.xx, arg_3.e.yy), arg_3.e.xy, global2.x);
}

fn func_2(arg_0: u32, arg_1: Struct_2) -> vec2<i32> {
    var var_0 = func_4(Struct_3(select(select(select(vec3<bool>(true, true, arg_1.b), vec3<bool>(arg_1.b, arg_1.b, true), vec3<bool>(global2.x, global2.x, arg_1.b)), vec3<bool>(true, global2.x, global2.x), func_3(arg_1.a.a.www, global2.x)), !vec3<bool>(global2.x, false, arg_1.b), select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, global2.x), vec3<bool>(false, arg_1.b, global2.x)), select(vec3<bool>(arg_1.b, true, false), vec3<bool>(global2.x, false, true), arg_1.b), global2.x)), arg_1, arg_1, reverseBits(countOneBits(global3.x)), _wgslsmith_add_i32(_wgslsmith_mod_i32(~global3.x, _wgslsmith_mod_i32(global3.x, global3.x)), 1i)), arg_1.a, arg_1, Struct_4(-10233i, vec2<u32>(abs(_wgslsmith_mult_u32(0u, 4869u)), abs(~1u)), true, arg_1, select(select(vec3<bool>(global2.x, arg_1.b, true), !vec3<bool>(global2.x, arg_1.b, true), vec3<bool>(global2.x, false, arg_1.b)), select(vec3<bool>(true, true, global2.x), select(vec3<bool>(global2.x, true, global2.x), vec3<bool>(arg_1.b, global2.x, false), false), true), !vec3<bool>(global2.x, false, global2.x))));
    return vec2<i32>(_wgslsmith_mult_i32(select(_wgslsmith_dot_vec3_i32(min(vec3<i32>(-10425i, u_input.d, 13325i), vec3<i32>(u_input.b, -15460i, -1i)), vec3<i32>(1i, u_input.b, 0i)), 1i, true), u_input.b), _wgslsmith_add_i32(_wgslsmith_clamp_i32(-1i, _wgslsmith_clamp_i32(global3.x, global3.x, -1i << (global4.b.x % 32u)), _wgslsmith_mod_i32(_wgslsmith_sub_i32(-1i, u_input.b), -global3.x)), _wgslsmith_div_i32(-7330i, min(global3.x, -global3.x))));
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: vec3<u32>) -> bool {
    var var_0 = select(~countOneBits(vec3<u32>(arg_3.x, arg_1.a.b.x, 3507u)), _wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.c, 29415u << (u_input.c % 32u), ~49599u), ~vec3<u32>(reverseBits(u_input.a), u_input.c, ~arg_3.x)), ~(~_wgslsmith_sub_u32(0u, arg_1.a.a.x)) != ~(~global4.a.x));
    let var_1 = _wgslsmith_dot_vec4_u32(abs(firstTrailingBit(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, arg_3.x, 32732u, arg_3.x), global4.b, vec4<u32>(1u, 0u, 252u, var_0.x)))), _wgslsmith_add_vec4_u32(vec4<u32>(global4.b.x, _wgslsmith_div_u32(arg_1.a.b.x, 28905u), u_input.c, min(16845u, 29807u)), _wgslsmith_sub_vec4_u32(~arg_1.a.b, vec4<u32>(global4.b.x, arg_1.a.b.x, 1706u, 4294967295u))) | vec4<u32>(~global4.b.x, _wgslsmith_mult_u32(1u, ~arg_1.a.b.x), var_0.x & 0u, _wgslsmith_mult_u32(global4.a.x, ~arg_1.a.b.x)));
    let var_2 = max(_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(-firstLeadingBit(vec4<i32>(2147483647i, u_input.b, -6135i, -2147483647i)), abs(-vec4<i32>(global3.x, global3.x, -43616i, global3.x)), select(-vec4<i32>(-29169i, -65801i, u_input.d, 0i), ~vec4<i32>(arg_0.x, u_input.d, 3439i, -1860i), vec4<bool>(arg_2.x, false, global2.x, true))), vec4<i32>(_wgslsmith_mult_i32(2147483647i, arg_0.x), _wgslsmith_mult_i32(arg_0.x, -global3.x), (i32(-1i) * -2147483647i) | u_input.b, arg_0.x >> (max(global4.b.x, 4294967295u) % 32u))), _wgslsmith_div_vec4_i32(countOneBits(~(~vec4<i32>(1i, -15977i, arg_0.x, 2147483647i))), reverseBits(vec4<i32>(u_input.d, 34570i, global3.x, 2147483647i) | vec4<i32>(u_input.d, -1i, u_input.d, global3.x)) >> (vec4<u32>(~40680u, 1u, _wgslsmith_add_u32(u_input.c, 0u), abs(1u)) % vec4<u32>(32u))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1262f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-677f + 1180f)))) * -332f);
    let var_4 = vec4<u32>(var_1, arg_1.a.a.x, arg_3.x, 3334u);
    return global2.x;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<f32>, arg_2: vec2<f32>, arg_3: vec4<i32>) -> vec4<bool> {
    var var_0 = -(~global3.yy);
    var var_1 = Struct_4(abs(_wgslsmith_add_i32(~1i, ~u_input.b)), vec2<u32>(u_input.c, 24494u), func_5(select(func_2(global4.b.x, Struct_2(Struct_1(vec4<u32>(7006u, 0u, 90394u, 15346u), global4.a, arg_2.x), arg_0.x, vec2<f32>(global4.c, -480f))), firstTrailingBit(vec2<i32>(global3.x, 42304i)), !arg_0), Struct_2(Struct_1(~global4.b, vec4<u32>(53148u, 24133u, 1u, u_input.a) | global4.b, _wgslsmith_f_op_f32(426f + -575f)), any(!vec4<bool>(global2.x, global2.x, global2.x, true)), arg_2), !arg_0, ~global4.a.xzz), Struct_2(Struct_1(global4.a, ~select(vec4<u32>(0u, 15097u, u_input.a, 12158u), vec4<u32>(37207u, 1u, global4.a.x, global4.b.x), global2.x), arg_1.x), !arg_0.x, _wgslsmith_f_op_vec2_f32(floor(arg_2))), select(!select(select(vec3<bool>(false, true, arg_0.x), vec3<bool>(true, global2.x, global2.x), vec3<bool>(false, false, global2.x)), vec3<bool>(false, false, arg_0.x), any(arg_0)), !vec3<bool>(func_3(global4.a.ywx, true), true, true), vec3<bool>(any(arg_0), true, func_4(Struct_3(vec3<bool>(arg_0.x, false, arg_0.x), Struct_2(Struct_1(vec4<u32>(4294967295u, 1669u, global4.b.x, 0u), vec4<u32>(9022u, 1u, global4.a.x, global4.b.x), -748f), true, arg_2), Struct_2(Struct_1(global4.b, vec4<u32>(7975u, 19803u, u_input.a, u_input.a), 921f), arg_0.x, vec2<f32>(-138f, -1083f)), u_input.b, global3.x), Struct_1(vec4<u32>(global4.b.x, u_input.c, u_input.c, u_input.a), global4.a, 1102f), Struct_2(Struct_1(vec4<u32>(u_input.a, global4.a.x, 4294967295u, global4.b.x), global4.b, -1755f), global2.x, arg_2), Struct_4(2147483647i, vec2<u32>(4294967295u, global4.a.x), false, Struct_2(Struct_1(vec4<u32>(14076u, 15505u, 49389u, u_input.c), global4.b, arg_2.x), false, vec2<f32>(1000f, global4.c)), vec3<bool>(false, true, global2.x))).x)));
    var var_2 = Struct_2(Struct_1(vec4<u32>(firstLeadingBit(u_input.c), 4294967295u, ~25797u, 51730u), _wgslsmith_sub_vec4_u32(~(~vec4<u32>(u_input.c, global4.a.x, var_1.b.x, 21660u)), abs(global4.b) << (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, u_input.a, 4294967295u, global4.a.x), global4.a) % vec4<u32>(32u))), 2205f), func_4(Struct_3(var_1.e, var_1.d, Struct_2(var_1.d.a, true, vec2<f32>(-987f, var_1.d.c.x)), _wgslsmith_clamp_i32(-2147483647i & arg_3.x, ~arg_3.x, u_input.d), _wgslsmith_add_i32(-var_1.a, _wgslsmith_mod_i32(0i, var_1.a))), Struct_1(var_1.d.a.b, abs(vec4<u32>(4294967295u, u_input.a, 40396u, 1u)), _wgslsmith_f_op_f32(max(-175f, _wgslsmith_f_op_f32(step(arg_2.x, arg_2.x))))), var_1.d, Struct_4(1i & abs(arg_3.x), global4.a.wy << (vec2<u32>(0u, u_input.c) % vec2<u32>(32u)), all(var_1.e), var_1.d, var_1.e)).x, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-779f, 1830f)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d.c.x, 931f))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-931f)) * _wgslsmith_f_op_f32(arg_2.x * 872f)), var_1.d.a.c))));
    let var_3 = Struct_4(countOneBits(1i), select(var_1.b, ~(~_wgslsmith_mult_vec2_u32(var_2.a.a.wx, var_1.b)), func_4(Struct_3(vec3<bool>(global2.x, false, false), Struct_2(var_1.d.a, true, vec2<f32>(-1470f, -343f)), Struct_2(var_1.d.a, var_1.c, vec2<f32>(var_2.a.c, var_2.a.c)), var_1.a, -2147483647i), Struct_1(vec4<u32>(u_input.c, var_2.a.a.x, var_2.a.b.x, global4.b.x), var_2.a.a, -1000f), var_1.d, Struct_4(-8502i, _wgslsmith_add_vec2_u32(var_2.a.a.xw, vec2<u32>(var_2.a.b.x, u_input.c)), func_5(arg_3.zy, var_1.d, vec2<bool>(true, false), global4.b.zxz), Struct_2(var_1.d.a, global2.x, vec2<f32>(-466f, var_2.a.c)), var_1.e))), false, var_1.d, select(!var_1.e, var_1.e, select(var_1.e, select(var_1.e, var_1.e, !var_1.e), var_1.e.x)));
    var var_4 = (vec4<u32>(reverseBits(_wgslsmith_add_u32(var_2.a.a.x, 4294967295u)), select(max(u_input.c, 0u), var_1.d.a.b.x, !var_2.b), _wgslsmith_div_u32(global4.a.x, reverseBits(4294967295u)), ~0u) | vec4<u32>(global4.a.x, min(var_2.a.a.x, countOneBits(63342u)), 0u, ~var_3.d.a.b.x)) | abs(~reverseBits(min(var_2.a.a, vec4<u32>(0u, 4294967295u, global4.a.x, var_2.a.b.x))));
    return !(!(!select(!vec4<bool>(false, false, arg_0.x, false), vec4<bool>(true, true, var_2.b, true), !vec4<bool>(global2.x, true, var_2.b, arg_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(select(!vec4<bool>(true, true, true, !global2.x), func_1(select(select(vec2<bool>(global2.x, false), vec2<bool>(global2.x, global2.x), global2.x), select(vec2<bool>(true, global2.x), vec2<bool>(true, false), vec2<bool>(global2.x, true)), u_input.d <= -2147483647i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global4.c, global4.c) + vec2<f32>(299f, -1890f)) * _wgslsmith_div_vec2_f32(vec2<f32>(global4.c, global4.c), vec2<f32>(-709f, global4.c))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global4.c, -311f)))), _wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.d, global3.x, -2147483647i, u_input.b), vec4<i32>(u_input.d, -1i, global3.x, u_input.b), vec4<i32>(u_input.d, u_input.b, global3.x, -1i))), vec4<bool>(global2.x, true, true, true)));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-452f, _wgslsmith_div_f32(global4.c, global4.c)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2044f))), _wgslsmith_f_op_f32(min(global4.c, global4.c)), 1f, 1000f);
    global1 = all(vec4<bool>(global2.x, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(462f - var_1.x)) > _wgslsmith_f_op_f32(step(-274f, -279f)), global2.x));
    global2 = select(vec2<bool>(global2.x, all(vec3<bool>(false, global2.x, global2.x)) == true), vec2<bool>(true, true), false);
    var var_2 = Struct_4(10012i, global4.a.xz, !(!all(!vec3<bool>(false, true, global2.x))), Struct_2(Struct_1(vec4<u32>(1u, global4.a.x << (global4.a.x % 32u), reverseBits(0u), _wgslsmith_clamp_u32(67150u, 29607u, 33266u)), global4.b, _wgslsmith_f_op_f32(f32(-1f) * -1574f)), !func_4(Struct_3(vec3<bool>(false, true, global2.x), Struct_2(Struct_1(vec4<u32>(4294967295u, 46535u, 38513u, global4.b.x), global4.a, global4.c), global2.x, var_1.zw), Struct_2(Struct_1(global4.a, vec4<u32>(global4.a.x, global4.b.x, 49547u, 29534u), global4.c), global2.x, var_1.wy), 66354i, -2147483647i), Struct_1(global4.b, global4.a, -1061f), Struct_2(Struct_1(vec4<u32>(global4.a.x, 24558u, 0u, 4294967295u), global4.a, 819f), global2.x, var_1.wy), Struct_4(u_input.b, global4.a.ww, true, Struct_2(Struct_1(global4.b, global4.b, var_1.x), global2.x, vec2<f32>(-1073f, var_1.x)), vec3<bool>(true, false, global2.x))).x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.zy) - _wgslsmith_f_op_vec2_f32(step(var_1.yx, var_1.xx))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-var_1.xw), var_1.xy)))), !vec3<bool>(true, false, global2.x));
    var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.c, var_1.x, -882f, global4.c) * vec4<f32>(492f, var_1.x, -1532f, var_1.x)) + vec4<f32>(var_1.x, global4.c, var_2.d.c.x, var_2.d.a.c))))), vec4<f32>(1661f, -254f, _wgslsmith_f_op_f32(f32(-1f) * -664f), global4.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global4.c, 816f), var_2.d.a.c, global2.x)), reverseBits(~8522u), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global4.c)), _wgslsmith_f_op_f32(f32(-1f) * -1765f)) * global4.c), _wgslsmith_f_op_f32(-441f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.x, 1000f)) + _wgslsmith_f_op_f32(sign(global4.c)))));
}

