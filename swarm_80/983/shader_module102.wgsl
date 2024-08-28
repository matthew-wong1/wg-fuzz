struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec3<u32>,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_2, 8>;

var<private> global2: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(4037u, vec2<bool>(false, true), vec3<u32>(26038u, 65890u, 4294967295u), -1269f, true), Struct_1(25151u, vec2<bool>(false, false), vec3<u32>(0u, 1u, 35219u), -500f, true), Struct_1(42019u, vec2<bool>(false, false), vec3<u32>(10850u, 102165u, 9224u), -227f, true), Struct_1(1206u, vec2<bool>(false, false), vec3<u32>(100051u, 6158u, 29789u), -188f, false), Struct_1(1u, vec2<bool>(true, false), vec3<u32>(4294967295u, 4294967295u, 1363u), 1085f, false), Struct_1(0u, vec2<bool>(false, false), vec3<u32>(45616u, 32823u, 4294967295u), 900f, false), Struct_1(1u, vec2<bool>(true, true), vec3<u32>(1u, 41257u, 0u), -643f, false), Struct_1(18963u, vec2<bool>(true, true), vec3<u32>(1u, 24031u, 34603u), 1243f, true), Struct_1(70727u, vec2<bool>(true, true), vec3<u32>(15765u, 31451u, 42681u), -333f, false), Struct_1(15146u, vec2<bool>(true, false), vec3<u32>(4294967295u, 1u, 41973u), 1181f, true), Struct_1(5961u, vec2<bool>(true, true), vec3<u32>(0u, 0u, 610u), 1041f, false), Struct_1(73901u, vec2<bool>(false, false), vec3<u32>(4294967295u, 0u, 0u), -257f, false), Struct_1(4294967295u, vec2<bool>(true, true), vec3<u32>(99166u, 32929u, 4294967295u), -359f, true), Struct_1(4294967295u, vec2<bool>(false, true), vec3<u32>(4294967295u, 4294967295u, 54317u), 1752f, true));

var<private> global3: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(1u, vec2<bool>(true, false), vec3<u32>(33831u, 1u, 48188u), -154f, false), Struct_1(55333u, vec2<bool>(true, true), vec3<u32>(1u, 60444u, 8881u), -1075f, false), Struct_1(0u, vec2<bool>(false, false), vec3<u32>(68918u, 1u, 0u), -1772f, false), Struct_1(27555u, vec2<bool>(true, true), vec3<u32>(1u, 15768u, 10594u), -1495f, false), Struct_1(13439u, vec2<bool>(false, false), vec3<u32>(0u, 17213u, 4294967295u), -1075f, false), Struct_1(1u, vec2<bool>(true, false), vec3<u32>(61239u, 37697u, 67644u), 187f, false), Struct_1(78592u, vec2<bool>(false, false), vec3<u32>(2638u, 33570u, 5605u), -318f, false), Struct_1(1u, vec2<bool>(false, true), vec3<u32>(1u, 26422u, 4294967295u), -745f, true), Struct_1(1u, vec2<bool>(false, true), vec3<u32>(2730u, 43677u, 14473u), 1270f, false), Struct_1(4294967295u, vec2<bool>(true, true), vec3<u32>(24071u, 33164u, 0u), 309f, false), Struct_1(0u, vec2<bool>(false, true), vec3<u32>(44816u, 56896u, 1u), 2165f, true), Struct_1(63821u, vec2<bool>(true, false), vec3<u32>(0u, 0u, 65646u), 1038f, true), Struct_1(0u, vec2<bool>(false, false), vec3<u32>(52765u, 1u, 1u), 922f, false), Struct_1(4294967295u, vec2<bool>(false, true), vec3<u32>(0u, 4294967295u, 95592u), -1602f, false), Struct_1(0u, vec2<bool>(false, true), vec3<u32>(10284u, 0u, 35735u), 903f, true), Struct_1(1u, vec2<bool>(true, false), vec3<u32>(0u, 1677u, 1u), -1136f, false), Struct_1(1u, vec2<bool>(true, true), vec3<u32>(728u, 63315u, 4294967295u), 798f, false), Struct_1(1u, vec2<bool>(false, false), vec3<u32>(68392u, 0u, 1u), 1047f, true), Struct_1(0u, vec2<bool>(false, false), vec3<u32>(1u, 1u, 6385u), 1282f, false), Struct_1(1u, vec2<bool>(true, false), vec3<u32>(0u, 0u, 13131u), -998f, true), Struct_1(65769u, vec2<bool>(true, true), vec3<u32>(7801u, 1u, 4294967295u), -1853f, false), Struct_1(11952u, vec2<bool>(false, true), vec3<u32>(49744u, 0u, 29792u), 293f, true), Struct_1(0u, vec2<bool>(true, true), vec3<u32>(21099u, 0u, 27903u), -504f, true), Struct_1(4294967295u, vec2<bool>(true, true), vec3<u32>(54279u, 4294967295u, 0u), -1999f, false), Struct_1(2017u, vec2<bool>(false, true), vec3<u32>(1u, 50881u, 65712u), 1084f, true));

