struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 1>;

var<private> global1: array<i32, 25> = array<i32, 25>(2147483647i, 12371i, 33059i, 52107i, 13966i, -1i, -1i, 1i, 3832i, 0i, 1i, 1i, i32(-2147483648), 22602i, 19008i, 33064i, 1i, -1i, 22110i, 44474i, 18490i, 2147483647i, 559i, -28532i, 2147483647i);

var<private> global2: f32;

var<private> global3: bool;

var<private> global4: Struct_1 = Struct_1(vec3<i32>(-828i, 32540i, 2147483647i), vec2<i32>(-3748i, 1i), true, -1732f);

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(1u, 1u)];
    var var_1 = 1u;
    var var_2 = ~(select(~u_input.c, 1u, true) << (0u % 32u));
    var var_3 = firstLeadingBit(_wgslsmith_div_vec3_u32(~((vec3<u32>(4294967295u, 42304u, u_input.c) ^ vec3<u32>(4294967295u, u_input.c, 4294967295u)) << (max(vec3<u32>(37846u, 97918u, u_input.c), vec3<u32>(u_input.c, 53294u, u_input.c)) % vec3<u32>(32u))), ~(~(vec3<u32>(u_input.c, u_input.c, 0u) | vec3<u32>(1u, 71916u, u_input.c)))));
    global4 = Struct_1(vec3<i32>(2147483647i, -global1[_wgslsmith_index_u32(4294967295u, 25u)], -((global1[_wgslsmith_index_u32(61787u, 25u)] << (0u % 32u)) >> (u_input.c % 32u))), vec2<i32>(18415i, 14968i), false, _wgslsmith_f_op_f32(select(-1807f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -324f) - _wgslsmith_f_op_f32(-global4.d))), global0[_wgslsmith_index_u32(abs(_wgslsmith_mult_u32(u_input.c, u_input.c)), 1u)] == true)));
    return var_3.x;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> vec3<bool> {
    var var_0 = 41571i << (_wgslsmith_add_u32(firstLeadingBit(func_3()), reverseBits(~7912u)) % 32u);
    let var_1 = arg_1;
    global3 = !global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(firstLeadingBit(_wgslsmith_div_u32(countOneBits(0u), _wgslsmith_add_u32(u_input.c, u_input.c))), ~_wgslsmith_mult_u32(u_input.c & 37976u, u_input.c)), 1u)];
    var var_2 = all(select(vec3<bool>(!(!global4.c), !global0[_wgslsmith_index_u32(u_input.c, 1u)], true != (u_input.c == u_input.c)), vec3<bool>(!(!var_1.c), arg_1.c, arg_0.c), select(!select(vec3<bool>(true, true, arg_1.c), vec3<bool>(false, global4.c, global4.c), vec3<bool>(true, false, true)), !select(vec3<bool>(arg_1.c, global4.c, var_1.c), vec3<bool>(var_1.c, false, false), vec3<bool>(false, true, false)), global0[_wgslsmith_index_u32(countOneBits(40320u), 1u)] && false)));
    var var_3 = vec4<u32>(u_input.c, ~max(_wgslsmith_dot_vec4_u32(vec4<u32>(56041u, 4294967295u, 25845u, u_input.c), reverseBits(vec4<u32>(62513u, 0u, 0u, u_input.c))), _wgslsmith_sub_u32(~u_input.c, u_input.c)), u_input.c, ~_wgslsmith_sub_u32(4294967295u, ~(~u_input.c)));
    return !vec3<bool>(any(vec2<bool>(true, any(vec4<bool>(arg_0.c, false, true, true)))), all(select(!vec3<bool>(global4.c, true, arg_0.c), select(vec3<bool>(global4.c, var_1.c, arg_0.c), vec3<bool>(false, true, global4.c), vec3<bool>(false, global4.c, true)), vec3<bool>(global4.c, global4.c, global0[_wgslsmith_index_u32(59783u, 1u)]))), false);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec2<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_mod_u32(0u << (abs(~u_input.c) % 32u), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.c, u_input.c, reverseBits(u_input.c)), _wgslsmith_div_vec3_u32(~vec3<u32>(u_input.c, 0u, 13397u), firstLeadingBit(vec3<u32>(1u, u_input.c, 4294967295u)))), 4112u));
    var var_1 = arg_2.x;
    let var_2 = arg_0.b.x;
    let var_3 = all(arg_1.xx);
    global1 = array<i32, 25>();
    return Struct_1(~(~arg_0.a), ~_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-13352i, 2147483647i) | vec2<i32>(var_2, 0i), arg_2 << (vec2<u32>(u_input.c, 37499u) % vec2<u32>(32u))), _wgslsmith_div_vec2_i32(arg_0.a.zz, arg_0.b ^ vec2<i32>(global4.b.x, -1i))), false, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-898f + _wgslsmith_f_op_f32(378f - arg_0.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -329f)))));
}

