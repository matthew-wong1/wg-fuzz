struct Struct_1 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec4<i32>,
}

struct Struct_4 {
    a: f32,
    b: vec2<f32>,
    c: vec4<i32>,
    d: u32,
    e: Struct_2,
}

struct Struct_5 {
    a: vec4<f32>,
    b: Struct_3,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(true, vec3<i32>(-40476i, 24285i, -1i)), vec3<f32>(-870f, -149f, -1095f), vec4<i32>(2147483647i, 0i, -7584i, 1283i));

var<private> global1: vec3<i32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = vec2<i32>(~(firstLeadingBit(-u_input.b.x) | 0i), global1.x);
    global1 = vec3<i32>(countOneBits((u_input.b.x ^ ~2147483647i) ^ _wgslsmith_sub_i32(firstTrailingBit(1i), -global1.x)), var_0.x, _wgslsmith_mod_i32(-_wgslsmith_mod_i32(global0.c.x, global1.x) >> (7072u % 32u), 2147483647i));
    let var_1 = Struct_3(global0.a, global0.b, vec4<i32>(~(-8372i) ^ (i32(-1i) * -var_0.x), -1i, _wgslsmith_div_i32(563i, global1.x), min(abs(_wgslsmith_add_i32(-2147483647i, global1.x)), 18269i)));
    var var_2 = Struct_2(var_1.a);
    let var_3 = Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, 2073f, 478f, 1839f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.x, -150f, var_1.b.x, var_1.b.x) - vec4<f32>(var_1.b.x, global0.b.x, var_1.b.x, -256f)), !vec4<bool>(var_1.a.a, false, var_1.a.a, false))) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1913f, var_1.b.x, global0.b.x, global0.b.x))))), var_1, 1u);
    return var_3.c;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_3) -> vec2<f32> {
    global1 = u_input.b;
    var var_0 = 45990u;
    let var_1 = _wgslsmith_div_vec4_i32(vec4<i32>(firstLeadingBit((30382i >> (arg_0.x % 32u)) >> (4294967295u % 32u)), firstTrailingBit(~_wgslsmith_dot_vec4_i32(global0.c, vec4<i32>(arg_1.a.b.x, u_input.b.x, 22854i, 27953i))), -(~(-global1.x)), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(0i, u_input.a, -2147483647i, global1.x)), select(vec4<i32>(u_input.a, 2147483647i, -6394i, 14997i), arg_1.c, false)), -arg_1.c ^ ~global0.c)), -arg_1.c);
    var_0 = 1u;
    let var_2 = Struct_4(_wgslsmith_f_op_f32(min(1526f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1819f * 333f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-551f, -142f), _wgslsmith_f_op_vec2_f32(max(arg_1.b.xz, vec2<f32>(-603f, arg_1.b.x)))))))), vec4<i32>(-2147483647i, reverseBits(2147483647i), select(abs(abs(25042i)), abs(global0.a.b.x) & countOneBits(u_input.a), arg_1.a.a), arg_1.c.x), ~arg_0.x | arg_0.x, Struct_2(Struct_1(global0.a.a, vec3<i32>(reverseBits(u_input.a), _wgslsmith_sub_i32(arg_1.a.b.x, -1i), ~u_input.a))));
    return _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-arg_1.b.zx), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(170f, var_2.b.x), _wgslsmith_f_op_vec2_f32(floor(arg_1.b.zy))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-617f, 1624f), _wgslsmith_f_op_f32(-var_2.b.x)))))));
}

