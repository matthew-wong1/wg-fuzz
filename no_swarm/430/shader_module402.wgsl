struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_5 {
    a: bool,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_5, 18>;

var<private> global2: array<u32, 6> = array<u32, 6>(4294967295u, 30573u, 17707u, 4294967295u, 1u, 1u);

var<private> global3: Struct_5 = Struct_5(true, false, Struct_1(-1i, vec2<u32>(1u, 0u), -1i, 2147483647i), Struct_1(-1i, vec2<u32>(4294967295u, 4294967295u), 2147483647i, 1i));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec3<u32>) -> u32 {
    global3 = Struct_5(false & select(true, true, !global3.a), true, Struct_1(global3.d.a, ~vec2<u32>(global2[_wgslsmith_index_u32(98993u, 6u)] | 60834u, ~global0.a.x), reverseBits(u_input.b.x), _wgslsmith_dot_vec4_i32(max(vec4<i32>(global3.d.d, 0i, -19543i, -11574i), vec4<i32>(2731i, -9066i, -2147483647i, -2147483647i)), -(u_input.b << (vec4<u32>(arg_0.x, 4294967295u, global0.a.x, arg_0.x) % vec4<u32>(32u))))), global3.d);
    global2 = array<u32, 6>();
    let var_0 = Struct_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.e, global0.e, _wgslsmith_div_f32(-1254f, -1727f), _wgslsmith_f_op_f32(-global0.e)) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.e, global0.e, global0.e, global0.e)), vec4<f32>(global0.e, global0.e, 1908f, -347f)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -219f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.e, global0.e) * -1107f), _wgslsmith_f_op_f32(global0.e - _wgslsmith_f_op_f32(-1745f * global0.e)), -1979f)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_0.x) >> (global3.d.b % vec2<u32>(32u)), min(~global0.a, vec2<u32>(global0.a.x, arg_0.x))));
    global1 = array<Struct_5, 18>();
    global3 = global1[_wgslsmith_index_u32(var_0.b, 18u)];
    return ~1u;
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: i32) -> vec3<f32> {
    global3 = Struct_5(global0.b.x, true, Struct_1(arg_1.a, vec2<u32>(~4294967295u, ~global3.d.b.x & _wgslsmith_mod_u32(10700u, 60057u)), _wgslsmith_sub_i32(-global3.d.a, arg_2 & -35708i) << (~global0.a.x % 32u), i32(-1i) * -arg_0), Struct_1(firstTrailingBit(abs(-arg_0)), abs(vec2<u32>(_wgslsmith_sub_u32(global3.d.b.x, global3.c.b.x), ~1u)), ~arg_0, u_input.a.x >> (~func_3(vec3<u32>(global2[_wgslsmith_index_u32(1u, 6u)], global3.c.b.x, 0u)) % 32u)));
    global0 = Struct_2(global0.a, select(global0.b, !vec3<bool>(all(vec3<bool>(global3.a, global0.b.x, false)), !global3.b, true), global0.b.x), vec4<i32>(select(arg_2, _wgslsmith_sub_i32(-arg_2, arg_0), true), 2147483647i, 2147483647i, 24108i), abs(~_wgslsmith_mod_vec3_i32(select(vec3<i32>(arg_1.a, 0i, arg_1.c), vec3<i32>(-1i, 34656i, u_input.b.x), global0.b.x), ~global0.c.zzz)), global0.e);
    let var_0 = Struct_5(global0.b.x & !((-27732i << (global3.c.b.x % 32u)) != _wgslsmith_mult_i32(-50606i, arg_2)), any(!vec2<bool>(global3.a, true)), Struct_1(0i, _wgslsmith_div_vec2_u32(max(firstTrailingBit(arg_1.b), ~vec2<u32>(global3.d.b.x, 1u)), _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(global0.a, vec2<u32>(21113u, 30267u)), _wgslsmith_add_vec2_u32(global3.d.b, vec2<u32>(global2[_wgslsmith_index_u32(global0.a.x, 6u)], global3.d.b.x)))), ~(~u_input.a.x), 37536i), Struct_1(~2147483647i, global0.a, _wgslsmith_add_i32(_wgslsmith_mult_i32(~27412i, arg_2), max(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.a.x, 2147483647i, -30347i), global0.c), ~2147483647i)), 1i));
    let var_1 = Struct_3(Struct_1(0i, var_0.c.b, firstTrailingBit(reverseBits(global0.c.x)), -1i >> (global0.a.x % 32u)), Struct_2(~vec2<u32>(1u, 73849u | arg_1.b.x), !(!(!vec3<bool>(true, true, global0.b.x))), vec4<i32>(~abs(58753i), 16389i, ~(-43118i) >> (max(global0.a.x, 1u) % 32u), -global0.c.x), (vec3<i32>(global0.c.x, 0i, 12538i) << ((vec3<u32>(arg_1.b.x, global0.a.x, 71407u) | vec3<u32>(4294967295u, 1u, 0u)) % vec3<u32>(32u))) & global0.d, global0.e));
    let var_2 = ~var_1.b.a.x;
    return _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.e, var_1.b.e, global0.e))) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.b.e, _wgslsmith_f_op_f32(abs(global0.e)), _wgslsmith_f_op_f32(-324f + 487f))))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-571f, global0.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.e)))))));
}

