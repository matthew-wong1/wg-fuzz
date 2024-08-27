struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<i32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec2<i32>, 15> = array<vec2<i32>, 15>(vec2<i32>(2147483647i, 27719i), vec2<i32>(1830i, 1i), vec2<i32>(2147483647i, 18643i), vec2<i32>(0i, -42019i), vec2<i32>(-1i, -1i), vec2<i32>(41826i, 2147483647i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(1i, -19076i), vec2<i32>(19087i, 643i), vec2<i32>(-6875i, 0i), vec2<i32>(-43421i, 44996i), vec2<i32>(i32(-2147483648), -11955i), vec2<i32>(-26900i, 2147483647i), vec2<i32>(49730i, -33910i), vec2<i32>(45730i, -44880i));

var<private> global2: array<vec2<f32>, 25> = array<vec2<f32>, 25>(vec2<f32>(-2810f, -1041f), vec2<f32>(-969f, -1590f), vec2<f32>(-680f, 460f), vec2<f32>(-434f, 627f), vec2<f32>(555f, -531f), vec2<f32>(996f, 331f), vec2<f32>(-377f, -1000f), vec2<f32>(1921f, 874f), vec2<f32>(-1201f, -495f), vec2<f32>(-182f, -1331f), vec2<f32>(-430f, -369f), vec2<f32>(1000f, 2502f), vec2<f32>(947f, 914f), vec2<f32>(-378f, -1352f), vec2<f32>(-2890f, 263f), vec2<f32>(880f, -802f), vec2<f32>(-313f, 1234f), vec2<f32>(1433f, -121f), vec2<f32>(-1202f, -1076f), vec2<f32>(1144f, -189f), vec2<f32>(-1318f, -207f), vec2<f32>(529f, -1631f), vec2<f32>(-447f, 621f), vec2<f32>(-1757f, 1683f), vec2<f32>(603f, 600f));

var<private> global3: vec2<bool>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: vec2<i32>) -> vec2<bool> {
    global3 = !arg_1.a.yx;
    global2 = array<vec2<f32>, 25>();
    var var_0 = arg_1.b.x;
    let var_1 = false;
    global1 = array<vec2<i32>, 15>();
    return !vec2<bool>(true, var_1);
}

