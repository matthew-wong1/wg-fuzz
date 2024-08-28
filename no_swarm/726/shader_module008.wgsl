struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-21600i, 0i);

var<private> global1: vec4<f32> = vec4<f32>(-1414f, 436f, -497f, 280f);

var<private> global2: Struct_2 = Struct_2(Struct_1(41411i), vec2<bool>(false, false), 873f, -2596f);

var<private> global3: array<bool, 13>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(~abs(u_input.b.x));
    var var_1 = Struct_1(~(i32(-1i) * -var_0.a));
    var var_2 = global2.a;
    global3 = array<bool, 13>();
    var_1 = global2.a;
    return global2.a;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> vec3<bool> {
    global0 = _wgslsmith_mod_vec2_i32(reverseBits(_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(abs(u_input.c.yw), -vec2<i32>(arg_1.a, -25415i)), select(_wgslsmith_div_vec2_i32(vec2<i32>(global0.x, arg_1.a), vec2<i32>(global2.a.a, -1i)), vec2<i32>(global2.a.a, global0.x) >> (u_input.d % vec2<u32>(32u)), arg_0.b.x))), _wgslsmith_mult_vec2_i32(firstTrailingBit(u_input.b), u_input.c.wy));
    var var_0 = global1.yyx;
    global2 = Struct_2(func_2(), select(!vec2<bool>(!global2.b.x, false), vec2<bool>(global3[_wgslsmith_index_u32(u_input.d.x, 13u)], global0.x > abs(-1i)), 1u != ~(u_input.a >> (0u % 32u))), global1.x, 721f);
    let var_1 = arg_1;
    var var_2 = vec4<bool>(any(vec4<bool>(true, true, true, true)), global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.d & u_input.d), (vec2<u32>(u_input.a, u_input.d.x) ^ u_input.d) | firstLeadingBit(u_input.d)), 13u)], any(select(!(!vec4<bool>(global3[_wgslsmith_index_u32(u_input.d.x, 13u)], true, false, arg_0.b.x)), vec4<bool>(any(vec3<bool>(true, true, false)), global3[_wgslsmith_index_u32(28126u, 13u)], all(vec2<bool>(false, false)), arg_0.c != 737f), !vec4<bool>(true, false, global2.b.x, false))), true);
    return vec3<bool>(true, global3[_wgslsmith_index_u32(14273u, 13u)], var_2.x & any(!(!var_2.zzw)));
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: bool, arg_3: vec3<bool>) -> f32 {
    var var_0 = (u_input.c >> (_wgslsmith_mod_vec4_u32(~(~vec4<u32>(u_input.d.x, 0u, u_input.a, u_input.d.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 10849u, 110258u, u_input.a), vec4<u32>(u_input.a, 1u, u_input.d.x, 1u) >> (vec4<u32>(41369u, u_input.d.x, u_input.a, u_input.a) % vec4<u32>(32u)))) % vec4<u32>(32u))) | u_input.c;
    global2 = arg_1;
    let var_1 = Struct_1(select(-1i, ~56249i, _wgslsmith_f_op_f32(-arg_1.d) < _wgslsmith_f_op_f32(max(global2.d, -265f))) | min(-2147483647i << (u_input.a % 32u), abs(arg_1.a.a)));
    global3 = array<bool, 13>();
    global0 = var_0.zz;
    return _wgslsmith_div_f32(global2.d, arg_1.c);
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>) -> Struct_2 {
    let var_0 = Struct_2(func_2(), vec2<bool>(any(!vec4<bool>(true, global2.b.x, global2.b.x, false)), true), _wgslsmith_f_op_f32(1159f - -1135f), global1.x);
    global0 = ~(-(~u_input.c.zz));
    global2 = Struct_2(Struct_1(global0.x), vec2<bool>(global2.b.x && false, false), var_0.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2440f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global2.c - var_0.c)))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_4((36202i >= u_input.c.x) || arg_1.x, var_0, true, select(!arg_1, vec3<bool>(global3[_wgslsmith_index_u32(83855u, 13u)], arg_1.x, false), func_3(Struct_2(Struct_1(global0.x), vec2<bool>(true, false), -1000f, global1.x), global2.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1174f, _wgslsmith_f_op_f32(min(global1.x, var_0.c))))))) - 1f);
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(false, var_0, select(all(vec4<bool>(true, global2.b.x, false, true)), true, global2.b.x), !vec3<bool>(var_0.b.x, true, arg_1.x)))));
    return Struct_2(func_2(), vec2<bool>(true, !global2.b.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1.x)) * _wgslsmith_f_op_f32(-215f - _wgslsmith_f_op_f32(max(global1.x, 725f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.d + -1245f) + _wgslsmith_f_op_f32(ceil(117f)))))), var_0.c);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2) -> Struct_2 {
    global0 = firstTrailingBit(vec2<i32>(-1i) * -(_wgslsmith_add_vec2_i32(u_input.e.zz, u_input.e.zy) >> (~u_input.d % vec2<u32>(32u))));
    return func_1(func_2(), vec3<bool>(select(arg_0.b.x, func_1(arg_1.a, vec3<bool>(true, arg_1.b.x, false)).b.x, global2.b.x), false, global2.b.x));
}

