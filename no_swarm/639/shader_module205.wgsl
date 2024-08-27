struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: bool,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: u32,
    d: u32,
    e: bool,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 13>;

var<private> global1: array<Struct_2, 19>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: f32, arg_3: u32) -> f32 {
    global1 = array<Struct_2, 19>();
    let var_0 = global1[_wgslsmith_index_u32(120412u, 19u)];
    let var_1 = vec3<bool>(_wgslsmith_dot_vec4_i32(-vec4<i32>(arg_1.a.x, -1i, 2147483647i, 2147483647i) ^ select(vec4<i32>(-12702i, u_input.d.x, 17190i, arg_0.x), vec4<i32>(u_input.d.x, -2147483647i, u_input.c.x, u_input.d.x), vec4<bool>(var_0.e, var_0.e, var_0.e, var_0.e)), ~vec4<i32>(-1i, 1i, arg_0.x, 3786i)) != max(~(i32(-1i) * -2147483647i), arg_1.a.x), all(!select(select(vec2<bool>(true, var_0.e), vec2<bool>(var_0.e, false), vec2<bool>(arg_1.b.e, arg_1.b.c)), !vec2<bool>(false, arg_1.b.e), var_0.e && false)), true);
    let var_2 = arg_1.b.a;
    var var_3 = arg_1.b;
    return 599f;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: bool) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, global0[_wgslsmith_index_u32(22475u, 13u)], arg_0) - vec3<f32>(1000f, -1816f, 330f)))))));
    var var_1 = Struct_3(~select(-(~vec2<i32>(-43443i, 0i)), select(select(vec2<i32>(-27537i, u_input.b.x), vec2<i32>(1i, u_input.c.x), arg_1.c), u_input.b << (arg_1.a % vec2<u32>(32u)), all(vec2<bool>(true, true))), vec2<bool>(arg_2 | arg_1.e, all(vec2<bool>(false, arg_2)))), Struct_1(vec2<u32>(~(~0u), (41947u >> (arg_1.d % 32u)) ^ min(1u, u_input.a)), global0[_wgslsmith_index_u32(firstTrailingBit(~4294967295u), 13u)] >= 2273f, arg_1.b, arg_1.a.x, !all(!vec3<bool>(arg_1.c, arg_2, arg_1.c))));
    let var_2 = arg_0;
    let var_3 = select(!select(!(!vec3<bool>(var_1.b.e, var_1.b.c, false)), vec3<bool>(true, false | arg_1.b, true), !arg_1.b && !var_1.b.b), !(!vec3<bool>(arg_1.b, u_input.a != u_input.a, !var_1.b.c)), true);
    var var_4 = Struct_1(abs(abs(_wgslsmith_mod_vec2_u32(var_1.b.a, vec2<u32>(0u, var_1.b.d)))), !(!(arg_0 > _wgslsmith_f_op_f32(-980f + -1448f))), all(vec3<bool>(arg_2, var_1.b.e, true)), ~64756u, false);
    return vec2<i32>(min(u_input.c.x, countOneBits(0i)), var_1.a.x);
}

