struct Struct_1 {
    a: f32,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<bool, 25>;

var<private> global2: Struct_1 = Struct_1(-304f, -33952i, true);

var<private> global3: Struct_1 = Struct_1(150f, -11456i, true);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<i32>) -> bool {
    let var_0 = Struct_2(all(vec4<bool>(select(global1[_wgslsmith_index_u32(~29616u, 25u)], true, global2.c), all(vec2<bool>(true, global2.c)), any(select(vec2<bool>(global1[_wgslsmith_index_u32(1u, 25u)], false), vec2<bool>(global3.c, global1[_wgslsmith_index_u32(u_input.a.x, 25u)]), vec2<bool>(global1[_wgslsmith_index_u32(1u, 25u)], global2.c))), false)), Struct_1(_wgslsmith_f_op_f32(-784f * _wgslsmith_f_op_f32(-global3.a)), global2.b, true), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(u_input.a.x, countOneBits(reverseBits(u_input.a.x))), firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.zy)) ^ 4294967295u, _wgslsmith_sub_u32(~_wgslsmith_mult_u32(u_input.a.x, 47116u), u_input.a.x)), firstLeadingBit(vec4<i32>(arg_0.x, global2.b, -1i, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(global2.b, arg_0.x), 63030i, -2412i << (1u % 32u)))));
    let var_1 = all(vec3<bool>(true, !(~4294967295u >= _wgslsmith_sub_u32(var_0.c, u_input.a.x)), all(select(!vec2<bool>(global1[_wgslsmith_index_u32(var_0.c, 25u)], var_0.a), select(vec2<bool>(true, false), vec2<bool>(global1[_wgslsmith_index_u32(0u, 25u)], var_0.b.c), vec2<bool>(false, false)), vec2<bool>(true, false)))));
    let var_2 = var_0;
    var var_3 = ~_wgslsmith_sub_vec3_u32(~(~u_input.a), ~(~_wgslsmith_sub_vec3_u32(u_input.a, u_input.a)));
    var var_4 = all(vec4<bool>(!(!var_0.a), !var_2.a, select(true, ~18809u != var_3.x, select(!global2.c, global2.c, global1[_wgslsmith_index_u32(38403u, 25u)] & false)), true));
    return true;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1) -> f32 {
    var var_0 = Struct_2(func_3(~firstTrailingBit(vec3<i32>(-369i, 31718i, -24891i) | vec3<i32>(arg_1.b, arg_0.x, -15795i))), arg_1, 0u, ((vec4<i32>(-1i) * -vec4<i32>(0i, -918i, -26804i, arg_0.x)) | _wgslsmith_div_vec4_i32(select(vec4<i32>(-3634i, global2.b, 2147483647i, -2147483647i), vec4<i32>(-2147483647i, -37387i, 1i, global3.b), vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 25u)], false, false)), select(vec4<i32>(2147483647i, 2147483647i, 29104i, global3.b), vec4<i32>(global3.b, global2.b, global2.b, global2.b), vec4<bool>(arg_1.c, false, global3.c, arg_1.c)))) << (~vec4<u32>(~u_input.a.x, ~u_input.a.x, 35864u, 0u) % vec4<u32>(32u)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.a, -1848f)) - vec2<f32>(arg_1.a, var_0.b.a)))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -222f), _wgslsmith_f_op_f32(min(-1000f, -801f)))))), ~(~(-1i)), true);
    var var_3 = 988f;
    let var_4 = ~firstLeadingBit(~(~u_input.a.x)) | ~u_input.a.x;
    return _wgslsmith_div_f32(176f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-827f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a)))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_2) -> Struct_2 {
    var var_0 = ~_wgslsmith_sub_i32(-(arg_0.d.x | _wgslsmith_mod_i32(arg_1.d.x, 0i)), global2.b);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.a, -1000f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(arg_1.d.zx, arg_2))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1019f)));
    let var_2 = ~vec3<i32>(min(~(-62315i), abs(global2.b)), arg_3.b.b, ~(~_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, global3.b), arg_1.d.xy)));
    var var_3 = select(vec2<bool>(all(!select(vec4<bool>(arg_3.a, true, global1[_wgslsmith_index_u32(arg_1.c, 25u)], true), vec4<bool>(false, global2.c, true, arg_1.a), vec4<bool>(true, arg_1.b.c, arg_1.b.c, arg_0.a))), 1006f <= _wgslsmith_f_op_f32(max(arg_3.b.a, _wgslsmith_f_op_f32(-502f * arg_2.a)))), !select(vec2<bool>(false || global1[_wgslsmith_index_u32(arg_0.c, 25u)], arg_1.a), select(select(vec2<bool>(global1[_wgslsmith_index_u32(6714u, 25u)], false), vec2<bool>(global1[_wgslsmith_index_u32(arg_1.c, 25u)], true), arg_0.b.c), vec2<bool>(arg_1.a, true), true), !all(vec4<bool>(global1[_wgslsmith_index_u32(arg_3.c, 25u)], false, false, false))), func_3(_wgslsmith_clamp_vec3_i32(-abs(arg_0.d.xzy), firstLeadingBit(arg_1.d.zxz), min(vec3<i32>(arg_3.b.b, 1i, var_2.x), firstLeadingBit(var_2)))));
    var var_4 = arg_1.c;
    return Struct_2(all(!(!select(vec2<bool>(var_3.x, false), vec2<bool>(global1[_wgslsmith_index_u32(arg_3.c, 25u)], false), global2.c))), arg_3.b, 4294967295u, ~(~reverseBits(vec4<i32>(0i, global3.b, 2147483647i, arg_1.d.x))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<u32>) -> Struct_1 {
    global1 = array<bool, 25>();
    global1 = array<bool, 25>();
    let var_0 = 0i;
    global3 = arg_0.b;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.a - -2060f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global3.a)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-761f * global2.a), 1433f)))) * 1461f);
    return arg_1.b;
}

