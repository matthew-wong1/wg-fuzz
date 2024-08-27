struct Struct_1 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<bool>,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: bool,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<vec4<bool>, 15> = array<vec4<bool>, 15>(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true));

var<private> global2: bool;

var<private> global3: i32 = -1i;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<bool>) -> u32 {
    let var_0 = ~(u_input.b.x << (u_input.c.x % 32u));
    let var_1 = Struct_1(_wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.a, 1u), 1701u), u_input.a) > reverseBits(23367u), vec3<i32>(-6128i, 1i, 2147483647i));
    var var_2 = vec3<u32>(35386u, u_input.a, countOneBits(~(~u_input.c.x) >> (_wgslsmith_div_u32(u_input.c.x, ~67331u) % 32u)));
    var var_3 = firstLeadingBit(_wgslsmith_sub_u32(firstLeadingBit(u_input.a), ~29919u) >> (abs(_wgslsmith_sub_u32(u_input.c.x, 1u)) % 32u)) << (~70493u % 32u);
    var var_4 = -_wgslsmith_div_i32(min(max(_wgslsmith_dot_vec4_i32(vec4<i32>(4501i, -2147483647i, u_input.b.x, -14458i), vec4<i32>(-21651i, -2147483647i, var_0, var_0)), ~(-8443i)), var_0), min(var_1.b.x, u_input.b.x));
    return 0u;
}

fn func_2(arg_0: Struct_3) -> Struct_3 {
    var var_0 = max(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, _wgslsmith_mult_u32(func_3(vec2<bool>(true, arg_0.b.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.d.a.x, 0u), u_input.c.zw)), _wgslsmith_div_u32(~45860u, _wgslsmith_sub_u32(4294967295u, u_input.d)), u_input.a), u_input.c));
    global1 = array<vec4<bool>, 15>();
    global1 = array<vec4<bool>, 15>();
    let var_1 = true;
    global1 = array<vec4<bool>, 15>();
    return Struct_3(10875u, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~(~vec2<u32>(u_input.c.x, 4294967295u)), u_input.c.yw), _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(36949u, 48484u), firstLeadingBit(vec2<u32>(4294967295u, 0u))), vec2<u32>(48337u, 49805u) & ~u_input.c.zw)), 15u)], true, Struct_2(u_input.c.zyz, global1[_wgslsmith_index_u32(62069u, 15u)]));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_1) -> vec2<f32> {
    return global0.ww;
}

fn func_5(arg_0: vec2<f32>) -> Struct_2 {
    var var_0 = Struct_3(u_input.d, !(!vec4<bool>(true, u_input.b.x >= 1i, true, true)), !(((u_input.b.x << (47206u % 32u)) >> (~59512u % 32u)) == (i32(-1i) * -u_input.b.x)), Struct_2(max(vec3<u32>(~u_input.d, ~42828u, u_input.c.x), u_input.c.zyy), global1[_wgslsmith_index_u32(select(countOneBits(~64183u), func_2(func_2(Struct_3(4294967295u, global1[_wgslsmith_index_u32(0u, 15u)], false, Struct_2(vec3<u32>(35429u, 4294967295u, u_input.c.x), vec4<bool>(true, true, true, false))))).a, arg_0.x >= 2963f), 15u)]));
    global1 = array<vec4<bool>, 15>();
    var_0 = Struct_3(_wgslsmith_sub_u32(firstTrailingBit(99u), var_0.d.a.x), global1[_wgslsmith_index_u32(u_input.a, 15u)], func_2(Struct_3(_wgslsmith_dot_vec3_u32(~vec3<u32>(9406u, 1u, 34328u), var_0.d.a), vec4<bool>(true, false, u_input.c.x >= 51916u, var_0.d.b.x), !(!var_0.d.b.x), var_0.d)).c, var_0.d);
    let var_1 = Struct_1(var_0.d.b.x, vec3<i32>(_wgslsmith_sub_i32(i32(-1i) * -u_input.b.x, -27672i), u_input.b.x, min(max(u_input.b.x, _wgslsmith_mod_i32(u_input.b.x, u_input.b.x)), ~2147483647i)));
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0.x), -1685f, 955f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1693f, global0.x))), -1309f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(461f, 207f, 198f, -1071f))) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.x, -759f, global0.x, -576f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-261f, 256f, global0.x, 686f))))) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(687f, _wgslsmith_f_op_f32(abs(-1426f)), _wgslsmith_f_op_f32(-global0.x), global0.x)))));
    return func_2(Struct_3(var_0.a, select(var_0.d.b, var_0.b, select(any(vec3<bool>(true, var_0.b.x, true)), var_0.c, !var_1.a)), true, var_0.d)).d;
}

fn func_1(arg_0: bool) -> i32 {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, global0.x)) != 1059f;
    var var_0 = false;
    let var_1 = func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(func_2(Struct_3(u_input.a, global1[_wgslsmith_index_u32(22960u, 15u)], arg_0, Struct_2(u_input.c.xzw, global1[_wgslsmith_index_u32(13790u, 15u)]))), func_2(Struct_3(u_input.d, global1[_wgslsmith_index_u32(u_input.d, 15u)], arg_0, Struct_2(vec3<u32>(0u, 4294967295u, u_input.a), global1[_wgslsmith_index_u32(u_input.c.x, 15u)]))).d, Struct_1(arg_0, u_input.b))))));
    var var_2 = !any(select(!(!vec3<bool>(false, var_1.b.x, false)), select(vec3<bool>(false, true, var_1.b.x), vec3<bool>(var_1.b.x, var_1.b.x, true), false), true));
    var_0 = var_1.b.x;
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~select(vec3<u32>(~(~u_input.d), ~(~u_input.c.x), ~(~4102u)), u_input.c.yyw, all(vec2<bool>(true, true)));
    var var_1 = firstLeadingBit(func_1(true));
    var var_2 = func_5(vec2<f32>(1346f, 262f)).a.x;
    let var_3 = vec2<i32>(u_input.b.x, ~_wgslsmith_sub_i32(0i & -u_input.b.x, _wgslsmith_mod_i32(~(-2147483647i), min(u_input.b.x, 2147483647i))));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.x, 1243f, global0.x, 1374f), vec4<f32>(597f, -603f, -2420f, 938f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-472f, global0.x, global0.x, 1508f)))));
    global3 = u_input.b.x;
    var_2 = _wgslsmith_dot_vec2_u32(~_wgslsmith_div_vec2_u32(min(vec2<u32>(u_input.a, u_input.a), u_input.c.wx), ~vec2<u32>(1u, 7224u)), u_input.c.zy);
    var var_4 = func_2(Struct_3(4294967295u, vec4<bool>(true, true, true, true), true && (~var_3.x != _wgslsmith_dot_vec2_i32(u_input.b.zz, vec2<i32>(-2147483647i, var_3.x))), func_2(Struct_3(11997u >> (u_input.c.x % 32u), !global1[_wgslsmith_index_u32(52443u, 15u)], true, func_2(Struct_3(0u, global1[_wgslsmith_index_u32(18529u, 15u)], true, Struct_2(u_input.c.xzw, vec4<bool>(false, true, false, false)))).d)).d)).d;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, -(u_input.b & u_input.b), max(firstTrailingBit(u_input.c) << (~_wgslsmith_mod_vec4_u32(vec4<u32>(var_4.a.x, 60708u, 12407u, var_4.a.x), u_input.c) % vec4<u32>(32u)), abs(~vec4<u32>(var_0.x, var_0.x, u_input.c.x, u_input.c.x))));
}

