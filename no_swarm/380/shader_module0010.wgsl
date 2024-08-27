struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: u32,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: u32 = 53191u;

var<private> global2: array<vec3<bool>, 13>;

var<private> global3: vec3<u32> = vec3<u32>(48401u, 0u, 0u);

var<private> global4: i32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = Struct_1(1i, vec3<f32>(global0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.b.x, 887f, global0.d))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.b.x)))), global0.b.x), 55042u, ~(abs(global0.a) | 1i) > reverseBits(global0.a), ~1u);
    var var_1 = Struct_1(select(var_0.a & max(global0.a, 2147483647i), ~(-2147483647i), !(!all(vec4<bool>(global0.d, global0.d, true, global0.d)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.x, 1218f, global0.b.x)) + global0.b) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.b * vec3<f32>(global0.b.x, global0.b.x, var_0.b.x))))), 4294967295u, !global0.d, global3.x);
    return select(91052u, countOneBits(select(0u, countOneBits(33341u), !var_1.d)), !any(vec4<bool>(true, true, !var_0.d, !var_0.d)));
}

fn func_2(arg_0: vec4<u32>) -> u32 {
    var var_0 = Struct_1(i32(-1i) * -global0.a, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x)), -406f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-247f)))), 50403u, global0.d, func_3());
    global1 = global0.c;
    var var_1 = vec4<i32>(_wgslsmith_sub_i32(-select(~global0.a, _wgslsmith_dot_vec3_i32(vec3<i32>(-54180i, var_0.a, 38802i), vec3<i32>(28961i, -22797i, -1i)), var_0.d), 21485i), ~_wgslsmith_sub_i32(~(-32383i), var_0.a), var_0.a, ~(~(~global0.a)));
    global1 = _wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.b.x, ~var_0.e | 1u), 1u);
    let var_2 = vec3<bool>(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(0i, global0.a, -2147483647i, var_1.x), _wgslsmith_div_vec4_i32(vec4<i32>(var_1.x, global0.a, 0i, global0.a), vec4<i32>(var_1.x, -1i, -20725i, 2147483647i))), 1i) >= -1i, true, any(vec2<bool>(global0.d & global0.d, true)));
    return var_0.e;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<f32>, arg_2: f32, arg_3: vec3<i32>) -> vec3<f32> {
    var var_0 = min(vec2<u32>(4294967295u, firstLeadingBit(func_2(vec4<u32>(global3.x, 0u, 1u, 1u)))), u_input.b);
    global2 = array<vec3<bool>, 13>();
    let var_1 = arg_0.zy;
    var_0 = _wgslsmith_add_vec2_u32(u_input.b, firstLeadingBit(~vec2<u32>(firstLeadingBit(4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 26319u, global3.x, global3.x), vec4<u32>(64340u, var_0.x, 47765u, global0.e)))));
    var var_2 = 1u;
    return vec3<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.b.x * _wgslsmith_f_op_f32(sign(-1221f))))) * -214f), _wgslsmith_f_op_f32(-arg_2));
}

fn func_4(arg_0: Struct_1) -> i32 {
    let var_0 = abs(22423u);
    var var_1 = select(vec4<bool>(all(vec4<bool>(any(vec4<bool>(true, true, true, true)), false, true, select(false, true, true))), select(!any(vec2<bool>(global0.d, false)), global0.d, !(global0.b.x != arg_0.b.x)), global0.b.x != -2558f, false), select(select(select(select(vec4<bool>(arg_0.d, false, global0.d, global0.d), vec4<bool>(false, false, arg_0.d, true), vec4<bool>(global0.d, false, global0.d, global0.d)), vec4<bool>(true, false, arg_0.d, global0.d), !vec4<bool>(false, true, global0.d, false)), select(vec4<bool>(global0.d, global0.d, arg_0.d, false), !vec4<bool>(true, false, true, global0.d), select(vec4<bool>(false, arg_0.d, true, global0.d), vec4<bool>(false, false, arg_0.d, false), vec4<bool>(arg_0.d, false, arg_0.d, false))), false), vec4<bool>(true, true, !arg_0.d, all(select(vec4<bool>(true, global0.d, global0.d, global0.d), vec4<bool>(arg_0.d, arg_0.d, global0.d, false), vec4<bool>(false, arg_0.d, true, true)))), !(!(!vec4<bool>(global0.d, global0.d, false, true)))), false);
    var var_2 = -2147483647i;
    global4 = max(i32(-1i) * -_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-37134i, -32621i, 1i, 17816i), vec4<i32>(arg_0.a, -1i, arg_0.a, -29260i)), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, global0.a, -2147483647i, arg_0.a), vec4<i32>(global0.a, -2147483647i, global0.a, 2147483647i))), -1i);
    let var_3 = 1i;
    return -20778i;
}