fn func_3() -> vec2<bool> {
    global2 = array<vec2<f32>, 25>();
    global1 = array<vec2<i32>, 15>();
    let var_0 = global0.a.c.x;
    var var_1 = Struct_3(select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, global3.x, false), vec3<bool>(global0.a.b, global0.a.b, global3.x), vec3<bool>(false, true, true)), vec3<bool>(true, true, true)), select(!vec3<bool>(false, false, global3.x), !vec3<bool>(global0.a.b, global0.a.b, false), false), _wgslsmith_add_i32(-1i, u_input.c.x) <= reverseBits(2147483647i)), !vec3<bool>(global0.a.b, true, true), global0.a.b), abs(~(-u_input.c.zwx) ^ select(vec3<i32>(-1i, u_input.c.x, global0.a.c.x) << (vec3<u32>(u_input.a, u_input.a, u_input.b) % vec3<u32>(32u)), vec3<i32>(u_input.c.x, 218i, -45927i), !global3.x)));
    global1 = array<vec2<i32>, 15>();
    return func_1(vec4<f32>(-516f, global0.a.a, global0.a.a, global0.a.a), Struct_3(select(var_1.a, !(!vec3<bool>(var_1.a.x, global3.x, var_1.a.x)), all(vec3<bool>(global3.x, var_1.a.x, global0.a.b))), vec3<i32>(0i, _wgslsmith_mod_i32(-2147483647i, var_1.b.x), _wgslsmith_add_i32(1i, var_1.b.x))), select(var_1.b.xx << (~(~global0.c) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(max(-vec2<i32>(u_input.c.x, u_input.c.x), abs(u_input.c.xw)), select(vec2<i32>(var_1.b.x, u_input.c.x), vec2<i32>(2147483647i, 0i), var_1.a.yx) | ~global0.a.c.xz, ~(-global1[_wgslsmith_index_u32(global0.c.x, 15u)])), select(var_1.a.zz, var_1.a.yz, !select(var_1.a.yy, var_1.a.zx, false))));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_4(vec3<u32>(88827u << (_wgslsmith_dot_vec3_u32(~vec3<u32>(1950u, global0.a.d.x, global0.a.d.x), global0.a.d) % 32u), global0.c.x, global0.c.x), !func_3());
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.a) + 1f) * _wgslsmith_f_op_f32(global0.b * _wgslsmith_f_op_f32(1886f + global0.b)))), !any(func_3()), u_input.c, vec3<u32>(max(50537u, firstTrailingBit(var_0.a.x)), ~0u, 18769u));
    var var_2 = u_input.c.yw;
    var var_3 = Struct_3(!select(!vec3<bool>(var_0.b.x, global0.a.b, global0.a.b), vec3<bool>(var_0.a.x <= u_input.b, true, false), vec3<bool>(true, false, false)), global0.a.c.zxx);
    var_0 = Struct_4(~vec3<u32>(79960u, reverseBits(4294967295u) >> (_wgslsmith_dot_vec2_u32(global0.a.d.yy, var_1.d.xy) % 32u), 1u), var_0.b);
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(-var_1.a), ~(~var_0.a.x) != firstLeadingBit(var_1.d.x), _wgslsmith_sub_vec4_i32((var_1.c ^ var_1.c) & reverseBits(var_1.c), min(vec4<i32>(var_2.x, global0.a.c.x, -1i, -3342i), var_1.c)), vec3<u32>(~min(var_1.d.x, 62758u), ~(~global0.c.x), _wgslsmith_dot_vec2_u32(global0.a.d.zy, var_0.a.yz))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(166f)))), vec2<u32>(var_0.a.x, _wgslsmith_div_u32(select(global0.c.x, global0.a.d.x, var_1.b), ~105315u)) | countOneBits(vec2<u32>(1u, ~72016u)));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: u32, arg_3: f32) -> Struct_2 {
    var var_0 = Struct_3(!vec3<bool>(true, global0.a.a == _wgslsmith_f_op_f32(step(global0.b, -191f)), 8456u >= firstTrailingBit(u_input.b)), select(vec3<i32>(firstTrailingBit(2147483647i), _wgslsmith_dot_vec4_i32(abs(u_input.c), vec4<i32>(0i, global0.a.c.x, 1i, 1i)), -56790i), countOneBits(firstLeadingBit(-vec3<i32>(u_input.c.x, u_input.c.x, -3221i))), select(select(vec3<bool>(global0.a.b, global3.x, true), vec3<bool>(false, true, arg_0.a.b), true), !vec3<bool>(arg_0.a.b, true, true), vec3<bool>(true, true, true))));
    let var_1 = select(vec4<bool>(var_0.a.x, false, func_3().x, false), vec4<bool>(all(func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1161f, arg_3, -1000f, -286f) - vec4<f32>(global0.b, 1447f, arg_3, 1653f)), Struct_3(var_0.a, vec3<i32>(1i, 47097i, arg_0.a.c.x)), _wgslsmith_mod_vec2_i32(var_0.b.zy, vec2<i32>(0i, var_0.b.x)))), false, true, true), select(!select(!vec4<bool>(true, true, global3.x, global3.x), select(vec4<bool>(global0.a.b, global3.x, false, global3.x), vec4<bool>(global0.a.b, true, false, false), vec4<bool>(arg_1, arg_0.a.b, global3.x, arg_1)), !vec4<bool>(var_0.a.x, global3.x, global0.a.b, arg_0.a.b)), !(!vec4<bool>(true, var_0.a.x, arg_0.a.b, var_0.a.x)), select(vec4<bool>(arg_1, var_0.a.x, false, global3.x), vec4<bool>(true, true, global3.x, func_3().x), func_3().x)));
    var var_2 = Struct_4(~(~min(~vec3<u32>(5077u, global0.c.x, global0.c.x), arg_0.a.d | vec3<u32>(0u, 24215u, global0.a.d.x))), !vec2<bool>(false, func_3().x));
    var var_3 = var_0.b.x;
    let var_4 = -1000f;
    return Struct_2(func_2().a, arg_0.a.a, ~(~(~var_2.a.xz) << ((vec2<u32>(31791u, 15970u) ^ max(arg_0.a.d.xy, vec2<u32>(arg_0.c.x, 56035u))) % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-global0.a.a);
    global3 = !(!(!(!func_1(vec4<f32>(var_0, -1693f, global0.a.a, 370f), Struct_3(vec3<bool>(false, false, global0.a.b), vec3<i32>(global0.a.c.x, 8613i, -1i)), u_input.c.yz))));
    var var_1 = !any(vec2<bool>(true, 1i != ~u_input.c.x));
    var var_2 = global3.x;
    global3 = select(select(!select(!vec2<bool>(global3.x, global3.x), vec2<bool>(global3.x, false), vec2<bool>(global0.a.b, true)), vec2<bool>(false, all(vec4<bool>(global0.a.b, global3.x, false, global3.x))), false), select(!(!vec2<bool>(global3.x, true)), vec2<bool>(!all(vec4<bool>(global0.a.b, true, global3.x, true)), global0.a.b), vec2<bool>(true, false)), vec2<bool>(global3.x, global0.a.b));
    var var_3 = func_4(func_2(), global0.a.b, 4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)))));
    var var_4 = _wgslsmith_f_op_f32(334f + global0.b) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(340f, 1166f)));
    var_2 = global0.a.b;
    let var_5 = any(!vec4<bool>(!func_3().x, false, _wgslsmith_f_op_f32(-656f + var_0) != var_0, all(vec2<bool>(var_3.a.b, false)) & !global0.a.b));
    let x = u_input.a;
    s_output = StorageBuffer(abs(func_4(Struct_2(func_4(Struct_2(var_3.a, var_3.a.a, vec2<u32>(4294967295u, 0u)), false, 12162u, var_0).a, _wgslsmith_f_op_f32(var_0 - var_0), vec2<u32>(global0.c.x, global0.c.x)), 1u == func_2().a.d.x, var_3.a.d.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(408f, 1402f) + var_3.b)).c.x), func_2().a.a, 424f);
}

