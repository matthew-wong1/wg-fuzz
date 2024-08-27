struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: vec2<bool>,
    d: vec2<bool>,
}

struct Struct_5 {
    a: bool,
    b: bool,
    c: u32,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 22>;

var<private> global1: array<vec2<bool>, 2>;

var<private> global2: vec2<bool>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: bool) -> i32 {
    global0 = array<vec4<u32>, 22>();
    var var_0 = 2147483647i;
    var_0 = u_input.a;
    let var_1 = Struct_5(any(vec3<bool>(true, true, true)), max(i32(-1i) * -59449i, arg_1.a) <= 2147483647i, ~(~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(82901u, u_input.d.x, u_input.c), vec3<u32>(u_input.e, 37882u, 31747u)), max(vec3<u32>(u_input.d.x, u_input.c, u_input.d.x), vec3<u32>(1u, 48279u, u_input.b)))), Struct_2(arg_2, Struct_1(-2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(150f, -1962f)))), arg_0.xww));
    global1 = array<vec2<bool>, 2>();
    return _wgslsmith_div_i32(~(-15401i), -13036i);
}

fn func_2() -> i32 {
    var var_0 = vec2<i32>(_wgslsmith_sub_i32(~(-(0i ^ u_input.a)), 46486i), -func_3(!(!vec4<bool>(global2.x, true, global2.x, false)), Struct_1(-25886i, _wgslsmith_f_op_f32(-1020f + 661f)), false));
    let var_1 = Struct_1(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(countOneBits(u_input.a), u_input.a, u_input.a)), vec3<i32>(-u_input.a, 1i, ~abs(u_input.a))), -216f);
    let var_2 = -firstLeadingBit(vec2<i32>(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(var_1.a, var_0.x, u_input.a, var_0.x)), vec4<i32>(-2147483647i, var_1.a, 2147483647i, u_input.a)), countOneBits(firstLeadingBit(var_0.x))));
    var var_3 = var_1.b;
    let var_4 = !(!select(!global1[_wgslsmith_index_u32(1u, 2u)], !vec2<bool>(global2.x, false), all(vec4<bool>(true, true, global2.x, global2.x))));
    return _wgslsmith_dot_vec3_i32(firstTrailingBit(-max(~vec3<i32>(-1i, -2147483647i, 1i), -vec3<i32>(var_1.a, var_2.x, var_1.a))), min(vec3<i32>(u_input.a, ~(-1i), -(~2147483647i)), -firstTrailingBit(firstTrailingBit(vec3<i32>(var_1.a, -2147483647i, -390i)))));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_5, arg_2: Struct_1, arg_3: u32) -> vec3<bool> {
    let var_0 = -func_2() << (arg_1.c % 32u);
    var var_1 = _wgslsmith_f_op_f32(-arg_0.a.b.b);
    global0 = array<vec4<u32>, 22>();
    var var_2 = abs(countOneBits(select(firstLeadingBit(min(vec3<i32>(arg_0.a.b.a, u_input.a, arg_1.d.b.a), vec3<i32>(u_input.a, -2147483647i, arg_0.a.b.a))), -(~vec3<i32>(-41439i, 2147483647i, var_0)), arg_1.d.c)));
    let var_3 = !(!vec3<bool>(global2.x, any(global1[_wgslsmith_index_u32(arg_0.b >> (arg_0.b % 32u), 2u)]), any(vec3<bool>(false, arg_0.d.x, arg_1.d.c.x))));
    return select(arg_1.d.c, vec3<bool>(var_3.x, all(arg_0.a.c), arg_0.c.x), var_3);
}

