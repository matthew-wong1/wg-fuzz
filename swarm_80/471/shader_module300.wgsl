struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 17>;

var<private> global1: array<bool, 13> = array<bool, 13>(false, true, true, true, true, false, false, false, true, false, false, true, true);

var<private> global2: array<i32, 2>;

var<private> global3: array<vec4<bool>, 11> = array<vec4<bool>, 11>(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true));

var<private> global4: vec2<u32> = vec2<u32>(1u, 24364u);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<bool>, arg_2: f32) -> bool {
    var var_0 = ~(~abs(global0[_wgslsmith_index_u32(11709u, 17u)]));
    global2 = array<i32, 2>();
    return true;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3) -> i32 {
    global3 = array<vec4<bool>, 11>();
    global3 = array<vec4<bool>, 11>();
    var var_0 = Struct_2(true, Struct_1(firstTrailingBit(1i)), Struct_1(_wgslsmith_sub_i32(-1i, u_input.d.x)), Struct_1(-2147483647i));
    var var_1 = var_0.a;
    let var_2 = arg_0.a.x;
    return -(-21468i << (~(0u & u_input.c) % 32u));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec3<u32>) -> vec3<f32> {
    global2 = array<i32, 2>();
    let var_0 = arg_2;
    var var_1 = vec2<i32>(-34238i, _wgslsmith_mult_i32(-1555i, func_4(Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(-720f, 803f, -118f) * vec3<f32>(1043f, -365f, 719f)), func_3(vec3<i32>(u_input.d.x, arg_0.a, u_input.d.x), vec3<bool>(global1[_wgslsmith_index_u32(arg_1.x, 13u)], global1[_wgslsmith_index_u32(26741u, 13u)], true), -1113f)), Struct_3(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1676f, 991f, -379f))), true))));
    global0 = array<vec4<u32>, 17>();
    global1 = array<bool, 13>();
    return _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1f, 1f, 1f)));
}

fn func_5(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: vec3<u32>) -> Struct_3 {
    let var_0 = arg_0;
    global0 = array<vec4<u32>, 17>();
    let var_1 = vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -213f) - _wgslsmith_f_op_f32(f32(-1f) * -841f)) == _wgslsmith_div_f32(-830f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.x, var_0.a.x)))), all(select(vec2<bool>(!var_0.b, false), select(vec2<bool>(var_0.b, arg_0.b), select(vec2<bool>(arg_0.b, global1[_wgslsmith_index_u32(u_input.c, 13u)]), vec2<bool>(false, arg_0.b), vec2<bool>(true, true)), !vec2<bool>(true, var_0.b)), var_0.b)), any(!vec4<bool>(true == global1[_wgslsmith_index_u32(u_input.a.x, 13u)], -1i >= u_input.b.x, global1[_wgslsmith_index_u32(firstTrailingBit(0u), 13u)], arg_0.b)), ~4294967295u < global4.x);
    global1 = array<bool, 13>();
    var var_2 = vec4<i32>(_wgslsmith_mult_i32(max(_wgslsmith_add_i32(countOneBits(-7508i), u_input.d.x), _wgslsmith_clamp_i32(u_input.d.x, global2[_wgslsmith_index_u32(6309u, 2u)], 2147483647i) << (reverseBits(global4.x) % 32u)), -firstLeadingBit(-32508i)), -1056i, u_input.d.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, countOneBits(_wgslsmith_mult_i32(-20679i, 0i))), abs(select(u_input.d.xy, _wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, -22876i), u_input.b), var_1.xw))));
    return Struct_3(vec3<f32>(-969f, _wgslsmith_f_op_f32(exp2(var_0.a.x)), 624f), false);
}

