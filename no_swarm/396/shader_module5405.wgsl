struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 30> = array<vec3<i32>, 30>(vec3<i32>(3138i, -32716i, -44937i), vec3<i32>(0i, 2080i, 2147483647i), vec3<i32>(-1i, -14665i, -3241i), vec3<i32>(1i, 0i, -12906i), vec3<i32>(-11165i, i32(-2147483648), 37178i), vec3<i32>(0i, -25764i, -1i), vec3<i32>(-19827i, 0i, 24557i), vec3<i32>(-16285i, -63655i, 17890i), vec3<i32>(-1i, i32(-2147483648), 7651i), vec3<i32>(20132i, -6734i, 1i), vec3<i32>(-47726i, 0i, 5954i), vec3<i32>(i32(-2147483648), -731i, 37308i), vec3<i32>(25600i, -38472i, -26974i), vec3<i32>(-1i, 0i, -27145i), vec3<i32>(10228i, i32(-2147483648), -1i), vec3<i32>(2147483647i, i32(-2147483648), -18994i), vec3<i32>(2147483647i, i32(-2147483648), i32(-2147483648)), vec3<i32>(31411i, 1i, -7673i), vec3<i32>(-1i, i32(-2147483648), -1i), vec3<i32>(36033i, 2147483647i, -1i), vec3<i32>(-1i, i32(-2147483648), 47690i), vec3<i32>(-1i, -1i, -67808i), vec3<i32>(26484i, i32(-2147483648), 2147483647i), vec3<i32>(0i, 2147483647i, 0i), vec3<i32>(1i, 32980i, 0i), vec3<i32>(-31292i, 2147483647i, -27515i), vec3<i32>(-7891i, 11750i, 0i), vec3<i32>(-68000i, 8337i, 2147483647i), vec3<i32>(21005i, 1i, 2147483647i), vec3<i32>(5474i, 35497i, 1i));

var<private> global1: array<vec2<u32>, 15> = array<vec2<u32>, 15>(vec2<u32>(1u, 72904u), vec2<u32>(39989u, 98543u), vec2<u32>(6795u, 28173u), vec2<u32>(1u, 4135u), vec2<u32>(7686u, 6814u), vec2<u32>(0u, 14890u), vec2<u32>(112831u, 11229u), vec2<u32>(88694u, 42236u), vec2<u32>(0u, 1u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 3949u), vec2<u32>(1u, 4294967295u), vec2<u32>(91760u, 34405u), vec2<u32>(6706u, 0u), vec2<u32>(57291u, 1u));

var<private> global2: vec2<i32>;

var<private> global3: array<i32, 19>;

var<private> global4: u32 = 42470u;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_2(arg_0: u32) -> vec2<i32> {
    return abs(_wgslsmith_mult_vec2_i32(select(~(-vec2<i32>(-2147483647i, global3[_wgslsmith_index_u32(162681u, 19u)])), countOneBits(vec2<i32>(global3[_wgslsmith_index_u32(1u, 19u)], 9494i)), vec2<bool>(true, true)), abs(min(_wgslsmith_div_vec2_i32(vec2<i32>(global3[_wgslsmith_index_u32(arg_0, 19u)], global3[_wgslsmith_index_u32(u_input.b, 19u)]), vec2<i32>(global3[_wgslsmith_index_u32(1u, 19u)], global2.x)), ~vec2<i32>(global3[_wgslsmith_index_u32(31030u, 19u)], -11747i)))));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<bool>, arg_2: f32, arg_3: vec4<f32>) -> f32 {
    let var_0 = 19829i;
    return _wgslsmith_f_op_f32(max(arg_2, arg_2));
}

