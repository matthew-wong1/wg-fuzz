struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-1i, 82637i, i32(-2147483648), 2147483647i);

var<private> global1: array<vec3<bool>, 16>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: f32) -> bool {
    let var_0 = _wgslsmith_mod_vec4_i32(vec4<i32>(abs(countOneBits(global0.x)), -2147483647i, 35178i, i32(-1i) * -52961i), -_wgslsmith_mod_vec4_i32(vec4<i32>(-4281i, 1i, 20840i, global0.x), vec4<i32>(-2147483647i, u_input.a.x, global0.x, global0.x))) >> (~(~select(vec4<u32>(1u, 1u, 1u, 1u), firstLeadingBit(vec4<u32>(97758u, 1u, 5710u, 52440u)), true)) % vec4<u32>(32u));
    global0 = _wgslsmith_div_vec4_i32(var_0, max(_wgslsmith_mod_vec4_i32(vec4<i32>(-916i ^ global0.x, u_input.a.x, 1i, -u_input.a.x), vec4<i32>(1i, firstTrailingBit(1i), var_0.x, -50231i)), ~firstLeadingBit(var_0)));
    var var_1 = Struct_2(!(arg_1 >= _wgslsmith_f_op_f32(-2324f * _wgslsmith_f_op_f32(-arg_0.x))), Struct_1(-76601i, 1i >= u_input.a.x, _wgslsmith_mod_vec2_i32(abs(global0.wz), global0.xw), vec2<u32>(firstLeadingBit(~0u), 1u)), 1u, ~25445u);
    global0 = vec4<i32>(-1i) * -select(vec4<i32>(u_input.a.x, -11027i, var_1.b.a, var_1.b.c.x ^ -1i), ~_wgslsmith_mod_vec4_i32(var_0, var_0), true);
    let var_2 = ~vec2<u32>(~19375u, var_1.b.d.x);
    return var_1.b.b;
}

fn func_2() -> vec2<u32> {
    global0 = vec4<i32>(-(~_wgslsmith_div_i32(0i, -5492i)), ~_wgslsmith_dot_vec4_i32(~vec4<i32>(0i, -45701i, global0.x, -1i), -vec4<i32>(-1i, 2147483647i, 15204i, global0.x)), u_input.a.x, 22166i);
    let var_0 = Struct_1(-9776i, true && func_3(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-639f, 1000f, -326f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(339f, -1000f, -1000f)), true)), -1673f), global0.wx, _wgslsmith_clamp_vec2_u32(~_wgslsmith_mult_vec2_u32(countOneBits(vec2<u32>(1u, 15370u)), vec2<u32>(227u, 56838u)), ~reverseBits(abs(vec2<u32>(2970u, 0u))), ~vec2<u32>(29155u, 1u)));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(548f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1090f)) * _wgslsmith_f_op_f32(floor(624f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(2659f - -1618f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1190f)) - _wgslsmith_f_op_f32(sign(-1375f))))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(573f, 447f, -1347f, 1492f)) * _wgslsmith_div_vec4_f32(vec4<f32>(949f, -556f, -742f, 684f), vec4<f32>(-1744f, -1381f, 134f, 154f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(2104f, 865f, 1115f, 504f)))))), vec4<f32>(1f, 1f, 1f, 1f), all(vec3<bool>(any(global1[_wgslsmith_index_u32(var_0.d.x, 16u)]), false, true)))));
    let var_2 = Struct_2(var_0.b, Struct_1(22009i & -(~u_input.a.x), -(~(-10723i)) <= var_0.c.x, firstLeadingBit(abs(global0.zw)), var_0.d), var_0.d.x << (_wgslsmith_clamp_u32(_wgslsmith_mult_u32(1u, 1u), _wgslsmith_div_u32(var_0.d.x, 35421u), 56387u >> (_wgslsmith_mod_u32(var_0.d.x, 0u) % 32u)) % 32u), ~(var_0.d.x | _wgslsmith_mult_u32(max(4294967295u, var_0.d.x), var_0.d.x)));
    return vec2<u32>(select(28700u, _wgslsmith_div_u32(_wgslsmith_mod_u32(78868u, 17281u), var_2.b.d.x) ^ var_2.b.d.x, false), ~32308u);
}