fn func_2() -> u32 {
    global1 = array<Struct_2, 19>();
    let var_0 = 2147483647i;
    var var_1 = Struct_3(max(vec2<i32>(~u_input.b.x ^ ~u_input.c.x, -2147483647i), u_input.d.xz), Struct_1(vec2<u32>(abs(u_input.a ^ u_input.a), 7175u), 546f == _wgslsmith_f_op_f32(-466f + global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, u_input.a), 13u)]), false, 77835u, select(all(vec3<bool>(true, true, true)), false, all(vec4<bool>(true, true, true, true)))));
    let var_2 = Struct_3(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(u_input.d, Struct_3(vec2<i32>(2147483647i, u_input.c.x), var_1.b), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 13u)]), ~u_input.a))), var_1.b, true || (_wgslsmith_f_op_f32(func_3(u_input.d, Struct_3(vec2<i32>(1i, -1i), var_1.b), global0[_wgslsmith_index_u32(var_1.b.d, 13u)], 1u)) == _wgslsmith_f_op_f32(ceil(452f)))), Struct_1(var_1.b.a, all(!vec4<bool>(var_1.b.c, var_1.b.b, var_1.b.c, false)), false, abs(_wgslsmith_clamp_u32(var_1.b.a.x, _wgslsmith_clamp_u32(u_input.a, 1u, 106543u), 1u)), all(vec3<bool>(any(vec3<bool>(true, false, false)), false, var_1.b.b | var_1.b.e))));
    global0 = array<f32, 13>();
    return _wgslsmith_dot_vec2_u32(vec2<u32>(reverseBits(57200u | var_1.b.a.x), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.a, u_input.a, 0u)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 4294967295u, var_2.b.a.x), vec3<u32>(19294u, var_2.b.a.x, u_input.a)))), vec2<u32>(_wgslsmith_mod_u32(26296u, 31853u) << (1u % 32u), ~4294967295u)) >> ((countOneBits(abs(1u)) >> (u_input.a % 32u)) % 32u);
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_3) -> u32 {
    global0 = array<f32, 13>();
    var var_0 = vec4<bool>(!(_wgslsmith_sub_i32(select(174i, u_input.b.x, arg_0.x), 37889i) == arg_1.a.x), true, select(true, !arg_0.x, _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(arg_1.b.d, 13u)])) != _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~u_input.a, 13u)])), arg_0.x);
    let var_1 = vec2<u32>(abs(func_2()), u_input.a);
    global0 = array<f32, 13>();
    global1 = array<Struct_2, 19>();
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~vec3<u32>(8652u, ~u_input.a, ~0u));
    let var_1 = Struct_1(firstLeadingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(6131u, 4294967295u), _wgslsmith_div_vec2_u32(vec2<u32>(var_0.x, 1u), var_0.zz))), !all(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false))), true, func_1(vec2<bool>(false, true), Struct_3(-vec2<i32>(u_input.d.x, u_input.d.x), Struct_1(vec2<u32>(4294967295u, 1u), false, true, u_input.a, false))) ^ _wgslsmith_add_u32(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<u32>(u_input.a, u_input.a, 1u, 4294967295u)) >> (var_0.x % 32u)), (u_input.c.x & u_input.d.x) != select(-55427i, _wgslsmith_div_i32(2147483647i >> (1u % 32u), u_input.d.x), any(vec4<bool>(true, true, true, true))));
    global0 = array<f32, 13>();
    let var_2 = Struct_3(max(abs(vec2<i32>(0i, u_input.b.x) << (var_0.zz % vec2<u32>(32u))), -u_input.c), Struct_1(var_0.yy, var_1.c, any(!select(vec3<bool>(true, var_1.b, true), vec3<bool>(false, var_1.e, false), var_1.c)), (var_0.x ^ 8719u) | 1u, true));
    var var_3 = Struct_3(vec2<i32>(var_2.a.x, var_2.a.x), var_1);
    var var_4 = global0[_wgslsmith_index_u32(0u, 13u)];
    let var_5 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(1u, select(771u, firstLeadingBit(1u), var_3.b.c)), 4899u) << (var_2.b.a.x % 32u), 19u)];
    global0 = array<f32, 13>();
    var var_6 = firstTrailingBit(var_2.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(var_3.a.x, u_input.d.x), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(25392u, 13u)]), ~vec3<u32>(var_0.x, var_5.c, var_0.x), vec2<i32>(_wgslsmith_mult_i32(~var_3.a.x, var_3.a.x), var_2.a.x << (max(14445u, 56239u) % 32u)) & _wgslsmith_sub_vec2_i32(abs(-vec2<i32>(-13895i, var_2.a.x)), vec2<i32>(var_2.a.x, var_2.a.x << (22492u % 32u))));
}

