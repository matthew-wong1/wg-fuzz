struct Struct_1 {
    a: f32,
    b: u32,
    c: f32,
    d: i32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<bool>,
    c: vec4<u32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: bool;

var<private> global1: Struct_4;

var<private> global2: array<i32, 4> = array<i32, 4>(-15097i, 536i, -16483i, -48900i);

var<private> global3: Struct_1 = Struct_1(2593f, 6922u, -1763f, 23256i, vec2<i32>(2147483647i, -46022i));

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: f32, arg_3: vec3<bool>) -> bool {
    let var_0 = global3.e.x & global2[_wgslsmith_index_u32(u_input.a, 4u)];
    var var_1 = Struct_1(_wgslsmith_f_op_f32(step(global1.d.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)))), firstTrailingBit(~(1u << (arg_1.x % 32u))), 576f, 1i, vec2<i32>(2147483647i, -63197i));
    let var_2 = Struct_3(!select(vec2<bool>(select(true, false, arg_3.x), any(vec2<bool>(arg_3.x, arg_3.x))), !arg_3.yx, false));
    var var_3 = Struct_5(Struct_2(global1.a.d, _wgslsmith_clamp_vec2_u32(~arg_0.b, ~(~vec2<u32>(27700u, var_1.b)), arg_1), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1210f, var_1.c))), var_1.b, _wgslsmith_f_op_f32(max(global3.c, _wgslsmith_f_op_f32(-global1.a.a))), 1i, -abs(vec2<i32>(var_1.d, var_0)))), var_2.a, min(vec4<u32>(0u, _wgslsmith_mod_u32(u_input.a, global3.b), ~83743u, ~arg_1.x), ~vec4<u32>(1u, global1.d.b, 1u, global1.d.b)) << (vec4<u32>(0u, 0u, global3.b, _wgslsmith_mod_u32(1u, 1u)) % vec4<u32>(32u)), vec4<bool>(!(_wgslsmith_f_op_f32(-arg_2) != global1.d.c), false, true, _wgslsmith_f_op_f32(f32(-1f) * -365f) <= arg_2));
    global1 = Struct_4(Struct_1(2892f, 1u, _wgslsmith_f_op_f32(step(arg_2, _wgslsmith_f_op_f32(-589f + _wgslsmith_f_op_f32(arg_0.c.c - var_1.c)))), -33046i, var_3.a.c.e), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_3.a.c.c))), arg_2)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -676f)))), Struct_1(-848f, ~33922u, 1215f, -20263i, select(arg_0.c.e, vec2<i32>(reverseBits(var_0), -1i), vec2<bool>(arg_0.c.c <= arg_2, !var_3.b.x))));
    return var_3.b.x;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: Struct_3) -> vec3<bool> {
    global0 = any(vec4<bool>(any(!vec4<bool>(arg_3.a.x, arg_3.a.x, true, true)), arg_3.a.x, select(any(vec2<bool>(true, arg_3.a.x)), true, true), arg_3.a.x)) || !(false & func_3(arg_1, arg_1.b, global1.b, vec3<bool>(arg_3.a.x, true, false)));
    var var_0 = (global3.e.x << ((arg_1.c.b >> (abs(1u) % 32u)) % 32u)) >> (select(15671u, _wgslsmith_mod_u32(global1.d.b, arg_1.b.x), _wgslsmith_div_u32(~1u, 24175u) != _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.a.b, 0u, 1u, global1.a.b), arg_2), 4294967295u << (u_input.a % 32u), global3.b)) % 32u);
    global2 = array<i32, 4>();
    let var_1 = Struct_4(global1.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-1997f, global3.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.a))) - _wgslsmith_f_op_f32(-arg_1.c.a)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -458f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.c.c, arg_1.c.c, false)) - _wgslsmith_f_op_f32(-156f * 1973f))), 1u, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.c))))), -(i32(-1i) * -arg_0.x), _wgslsmith_sub_vec2_i32(~vec2<i32>(18996i, 0i) & ~arg_1.c.e, countOneBits(vec2<i32>(global1.d.e.x, arg_0.x)))));
    var var_2 = Struct_3(arg_3.a);
    return !(!(!vec3<bool>(arg_3.a.x, !arg_3.a.x, true)));
}

