struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<bool>, 21>;

var<private> global2: bool;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<f32>) -> vec2<f32> {
    global0 = Struct_1(!(!global0.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-576f, arg_0.x))))), arg_0.xx);
    global1 = array<vec3<bool>, 21>();
    let var_0 = u_input.a.x & -42955i;
    var var_1 = Struct_1(select(!global1[_wgslsmith_index_u32(1u, 21u)], select(!vec3<bool>(true, global0.a.x, false), select(global1[_wgslsmith_index_u32(40955u, 21u)], global1[_wgslsmith_index_u32(43131u, 21u)], global0.a.x | false), !global0.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_0.x)), _wgslsmith_f_op_f32(min(-422f, global0.c.x))) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global0.b.x, -1526f)), _wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(655f, -449f)))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(trunc(2138f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.c.x, -572f) + arg_0.zx), global0.a.yz)), _wgslsmith_f_op_vec2_f32(-arg_0.xy)));
    let var_2 = 12191u;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_1.c, global0.b) + vec2<f32>(global0.c.x, 1000f)), var_1.c) * vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(global0.c.x, -1491f)), _wgslsmith_f_op_f32(step(arg_0.x, -239f)))), _wgslsmith_f_op_f32(101f - 787f))));
}

fn func_2(arg_0: vec3<bool>) -> Struct_2 {
    var var_0 = Struct_2(global0.b.x, ~(-_wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.a.x, u_input.a.x), firstTrailingBit(-2147483647i))), ~min(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 1i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a.x)), Struct_1(!global0.a, global0.b, _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(949f, global0.b.x, 236f))))));
    global0 = Struct_1(global1[_wgslsmith_index_u32(~(~(~4294967295u)), 21u)], var_0.d.b, var_0.d.b);
    global0 = Struct_1(!vec3<bool>(true, true, ~u_input.a.x <= reverseBits(u_input.a.x)), vec2<f32>(_wgslsmith_f_op_f32(round(global0.b.x)), _wgslsmith_div_f32(-715f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(var_0.d.c.x * global0.b.x)))), _wgslsmith_f_op_vec2_f32(-var_0.d.c));
    let var_1 = _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(u_input.a.yy, u_input.a.xy), _wgslsmith_sub_i32(u_input.a.x, _wgslsmith_mult_i32(u_input.a.x, -6773i | max(var_0.b, -19373i))));
    let var_2 = global0.a.x;
    return Struct_2(_wgslsmith_f_op_f32(-global0.b.x), u_input.a.x, ~((i32(-1i) * -30167i) | u_input.a.x), var_0.d);
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_2) -> vec2<f32> {
    var var_0 = func_2(vec3<bool>(arg_1.d.a.x, arg_0.x, arg_0.x));
    var var_1 = vec4<u32>(~4294967295u, 4294967295u, _wgslsmith_add_u32(_wgslsmith_div_u32(1u, min(1u, 4957u)), _wgslsmith_add_u32(18568u, 1u)), ~1u) << (select(vec4<u32>(1u, _wgslsmith_mult_u32(abs(0u), 69332u), 9383u, 4294967295u), vec4<u32>(_wgslsmith_div_u32(75520u, abs(116561u)), 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(0u, 4294967295u, 4294967295u, 21246u)), ~abs(35633u)), var_0.d.a.x) % vec4<u32>(32u));
    var var_2 = func_2(!global0.a);
    global1 = array<vec3<bool>, 21>();
    var_0 = Struct_2(func_2(global0.a).d.b.x, var_0.b, ~_wgslsmith_mod_i32(1587i, 6699i), Struct_1(func_2(!select(arg_1.d.a, var_2.d.a, arg_1.d.a)).d.a, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(var_0.d.c, vec2<f32>(379f, arg_1.a))), _wgslsmith_f_op_vec2_f32(exp2(var_2.d.b)), !arg_1.d.a.yx)), func_2(select(vec3<bool>(false, arg_1.d.a.x, false), vec3<bool>(global0.a.x, var_2.d.a.x, false), arg_1.d.a.x)).d.b)), _wgslsmith_f_op_vec2_f32(var_2.d.c - _wgslsmith_f_op_vec2_f32(select(global0.c, func_2(var_2.d.a).d.c, global0.a.x)))));
    return _wgslsmith_f_op_vec2_f32(step(func_2(vec3<bool>(all(vec3<bool>(true, arg_1.d.a.x, var_2.d.a.x)) || true, !(arg_1.d.c.x == 354f), !any(vec3<bool>(global0.a.x, false, global0.a.x)))).d.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.d.b))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(!vec3<bool>(select(global0.a.x & true, global0.a.x, true), true, global0.a.x == global0.a.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(global0.c.x)), _wgslsmith_f_op_f32(-global0.c.x))), -485f)), _wgslsmith_f_op_vec2_f32(func_1(vec2<bool>(-2147483647i != _wgslsmith_dot_vec4_i32(vec4<i32>(-42568i, -2147483647i, u_input.a.x, 17309i), vec4<i32>(u_input.a.x, 932i, -8594i, -8615i)), global0.a.x), Struct_2(-904f, -(~u_input.a.x), -u_input.a.x >> (7356u % 32u), Struct_1(vec3<bool>(false, false, false), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, -133f), global0.c)), vec2<f32>(1152f, -1747f))))));
    global1 = array<vec3<bool>, 21>();
    let var_0 = vec3<i32>(27509i, 1i, ~63778i);
    var var_1 = var_0.yy;
    let var_2 = Struct_2(global0.c.x, _wgslsmith_clamp_i32(1i, func_2(select(vec3<bool>(false, global0.a.x, false), global1[_wgslsmith_index_u32(22267u, 21u)], global0.a.x)).b, -30027i | (func_2(global0.a).c << (_wgslsmith_div_u32(36055u, 74832u) % 32u))), ~(-14377i) ^ _wgslsmith_mult_i32(var_0.x, 10038i), func_2(!global1[_wgslsmith_index_u32(~18630u, 21u)]).d);
    var var_3 = -(i32(-1i) * -2147483647i);
    var var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.d.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.d.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.c.x))) * _wgslsmith_f_op_f32(ceil(global0.b.x)))));
}