fn func_1(arg_0: u32) -> Struct_3 {
    global2 = _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(select(-(~vec2<i32>(-2147483647i, 30587i)), func_2(~u_input.a.x), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false))), ~abs(select(vec2<i32>(-20532i, global3[_wgslsmith_index_u32(arg_0, 19u)]), vec2<i32>(global3[_wgslsmith_index_u32(27540u, 19u)], -8011i), true))), _wgslsmith_mod_vec2_i32((vec2<i32>(0i, global2.x) | -vec2<i32>(global2.x, -19650i)) & ((vec2<i32>(-67482i, global2.x) | vec2<i32>(1i, global3[_wgslsmith_index_u32(u_input.a.x, 19u)])) & (vec2<i32>(9554i, 2147483647i) | vec2<i32>(1713i, global3[_wgslsmith_index_u32(u_input.b, 19u)]))), select(_wgslsmith_sub_vec2_i32(~vec2<i32>(global2.x, global3[_wgslsmith_index_u32(30635u, 19u)]), vec2<i32>(0i, 10587i)), vec2<i32>(global3[_wgslsmith_index_u32(select(u_input.b, 2346u, false), 19u)], 1920i), select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), any(vec3<bool>(false, true, false))))));
    let var_0 = true;
    var var_1 = Struct_4(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -304f), _wgslsmith_div_f32(421f, -1192f))), global0[_wgslsmith_index_u32(arg_0, 30u)] & global0[_wgslsmith_index_u32(~arg_0, 30u)], vec4<f32>(180f, -290f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(517f - 147f) * 142f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(168f - -860f) * _wgslsmith_f_op_f32(f32(-1f) * -1201f)))));
    var var_2 = 0u;
    var_1 = Struct_4(var_1.a);
    return Struct_3(var_1.a.a.x, 2429u, Struct_2(var_1.a, var_1.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(var_1.a.a.x, var_1.a.a.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(vec3<bool>(var_0, var_0, true), vec2<bool>(var_0, false), 139f, vec4<f32>(var_1.a.c.x, var_1.a.a.x, 759f, var_1.a.a.x))))))), Struct_1(var_1.a.c.xw, -global0[_wgslsmith_index_u32(~4294967295u, 30u)], var_1.a.c), Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(var_1.a.c.zz * var_1.a.a))), firstTrailingBit(vec3<i32>(-1i, var_1.a.b.x, global2.x)), vec4<f32>(_wgslsmith_f_op_f32(step(var_1.a.c.x, 1926f)), 475f, var_1.a.a.x, _wgslsmith_f_op_f32(abs(var_1.a.c.x))))));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_3) -> Struct_1 {
    var var_0 = func_1(34822u ^ _wgslsmith_mod_u32(4294967295u, max(u_input.a.x, 72011u) << (~4294967295u % 32u))).c.a;
    var var_1 = ~(~(vec4<i32>(-1i) * -(vec4<i32>(16380i, 88774i, global2.x, -26289i) << (vec4<u32>(37118u, 4294967295u, u_input.a.x, arg_1.b) % vec4<u32>(32u)))));
    var_0 = func_1(abs(~max(arg_1.b << (u_input.a.x % 32u), u_input.b | u_input.b))).c.b;
    global4 = arg_1.b;
    let var_2 = select(!arg_0, !vec2<bool>(!(arg_1.c.a.c.x >= -1782f), any(!vec3<bool>(arg_0.x, arg_0.x, true))), arg_1.b == arg_1.b);
    return func_1(firstTrailingBit(_wgslsmith_sub_u32(62468u, min(firstLeadingBit(u_input.a.x), arg_1.b)))).c.b;
}

fn func_5(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_4, arg_3: Struct_1) -> Struct_4 {
    global3 = array<i32, 19>();
    let var_0 = vec4<i32>(max(global2.x, 0i), ~1i, ~0i, arg_3.b.x | (global2.x << (~(~u_input.a.x) % 32u)));
    var var_1 = 1i >> ((57427u | _wgslsmith_dot_vec2_u32(select(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_0, u_input.b), 15u)], global1[_wgslsmith_index_u32(u_input.a.x, 15u)] >> (vec2<u32>(8543u, arg_1.x) % vec2<u32>(32u)), true), _wgslsmith_div_vec2_u32(u_input.a ^ vec2<u32>(u_input.a.x, u_input.a.x), ~vec2<u32>(arg_1.x, 1u)))) % 32u);
    var var_2 = arg_2.a.a.x;
    global2 = ~arg_3.b.zy;
    return Struct_4(arg_3);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(1u, vec2<u32>(u_input.b, u_input.b), Struct_4(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(799f, -609f) + vec2<f32>(-1790f, 1466f))), ~(vec3<i32>(global3[_wgslsmith_index_u32(u_input.a.x, 19u)], global3[_wgslsmith_index_u32(u_input.a.x, 19u)], -5178i) ^ global0[_wgslsmith_index_u32(10837u, 30u)]), vec4<f32>(1f, 1f, 1f, 1f))), func_4(!(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false))), func_1(1u)));
    var_0 = Struct_4(func_1(1u).c.a);
    var var_1 = 86035u;
    global2 = var_0.a.b.xz;
    global3 = array<i32, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_0.a.a.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(var_0.a.a.x)))), ~vec2<i32>(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x), 19u)] | 1i, -2147483647i), vec2<i32>(global2.x, min(~(-68617i), global2.x)) | var_0.a.b.xy);
}