fn func_1(arg_0: Struct_3) -> Struct_4 {
    var var_0 = any(select(select(select(vec3<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x), vec3<bool>(arg_0.a.x, false, arg_0.a.x), func_2(global3.e, Struct_2(-537i, vec2<u32>(45309u, u_input.a), global1.a), vec4<u32>(123178u, 35494u, 4294967295u, global1.a.b), Struct_3(vec2<bool>(arg_0.a.x, true)))), vec3<bool>(arg_0.a.x, arg_0.a.x, true), vec3<bool>(!arg_0.a.x, -1522f < global3.c, all(vec4<bool>(arg_0.a.x, true, true, false)))), func_2(_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(global1.a.e, vec2<i32>(4819i, global1.a.e.x)), global3.e), Struct_2(-global3.d, ~vec2<u32>(32097u, global3.b), global1.d), _wgslsmith_sub_vec4_u32(~vec4<u32>(1u, 47164u, 76442u, 4294967295u), select(vec4<u32>(31989u, 13280u, 4294967295u, 4294967295u), vec4<u32>(u_input.a, 1u, global3.b, u_input.a), true)), arg_0), !(true && select(false, false, arg_0.a.x))));
    var var_1 = vec4<i32>(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(min(global1.a.e.x, global2[_wgslsmith_index_u32(44661u, 4u)]) >> (79467u % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(global1.d.b, 4u)], global3.e.x, 17684i), vec3<i32>(global2[_wgslsmith_index_u32(0u, 4u)], -32651i, 3649i))), global1.a.e), countOneBits(~global1.a.e.x), -2147483647i);
    var_0 = any(select(vec2<bool>(any(vec3<bool>(arg_0.a.x, false, arg_0.a.x)), any(select(vec3<bool>(true, arg_0.a.x, false), vec3<bool>(true, true, arg_0.a.x), false))), !func_2(global3.e, Struct_2(1i, vec2<u32>(u_input.a, u_input.a), Struct_1(2195f, u_input.a, 244f, global1.a.d, vec2<i32>(-1i, global3.e.x))), abs(vec4<u32>(0u, global1.d.b, 18294u, 26852u)), arg_0).yx, func_2(var_1.yy, Struct_2(global3.d, vec2<u32>(global1.d.b, 4294967295u) & vec2<u32>(4294967295u, global1.d.b), Struct_1(global1.b, 1u, global1.b, global2[_wgslsmith_index_u32(global1.d.b, 4u)], vec2<i32>(global2[_wgslsmith_index_u32(37916u, 4u)], global1.a.e.x))), ~vec4<u32>(541u, 21510u, u_input.a, u_input.a), Struct_3(!vec2<bool>(arg_0.a.x, arg_0.a.x))).zy));
    global1 = Struct_4(global1.d, 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f + 734f))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -106f)), ~countOneBits(~42433u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.d.a)) * _wgslsmith_f_op_f32(abs(-279f))), _wgslsmith_f_op_f32(min(-952f, -646f))), -55765i, vec2<i32>(global1.a.e.x, 10872i)));
    var_0 = func_3(Struct_2(var_1.x, _wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(global1.a.b, 31595u), vec2<u32>(global3.b, 2528u), vec2<u32>(1u, 0u)) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(global1.a.b, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 4294967295u)) % vec2<u32>(32u)), ~(~vec2<u32>(u_input.a, 1u)), vec2<u32>(reverseBits(0u), ~0u)), global1.a), ~(~vec2<u32>(global3.b >> (48170u % 32u), abs(global1.a.b))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a) * -1010f))), !vec3<bool>(!(arg_0.a.x || arg_0.a.x), 11539i < global1.a.d, true));
    return Struct_4(Struct_1(_wgslsmith_f_op_f32(-3030f + global1.c), 4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1142f)), global1.a.d, vec2<i32>(max(1i, -2147483647i), ~_wgslsmith_div_i32(6430i, -1i))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1637f)))), _wgslsmith_f_op_f32(select(global3.a, _wgslsmith_f_op_f32(global1.c + _wgslsmith_f_op_f32(-233f - -1665f)), any(func_2(vec2<i32>(global3.e.x, global1.a.e.x) >> (vec2<u32>(50816u, global1.a.b) % vec2<u32>(32u)), Struct_2(0i, vec2<u32>(1u, 59609u), global1.d), ~vec4<u32>(15409u, global3.b, 4343u, u_input.a), arg_0).xy))), global1.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(vec2<bool>(false, !(4294967295u > global1.d.b)));
    global2 = array<i32, 4>();
    global3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1267f * global1.a.a) + 321f), ~_wgslsmith_mult_u32(global1.a.b, u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1003f, _wgslsmith_f_op_f32(-global1.d.a)))), 1i, _wgslsmith_div_vec2_i32(vec2<i32>(global3.d, ~(-4896i)), global3.e));
    global1 = func_1(Struct_3(!vec2<bool>(var_0.a.x | var_0.a.x, true)));
    let var_1 = select(select(vec3<bool>(func_3(Struct_2(global2[_wgslsmith_index_u32(4294967295u, 4u)], vec2<u32>(0u, 0u), global1.d), ~vec2<u32>(4294967295u, u_input.a), -776f, vec3<bool>(var_0.a.x, false, var_0.a.x)), true, true), !vec3<bool>(!var_0.a.x, all(vec2<bool>(var_0.a.x, false)), func_3(Struct_2(-1i, vec2<u32>(global3.b, global1.a.b), global1.d), vec2<u32>(global3.b, 31181u), -967f, vec3<bool>(true, var_0.a.x, false))), !var_0.a.x || var_0.a.x), !select(select(vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x), func_2(vec2<i32>(-32596i, 1i), Struct_2(global3.d, vec2<u32>(global3.b, 1u), Struct_1(global3.a, global1.a.b, 129f, global3.e.x, global1.a.e)), vec4<u32>(global3.b, global1.a.b, global1.a.b, 18697u), Struct_3(var_0.a)), -417f != global1.d.a), select(vec3<bool>(var_0.a.x, false, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, var_0.a.x, false), true)), var_0.a.x), vec3<bool>(_wgslsmith_f_op_f32(-global3.c) < _wgslsmith_div_f32(global3.c, _wgslsmith_f_op_f32(global1.c + global1.c)), !var_0.a.x, select(false, !any(vec2<bool>(var_0.a.x, false)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global3.c));
}

