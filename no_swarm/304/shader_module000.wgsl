struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<bool>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: vec4<f32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec4<i32> {
    return _wgslsmith_mod_vec4_i32(max(vec4<i32>(14732i, global0.d ^ global0.d, -51251i, global0.d << (4294967295u % 32u)), abs(vec4<i32>(global0.d, global0.d, global0.d, 1i)) << (min(vec4<u32>(81366u, u_input.a.x, global0.b, global0.a.x), vec4<u32>(4294967295u, 55837u, u_input.a.x, 1u)) % vec4<u32>(32u))) | ((-vec4<i32>(global0.d, global0.d, global0.d, -1i) & _wgslsmith_div_vec4_i32(vec4<i32>(-28616i, 0i, global0.d, -1i), vec4<i32>(global0.d, global0.d, global0.d, -1i))) ^ max(vec4<i32>(2147483647i, global0.d, 0i, global0.d) << (vec4<u32>(u_input.a.x, 71087u, global0.b, u_input.a.x) % vec4<u32>(32u)), vec4<i32>(global0.d, 12602i, global0.d, global0.d) & vec4<i32>(global0.d, global0.d, global0.d, 2147483647i))), _wgslsmith_mod_vec4_i32(firstLeadingBit(~(~vec4<i32>(global0.d, global0.d, 10684i, global0.d))), vec4<i32>(global0.d, global0.d, select(_wgslsmith_dot_vec3_i32(vec3<i32>(-15258i, 43421i, global0.d), vec3<i32>(44531i, -24664i, global0.d)), _wgslsmith_dot_vec3_i32(vec3<i32>(global0.d, global0.d, 30566i), vec3<i32>(-2147483647i, 14909i, global0.d)), all(vec2<bool>(false, false))), ~(global0.d << (32348u % 32u)))));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_3(~select(-func_3(), min(vec4<i32>(global0.d, global0.d, global0.d, global0.d) ^ vec4<i32>(14164i, global0.d, global0.d, global0.d), _wgslsmith_mod_vec4_i32(vec4<i32>(global0.d, global0.d, global0.d, global0.d), vec4<i32>(global0.d, -4881i, global0.d, global0.d))), !select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), true)), vec2<bool>(true, all(vec3<bool>(true, true, true))));
    let var_1 = Struct_1(select(vec2<u32>(firstTrailingBit(firstTrailingBit(global0.b)), (global0.a.x >> (4294967295u % 32u)) >> (~1u % 32u)), u_input.a.yy, var_0.b), ~4294967295u << (max(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(global0.b, u_input.a.x, 64338u, 50941u)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 14464u, global0.b, 40321u), vec4<u32>(global0.a.x, 4294967295u, global0.a.x, global0.a.x))), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 32433u, u_input.a.x), vec3<u32>(global0.b, 4161u, 0u)), ~global0.a.x)) % 32u), -1202f, 0i);
    global0 = Struct_1(~vec2<u32>(u_input.a.x | 60484u, 0u), 34455u, -598f, 1i);
    let var_2 = _wgslsmith_f_op_f32(select(-739f, global0.c, true));
    var var_3 = Struct_2(var_1);
    return Struct_1(var_3.a.a & max(_wgslsmith_mod_vec2_u32(~u_input.a.yz, select(var_1.a, var_1.a, true)), (vec2<u32>(4294967295u, var_3.a.a.x) >> (var_1.a % vec2<u32>(32u))) >> (select(vec2<u32>(127365u, 25428u), u_input.a.yy, vec2<bool>(var_0.b.x, true)) % vec2<u32>(32u))), select(u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.a.x, u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a.yz, vec2<u32>(4294967295u, var_1.b)), var_3.a.a.x), vec4<u32>(~global0.b, _wgslsmith_sub_u32(var_1.b, global0.a.x), 0u, ~global0.a.x)), 10209u == global0.a.x), 404f, var_1.d);
}

fn func_1(arg_0: Struct_1) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-712f, _wgslsmith_f_op_f32(min(global0.c, global0.c)), -1000f, 439f));
    global0 = func_2();
    let var_1 = Struct_2(Struct_1(arg_0.a, _wgslsmith_mod_u32(11386u, min(_wgslsmith_dot_vec3_u32(u_input.a, u_input.a), _wgslsmith_sub_u32(u_input.a.x, 12529u))), arg_0.c, reverseBits(-21594i)));
    var var_2 = _wgslsmith_div_i32(-73939i, arg_0.d);
    var var_3 = func_2();
    return _wgslsmith_div_vec2_f32(var_0.yy, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_0.yw))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(Struct_1(vec2<u32>(18901u, 0u), 1u, -540f, global0.d))) - vec2<f32>(_wgslsmith_f_op_f32(441f * global0.c), -788f)))));
    var var_1 = Struct_3(firstTrailingBit(-reverseBits(~vec4<i32>(global0.d, global0.d, 20817i, global0.d))), vec2<bool>(true, true));
    var var_2 = -1i;
    var_1 = Struct_3(_wgslsmith_add_vec4_i32(max(-vec4<i32>(-56125i, var_1.a.x, global0.d, 0i), _wgslsmith_clamp_vec4_i32(vec4<i32>(-6968i, 1i, 36167i, global0.d), vec4<i32>(-1i, global0.d, 27894i, 1i), var_1.a) ^ -vec4<i32>(var_1.a.x, -12396i, -4409i, global0.d)), vec4<i32>(0i, ~(-14625i), max(max(30988i, 2147483647i), ~(-16874i)), global0.d)), vec2<bool>(var_1.b.x, any(vec2<bool>(var_1.b.x, true))));
    let var_3 = vec2<bool>(!(((2147483647i | global0.d) & -2147483647i) != var_1.a.x), !(!any(vec3<bool>(false, var_1.b.x, var_1.b.x))));
    global0 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(global0.c, _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(var_0, _wgslsmith_f_op_vec2_f32(round(var_0))), _wgslsmith_f_op_vec2_f32(max(var_0, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1118f, var_0.x))))), var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -196f))), _wgslsmith_dot_vec4_i32(~var_1.a, vec4<i32>(17262i, ~0i, ~2147483647i, -9215i & _wgslsmith_dot_vec4_i32(var_1.a, vec4<i32>(var_1.a.x, global0.d, -33999i, var_1.a.x)))));
}