fn func_6(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec2<u32>) -> vec4<f32> {
    let var_0 = !select(!vec4<bool>(true, arg_0.b, false, any(vec3<bool>(true, arg_0.b, true))), select(select(!global3[_wgslsmith_index_u32(arg_2.x, 11u)], global3[_wgslsmith_index_u32(firstTrailingBit(23940u), 11u)], func_5(arg_1, vec2<f32>(-842f, -671f), vec3<u32>(arg_2.x, 1u, global4.x)).b), vec4<bool>(true, true, any(vec2<bool>(arg_0.b, global1[_wgslsmith_index_u32(arg_2.x, 13u)])), u_input.b.x != 40014i), true), true);
    global3 = array<vec4<bool>, 11>();
    global0 = array<vec4<u32>, 17>();
    let var_1 = Struct_2(!(_wgslsmith_sub_i32(u_input.b.x, abs(u_input.b.x)) > -13920i), Struct_1(_wgslsmith_dot_vec4_i32(-(~vec4<i32>(2147483647i, -15630i, -20688i, 1i)), -vec4<i32>(-2147483647i, 22271i, global2[_wgslsmith_index_u32(4294967295u, 2u)], global2[_wgslsmith_index_u32(2399u, 2u)]))), Struct_1(_wgslsmith_sub_i32(-1576i, _wgslsmith_div_i32(global2[_wgslsmith_index_u32(global4.x, 2u)], _wgslsmith_sub_i32(u_input.d.x, u_input.b.x)))), Struct_1(firstTrailingBit(_wgslsmith_dot_vec4_i32(-vec4<i32>(global2[_wgslsmith_index_u32(u_input.c, 2u)], -6245i, 2147483647i, 1i), _wgslsmith_mult_vec4_i32(vec4<i32>(-19580i, global2[_wgslsmith_index_u32(arg_2.x, 2u)], -1i, 0i), vec4<i32>(8620i, global2[_wgslsmith_index_u32(13057u, 2u)], u_input.b.x, global2[_wgslsmith_index_u32(59487u, 2u)]))))));
    global1 = array<bool, 13>();
    return vec4<f32>(-370f, -666f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x)), arg_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -122f))))));
}

fn func_1(arg_0: i32, arg_1: i32) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_6(func_5(Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(Struct_1(1240i), vec4<u32>(4294967295u, 45374u, 5509u, u_input.c), vec3<u32>(0u, 1u, global4.x))), _wgslsmith_div_vec3_f32(vec3<f32>(506f, -342f, 613f), vec3<f32>(154f, -815f, 394f))), !select(global1[_wgslsmith_index_u32(58016u, 13u)], true, global1[_wgslsmith_index_u32(global4.x, 13u)])), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1867f, -420f) + vec2<f32>(380f, -668f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(144f, -2021f))), false))), abs(_wgslsmith_add_vec3_u32(vec3<u32>(global4.x, 89052u, u_input.a.x), vec3<u32>(u_input.a.x, 9476u, global4.x)) & min(vec3<u32>(u_input.a.x, u_input.a.x, 33559u), vec3<u32>(u_input.c, 4237u, global4.x)))), Struct_3(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1f, 1f, 1f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(443f, 2302f, 1000f) + vec3<f32>(410f, -801f, 695f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1324f, 1319f, 3598f)))))), false), reverseBits(vec2<u32>(~0u, u_input.c))));
    var var_1 = min(~(~14051u), ~_wgslsmith_dot_vec4_u32(firstTrailingBit(reverseBits(global0[_wgslsmith_index_u32(628u, 17u)])), abs(vec4<u32>(1u, 35146u, 1u, 4294967295u))));
    var_1 = abs(~_wgslsmith_dot_vec2_u32(abs(vec2<u32>(62202u, 1u)), firstLeadingBit(_wgslsmith_add_vec2_u32(u_input.a, vec2<u32>(global4.x, 4294967295u)))));
    let var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(func_6(func_5(Struct_3(_wgslsmith_f_op_vec3_f32(var_0.xxx * var_0.wxx), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1506f, 1556f), var_0.yz)), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, 11718u), vec3<u32>(1u, u_input.c, 80367u)) & vec3<u32>(u_input.c, 4294967295u, global4.x)), Struct_3(vec3<f32>(-1051f, _wgslsmith_f_op_f32(sign(var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1748f)), any(!vec4<bool>(true, global1[_wgslsmith_index_u32(global4.x, 13u)], global1[_wgslsmith_index_u32(global4.x, 13u)], global1[_wgslsmith_index_u32(1u, 13u)]))), (u_input.a & u_input.a) | countOneBits(abs(u_input.a)))).xxw, !(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, 1u, u_input.a.x), ~vec3<u32>(global4.x, global4.x, 37542u)) < 0u));
    let var_3 = Struct_1(i32(-1i) * -1i);
    return vec3<bool>(false, !global1[_wgslsmith_index_u32(reverseBits(4294967295u), 13u)], true);
}

