struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: i32,
    d: vec4<f32>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: u32,
    d: vec2<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: u32;

var<private> global2: array<vec4<bool>, 27>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<f32>) -> vec2<bool> {
    let var_0 = Struct_1(25743i, global0.b.x);
    let var_1 = firstLeadingBit(arg_0);
    let var_2 = Struct_1(~(global0.b.x ^ 1i), var_0.a);
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1655f) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-1967f)), arg_1.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.x), arg_1.x))));
    let var_4 = _wgslsmith_mult_vec2_u32(~arg_0.zy, ~u_input.a);
    return select(vec2<bool>(!global0.a, true), select(!(!vec2<bool>(false, global0.a)), !select(select(vec2<bool>(false, global0.a), vec2<bool>(true, global0.a), global0.a), !vec2<bool>(global0.a, true), true), !global0.a), !(!(true || (global0.b.x > var_2.a))));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: vec3<f32>) -> i32 {
    global2 = array<vec4<bool>, 27>();
    let var_0 = _wgslsmith_f_op_f32(round(arg_2.x));
    global2 = array<vec4<bool>, 27>();
    return arg_1.b.x;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_4, arg_3: i32) -> vec3<i32> {
    var var_0 = u_input.a;
    var var_1 = Struct_3(arg_0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1086f, 1000f, 1120f, -397f), vec4<f32>(876f, arg_1, 992f, 1057f))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(arg_1, 877f), arg_1, _wgslsmith_f_op_f32(abs(2379f)), -978f))), _wgslsmith_clamp_i32(max(1i, arg_0.a), _wgslsmith_mod_i32(-40684i, reverseBits(countOneBits(global0.b.x))), max(23781i, _wgslsmith_sub_i32(-44109i, arg_3)) >> (~(~1u) % 32u)), vec4<f32>(-2096f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * 209f) - _wgslsmith_f_op_f32(min(-601f, arg_1)))), _wgslsmith_f_op_f32(arg_1 * 210f), _wgslsmith_f_op_f32(floor(1960f))));
    var var_2 = max(global0.b.x, 18548i);
    let var_3 = _wgslsmith_clamp_vec3_u32(abs(~(~(~vec3<u32>(u_input.a.x, u_input.a.x, 78635u)))), max(min(select(~vec3<u32>(var_0.x, 74688u, 4294967295u), ~vec3<u32>(arg_2.a, u_input.a.x, 63237u), any(vec2<bool>(false, global0.a))), vec3<u32>(_wgslsmith_clamp_u32(7207u, var_0.x, arg_2.a), _wgslsmith_add_u32(83519u, 0u), arg_2.a)), ~(~vec3<u32>(0u, arg_2.a, var_0.x))), max(select(~select(vec3<u32>(var_0.x, var_0.x, 1u), vec3<u32>(0u, 15468u, 1u), vec3<bool>(global0.a, global0.a, false)), select(vec3<u32>(arg_2.a, var_0.x, 38363u) ^ vec3<u32>(49579u, 2778u, 49950u), ~vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), !global0.a), global0.a), vec3<u32>(1u, 40823u, 19463u)));
    var var_4 = -12976i;
    return min(vec3<i32>(arg_0.b, ~1i, -18233i), ~abs(select(global0.b.yzz, select(global0.b.yzw, vec3<i32>(var_1.c, 2147483647i, 0i), global0.a), !global0.a)));
}

fn func_1(arg_0: u32, arg_1: vec2<bool>) -> vec3<i32> {
    var var_0 = select(func_2(~select(firstLeadingBit(vec3<u32>(arg_0, 1970u, arg_0)), vec3<u32>(arg_0, 1u, u_input.a.x), false), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(405f, 437f, 370f, -1000f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1683f, 456f, -274f, -277f))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1216f, -175f, 1169f, 240f))))))), !(!arg_1), vec2<bool>(arg_1.x, all(arg_1)));
    var var_1 = Struct_5(true);
    var var_2 = !(!any(vec2<bool>(true, true)));
    let var_3 = Struct_2(any(!(!(!arg_1))), vec4<i32>(-1i) * -_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-62466i, -2147483647i, -26793i, global0.b.x), vec4<i32>(34661i, -1i, -2147483647i, global0.b.x)), global0.b));
    return vec3<i32>(-5017i, _wgslsmith_dot_vec3_i32(~var_3.b.xwy, func_4(Struct_1(2147483647i, global0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -672f), Struct_4(max(u_input.a.x, u_input.a.x)), func_3(var_3.b.x, Struct_2(var_1.a, global0.b), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1533f, -932f, 301f), vec3<f32>(-1618f, -478f, -451f), vec3<bool>(var_3.a, var_3.a, global0.a)))))), ~(1i ^ global0.b.x));
}

