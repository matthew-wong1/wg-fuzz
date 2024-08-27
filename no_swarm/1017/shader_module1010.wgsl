struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: bool,
    d: u32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec3<bool>(true, true, false), -589f, true, 4294967295u, vec4<i32>(-1i, 55413i, 94i, 20287i)), Struct_1(vec3<bool>(false, false, false), -2613f, false, 85222u, vec4<i32>(19225i, 1i, 15615i, 0i)), Struct_1(vec3<bool>(true, false, true), -988f, true, 0u, vec4<i32>(50557i, -1i, 2058i, 0i)), Struct_1(vec3<bool>(false, false, true), 1344f, false, 0u, vec4<i32>(-1i, 1i, i32(-2147483648), 46330i)), Struct_1(vec3<bool>(true, true, false), 2050f, true, 4294967295u, vec4<i32>(2147483647i, 0i, 22418i, i32(-2147483648))), Struct_1(vec3<bool>(true, true, true), 1270f, true, 0u, vec4<i32>(-17132i, 0i, 2147483647i, 4738i)), Struct_1(vec3<bool>(true, true, false), 295f, true, 57218u, vec4<i32>(-52357i, -27960i, -41046i, 0i)), Struct_1(vec3<bool>(false, true, true), -164f, true, 0u, vec4<i32>(-31491i, -1i, 10816i, -17857i)));

var<private> global1: Struct_1;

var<private> global2: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(Struct_1(vec3<bool>(false, false, false), -339f, false, 1u, vec4<i32>(0i, 1i, -20106i, 0i)), true), Struct_2(Struct_1(vec3<bool>(true, false, false), 549f, true, 46989u, vec4<i32>(i32(-2147483648), 1i, i32(-2147483648), -1i)), false), Struct_2(Struct_1(vec3<bool>(true, false, true), -859f, true, 25161u, vec4<i32>(4790i, 2147483647i, 0i, -1i)), false), Struct_2(Struct_1(vec3<bool>(false, true, false), 1503f, false, 4294967295u, vec4<i32>(-30817i, -43651i, -5223i, 34314i)), true));

var<private> global3: Struct_2;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: f32) -> i32 {
    var var_0 = Struct_1(vec3<bool>(select(false, global1.a.x && (false && global1.c), (arg_0 & global1.d) <= _wgslsmith_sub_u32(u_input.a, arg_0)), !global1.c, global3.a.a.x), _wgslsmith_f_op_f32(235f + _wgslsmith_f_op_f32(step(arg_1, _wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(select(-2076f, -1300f, global3.a.a.x)))))), any(vec4<bool>(global1.e.x >= -global1.e.x, true, global3.b, ~global1.e.x < _wgslsmith_mod_i32(-26899i, -1i))), 5871u, ~reverseBits(~vec4<i32>(global1.e.x, global1.e.x, 2147483647i, -1i)) | _wgslsmith_clamp_vec4_i32(-vec4<i32>(global1.e.x, global1.e.x, global1.e.x, -2147483647i) ^ reverseBits(vec4<i32>(global3.a.e.x, global3.a.e.x, global1.e.x, global3.a.e.x)), global3.a.e, vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.e.x, global1.e.x, global1.e.x, 1i), vec4<i32>(global1.e.x, global3.a.e.x, -18072i, global1.e.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(global1.e.x, 1749i, global3.a.e.x, global1.e.x), vec4<i32>(2147483647i, global3.a.e.x, -10929i, global3.a.e.x)), 16184i, -31331i)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1.b, -346f, arg_1))), vec3<f32>(arg_2, global1.b, 412f), all(vec3<bool>(true, global3.b, true)))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, var_0.b, arg_2)), vec3<f32>(var_0.b, global1.b, -1000f), true))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a.b, -1162f, 1466f)), vec3<f32>(-1131f, _wgslsmith_f_op_f32(1157f - -1263f), arg_2))));
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 26436u), 4u)];
    var var_3 = Struct_2(Struct_1(var_0.a, global1.b, true, abs(~_wgslsmith_div_u32(global3.a.d, 1u)), global1.e), select(false, global3.a.c, false));
    var_0 = global3.a;
    return var_3.a.e.x;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1) -> vec4<bool> {
    global3 = arg_0;
    let var_0 = arg_0.a.c;
    let var_1 = ~func_3(u_input.a, -1184f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(global3.a.b, 461f))))) & abs(-37442i & (arg_1.e.x << ((u_input.a | u_input.a) % 32u)));
    global2 = array<Struct_2, 4>();
    global2 = array<Struct_2, 4>();
    return !vec4<bool>(any(select(global3.a.a.yx, vec2<bool>(arg_0.b, arg_0.a.c), select(global3.a.a.yy, arg_0.a.a.zy, vec2<bool>(var_0, global3.a.a.x)))), !global1.c, arg_0.b, arg_1.a.x);
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: bool) -> Struct_1 {
    global0 = array<Struct_1, 8>();
    var var_0 = select(global1.a, !vec3<bool>(arg_2, any(vec3<bool>(global1.a.x, arg_2, true)), ~global1.d == _wgslsmith_clamp_u32(4294967295u, u_input.a, 48009u)), !(!global1.c));
    var_0 = vec3<bool>(true, all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, arg_1.b), arg_2), !global3.a.a.yz)) & (true || !any(vec3<bool>(arg_2, global3.b, false))), all(select(!func_2(global2[_wgslsmith_index_u32(u_input.a, 4u)], Struct_1(vec3<bool>(false, global1.a.x, arg_1.b), global3.a.b, arg_1.b, u_input.a, global1.e)), vec4<bool>(!global1.a.x, global1.c && arg_1.a.a.x, all(vec3<bool>(global1.c, var_0.x, arg_2)), true), global3.a.b <= arg_0)));
    var var_1 = countOneBits(abs(vec3<u32>(_wgslsmith_clamp_u32(u_input.a & 3167u, 52378u, 0u), ~u_input.a, countOneBits(global3.a.d))));
    var var_2 = !arg_1.b;
    return global3.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(700f, global2[_wgslsmith_index_u32(~(~35962u), 4u)], true);
    let var_1 = 0i;
    global3 = Struct_2(func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(139f - _wgslsmith_f_op_f32(abs(1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-259f * var_0.b), _wgslsmith_f_op_f32(abs(226f)))), global2[_wgslsmith_index_u32(~(~1u), 4u)], !(any(vec4<bool>(true, false, false, true)) && (true == var_0.a.x))), any(!func_2(global2[_wgslsmith_index_u32(var_0.d, 4u)], func_1(global3.a.b, Struct_2(global0[_wgslsmith_index_u32(4294967295u, 8u)], false), global3.a.c))));
    let var_2 = reverseBits(firstLeadingBit(global3.a.e.yx));
    let var_3 = global3.a.c || true;
    global1 = global0[_wgslsmith_index_u32(~3398u, 8u)];
    let x = u_input.a;
    s_output = StorageBuffer(global3.a.e, global1.e.xww);
}