fn func_6(arg_0: Struct_2) -> f32 {
    global3 = array<bool, 13>();
    var var_0 = u_input.a;
    let var_1 = Struct_2(Struct_1(-1i), select(!vec2<bool>(!global3[_wgslsmith_index_u32(39185u, 13u)], !global3[_wgslsmith_index_u32(0u, 13u)]), arg_0.b, func_3(arg_0, global2.a).x), global2.c, _wgslsmith_f_op_f32(global1.x + global2.c));
    let var_2 = u_input.d;
    var var_3 = Struct_2(global2.a, vec2<bool>(true, ~var_1.a.a == _wgslsmith_mod_i32(-2147483647i, arg_0.a.a)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(global2.c)))), _wgslsmith_f_op_f32(f32(-1f) * -472f));
    return _wgslsmith_f_op_f32(sign(-199f));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -487f), _wgslsmith_f_op_f32(func_6(func_5(Struct_2(Struct_1(global2.a.a), global2.b, global1.x, 257f), Struct_2(Struct_1(-2147483647i), global2.b, 1523f, global2.c), func_1(global2.a, vec3<bool>(true, global2.b.x, false))))), global2.c, -328f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2.c, global2.d, global2.c, 812f))))), vec4<f32>(-137f, 291f, _wgslsmith_f_op_f32(f32(-1f) * -2092f), _wgslsmith_f_op_f32(global2.d - global2.d))))));
    global0 = firstTrailingBit(abs(vec2<i32>(u_input.c.x, _wgslsmith_mult_i32(44320i, u_input.e.x))));
    var var_0 = (63877u | _wgslsmith_mod_u32(~select(35687u, 4294967295u, false), 1u)) >> (_wgslsmith_dot_vec2_u32((vec2<u32>(u_input.a, u_input.a) << (u_input.d % vec2<u32>(32u))) | (_wgslsmith_mult_vec2_u32(u_input.d, u_input.d) >> (~vec2<u32>(4294967295u, 0u) % vec2<u32>(32u))), select(firstTrailingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d.x, 24629u), vec2<u32>(u_input.d.x, u_input.d.x))), vec2<u32>(abs(5359u), 4294967295u), false)) % 32u);
    let var_1 = func_5(Struct_2(global2.a, vec2<bool>(global3[_wgslsmith_index_u32(0u, 13u)], select(all(vec4<bool>(global3[_wgslsmith_index_u32(23829u, 13u)], global3[_wgslsmith_index_u32(7532u, 13u)], false, false)), any(vec2<bool>(false, global3[_wgslsmith_index_u32(17015u, 13u)])), func_3(Struct_2(Struct_1(u_input.e.x), vec2<bool>(false, global3[_wgslsmith_index_u32(u_input.d.x, 13u)]), 1000f, 2000f), Struct_1(0i)).x)), 1133f, global2.d), func_5(func_5(Struct_2(Struct_1(global2.a.a), vec2<bool>(false, false), global2.c, _wgslsmith_f_op_f32(717f + global2.c)), func_1(func_2(), vec3<bool>(false, false, true)), Struct_2(global2.a, global2.b, -395f, global1.x)), func_5(Struct_2(global2.a, global2.b, global1.x, _wgslsmith_f_op_f32(ceil(-1115f))), func_1(global2.a, vec3<bool>(global2.b.x, false, global2.b.x)), Struct_2(global2.a, func_3(Struct_2(Struct_1(1i), vec2<bool>(false, global2.b.x), global2.c, global2.d), global2.a).zz, global1.x, _wgslsmith_f_op_f32(global2.c - 613f))), Struct_2(global2.a, vec2<bool>(select(true, global2.b.x, false), func_3(Struct_2(Struct_1(u_input.b.x), global2.b, -1534f, -1909f), global2.a).x), _wgslsmith_f_op_f32(f32(-1f) * -448f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -435f)))), Struct_2(Struct_1(-2147483647i >> (u_input.d.x % 32u)), vec2<bool>(func_1(Struct_1(u_input.b.x), select(vec3<bool>(global3[_wgslsmith_index_u32(u_input.d.x, 13u)], true, global3[_wgslsmith_index_u32(49554u, 13u)]), vec3<bool>(global3[_wgslsmith_index_u32(u_input.d.x, 13u)], global3[_wgslsmith_index_u32(26273u, 13u)], global2.b.x), true)).b.x, (global0.x <= global2.a.a) && func_3(Struct_2(global2.a, vec2<bool>(global2.b.x, global2.b.x), 823f, 1196f), global2.a).x), -1199f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))).a;
    let var_2 = func_1(var_1, vec3<bool>(func_1(global2.a, func_3(Struct_2(global2.a, global2.b, 244f, global1.x), global2.a)).b.x, !global3[_wgslsmith_index_u32(reverseBits(_wgslsmith_mod_u32(u_input.a, u_input.a)), 13u)], false));
    var_0 = ~(~u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_2.d));
}

