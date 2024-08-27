struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(Struct_1(vec4<i32>(-18047i, -18962i, 2147483647i, 1i), 4294967295u, -1i), vec4<bool>(false, true, true, false)), Struct_2(Struct_1(vec4<i32>(0i, 2844i, -17572i, 32335i), 10800u, 59275i), vec4<bool>(true, false, true, true)), Struct_2(Struct_1(vec4<i32>(0i, 1i, 72413i, 29888i), 8701u, -5094i), vec4<bool>(false, true, true, false)), Struct_2(Struct_1(vec4<i32>(-1i, 0i, -1i, 31446i), 4294967295u, -1i), vec4<bool>(false, false, false, false)), Struct_2(Struct_1(vec4<i32>(-53256i, 46541i, 2147483647i, 1i), 107340u, 2147483647i), vec4<bool>(false, true, true, true)), Struct_2(Struct_1(vec4<i32>(-71814i, -1i, -15539i, i32(-2147483648)), 99608u, -2457i), vec4<bool>(false, true, false, false)), Struct_2(Struct_1(vec4<i32>(-17322i, 7735i, -1i, 49079i), 0u, -1i), vec4<bool>(false, true, true, false)), Struct_2(Struct_1(vec4<i32>(39969i, 4203i, 17002i, 38967i), 4294967295u, 2147483647i), vec4<bool>(true, true, true, true)));

var<private> global1: array<vec4<u32>, 4>;

var<private> global2: array<vec4<u32>, 5>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<i32> {
    return ~min(((vec4<i32>(u_input.d, -17370i, u_input.d, u_input.c) ^ vec4<i32>(u_input.d, u_input.c, u_input.d, u_input.c)) >> (vec4<u32>(u_input.e.x, 70787u, u_input.e.x, u_input.b.x) % vec4<u32>(32u))) << (global1[_wgslsmith_index_u32(0u, 4u)] % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, 2147483647i, 1i, u_input.d), vec4<i32>(1i, 1i, -14120i, u_input.c)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, u_input.c, 2147483647i, 1i), vec4<i32>(u_input.c, u_input.d, -23565i, u_input.d)) | vec4<i32>(41019i, 6501i, -70246i, u_input.d)));
}

fn func_2(arg_0: bool, arg_1: i32) -> Struct_1 {
    let var_0 = 681f;
    let var_1 = ~1u;
    let var_2 = firstLeadingBit(vec4<u32>(1u, 1u, var_1, _wgslsmith_clamp_u32(66840u, 1u, 1u) ^ 83828u) | ~vec4<u32>(u_input.a, 11218u, ~7891u, ~u_input.a));
    var var_3 = Struct_1(~max(func_3(), vec4<i32>(-2147483647i, 0i, 5758i, u_input.d) << (global1[_wgslsmith_index_u32(53977u, 4u)] % vec4<u32>(32u))) >> (global2[_wgslsmith_index_u32(~abs(max(18276u, 36574u)), 5u)] % vec4<u32>(32u)), abs(~51528u), _wgslsmith_add_i32(arg_1, -_wgslsmith_clamp_i32(_wgslsmith_add_i32(arg_1, u_input.c), -u_input.c, _wgslsmith_sub_i32(arg_1, 1i))));
    var var_4 = Struct_1((vec4<i32>(_wgslsmith_clamp_i32(-23989i, arg_1, -1i), u_input.c | var_3.a.x, var_3.c, 2147483647i) ^ ~(-vec4<i32>(0i, arg_1, 2147483647i, var_3.c))) & -firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_1, arg_1, 2147483647i, -36463i), vec4<i32>(u_input.c, -21519i, u_input.c, -47568i))), var_3.b, -2147483647i);
    return Struct_1(var_3.a, 4294967295u, countOneBits(-4189i));
}

fn func_1(arg_0: vec4<u32>, arg_1: i32) -> Struct_1 {
    var var_0 = func_2(any(vec2<bool>(true, true)), ~85806i);
    global0 = array<Struct_2, 8>();
    let var_1 = arg_0.x;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-607f, _wgslsmith_f_op_f32(f32(-1f) * -1644f)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1283f, -2228f) * vec2<f32>(-575f, -528f)))))));
    global0 = array<Struct_2, 8>();
    return func_2(!(any(vec3<bool>(true, false, false)) || false), _wgslsmith_mult_i32(-162i, var_0.c));
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> Struct_2 {
    var var_0 = 4294967295u;
    global0 = array<Struct_2, 8>();
    global0 = array<Struct_2, 8>();
    let var_1 = Struct_2(func_1(~global2[_wgslsmith_index_u32(firstLeadingBit(arg_0.b & 0u), 5u)], -2147483647i | ~arg_0.a.x), !vec4<bool>(!any(vec2<bool>(false, true)), true, true, any(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false)))));
    global1 = array<vec4<u32>, 4>();
    return Struct_2(var_1.a, var_1.b);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2, arg_3: bool) -> vec4<bool> {
    let var_0 = vec2<i32>(max(~u_input.c, 767i), u_input.d);
    let var_1 = arg_2.a;
    global2 = array<vec4<u32>, 5>();
    global2 = array<vec4<u32>, 5>();
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1587f, -1000f), vec2<f32>(-387f, 1070f)))))));
    return select(vec4<bool>(func_4(Struct_1(vec4<i32>(var_1.c, -1i, var_1.a.x, -2147483647i), 1u, 1i), ~u_input.e.x).a.b <= ((arg_0.a.b << (4294967295u % 32u)) & (u_input.e.x >> (var_1.b % 32u))), arg_2.b.x, false, true), !vec4<bool>(arg_0.b.x, !all(vec4<bool>(arg_1.b.x, true, arg_0.b.x, true)), 4294967295u > _wgslsmith_clamp_u32(arg_0.a.b, 0u, 5262u), (u_input.b.x | 38463u) > arg_0.a.b), all(vec2<bool>(true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(-u_input.c, ~u_input.c, u_input.d, 16422i >> (u_input.b.x % 32u)), _wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.c, u_input.c, u_input.c, -2147483647i), vec4<i32>(2147483647i, u_input.d, -2147483647i, 1i) & vec4<i32>(-8270i, -25165i, u_input.c, u_input.c))), u_input.b.x | _wgslsmith_add_u32(u_input.a, ~22755u), u_input.d), func_5(global0[_wgslsmith_index_u32(u_input.e.x, 8u)], func_4(func_1(global1[_wgslsmith_index_u32(~u_input.e.x, 4u)], 1i), ~(~19310u)), Struct_2(Struct_1(vec4<i32>(-2147483647i, 10996i, u_input.c, 15885i), _wgslsmith_dot_vec2_u32(u_input.e.yx, vec2<u32>(0u, u_input.a)), firstTrailingBit(u_input.d)), vec4<bool>(true, true, true, true)), all(select(select(vec2<bool>(false, false), vec2<bool>(false, false), true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), true))));
    var var_1 = u_input.b.x;
    global2 = array<vec4<u32>, 5>();
    var var_2 = -var_0.a.a;
    var var_3 = abs(max(vec2<u32>(0u, 0u), _wgslsmith_mult_vec2_u32(u_input.e.zx, vec2<u32>(var_0.a.b, 0u)) >> (u_input.e.yz % vec2<u32>(32u))) >> (~u_input.e.yz % vec2<u32>(32u)));
    var_3 = u_input.e.xx;
    global2 = array<vec4<u32>, 5>();
    global2 = array<vec4<u32>, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u);
}

