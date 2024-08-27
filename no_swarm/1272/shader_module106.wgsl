struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: Struct_1 = Struct_1(vec2<f32>(-1013f, -392f), vec3<f32>(801f, -1399f, -127f));

var<private> global2: bool;

var<private> global3: array<i32, 25> = array<i32, 25>(31659i, 1i, i32(-2147483648), 8267i, -22962i, 13540i, 1i, -32797i, 0i, 29754i, -37100i, 1i, 2147483647i, 2147483647i, -1003i, 0i, 2147483647i, -1i, 2147483647i, 0i, -40705i, -36505i, 28021i, -12424i, 1i);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: Struct_1) -> vec3<u32> {
    var var_0 = global0.xy;
    let var_1 = arg_0;
    var var_2 = true;
    var var_3 = var_1;
    var var_4 = Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(798f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x))), _wgslsmith_f_op_vec2_f32(global1.a - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.a.x, var_1.b.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-469f, global1.b.x)), select(vec2<bool>(false, true), global0.yz, false))))), vec3<f32>(var_3.b.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -405f) + var_3.a.x), -1000f)), 373f));
    return abs(~vec3<u32>(1u, 1u, 1u) ^ select(min(~vec3<u32>(24856u, 14732u, 12257u), vec3<u32>(1u, 1u, 1u)), select(vec3<u32>(1u, 1u, 1u), countOneBits(vec3<u32>(70773u, 4294967295u, 71024u)), global0.x), global0.x));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> vec3<bool> {
    global3 = array<i32, 25>();
    let var_0 = arg_3;
    let var_1 = select(vec3<bool>(any(global0.wzz), -55828i >= u_input.a.x, !(all(vec3<bool>(arg_1, global0.x, false)) | true)), vec3<bool>(false && ((false == arg_1) | select(true, false, true)), true, select(global0.x, true, 90618i < max(global3[_wgslsmith_index_u32(0u, 25u)], 50660i))), vec3<bool>(global0.x, global0.x | arg_1, max(u_input.a.x, ~u_input.a.x) <= u_input.a.x));
    global2 = !(!any(global0.wy));
    var var_2 = Struct_1(arg_0.a, vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.b.x - -554f), arg_3.a.x, false)), -731f, arg_3.a.x));
    return vec3<bool>(true, arg_1, all(select(vec3<bool>(global0.x, true, true), !select(var_1, vec3<bool>(global0.x, true, arg_1), var_1), vec3<bool>(any(vec4<bool>(var_1.x, var_1.x, var_1.x, false)), true, false && var_1.x))));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    let var_0 = arg_1;
    global3 = array<i32, 25>();
    var var_1 = reverseBits(select(abs(vec3<u32>(arg_0, 35194u, 4294967295u)) & func_2(Struct_1(arg_1.a, vec3<f32>(var_0.a.x, 1287f, -1023f))), vec3<u32>(_wgslsmith_add_u32(arg_0, 17827u), 27431u, 1u), select(func_3(Struct_1(global1.b.yz, global1.b), global0.x, arg_2, var_0), !vec3<bool>(global0.x, global0.x, global0.x), true))) & _wgslsmith_mod_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(arg_0, arg_0, arg_0) | vec3<u32>(15957u, 0u, 3473u), ~vec3<u32>(142358u, arg_0, arg_0)), countOneBits(vec3<u32>(~1u, 80727u, arg_0)));
    global0 = select(vec4<bool>(9309u >= arg_0, any(vec4<bool>(global0.x, var_1.x == 0u, !global0.x, global0.x)), true, global0.x), select(!select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(true, true, true, true), !vec4<bool>(true, false, global0.x, global0.x)), select(!(!vec4<bool>(global0.x, global0.x, true, global0.x)), vec4<bool>(all(global0.xyw), false, false, !global0.x), vec4<bool>(2147483647i >= u_input.a.x, 0u < arg_0, all(global0.xy), var_1.x <= var_1.x)), vec4<bool>(any(!vec3<bool>(false, global0.x, true)), global0.x, !global0.x, true)), vec4<bool>(var_1.x > 52997u, func_3(var_0, false, Struct_1(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1490f, var_0.b.x))), _wgslsmith_f_op_vec3_f32(arg_2.b + arg_2.b)), Struct_1(_wgslsmith_f_op_vec2_f32(-var_0.a), vec3<f32>(global1.b.x, arg_2.b.x, 548f))).x, false, global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0, 4294967295u), 25u)] >= _wgslsmith_mult_i32(_wgslsmith_mod_i32(global3[_wgslsmith_index_u32(var_1.x, 25u)], u_input.a.x), 2147483647i)));
    let var_2 = ~_wgslsmith_mult_vec4_u32(firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 4294967295u, 21480u, var_1.x), firstTrailingBit(vec4<u32>(22339u, 4294967295u, 4463u, var_1.x)))), _wgslsmith_mod_vec4_u32(countOneBits(~vec4<u32>(1588u, 1u, 4294967295u, 38820u)), vec4<u32>(arg_0 & 41461u, arg_0, firstLeadingBit(1u), ~arg_0)));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.b.x, -715f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b.x, global1.b.x) * _wgslsmith_f_op_f32(min(global1.a.x, global1.a.x))))));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: bool, arg_3: vec4<u32>) -> Struct_1 {
    global3 = array<i32, 25>();
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1.b.x, _wgslsmith_f_op_f32(ceil(arg_1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1.b.x * -413f)))), arg_1.a.x)));
    var var_1 = vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 21255u, arg_3.x), arg_3.xzy), vec3<u32>(4294967295u, 4151u, arg_3.x)) & ~_wgslsmith_mult_u32(arg_3.x, arg_3.x), arg_3.x, ~(~max(arg_3.x, 4294967295u))) >> (~arg_3.xzx % vec3<u32>(32u));
    let var_2 = Struct_1(vec2<f32>(global1.b.x, arg_0), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.a.x, 759f, -695f), arg_1.b, arg_2)), _wgslsmith_f_op_vec3_f32(select(global1.b, vec3<f32>(global1.b.x, arg_1.b.x, arg_0), vec3<bool>(true, true, true))))) * vec3<f32>(_wgslsmith_div_f32(arg_0, 504f), _wgslsmith_f_op_f32(sign(arg_1.a.x)), _wgslsmith_f_op_f32(max(var_0.x, arg_0)))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(var_0.x + -3148f), _wgslsmith_f_op_f32(max(arg_1.a.x, global1.b.x)), -1012f)))));
    let var_3 = u_input.a;
    return var_2;
}