fn func_7(arg_0: f32, arg_1: vec4<u32>, arg_2: vec3<bool>, arg_3: vec2<f32>) -> Struct_3 {
    global4 = _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, select(global4.x, select(41795u, 24852u, true), global1[_wgslsmith_index_u32(u_input.a.x, 13u)])), arg_1.ww) >> (vec2<u32>(_wgslsmith_mult_u32(1345u, ~_wgslsmith_mult_u32(1u, global4.x)), global4.x) % vec2<u32>(32u));
    global4 = _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(firstLeadingBit(arg_1.yzz ^ vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u)), vec3<u32>(~0u, 1u, ~119399u)), ~arg_1.x), abs(select(vec2<u32>(0u, arg_1.x) >> (u_input.a % vec2<u32>(32u)), vec2<u32>(0u, arg_1.x), global1[_wgslsmith_index_u32(1u, 13u)]) | arg_1.yy));
    var var_0 = Struct_1(_wgslsmith_mult_i32(~u_input.d.x, i32(-1i) * -(~(-593i))));
    let var_1 = arg_3.x;
    let var_2 = abs(global4.x);
    return func_5(func_5(func_5(func_5(func_5(Struct_3(vec3<f32>(1000f, -1085f, 1000f), true), vec2<f32>(-146f, -253f), arg_1.xyx), vec2<f32>(-834f, 807f), arg_1.xxz), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_3) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-374f, -195f)))), ~arg_1.wyy >> (vec3<u32>(1u, global4.x, 0u) % vec3<u32>(32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-556f, -2025f) - vec2<f32>(arg_0, 647f)))), min(arg_1.zzw, vec3<u32>(1u, global4.x, 1u) << (vec3<u32>(global4.x, 1u, 14196u) % vec3<u32>(32u)))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -319f)), 1810f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1023f, -791f) - arg_3)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.x, -955f)))))), _wgslsmith_sub_vec3_u32(min(vec3<u32>(u_input.a.x, 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_2, 69974u), arg_1.wy)), _wgslsmith_mod_vec3_u32(~vec3<u32>(13271u, 29211u, u_input.c), select(arg_1.xwy, arg_1.wwx, arg_2))), arg_1.xxz));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<bool>, 11>();
    global3 = array<vec4<bool>, 11>();
    var var_0 = min(_wgslsmith_add_i32(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~u_input.a.x, ~global4.x, abs(~0u)), 2u)], ~1i), -5108i);
    let var_1 = func_7(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(911f * 129f), -1152f)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-389f))))))), global0[_wgslsmith_index_u32(reverseBits(u_input.c), 17u)], !select(vec3<bool>(true, true, global1[_wgslsmith_index_u32(global4.x, 13u)] || true), !func_1(-1i, u_input.b.x), !vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 13u)], false, true)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2214f, -773f))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1260f, -1379f) + vec2<f32>(1157f, 483f))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(2611f, 640f))), -1000f))));
    let var_2 = Struct_1(global2[_wgslsmith_index_u32(~(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, global4.x) ^ vec2<u32>(u_input.a.x, 15255u), ~u_input.a) & max(64222u, u_input.c)), 2u)]);
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_dot_vec2_i32(u_input.b | vec2<i32>(44091i, 345i), u_input.d.yy), -13013i) >> (select(~(~global4.x), global4.x, global1[_wgslsmith_index_u32(global4.x, 13u)]) % 32u));
}