var<private> global4: vec2<i32> = vec2<i32>(1i, i32(-2147483648));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec2<u32>, arg_2: bool, arg_3: vec4<f32>) -> vec3<bool> {
    global1 = array<Struct_2, 8>();
    let var_0 = global1[_wgslsmith_index_u32(u_input.d.x, 8u)];
    return !select(vec3<bool>(any(vec2<bool>(true, true)), all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true))), any(select(vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(arg_2, true, true), vec3<bool>(true, arg_2, arg_2)))), select(select(!vec3<bool>(arg_2, false, false), vec3<bool>(arg_2, false, true), select(vec3<bool>(arg_2, arg_2, false), vec3<bool>(true, false, false), arg_2)), !(!vec3<bool>(false, arg_2, arg_2)), !select(vec3<bool>(false, arg_2, arg_2), vec3<bool>(arg_2, true, arg_2), arg_2)), select(select(vec3<bool>(false, arg_2, false), !vec3<bool>(arg_2, false, arg_2), vec3<bool>(true, arg_2, true)), select(!vec3<bool>(arg_2, arg_2, arg_2), select(vec3<bool>(arg_2, true, false), vec3<bool>(false, arg_2, false), true), vec3<bool>(arg_2, arg_2, arg_2)), !vec3<bool>(true, true, arg_2)));
}

fn func_2() -> Struct_1 {
    var var_0 = !(!select(vec3<bool>(any(vec2<bool>(false, false)), false, true), vec3<bool>(global0.a > 41400i, u_input.b.x <= 49978u, all(vec3<bool>(true, false, false))), vec3<bool>(true, any(vec3<bool>(true, true, true)), true)));
    var var_1 = var_0.yx;
    var_0 = !func_3(993f, ~(u_input.d & u_input.b), all(!vec4<bool>(false, var_1.x, false, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1044f, 1209f, 1237f, -1012f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-305f, 260f, 178f, -1900f) * vec4<f32>(2108f, 215f, -772f, 1193f)), var_1.x))));
    let var_2 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-284f + _wgslsmith_f_op_f32(select(658f, 148f, var_0.x))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(657f - 294f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -428f)) - _wgslsmith_f_op_f32(777f - -1654f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f * -1000f))), -681f)));
    let var_3 = var_0.xx;
    return Struct_1(1u, !(!(!select(vec2<bool>(var_1.x, false), var_0.yz, vec2<bool>(var_1.x, false)))), ~vec3<u32>(_wgslsmith_sub_u32(u_input.d.x, u_input.d.x >> (1u % 32u)), firstTrailingBit(~4294967295u), ~1u), -182f, all(var_0.yy));
}

fn func_1() -> Struct_1 {
    global4 = vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.a.zx, u_input.a.xw), 0i);
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.c & ~vec3<u32>(u_input.d.x, 10786u, u_input.d.x), u_input.c) & 49188u, 8u)];
    let var_0 = func_2();
    global2 = array<Struct_1, 14>();
    global0 = global1[_wgslsmith_index_u32(27518u, 8u)];
    return Struct_1(0u, !(!vec2<bool>(!var_0.e, true)), ~select(~vec3<u32>(var_0.a, 8473u, 4294967295u), _wgslsmith_sub_vec3_u32(var_0.c, ~var_0.c), vec3<bool>(var_0.e & var_0.e, !var_0.b.x, true)), _wgslsmith_f_op_f32(-var_0.d), var_0.e);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(global4.x);
    global4 = countOneBits(-countOneBits(vec2<i32>(0i, global0.a)));
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-492f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1208f * 1304f))))) - _wgslsmith_f_op_f32(select(-437f, _wgslsmith_f_op_f32(-475f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, 754f)))), true)));
    global3 = array<Struct_1, 25>();
    var var_1 = func_1();
    var var_2 = _wgslsmith_sub_vec4_u32(vec4<u32>(~0u, 6915u, func_2().a, _wgslsmith_div_u32(var_1.c.x, var_1.a)), firstTrailingBit(vec4<u32>(~u_input.b.x >> (abs(4294967295u) % 32u), 0u, u_input.b.x, var_1.c.x)));
    var var_3 = vec2<u32>(var_2.x, 4846u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(max(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.c.x, var_2.x, var_1.c.x, var_1.c.x), vec4<u32>(u_input.d.x, var_3.x, 4294967295u, 4294967295u)), var_2.x), 21991u, ~var_2.x << (1u % 32u), ~_wgslsmith_div_u32(var_3.x, u_input.d.x)) & _wgslsmith_div_vec4_u32(~(~vec4<u32>(0u, 10556u, var_3.x, 34852u)), _wgslsmith_add_vec4_u32(vec4<u32>(25455u, 1u, 2287u, var_3.x) | vec4<u32>(4294967295u, u_input.d.x, 26318u, u_input.c.x), vec4<u32>(u_input.c.x, 0u, var_1.a, var_3.x) << (vec4<u32>(var_3.x, 4294967295u, 49906u, 24927u) % vec4<u32>(32u)))));
}