fn func_1() -> vec4<bool> {
    let var_0 = Struct_2(false, Struct_1(u_input.a.x, true, _wgslsmith_div_vec2_i32(global0.zy, global0.zw), abs(func_2())), firstTrailingBit(abs(1u) << (0u % 32u)), 1u);
    var var_1 = min(~(~var_0.d), ~firstLeadingBit(~8116u)) << (_wgslsmith_clamp_u32(var_0.d, var_0.c, var_0.b.d.x << (~(~4294967295u) % 32u)) % 32u);
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(830f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(2751f, 2722f, var_0.a == var_0.a)) - 593f)));
    global0 = _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(~reverseBits(vec4<i32>(7673i, global0.x, 2147483647i, u_input.a.x)), vec4<i32>(-1i, firstLeadingBit(-12860i), global0.x, global0.x)), vec4<i32>(-reverseBits(global0.x), global0.x, u_input.a.x, global0.x)) & reverseBits(~(~vec4<i32>(u_input.a.x, var_0.b.a, var_0.b.c.x, -1i)) << (vec4<u32>(var_0.c & 14359u, 16592u, 1u, _wgslsmith_sub_u32(0u, var_0.d)) % vec4<u32>(32u)));
    global0 = vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(countOneBits(var_0.b.c.x), ~max(var_0.b.a, global0.x)), _wgslsmith_clamp_vec2_i32(vec2<i32>(~1i, -var_0.b.a), u_input.a, reverseBits(_wgslsmith_mult_vec2_i32(u_input.a, vec2<i32>(var_0.b.a, var_0.b.a))))), _wgslsmith_mult_i32(_wgslsmith_sub_i32(min(22993i, -1i) & (u_input.a.x >> (var_0.c % 32u)), reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 0i), vec2<i32>(u_input.a.x, -1i)))), u_input.a.x), u_input.a.x, ~countOneBits(-42587i));
    return select(!select(vec4<bool>(!var_0.a, false, var_0.a, any(vec4<bool>(var_0.a, false, false, var_0.b.b))), select(!vec4<bool>(false, var_0.a, true, var_0.a), vec4<bool>(var_0.b.b, var_0.b.b, false, true), false), var_0.a), !select(vec4<bool>(var_0.b.b, !var_0.b.b, all(vec2<bool>(var_0.b.b, var_0.a)), true), vec4<bool>(!var_0.a, var_0.a, false, var_0.b.b), vec4<bool>(true, any(vec2<bool>(true, var_0.a)), true, var_0.a)), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, !var_0.b.b, all(vec2<bool>(var_0.b.b, true))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(select(true, select(true, all(func_1()), !any(vec3<bool>(true, true, true))), !all(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), true))), true);
    global0 = -vec4<i32>(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 89967i), vec2<i32>(u_input.a.x, u_input.a.x)) << (1u % 32u)), global0.x, _wgslsmith_div_i32(u_input.a.x, u_input.a.x), _wgslsmith_dot_vec2_i32(-firstLeadingBit(global0.zw), vec2<i32>(-1i) * -vec2<i32>(0i, global0.x)));
    let var_1 = u_input.a.x;
    var var_2 = Struct_2(var_0.x || true, Struct_1(var_1, var_0.x, vec2<i32>(var_1 >> (4294967295u % 32u), 38938i) | u_input.a, _wgslsmith_mult_vec2_u32(~vec2<u32>(1u, 1u), select(vec2<u32>(1u, 1u), _wgslsmith_mult_vec2_u32(vec2<u32>(60927u, 20290u), vec2<u32>(2766u, 0u)), !vec2<bool>(false, var_0.x)))), ~1u, 1u);
    var var_3 = ~var_2.b.d;
    global0 = min(vec4<i32>(min(u_input.a.x & var_2.b.a, 7717i) << (4294967295u % 32u), u_input.a.x, var_2.b.a, -u_input.a.x & 28587i), select(vec4<i32>(u_input.a.x, var_1, reverseBits(-1i), _wgslsmith_add_i32(~var_1, var_1)), ~vec4<i32>(~55194i, _wgslsmith_mult_i32(-24718i, -59144i), -var_2.b.c.x, -1i), true));
    global1 = array<vec3<bool>, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(494f - 1000f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -314f) + _wgslsmith_f_op_f32(f32(-1f) * -1432f))))), var_2.b.d);
}