fn func_5(arg_0: Struct_1) -> f32 {
    var var_0 = 1u;
    global4 = arg_0;
    let var_1 = vec2<i32>(1i, firstTrailingBit(~1i));
    let var_2 = vec2<i32>(firstTrailingBit(-8538i), -(~(i32(-1i) * -10436i)));
    let var_3 = reverseBits(u_input.c);
    return arg_0.d;
}

fn func_6(arg_0: f32, arg_1: vec3<f32>, arg_2: f32, arg_3: Struct_1) -> vec4<i32> {
    var var_0 = arg_3;
    var var_1 = func_4(arg_3, !select(func_2(arg_3, arg_3), !select(vec3<bool>(false, true, var_0.c), vec3<bool>(global0[_wgslsmith_index_u32(91880u, 1u)], global4.c, true), var_0.c), vec3<bool>(func_2(arg_3, Struct_1(vec3<i32>(13787i, 0i, var_0.b.x), arg_3.b, false, -867f)).x, false, !global4.c)), vec2<i32>(global4.b.x << (1u % 32u), 1i));
    let var_2 = vec2<bool>(!(!(!var_0.c) || select(!global0[_wgslsmith_index_u32(4294967295u, 1u)], true && global0[_wgslsmith_index_u32(95674u, 1u)], !global4.c)), func_4(arg_3, func_2(Struct_1(var_0.a, u_input.b | var_0.a.zz, true, 1390f), Struct_1(vec3<i32>(var_1.b.x, 15687i, var_1.b.x) >> (vec3<u32>(u_input.c, u_input.c, 17469u) % vec3<u32>(32u)), ~vec2<i32>(var_0.a.x, 1i), true && var_0.c, _wgslsmith_f_op_f32(abs(arg_2)))), arg_3.b).c);
    global2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(sign(1f)))))), var_0.d);
    let var_3 = all(select(!select(select(vec4<bool>(global4.c, var_2.x, var_1.c, false), vec4<bool>(true, var_0.c, false, true), true), vec4<bool>(false, true, var_1.c, true), vec4<bool>(true, true, true, true)), vec4<bool>(any(!vec4<bool>(var_1.c, var_2.x, var_0.c, false)), true, var_1.c, var_0.c), !(!vec4<bool>(var_2.x, global4.c, true, global4.c))));
    return _wgslsmith_div_vec4_i32(select(vec4<i32>(1i, 1i, 1i, 1i), abs(-vec4<i32>(var_1.a.x, var_1.b.x, -2147483647i, 1i)), any(var_2)), _wgslsmith_sub_vec4_i32(select(-vec4<i32>(11471i, arg_3.a.x, u_input.a, 1i), vec4<i32>(1i, 1i, var_1.a.x, 114775i) >> (vec4<u32>(93597u, u_input.c, 1u, u_input.c) % vec4<u32>(32u)), !vec4<bool>(true, var_1.c, arg_3.c, false)), select(vec4<i32>(arg_3.a.x, u_input.b.x, 2147483647i, var_1.b.x), select(vec4<i32>(global1[_wgslsmith_index_u32(u_input.c, 25u)], -2147483647i, u_input.a, var_1.b.x), vec4<i32>(var_0.a.x, var_1.a.x, arg_3.b.x, global4.b.x), true), select(vec4<bool>(arg_3.c, var_0.c, true, true), vec4<bool>(global4.c, var_2.x, false, var_1.c), true)))) >> (min((_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, 5390u, 28881u, 14412u), vec4<u32>(31488u, 0u, 11113u, 33232u)) >> (reverseBits(vec4<u32>(63554u, u_input.c, u_input.c, 4294967295u)) % vec4<u32>(32u))) << ((_wgslsmith_mod_vec4_u32(vec4<u32>(48235u, u_input.c, u_input.c, u_input.c), vec4<u32>(u_input.c, u_input.c, 71993u, 1u)) & (vec4<u32>(26919u, u_input.c, u_input.c, 28597u) ^ vec4<u32>(u_input.c, u_input.c, 1u, 1u))) % vec4<u32>(32u)), ~_wgslsmith_mod_vec4_u32(~vec4<u32>(1u, u_input.c, 57217u, u_input.c), select(vec4<u32>(4294967295u, 1u, 37727u, 46218u), vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), false))) % vec4<u32>(32u));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1) -> bool {
    var var_0 = func_6(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1901f)), global4.d) * _wgslsmith_f_op_f32(func_5(func_4(arg_2, func_2(arg_0, arg_2), select(vec2<i32>(-2661i, u_input.a), vec2<i32>(arg_2.b.x, global1[_wgslsmith_index_u32(u_input.c, 25u)]), arg_0.c))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-580f, _wgslsmith_f_op_f32(-1162f * global4.d), _wgslsmith_f_op_f32(func_5(Struct_1(arg_2.a, arg_2.b, arg_2.c, 292f))))))), _wgslsmith_f_op_f32(arg_2.d - _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(func_4(arg_2, vec3<bool>(global4.c, global4.c, true), u_input.b).d, arg_0.d)))), func_4(Struct_1(vec3<i32>(i32(-1i) * -57812i, global1[_wgslsmith_index_u32(arg_1.x, 25u)], 4658i), -arg_0.b, ~arg_1.x < arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4.d, global4.d))), !select(!vec3<bool>(false, false, arg_2.c), vec3<bool>(false, global4.c, global0[_wgslsmith_index_u32(arg_1.x, 1u)]), false && global4.c), ~(_wgslsmith_add_vec2_i32(vec2<i32>(-40950i, arg_0.a.x), u_input.b) | ~vec2<i32>(arg_0.b.x, arg_0.a.x))));
    return arg_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.d - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.d) - _wgslsmith_f_op_f32(f32(-1f) * -859f))))));
    global0 = array<bool, 1>();
    var var_1 = func_1(Struct_1(vec3<i32>(~(u_input.b.x ^ -2147483647i), _wgslsmith_sub_i32(_wgslsmith_div_i32(0i, 14158i), 4231i), ~3650i), -vec2<i32>(firstLeadingBit(global1[_wgslsmith_index_u32(4294967295u, 25u)]), reverseBits(u_input.b.x)), true, 1024f), ~countOneBits(vec3<u32>(_wgslsmith_mult_u32(60823u, 8485u), abs(30668u), select(40861u, u_input.c, global0[_wgslsmith_index_u32(5988u, 1u)]))), Struct_1(global4.a, -vec2<i32>(global4.b.x, -1i), all(vec4<bool>(true, true, true & global0[_wgslsmith_index_u32(11398u, 1u)], false)), -1767f));
    global4 = func_4(func_4(func_4(func_4(Struct_1(vec3<i32>(global1[_wgslsmith_index_u32(23477u, 25u)], global4.a.x, 0i), vec2<i32>(10701i, global4.a.x), true, 271f), !vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 1u)], false, global4.c), firstLeadingBit(global4.b)), !vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 1u)], global0[_wgslsmith_index_u32(u_input.c, 1u)], global0[_wgslsmith_index_u32(u_input.c, 1u)]), vec2<i32>(global1[_wgslsmith_index_u32(u_input.c, 25u)], global4.a.x)), select(vec3<bool>(false & global4.c, true, all(vec4<bool>(true, true, false, global4.c))), vec3<bool>(!global0[_wgslsmith_index_u32(0u, 1u)], global0[_wgslsmith_index_u32(countOneBits(u_input.c), 1u)], any(vec2<bool>(true, false))), select(!vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.c, 1u)], false), !vec3<bool>(global0[_wgslsmith_index_u32(0u, 1u)], false, global0[_wgslsmith_index_u32(68734u, 1u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 1u)], false))), u_input.b), !vec3<bool>(true, global0[_wgslsmith_index_u32(min(reverseBits(6396u), _wgslsmith_dot_vec2_u32(vec2<u32>(37755u, u_input.c), vec2<u32>(43648u, 8970u))), 1u)], true), global4.a.yy ^ global4.a.zy);
    var_0 = _wgslsmith_f_op_f32(sign(global4.d));
    let var_2 = 62961i;
    let var_3 = func_4(Struct_1(_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(select(global4.a, global4.a, vec3<bool>(false, false, global4.c)), global4.a), countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, 2147483647i, global1[_wgslsmith_index_u32(u_input.c, 25u)]), global4.a)), min(vec3<i32>(global1[_wgslsmith_index_u32(61832u, 25u)], -2147483647i, 1i) >> (vec3<u32>(u_input.c, 1u, 27894u) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(vec3<i32>(-8429i, global4.b.x, var_2), global4.a))), vec2<i32>(-1i) * -(vec2<i32>(-24167i, 12376i) << (vec2<u32>(0u, 1u) % vec2<u32>(32u))), func_2(func_4(Struct_1(vec3<i32>(u_input.b.x, global1[_wgslsmith_index_u32(u_input.c, 25u)], -25909i), vec2<i32>(-30951i, 1i), global0[_wgslsmith_index_u32(4294967295u, 1u)], global4.d), vec3<bool>(global4.c, true, global4.c), vec2<i32>(0i, global4.b.x)), Struct_1(vec3<i32>(0i, global1[_wgslsmith_index_u32(4294967295u, 25u)], -6523i), global4.b, false, global4.d)).x != (all(vec3<bool>(true, global4.c, false)) && all(vec3<bool>(global4.c, global0[_wgslsmith_index_u32(u_input.c, 1u)], global0[_wgslsmith_index_u32(u_input.c, 1u)]))), global4.d), !(!vec3<bool>(!global4.c, true, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c, u_input.c), 1u)])), ~select(u_input.b, select(~vec2<i32>(u_input.b.x, 9113i), ~u_input.b, func_4(Struct_1(global4.a, vec2<i32>(0i, 0i), true, global4.d), vec3<bool>(global0[_wgslsmith_index_u32(28390u, 1u)], global0[_wgslsmith_index_u32(u_input.c, 1u)], global4.c), global4.b).c), !func_1(Struct_1(global4.a, global4.a.xx, true, global4.d), vec3<u32>(u_input.c, u_input.c, 0u), Struct_1(global4.a, vec2<i32>(global4.a.x, var_2), global4.c, -1108f))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(0i, _wgslsmith_clamp_i32(~23265i, _wgslsmith_mult_i32(var_2, 1i), func_6(var_3.d, vec3<f32>(158f, var_3.d, -1707f), 345f, Struct_1(vec3<i32>(-1i, -1i, 0i), vec2<i32>(3100i, -8056i), var_3.c, -125f)).x), -40235i, u_input.b.x), countOneBits(_wgslsmith_add_vec3_u32(~vec3<u32>(0u, 4294967295u, u_input.c), vec3<u32>(firstLeadingBit(u_input.c), _wgslsmith_sub_u32(20206u, u_input.c), 3389u))), vec4<i32>(_wgslsmith_dot_vec2_i32(-(~u_input.b), ~vec2<i32>(u_input.a, var_3.b.x)), ~var_3.a.x, abs(~abs(1i)), ~firstLeadingBit(reverseBits(u_input.b.x))), _wgslsmith_div_u32(abs(u_input.c), _wgslsmith_sub_u32(countOneBits(~u_input.c), ~u_input.c)));
}

