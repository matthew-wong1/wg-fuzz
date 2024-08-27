struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: i32,
    d: vec2<u32>,
    e: f32,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 21> = array<vec3<u32>, 21>(vec3<u32>(0u, 64567u, 6008u), vec3<u32>(0u, 1u, 4943u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(1u, 4294967295u, 40069u), vec3<u32>(4294967295u, 1u, 125020u), vec3<u32>(1u, 20746u, 106477u), vec3<u32>(1u, 9788u, 19399u), vec3<u32>(79635u, 53863u, 0u), vec3<u32>(20184u, 6886u, 11888u), vec3<u32>(0u, 12717u, 4294967295u), vec3<u32>(0u, 1u, 0u), vec3<u32>(62227u, 4294967295u, 4294967295u), vec3<u32>(1u, 32148u, 1u), vec3<u32>(0u, 34097u, 4294967295u), vec3<u32>(61575u, 0u, 0u), vec3<u32>(1u, 0u, 26022u), vec3<u32>(0u, 50551u, 1u), vec3<u32>(42013u, 4294967295u, 0u), vec3<u32>(4294967295u, 21658u, 65415u), vec3<u32>(4294967295u, 4294967295u, 690u), vec3<u32>(4294967295u, 0u, 0u));

var<private> global1: Struct_2;

var<private> global2: array<bool, 22>;

var<private> global3: array<i32, 27> = array<i32, 27>(-36388i, -16754i, 18527i, -13832i, -4301i, 5854i, -2485i, i32(-2147483648), -7025i, -19430i, -40586i, 19158i, -1i, -8557i, 1i, 2147483647i, 1i, i32(-2147483648), -2370i, 0i, 8745i, 0i, 0i, 41331i, i32(-2147483648), -27194i, -1i);

var<private> global4: vec3<i32> = vec3<i32>(2147483647i, 1i, 2147483647i);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: Struct_3) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_0.a.x * 994f), arg_2.a.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.e) + _wgslsmith_f_op_f32(-1286f * 890f)), arg_0.e))));
    let var_1 = Struct_2(Struct_1(vec2<bool>(_wgslsmith_mod_i32(arg_0.c, 2147483647i) >= 0i, true), !vec3<bool>(global1.a.a.x != false, true, false)), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(66115u, u_input.a.x, 1u), u_input.a.zwy | vec3<u32>(1u, 18958u, arg_2.d.x)), 80478u) ^ ~u_input.a.x, global1.a);
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2.a.x), arg_2.e));
}

