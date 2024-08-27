struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 10>;

var<private> global1: array<vec2<i32>, 17> = array<vec2<i32>, 17>(vec2<i32>(-54238i, 2768i), vec2<i32>(2147483647i, -35900i), vec2<i32>(-9776i, -1i), vec2<i32>(i32(-2147483648), 1297i), vec2<i32>(1i, -1i), vec2<i32>(23705i, 1i), vec2<i32>(2147483647i, 45267i), vec2<i32>(i32(-2147483648), -24457i), vec2<i32>(i32(-2147483648), -8613i), vec2<i32>(i32(-2147483648), -42843i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(2147483647i, 1i), vec2<i32>(i32(-2147483648), -1186i), vec2<i32>(69035i, 1i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(i32(-2147483648), -17843i), vec2<i32>(0i, 0i));

var<private> global2: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec3<i32>(i32(-2147483648), -23561i, 0i), vec3<bool>(true, true, false)), Struct_1(vec3<i32>(-1i, -13516i, 37741i), vec3<bool>(false, false, false)), Struct_1(vec3<i32>(-15141i, 609i, -12695i), vec3<bool>(true, false, false)), Struct_1(vec3<i32>(2147483647i, 0i, 2147483647i), vec3<bool>(true, true, false)), Struct_1(vec3<i32>(-19751i, -1i, 0i), vec3<bool>(false, true, false)), Struct_1(vec3<i32>(-50126i, 47605i, -9348i), vec3<bool>(true, false, true)), Struct_1(vec3<i32>(0i, 0i, -32650i), vec3<bool>(false, true, true)), Struct_1(vec3<i32>(9690i, 2147483647i, 19408i), vec3<bool>(true, true, false)), Struct_1(vec3<i32>(1i, 7920i, -15995i), vec3<bool>(false, false, true)), Struct_1(vec3<i32>(-1i, 1i, 1i), vec3<bool>(false, false, true)), Struct_1(vec3<i32>(1i, -9511i, -41820i), vec3<bool>(false, true, false)), Struct_1(vec3<i32>(-2068i, 9196i, i32(-2147483648)), vec3<bool>(false, true, false)));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_1() -> i32 {
    global2 = array<Struct_1, 12>();
    var var_0 = 1000f;
    let var_1 = vec3<f32>(-966f, -670f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(405f, 681f))), _wgslsmith_f_op_f32(-1f))))));
    var var_2 = ((-(~global0[_wgslsmith_index_u32(u_input.a, 10u)]) ^ _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(u_input.a, 10u)], _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(1u, 10u)], 0i, 16732i), i32(-1i) * -1415i)) << (~select(29571u, abs(0u), any(vec2<bool>(true, true))) % 32u)) << (_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(33704u, u_input.a, 40577u) << (vec3<u32>(75614u, u_input.a, 0u) % vec3<u32>(32u)), min(vec3<u32>(1u, u_input.a, u_input.a), vec3<u32>(u_input.a, 18088u, u_input.a))), abs(vec3<u32>(u_input.a, 1089u, u_input.a))), vec3<u32>(_wgslsmith_sub_u32(4294967295u, ~u_input.a), 0u, 1u)) % 32u);
    var var_3 = reverseBits(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(~u_input.a, 0u, u_input.a, ~1u)), vec4<u32>(18928u, _wgslsmith_mult_u32(firstTrailingBit(19198u), 4294967295u), _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, u_input.a, u_input.a), vec3<u32>(1u, u_input.a, u_input.a)), firstTrailingBit(52712u))));
    return -global0[_wgslsmith_index_u32(12189u, 10u)];
}

fn func_2() -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(289f + _wgslsmith_f_op_f32(785f * 317f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))), -104f)));
    var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(max(-820f, -372f)), _wgslsmith_f_op_f32(f32(-1f) * -2215f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x)))))));
    return firstLeadingBit(_wgslsmith_mod_vec2_u32(~(~countOneBits(vec2<u32>(u_input.a, 32290u))), vec2<u32>(~max(u_input.a, u_input.a), u_input.a)));
}

fn func_3(arg_0: i32) -> i32 {
    var var_0 = true;
    var var_1 = global2[_wgslsmith_index_u32(u_input.a, 12u)];
    var var_2 = Struct_1(-vec3<i32>(~(global0[_wgslsmith_index_u32(u_input.a, 10u)] ^ -2147483647i), _wgslsmith_add_i32(_wgslsmith_clamp_i32(1i, -28425i, 41716i), ~arg_0), -1i), select(select(vec3<bool>(true, var_1.b.x, !var_1.b.x), vec3<bool>(true, true, true), any(select(var_1.b.yy, var_1.b.yy, var_1.b.x))), var_1.b, vec3<bool>(!(u_input.a <= u_input.a), !(var_1.b.x | var_1.b.x), var_1.b.x | !var_1.b.x)));
    var var_3 = var_1.b.x;
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-505f * _wgslsmith_f_op_f32(f32(-1f) * -1457f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(866f)), _wgslsmith_f_op_f32(-319f - 292f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-691f, -1552f)) - _wgslsmith_f_op_f32(-934f + -603f)) + -860f), 693f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-628f, 324f), 1f)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(1722f))))))));
    return firstLeadingBit(_wgslsmith_add_i32(-_wgslsmith_add_i32(firstTrailingBit(11958i), _wgslsmith_sub_i32(1i, 0i)), _wgslsmith_add_i32(~_wgslsmith_clamp_i32(-1i, -1i, global0[_wgslsmith_index_u32(u_input.a, 10u)]), 0i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(func_1(), -52057i);
    global0 = array<i32, 10>();
    let var_1 = _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_mult_u32(0u, 18654u)), 10u)], _wgslsmith_clamp_i32(0i, u_input.b.x, 2147483647i)), _wgslsmith_sub_i32(firstLeadingBit(u_input.b.x), 2147483647i), global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec2_u32(func_2(), vec2<u32>(u_input.a, u_input.a))), 10u)], ~2147483647i), vec4<i32>(-6249i, u_input.b.x, -func_3(~(-2147483647i)), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(u_input.b.yww, abs(u_input.b.zyz)), u_input.b.x)));
    var var_2 = false;
    var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_clamp_vec4_i32(~reverseBits(vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, u_input.b.x)), u_input.b, u_input.b), -_wgslsmith_add_vec4_i32(firstLeadingBit(-vec4<i32>(1i, var_1.x, global0[_wgslsmith_index_u32(u_input.a, 10u)], u_input.b.x)), -_wgslsmith_mod_vec4_i32(vec4<i32>(1i, 17109i, 1i, u_input.b.x), vec4<i32>(-1i, -470i, var_1.x, 38291i))), 4294967295u, vec3<f32>(-157f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-1553f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -709f) - _wgslsmith_f_op_f32(f32(-1f) * -972f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-652f, 1840f)))));
}

