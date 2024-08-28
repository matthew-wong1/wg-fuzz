struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: vec3<f32>,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 11> = array<f32, 11>(-342f, 504f, -322f, -195f, 827f, 787f, -2258f, -427f, -117f, 1117f, -855f);

var<private> global1: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec2<u32>(52482u, 1u), false, vec3<f32>(1041f, 419f, 632f), false, 0i), Struct_1(vec2<u32>(128u, 53317u), true, vec3<f32>(-500f, 930f, 1000f), false, 0i), Struct_1(vec2<u32>(0u, 58967u), false, vec3<f32>(252f, -287f, -746f), true, -1299i), Struct_1(vec2<u32>(17264u, 1u), true, vec3<f32>(-698f, 1280f, 1000f), true, -16200i), Struct_1(vec2<u32>(41927u, 20968u), true, vec3<f32>(261f, 885f, 310f), false, -1i), Struct_1(vec2<u32>(4294967295u, 0u), true, vec3<f32>(-398f, 945f, -645f), false, 0i), Struct_1(vec2<u32>(26675u, 67803u), false, vec3<f32>(-170f, -603f, 119f), false, 2147483647i), Struct_1(vec2<u32>(72582u, 0u), true, vec3<f32>(-1150f, 920f, -1237f), false, -1i), Struct_1(vec2<u32>(8418u, 110934u), false, vec3<f32>(-1746f, 1147f, -132f), false, 2147483647i), Struct_1(vec2<u32>(4681u, 12739u), true, vec3<f32>(261f, 651f, -1175f), true, 12920i), Struct_1(vec2<u32>(0u, 4294967295u), false, vec3<f32>(-1407f, 237f, -1561f), false, 0i), Struct_1(vec2<u32>(0u, 0u), false, vec3<f32>(1000f, -1000f, 1000f), true, 43844i), Struct_1(vec2<u32>(37027u, 85129u), false, vec3<f32>(1387f, -157f, -1119f), false, -1i), Struct_1(vec2<u32>(0u, 91164u), true, vec3<f32>(-301f, -254f, 135f), false, -35760i), Struct_1(vec2<u32>(55388u, 72773u), false, vec3<f32>(-696f, 685f, -116f), false, 1i), Struct_1(vec2<u32>(4294967295u, 0u), true, vec3<f32>(-1982f, 797f, -1551f), false, i32(-2147483648)), Struct_1(vec2<u32>(23680u, 13340u), false, vec3<f32>(-694f, -1858f, -1325f), true, -825i), Struct_1(vec2<u32>(31511u, 4294967295u), true, vec3<f32>(160f, 2856f, 294f), true, -13905i));

var<private> global2: vec3<bool> = vec3<bool>(false, false, false);

var<private> global3: Struct_1;

var<private> global4: array<Struct_1, 17>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> bool {
    global1 = array<Struct_1, 18>();
    var var_0 = ~vec4<u32>(4294967295u << (_wgslsmith_mult_u32(select(73375u, arg_0.a.x, false), 62714u) % 32u), ~_wgslsmith_mod_u32(~0u, 20057u), max(~global3.a.x, abs(1u)) ^ ~(1u << (global3.a.x % 32u)), 1u);
    global1 = array<Struct_1, 18>();
    let var_1 = ~1u;
    var var_2 = Struct_1(vec2<u32>(max(u_input.b.x, 9806u), var_0.x), !all(select(select(vec3<bool>(true, global3.b, false), vec3<bool>(false, arg_0.d, false), vec3<bool>(arg_0.b, false, true)), select(vec3<bool>(false, false, true), vec3<bool>(global3.d, true, global3.d), global2.x), true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-arg_0.c))) * arg_0.c), any(select(!select(vec2<bool>(false, global2.x), global2.zz, vec2<bool>(arg_0.d, global3.d)), !global2.yz, true)), global3.e);
    return global2.x;
}

fn func_2() -> vec3<bool> {
    var var_0 = select(vec4<bool>(!(!(57816u != u_input.b.x)), !global2.x, !(!(global3.d && global2.x)), any(vec2<bool>(false, all(vec2<bool>(false, false))))), !vec4<bool>(u_input.b.x == ~62562u, func_3(Struct_1(u_input.b.xz, true, global3.c, true, global3.e), global0[_wgslsmith_index_u32(~22376u, 11u)]), global2.x, any(vec3<bool>(false, false, global3.b))), !(!(!select(vec4<bool>(true, true, true, false), vec4<bool>(global3.d, global3.b, true, true), vec4<bool>(true, true, global2.x, true)))));
    global3 = global4[_wgslsmith_index_u32(~global3.a.x, 17u)];
    var var_1 = !(!global3.b);
    global2 = select(!select(var_0.yzw, vec3<bool>(all(global2.yx), all(vec4<bool>(global3.d, false, false, false)), !var_0.x), var_0.zxz), vec3<bool>(global3.b, var_0.x, true), func_3(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, global3.a.x) | vec2<u32>(16518u, global3.a.x), ~vec2<u32>(global3.a.x, global3.a.x)), 18u)], 119f));
    global2 = select(var_0.wyz, !select(vec3<bool>(!global3.d, all(vec4<bool>(global3.d, var_0.x, true, true)), select(false, false, true)), select(var_0.xxy, var_0.yyx, var_0.zwy), all(!var_0.ywy)), select(vec3<bool>(true, func_3(Struct_1(u_input.b.yx, global3.d, vec3<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 11u)], global3.c.x, 766f), false, global3.e), 1299f), false), vec3<bool>(global3.d, true, !global3.b), select(!(!var_0.wyw), var_0.wxw, select(select(vec3<bool>(false, false, global3.b), vec3<bool>(true, global2.x, true), var_0.xxy), var_0.wxz, u_input.a > global3.a.x))));
    return var_0.zzy;
}

fn func_1() -> bool {
    global4 = array<Struct_1, 17>();
    let var_0 = 1000f;
    var var_1 = vec4<f32>(453f, _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(~63116u, 11u)], _wgslsmith_f_op_f32(-471f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(334f + -1339f))))), var_0, global3.c.x);
    let var_2 = _wgslsmith_mult_i32(global3.e, _wgslsmith_dot_vec2_i32((vec2<i32>(-1i) * -vec2<i32>(global3.e, global3.e)) ^ ~vec2<i32>(1i, global3.e), vec2<i32>(-1i) * -abs(vec2<i32>(global3.e, global3.e))));
    global2 = func_2();
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global3 = Struct_1(global3.a, func_1(), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1183f, _wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(-194f + -1488f))))), all(vec3<bool>(var_0, global3.b, !global2.x || true)), -2147483647i);
    global3 = Struct_1(vec2<u32>(1u, ~u_input.a) << (global3.a % vec2<u32>(32u)), false, global3.c, true, 0i << ((u_input.a ^ (0u << (u_input.b.x % 32u))) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.c.x, -1000f, global0[_wgslsmith_index_u32(global3.a.x, 11u)])))), vec3<f32>(global3.c.x, _wgslsmith_f_op_f32(-global3.c.x), global3.c.x))), _wgslsmith_mult_vec2_i32(-_wgslsmith_div_vec2_i32(abs(vec2<i32>(global3.e, global3.e)), ~vec2<i32>(global3.e, -27496i)), vec2<i32>(-4761i, 29544i)), global3.a.x, ~firstTrailingBit(1u), global3.c);
}