fn func_2(arg_0: Struct_4, arg_1: f32, arg_2: vec4<bool>, arg_3: vec2<bool>) -> Struct_1 {
    global3 = array<i32, 27>();
    global4 = u_input.c.xxz;
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(Struct_3(vec2<f32>(163f, -1284f), ~(-global4.zx), _wgslsmith_mod_i32(i32(-1i) * -24486i, -arg_0.a.x), u_input.a.yw, arg_1), vec4<bool>(~48198i <= _wgslsmith_sub_i32(-1i, global4.x), !global2[_wgslsmith_index_u32(u_input.a.x, 22u)] && (u_input.b >= global3[_wgslsmith_index_u32(4294967295u, 27u)]), _wgslsmith_f_op_f32(-265f - -865f) != _wgslsmith_f_op_f32(exp2(arg_1)), global1.a.b.x), Struct_3(vec2<f32>(_wgslsmith_div_f32(arg_1, -2009f), _wgslsmith_f_op_f32(arg_1 * arg_1)), vec2<i32>(global4.x, global4.x), -6638i, ~(u_input.a.yy & u_input.a.zw), _wgslsmith_f_op_f32(-arg_1)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1204f))), select(true, true, arg_3.x)));
    var var_1 = vec4<f32>(-321f, 1000f, -351f, arg_1);
    global4 = _wgslsmith_div_vec3_i32(-_wgslsmith_clamp_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(u_input.a.x & 26143u, 27u)], ~global3[_wgslsmith_index_u32(u_input.a.x, 27u)], global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(99894u, global1.b), 27u)]), ~u_input.c.yxw, firstTrailingBit(firstLeadingBit(vec3<i32>(arg_0.a.x, global3[_wgslsmith_index_u32(u_input.a.x, 27u)], u_input.b)))), u_input.c.xyz);
    return global1.c;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_4, arg_2: vec2<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.e), arg_0.e), arg_0.a.x);
    var var_1 = Struct_2(global1.c, 0u << (u_input.a.x % 32u), global1.a);
    var var_2 = arg_0;
    let var_3 = func_2(Struct_4(abs(u_input.c.xx)), arg_0.e, vec4<bool>(global1.a.b.x, global1.a.b.x, true, select(true, select(false, global2[_wgslsmith_index_u32(20461u, 22u)], global2[_wgslsmith_index_u32(var_1.b, 22u)]) && global2[_wgslsmith_index_u32(reverseBits(0u), 22u)], true == global1.c.b.x)), var_1.c.b.zy);
    global4 = u_input.c.ywz;
    return Struct_1(vec2<bool>(var_2.a.x >= -367f, select(!global1.c.a.x, true, any(select(vec3<bool>(false, true, true), global1.c.b, var_1.c.b)))), !var_1.c.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_1(Struct_3(vec2<f32>(-380f, -1734f), vec2<i32>(u_input.b >> (global1.b % 32u), global4.x), global4.x, ~u_input.a.xz << (~u_input.a.wz % vec2<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-283f, 1490f)))), Struct_4(~(~u_input.c.wy)), -vec2<i32>(global3[_wgslsmith_index_u32(~2298u, 27u)], ~598i)), 1u, func_2(Struct_4(_wgslsmith_mult_vec2_i32(vec2<i32>(global3[_wgslsmith_index_u32(1u, 27u)], -22267i) << (vec2<u32>(global1.b, u_input.a.x) % vec2<u32>(32u)), vec2<i32>(-1i, 2147483647i))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_3(vec2<f32>(-630f, -902f), vec2<i32>(-2147483647i, global3[_wgslsmith_index_u32(40251u, 27u)]), 58278i, vec2<u32>(1u, u_input.a.x), -1051f), vec4<bool>(global1.c.a.x, false, true, true), Struct_3(vec2<f32>(1163f, 110f), u_input.c.ww, global3[_wgslsmith_index_u32(global1.b, 27u)], u_input.a.zy, -563f))) * 1368f))), vec4<bool>(true, min(global1.b, 27549u) >= 1u, !global2[_wgslsmith_index_u32(min(0u, global1.b), 22u)], true), global1.a.b.xz));
    var var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -533f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1170f, 2154f) * _wgslsmith_div_vec2_f32(vec2<f32>(293f, 829f), vec2<f32>(-316f, -363f)))), true)), ~global4.yy & _wgslsmith_div_vec2_i32(vec2<i32>(i32(-1i) * -2147483647i, ~u_input.c.x), vec2<i32>(0i, global4.x)), -2147483647i, vec2<u32>(~(~select(0u, 4824u, global1.a.a.x)), abs(0u)), _wgslsmith_f_op_f32(-664f * -622f));
    let var_2 = any(!(!vec2<bool>(var_0.a.a.x, true)));
    var var_3 = Struct_2(global1.a, _wgslsmith_div_u32(firstTrailingBit(_wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.a.x, 60006u), _wgslsmith_div_u32(var_1.d.x, var_0.b))), select(global1.b, _wgslsmith_dot_vec3_u32(u_input.a.yxw, ~u_input.a.xwz), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0.b, 10398u) >> (1u % 32u), 22u)])), global1.a);
    global4 = ~_wgslsmith_clamp_vec3_i32(u_input.c.zzx, u_input.c.zzx, u_input.c.xzx);
    global4 = u_input.c.zxw;
    global3 = array<i32, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.e, reverseBits(~(~u_input.a.zyx) ^ min(min(global0[_wgslsmith_index_u32(83517u, 21u)], vec3<u32>(4294967295u, 4033u, global1.b)), ~vec3<u32>(34222u, 74368u, 71953u))), _wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1485f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1577f), var_1.a.x))));
}

