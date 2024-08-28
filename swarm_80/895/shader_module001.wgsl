struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<i32, 27>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> i32 {
    let var_0 = vec4<i32>(-32199i, arg_0.b.x, u_input.b.x, -_wgslsmith_mod_i32(-1i, _wgslsmith_sub_i32(-1i, -83338i))) ^ -min(global0.a.b, max(vec4<i32>(arg_0.b.x, 60008i, 0i, 1i), arg_2.b));
    let var_1 = max(0u, u_input.d);
    global1 = array<i32, 27>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -499f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2722f) + -799f)));
    var var_3 = arg_0.c.xy;
    return arg_2.b.x;
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_add_vec4_i32(vec4<i32>(abs(_wgslsmith_mod_i32(i32(-1i) * -15242i, _wgslsmith_mult_i32(-83225i, global1[_wgslsmith_index_u32(u_input.d, 27u)]))), func_3(global0.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(1038f, 1521f, global0.b)))), Struct_1(-54889i > global1[_wgslsmith_index_u32(u_input.d, 27u)], global0.a.b, global0.a.c)), ~min(global1[_wgslsmith_index_u32(u_input.c.x, 27u)], 2147483647i) << (_wgslsmith_mod_u32(17605u, u_input.a) % 32u), _wgslsmith_clamp_i32(_wgslsmith_add_i32(1i, global0.a.b.x), _wgslsmith_mod_i32(-1917i, u_input.b.x), u_input.b.x) & global0.a.b.x), global0.a.b);
    var var_1 = u_input.a;
    var var_2 = vec2<i32>(-1i) * -vec2<i32>(var_0.x, _wgslsmith_mod_i32(var_0.x, u_input.b.x));
    var var_3 = global0.b;
    let var_4 = vec2<u32>(_wgslsmith_mod_u32(reverseBits(~(u_input.c.x ^ 65729u)), ~20011u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.d | u_input.d, ~23391u, 0u), firstLeadingBit(u_input.c)));
    return Struct_2(Struct_1(all(vec3<bool>(true, global0.a.a, true)), global0.a.b, !global0.a.c), !global0.a.a);
}

fn func_1(arg_0: i32, arg_1: vec3<i32>, arg_2: vec3<u32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = !global0.a.c;
    var var_1 = func_2();
    var var_2 = func_2().a;
    var_1 = func_2();
    var var_3 = 1u;
    return Struct_1(!all(!select(var_0.xy, global0.a.c.xy, var_0.xx)), -_wgslsmith_div_vec4_i32(vec4<i32>(1i, abs(0i), firstTrailingBit(global1[_wgslsmith_index_u32(u_input.d, 27u)]), i32(-1i) * -2147483647i), vec4<i32>(arg_3.b.x ^ arg_0, _wgslsmith_mod_i32(-2147483647i, var_1.a.b.x), abs(-48136i), _wgslsmith_sub_i32(arg_3.b.x, 2147483647i))), vec3<bool>(func_2().a.b.x != arg_0, any(select(arg_3.c.xy, !var_0.xy, var_2.c.x)), var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>((~global0.a.b.x & ~2147483647i) | _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(abs(u_input.a), 27u)], reverseBits(0i)), -u_input.b.x, 2147483647i) ^ global0.a.b.zwz;
    var var_1 = func_1(1i, max(_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(var_0, var_0), ~u_input.b) | vec3<i32>(2147483647i, ~19295i, global1[_wgslsmith_index_u32(~u_input.a, 27u)]), _wgslsmith_mod_vec3_i32(var_0, vec3<i32>(_wgslsmith_div_i32(var_0.x, global1[_wgslsmith_index_u32(4294967295u, 27u)]), u_input.b.x, -1i))), vec3<u32>(~1u, 1u, 0u), Struct_1(global0.a.c.x, _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(abs(vec4<i32>(-70155i, u_input.b.x, 0i, -6645i)), global0.a.b), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, 33821i, 0i, var_0.x), abs(vec4<i32>(var_0.x, var_0.x, 1i, 44906i))), ~vec4<i32>(60473i, var_0.x, global1[_wgslsmith_index_u32(27880u, 27u)], -2147483647i) >> (u_input.c % vec4<u32>(32u))), global0.a.c));
    var var_2 = global0.a.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(firstLeadingBit(~4294967295u >> ((u_input.a | 88880u) % 32u)), _wgslsmith_clamp_u32(~_wgslsmith_add_u32(u_input.d, u_input.d), u_input.d ^ _wgslsmith_mult_u32(u_input.a, u_input.c.x), min(u_input.d | 42843u, u_input.c.x ^ u_input.d)), _wgslsmith_mod_u32(u_input.c.x, u_input.d), max(_wgslsmith_sub_u32(u_input.a, u_input.c.x), _wgslsmith_mult_u32(u_input.a, u_input.c.x ^ u_input.a))), _wgslsmith_f_op_f32(-978f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1182f)) * _wgslsmith_div_f32(-906f, 235f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(449f, -415f))))))), vec2<i32>(global0.a.b.x, func_3(global0.a, _wgslsmith_f_op_f32(f32(-1f) * -328f), global0.a) >> (~4294967295u % 32u)), vec4<u32>(u_input.a, 89720u, _wgslsmith_mult_u32(abs(_wgslsmith_add_u32(u_input.c.x, u_input.c.x)), ~4294967295u), 1u), _wgslsmith_div_i32(-1i, 68302i));
}

