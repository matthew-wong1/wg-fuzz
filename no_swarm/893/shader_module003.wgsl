struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8>;

var<private> global1: array<vec3<u32>, 21> = array<vec3<u32>, 21>(vec3<u32>(9100u, 0u, 63529u), vec3<u32>(113672u, 1u, 24322u), vec3<u32>(52576u, 3509u, 52451u), vec3<u32>(55393u, 4294967295u, 4294967295u), vec3<u32>(1u, 49135u, 1u), vec3<u32>(62502u, 23558u, 95551u), vec3<u32>(40658u, 1u, 1u), vec3<u32>(26217u, 56532u, 60712u), vec3<u32>(4294967295u, 25377u, 60096u), vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(0u, 1u, 0u), vec3<u32>(12873u, 46408u, 4294967295u), vec3<u32>(38807u, 27565u, 44273u), vec3<u32>(89694u, 1u, 16931u), vec3<u32>(1u, 0u, 1u), vec3<u32>(1u, 12802u, 0u), vec3<u32>(21128u, 4294967295u, 47059u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(0u, 0u, 44533u), vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(4294967295u, 32286u, 4294967295u));

var<private> global2: vec4<bool> = vec4<bool>(false, true, false, true);

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec2<u32> {
    var var_0 = _wgslsmith_dot_vec2_i32(u_input.a.xz, u_input.b.zz);
    let var_1 = _wgslsmith_div_i32(u_input.b.x, firstTrailingBit(_wgslsmith_mod_i32(~_wgslsmith_mult_i32(u_input.a.x, -39903i), u_input.a.x)));
    var var_2 = global0[_wgslsmith_index_u32(select(1u, _wgslsmith_mod_u32(1u, 4294967295u) ^ u_input.e.x, any(vec3<bool>(true, all(!vec2<bool>(global2.x, global2.x)), true))), 8u)];
    var var_3 = Struct_1(select(vec2<bool>(global2.x, true), !vec2<bool>(false, select(false, false, global2.x)), false));
    global2 = !select(vec4<bool>(reverseBits(16263i) < var_1, var_3.a.x, true, !any(vec3<bool>(var_3.a.x, true, true))), vec4<bool>(max(u_input.e.x, 59901u) > 84200u, var_3.a.x, var_2.a.x, var_2.a.x), vec4<bool>(!global2.x, !var_3.a.x, !(!global2.x), false));
    return ~u_input.e.zz;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: vec2<u32>, arg_3: bool) -> bool {
    let var_0 = Struct_1(select(vec2<bool>(global2.x, !global2.x), select(!vec2<bool>(arg_3, global2.x), global2.yx, u_input.c >= _wgslsmith_add_u32(arg_2.x, 0u)), !arg_3));
    return !select(select(true, arg_0.x <= arg_0.x, !select(false, arg_3, arg_3)), true, !((arg_2.x == u_input.c) || !arg_3));
}

fn func_2(arg_0: f32) -> vec2<bool> {
    global1 = array<vec3<u32>, 21>();
    global1 = array<vec3<u32>, 21>();
    global1 = array<vec3<u32>, 21>();
    var var_0 = global2.yx;
    global0 = array<Struct_1, 8>();
    return select(vec2<bool>(var_0.x, any(global2.ywy)), vec2<bool>(!(-2379f != _wgslsmith_f_op_f32(arg_0 + arg_0)), any(!(!vec4<bool>(false, var_0.x, true, var_0.x)))), true && func_4(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, u_input.d, -2147483647i), vec3<i32>(-2147483647i, u_input.b.x, u_input.d)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -440f)))), _wgslsmith_sub_vec2_u32(~u_input.e.yx, func_3()), !var_0.x));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<i32>) -> Struct_1 {
    global2 = vec4<bool>(!global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-299f))))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(905f + 681f) * _wgslsmith_f_op_f32(f32(-1f) * -864f)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(809f, 1463f)))), true, (global2.x | true) & func_4(~vec3<i32>(-11593i, u_input.d, arg_3.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1071f, -963f) + vec2<f32>(-298f, -1027f))), min(~u_input.e.zz, ~vec2<u32>(0u, 0u)), any(global2.zzy) || all(vec2<bool>(arg_2.a.x, false))));
    var var_0 = _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_div_i32(2147483647i, -1800i), -u_input.b.x, firstTrailingBit(u_input.d << (19482u % 32u)) >> (~firstTrailingBit(40066u) % 32u)), arg_3);
    var var_1 = Struct_1(select(select(vec2<bool>(all(vec3<bool>(true, false, arg_2.a.x)), false), arg_2.a, !select(vec2<bool>(true, true), vec2<bool>(true, arg_2.a.x), vec2<bool>(arg_2.a.x, arg_1.a.x))), arg_1.a, _wgslsmith_clamp_i32(-u_input.a.x, _wgslsmith_clamp_i32(arg_3.x, 27472i, arg_3.x), arg_3.x ^ 0i) < -68042i));
    global1 = array<vec3<u32>, 21>();
    global2 = !(!select(vec4<bool>(false, arg_2.a.x, false, u_input.d > u_input.b.x), vec4<bool>(var_1.a.x, !var_1.a.x, false & arg_1.a.x, var_1.a.x), any(vec4<bool>(arg_2.a.x, false, true, global2.x))));
    return arg_2;
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = 1u;
    let var_1 = func_5(select(u_input.e.zz, u_input.e.zy, select(func_2(_wgslsmith_f_op_f32(floor(491f))), global2.yw, any(global2.zy))), global0[_wgslsmith_index_u32(max(min(_wgslsmith_mult_u32(_wgslsmith_add_u32(0u, 87681u), min(83051u, 0u)), _wgslsmith_dot_vec3_u32(max(vec3<u32>(33043u, 4294967295u, arg_0), vec3<u32>(u_input.e.x, arg_0, arg_0)), vec3<u32>(32722u, u_input.e.x, 4294967295u))), arg_0), 8u)], global0[_wgslsmith_index_u32(u_input.e.x, 8u)], firstLeadingBit(u_input.a));
    global1 = array<vec3<u32>, 21>();
    let var_2 = func_5(_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(~4294967295u, firstTrailingBit(51275u)), 4294967295u), u_input.e.xx << (max(abs(u_input.e.xx), u_input.e.zy) % vec2<u32>(32u))), Struct_1(global2.yw), Struct_1(var_1.a), ((u_input.b | countOneBits(vec3<i32>(-13964i, -1i, u_input.d))) ^ _wgslsmith_clamp_vec3_i32(max(vec3<i32>(-2147483647i, 1i, u_input.d), u_input.a), -vec3<i32>(u_input.b.x, -60199i, u_input.a.x), u_input.a)) | _wgslsmith_clamp_vec3_i32(select(~vec3<i32>(u_input.a.x, u_input.b.x, -2147483647i), _wgslsmith_clamp_vec3_i32(vec3<i32>(-11858i, -43112i, u_input.d), u_input.b, vec3<i32>(-32772i, u_input.b.x, u_input.a.x)), !var_1.a.x), -vec3<i32>(-1i, 0i, u_input.d), firstTrailingBit(firstLeadingBit(u_input.a))));
    global0 = array<Struct_1, 8>();
    return global0[_wgslsmith_index_u32(arg_0, 8u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<u32>, 21>();
    let var_0 = func_1(u_input.c);
    let var_1 = u_input.a;
    var var_2 = Struct_1(!func_1(min(1u, 43716u)).a);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -368f));
    var var_4 = func_1(~min(1u, u_input.e.x));
    var var_5 = var_4.a.x;
    let var_6 = global0[_wgslsmith_index_u32(3664u, 8u)];
    let var_7 = all(global2.yyw);
    let x = u_input.a;
    s_output = StorageBuffer(-393f, _wgslsmith_clamp_i32(var_1.x, var_1.x, max(~(-11829i ^ var_1.x), -_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, 36937i, 46032i), u_input.a))), vec3<f32>(1f, 1f, 1f));
}

