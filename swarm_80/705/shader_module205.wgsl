struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: i32,
    d: vec3<bool>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: bool = true;

var<private> global2: array<Struct_1, 4>;

var<private> global3: array<f32, 24> = array<f32, 24>(-1610f, -393f, -441f, 472f, -2479f, 1116f, 306f, -1000f, -1000f, 239f, 221f, -362f, 974f, -970f, -806f, -450f, -176f, 240f, -264f, 640f, 993f, 165f, 297f, -100f);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: f32) -> f32 {
    global3 = array<f32, 24>();
    global3 = array<f32, 24>();
    let var_0 = reverseBits(vec3<i32>(_wgslsmith_div_i32(-2147483647i, ~u_input.c), (i32(-1i) * -41717i) << (_wgslsmith_add_u32(arg_0, 0u) % 32u), select(max(u_input.c, 1i), u_input.c, false)) ^ firstTrailingBit(abs(~vec3<i32>(u_input.c, 2147483647i, 1i))));
    var var_1 = countOneBits(var_0);
    var var_2 = _wgslsmith_div_vec3_i32(~vec3<i32>(~2147483647i, _wgslsmith_add_i32(~u_input.c, i32(-1i) * -3612i), var_1.x), _wgslsmith_sub_vec3_i32(~countOneBits(vec3<i32>(52036i, -1i, -2147483647i)), vec3<i32>(~abs(62134i), -(~(-6009i)), var_1.x)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(~u_input.b, 24u)], global3[_wgslsmith_index_u32(80029u, 24u)]) + _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.b, 24u)])))));
}

fn func_2(arg_0: vec4<f32>, arg_1: f32, arg_2: Struct_1, arg_3: i32) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(func_3(~u_input.b, -206f)), _wgslsmith_sub_vec3_i32(-min(arg_2.b, vec3<i32>(1i, -2147483647i, 1i)), arg_2.b) & _wgslsmith_sub_vec3_i32(arg_2.b & vec3<i32>(9636i, -26607i, -31799i), vec3<i32>(_wgslsmith_dot_vec3_i32(arg_2.b, vec3<i32>(arg_2.b.x, -1i, 2147483647i)), u_input.c, arg_3)), _wgslsmith_mult_i32(firstLeadingBit(-2147483647i), firstLeadingBit(-(~(-2147483647i)))), select(!(!select(vec3<bool>(false, global0.x, true), arg_2.d, vec3<bool>(arg_2.d.x, false, arg_2.d.x))), vec3<bool>(!(global0.x && global0.x), true, false), select(select(!vec3<bool>(arg_2.d.x, false, true), vec3<bool>(true, true, true), !vec3<bool>(arg_2.d.x, arg_2.d.x, arg_2.d.x)), !vec3<bool>(arg_2.d.x, arg_2.d.x, arg_2.d.x), vec3<bool>(arg_2.e.x < u_input.a, true, arg_2.e.x == 0u))), vec2<u32>(~(~u_input.b), arg_2.e.x));
    global2 = array<Struct_1, 4>();
    var var_1 = 28995u;
    global0 = select(vec2<bool>(any(!arg_2.d), global0.x == arg_2.d.x), vec2<bool>(true, true), var_0.d.xy);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(func_3(~(~abs(var_0.e.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(213f, 150f)) + _wgslsmith_f_op_f32(1225f - arg_0.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-195f - arg_2.a) - _wgslsmith_f_op_f32(arg_1 * global3[_wgslsmith_index_u32(var_0.e.x, 24u)]))))), -firstTrailingBit(vec3<i32>(u_input.c, ~arg_3, 2147483647i)), _wgslsmith_mult_i32(~_wgslsmith_mod_i32(min(var_0.b.x, 2147483647i), 1i), arg_3), vec3<bool>(all(select(!var_0.d, select(vec3<bool>(true, false, arg_2.d.x), arg_2.d, arg_2.d), arg_2.d)), !all(arg_2.d.zx), true), var_0.e);
    return global3[_wgslsmith_index_u32(10740u, 24u)];
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: bool, arg_3: vec2<f32>) -> vec3<u32> {
    global3 = array<f32, 24>();
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(808f, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(19891u, 24u)] * -204f), _wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_div_f32(arg_1.a, arg_0)) + vec4<f32>(_wgslsmith_f_op_f32(871f + 625f), -1000f, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(arg_1.e.x, 24u)]), _wgslsmith_f_op_f32(f32(-1f) * -866f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-356f, -959f, -838f, arg_0))) - vec4<f32>(arg_3.x, _wgslsmith_f_op_f32(arg_1.a - 499f), -650f, _wgslsmith_f_op_f32(func_2(vec4<f32>(arg_1.a, 1879f, 1000f, -578f), -253f, Struct_1(-777f, vec3<i32>(u_input.c, -2147483647i, u_input.c), -32362i, arg_1.d, arg_1.e), 1i))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.a))), _wgslsmith_f_op_f32(sign(arg_0)), global3[_wgslsmith_index_u32(arg_1.e.x << (u_input.b % 32u), 24u)], _wgslsmith_f_op_f32(trunc(653f))));
    return ~vec3<u32>(~u_input.a, 4294967295u, reverseBits(firstLeadingBit(u_input.a >> (59980u % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1498f), global3[_wgslsmith_index_u32(~(_wgslsmith_mod_u32(u_input.a, u_input.a) | u_input.a), 24u)]));
    global3 = array<f32, 24>();
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), (_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, -11532i, u_input.c), vec3<i32>(51828i, -19895i, u_input.c)), vec3<i32>(u_input.c, u_input.c, -2147483647i)) << (_wgslsmith_add_vec3_u32(vec3<u32>(1u, 27493u, 4294967295u), abs(vec3<u32>(1u, 4294967295u, u_input.a))) % vec3<u32>(32u))) << (min(~func_1(1000f, Struct_1(-243f, vec3<i32>(u_input.c, u_input.c, 2147483647i), 2147483647i, vec3<bool>(global0.x, global0.x, false), vec2<u32>(u_input.a, u_input.b)), false, vec2<f32>(284f, -138f)), vec3<u32>(abs(157080u), reverseBits(u_input.b), ~u_input.a)) % vec3<u32>(32u)), -_wgslsmith_mult_i32(-1i, ~(-2147483647i)), select(select(!vec3<bool>(true, true, global0.x), vec3<bool>(any(vec3<bool>(false, false, global0.x)), !global0.x, all(vec3<bool>(global0.x, global0.x, true))), global0.x), !(!(!vec3<bool>(global0.x, global0.x, true))), false), ~max(vec2<u32>(30747u, u_input.a), _wgslsmith_mod_vec2_u32(min(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(u_input.b, u_input.a)), ~vec2<u32>(u_input.a, 4294967295u))));
    global2 = array<Struct_1, 4>();
    global3 = array<f32, 24>();
    global1 = global0.x;
    var var_3 = var_2.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b, _wgslsmith_mult_vec2_i32(vec2<i32>(reverseBits(u_input.c), ~26217i), abs(~(~vec2<i32>(u_input.c, u_input.c)))), _wgslsmith_mult_i32(var_2.c, u_input.c));
}

