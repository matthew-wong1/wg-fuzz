struct Struct_1 {
    a: vec2<f32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 26> = array<u32, 26>(4294967295u, 30208u, 10789u, 37000u, 29631u, 4294967295u, 19251u, 16570u, 57907u, 29483u, 1u, 1u, 47657u, 0u, 4535u, 4294967295u, 29u, 0u, 35095u, 4294967295u, 62096u, 22120u, 1u, 67690u, 1u, 6509u);

var<private> global1: array<bool, 20> = array<bool, 20>(true, true, false, false, true, false, true, true, false, true, false, false, true, true, true, true, false, true, true, true);

var<private> global2: array<f32, 13> = array<f32, 13>(-1873f, 2449f, -211f, -1000f, -997f, 407f, -682f, -2083f, -670f, -1823f, 553f, -221f, -580f);

var<private> global3: vec2<f32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> f32 {
    var var_0 = any(select(vec4<bool>(false, true, false, global1[_wgslsmith_index_u32(24610u, 20u)]), !vec4<bool>(false, true, true, global1[_wgslsmith_index_u32(0u, 20u)] | false), !global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(37165u, 26u)], 26u)], 3544u), 20u)]));
    var var_1 = select(select(select(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 20u)], true)), vec2<bool>(true, u_input.b < u_input.a.x), !vec2<bool>(global1[_wgslsmith_index_u32(45162u, 20u)], true)), !select(select(vec2<bool>(global1[_wgslsmith_index_u32(1u, 20u)], global1[_wgslsmith_index_u32(u_input.c.x, 20u)]), vec2<bool>(global1[_wgslsmith_index_u32(65917u, 20u)], false), global1[_wgslsmith_index_u32(0u, 20u)]), vec2<bool>(true, true), !global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(49297u, 26u)], 20u)]), true), !(!select(vec2<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 26u)], 20u)], true), vec2<bool>(false, true), all(vec4<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(13736u, 26u)], 20u)], true, false, global1[_wgslsmith_index_u32(u_input.c.x, 20u)])))), !select(!(!vec2<bool>(global1[_wgslsmith_index_u32(1u, 20u)], global1[_wgslsmith_index_u32(4294967295u, 20u)])), select(vec2<bool>(false, global1[_wgslsmith_index_u32(1u, 20u)]), !vec2<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 26u)], 26u)], 20u)], false), vec2<bool>(true, true)), vec2<bool>(true, true)));
    var var_2 = _wgslsmith_div_vec2_i32(-u_input.a.zz | max(vec2<i32>(-u_input.d, i32(-1i) * -2147483647i), -vec2<i32>(u_input.a.x, u_input.a.x)), select(min(u_input.a.zy, _wgslsmith_add_vec2_i32(vec2<i32>(u_input.d, u_input.d), vec2<i32>(0i, u_input.b) >> (vec2<u32>(u_input.c.x, global0[_wgslsmith_index_u32(4294967295u, 26u)]) % vec2<u32>(32u)))), u_input.a.xy, true));
    global0 = array<u32, 26>();
    global2 = array<f32, 13>();
    return -1082f;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~((_wgslsmith_dot_vec2_u32(u_input.c.xy, u_input.c.zz) >> (_wgslsmith_sub_u32(4294967295u, global0[_wgslsmith_index_u32(58730u, 26u)]) % 32u)) ^ 1u), 26u)], 20u)], abs(vec4<i32>(-u_input.b, 1497i << (u_input.c.x % 32u), u_input.b, _wgslsmith_add_i32(u_input.a.x, u_input.d)) & vec4<i32>(_wgslsmith_mult_i32(2147483647i, 0i), -63231i, u_input.a.x ^ -8421i, -24369i)), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(387f, global2[_wgslsmith_index_u32(7629u, 13u)])))), !(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 20u)])))));
    global3 = var_0.c.a;
    var var_1 = _wgslsmith_mod_vec2_i32(var_0.b.zx, var_0.b.zy);
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1285f + _wgslsmith_f_op_f32(-1000f * global3.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x + global3.x) - -1000f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1298f * global3.x))), _wgslsmith_f_op_f32(func_3())));
    var_1 = var_0.b.yy;
    return Struct_2(1000f < _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.c.x, 13u)] * -1544f), min(vec4<i32>(-_wgslsmith_dot_vec2_i32(var_0.b.ww, vec2<i32>(var_0.b.x, -700i)), 17686i, 22199i, ~max(var_1.x, u_input.a.x)), abs(select(vec4<i32>(u_input.a.x, 1i, var_1.x, var_1.x), var_0.b, !vec4<bool>(var_0.c.b.x, var_0.c.b.x, true, global1[_wgslsmith_index_u32(1u, 20u)])))), Struct_1(var_2.yy, vec2<bool>(true, var_0.c.b.x)));
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    let var_0 = vec2<bool>(false, any(select(vec4<bool>(arg_0.c.b.x, false, global1[_wgslsmith_index_u32(26392u, 20u)], global1[_wgslsmith_index_u32(u_input.c.x, 20u)] & arg_0.a), !(!vec4<bool>(false, arg_0.c.b.x, global1[_wgslsmith_index_u32(u_input.c.x, 20u)], false)), vec4<bool>(true, true, true, true))));
    return func_2();
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: vec2<f32>, arg_3: vec4<f32>) -> Struct_1 {
    global1 = array<bool, 20>();
    var var_0 = _wgslsmith_f_op_f32(trunc(global3.x));
    let var_1 = arg_0.c;
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, func_2().c.a.x) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(arg_3.zx)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1719f, 264f) - vec2<f32>(var_1.a.x, -227f))))), arg_0.c.b);
    var var_3 = _wgslsmith_div_u32(4294967295u, firstTrailingBit(~(~443u)));
    return func_2().c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true || !(!(global1[_wgslsmith_index_u32(0u >> (0u % 32u), 20u)] && true));
    global2 = array<f32, 13>();
    let var_1 = select(select(select(!select(vec3<bool>(false, false, false), vec3<bool>(true, var_0, var_0), false), !select(vec3<bool>(true, global1[_wgslsmith_index_u32(0u, 20u)], false), vec3<bool>(global1[_wgslsmith_index_u32(1u, 20u)], true, true), vec3<bool>(global1[_wgslsmith_index_u32(32729u, 20u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 26u)], 20u)], true)), vec3<bool>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 26u)], 13u)] < global3.x, true, !global1[_wgslsmith_index_u32(4294967295u, 20u)])), vec3<bool>(!var_0, true, var_0), global1[_wgslsmith_index_u32(~(~(global0[_wgslsmith_index_u32(u_input.c.x, 26u)] | global0[_wgslsmith_index_u32(1u, 26u)])), 20u)]), select(select(select(vec3<bool>(var_0, global1[_wgslsmith_index_u32(0u, 20u)], var_0), select(vec3<bool>(false, var_0, global1[_wgslsmith_index_u32(u_input.c.x, 20u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 20u)], true, global1[_wgslsmith_index_u32(0u, 20u)]), vec3<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(39391u, 26u)], 20u)], true, false)), vec3<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(23398u, 26u)], 20u)], true, var_0)), select(!vec3<bool>(var_0, false, global1[_wgslsmith_index_u32(u_input.c.x, 20u)]), select(vec3<bool>(var_0, true, true), vec3<bool>(global1[_wgslsmith_index_u32(1u, 20u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 26u)], 20u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 26u)], 26u)], 20u)]), vec3<bool>(false, var_0, var_0)), !var_0), var_0), select(!vec3<bool>(false, var_0, true), !(!vec3<bool>(var_0, false, global1[_wgslsmith_index_u32(1u, 20u)])), !var_0), global1[_wgslsmith_index_u32(u_input.c.x, 20u)]), select(!(u_input.c.x == 30359u), global1[_wgslsmith_index_u32(~u_input.c.x, 20u)], true));
    var var_2 = u_input.c.yx;
    var var_3 = vec3<f32>(global3.x, 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(427f - -175f)));
    var var_4 = !vec4<bool>(var_0, !var_0, var_0, var_0);
    var var_5 = Struct_2(true, -vec4<i32>(u_input.d, -u_input.d, ~(-u_input.b), 9442i), func_4(func_1(Struct_2(false, u_input.a, Struct_1(vec2<f32>(global3.x, -1257f), vec2<bool>(false, true)))), -_wgslsmith_div_vec2_i32(u_input.a.wz, _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.d, u_input.b), u_input.a.xw)), vec2<f32>(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.c.x, 17465u), 13u)], var_3.x), vec4<f32>(global2[_wgslsmith_index_u32(select(var_2.x, u_input.c.x, true), 13u)], global3.x, _wgslsmith_f_op_f32(abs(func_1(Struct_2(false, vec4<i32>(-2147483647i, 1i, u_input.d, u_input.b), Struct_1(var_3.zx, var_4.zz))).c.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1369f, var_3.x)))));
    let var_6 = ~vec2<u32>(~(~u_input.c.x), 114882u);
    var var_7 = -652f;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, ~_wgslsmith_sub_vec3_i32(~u_input.a.xyz, _wgslsmith_sub_vec3_i32(u_input.a.zwx, _wgslsmith_mod_vec3_i32(var_5.b.wxw, var_5.b.zxz))), vec2<f32>(_wgslsmith_f_op_f32(ceil(-108f)), _wgslsmith_f_op_f32(min(func_1(Struct_2(var_5.a, u_input.a, var_5.c)).c.a.x, _wgslsmith_div_f32(-594f, global2[_wgslsmith_index_u32(~u_input.c.x, 13u)])))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1899f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_6.x, 13u)])), var_3.x, var_5.c.a.x)));
}