fn func_5(arg_0: vec3<i32>) -> u32 {
    let var_0 = !(!(!(!vec2<bool>(global0.a, global0.a))));
    var var_1 = Struct_2(!(!all(select(var_0, vec2<bool>(global0.a, global0.a), global0.a))), select(vec4<i32>(_wgslsmith_mod_i32(arg_0.x, reverseBits(arg_0.x)), global0.b.x, 1i << (abs(u_input.a.x) % 32u), arg_0.x), ~_wgslsmith_add_vec4_i32(vec4<i32>(-1i, -2147483647i, global0.b.x, arg_0.x), vec4<i32>(4851i, 2147483647i, 1i, arg_0.x) | vec4<i32>(-2147483647i, -2147483647i, 90952i, 0i)), false));
    var var_2 = Struct_4(u_input.a.x);
    let var_3 = global0.a && any(!select(vec3<bool>(global0.a, true, false), select(vec3<bool>(global0.a, true, false), vec3<bool>(var_1.a, var_1.a, false), true), select(vec3<bool>(var_0.x, var_1.a, var_1.a), vec3<bool>(var_0.x, false, false), var_1.a)));
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1180f, 1480f)))))));
    return var_2.a;
}

fn func_6(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_3) -> Struct_4 {
    let var_0 = vec3<u32>(~(~(~firstTrailingBit(29897u))), firstLeadingBit(u_input.a.x), ~arg_1.x & u_input.a.x);
    let var_1 = !select(vec3<bool>(true, !(false | global0.a), global0.a), !select(select(vec3<bool>(true, true, global0.a), vec3<bool>(global0.a, true, false), global0.a), !vec3<bool>(global0.a, global0.a, global0.a), vec3<bool>(global0.a, true, true)), global0.a);
    global1 = 42075u;
    global1 = arg_1.x;
    let var_2 = 28389i;
    return Struct_4(countOneBits(firstTrailingBit(376u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~u_input.a);
    let var_1 = ~(global0.b.xw & reverseBits(global0.b.zw));
    var var_2 = _wgslsmith_sub_i32(~1i << (~var_0.x % 32u), 54104i | select(-(~(-2147483647i)), firstLeadingBit(global0.b.x) & global0.b.x, true));
    global2 = array<vec4<bool>, 27>();
    let var_3 = func_6(Struct_1(_wgslsmith_dot_vec3_i32(global0.b.xzx >> (vec3<u32>(var_0.x, u_input.a.x, 4294967295u) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(global0.b.xyw, vec3<i32>(var_1.x, -637i, -16537i))) ^ _wgslsmith_dot_vec3_i32(min(global0.b.xxy, global0.b.xzx), -vec3<i32>(18905i, var_1.x, -27559i)), var_1.x), _wgslsmith_mult_vec2_u32(vec2<u32>(func_5(func_1(5951u, vec2<bool>(global0.a, global0.a))), ~(~var_0.x)), _wgslsmith_mult_vec2_u32(u_input.a, ~var_0) & ~vec2<u32>(u_input.a.x, 1u)), Struct_3(Struct_1(-680i, ~(-1i ^ global0.b.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-333f, -1301f, -1893f, 942f) + vec4<f32>(421f, -705f, 986f, 1484f))), !global0.a)), 12715i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-660f, -592f, -1813f, 823f)) - vec4<f32>(389f, 1000f, 877f, 1267f)))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(45317u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -271f), -1167f)))), 4294967295u | reverseBits(abs(_wgslsmith_dot_vec2_u32(var_0, vec2<u32>(22868u, 4294967295u)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, -1038f))), 343f)), abs(vec4<i32>(func_4(Struct_1(global0.b.x, 2147483647i), 992f, Struct_4(33917u), 2147483647i).x, i32(-1i) * -14282i, _wgslsmith_add_i32(global0.b.x, 40446i), ~var_1.x)) >> (min(vec4<u32>(1u, 1u, var_0.x, 1u), _wgslsmith_sub_vec4_u32(~vec4<u32>(1u, var_3.a, var_0.x, 9445u), vec4<u32>(1u, 2268u, var_0.x, var_0.x) ^ vec4<u32>(4294967295u, 1u, 0u, var_0.x))) % vec4<u32>(32u)));
}

