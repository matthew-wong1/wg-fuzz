struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_1,
    c: i32,
    d: vec3<f32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 17> = array<vec2<u32>, 17>(vec2<u32>(33735u, 71914u), vec2<u32>(1u, 9191u), vec2<u32>(43822u, 1u), vec2<u32>(20558u, 5421u), vec2<u32>(806u, 4294967295u), vec2<u32>(4294967295u, 64381u), vec2<u32>(18276u, 4294967295u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 50812u), vec2<u32>(1u, 9916u), vec2<u32>(3007u, 1u), vec2<u32>(20615u, 1u), vec2<u32>(29204u, 4294967295u), vec2<u32>(46258u, 40211u), vec2<u32>(17796u, 1u), vec2<u32>(30936u, 0u), vec2<u32>(0u, 0u));

var<private> global1: vec2<i32> = vec2<i32>(-1i, -37529i);

var<private> global2: bool;

var<private> global3: array<f32, 7> = array<f32, 7>(-2184f, -1202f, 500f, -2279f, -316f, 346f, 532f);

var<private> global4: f32 = -407f;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_3) -> u32 {
    global4 = arg_1.a.x;
    let var_0 = global0[_wgslsmith_index_u32(u_input.a.x, 17u)];
    global3 = array<f32, 7>();
    global4 = 1f;
    let var_1 = arg_1;
    return var_0.x;
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: vec3<bool>) -> i32 {
    global2 = any(select(arg_0.e.a.xz, arg_0.e.b, !arg_2.a.xz));
    global0 = array<vec2<u32>, 17>();
    let var_0 = arg_0.b;
    let var_1 = Struct_1(!vec3<bool>(all(vec3<bool>(false, false, var_0.a.x)), any(vec4<bool>(false, arg_3.x, true, arg_0.b.b.x)), 0u == _wgslsmith_add_u32(u_input.a.x, u_input.d)), arg_3.xy);
    var var_2 = select(arg_0.a.yx, select(-vec2<i32>(~(-31977i), -394i), _wgslsmith_div_vec2_i32(vec2<i32>(firstLeadingBit(global1.x), ~(-19407i)), arg_1), vec2<bool>(!(!var_0.b.x), var_1.a.x)), arg_2.a.x);
    return 0i;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(vec3<bool>(arg_0.b.x | any(vec3<bool>(arg_0.a.x, false, arg_0.a.x)), select(arg_0.b.x, any(vec3<bool>(false, arg_0.b.x, arg_0.b.x)), all(arg_0.a)), true), !(!vec2<bool>(!arg_0.a.x, arg_0.b.x && true)));
    global2 = true;
    global0 = array<vec2<u32>, 17>();
    var var_1 = Struct_4(_wgslsmith_add_vec4_i32(vec4<i32>(global1.x ^ func_3(Struct_2(vec3<i32>(-1i, u_input.c.x, u_input.c.x), arg_0, Struct_1(vec3<bool>(true, arg_0.b.x, arg_0.b.x), vec2<bool>(var_0.b.x, false)), Struct_1(vec3<bool>(arg_0.a.x, false, arg_0.b.x), var_0.b), Struct_1(arg_0.a, vec2<bool>(false, var_0.a.x))), vec2<i32>(-37030i, global1.x), Struct_1(var_0.a, arg_0.a.xz), arg_0.a), global1.x, -(global1.x & -65844i), _wgslsmith_dot_vec4_i32(u_input.c, ~u_input.c)), vec4<i32>(func_3(Struct_2(vec3<i32>(-20921i, 0i, global1.x), arg_0, arg_0, arg_0, arg_0), vec2<i32>(38887i, u_input.c.x), Struct_1(var_0.a, vec2<bool>(arg_0.b.x, false)), vec3<bool>(var_0.b.x, true, arg_0.a.x)), countOneBits(0i), global1.x, -2671i) & vec4<i32>(global1.x, 89863i, abs(-10579i), _wgslsmith_mult_i32(global1.x, 1i))), Struct_1(vec3<bool>(true, true, true), !select(vec2<bool>(arg_0.b.x, true), vec2<bool>(arg_0.a.x, arg_0.b.x), var_0.b)), -_wgslsmith_div_i32(u_input.c.x, ~min(-24017i, global1.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(4294967295u, 7u)], 625f, -3282f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(291f, global3[_wgslsmith_index_u32(0u, 7u)], 396f), vec3<f32>(-1101f, global3[_wgslsmith_index_u32(49151u, 7u)], -1503f), vec3<bool>(false, false, arg_0.a.x)))) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global3[_wgslsmith_index_u32(0u, 7u)], -192f, -856f), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-117f, global3[_wgslsmith_index_u32(u_input.d, 7u)], -1171f)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(286f, global3[_wgslsmith_index_u32(1u, 7u)], -525f), vec3<f32>(-1316f, global3[_wgslsmith_index_u32(u_input.b, 7u)], global3[_wgslsmith_index_u32(u_input.a.x, 7u)]))), vec3<f32>(574f, -279f, 1000f)))), vec2<i32>(28837i, _wgslsmith_sub_i32(countOneBits(8428i), -41752i)) ^ u_input.c.wz);
    var var_2 = global3[_wgslsmith_index_u32(~u_input.a.x, 7u)];
    return var_1.b;
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2, arg_2: u32) -> i32 {
    let var_0 = abs(vec3<u32>(abs(109769u), _wgslsmith_mod_u32(0u, 1u >> (_wgslsmith_mult_u32(arg_2, u_input.b) % 32u)), max(arg_2, max(1u << (0u % 32u), 1u))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d.x) + -239f));
    var var_2 = -vec3<i32>(_wgslsmith_dot_vec2_i32(arg_0.e, arg_1.a.zy), 0i, arg_1.a.x);
    var var_3 = firstLeadingBit(1i);
    var var_4 = var_0.x;
    return _wgslsmith_add_i32(~(~_wgslsmith_dot_vec3_i32(~vec3<i32>(global1.x, arg_1.a.x, 0i), -u_input.c.zxx)), _wgslsmith_dot_vec4_i32(vec4<i32>(i32(-1i) * -var_2.x, u_input.c.x, 4203i, -global1.x), -(~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c.x, 2147483647i, global1.x, arg_1.a.x), arg_0.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(true | any(vec3<bool>(false, true, all(vec4<bool>(true, true, true, true)))));
    global0 = array<vec2<u32>, 17>();
    var var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(~func_1(vec3<f32>(global3[_wgslsmith_index_u32(2867u, 7u)], -1119f, global3[_wgslsmith_index_u32(4294967295u, 7u)]), Struct_3(vec2<f32>(global3[_wgslsmith_index_u32(u_input.b, 7u)], -373f), u_input.c.x)), 7u)], global3[_wgslsmith_index_u32(1u, 7u)])), u_input.c.x ^ 2147483647i);
    let var_2 = Struct_4(-u_input.c, Struct_1(vec3<bool>(true, _wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(u_input.a.x, 17u)], global0[_wgslsmith_index_u32(21648u, 17u)]) != ~30810u, true), !select(vec2<bool>(true, true), vec2<bool>(true, true), false)), 1i >> (u_input.a.x % 32u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1770f, global3[_wgslsmith_index_u32(55604u, 7u)], 637f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(13528u, 7u)], -1228f, -690f) * vec3<f32>(-1000f, var_1.a.x, 1000f))))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1552f, 1287f, global3[_wgslsmith_index_u32(4294967295u, 7u)]))), vec3<f32>(-927f, 224f, global3[_wgslsmith_index_u32(4294967295u, 7u)]))))), _wgslsmith_div_vec2_i32(~u_input.c.wz, _wgslsmith_div_vec2_i32(-u_input.c.yw ^ vec2<i32>(-2177i, 10767i), u_input.c.xx ^ u_input.c.wx)));
    global2 = all(!(!vec4<bool>(true, var_2.b.b.x, !var_2.b.b.x, true)));
    let var_3 = vec4<i32>(func_4(var_2, Struct_2(-var_2.a.xwx, var_2.b, var_2.b, Struct_1(var_2.b.a, vec2<bool>(false, true)), func_2(var_2.b)), ~(~u_input.a.x)), var_1.b, var_2.a.x, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(-vec2<i32>(-1i, var_1.b), u_input.c.wy ^ vec2<i32>(global1.x, global1.x)), select(vec2<i32>(0i, var_2.c) ^ u_input.c.yz, -vec2<i32>(var_2.e.x, u_input.c.x), !var_2.b.a.x))) >> (vec4<u32>(56639u, 1u, 1u, 4294967295u) % vec4<u32>(32u));
    let var_4 = any(select(var_2.b.a, var_2.b.a, select(var_2.b.a, var_2.b.a, var_2.b.a))) && var_2.b.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(~abs(~1u), -761f);
}