fn func_4(arg_0: vec3<bool>, arg_1: u32) -> Struct_2 {
    global0 = array<vec4<u32>, 22>();
    var var_0 = u_input.a;
    global0 = array<vec4<u32>, 22>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-745f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1579f, -2324f, global2.x))) * 1f)));
    global2 = arg_0.zy;
    return Struct_2(_wgslsmith_f_op_f32(max(827f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.x - var_1.x))))) > _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(var_1.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(630f * var_1.x) * -737f))), Struct_1(2894i, _wgslsmith_f_op_f32(-var_1.x)), vec3<bool>(true, all(vec2<bool>(true, all(vec3<bool>(global2.x, arg_0.x, true)))), true));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<bool>) -> u32 {
    global0 = array<vec4<u32>, 22>();
    let var_0 = false;
    var var_1 = func_4(select(!vec3<bool>(true, func_4(vec3<bool>(false, false, var_0), 1u).c.x, all(arg_1.zx)), !select(vec3<bool>(true, true, true), arg_1, !arg_0.c), arg_0.c), 0u);
    global2 = !select(!select(global1[_wgslsmith_index_u32(u_input.c | u_input.c, 2u)], !vec2<bool>(arg_1.x, var_1.a), any(vec4<bool>(true, false, true, arg_0.c.x))), arg_0.c.zy, true);
    let var_2 = any(func_1(Struct_4(Struct_2(true, func_4(vec3<bool>(false, var_1.c.x, global2.x), 40342u).b, select(vec3<bool>(global2.x, global2.x, true), arg_1, false)), 15752u, global1[_wgslsmith_index_u32(~4294967295u << ((1u << (u_input.b % 32u)) % 32u), 2u)], vec2<bool>(!arg_1.x, all(vec3<bool>(arg_1.x, var_0, var_0)))), Struct_5(_wgslsmith_dot_vec4_i32(vec4<i32>(4471i, var_1.b.a, 1i, -1i), vec4<i32>(arg_0.b.a, var_1.b.a, arg_0.b.a, 1i)) < 1i, true || global2.x, u_input.d.x, arg_0), func_4(func_4(vec3<bool>(arg_0.c.x, false, arg_1.x), firstTrailingBit(u_input.b)).c, reverseBits(~4294967295u)).b, u_input.e));
    return _wgslsmith_add_u32(~_wgslsmith_mod_u32(u_input.d.x, _wgslsmith_div_u32(u_input.c, 0u)), 57954u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(~(~func_5(func_4(func_1(Struct_4(Struct_2(global2.x, Struct_1(u_input.a, 1000f), vec3<bool>(false, global2.x, false)), u_input.e, vec2<bool>(global2.x, global2.x), vec2<bool>(false, global2.x)), Struct_5(true, global2.x, 7241u, Struct_2(global2.x, Struct_1(u_input.a, -2239f), vec3<bool>(global2.x, true, true))), Struct_1(2147483647i, 113f), 39052u), 1u), vec3<bool>(false, !global2.x, all(vec4<bool>(false, false, false, global2.x))))), 2u)];
    var var_1 = firstTrailingBit(vec2<i32>(-func_2(), ~_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.a), vec2<i32>(-6380i, u_input.a)), _wgslsmith_mod_i32(u_input.a, -70774i))));
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(346f, 2083f) + vec2<f32>(2066f, 447f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-873f, -469f) + vec2<f32>(-858f, 1219f)) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(266f, 454f)))))), func_4(func_4(!func_4(vec3<bool>(true, var_0.x, false), u_input.e).c, u_input.b).c, u_input.c));
    var var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(select(var_2.a, vec2<f32>(-1155f, _wgslsmith_f_op_f32(var_2.a.x * _wgslsmith_f_op_f32(-807f - -436f))), false)), Struct_2(all(!(!vec4<bool>(true, var_0.x, var_2.b.a, true))), var_2.b.b, vec3<bool>(all(vec4<bool>(var_0.x, var_0.x, global2.x, false)), any(vec3<bool>(false, var_2.b.c.x, true)) && (var_0.x || false), var_0.x)));
    var_0 = !(!vec2<bool>(true | select(false, var_0.x, false), !func_4(vec3<bool>(var_3.b.a, true, true), u_input.c).a));
    var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(16335u, 4294967295u, select(26669u, 1u, var_2.b.c.x), abs(u_input.e)), ~_wgslsmith_add_vec4_u32(abs(vec4<u32>(4294967295u, u_input.e, u_input.d.x, 1u)), max(firstTrailingBit(vec4<u32>(49472u, 4294967295u, u_input.b, 21672u)), countOneBits(vec4<u32>(0u, u_input.e, u_input.c, 1u)))), firstLeadingBit(var_2.b.b.a), countOneBits(vec4<i32>(50212i, ~reverseBits(0i), abs(_wgslsmith_add_i32(-43995i, var_2.b.b.a)), var_3.b.b.a)));
}

