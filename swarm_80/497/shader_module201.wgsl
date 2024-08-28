struct Struct_1 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_1(-904f, vec2<bool>(false, false)));

var<private> global1: array<Struct_4, 7> = array<Struct_4, 7>(Struct_4(Struct_1(1806f, vec2<bool>(true, true))), Struct_4(Struct_1(1240f, vec2<bool>(true, true))), Struct_4(Struct_1(-728f, vec2<bool>(false, true))), Struct_4(Struct_1(1283f, vec2<bool>(true, false))), Struct_4(Struct_1(-1295f, vec2<bool>(false, false))), Struct_4(Struct_1(-1000f, vec2<bool>(true, true))), Struct_4(Struct_1(-339f, vec2<bool>(false, false))));

var<private> global2: vec4<f32>;

var<private> global3: array<vec2<f32>, 28> = array<vec2<f32>, 28>(vec2<f32>(-289f, 126f), vec2<f32>(-1055f, 950f), vec2<f32>(1358f, 567f), vec2<f32>(216f, -271f), vec2<f32>(-1378f, -591f), vec2<f32>(-220f, -1191f), vec2<f32>(-1167f, -425f), vec2<f32>(473f, -1260f), vec2<f32>(-685f, 1988f), vec2<f32>(-501f, 452f), vec2<f32>(-637f, -1283f), vec2<f32>(149f, 2075f), vec2<f32>(-366f, 1195f), vec2<f32>(-311f, -694f), vec2<f32>(-1000f, -731f), vec2<f32>(695f, -1000f), vec2<f32>(-765f, -302f), vec2<f32>(-1000f, -998f), vec2<f32>(-1030f, -1079f), vec2<f32>(1749f, 490f), vec2<f32>(-1110f, 185f), vec2<f32>(-1446f, -365f), vec2<f32>(-2389f, -1209f), vec2<f32>(-307f, -418f), vec2<f32>(561f, -214f), vec2<f32>(1000f, 2187f), vec2<f32>(-1104f, 168f), vec2<f32>(-1236f, -1207f));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2() -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global3[_wgslsmith_index_u32(111583u, 28u)] + _wgslsmith_f_op_vec2_f32(global2.xz * vec2<f32>(global0.a.a, global0.a.a))) - global3[_wgslsmith_index_u32(29408u, 28u)]));
    let var_1 = _wgslsmith_f_op_f32(-1000f + -743f);
    var var_2 = !global0.a.b;
    global3 = array<vec2<f32>, 28>();
    var var_3 = Struct_3(select(select(global0.a.b, global0.a.b, !vec2<bool>(global0.a.b.x, true)), global0.a.b, any(select(select(vec3<bool>(global0.a.b.x, global0.a.b.x, global0.a.b.x), vec3<bool>(true, global0.a.b.x, false), var_2.x), select(vec3<bool>(var_2.x, false, false), vec3<bool>(global0.a.b.x, var_2.x, true), vec3<bool>(true, var_2.x, true)), var_2.x))), reverseBits(_wgslsmith_dot_vec2_u32(~abs(vec2<u32>(61396u, 22357u)), _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 32178u), vec2<u32>(52618u, 4294967295u), vec2<u32>(78269u, 1u)), vec2<u32>(1u, 1u)))));
    return !vec4<bool>(!(false & all(vec4<bool>(var_3.a.x, false, var_2.x, true))), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(19057i, 0i, -6116i), countOneBits(u_input.b), 0i) != u_input.a.x, ~0u >= var_3.b, var_3.b == 1u);
}

fn func_3(arg_0: Struct_4, arg_1: f32, arg_2: Struct_1) -> u32 {
    let var_0 = 41695u;
    var var_1 = vec4<u32>(4294967295u, reverseBits(var_0), 0u, reverseBits(~_wgslsmith_mult_u32(var_0, 4294967295u)));
    var_1 = vec4<u32>(1u, _wgslsmith_clamp_u32(var_1.x, ~max(~var_1.x, _wgslsmith_mult_u32(49354u, 0u)), min(1u, ~var_0 >> ((var_0 & 22467u) % 32u))), var_0, _wgslsmith_mult_u32(4294967295u, var_1.x));
    let var_2 = Struct_3(vec2<bool>(((u_input.b != 2147483647i) | (u_input.a.x <= u_input.a.x)) && (all(vec4<bool>(true, global0.a.b.x, arg_0.a.b.x, false)) & true), false), _wgslsmith_div_u32(firstLeadingBit(4294967295u), 4294967295u));
    var var_3 = vec4<i32>(18475i, -(~(-2147483647i)) >> (var_1.x % 32u), _wgslsmith_div_i32(0i, select(-1i, 1i, false)) ^ 0i, -u_input.a.x) >> (max(~vec4<u32>(countOneBits(var_2.b), 50867u, 55196u, 6791u), reverseBits(~vec4<u32>(1u, 56289u, 21687u, var_0))) % vec4<u32>(32u));
    return 1u;
}

fn func_1(arg_0: i32) -> StorageBuffer {
    global2 = vec4<f32>(1331f, -1928f, global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x + -1411f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1316f - global0.a.a), _wgslsmith_f_op_f32(1815f * -336f))))));
    var var_0 = Struct_2(!func_2(), Struct_1(-654f, !global0.a.b), global0.a, func_3(Struct_4(global0.a), global2.x, global0.a));
    var var_1 = Struct_2(vec4<bool>(false, func_2().x, true, !(~1u > ~var_0.d)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-610f * -371f)), vec2<bool>(global0.a.b.x, !(!var_0.c.b.x))), var_0.b, _wgslsmith_dot_vec2_u32(abs(min(~vec2<u32>(1u, 67973u), vec2<u32>(var_0.d, var_0.d))), vec2<u32>(var_0.d, firstTrailingBit(97908u))));
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2.x)));
    var var_3 = 54877u;
    return StorageBuffer(_wgslsmith_clamp_i32(abs(-u_input.b & _wgslsmith_mult_i32(-69493i, -1i)), abs(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_0, u_input.a.x), u_input.a), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(28653i, -2147483647i)))), arg_0), firstLeadingBit(i32(-1i) * -(~(-7863i))), abs(abs(-vec4<i32>(2147483647i, arg_0, 2147483647i, 1i)) | vec4<i32>(max(arg_0, -13229i), arg_0 | u_input.a.x, _wgslsmith_clamp_i32(u_input.b, u_input.a.x, arg_0), 10760i)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(~(1i | u_input.b));
}