fn func_2(arg_0: u32, arg_1: vec4<i32>) -> bool {
    var var_0 = vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.a >> (47983u % 32u), firstLeadingBit(1815i)), _wgslsmith_mod_i32(-10507i ^ (0i ^ global1.x), global1.x)), global0.c.x, firstLeadingBit(arg_1.x), reverseBits(firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.c.x, global1.x, 45117i), vec3<i32>(global1.x, arg_1.x, u_input.a)))) & _wgslsmith_dot_vec2_i32(vec2<i32>(firstLeadingBit(1038i), _wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, 0i, global0.c.x, u_input.b.x), vec4<i32>(arg_1.x, global0.a.b.x, -2147483647i, 30942i))), ~global0.c.xw));
    var var_1 = Struct_2(Struct_1(select(select(global0.a.a, arg_0 > 8743u, global0.a.a), select(true, true, true), !global0.a.a), -_wgslsmith_div_vec3_i32(arg_1.zyz, u_input.b) & select(~vec3<i32>(-2147483647i, global0.c.x, u_input.a), vec3<i32>(global1.x, 46736i, -1i), vec3<bool>(global0.a.a, global0.a.a, true))));
    var var_2 = global0.a;
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(vec3<u32>(0u, min(_wgslsmith_div_u32(58113u, arg_0), arg_0), func_3()), Struct_3(Struct_1(var_2.a, -vec3<i32>(arg_1.x, 1i, -1i)), _wgslsmith_f_op_vec3_f32(global0.b - _wgslsmith_f_op_vec3_f32(-vec3<f32>(248f, global0.b.x, global0.b.x))), max(arg_1, max(arg_1, arg_1))))));
    let var_4 = Struct_4(var_3.x, vec2<f32>(_wgslsmith_div_f32(210f, global0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-713f))))), firstLeadingBit(global0.c) >> (vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(22417u, arg_0, 1u) | vec3<u32>(1u, 0u, arg_0), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_0, 0u, arg_0), vec3<u32>(13882u, 22159u, arg_0))), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, arg_0), vec2<u32>(arg_0, arg_0)), ~arg_0, arg_0), ~(arg_0 ^ 34752u), ~26553u | ~arg_0) % vec4<u32>(32u)), ~1u, Struct_2(var_1.a));
    return false;
}

fn func_1() -> Struct_5 {
    var var_0 = !vec2<bool>(global0.a.a, true);
    var var_1 = all(vec4<bool>(var_0.x | (-1441f >= global0.b.x), false, !(true & func_2(20135u, vec4<i32>(57958i, -32536i, global0.a.b.x, global0.a.b.x))), true));
    var_0 = !vec2<bool>(select(false, any(vec4<bool>(true, true, var_0.x, global0.a.a)) | false, true), all(vec4<bool>(true, true, true, var_0.x)));
    var var_2 = Struct_2(Struct_1(func_2(1u, vec4<i32>(-1i) * -vec4<i32>(2147483647i, global0.a.b.x, global1.x, u_input.b.x)), vec3<i32>(6651i, max(global0.c.x, u_input.a), _wgslsmith_clamp_i32(13684i, 0i, u_input.a)) | select(_wgslsmith_add_vec3_i32(global0.a.b, vec3<i32>(u_input.b.x, global1.x, global1.x)), u_input.b, true)));
    var var_3 = 36714u;
    return Struct_5(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(727f, -491f, global0.b.x, -2173f) - vec4<f32>(-990f, global0.b.x, -907f, global0.b.x))))))), Struct_3(var_2.a, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.b), _wgslsmith_f_op_vec3_f32(sign(global0.b))))), global0.c), max(max(_wgslsmith_div_u32(_wgslsmith_clamp_u32(0u, 1u, 0u), firstLeadingBit(0u)), _wgslsmith_div_u32(~67930u, ~40296u)), ~(~4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(46083u, ~(~4294967295u)), ~1u, -select(vec3<i32>(u_input.a, global0.c.x, -2147483647i), -vec3<i32>(0i, u_input.b.x, global0.c.x), !vec3<bool>(var_0.b.a.a, var_0.b.a.a, global0.a.a)) ^ (-u_input.b & ~firstLeadingBit(vec3<i32>(-1i, 2147483647i, var_0.b.c.x))));
}

