struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: vec2<bool>,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
    c: i32,
    d: vec4<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: vec2<bool>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: u32,
    d: vec4<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 12>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1) -> vec3<u32> {
    var var_0 = u_input.d.x ^ abs(-_wgslsmith_div_i32(_wgslsmith_div_i32(0i, arg_1.d), u_input.d.x));
    global0 = array<f32, 12>();
    global0 = array<f32, 12>();
    var_0 = arg_1.d;
    let var_1 = _wgslsmith_add_vec3_i32(u_input.c, vec3<i32>(_wgslsmith_sub_i32(~u_input.c.x, -1701i << (u_input.b % 32u)), -1i, 0i | ~(-u_input.d.x)));
    return ~u_input.e;
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: vec4<u32>) -> vec4<bool> {
    var var_0 = vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(~vec4<i32>(u_input.a.x, arg_0.b.c, 1i, -1i), vec4<i32>(-1i, arg_0.b.c, arg_0.a.x, 18408i)) >> (vec4<u32>(1u, ~u_input.e.x, u_input.b, countOneBits(u_input.b)) % vec4<u32>(32u)), min(_wgslsmith_clamp_vec4_i32(select(vec4<i32>(-2147483647i, u_input.d.x, 0i, u_input.a.x), vec4<i32>(1i, u_input.c.x, u_input.c.x, -30963i), arg_0.b.d.x), select(vec4<i32>(-845i, -14919i, 29942i, -2147483647i), vec4<i32>(u_input.a.x, 1i, 1i, -987i), vec4<bool>(arg_0.b.a, arg_0.b.b.x, true, false)), min(vec4<i32>(arg_0.b.c, -1i, -2147483647i, u_input.d.x), vec4<i32>(0i, arg_0.b.c, u_input.c.x, -16031i))), -_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 0i, arg_0.a.x, u_input.d.x), vec4<i32>(1i, -1982i, u_input.a.x, u_input.a.x)))), min(_wgslsmith_clamp_i32(21651i, ~1i, arg_0.a.x), -firstTrailingBit(-1i) << (~(~u_input.b) % 32u)), u_input.c.x);
    let var_1 = false;
    var_0 = _wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(6844i, 2147483647i, var_0.x)), u_input.c);
    var var_2 = ~4294967295u;
    var var_3 = u_input.a.x;
    return !select(!(!select(vec4<bool>(arg_0.b.d.x, var_1, var_1, true), arg_0.b.d, vec4<bool>(arg_0.b.a, arg_0.b.a, false, var_1))), arg_0.b.d, true);
}

fn func_1() -> bool {
    global0 = array<f32, 12>();
    var var_0 = vec4<bool>(true, true, true, true);
    let var_1 = select(vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.e, ~func_2(vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 12u)], 715f, -1851f), Struct_1(vec4<f32>(global0[_wgslsmith_index_u32(u_input.e.x, 12u)], -142f, -154f, 423f), vec3<bool>(true, var_0.x, var_0.x), vec2<bool>(false, var_0.x), 1i))), 0u), u_input.e.yz, !vec2<bool>(any(select(var_0.zwz, var_0.wzy, false)), var_0.x));
    var_0 = select(select(select(vec4<bool>(false, true, var_0.x, true), !(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), true), select(select(vec4<bool>(true, false, true, var_0.x), select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(true, false, true, var_0.x), var_0.x), 212f > global0[_wgslsmith_index_u32(u_input.e.x, 12u)]), !(!vec4<bool>(var_0.x, var_0.x, var_0.x, false)), false | var_0.x), true), select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), func_3(Struct_3(vec3<i32>(1i, u_input.d.x, u_input.a.x), Struct_2(true, var_0.yz, u_input.d.x, vec4<bool>(var_0.x, var_0.x, false, var_0.x))), -1250f, vec4<u32>(var_1.x, var_1.x, u_input.b, u_input.b) >> (vec4<u32>(var_1.x, 1u, var_1.x, 99849u) % vec4<u32>(32u))), var_0.x), var_0.x);
    global0 = array<f32, 12>();
    return !(!var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(u_input.e.x, select(u_input.c.x, -1903i, func_1()), vec2<bool>(true, max(u_input.b, countOneBits(u_input.b)) == min(1u, 0u)));
    global0 = array<f32, 12>();
    var var_1 = ~_wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.d.x, firstTrailingBit(abs(u_input.c.x)), _wgslsmith_clamp_i32(43979i << (var_0.a % 32u), u_input.c.x, 1i)), var_0.b);
    global0 = array<f32, 12>();
    var var_2 = ~countOneBits(-vec4<i32>(var_0.b, _wgslsmith_div_i32(u_input.c.x, 4799i), _wgslsmith_mod_i32(2147483647i, var_0.b), -var_0.b));
    var_2 = ~_wgslsmith_sub_vec4_i32(max(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, 1i, 2147483647i, -1i), vec4<i32>(33558i, var_2.x, u_input.c.x, -28986i) | vec4<i32>(var_2.x, var_2.x, 1i, u_input.d.x)), -vec4<i32>(var_0.b, 611i, u_input.a.x, var_2.x)), vec4<i32>(-17262i, 9966i, _wgslsmith_mult_i32(-1i << (var_0.a % 32u), select(var_0.b, -2147483647i, true)), reverseBits(_wgslsmith_dot_vec2_i32(u_input.a.zy, vec2<i32>(0i, 0i)))));
    var var_3 = ~_wgslsmith_mult_vec3_i32(var_2.yww, -(u_input.a | ~vec3<i32>(var_2.x, 1i, 2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_0.a, 12u)] * 326f), -1000f, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.e, vec3<u32>(4294967295u, var_0.a, 38557u)), 12u)]), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-988f, global0[_wgslsmith_index_u32(4294967295u, 12u)], 1170f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(19108u, 12u)], 2112f, global0[_wgslsmith_index_u32(7643u, 12u)])))))), vec3<f32>(_wgslsmith_f_op_f32(trunc(737f)), 990f, -399f))), ~(~reverseBits(var_0.a)), ~max(countOneBits(vec4<u32>(61982u, u_input.b, 4294967295u, u_input.e.x)) | (vec4<u32>(9909u, u_input.e.x, 0u, u_input.b) >> (vec4<u32>(u_input.b, var_0.a, 14876u, 22375u) % vec4<u32>(32u))), vec4<u32>(0u, 50993u, var_0.a, u_input.e.x) << (vec4<u32>(var_0.a, 4294967295u, var_0.a, u_input.e.x) % vec4<u32>(32u))), ~(~abs(select(vec4<u32>(35249u, 1u, 18210u, 0u), vec4<u32>(u_input.b, 24189u, u_input.b, 46278u), vec4<bool>(false, true, false, var_0.c.x)))));
}