fn func_5(arg_0: vec3<i32>) -> Struct_1 {
    global2 = array<vec3<bool>, 13>();
    let var_0 = vec4<bool>(true, any(vec4<bool>(global0.d, any(vec2<bool>(global0.d, false)), global0.d, true)), all(!(!select(vec4<bool>(true, true, global0.d, true), vec4<bool>(global0.d, false, global0.d, global0.d), global0.d))), all(!global2[_wgslsmith_index_u32(~(~u_input.c), 13u)]));
    let var_1 = false;
    let var_2 = arg_0.zx;
    let var_3 = Struct_1(0i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -658f) * _wgslsmith_f_op_f32(abs(global0.b.x))), _wgslsmith_f_op_f32(abs(global0.b.x)), global0.b.x)), 74390u, true, ~_wgslsmith_sub_u32(~4294967295u, u_input.a));
    return Struct_1(-abs(~(i32(-1i) * -15837i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(vec4<bool>(true, false, var_0.x, global0.d), _wgslsmith_f_op_vec2_f32(trunc(var_3.b.xz)), _wgslsmith_f_op_f32(-1767f * -770f), _wgslsmith_div_vec3_i32(vec3<i32>(-70665i, 11109i, -2147483647i), arg_0)))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x - 1352f)), _wgslsmith_f_op_vec3_f32(func_1(var_0, _wgslsmith_f_op_vec2_f32(-var_3.b.yx), _wgslsmith_f_op_f32(var_3.b.x + 758f), vec3<i32>(var_2.x, -2147483647i, var_3.a))).x, _wgslsmith_f_op_f32(abs(-1733f)))), _wgslsmith_dot_vec3_u32(reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(1u, global0.e, 29085u), vec3<u32>(33322u, global3.x, 0u))), _wgslsmith_sub_vec3_u32(vec3<u32>(46625u, 1u, global0.e), vec3<u32>(global3.x, global3.x, 5506u)) & (vec3<u32>(global0.c, global3.x, 26618u) | vec3<u32>(4294967295u, global0.c, 15047u))) << (~(u_input.a ^ 4294967295u) % 32u), false, u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(vec3<i32>(-(~global0.a) ^ 1786i, -reverseBits(global0.a), func_4(Struct_1(19748i << (global0.e % 32u), _wgslsmith_f_op_vec3_f32(func_1(vec4<bool>(global0.d, true, global0.d, true), global0.b.xy, 459f, vec3<i32>(-20450i, global0.a, -43221i))), 26431u ^ global0.e, true, ~40018u))));
    var var_0 = u_input.d;
    let var_1 = _wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.c, 4294967295u, 4294967295u) ^ ~_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.c, 1u, 0u), _wgslsmith_mod_vec3_u32(vec3<u32>(30798u, global3.x, 1u), vec3<u32>(global3.x, global0.e, 1u)), vec3<u32>(u_input.d, 53566u, global0.c)), ~vec3<u32>(abs(firstTrailingBit(0u)), 1u, 33290u));
    let var_2 = Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 0i, global0.a, ~13682i), select(vec4<i32>(global0.a, -1i, 0i, -2147483647i), vec4<i32>(global0.a, global0.a, global0.a, global0.a), global0.d)) ^ global0.a, global0.b, var_1.x, true, 129017u);
    global0 = var_2;
    var_0 = u_input.a;
    var_0 = 29654u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(var_2.b.x, global0.b.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.b.x, -1385f, 1000f, 1020f))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, -237f, var_2.b.x, var_2.b.x), vec4<f32>(var_2.b.x, var_2.b.x, global0.b.x, global0.b.x)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-344f, 457f, 436f, var_2.b.x)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, var_2.b.x, -325f, 560f) * vec4<f32>(global0.b.x, -100f, 1553f, -2015f))))))));
}

