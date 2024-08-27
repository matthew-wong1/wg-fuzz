struct Struct_1 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: i32;

var<private> global2: array<Struct_2, 2>;

var<private> global3: Struct_2 = Struct_2(Struct_1(false, vec3<f32>(-498f, -417f, -815f)), Struct_1(false, vec3<f32>(-323f, -208f, 634f)), -1i);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_3) -> vec3<u32> {
    var var_0 = arg_0;
    return ~vec3<u32>(abs(41005u), select(_wgslsmith_mult_u32(~1u, 1u), u_input.a, any(select(vec2<bool>(false, arg_1.d.a), vec2<bool>(var_0.a.a, global3.a.a), vec2<bool>(true, var_0.b.a)))), ~_wgslsmith_mult_u32(4294967295u, min(u_input.a, u_input.a)));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: f32) -> bool {
    global0 = _wgslsmith_div_vec3_i32(select(_wgslsmith_sub_vec3_i32(-(~vec3<i32>(2147483647i, 1i, global3.c)), vec3<i32>(_wgslsmith_mult_i32(-1i, global3.c), 0i << (u_input.a % 32u), _wgslsmith_mod_i32(72603i, 1i))), ~vec3<i32>(abs(-2147483647i), -2147483647i, -1i | global3.c), true), ~_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, arg_0, arg_0) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(u_input.a, 28209u, u_input.a)) % vec3<u32>(32u)), vec3<i32>(1i, select(-2147483647i, 22076i, global3.b.a), firstTrailingBit(-23828i))));
    var var_0 = (!any(vec2<bool>(global3.b.a, false)) & global3.b.a) && !global3.a.a;
    var var_1 = global2[_wgslsmith_index_u32(~min(~(_wgslsmith_dot_vec2_u32(vec2<u32>(55236u, u_input.a), vec2<u32>(0u, u_input.a)) & (52574u >> (u_input.a % 32u))), abs(u_input.a)), 2u)];
    global1 = _wgslsmith_div_i32(1931i, ~min(global3.c, var_1.c));
    let var_2 = Struct_3(-_wgslsmith_add_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(global0.x, 0i, 2147483647i), firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(arg_0, var_1.c, global3.c), vec3<i32>(arg_0, -2147483647i, arg_0)))), Struct_1(true, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, 1f, -2587f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(257f, 746f, global3.b.b.x), var_1.b.b, vec3<bool>(true, false, global3.a.a))) + _wgslsmith_f_op_vec3_f32(select(var_1.a.b, global3.a.b, var_1.a.a))))), 574f, Struct_1(global3.a.a, _wgslsmith_f_op_vec3_f32(global3.a.b - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-768f, -125f, arg_1)))), Struct_2(Struct_1(false, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, global3.a.b.x, arg_1) * var_1.a.b) + var_1.a.b)), Struct_1(var_1.a.a, var_1.b.b), _wgslsmith_add_i32(global0.x, -1i)));
    return true;
}

