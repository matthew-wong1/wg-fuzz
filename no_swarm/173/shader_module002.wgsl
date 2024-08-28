struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec3<bool>,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 27> = array<bool, 27>(true, false, false, true, true, false, false, true, false, true, false, false, false, false, false, true, false, false, true, true, false, false, false, true, false, true, true);

var<private> global1: array<Struct_2, 18>;

var<private> global2: vec3<u32>;

var<private> global3: array<Struct_2, 9>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_2, arg_1: vec4<i32>) -> u32 {
    return arg_0.e.a;
}

fn func_3(arg_0: vec4<u32>, arg_1: bool, arg_2: vec2<f32>) -> i32 {
    var var_0 = Struct_1(firstLeadingBit(abs(_wgslsmith_mod_u32(~1361u, _wgslsmith_mult_u32(4294967295u, u_input.a)))));
    let var_1 = Struct_1(~reverseBits(1u));
    var var_2 = vec2<u32>(u_input.a, _wgslsmith_add_u32(~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(var_0.a, arg_0.x), _wgslsmith_add_u32(var_0.a, arg_0.x), func_2(global1[_wgslsmith_index_u32(arg_0.x, 18u)], vec4<i32>(2147483647i, u_input.d.x, 1i, -1i))), ~global2.x >> (0u % 32u)));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2 + vec2<f32>(-665f, -463f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(arg_2, arg_2)) + arg_2)));
    let var_4 = _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(firstLeadingBit(u_input.c.x), func_2(global3[_wgslsmith_index_u32(1366u, 9u)], vec4<i32>(u_input.b.x, u_input.b.x, u_input.d.x, u_input.b.x)), func_2(Struct_2(Struct_1(global2.x), vec3<f32>(1172f, 788f, arg_2.x), vec3<bool>(arg_1, arg_1, arg_1), u_input.d.x, Struct_1(4294967295u)), vec4<i32>(-1i, -48466i, -6553i, -2147483647i))), vec3<u32>(22039u >> (var_2.x % 32u), min(_wgslsmith_mod_u32(1u, var_2.x), 38418u), _wgslsmith_dot_vec2_u32(global2.xz, vec2<u32>(0u, global2.x)) >> (var_1.a % 32u))), 4294967295u);
    return 36390i;
}

fn func_1(arg_0: vec3<bool>, arg_1: u32, arg_2: vec3<f32>, arg_3: u32) -> Struct_1 {
    var var_0 = global2.x < 0u;
    var var_1 = firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(~(~arg_3), func_2(global3[_wgslsmith_index_u32(1u, 9u)], vec4<i32>(-2147483647i, 0i, -2147483647i, u_input.b.x) & vec4<i32>(-13813i, u_input.d.x, u_input.d.x, -2147483647i)), arg_3, ~u_input.c.x), ~(vec4<u32>(21798u, 0u, u_input.a, u_input.c.x) & select(vec4<u32>(33534u, 4422u, arg_3, 1u), vec4<u32>(48878u, arg_1, global2.x, global2.x), vec4<bool>(true, true, arg_0.x, global0[_wgslsmith_index_u32(u_input.a, 27u)])))));
    var var_2 = vec2<i32>(u_input.b.x, -914i);
    let var_3 = Struct_2(Struct_1(~(~_wgslsmith_clamp_u32(var_1.x, arg_3, var_1.x))), vec3<f32>(arg_2.x, _wgslsmith_f_op_f32(trunc(801f)), arg_2.x), arg_0, ~_wgslsmith_clamp_i32(var_2.x | (i32(-1i) * -89048i), firstTrailingBit(-1i) >> (~0u % 32u), func_3(vec4<u32>(u_input.a, 0u, 1u, global2.x), !arg_0.x, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1701f, arg_2.x))))), Struct_1(~(~67290u)));
    var_1 = ~select(max(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_3, 1u, 1u, var_1.x) ^ vec4<u32>(var_3.e.a, var_3.e.a, var_1.x, 4294967295u), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_3, global2.x, u_input.a, 40423u), vec4<u32>(98695u, arg_1, 301u, 1u))), min(~vec4<u32>(arg_3, var_3.e.a, arg_3, arg_3), select(vec4<u32>(global2.x, u_input.a, var_3.a.a, var_3.e.a), vec4<u32>(u_input.c.x, 4294967295u, 1u, arg_3), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.c.x, 27u)], var_3.c.x, true)))), ~(~vec4<u32>(4294967295u, 1u, 39525u, 245u)), !vec4<bool>(all(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 27u)], true, false, arg_0.x)), true, all(vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 27u)])), all(vec2<bool>(true, true))));
    return var_3.e;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32, arg_3: vec3<u32>) -> i32 {
    var var_0 = _wgslsmith_mult_i32(_wgslsmith_add_i32(func_3(_wgslsmith_clamp_vec4_u32(select(vec4<u32>(arg_1.a, arg_0.e.a, 15955u, 9043u), vec4<u32>(arg_0.a.a, 60758u, arg_2, 0u), global0[_wgslsmith_index_u32(0u, 27u)]), vec4<u32>(arg_2, 36325u, arg_0.e.a, arg_3.x) ^ vec4<u32>(arg_2, 1u, 75333u, u_input.a), vec4<u32>(1u, u_input.c.x, 4294967295u, 4294967295u)), all(vec2<bool>(true, arg_0.c.x)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(arg_0.b.zx * vec2<f32>(arg_0.b.x, arg_0.b.x))))), countOneBits(-1i)), -2147483647i);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.b.x, _wgslsmith_f_op_f32(min(-134f, _wgslsmith_div_f32(arg_0.b.x, _wgslsmith_f_op_f32(abs(-292f))))))));
    var var_2 = vec4<f32>(arg_0.b.x, arg_0.b.x, arg_0.b.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1192f, _wgslsmith_f_op_f32(round(var_1)), false)) + _wgslsmith_f_op_f32(-var_1)))));
    var var_3 = 15047i;
    var_3 = -arg_0.d >> (_wgslsmith_div_u32(~_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1.a, arg_1.a, arg_3.x, 82155u), vec4<u32>(65563u, 0u, 48492u, arg_2)), ~4294967295u) % 32u);
    return arg_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1f;
    global1 = array<Struct_2, 18>();
    global2 = u_input.c;
    global3 = array<Struct_2, 9>();
    global1 = array<Struct_2, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(-(firstTrailingBit(-vec4<i32>(-43652i, 21407i, u_input.d.x, 57128i)) << (_wgslsmith_mult_vec4_u32(min(vec4<u32>(global2.x, 59209u, 30784u, u_input.a), vec4<u32>(1u, u_input.a, 159131u, 4294967295u)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, u_input.c.x), vec4<u32>(89680u, global2.x, 127019u, global2.x))) % vec4<u32>(32u))), func_4(global3[_wgslsmith_index_u32(~26306u, 9u)], func_1(!vec3<bool>(global0[_wgslsmith_index_u32(global2.x, 27u)], global0[_wgslsmith_index_u32(52284u, 27u)], global0[_wgslsmith_index_u32(45873u, 27u)]), _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(global2.x, global2.x, 25731u, global2.x)), vec4<u32>(u_input.a, global2.x, 0u, u_input.a) ^ vec4<u32>(1u, 23194u, 1u, global2.x)), vec3<f32>(_wgslsmith_f_op_f32(ceil(var_0)), _wgslsmith_f_op_f32(max(1000f, var_0)), -1000f), u_input.a), global2.x, u_input.c), u_input.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0))) * _wgslsmith_f_op_f32(exp2(var_0))), -1000f), 9799u);
}

