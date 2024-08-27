struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 32>;

var<private> global1: Struct_2;

var<private> global2: array<vec4<bool>, 1>;

var<private> global3: Struct_1;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<f32>, arg_1: f32, arg_2: f32) -> vec3<i32> {
    global0 = array<f32, 32>();
    var var_0 = global3.c.x;
    global3 = Struct_1(any(select(select(!vec2<bool>(false, global3.a), vec2<bool>(true, true), global1.b.a), select(!vec2<bool>(global3.a, global3.a), !vec2<bool>(true, global1.a.a), true), !select(vec2<bool>(global1.b.a, false), vec2<bool>(false, false), false))), abs(_wgslsmith_clamp_vec4_i32(global3.b, global1.a.b, _wgslsmith_mod_vec4_i32(vec4<i32>(global1.b.b.x, global3.b.x, global1.c.b.x, global1.c.b.x) | vec4<i32>(-52866i, -19717i, global3.b.x, global3.b.x), -vec4<i32>(global1.c.b.x, global3.b.x, -1i, 0i)))), abs(_wgslsmith_mod_vec3_u32(~(~global1.a.c), global3.c)));
    var var_1 = global1.c;
    let var_2 = Struct_2(Struct_1(any(select(global2[_wgslsmith_index_u32(31231u, 1u)], select(global2[_wgslsmith_index_u32(global3.c.x, 1u)], global2[_wgslsmith_index_u32(1u, 1u)], vec4<bool>(true, global3.a, false, global3.a)), global2[_wgslsmith_index_u32(var_1.c.x, 1u)])), global1.a.b, global3.c), global1.c, global1.a, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -450f), _wgslsmith_f_op_f32(step(global1.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 32u)])))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(global1.d.x, -1634f)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 * 510f) * _wgslsmith_f_op_f32(-global1.d.x))))));
    return abs(vec3<i32>(-66201i, global3.b.x, global3.b.x));
}

fn func_2() -> Struct_1 {
    var var_0 = firstLeadingBit(countOneBits(-firstLeadingBit(_wgslsmith_sub_vec3_i32(global3.b.zxy, global3.b.xwy))));
    var_0 = _wgslsmith_div_vec3_i32(~vec3<i32>(59081i, max(var_0.x, global1.b.b.x), -var_0.x), _wgslsmith_sub_vec3_i32(global3.b.yzx, vec3<i32>(var_0.x, 2147483647i, 0i)) << ((abs(vec3<u32>(u_input.a, 49552u, global1.b.c.x)) ^ ~vec3<u32>(u_input.a, global1.a.c.x, global1.b.c.x)) % vec3<u32>(32u))) & func_3(vec2<f32>(global1.d.x, -631f), -1000f, _wgslsmith_f_op_f32(208f - _wgslsmith_f_op_f32(-global1.d.x)));
    global1 = Struct_2(global1.a, Struct_1(!any(!vec4<bool>(false, true, global3.a, false)), global1.a.b, global1.b.c), global1.a, vec4<f32>(_wgslsmith_div_f32(-1524f, 520f), global0[_wgslsmith_index_u32(~abs(global3.c.x), 32u)], 2512f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d.x))));
    var var_1 = select(vec4<bool>(select(global1.a.a, !(!global3.a), true), false == !global1.a.a, !((15431u | global3.c.x) >= ~global1.b.c.x), global1.b.a), global2[_wgslsmith_index_u32(u_input.a, 1u)], any(select(vec3<bool>(global1.a.a || false, true, true), !vec3<bool>(false, global1.c.a, global3.a), !select(vec3<bool>(false, false, true), vec3<bool>(global3.a, true, global3.a), vec3<bool>(false, true, global3.a)))));
    global1 = Struct_2(global1.c, global1.b, global1.b, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d.x)), _wgslsmith_f_op_f32(f32(-1f) * -804f), _wgslsmith_div_f32(-1299f, _wgslsmith_f_op_f32(select(-655f, -587f, global3.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(396f + global0[_wgslsmith_index_u32(global1.a.c.x, 32u)]), 640f)))));
    return global1.b;
}

fn func_1() -> vec4<bool> {
    var var_0 = Struct_2(global1.c, global1.b, func_2(), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(693f, -1000f, -197f, -1529f)), vec4<f32>(_wgslsmith_f_op_f32(458f - global0[_wgslsmith_index_u32(4294967295u, 32u)]), _wgslsmith_div_f32(-146f, global1.d.x), global1.d.x, global1.d.x), !vec4<bool>(global1.a.a, false, true, global1.c.a))))));
    global0 = array<f32, 32>();
    global1 = Struct_2(global1.a, Struct_1(true, -global1.c.b, min(var_0.b.c, var_0.a.c)), func_2(), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-global1.d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_0.d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.x, -990f, 442f, global0[_wgslsmith_index_u32(global1.b.c.x, 32u)])))))));
    let var_1 = _wgslsmith_add_i32(2147483647i, ~_wgslsmith_mod_i32(global3.b.x, firstLeadingBit(_wgslsmith_dot_vec4_i32(global1.b.b, vec4<i32>(-7726i, 17407i, global1.a.b.x, 0i)))));
    global2 = array<vec4<bool>, 1>();
    return !select(select(!vec4<bool>(false, global1.b.a, true, global1.c.a), select(select(global2[_wgslsmith_index_u32(u_input.a, 1u)], vec4<bool>(false, var_0.c.a, global3.a, true), false), global2[_wgslsmith_index_u32(~1u, 1u)], all(global2[_wgslsmith_index_u32(43964u, 1u)])), global2[_wgslsmith_index_u32(global1.b.c.x, 1u)]), !(!(!global2[_wgslsmith_index_u32(69422u, 1u)])), vec4<bool>(true, !(!global1.b.a), all(select(global2[_wgslsmith_index_u32(14963u, 1u)], vec4<bool>(global1.c.a, true, var_0.a.a, var_0.a.a), global2[_wgslsmith_index_u32(global3.c.x, 1u)])), any(global2[_wgslsmith_index_u32(~30117u, 1u)])));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.b;
    var var_1 = 1i;
    var var_2 = all(select(select(vec4<bool>(true, true, !var_0.a, false), !global2[_wgslsmith_index_u32(~u_input.a, 1u)], true), !func_1(), false));
    var var_3 = Struct_3(Struct_2(Struct_1(global3.a, countOneBits(vec4<i32>(var_0.b.x, global1.c.b.x, 17906i, global1.b.b.x)) >> (vec4<u32>(26760u, global3.c.x, global1.b.c.x, u_input.a) % vec4<u32>(32u)), var_0.c), func_2(), Struct_1(func_2().a, _wgslsmith_clamp_vec4_i32(-vec4<i32>(var_0.b.x, 45644i, 27121i, global1.b.b.x), global3.b, var_0.b), ~_wgslsmith_sub_vec3_u32(global1.a.c, vec3<u32>(22642u, global1.c.c.x, 1u))), global1.d), false);
    var var_4 = Struct_2(func_2(), func_2(), Struct_1(global1.a.a != func_2().a, -global3.b, ~(~vec3<u32>(0u, var_3.a.c.c.x, var_0.c.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_3.a.d.x, -619f, var_3.a.d.x, -662f), vec4<f32>(-324f, -960f, 1000f, 1300f), !global2[_wgslsmith_index_u32(global3.c.x, 1u)])))));
    let var_5 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(countOneBits(1u), 32u)], var_3.a.d.x)), global1.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(~4294967295u), -(~(func_2().b.x & ~global3.b.x)));
}

