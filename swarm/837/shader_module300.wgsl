struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: vec2<f32>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
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

var<private> global0: array<u32, 12>;

var<private> global1: vec2<bool>;

var<private> global2: Struct_2 = Struct_2(vec3<i32>(20223i, i32(-2147483648), -11807i), vec2<bool>(false, false), vec2<f32>(243f, 682f), Struct_1(vec2<bool>(false, true), vec3<u32>(0u, 0u, 7591u), vec2<u32>(1u, 27512u), 857f), 4294967295u);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>) -> f32 {
    var var_0 = Struct_2(-(~vec3<i32>(i32(-1i) * -1i, 0i, 0i)), vec2<bool>(arg_0.a.x, false), vec2<f32>(351f, -1731f), arg_0, ~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(1u, 12u)], _wgslsmith_mod_u32(0u, u_input.a.x), arg_1.x), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(global2.d.b.yz, vec2<u32>(arg_1.x, 4294967295u)), vec2<u32>(4294967295u, global2.e))));
    var var_1 = u_input.c;
    var var_2 = Struct_1(select(global2.b, global2.d.a, false), firstTrailingBit(global2.d.b), var_0.d.b.yy, _wgslsmith_f_op_f32(f32(-1f) * -697f));
    var var_3 = Struct_2(vec3<i32>(9132i, ~1i, ~var_0.a.x), !(!arg_0.a), _wgslsmith_div_vec2_f32(var_0.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(global2.c)), _wgslsmith_f_op_vec2_f32(vec2<f32>(722f, -1389f) - vec2<f32>(var_2.d, -929f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(351f, var_2.d), vec2<f32>(var_2.d, 1000f), var_0.d.a)) - _wgslsmith_f_op_vec2_f32(-global2.c)))), arg_0, select(u_input.a.x, _wgslsmith_mult_u32(arg_0.c.x, _wgslsmith_mod_u32(75900u, 38650u)), var_0.b.x) << (select(4294967295u, ~(~0u), any(vec4<bool>(global2.b.x, var_0.d.a.x, var_0.d.a.x, global2.b.x)) || true) % 32u));
    var var_4 = select(!var_2.a, !(!arg_0.a), false);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-298f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_2.d, 972f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2628f + 1000f), 1000f)))));
}

fn func_2(arg_0: i32, arg_1: bool) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(!(!vec2<bool>(global1.x, arg_1)), firstTrailingBit(global2.d.b), u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-962f)))), u_input.a)) + global2.d.d);
    var_0 = global2.d.d;
    let var_1 = Struct_3(any(vec2<bool>(false, arg_1)));
    return Struct_2(reverseBits(vec3<i32>(-35787i, min(1i, global2.a.x), _wgslsmith_div_i32(global2.a.x, -9947i)) << (_wgslsmith_sub_vec3_u32(vec3<u32>(21011u, 32518u, 0u), _wgslsmith_div_vec3_u32(global2.d.b, vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(20186u, 12u)], 12u)], 0u, u_input.a.x))) % vec3<u32>(32u))), !select(vec2<bool>(true, global1.x && false), !select(global2.b, vec2<bool>(false, false), vec2<bool>(arg_1, true)), arg_1), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(global2.d.d, -182f), global2.c), _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.c.x, 815f) + vec2<f32>(global2.d.d, global2.c.x)), !global1.x))), global2.c)), global2.d, firstLeadingBit(global2.d.b.x));
}

fn func_1(arg_0: u32) -> Struct_2 {
    var var_0 = 2147483647i;
    var var_1 = ~global2.d.c.x;
    let var_2 = func_2(_wgslsmith_mod_i32(global2.a.x | ~(-u_input.c), -17297i), true);
    var var_3 = Struct_3(false);
    var_0 = -16564i;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(603f + 326f);
    var var_1 = Struct_2(global2.a, global2.d.a, global2.c, global2.d, ~0u);
    var var_2 = func_1(~(6092u | global0[_wgslsmith_index_u32(7352u, 12u)]));
    let var_3 = select(vec4<u32>(countOneBits(1u & u_input.a.x), 1u, 1u, _wgslsmith_add_u32(abs(global2.e), _wgslsmith_dot_vec3_u32(vec3<u32>(21819u, var_2.d.c.x, global0[_wgslsmith_index_u32(42613u, 12u)]), ~vec3<u32>(u_input.a.x, global2.d.c.x, 1u)))), vec4<u32>(87776u, min(reverseBits(~1u), 4294967295u), ~reverseBits(var_1.e) & 5526u, ~(~1u)), global2.d.a.x);
    var_2 = Struct_2(var_1.a, !select(global2.b, vec2<bool>(true, var_2.c.x <= var_2.c.x), vec2<bool>(true, true)), var_1.c, var_1.d, ~(~abs(_wgslsmith_mult_u32(1u, u_input.a.x))));
    var var_4 = func_2(var_2.a.x, false);
    let var_5 = reverseBits(-((~var_4.a.xz << (vec2<u32>(43677u, 46858u) % vec2<u32>(32u))) & vec2<i32>(-89025i, -1i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_i32(countOneBits(countOneBits(vec3<i32>(4620i, 20032i, var_1.a.x))), abs(var_4.a)) | reverseBits(var_1.a));
}