fn func_5(arg_0: u32, arg_1: Struct_2) -> Struct_1 {
    global0 = ~(16266u >> (((arg_1.c & (arg_0 | arg_0)) ^ 1u) % 32u));
    var var_0 = select(arg_1.d.www, ~vec3<i32>(11174i, _wgslsmith_sub_i32(arg_1.b.b, arg_1.b.b), max(~global2.b, arg_1.b.b)), countOneBits(28646u) <= arg_1.c);
    var var_1 = global3.b;
    let var_2 = -(arg_1.d >> (vec4<u32>(~func_1(Struct_2(global2.c, arg_1.b, u_input.a.x, vec4<i32>(45903i, arg_1.b.b, global2.b, -5598i)), arg_1, arg_1.b, arg_1).c, arg_0 >> (_wgslsmith_dot_vec2_u32(vec2<u32>(12750u, 21048u), u_input.a.zy) % 32u), _wgslsmith_add_u32(_wgslsmith_add_u32(4294967295u, u_input.a.x), abs(arg_0)), ~0u) % vec4<u32>(32u)));
    let var_3 = func_4(arg_1, Struct_2(true, Struct_1(global2.a, -abs(var_0.x), true), countOneBits(abs(arg_1.c ^ 0u)), ~(~(var_2 >> (vec4<u32>(0u, 4294967295u, arg_0, u_input.a.x) % vec4<u32>(32u))))), vec4<u32>(arg_0, 4294967295u, ~min(0u, min(arg_1.c, u_input.a.x)), select(~31387u, 4294967295u, func_1(Struct_2(true, arg_1.b, 4294967295u, vec4<i32>(global2.b, 17039i, global2.b, arg_1.b.b)), Struct_2(false, Struct_1(global2.a, var_0.x, false), arg_1.c, vec4<i32>(-2147483647i, -2147483647i, global2.b, arg_1.d.x)), Struct_1(arg_1.b.a, -95000i, global1[_wgslsmith_index_u32(16961u, 25u)]), arg_1).b.c) | u_input.a.x));
    return func_1(Struct_2(false, var_3, 0u, ~vec4<i32>(global3.b & var_0.x, arg_1.b.b & 0i, -arg_1.d.x, max(var_3.b, global2.b))), Struct_2(1u < ~_wgslsmith_add_u32(arg_1.c, 1u), func_4(func_1(Struct_2(true, var_3, 4294967295u, var_2), arg_1, var_3, arg_1), arg_1, firstTrailingBit(~vec4<u32>(u_input.a.x, arg_0, 1u, arg_1.c))), max(4294967295u, u_input.a.x), firstLeadingBit(arg_1.d)), func_1(func_1(arg_1, Struct_2(var_3.c, Struct_1(global2.a, 1i, global3.c), 1u, arg_1.d << (vec4<u32>(arg_1.c, 8911u, arg_0, 4294967295u) % vec4<u32>(32u))), arg_1.b, func_1(arg_1, arg_1, func_4(Struct_2(false, arg_1.b, u_input.a.x, arg_1.d), arg_1, vec4<u32>(4294967295u, u_input.a.x, 4294967295u, u_input.a.x)), arg_1)), arg_1, Struct_1(_wgslsmith_f_op_f32(362f + _wgslsmith_div_f32(arg_1.b.a, 1000f)), min(_wgslsmith_mult_i32(1i, arg_1.d.x), -15559i), any(select(vec3<bool>(true, global2.c, arg_1.a), vec3<bool>(true, true, true), vec3<bool>(true, true, arg_1.b.c)))), func_1(func_1(Struct_2(false, Struct_1(513f, global3.b, global3.c), 83091u, vec4<i32>(1i, global2.b, 38778i, 1i)), Struct_2(global2.c, Struct_1(global3.a, -22906i, false), arg_0, vec4<i32>(0i, -1i, arg_1.d.x, -18786i)), func_1(Struct_2(false, Struct_1(-175f, -48958i, arg_1.a), 4294967295u, arg_1.d), Struct_2(var_3.c, arg_1.b, arg_0, arg_1.d), arg_1.b, Struct_2(true, Struct_1(global2.a, 5171i, false), arg_0, vec4<i32>(global2.b, -1i, 32865i, -2147483647i))).b, arg_1), func_1(func_1(Struct_2(global1[_wgslsmith_index_u32(arg_1.c, 25u)], var_3, u_input.a.x, arg_1.d), Struct_2(global1[_wgslsmith_index_u32(0u, 25u)], Struct_1(var_3.a, 1i, var_3.c), 4294967295u, arg_1.d), Struct_1(global2.a, 2147483647i, var_3.c), Struct_2(arg_1.b.c, arg_1.b, arg_0, vec4<i32>(var_3.b, global3.b, -2123i, var_2.x))), arg_1, Struct_1(global3.a, global2.b, global3.c), Struct_2(false, var_3, arg_0, var_2)), arg_1.b, Struct_2(true, func_1(Struct_2(arg_1.b.c, arg_1.b, 12325u, vec4<i32>(3058i, global2.b, var_3.b, var_2.x)), arg_1, arg_1.b, Struct_2(global2.c, Struct_1(global3.a, var_2.x, true), 45436u, vec4<i32>(44045i, 33038i, var_3.b, var_3.b))).b, _wgslsmith_dot_vec3_u32(u_input.a, u_input.a), -arg_1.d))).b, arg_1).b;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_5(14838u, Struct_2((true | select(false, false, global2.c)) | (!global2.c & true), func_4(func_1(Struct_2(global2.c, Struct_1(612f, global2.b, false), u_input.a.x, vec4<i32>(-2147483647i, global3.b, global2.b, global2.b)), Struct_2(global1[_wgslsmith_index_u32(u_input.a.x, 25u)], Struct_1(280f, -1i, false), u_input.a.x, vec4<i32>(global2.b, global3.b, global2.b, -1i)), Struct_1(-664f, -11157i, global2.c), Struct_2(global3.c, Struct_1(-695f, 2147483647i, global1[_wgslsmith_index_u32(22411u, 25u)]), 9837u, vec4<i32>(global2.b, global3.b, global2.b, 30878i))), Struct_2(true, Struct_1(global3.a, -1i, global3.c), firstLeadingBit(42030u), vec4<i32>(global3.b, -1i, 25765i, -37660i)), max(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 1u, 1u, u_input.a.x), vec4<u32>(80883u, 26391u, u_input.a.x, u_input.a.x)), ~vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x))), max(~1u, max(u_input.a.x, u_input.a.x)), vec4<i32>(-1i) * -(~vec4<i32>(51793i, global2.b, global3.b, -54902i))));
    global1 = array<bool, 25>();
    var var_0 = vec3<bool>(true, true, any(select(!select(vec2<bool>(false, false), vec2<bool>(global2.c, global3.c), true), vec2<bool>(!global3.c, true), global3.c)));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-804f, _wgslsmith_f_op_f32(round(global3.a)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-218f, -1139f)))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a, global2.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.a, global2.a)))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(750f, global2.a) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-348f, 1531f) * vec2<f32>(global2.a, 1571f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1319f, global3.a)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(global2.a)), global3.a))));
    let var_2 = func_1(Struct_2((global3.c & true) | (!global1[_wgslsmith_index_u32(u_input.a.x, 25u)] || any(vec4<bool>(true, true, true, var_0.x))), Struct_1(1447f, firstLeadingBit(abs(global2.b)), true), 1u, abs(vec4<i32>(reverseBits(-2147483647i), global3.b, global3.b, abs(-71769i)))), func_1(Struct_2(global3.c, func_1(Struct_2(global1[_wgslsmith_index_u32(4294967295u, 25u)], Struct_1(-1000f, global3.b, var_0.x), 4294967295u, vec4<i32>(-1i, global2.b, global2.b, global3.b)), func_1(Struct_2(var_0.x, Struct_1(global3.a, -1i, global1[_wgslsmith_index_u32(u_input.a.x, 25u)]), u_input.a.x, vec4<i32>(global3.b, global2.b, global3.b, 43344i)), Struct_2(true, Struct_1(var_1.x, -23293i, var_0.x), 0u, vec4<i32>(global3.b, -2147483647i, global3.b, -26986i)), Struct_1(global3.a, 1i, global2.c), Struct_2(global3.c, Struct_1(global3.a, global2.b, var_0.x), 52735u, vec4<i32>(2147483647i, global2.b, global3.b, global2.b))), Struct_1(1517f, global2.b, true), func_1(Struct_2(true, Struct_1(-716f, global2.b, true), u_input.a.x, vec4<i32>(-1i, -2147483647i, global2.b, global3.b)), Struct_2(global3.c, Struct_1(321f, global2.b, false), u_input.a.x, vec4<i32>(global3.b, global2.b, global3.b, 2147483647i)), Struct_1(global3.a, global2.b, false), Struct_2(true, Struct_1(1307f, global3.b, false), 16457u, vec4<i32>(55702i, global3.b, 2147483647i, -2147483647i)))).b, _wgslsmith_div_u32(1u >> (u_input.a.x % 32u), 0u), _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, -23949i, global3.b, global2.b), vec4<i32>(-29764i, global3.b, 1i, -1774i), ~vec4<i32>(85745i, global2.b, global3.b, 2147483647i))), Struct_2(global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), 25u)], Struct_1(global2.a, ~2147483647i, !var_0.x), u_input.a.x, ~select(vec4<i32>(global2.b, global3.b, 6133i, -21591i), vec4<i32>(global2.b, global2.b, global3.b, global2.b), false)), func_1(func_1(func_1(Struct_2(global2.c, Struct_1(global2.a, global2.b, var_0.x), u_input.a.x, vec4<i32>(global2.b, 38277i, -2147483647i, global3.b)), Struct_2(false, Struct_1(-172f, global3.b, true), 14936u, vec4<i32>(global3.b, 0i, 1i, -19407i)), Struct_1(global2.a, global2.b, global2.c), Struct_2(global1[_wgslsmith_index_u32(1u, 25u)], Struct_1(109f, -34232i, var_0.x), 2227u, vec4<i32>(global2.b, -1i, 2147483647i, global2.b))), func_1(Struct_2(false, Struct_1(1720f, 1i, var_0.x), 91276u, vec4<i32>(global3.b, global3.b, 1i, global2.b)), Struct_2(global3.c, Struct_1(global2.a, global2.b, global3.c), u_input.a.x, vec4<i32>(0i, -21615i, -98411i, global3.b)), Struct_1(global3.a, 1i, false), Struct_2(global2.c, Struct_1(global3.a, -2147483647i, global2.c), 542u, vec4<i32>(1i, global2.b, -2147483647i, global3.b))), func_4(Struct_2(global3.c, Struct_1(678f, global3.b, global2.c), u_input.a.x, vec4<i32>(global3.b, global3.b, global2.b, -13051i)), Struct_2(false, Struct_1(global3.a, global3.b, global2.c), u_input.a.x, vec4<i32>(2147483647i, global2.b, -44261i, 28390i)), vec4<u32>(31700u, u_input.a.x, 0u, u_input.a.x)), Struct_2(var_0.x, Struct_1(1142f, -1i, false), u_input.a.x, vec4<i32>(global3.b, global2.b, 5169i, 6066i))), Struct_2(true, func_1(Struct_2(global2.c, Struct_1(1156f, -29152i, global2.c), u_input.a.x, vec4<i32>(1i, global3.b, global3.b, global3.b)), Struct_2(global3.c, Struct_1(1267f, global3.b, global3.c), u_input.a.x, vec4<i32>(28259i, global2.b, -1i, global2.b)), Struct_1(-660f, global3.b, false), Struct_2(global1[_wgslsmith_index_u32(1u, 25u)], Struct_1(var_1.x, -1i, global3.c), u_input.a.x, vec4<i32>(-39964i, global3.b, global3.b, 1982i))).b, u_input.a.x, vec4<i32>(-19660i, global3.b, global2.b, global2.b)), func_5(u_input.a.x << (1u % 32u), Struct_2(global1[_wgslsmith_index_u32(39084u, 25u)], Struct_1(648f, global3.b, false), u_input.a.x, vec4<i32>(global2.b, -18217i, global3.b, 2147483647i))), Struct_2(global2.c, func_4(Struct_2(true, Struct_1(360f, global3.b, global3.c), u_input.a.x, vec4<i32>(global2.b, 2147483647i, 2147483647i, global2.b)), Struct_2(true, Struct_1(1602f, global2.b, true), 0u, vec4<i32>(-1i, 73408i, global3.b, 0i)), vec4<u32>(113196u, 1u, 1308u, u_input.a.x)), _wgslsmith_add_u32(u_input.a.x, u_input.a.x), vec4<i32>(-2147483647i, global3.b, global3.b, 13344i))).b, func_1(Struct_2(global3.a < -210f, func_5(u_input.a.x, Struct_2(global1[_wgslsmith_index_u32(8945u, 25u)], Struct_1(global2.a, -7108i, false), u_input.a.x, vec4<i32>(global2.b, -4943i, global2.b, global2.b))), ~4294967295u, abs(vec4<i32>(17256i, global2.b, 29591i, -2147483647i))), func_1(func_1(Struct_2(global2.c, Struct_1(-196f, -2147483647i, global3.c), 26695u, vec4<i32>(-12164i, 2147483647i, global3.b, global2.b)), Struct_2(global1[_wgslsmith_index_u32(u_input.a.x, 25u)], Struct_1(-905f, global3.b, false), u_input.a.x, vec4<i32>(global2.b, global2.b, global2.b, 2147483647i)), Struct_1(763f, global3.b, global1[_wgslsmith_index_u32(u_input.a.x, 25u)]), Struct_2(true, Struct_1(global3.a, global3.b, var_0.x), u_input.a.x, vec4<i32>(global3.b, -2147483647i, 48082i, 81446i))), Struct_2(true, Struct_1(global2.a, 1i, global2.c), u_input.a.x, vec4<i32>(-27756i, global2.b, global3.b, global3.b)), func_5(94344u, Struct_2(true, Struct_1(248f, global2.b, true), 0u, vec4<i32>(16659i, 0i, 92266i, 2147483647i))), Struct_2(false, Struct_1(global2.a, global3.b, global3.c), u_input.a.x, vec4<i32>(global2.b, -2147483647i, global3.b, -42448i))), Struct_1(var_1.x, reverseBits(global2.b), true), func_1(func_1(Struct_2(var_0.x, Struct_1(global2.a, -1i, global1[_wgslsmith_index_u32(u_input.a.x, 25u)]), 1u, vec4<i32>(-16553i, global3.b, global2.b, global3.b)), Struct_2(global1[_wgslsmith_index_u32(u_input.a.x, 25u)], Struct_1(-607f, global2.b, global3.c), 4294967295u, vec4<i32>(-20655i, 7342i, global3.b, global2.b)), Struct_1(452f, global2.b, true), Struct_2(global2.c, Struct_1(global2.a, global2.b, var_0.x), 56051u, vec4<i32>(global2.b, 29010i, global3.b, global3.b))), func_1(Struct_2(var_0.x, Struct_1(global2.a, global3.b, true), u_input.a.x, vec4<i32>(-8614i, 0i, global3.b, -2147483647i)), Struct_2(false, Struct_1(612f, global2.b, true), 0u, vec4<i32>(1i, 1i, global2.b, 6784i)), Struct_1(-436f, -2147483647i, true), Struct_2(false, Struct_1(-1170f, -786i, global1[_wgslsmith_index_u32(u_input.a.x, 25u)]), 8544u, vec4<i32>(-20209i, 10196i, global2.b, -1i))), Struct_1(-1647f, global3.b, global1[_wgslsmith_index_u32(u_input.a.x, 25u)]), Struct_2(global1[_wgslsmith_index_u32(u_input.a.x, 25u)], Struct_1(var_1.x, global2.b, var_0.x), 0u, vec4<i32>(-23410i, global3.b, global3.b, -17177i))))), Struct_1(1f, global3.b, global3.c), Struct_2(func_4(Struct_2(true, func_1(Struct_2(global3.c, Struct_1(global3.a, global3.b, true), 0u, vec4<i32>(global2.b, 4680i, 1i, 0i)), Struct_2(false, Struct_1(-1239f, global2.b, false), 51109u, vec4<i32>(global2.b, 1i, -63153i, global3.b)), Struct_1(387f, -2147483647i, false), Struct_2(global2.c, Struct_1(global2.a, global3.b, global3.c), 4294967295u, vec4<i32>(global2.b, -1i, global2.b, global3.b))).b, _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(1u, u_input.a.x, u_input.a.x)), reverseBits(vec4<i32>(2147483647i, -7466i, global3.b, -2147483647i))), Struct_2(global2.c, Struct_1(var_1.x, -2147483647i, global2.c), 1u, _wgslsmith_sub_vec4_i32(vec4<i32>(global2.b, global3.b, 1i, 2147483647i), vec4<i32>(global3.b, -12154i, global2.b, 19776i))), max(vec4<u32>(4294967295u, 0u, 44964u, u_input.a.x), vec4<u32>(u_input.a.x, 1u, 33955u, u_input.a.x)) & ~vec4<u32>(u_input.a.x, u_input.a.x, 41431u, 13746u)).c, func_5(abs(71349u), Struct_2(global3.c, func_1(Struct_2(var_0.x, Struct_1(-388f, -2147483647i, global3.c), u_input.a.x, vec4<i32>(1i, global3.b, -2147483647i, global3.b)), Struct_2(var_0.x, Struct_1(-601f, -9653i, true), u_input.a.x, vec4<i32>(global2.b, global3.b, global3.b, 28711i)), Struct_1(var_1.x, global2.b, true), Struct_2(global1[_wgslsmith_index_u32(93326u, 25u)], Struct_1(global2.a, 2147483647i, true), 96232u, vec4<i32>(-43115i, global2.b, global3.b, -20934i))).b, u_input.a.x & 26076u, min(vec4<i32>(global2.b, global3.b, 0i, global3.b), vec4<i32>(-2147483647i, 60650i, global3.b, global2.b)))), u_input.a.x, vec4<i32>(_wgslsmith_sub_i32(1i, global3.b), select(10624i, _wgslsmith_mult_i32(global2.b, -28699i), 367f >= global3.a), ~firstTrailingBit(-41307i), _wgslsmith_add_i32(-2147483647i, global2.b)))).d;
    let var_3 = var_1.x;
    var var_4 = func_4(func_1(func_1(Struct_2(true, func_4(Struct_2(false, Struct_1(var_1.x, 56637i, false), 18963u, vec4<i32>(global3.b, 1i, global3.b, -1i)), Struct_2(true, Struct_1(500f, 1i, global3.c), 77111u, vec4<i32>(global2.b, global2.b, 9748i, var_2.x)), vec4<u32>(u_input.a.x, 4294967295u, 5500u, u_input.a.x)), u_input.a.x, -vec4<i32>(-64890i, 32268i, global3.b, 0i)), Struct_2(!var_0.x, Struct_1(1332f, -2147483647i, global1[_wgslsmith_index_u32(4294967295u, 25u)]), _wgslsmith_div_u32(1u, 44969u), _wgslsmith_mult_vec4_i32(vec4<i32>(var_2.x, global2.b, 36043i, global3.b), vec4<i32>(var_2.x, global3.b, -19070i, -2147483647i))), func_5(func_1(Struct_2(false, Struct_1(var_1.x, -15264i, true), 14820u, var_2), Struct_2(global2.c, Struct_1(-913f, var_2.x, var_0.x), 41676u, var_2), Struct_1(-156f, -2147483647i, var_0.x), Struct_2(global3.c, Struct_1(1033f, global3.b, global1[_wgslsmith_index_u32(1u, 25u)]), 132240u, vec4<i32>(0i, 33075i, var_2.x, 21665i))).c, Struct_2(true, Struct_1(var_1.x, -4440i, global1[_wgslsmith_index_u32(4294967295u, 25u)]), u_input.a.x, var_2)), Struct_2(!var_0.x, Struct_1(global3.a, -13554i, true), 0u, select(vec4<i32>(-28398i, -14229i, -2147483647i, global3.b), var_2, vec4<bool>(global3.c, true, false, false)))), func_1(func_1(Struct_2(global3.c, Struct_1(global2.a, var_2.x, true), 16484u, vec4<i32>(global2.b, global3.b, 21667i, global2.b)), Struct_2(global1[_wgslsmith_index_u32(u_input.a.x, 25u)], Struct_1(-625f, 1i, true), 1u, var_2), Struct_1(271f, -2147483647i, global1[_wgslsmith_index_u32(1u, 25u)]), Struct_2(var_0.x, Struct_1(-588f, -1i, false), 61506u, var_2)), Struct_2(all(vec3<bool>(false, false, false)), Struct_1(global2.a, 1i, var_0.x), 0u, -vec4<i32>(0i, var_2.x, global2.b, var_2.x)), func_5(1u, Struct_2(global1[_wgslsmith_index_u32(u_input.a.x, 25u)], Struct_1(var_1.x, global2.b, var_0.x), u_input.a.x, vec4<i32>(2147483647i, -65166i, -43134i, global3.b))), func_1(Struct_2(false, Struct_1(global2.a, global2.b, true), 27826u, vec4<i32>(global3.b, global3.b, var_2.x, var_2.x)), func_1(Struct_2(false, Struct_1(global3.a, var_2.x, true), 26399u, vec4<i32>(global2.b, 2147483647i, -2147483647i, var_2.x)), Struct_2(false, Struct_1(-509f, 22023i, true), 62308u, var_2), Struct_1(global2.a, var_2.x, var_0.x), Struct_2(global3.c, Struct_1(global3.a, 51696i, true), u_input.a.x, vec4<i32>(global2.b, 2147483647i, global3.b, -45296i))), func_4(Struct_2(var_0.x, Struct_1(453f, -451i, false), u_input.a.x, var_2), Struct_2(global3.c, Struct_1(global3.a, var_2.x, false), 4294967295u, vec4<i32>(global3.b, 54146i, var_2.x, -17987i)), vec4<u32>(41496u, 1u, u_input.a.x, 0u)), func_1(Struct_2(true, Struct_1(global3.a, var_2.x, global1[_wgslsmith_index_u32(4294967295u, 25u)]), u_input.a.x, vec4<i32>(1i, global3.b, var_2.x, var_2.x)), Struct_2(global2.c, Struct_1(var_1.x, 46081i, var_0.x), 1u, vec4<i32>(global2.b, var_2.x, global2.b, var_2.x)), Struct_1(-1003f, 2147483647i, global1[_wgslsmith_index_u32(1u, 25u)]), Struct_2(false, Struct_1(global2.a, 2147483647i, global1[_wgslsmith_index_u32(u_input.a.x, 25u)]), 1u, var_2)))), Struct_1(var_1.x, 1i, func_4(func_1(Struct_2(global3.c, Struct_1(var_1.x, 52304i, false), u_input.a.x, var_2), Struct_2(false, Struct_1(-1000f, var_2.x, true), u_input.a.x, var_2), Struct_1(global2.a, global2.b, true), Struct_2(global2.c, Struct_1(var_1.x, 0i, var_0.x), 1u, var_2)), Struct_2(global3.c, Struct_1(global2.a, 14582i, global1[_wgslsmith_index_u32(u_input.a.x, 25u)]), 1u, var_2), _wgslsmith_mult_vec4_u32(vec4<u32>(39944u, u_input.a.x, 4807u, 0u), vec4<u32>(4294967295u, u_input.a.x, 11365u, 47092u))).c), func_1(func_1(func_1(Struct_2(global3.c, Struct_1(global3.a, 65393i, global1[_wgslsmith_index_u32(0u, 25u)]), u_input.a.x, vec4<i32>(1i, 2147483647i, -49839i, -48379i)), Struct_2(true, Struct_1(global3.a, 79343i, true), u_input.a.x, vec4<i32>(var_2.x, 15709i, var_2.x, global2.b)), Struct_1(1235f, -2147483647i, global2.c), Struct_2(false, Struct_1(-212f, global2.b, global3.c), 1u, var_2)), Struct_2(global1[_wgslsmith_index_u32(1u, 25u)], Struct_1(1653f, 2147483647i, global3.c), 9157u, vec4<i32>(global2.b, 10907i, -28463i, -33779i)), Struct_1(-2846f, global3.b, var_0.x), Struct_2(false, Struct_1(global2.a, -33842i, global1[_wgslsmith_index_u32(u_input.a.x, 25u)]), 4294967295u, var_2)), Struct_2(all(vec3<bool>(global3.c, false, global2.c)), Struct_1(global3.a, var_2.x, var_0.x), _wgslsmith_dot_vec2_u32(u_input.a.xz, vec2<u32>(18780u, u_input.a.x)), vec4<i32>(-1i, 0i, global3.b, global3.b)), Struct_1(global2.a, 1i, true), Struct_2(!global2.c, func_1(Struct_2(true, Struct_1(850f, 0i, var_0.x), u_input.a.x, var_2), Struct_2(true, Struct_1(var_1.x, -1i, var_0.x), 1u, vec4<i32>(var_2.x, 22678i, var_2.x, 2147483647i)), Struct_1(global3.a, 27380i, true), Struct_2(global2.c, Struct_1(var_1.x, var_2.x, global1[_wgslsmith_index_u32(4294967295u, 25u)]), 4353u, vec4<i32>(global3.b, 22260i, 2147483647i, var_2.x))).b, select(u_input.a.x, u_input.a.x, true), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, global2.b, global2.b, global2.b), vec4<i32>(var_2.x, -1i, -3594i, global3.b))))), Struct_2(((global3.b | var_2.x) <= select(var_2.x, -51389i, global3.c)) & !any(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 25u)], false)), func_5(~(~78u), Struct_2(true, Struct_1(var_1.x, 1i, true), u_input.a.x, ~var_2)), _wgslsmith_mult_u32(u_input.a.x, u_input.a.x), var_2), ~(~(~_wgslsmith_add_vec4_u32(vec4<u32>(100948u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x)))));
    var var_5 = func_1(Struct_2(all(!vec4<bool>(var_4.c, var_0.x, false, false)), func_1(Struct_2(var_4.c, func_4(Struct_2(global2.c, Struct_1(-610f, global2.b, var_4.c), 4294967295u, vec4<i32>(global2.b, global2.b, -82253i, -14116i)), Struct_2(false, Struct_1(-601f, -17444i, false), u_input.a.x, vec4<i32>(global2.b, -51828i, global3.b, var_2.x)), vec4<u32>(43442u, u_input.a.x, u_input.a.x, u_input.a.x)), 1u, vec4<i32>(var_2.x, -2147483647i, 13647i, var_4.b)), func_1(func_1(Struct_2(global2.c, Struct_1(global2.a, var_4.b, false), u_input.a.x, vec4<i32>(-2147483647i, 0i, -25997i, var_2.x)), Struct_2(true, Struct_1(var_4.a, global2.b, global1[_wgslsmith_index_u32(52988u, 25u)]), 54182u, vec4<i32>(var_2.x, 5560i, -3350i, 2147483647i)), Struct_1(-973f, global3.b, true), Struct_2(false, Struct_1(global3.a, var_4.b, true), 22953u, vec4<i32>(6127i, -1i, 21069i, -1i))), func_1(Struct_2(global1[_wgslsmith_index_u32(u_input.a.x, 25u)], Struct_1(1401f, 33833i, true), u_input.a.x, vec4<i32>(-1i, -12032i, -2190i, var_4.b)), Struct_2(true, Struct_1(global3.a, -1i, var_0.x), 58024u, var_2), Struct_1(global3.a, -16242i, global1[_wgslsmith_index_u32(20488u, 25u)]), Struct_2(global1[_wgslsmith_index_u32(u_input.a.x, 25u)], Struct_1(447f, global2.b, true), 0u, var_2)), Struct_1(global3.a, global3.b, global3.c), func_1(Struct_2(true, Struct_1(-1424f, var_4.b, global1[_wgslsmith_index_u32(u_input.a.x, 25u)]), u_input.a.x, var_2), Struct_2(global3.c, Struct_1(-825f, 2147483647i, global1[_wgslsmith_index_u32(u_input.a.x, 25u)]), 0u, var_2), Struct_1(822f, -19281i, false), Struct_2(false, Struct_1(695f, -7237i, global3.c), 9263u, vec4<i32>(1i, -57021i, global3.b, 14680i)))), func_5(4294967295u, func_1(Struct_2(true, Struct_1(298f, 13202i, global1[_wgslsmith_index_u32(4294967295u, 25u)]), u_input.a.x, var_2), Struct_2(true, Struct_1(-547f, var_4.b, var_0.x), u_input.a.x, vec4<i32>(81051i, global3.b, -7318i, -1i)), Struct_1(2071f, var_2.x, global1[_wgslsmith_index_u32(u_input.a.x, 25u)]), Struct_2(global3.c, Struct_1(621f, 0i, var_0.x), u_input.a.x, var_2))), func_1(Struct_2(false, Struct_1(var_4.a, 2147483647i, global2.c), 1u, vec4<i32>(0i, -2147483647i, global3.b, -1534i)), Struct_2(false, Struct_1(global3.a, global3.b, global3.c), 1u, vec4<i32>(global2.b, global2.b, var_4.b, var_2.x)), func_5(u_input.a.x, Struct_2(false, Struct_1(-544f, -1i, true), 72469u, var_2)), func_1(Struct_2(false, Struct_1(global3.a, 24096i, false), 1u, vec4<i32>(1i, 25745i, var_4.b, var_2.x)), Struct_2(global3.c, Struct_1(-806f, global2.b, var_4.c), u_input.a.x, var_2), Struct_1(global3.a, var_2.x, global1[_wgslsmith_index_u32(4294967295u, 25u)]), Struct_2(false, Struct_1(1000f, 7488i, true), 59284u, vec4<i32>(global2.b, global2.b, 4281i, global2.b))))).b, u_input.a.x, ~var_2), func_1(Struct_2(true, Struct_1(var_4.a, _wgslsmith_add_i32(global2.b, global2.b), false), _wgslsmith_mod_u32(u_input.a.x, 52273u) ^ u_input.a.x, vec4<i32>(0i, func_5(u_input.a.x, Struct_2(true, Struct_1(658f, 8098i, false), u_input.a.x, var_2)).b, 13970i, 2147483647i)), Struct_2((global2.b << (59498u % 32u)) <= -global3.b, Struct_1(var_4.a, global2.b, true), 4186u, ~(vec4<i32>(1i, 1i, -46018i, -7157i) & var_2)), func_4(func_1(Struct_2(var_0.x, Struct_1(var_4.a, -1i, true), u_input.a.x, vec4<i32>(global3.b, -35990i, var_2.x, global3.b)), Struct_2(true, Struct_1(var_4.a, global2.b, global3.c), u_input.a.x, vec4<i32>(var_2.x, var_2.x, global3.b, -1i)), func_4(Struct_2(false, Struct_1(-495f, global3.b, global2.c), 33278u, vec4<i32>(-44188i, -1i, global2.b, global2.b)), Struct_2(var_0.x, Struct_1(global3.a, -2147483647i, var_4.c), 1u, vec4<i32>(global2.b, var_2.x, global2.b, 33379i)), vec4<u32>(u_input.a.x, u_input.a.x, 0u, 38009u)), func_1(Struct_2(global2.c, Struct_1(-1519f, var_4.b, global3.c), 0u, vec4<i32>(var_2.x, global2.b, var_2.x, -2147483647i)), Struct_2(var_0.x, Struct_1(var_1.x, global3.b, var_4.c), 1u, vec4<i32>(global2.b, var_4.b, 34403i, var_4.b)), Struct_1(1444f, 1i, var_4.c), Struct_2(false, Struct_1(-1024f, 15264i, true), u_input.a.x, var_2))), func_1(Struct_2(false, Struct_1(var_4.a, 0i, false), 11660u, var_2), func_1(Struct_2(true, Struct_1(-425f, var_4.b, global1[_wgslsmith_index_u32(39200u, 25u)]), 18723u, vec4<i32>(global3.b, var_4.b, 1i, 0i)), Struct_2(global2.c, Struct_1(-419f, -2147483647i, true), u_input.a.x, vec4<i32>(var_4.b, -2147483647i, -2147483647i, var_4.b)), Struct_1(global2.a, 0i, true), Struct_2(var_0.x, Struct_1(-718f, global2.b, true), u_input.a.x, vec4<i32>(17821i, -72431i, global2.b, -5917i))), func_4(Struct_2(var_0.x, Struct_1(374f, var_4.b, global1[_wgslsmith_index_u32(12354u, 25u)]), u_input.a.x, var_2), Struct_2(global1[_wgslsmith_index_u32(u_input.a.x, 25u)], Struct_1(var_4.a, -2147483647i, true), u_input.a.x, vec4<i32>(global3.b, 0i, -48894i, -224i)), vec4<u32>(u_input.a.x, 0u, u_input.a.x, 0u)), func_1(Struct_2(true, Struct_1(global3.a, -24837i, global1[_wgslsmith_index_u32(u_input.a.x, 25u)]), u_input.a.x, vec4<i32>(global2.b, 2147483647i, 2147483647i, -389i)), Struct_2(false, Struct_1(var_4.a, var_4.b, false), u_input.a.x, var_2), Struct_1(1000f, 14907i, false), Struct_2(false, Struct_1(1849f, 2147483647i, false), 0u, vec4<i32>(-21819i, 0i, var_4.b, var_4.b)))), select(vec4<u32>(u_input.a.x, 26967u, 109552u, 1u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), false) << (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), func_1(func_1(func_1(Struct_2(true, Struct_1(529f, -22352i, var_0.x), u_input.a.x, vec4<i32>(45812i, 1i, 6972i, global3.b)), Struct_2(true, Struct_1(var_1.x, 23006i, true), u_input.a.x, var_2), Struct_1(-2412f, 78753i, false), Struct_2(false, Struct_1(var_4.a, -58995i, global2.c), 4294967295u, vec4<i32>(10311i, global3.b, var_4.b, var_4.b))), func_1(Struct_2(var_0.x, Struct_1(-2656f, -1i, false), u_input.a.x, vec4<i32>(-51621i, var_2.x, -882i, 21200i)), Struct_2(global2.c, Struct_1(-162f, global3.b, var_4.c), 10463u, vec4<i32>(global2.b, global3.b, var_4.b, global2.b)), Struct_1(global2.a, 9982i, var_4.c), Struct_2(true, Struct_1(var_4.a, global3.b, global1[_wgslsmith_index_u32(u_input.a.x, 25u)]), u_input.a.x, var_2)), Struct_1(var_4.a, var_2.x, global2.c), func_1(Struct_2(true, Struct_1(-974f, 1i, var_4.c), 0u, vec4<i32>(2147483647i, -2147483647i, -2147483647i, -2147483647i)), Struct_2(true, Struct_1(-763f, 0i, false), 44061u, vec4<i32>(0i, -1i, 0i, 11766i)), Struct_1(var_1.x, -16190i, global2.c), Struct_2(global3.c, Struct_1(-953f, global3.b, global3.c), 0u, var_2))), func_1(func_1(Struct_2(true, Struct_1(var_1.x, -2147483647i, false), 1u, vec4<i32>(global3.b, 47757i, var_2.x, 0i)), Struct_2(false, Struct_1(1000f, 1i, global2.c), u_input.a.x, var_2), Struct_1(global3.a, global3.b, var_0.x), Struct_2(var_4.c, Struct_1(-815f, global2.b, global2.c), u_input.a.x, vec4<i32>(33936i, 2147483647i, -6291i, var_4.b))), Struct_2(var_4.c, Struct_1(var_1.x, var_4.b, var_4.c), 4294967295u, var_2), func_5(4294967295u, Struct_2(true, Struct_1(1605f, -14125i, global2.c), u_input.a.x, var_2)), Struct_2(var_0.x, Struct_1(1000f, 17940i, global3.c), 1u, vec4<i32>(-9338i, var_2.x, -2147483647i, 19467i))), Struct_1(func_4(Struct_2(false, Struct_1(461f, var_4.b, true), 4294967295u, vec4<i32>(-24421i, 0i, 24956i, var_4.b)), Struct_2(false, Struct_1(-225f, 0i, global3.c), u_input.a.x, vec4<i32>(52919i, -22267i, 2147483647i, -31024i)), vec4<u32>(u_input.a.x, 57418u, u_input.a.x, u_input.a.x)).a, 1i, func_5(64733u, Struct_2(var_0.x, Struct_1(-1093f, 25130i, false), u_input.a.x, vec4<i32>(2147483647i, -22578i, var_2.x, 1i))).c), Struct_2(!global3.c, func_5(14475u, Struct_2(var_4.c, Struct_1(1702f, -29677i, global2.c), 0u, vec4<i32>(var_2.x, 29889i, global2.b, 1i))), u_input.a.x, var_2 & var_2))), Struct_1(1556f, firstTrailingBit(var_4.b | ~var_2.x), func_5(_wgslsmith_mod_u32(1336u, u_input.a.x & u_input.a.x), func_1(Struct_2(global2.c, Struct_1(-1209f, 35197i, false), u_input.a.x, var_2), func_1(Struct_2(global2.c, Struct_1(global2.a, global2.b, false), 46916u, var_2), Struct_2(var_4.c, Struct_1(global3.a, 65574i, true), 9474u, vec4<i32>(global3.b, -39215i, global2.b, -54861i)), Struct_1(-1268f, global2.b, true), Struct_2(false, Struct_1(var_4.a, global2.b, true), 4294967295u, var_2)), Struct_1(global3.a, global2.b, false), func_1(Struct_2(var_0.x, Struct_1(-1386f, var_4.b, true), 0u, var_2), Struct_2(global1[_wgslsmith_index_u32(1u, 25u)], Struct_1(global2.a, global2.b, var_4.c), u_input.a.x, vec4<i32>(16113i, -1i, 1i, global3.b)), Struct_1(879f, 37285i, var_0.x), Struct_2(true, Struct_1(-676f, 7430i, false), 1u, var_2)))).c), func_1(func_1(Struct_2(-29279i > var_2.x, Struct_1(var_1.x, var_4.b, true), 1u, var_2), func_1(Struct_2(var_4.c, Struct_1(var_1.x, 2147483647i, var_4.c), 90394u, var_2), func_1(Struct_2(global3.c, Struct_1(var_4.a, 2147483647i, false), 4294967295u, var_2), Struct_2(global1[_wgslsmith_index_u32(u_input.a.x, 25u)], Struct_1(-1782f, -2147483647i, false), u_input.a.x, var_2), Struct_1(2625f, global3.b, false), Struct_2(var_0.x, Struct_1(var_1.x, -44642i, global3.c), 63897u, var_2)), func_4(Struct_2(false, Struct_1(-445f, var_2.x, global2.c), u_input.a.x, vec4<i32>(-49854i, -1i, global3.b, -26205i)), Struct_2(global2.c, Struct_1(var_1.x, 1i, var_4.c), u_input.a.x, vec4<i32>(var_4.b, global2.b, 0i, global3.b)), vec4<u32>(4294967295u, 38708u, 0u, 4294967295u)), Struct_2(true, Struct_1(-739f, -49942i, true), u_input.a.x, var_2)), func_4(Struct_2(global3.c, Struct_1(var_4.a, 4644i, true), u_input.a.x, var_2), Struct_2(global3.c, Struct_1(var_4.a, var_4.b, global2.c), u_input.a.x, var_2), ~vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 4294967295u)), func_1(Struct_2(false, Struct_1(var_1.x, 2147483647i, var_4.c), u_input.a.x, var_2), Struct_2(false, Struct_1(global3.a, 2147483647i, global1[_wgslsmith_index_u32(4294967295u, 25u)]), 73934u, var_2), func_1(Struct_2(true, Struct_1(-1000f, -2147483647i, var_0.x), 1u, var_2), Struct_2(var_4.c, Struct_1(global3.a, -67345i, true), 0u, vec4<i32>(global3.b, var_2.x, 17752i, var_4.b)), Struct_1(global3.a, global2.b, var_4.c), Struct_2(true, Struct_1(-1131f, 8430i, false), 29562u, vec4<i32>(-1i, -1i, var_4.b, 37955i))).b, Struct_2(global3.c, Struct_1(-948f, 46749i, false), u_input.a.x, vec4<i32>(var_2.x, global2.b, var_2.x, global2.b)))), Struct_2(!(0u > u_input.a.x), Struct_1(_wgslsmith_f_op_f32(-global3.a), max(-2147483647i, -32848i), any(vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 25u)], global2.c))), ~(~0u), var_2), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -866f), 2147483647i, !(u_input.a.x >= 0u)), Struct_2(global3.c, Struct_1(global3.a, var_4.b ^ 6670i, var_4.c), 24553u, var_2)));
    let x = u_input.a;
    s_output = StorageBuffer(global2.a, ~u_input.a.x, _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(38046u, 12945u, 1u, 4294967295u) & ~vec4<u32>(67016u, u_input.a.x, u_input.a.x, var_5.c), _wgslsmith_sub_vec4_u32(~vec4<u32>(53893u, var_5.c, u_input.a.x, 45202u), select(vec4<u32>(23715u, u_input.a.x, var_5.c, 17035u), vec4<u32>(1u, 0u, var_5.c, 3186u), vec4<bool>(var_5.b.c, var_0.x, global3.c, var_4.c)))), _wgslsmith_sub_vec4_u32(~(~vec4<u32>(77336u, u_input.a.x, var_5.c, 27054u)), ~vec4<u32>(u_input.a.x, 0u, 4294967295u, u_input.a.x)), reverseBits(vec4<u32>(~var_5.c, abs(4294967295u), _wgslsmith_clamp_u32(61138u, 12870u, var_5.c), _wgslsmith_dot_vec2_u32(vec2<u32>(var_5.c, 67396u), u_input.a.xx)))), vec4<u32>(~(~48699u), func_1(Struct_2(true, Struct_1(var_1.x, var_4.b, var_4.c), u_input.a.x, var_2), Struct_2(var_4.c, Struct_1(-1000f, global2.b, true), u_input.a.x, vec4<i32>(10816i, -1i, -31424i, -61329i)), Struct_1(1000f, 46171i, var_0.x), Struct_2(false, var_5.b, 24017u, vec4<i32>(0i, var_5.d.x, var_2.x, global3.b))).c, u_input.a.x, select(4294967295u, ~u_input.a.x, select(true, false, var_4.c))) | countOneBits(vec4<u32>(_wgslsmith_mod_u32(var_5.c, u_input.a.x), _wgslsmith_add_u32(u_input.a.x, 4294967295u), var_5.c, ~0u)));
}