fn func_2(arg_0: bool) -> Struct_2 {
    let var_0 = Struct_3(vec3<i32>(~(global0.x & (global3.c ^ global3.c)), -abs(global3.c), -global3.c), global3.a, global3.b.b.x, global3.b, global2[_wgslsmith_index_u32(~u_input.a, 2u)]);
    global3 = Struct_2(global3.a, global3.a, 63087i);
    let var_1 = select(vec4<i32>(var_0.e.c, global0.x, ~7301i, -19263i), select(vec4<i32>(-47435i, 45624i, var_0.a.x, -62865i) ^ vec4<i32>(-1i, 2147483647i, 2147483647i, global0.x), _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.e.c, -25265i, var_0.a.x, 17239i), vec4<i32>(-2147483647i, var_0.a.x, 2147483647i, global3.c)), vec4<i32>(0i, var_0.e.c, var_0.e.c, global3.c) << (vec4<u32>(u_input.a, u_input.a, 0u, u_input.a) % vec4<u32>(32u))), all(vec4<bool>(arg_0, true, global3.a.a, true))), func_3(global0.x, _wgslsmith_f_op_f32(-var_0.b.b.x), global3.b.b.x)) >> (~vec4<u32>(~(19730u << (0u % 32u)), ~u_input.a, _wgslsmith_add_u32(0u, _wgslsmith_sub_u32(17132u, u_input.a)), _wgslsmith_sub_u32(u_input.a >> (u_input.a % 32u), ~u_input.a)) % vec4<u32>(32u));
    var var_2 = vec4<bool>(false || var_0.d.a, all(!select(select(vec3<bool>(arg_0, arg_0, global3.b.a), vec3<bool>(arg_0, global3.a.a, arg_0), vec3<bool>(arg_0, var_0.b.a, true)), select(vec3<bool>(true, true, global3.a.a), vec3<bool>(arg_0, global3.b.a, var_0.e.b.a), vec3<bool>(false, false, false)), true)), false, select(true, all(vec3<bool>(arg_0, global3.b.a, var_0.d.a || true)), true));
    global0 = var_0.a;
    return var_0.e;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(firstLeadingBit(_wgslsmith_div_vec3_u32(abs(func_1(Struct_2(Struct_1(true, global3.b.b), Struct_1(global3.b.a, vec3<f32>(-1168f, global3.b.b.x, 462f)), 39520i), Struct_3(vec3<i32>(global0.x, -39477i, -9552i), Struct_1(global3.b.a, global3.b.b), 2903f, global3.a, global2[_wgslsmith_index_u32(u_input.a, 2u)]))), abs(vec3<u32>(u_input.a, u_input.a, u_input.a)) | ~vec3<u32>(83488u, 56794u, 31486u))));
    var var_1 = func_2(!global3.b.a);
    let var_2 = global3.a;
    let var_3 = Struct_3(~min(vec3<i32>(global0.x, select(var_1.c, global3.c, true), 11853i), vec3<i32>(var_1.c, var_1.c, var_1.c) >> (reverseBits(vec3<u32>(8365u, u_input.a, 0u)) % vec3<u32>(32u))), func_2(var_0.x != abs(u_input.a)).a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.a.b.x))), global3.a, func_2(4294967295u >= ~var_0.x));
    let var_4 = 28233u;
    var var_5 = !(!vec2<bool>(all(!vec4<bool>(var_1.a.a, true, global3.a.a, false)), all(!vec4<bool>(var_3.d.a, false, var_3.b.a, var_3.e.b.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_u32((vec4<u32>(1u, 8780u, var_0.x, 4294967295u) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, 91752u, 4294967295u, var_0.x), vec4<u32>(4294967295u, 4294967295u, var_0.x, var_0.x), vec4<u32>(1u, 32991u, u_input.a, 10668u)) % vec4<u32>(32u))) & min(reverseBits(vec4<u32>(var_4, u_input.a, var_4, 119563u)), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 1u, 50102u, 0u), vec4<u32>(var_0.x, u_input.a, 23159u, var_4))), vec4<u32>(_wgslsmith_clamp_u32(var_4, u_input.a, firstTrailingBit(2758u)), 24360u, abs(39375u), var_4), _wgslsmith_clamp_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.a, var_4, 1u), vec4<u32>(48622u, u_input.a, 0u, u_input.a)), abs(vec4<u32>(65747u, 4294967295u, 5276u, var_0.x)) & (vec4<u32>(var_4, var_0.x, var_4, 1u) >> (vec4<u32>(var_0.x, var_0.x, 22137u, var_0.x) % vec4<u32>(32u))), reverseBits(vec4<u32>(4294967295u, 19202u, var_4, 8720u)) | (vec4<u32>(4294967295u, var_4, 61889u, var_4) << (vec4<u32>(4294967295u, var_0.x, u_input.a, 24381u) % vec4<u32>(32u))))), var_1.b.b.x);
}

