struct Struct_1 {
    a: bool,
    b: f32,
    c: bool,
    d: vec2<f32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: i32 = i32(-2147483648);

var<private> global2: Struct_1;

var<private> global3: vec2<bool>;

var<private> global4: array<vec3<bool>, 24>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_2(arg_0: u32, arg_1: vec4<i32>, arg_2: Struct_1) -> Struct_1 {
    global0 = ~u_input.b;
    return arg_2;
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec3<i32>) -> u32 {
    var var_0 = func_2(31483u, max(-vec4<i32>(u_input.b, u_input.b, 914i, u_input.b) >> (vec4<u32>(firstLeadingBit(u_input.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 684u, 50254u), vec3<u32>(0u, u_input.a.x, 41474u)), ~u_input.a.x, u_input.a.x) % vec4<u32>(32u)), -countOneBits(vec4<i32>(arg_2.x, arg_2.x, arg_2.x, 1i) & vec4<i32>(44256i, arg_2.x, -37213i, u_input.b))), Struct_1(true, global2.e.x, false, _wgslsmith_f_op_vec2_f32(-vec2<f32>(668f, _wgslsmith_f_op_f32(max(684f, arg_0.b)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(654f - global2.e.x), _wgslsmith_f_op_f32(630f * 1319f)))));
    let var_1 = func_2(u_input.a.x << (firstLeadingBit(1u) % 32u), ~_wgslsmith_sub_vec4_i32(-vec4<i32>(-11103i, u_input.b, 11177i, u_input.b), vec4<i32>(1i, u_input.b, u_input.b, u_input.b)) | vec4<i32>(-countOneBits(-1i), u_input.b, 11411i, arg_2.x), func_2(_wgslsmith_add_u32(~u_input.a.x << (u_input.a.x % 32u), u_input.a.x), reverseBits(abs(vec4<i32>(u_input.b, u_input.b, arg_2.x, arg_2.x)) & select(vec4<i32>(u_input.b, u_input.b, 0i, 0i), vec4<i32>(-21556i, arg_2.x, arg_2.x, arg_2.x), vec4<bool>(var_0.c, global3.x, global3.x, true))), Struct_1(false, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(1135f, arg_0.d.x)))), true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.e.x, arg_0.e.x)), _wgslsmith_f_op_vec2_f32(-var_0.d))));
    global3 = vec2<bool>(!any(select(select(vec4<bool>(var_0.a, false, arg_0.c, false), vec4<bool>(true, false, true, arg_1), vec4<bool>(false, true, false, var_0.c)), !vec4<bool>(true, arg_1, global2.c, true), vec4<bool>(false, global3.x, var_1.a, var_1.a))), var_1.a);
    var var_2 = true == (select(var_0.c, !(u_input.a.x != u_input.a.x), true) && true);
    var_2 = any(vec4<bool>(all(vec2<bool>(76384u <= u_input.a.x, all(vec2<bool>(global3.x, true)))), all(vec3<bool>(all(vec3<bool>(true, arg_0.a, true)), !var_1.c, !var_0.c)), -max(23338i, u_input.b) == -1114i, true));
    return firstLeadingBit(0u);
}

fn func_1(arg_0: f32) -> u32 {
    var var_0 = _wgslsmith_mod_vec2_u32(u_input.a, u_input.a);
    let var_1 = func_2(var_0.x, -select(~(~vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)), (vec4<i32>(24570i, -16395i, -2147483647i, -1i) << (vec4<u32>(var_0.x, 0u, var_0.x, 1u) % vec4<u32>(32u))) | countOneBits(vec4<i32>(u_input.b, u_input.b, 26965i, u_input.b)), true), Struct_1(global2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1038f, 129f)) - _wgslsmith_f_op_f32(max(160f, 280f)))), !(u_input.b == ~50256i), global2.e, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1109f, -1799f), global2.d)) + global2.e))));
    global1 = _wgslsmith_add_i32(u_input.b, u_input.b);
    let var_2 = global2.e.x;
    var var_3 = func_2(~_wgslsmith_sub_u32(4294967295u, func_3(func_2(0u, vec4<i32>(111i, 2147483647i, u_input.b, u_input.b), var_1), global2.c, vec3<i32>(0i, 47308i, u_input.b))), countOneBits(min(_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.b, -19763i, -21655i, 33839i), vec4<i32>(1i, 0i, u_input.b, u_input.b)), ~vec4<i32>(u_input.b, -24450i, 1i, u_input.b), vec4<i32>(39360i, -1i, u_input.b, u_input.b)), vec4<i32>(1i, 0i, -2147483647i, -u_input.b))), Struct_1(var_0.x > u_input.a.x, _wgslsmith_f_op_f32(var_1.d.x + 1f), true, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1.d.x, _wgslsmith_f_op_f32(-arg_0)))), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-1151f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(296f))))));
    return abs(1u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(select(all(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, u_input.a.x), 24u)]), false, global3.x), _wgslsmith_f_op_f32(global2.b * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.d.x * 112f))))), countOneBits(func_1(_wgslsmith_f_op_f32(744f - global2.d.x))) <= u_input.a.x, vec2<f32>(609f, global2.e.x), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(416f, _wgslsmith_div_f32(1000f, -1895f))) + _wgslsmith_f_op_f32(trunc(1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global2.e.x, 483f)) + global2.d.x))));
    let var_0 = true;
    var var_1 = 4294967295u;
    let var_2 = _wgslsmith_add_i32(countOneBits(u_input.b), 2147483647i);
    var var_3 = ~u_input.a.x;
    var var_4 = 0i << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, ~(~u_input.a.x), ~u_input.a.x, func_3(Struct_1(true, -165f, true, vec2<f32>(-1165f, 982f), vec2<f32>(-1000f, -237f)), global3.x, vec3<i32>(var_2, 28717i, u_input.b)) | 0u), ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 43731u, u_input.a.x), vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 32461u, 20110u, 32360u)))) % 32u);
    var var_5 = func_2(func_1(_wgslsmith_f_op_f32(global2.b + _wgslsmith_f_op_f32(f32(-1f) * -292f))), -_wgslsmith_mod_vec4_i32(countOneBits(min(vec4<i32>(var_2, 29822i, 4474i, var_2), vec4<i32>(-2147483647i, u_input.b, 0i, -36333i))), vec4<i32>(-33587i, 1i, 2147483647i, 26767i)), func_2(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), select(vec3<u32>(u_input.a.x, 4451u, u_input.a.x), vec3<u32>(u_input.a.x, 4294967295u, 0u), global2.a), _wgslsmith_div_vec3_u32(vec3<u32>(21438u, 59618u, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))), ~vec3<u32>(u_input.a.x, 14328u, u_input.a.x)), countOneBits(max(-vec4<i32>(u_input.b, 28435i, -7962i, u_input.b), min(vec4<i32>(var_2, var_2, var_2, var_2), vec4<i32>(var_2, var_2, u_input.b, 32288i)))), func_2(_wgslsmith_mult_u32(~52899u, u_input.a.x), firstLeadingBit(vec4<i32>(21271i, var_2, var_2, -2147483647i)), Struct_1(false, _wgslsmith_f_op_f32(select(global2.d.x, global2.b, true)), global3.x != true, vec2<f32>(global2.d.x, -1061f), global2.e))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~_wgslsmith_add_vec3_i32(vec3<i32>(-979i, 25440i, u_input.b), vec3<i32>(-34688i, 0i, 18826i))));
}

