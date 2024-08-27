struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec2<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<f32>(-633f, 1559f), vec3<i32>(39733i, 1i, i32(-2147483648)), 70343i, -34735i), vec2<bool>(true, true), Struct_1(vec2<f32>(-1087f, 672f), vec3<i32>(3024i, -1i, -24349i), 0i, i32(-2147483648)));

var<private> global1: array<vec2<i32>, 9>;

var<private> global2: array<Struct_4, 16>;

var<private> global3: array<Struct_2, 16>;

var<private> global4: array<vec4<u32>, 13>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_1() -> Struct_2 {
    global4 = array<vec4<u32>, 13>();
    global3 = array<Struct_2, 16>();
    global0 = Struct_2(global0.a, select(vec2<bool>(true, any(!vec3<bool>(global0.b.x, false, false))), global0.b, select(vec2<bool>(global0.b.x, !global0.b.x), global0.b, global0.b)), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(global0.a.a)), global0.c.a)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.a.x, global0.a.a.x)) * _wgslsmith_f_op_vec2_f32(round(global0.a.a)))), _wgslsmith_sub_vec3_i32(-u_input.e, ~_wgslsmith_mod_vec3_i32(global0.a.b, vec3<i32>(1i, -37520i, 2147483647i))), global0.c.c, select(34927i, firstTrailingBit(-7702i), true) ^ u_input.e.x));
    global4 = array<vec4<u32>, 13>();
    global4 = array<vec4<u32>, 13>();
    return Struct_2(global0.c, vec2<bool>(true, false), global0.c);
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: i32, arg_3: vec4<bool>) -> u32 {
    var var_0 = global2[_wgslsmith_index_u32(4294967295u, 16u)];
    let var_1 = !(true & (_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(var_0.b.a.x)))) > global0.a.a.x));
    let var_2 = global2[_wgslsmith_index_u32(58106u, 16u)];
    global3 = array<Struct_2, 16>();
    var var_3 = arg_0.x;
    return _wgslsmith_mod_u32(max(select(u_input.a.x, 0u, true) >> (abs(u_input.a.x | arg_0.x) % 32u), 0u), arg_0.x);
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_4) -> f32 {
    let var_0 = vec2<bool>(!any(arg_1.a), global0.b.x);
    let var_1 = 1720i;
    global2 = array<Struct_4, 16>();
    let var_2 = vec2<u32>(func_3(select(u_input.a, abs(arg_0.xzy), true), vec2<bool>(func_1().b.x, false), -2147483647i, vec4<bool>(2147483647i != (global0.c.b.x & var_1), all(vec4<bool>(var_0.x, global0.b.x, true, var_0.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(var_1, u_input.b.x), vec2<i32>(global0.c.c, global0.c.c)) <= -u_input.b.x, true)), _wgslsmith_mult_u32(firstLeadingBit(1u), ~_wgslsmith_mod_u32(53023u, arg_0.x)) & select(_wgslsmith_sub_u32(1u, 1u), firstLeadingBit(_wgslsmith_mult_u32(arg_0.x, 4294967295u)), true));
    global0 = Struct_2(global0.c, global0.b, global0.a);
    return func_1().c.a.x;
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: Struct_1) -> StorageBuffer {
    global3 = array<Struct_2, 16>();
    global2 = array<Struct_4, 16>();
    let var_0 = _wgslsmith_div_f32(745f, arg_0);
    global4 = array<vec4<u32>, 13>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.a)), abs(~vec3<i32>(~arg_2.d, ~4911i, max(u_input.e.x, arg_2.c))), -15092i, (_wgslsmith_dot_vec2_i32(firstLeadingBit(global1[_wgslsmith_index_u32(25391u, 9u)]), _wgslsmith_mult_vec2_i32(global0.c.b.xz, global0.c.b.zy)) >> ((reverseBits(arg_1) << (_wgslsmith_add_u32(arg_1, arg_1) % 32u)) % 32u)) | _wgslsmith_mod_i32(_wgslsmith_add_i32(~(-2147483647i), ~1i), _wgslsmith_dot_vec4_i32(u_input.d, ~u_input.d)));
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(371f)) + var_0), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, global0.a.a.x) * _wgslsmith_div_f32(-131f, -1093f))) - vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0 + global0.a.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-171f + -1000f)))), -(~_wgslsmith_dot_vec2_i32(arg_2.b.yy, select(vec2<i32>(u_input.c, 21667i), vec2<i32>(0i, global0.a.c), global0.b.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c.a.x, global0.c.a.x)) - _wgslsmith_f_op_vec2_f32(-var_1.a)) - _wgslsmith_f_op_vec2_f32(arg_2.a - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(1262f, 1138f), arg_2.a), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.c.a.x, var_0))))))), vec3<f32>(_wgslsmith_f_op_f32(trunc(arg_2.a.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -775f))), 169f));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_4, 16>();
    global1 = array<vec2<i32>, 9>();
    global0 = func_1();
    var var_0 = Struct_2(func_1().a, vec2<bool>(select(global0.b.x, u_input.a.x != 16718u, !any(vec3<bool>(global0.b.x, global0.b.x, global0.b.x))), true), func_1().a);
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(12975u, u_input.a.x), u_input.a.x >> (u_input.a.x % 32u)), 16u)];
    var var_2 = func_1().c;
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.a.x, _wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.a.x, var_2.a.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -755f)))));
    let var_4 = ~4294967295u;
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.a.x)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2(global4[_wgslsmith_index_u32(u_input.a.x, 13u)], global2[_wgslsmith_index_u32(var_4, 16u)]))))) + var_2.a.x), ~(~firstLeadingBit(var_4)), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global0.a.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(896f, 1000f) - vec2<f32>(global0.a.a.x, var_3.x)), all(vec2<bool>(var_1.b.x, global0.b.x)))) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1000f, global0.a.a.x)))), var_2.b, var_2.b.x ^ ~(-var_2.c), -var_2.d));
}