fn func_1() -> i32 {
    global3 = global1[_wgslsmith_index_u32(4294967295u >> (abs(1u) % 32u), 18u)];
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_2(~_wgslsmith_sub_i32(-27229i, -global3.d.d), global3.c, ~_wgslsmith_mult_i32(global3.d.a | 2147483647i, 1i))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(390f, global0.e, global0.e))), vec3<f32>(1252f, _wgslsmith_f_op_f32(step(1922f, global0.e)), _wgslsmith_div_f32(global0.e, 1030f))))), vec3<bool>(false, global3.a, false || !(!global3.a))));
    global2 = array<u32, 6>();
    var var_1 = global3.c.d | abs(firstTrailingBit(min(-u_input.c.x, -u_input.a.x)));
    global1 = array<Struct_5, 18>();
    return _wgslsmith_div_i32(12460i, -36595i);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3) -> Struct_1 {
    let var_0 = ~(0u >> (min(global0.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(global3.c.b.x, 37907u), global3.d.b)) % 32u)) >> (36116u % 32u);
    let var_1 = arg_1;
    global3 = Struct_5(false, global0.b.x, Struct_1(select(-max(u_input.c.x, arg_1.b.c.x), -1i, !(!global0.b.x)), _wgslsmith_add_vec2_u32(var_1.a.b, abs(global0.a)), arg_1.a.a, _wgslsmith_mod_i32(~_wgslsmith_mod_i32(28289i, -33861i), arg_1.b.c.x)), arg_0);
    let var_2 = vec2<i32>(_wgslsmith_clamp_i32(23394i, ~1i, select(_wgslsmith_mod_i32(1i | arg_1.b.d.x, abs(var_1.b.c.x)), arg_1.b.d.x, global0.b.x)), _wgslsmith_div_i32(func_1(), min(arg_0.d, u_input.c.x)));
    global1 = array<Struct_5, 18>();
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(!vec4<bool>(false, any(vec3<bool>(true, false, global0.b.x)), true, !global0.b.x)));
    var var_1 = global1[_wgslsmith_index_u32(1u, 18u)];
    var_1 = Struct_5(all(vec2<bool>(true, var_0.x)), var_1.a & var_1.b, var_1.c, func_4(Struct_1(var_1.c.a, var_1.d.b, ~global3.c.a, func_1()), Struct_3(global3.d, Struct_2(~var_1.d.b, vec3<bool>(true, global0.b.x, false), ~u_input.b, max(u_input.b.zxx, global0.c.xzw), 466f))));
    let var_2 = select(vec3<bool>(_wgslsmith_dot_vec2_i32(global0.c.xx, global0.d.yy) == _wgslsmith_dot_vec4_i32(abs(u_input.b), _wgslsmith_div_vec4_i32(vec4<i32>(global0.d.x, -1i, global3.d.a, global3.c.c), vec4<i32>(2147483647i, 35355i, 0i, global3.d.c))), !global3.a, global0.b.x), vec3<bool>(true, any(vec4<bool>(false, all(vec3<bool>(false, global0.b.x, false)), true, true)), !any(vec3<bool>(var_0.x, false, var_0.x))), (false & var_1.a) && !var_1.b);
    var var_3 = _wgslsmith_add_i32((i32(-1i) * -(~6679i)) & ~max(-1i, u_input.a.x), u_input.b.x);
    var var_4 = vec3<i32>(-((~var_1.c.a >> (_wgslsmith_add_u32(var_1.c.b.x, global3.d.b.x) % 32u)) | _wgslsmith_clamp_i32(u_input.c.x, _wgslsmith_sub_i32(u_input.c.x, var_1.d.d), 0i)), u_input.b.x, (_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, u_input.b.x, global3.d.c), vec4<i32>(2147483647i, var_1.c.c, var_1.c.c, -2147483647i)), u_input.a) << (abs(44439u) % 32u)) | (_wgslsmith_mod_i32(-37595i, u_input.b.x) >> (8521u % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.d.b.x, firstLeadingBit(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(global3.c.b.x, 6u)], 30578u) & countOneBits(34684u)) | _wgslsmith_add_u32(func_3(vec3<u32>(global0.a.x, var_1.c.b.x, var_1.d.b.x)) >> ((global2[_wgslsmith_index_u32(1u, 6u)] << (0u % 32u)) % 32u), _wgslsmith_clamp_u32(func_4(var_1.c, Struct_3(global3.c, Struct_2(vec2<u32>(4294967295u, global0.a.x), vec3<bool>(true, var_1.a, true), vec4<i32>(-32614i, global3.d.c, u_input.b.x, 2147483647i), vec3<i32>(-1i, u_input.a.x, u_input.b.x), -535f))).b.x, global0.a.x, ~global2[_wgslsmith_index_u32(global0.a.x, 6u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-310f)))) - 1f)));
}

