struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec2<u32>,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1214f;

var<private> global1: array<Struct_1, 9>;

var<private> global2: Struct_1;

var<private> global3: Struct_1 = Struct_1(true, vec2<i32>(31556i, 1i), vec2<u32>(20794u, 4294967295u), 2147483647i);

var<private> global4: vec3<f32> = vec3<f32>(160f, -629f, -917f);

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_1(arg_0: vec2<f32>, arg_1: f32, arg_2: Struct_1) -> bool {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -742f));
    let var_0 = _wgslsmith_clamp_vec2_i32(-vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global3.d, -66322i, global2.b.x) & vec3<i32>(arg_2.b.x, global3.b.x, -26210i), vec3<i32>(-11708i, arg_2.d, arg_2.d)), -min(global2.b.x, arg_2.d)), vec2<i32>(max(-21498i, 1i), global2.d), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global2.b.x, ~2147483647i, -1i | arg_2.d), -reverseBits(vec3<i32>(2147483647i, arg_2.d, global2.d))), -1i));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(global4.x - -863f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.x * 186f))));
    var var_2 = _wgslsmith_div_i32(-1i, _wgslsmith_div_i32(~global2.d, 11190i));
    global1 = array<Struct_1, 9>();
    return true;
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1436f * global4.x) + _wgslsmith_f_op_f32(step(-1360f, global4.x)));
    return global4.x;
}

fn func_3(arg_0: vec2<u32>) -> f32 {
    let var_0 = global4.yy;
    global3 = Struct_1(select(global4.x < 1f, !(global2.d != (-6703i << (global3.c.x % 32u))), countOneBits(~global3.c.x) < abs(~arg_0.x)), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global2.d, global2.d, 2147483647i) >> (vec3<u32>(global2.c.x, u_input.b.x, 4294967295u) % vec3<u32>(32u)), countOneBits(vec3<i32>(global3.d, global2.b.x, global2.d))), ~(global2.d >> (58053u % 32u))), (_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.b.x, arg_0.x), vec2<u32>(global2.c.x, 35085u)) & u_input.a) ^ ~global2.c, _wgslsmith_dot_vec4_i32(select(vec4<i32>(2147483647i, 27694i, 40549i, 36813i), vec4<i32>(-12082i, global3.d, 1i, 2147483647i) >> (vec4<u32>(global2.c.x, arg_0.x, 4294967295u, 1u) % vec4<u32>(32u)), select(vec4<bool>(true, global3.a, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true))), -vec4<i32>(-2147483647i, -1i, global3.b.x, global3.d)) << (~global3.c.x % 32u));
    var var_1 = ~global2.c.x;
    let var_2 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(arg_0.x, 1u), ~0u), ~_wgslsmith_mult_vec2_u32(global2.c, vec2<u32>(global2.c.x, arg_0.x))), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(52680u, arg_0.x), arg_0, vec2<u32>(4294967295u, u_input.a.x)) & ~_wgslsmith_div_vec2_u32(vec2<u32>(0u, 19278u), u_input.b.yz)), 9u)];
    let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global4.zy) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global4.zx))));
    return 1000f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(1065u, 9u)];
    var var_1 = select(select(vec3<bool>(global3.a, func_1(_wgslsmith_f_op_vec2_f32(global4.zx + vec2<f32>(1127f, global4.x)), 1f, Struct_1(false, vec2<i32>(var_0.b.x, -2147483647i), vec2<u32>(global2.c.x, var_0.c.x), var_0.d)), false), vec3<bool>(true, any(!vec4<bool>(global2.a, false, true, global2.a)), _wgslsmith_f_op_f32(func_2()) >= _wgslsmith_f_op_f32(func_3(global3.c))), !(!any(vec4<bool>(var_0.a, var_0.a, var_0.a, true)))), select(select(vec3<bool>(all(vec4<bool>(var_0.a, var_0.a, true, false)), var_0.a, var_0.a), select(select(vec3<bool>(false, var_0.a, false), vec3<bool>(false, true, global2.a), var_0.a), vec3<bool>(var_0.a, global3.a, true), select(vec3<bool>(false, global2.a, var_0.a), vec3<bool>(var_0.a, global3.a, true), false)), !(!vec3<bool>(true, var_0.a, false))), vec3<bool>(var_0.a, all(vec2<bool>(true, false)), any(vec4<bool>(true, false, var_0.a, true))), select(select(select(vec3<bool>(true, false, global3.a), vec3<bool>(true, var_0.a, false), vec3<bool>(global3.a, global3.a, var_0.a)), vec3<bool>(true, true, true), true), select(select(vec3<bool>(var_0.a, false, global2.a), vec3<bool>(global3.a, var_0.a, true), vec3<bool>(var_0.a, global3.a, global3.a)), select(vec3<bool>(false, true, var_0.a), vec3<bool>(true, true, false), false), select(vec3<bool>(global3.a, false, false), vec3<bool>(false, false, true), vec3<bool>(var_0.a, var_0.a, global2.a))), vec3<bool>(true, global3.a, var_0.a || true))), select(!(!vec3<bool>(global3.a, var_0.a, var_0.a)), vec3<bool>(var_0.a, global3.a, true), global2.a));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(1f)));
    var var_2 = Struct_1(all(var_1.yx), _wgslsmith_mod_vec2_i32(min(vec2<i32>(-28262i, -1i), select(global3.b, vec2<i32>(-2147483647i, 14616i), var_1.zz)) | vec2<i32>(abs(global3.d), 0i), global3.b), ~(var_0.c & var_0.c), 1i);
    var var_3 = !select(vec2<bool>(!any(vec4<bool>(true, var_2.a, true, true)), var_1.x), !select(vec2<bool>(false, var_2.a), !var_1.xz, var_1.xx), select(var_1.zy, !select(vec2<bool>(false, global3.a), var_1.zx, vec2<bool>(false, false)), var_1.yy));
    var var_4 = !(!(!select(select(vec3<bool>(true, global2.a, global2.a), vec3<bool>(global2.a, var_2.a, true), true), select(vec3<bool>(true, false, var_2.a), vec3<bool>(global2.a, var_3.x, false), vec3<bool>(true, true, var_2.a)), vec3<bool>(true, var_3.x, var_3.x))));
    var var_5 = Struct_1(_wgslsmith_mod_i32(-global2.d, _wgslsmith_div_i32(1i, -17789i) | -var_0.b.x) > ~global2.d, _wgslsmith_div_vec2_i32(vec2<i32>(-1i, var_2.b.x), min(vec2<i32>(_wgslsmith_div_i32(1i, -2147483647i), global2.d), abs(~vec2<i32>(var_0.d, 1i)))), ~global3.c, min(~global2.d, var_0.b.x));
    var_1 = select(vec3<bool>(!(!(true & var_3.x)), var_0.a, false), vec3<bool>(var_2.a, var_4.x, var_0.c.x != (firstTrailingBit(25789u) >> (global2.c.x % 32u))), all(!select(!var_4.yy, vec2<bool>(false, var_4.x), select(vec2<bool>(false, var_0.a), var_1.zy, true))));
    let var_6 = global1[_wgslsmith_index_u32(~72964u, 9u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(877f, -193f, global4.x) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1868f, -787f, global4.x), vec3<f32>(global4.x, -1288f, global4.x)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(161f, global4.x, global4.x, global4.x) + vec4<f32>(-107f, global4.x, 470f, 660f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(global4.x, -1200f), -1420f, _wgslsmith_f_op_f32(global4.x + 1850f), -190f))), ~var_2.d);
}

