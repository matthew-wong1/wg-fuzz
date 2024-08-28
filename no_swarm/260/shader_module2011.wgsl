struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: i32,
    d: vec2<f32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec3<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(21310u, 4294967295u, 79679u, 7904u);

var<private> global1: array<vec2<bool>, 32>;

var<private> global2: array<Struct_4, 26>;

var<private> global3: Struct_4;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: bool, arg_1: vec2<i32>, arg_2: i32) -> i32 {
    var var_0 = vec3<bool>(select(false || !all(vec4<bool>(global3.b.a.x, global3.b.a.x, true, global3.b.a.x)), false, _wgslsmith_mod_u32(~global3.e.x, ~24876u) >= 54601u), !(!select(arg_0, global3.b.a.x && false, global3.b.a.x)), all(!(!(!vec4<bool>(global3.b.a.x, false, global3.b.a.x, global3.b.a.x)))));
    var var_1 = _wgslsmith_f_op_f32(global3.a.b + 475f);
    var_0 = vec3<bool>(arg_0 & (u_input.c.x != 49224u), all(vec4<bool>(all(vec3<bool>(global3.b.a.x, global3.b.a.x, false)), false, true, true)), all(vec3<bool>(false, true, (1i << (u_input.d % 32u)) > 28217i)));
    return arg_1.x;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_4) -> i32 {
    global1 = array<vec2<bool>, 32>();
    var var_0 = Struct_2(Struct_1(arg_1.a.a, -1239f, abs(abs(vec2<u32>(24239u, arg_1.a.c.x))), firstTrailingBit(vec3<u32>(global0.x, arg_1.a.c.x, arg_1.a.c.x)) | ~(vec3<u32>(19984u, 0u, 13828u) & vec3<u32>(global0.x, 32333u, 0u))));
    global2 = array<Struct_4, 26>();
    let var_1 = vec4<i32>(arg_1.a.a, arg_0.a.a, -(~8450i), func_3(!(!(1871f < global3.a.b)), vec2<i32>(6909i, 1i), var_0.a.a));
    global3 = arg_1;
    return var_1.x;
}

fn func_1() -> Struct_2 {
    var var_0 = vec4<i32>(~_wgslsmith_dot_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(global3.a.a, -31423i, -14901i, u_input.b), vec4<i32>(global3.a.a, u_input.a.x, global3.a.a, u_input.a.x)), vec4<i32>(reverseBits(-2147483647i), _wgslsmith_sub_i32(-14295i, u_input.a.x), -1i, -1i << (global0.x % 32u))), ~(2147483647i & u_input.b), -(~21519i), ~_wgslsmith_clamp_i32(2147483647i, func_2(Struct_2(global3.a), global2[_wgslsmith_index_u32(4294967295u, 26u)]), -global3.b.b.x) << (_wgslsmith_mod_u32(12824u, u_input.c.x) % 32u));
    return Struct_2(Struct_1(func_3(!global3.b.a.x, ~firstLeadingBit(var_0.xy), -_wgslsmith_dot_vec4_i32(vec4<i32>(14936i, var_0.x, -15777i, var_0.x), vec4<i32>(var_0.x, u_input.a.x, -1i, 1705i))), global3.d.x, vec2<u32>(global3.a.c.x, u_input.c.x), select(~global0.xyz, vec3<u32>(max(0u, global0.x), _wgslsmith_clamp_u32(global3.e.x, global0.x, u_input.d), ~global0.x), false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec3_u32(vec3<u32>(18563u, _wgslsmith_div_u32(~reverseBits(global3.e.x), reverseBits(global0.x & 65777u)), ~(~global0.x >> (~global3.a.d.x % 32u))), abs(global3.a.d ^ vec3<u32>(global3.e.x, ~1u, firstLeadingBit(1u))));
    var var_1 = ~vec2<u32>(~(11476u | ~global3.a.d.x), firstTrailingBit(4779u));
    var var_2 = func_1();
    global2 = array<Struct_4, 26>();
    let var_3 = -15476i;
    var var_4 = global3.b;
    var var_5 = Struct_1(-_wgslsmith_dot_vec2_i32(u_input.a.yz, ~var_4.b), var_2.a.b, vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(var_0.x, 5041u & var_2.a.d.x, global0.x), 90855u), ~4294967295u), vec3<u32>(~_wgslsmith_mult_u32(min(u_input.c.x, 4838u), ~709u), countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 1u, var_2.a.d.x, 72021u), vec4<u32>(var_2.a.d.x, 4294967295u, u_input.d, 4294967295u))), 1u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(-651f)), u_input.a.zy, _wgslsmith_div_vec3_f32(vec3<f32>(var_5.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(784f, global3.a.b) + _wgslsmith_f_op_f32(f32(-1f) * -1208f)), _wgslsmith_f_op_f32(f32(-1f) * -981f)), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_2.a.b)), _wgslsmith_f_op_f32(-626f + global3.a.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.d.x)), 1987f)), select(_wgslsmith_mult_vec4_i32(firstLeadingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, 0i, 7859i, var_5.a), vec4<i32>(73039i, 7373i, 2147483647i, global3.c), vec4<i32>(var_3, var_3, global3.b.b.x, var_3))), vec4<i32>(abs(-28243i), abs(66815i), -14519i, _wgslsmith_mod_i32(44576i, var_4.b.x))), firstTrailingBit(vec4<i32>(var_3, firstLeadingBit(0i), -var_5.a, var_5.a)), var_4.a.x));
}

