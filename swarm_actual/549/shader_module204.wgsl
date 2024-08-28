struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: bool,
    d: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: bool,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, false);

var<private> global1: array<vec3<f32>, 8> = array<vec3<f32>, 8>(vec3<f32>(-2131f, -1241f, -1000f), vec3<f32>(-183f, -294f, -212f), vec3<f32>(-134f, 240f, -1566f), vec3<f32>(-343f, -461f, 1000f), vec3<f32>(-409f, -863f, -1000f), vec3<f32>(913f, 1112f, -1725f), vec3<f32>(-1038f, -1320f, 523f), vec3<f32>(-150f, 315f, 1029f));

var<private> global2: u32 = 101987u;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<bool> {
    let var_0 = vec3<bool>(true, 2147483647i > _wgslsmith_clamp_i32(_wgslsmith_div_i32(-30291i, _wgslsmith_clamp_i32(u_input.c, 37621i, -18978i)), -_wgslsmith_mult_i32(u_input.d.x, u_input.d.x), _wgslsmith_clamp_i32(~2147483647i, -16155i, max(30651i, -1i))), true);
    var var_1 = Struct_3(0u, vec4<bool>(var_0.x, !var_0.x, any(vec3<bool>(!var_0.x, true, global0.x)), var_0.x), -25688i <= u_input.d.x, firstLeadingBit(21121i), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1074f) - _wgslsmith_f_op_f32(579f + 722f))), u_input.a.x, Struct_1(u_input.d.wy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(882f))), !(u_input.c > -26396i), var_0.yz), Struct_1(u_input.d.yz, 1729f, var_0.x, !vec2<bool>(true, global0.x)), Struct_1(max(u_input.d.wz, -u_input.d.xw), -209f, global0.x, select(global0.yz, vec2<bool>(var_0.x, false), !global0.xx))));
    global1 = array<vec3<f32>, 8>();
    global1 = array<vec3<f32>, 8>();
    let var_2 = vec3<bool>(global0.x, select(all(vec4<bool>(all(vec4<bool>(true, true, var_0.x, false)), var_1.b.x, !var_0.x, !global0.x)), true, any(vec3<bool>(all(var_0), all(var_1.b), var_1.e.c.d.x))), abs(~74928u) <= _wgslsmith_add_u32(u_input.e.x | firstLeadingBit(var_1.e.b), ~(~u_input.b.x)));
    return var_0;
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: vec3<u32>) -> vec2<u32> {
    let var_0 = vec3<f32>(733f, -1547f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-317f, 721f)));
    global0 = !func_3();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(floor(var_0.x))))) + -875f);
    var var_2 = ~u_input.c;
    let var_3 = _wgslsmith_clamp_i32(-arg_0, 0i, 10651i);
    return _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_div_u32(1u, 1u), 4294967295u), ~abs(u_input.a.wy), _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.e.x, 65075u) | (vec2<u32>(15762u, 100549u) >> (vec2<u32>(arg_2.x, u_input.e.x) % vec2<u32>(32u))), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(14743u, 23872u), vec2<u32>(7298u, 1428u), u_input.e.xz)), vec2<u32>(~4294967295u, ~16474u)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec4<bool>, arg_3: vec4<f32>) -> f32 {
    let var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-657f, _wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_div_f32(692f, _wgslsmith_f_op_f32(trunc(-399f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(308f, arg_0.b, arg_0.b) + _wgslsmith_f_op_vec3_f32(-arg_3.wzx)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(arg_1.a, 8u)])))));
    global2 = u_input.e.x & 39194u;
    var var_2 = ~(~(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a.x, 22261u, 1u), vec4<u32>(22254u, arg_1.a, 0u, 33196u)) & 52214u));
    let var_3 = _wgslsmith_mod_vec2_u32(vec2<u32>(12824u, arg_1.a), max(func_2(2147483647i, true, _wgslsmith_add_vec3_u32(max(u_input.a.yyz, u_input.a.xwz), u_input.a.ywz)), vec2<u32>(_wgslsmith_dot_vec3_u32(~u_input.e.yxz, ~vec3<u32>(1u, var_0.e.b, var_0.e.b)), var_0.e.b)));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.x + -1044f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.e.c.b) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.e.c.b + var_0.e.a), -1377f, true)), _wgslsmith_div_f32(arg_0.b, _wgslsmith_f_op_f32(select(arg_3.x, arg_1.e.d.b, false))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !vec3<bool>(!global0.x, !(!global0.x), !all(!vec2<bool>(false, global0.x)));
    var var_0 = _wgslsmith_f_op_vec3_f32(min(global1[_wgslsmith_index_u32(25118u, 8u)], _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(Struct_1(vec2<i32>(0i, 1203i), 249f, global0.x, global0.yy), Struct_3(36302u, vec4<bool>(global0.x, false, false, true), true, u_input.d.x, Struct_2(-302f, 0u, Struct_1(u_input.d.yz, 973f, global0.x, vec2<bool>(false, true)), Struct_1(vec2<i32>(u_input.c, u_input.c), -1990f, true, vec2<bool>(false, false)), Struct_1(u_input.d.wy, 460f, global0.x, global0.yz))), vec4<bool>(true, false, true, true), vec4<f32>(199f, -877f, 155f, 335f))), -1345f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(1058f)))), -939f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(u_input.e.x, 8u)]))))))));
    let var_1 = _wgslsmith_sub_u32(1u, _wgslsmith_dot_vec2_u32(u_input.a.zz | (~u_input.b.wx | vec2<u32>(45560u, u_input.b.x)), select(select(u_input.e.zx, firstLeadingBit(vec2<u32>(37112u, 0u)), vec2<bool>(global0.x, true)), u_input.e.zx, false)));
    let var_2 = _wgslsmith_mod_vec2_u32(~(~u_input.e.zz), u_input.e.yw);
    global0 = vec3<bool>(global0.x, global0.x, (u_input.c | ~firstLeadingBit(-1i)) < ~u_input.c);
    let var_3 = vec2<u32>(~abs(~_wgslsmith_div_u32(var_1, var_2.x)), firstLeadingBit(~1u));
    let var_4 = ~var_2.x << (4294967295u % 32u);
    var var_5 = var_0.x;
    global1 = array<vec3<f32>, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(var_0.xz))), var_0.x, 14899u, u_input.d);
}