fn func_5(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> StorageBuffer {
    let var_0 = arg_2;
    global0 = vec4<bool>(false, true, all(vec3<bool>(global0.x, true, any(!vec4<bool>(global0.x, true, global0.x, false)))), !func_3(func_4(_wgslsmith_f_op_f32(-global1.b.x), arg_2, global0.x, vec4<u32>(1u, 1u, 1u, 1u)), global0.x, Struct_1(_wgslsmith_f_op_vec2_f32(arg_0 - vec2<f32>(var_0.a.x, arg_2.b.x)), vec3<f32>(arg_2.a.x, 721f, -1128f)), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(252f, arg_2.b.x)), var_0.b)).x);
    global1 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(656f * _wgslsmith_f_op_f32(abs(arg_0.x)))), arg_2, func_3(func_4(_wgslsmith_f_op_f32(func_1(~55304u, arg_3, func_4(arg_0.x, arg_2, global0.x, vec4<u32>(0u, 0u, 1u, 1u)))), Struct_1(vec2<f32>(arg_2.a.x, -313f), _wgslsmith_f_op_vec3_f32(global1.b * vec3<f32>(409f, var_0.b.x, 108f))), select(true, true, false), vec4<u32>(1u, ~4294967295u, 1u, ~55416u)), func_3(func_4(arg_2.a.x, Struct_1(arg_0, global1.b), true, vec4<u32>(4294967295u, 41178u, 52400u, 1u)), !global0.x, func_4(-1972f, Struct_1(vec2<f32>(arg_0.x, -368f), var_0.b), global0.x, vec4<u32>(56206u, 7945u, 48110u, 86162u)), Struct_1(global1.b.xz, var_0.b)).x & any(select(vec4<bool>(true, global0.x, false, true), vec4<bool>(true, true, true, global0.x), true)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(arg_2.b.x + 1000f), _wgslsmith_f_op_f32(var_0.b.x + -282f)), arg_3.b), var_0).x, select(vec4<u32>(abs(abs(4294967295u)), select(~81764u, ~0u, true), firstTrailingBit(0u), 27561u), vec4<u32>(~(~1u), 1u, reverseBits(_wgslsmith_add_u32(42239u, 86872u)), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 93780u), vec2<u32>(1u, 4294967295u)) >> (countOneBits(0u) % 32u)), !select(vec4<bool>(global0.x, global0.x, true, global0.x), !vec4<bool>(false, false, global0.x, global0.x), global0.x & true)));
    global0 = vec4<bool>(true, any(!select(vec2<bool>(global0.x, true), global0.yx, global0.x)), any(func_3(arg_2, true, func_4(global1.a.x, func_4(var_0.a.x, arg_3, global0.x, vec4<u32>(32255u, 1u, 0u, 2385u)), all(vec4<bool>(global0.x, false, true, global0.x)), vec4<u32>(4294967295u, 0u, 50992u, 40058u)), arg_3).zx), func_3(Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-arg_0), _wgslsmith_f_op_vec2_f32(arg_3.b.xy + vec2<f32>(arg_2.a.x, 386f)))), var_0.b), true, var_0, func_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(var_0.a.x)))), var_0, global0.x, ~vec4<u32>(1u, 1u, 30827u, 27493u))).x);
    global3 = array<i32, 25>();
    return StorageBuffer(vec3<u32>(~4294967295u, _wgslsmith_dot_vec2_u32(~vec2<u32>(85491u, 1u), ~vec2<u32>(36352u, 59018u)), ~(~85315u)) << (func_2(Struct_1(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0.x, arg_2.a.x))), _wgslsmith_f_op_vec3_f32(arg_3.b + vec3<f32>(global1.a.x, arg_3.a.x, arg_3.a.x)))) % vec3<u32>(32u)), 48149u, _wgslsmith_f_op_vec3_f32(max(arg_3.b, _wgslsmith_f_op_vec3_f32(max(global1.b, var_0.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global0.x;
    let x = u_input.a;
    s_output = func_5(global1.a, max(select(_wgslsmith_add_i32(~(-31379i), u_input.a.x), _wgslsmith_dot_vec4_i32(u_input.a, u_input.a) & u_input.a.x, true), -1i), func_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1(50121u, Struct_1(vec2<f32>(global1.b.x, global1.a.x), global1.b), Struct_1(global1.a, vec3<f32>(393f, global1.b.x, -565f)))))))), Struct_1(_wgslsmith_f_op_vec2_f32(global1.b.yx - vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b.x, global1.a.x, 1551f) * _wgslsmith_f_op_vec3_f32(global1.b + global1.b))), func_3(Struct_1(vec2<f32>(global1.b.x, 1000f), _wgslsmith_div_vec3_f32(global1.b, vec3<f32>(-2390f, -1756f, -1000f))), !all(vec4<bool>(global0.x, global0.x, true, false)), Struct_1(vec2<f32>(1518f, global1.a.x), global1.b), Struct_1(vec2<f32>(1052f, global1.b.x), global1.b)).x, _wgslsmith_add_vec4_u32(vec4<u32>(~4294967295u, 1u, abs(4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(37627u, 1u, 31614u), vec3<u32>(64655u, 1u, 48840u))), vec4<u32>(0u, 1u, 1u, countOneBits(1u)))), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x))), func_4(-362f, Struct_1(vec2<f32>(1187f, 851f), global1.b), any(vec4<bool>(global0.x, false, global0.x, global0.x)), vec4<u32>(_wgslsmith_mult_u32(31061u, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(23482u, 6386u, 17515u, 0u), vec4<u32>(26257u, 36707u, 1u, 52355u)), reverseBits(7115u), _wgslsmith_div_u32(83526u, 81999u))), global0.x, vec4<u32>(72719u, func_2(func_4(global1.a.x, Struct_1(vec2<f32>(global1.a.x, global1.a.x), global1.b), false, vec4<u32>(7297u, 43428u, 29052u, 0u))).x, min(1u, 4294967295u), _wgslsmith_mult_u32(1u, 1u))));
}

