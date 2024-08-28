struct Struct_1 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: u32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<f32>,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(true));

var<private> global2: array<vec2<i32>, 16> = array<vec2<i32>, 16>(vec2<i32>(0i, -48868i), vec2<i32>(1i, 75491i), vec2<i32>(57295i, 2147483647i), vec2<i32>(5058i, 10642i), vec2<i32>(2993i, 2147483647i), vec2<i32>(-1i, 1i), vec2<i32>(59480i, 1i), vec2<i32>(16692i, 38408i), vec2<i32>(5482i, -1i), vec2<i32>(-22880i, -52349i), vec2<i32>(18427i, -1i), vec2<i32>(41916i, 2147483647i), vec2<i32>(2147483647i, -38266i), vec2<i32>(-14758i, 1i), vec2<i32>(42258i, i32(-2147483648)), vec2<i32>(-17100i, i32(-2147483648)));

var<private> global3: i32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1() -> Struct_2 {
    let var_0 = ~(-(~min(u_input.b, u_input.b)));
    let var_1 = -u_input.b;
    return global1[_wgslsmith_index_u32(~firstLeadingBit(u_input.a), 22u)];
}

fn func_3(arg_0: bool) -> i32 {
    global3 = -(abs(1i) | reverseBits(u_input.b)) << (0u % 32u);
    global2 = array<vec2<i32>, 16>();
    global3 = u_input.b;
    let var_0 = Struct_2(false);
    var var_1 = Struct_1(!(!select(vec4<bool>(var_0.a, global0.a, false, true), select(vec4<bool>(var_0.a, global0.a, global0.a, global0.a), vec4<bool>(false, var_0.a, var_0.a, arg_0), vec4<bool>(false, false, true, true)), true)), ~(~vec4<u32>(43863u, u_input.a, 1u, ~4294967295u)), u_input.a);
    return ~46624i;
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: vec4<u32>, arg_3: i32) -> bool {
    var var_0 = u_input.b == 2147483647i;
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 32361u), 22u)];
    let var_1 = global2[_wgslsmith_index_u32(~(u_input.a | ~(_wgslsmith_div_u32(52589u, 1u) & u_input.a)), 16u)];
    var var_2 = _wgslsmith_f_op_f32(abs(arg_1));
    let var_3 = abs(arg_2.xx);
    return true;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2, arg_3: i32) -> u32 {
    global3 = abs(arg_3);
    var var_0 = func_1().a;
    let var_1 = vec4<bool>(select(arg_1.a.x, !(arg_1.a.x | !arg_2.a), true), all(!(!arg_0.a.xxw)) & any(vec2<bool>(arg_0.a.x && false, any(arg_0.a))), func_4(arg_0.a.x, _wgslsmith_f_op_f32(-384f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1189f + -185f)))), _wgslsmith_mod_vec4_u32(arg_0.b, vec4<u32>(90897u, 4294967295u, 44181u, u_input.a) | abs(arg_1.b)), func_3(arg_1.a.x && global0.a)), _wgslsmith_f_op_f32(select(-1763f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(1000f, 2096f)))), true)) == 486f);
    let var_2 = arg_2.a;
    var var_3 = vec2<bool>(true, !(true || func_1().a));
    return _wgslsmith_add_u32(~1u, u_input.a);
}

fn func_5(arg_0: Struct_2, arg_1: bool) -> vec4<f32> {
    global3 = u_input.b;
    var var_0 = vec4<bool>(true, true, false, any(!(!select(vec3<bool>(arg_0.a, false, arg_0.a), vec3<bool>(true, true, false), arg_1))));
    global2 = array<vec2<i32>, 16>();
    global3 = ~1i;
    global2 = array<vec2<i32>, 16>();
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1f, 1f, 1f, 1f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1882f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(775f, -707f))))) + -1715f);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_5(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(65190u, 78424u, 1u, 0u), vec4<u32>(u_input.a, u_input.a, 17448u, 0u)), func_2(Struct_1(vec4<bool>(global0.a, true, global0.a, false), vec4<u32>(u_input.a, u_input.a, 0u, u_input.a), 1u), Struct_1(vec4<bool>(global0.a, true, false, false), vec4<u32>(19963u, 29183u, u_input.a, u_input.a), u_input.a), func_1(), -386i << (u_input.a % 32u))), 22u)], all(vec2<bool>(false, true)) | any(select(vec3<bool>(true, true, global0.a), vec3<bool>(global0.a, true, true), true)))));
    global0 = func_1();
    let var_2 = true;
    let var_3 = Struct_1(select(!vec4<bool>(var_2, true, global0.a, true), !select(!vec4<bool>(false, var_2, global0.a, var_2), vec4<bool>(global0.a, false, var_2, true), func_1().a), func_1().a), _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), _wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, 49964u, u_input.a, u_input.a), _wgslsmith_mod_vec4_u32(vec4<u32>(5814u, 22804u, u_input.a, 0u), vec4<u32>(u_input.a, 45478u, 0u, 33914u)))), min(max(vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u) & vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a), firstTrailingBit(vec4<u32>(50705u, u_input.a, 10087u, u_input.a))), _wgslsmith_mod_vec4_u32(~vec4<u32>(1u, u_input.a, u_input.a, 0u), vec4<u32>(u_input.a, u_input.a, 0u, u_input.a)))), _wgslsmith_mod_u32(u_input.a, 33905u) | 6419u);
    let var_4 = Struct_2(global0.a);
    let var_5 = func_3(false) >> (var_3.c % 32u);
    var var_6 = global1[_wgslsmith_index_u32(4294967295u, 22u)];
    let x = u_input.a;
    s_output = StorageBuffer(~var_3.b.x, _wgslsmith_add_vec3_i32(vec3<i32>(var_5, firstTrailingBit(u_input.b), ~(-1i)), max(vec3<i32>(0i, u_input.b, u_input.b), vec3<i32>(var_5, u_input.b, u_input.b))) & min(vec3<i32>(i32(-1i) * -2147483647i, _wgslsmith_div_i32(1i, var_5), 7011i), reverseBits(vec3<i32>(var_5, -5209i, var_5))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_5(Struct_2(false), var_1.x > 1709f))))), 14627i, var_3.b);
}

