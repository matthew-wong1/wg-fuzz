struct Struct_1 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: vec4<bool>;

var<private> global2: array<u32, 10>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec4<u32> {
    var var_0 = select(!(!(!(!vec3<bool>(global1.x, global1.x, true)))), vec3<bool>(!any(!vec2<bool>(false, global1.x)), !all(!global1.yz), true), select(global1.zzx, global1.yxw, any(select(vec3<bool>(global1.x, true, global1.x), global1.wzx, !vec3<bool>(global1.x, global1.x, global1.x)))));
    global1 = select(!select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, global1.x, var_0.x), vec4<bool>(var_0.x, global1.x, var_0.x, var_0.x), false), select(vec4<bool>(false, var_0.x, true, var_0.x), select(vec4<bool>(false, var_0.x, true, true), vec4<bool>(global1.x, var_0.x, false, false), global1.x), !vec4<bool>(true, true, var_0.x, true))), select(select(!(!vec4<bool>(global1.x, false, global1.x, var_0.x)), select(!vec4<bool>(var_0.x, false, var_0.x, global1.x), vec4<bool>(global1.x, false, false, false), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(global1.x, false, true, global1.x), vec4<bool>(false, false, var_0.x, global1.x), true), vec4<bool>(true, true, true, true))), !vec4<bool>(all(global1.xwx), false, select(true, global1.x, global1.x), any(global1.yyz)), !(!select(vec4<bool>(false, false, false, true), vec4<bool>(var_0.x, true, var_0.x, global1.x), vec4<bool>(var_0.x, true, var_0.x, false)))), vec4<bool>(any(select(global1.wxx, vec3<bool>(global1.x, var_0.x, global1.x), false | var_0.x)), !(true && (global0.x >= global0.x)), var_0.x, false));
    var var_1 = false;
    global0 = vec2<i32>(-9204i, -2147483647i);
    global1 = !(!vec4<bool>(!all(vec4<bool>(global1.x, true, false, true)), all(!global1.yx), false, true));
    return _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(abs(35228u), _wgslsmith_add_u32(u_input.b.x, 0u), ~41195u, 59539u | u_input.b.x), vec4<u32>(u_input.a.x, 27570u, ~(~4294967295u), global2[_wgslsmith_index_u32(~1u, 10u)])), ~(~(~vec4<u32>(23142u, global2[_wgslsmith_index_u32(1u, 10u)], 1u, 28995u) << (vec4<u32>(4294967295u, u_input.b.x, global2[_wgslsmith_index_u32(45503u, 10u)], 8219u) % vec4<u32>(32u)))));
}

fn func_2() -> vec3<f32> {
    let var_0 = _wgslsmith_clamp_vec4_u32(~(~reverseBits(firstLeadingBit(vec4<u32>(global2[_wgslsmith_index_u32(u_input.a.x, 10u)], 15489u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 10u)], 10u)], 25311u)))), func_3() ^ ~(~(~vec4<u32>(u_input.b.x, 4294967295u, u_input.a.x, 4294967295u))), vec4<u32>(~global2[_wgslsmith_index_u32(firstTrailingBit(~0u), 10u)], _wgslsmith_mod_u32(1u, _wgslsmith_mult_u32(firstTrailingBit(u_input.a.x), global2[_wgslsmith_index_u32(countOneBits(88430u), 10u)])), select(_wgslsmith_sub_u32(u_input.b.x, 4294967295u), ~u_input.b.x, true) & _wgslsmith_add_u32(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(53134u, 10u)], 10u)], 4294967295u), 4294967295u), global2[_wgslsmith_index_u32(4294967295u, 10u)]));
    global1 = !vec4<bool>(global1.x | all(select(vec4<bool>(global1.x, false, global1.x, false), vec4<bool>(global1.x, global1.x, true, global1.x), vec4<bool>(global1.x, global1.x, global1.x, global1.x))), true, global1.x, true);
    let var_1 = u_input.b.x;
    var var_2 = Struct_1(!((global1.x != true) & !(false && global1.x)), !(!(!vec4<bool>(global1.x, global1.x, global1.x, false))));
    global2 = array<u32, 10>();
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-419f, 744f, -1530f) - vec3<f32>(-384f, -417f, -593f)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(382f, 840f, 435f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 1910f, 164f) * vec3<f32>(553f, -1116f, 1342f)), all(var_2.b)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(154f, 1962f, -228f)))) * vec3<f32>(-736f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1133f, -1823f))))), -391f));
}

fn func_1(arg_0: i32, arg_1: Struct_3, arg_2: vec4<bool>) -> vec2<i32> {
    global2 = array<u32, 10>();
    var var_0 = arg_1.a.x;
    var var_1 = select(!arg_1.b.wx, !select(vec2<bool>(false, true), !arg_2.xy, global1.wy), global1.yx);
    global2 = array<u32, 10>();
    var var_2 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -635f), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2()), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1275f, 447f, -1398f), vec3<f32>(336f, -1378f, -1492f)))) + vec3<f32>(_wgslsmith_f_op_f32(725f - 787f), 593f, _wgslsmith_f_op_f32(step(1038f, 1213f))))), Struct_1(all(vec4<bool>(true, !arg_1.c.b.x, !global1.x, var_1.x != global1.x)), arg_1.c.b), arg_1.c, arg_1.c);
    return vec2<i32>(-1i) * -arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_clamp_vec2_i32(func_1(0i, Struct_3(select(vec2<i32>(global0.x, u_input.d.x), u_input.c, global1.x), select(vec4<bool>(false, global1.x, false, true), vec4<bool>(global1.x, global1.x, false, global1.x), global1.x), Struct_1(global1.x, vec4<bool>(false, true, true, false))), !select(vec4<bool>(global1.x, global1.x, false, false), vec4<bool>(true, global1.x, false, false), global1.x)), countOneBits(~vec2<i32>(0i, global0.x)), ~u_input.d.zw), select(!vec4<bool>(select(global1.x, global1.x, global1.x), true, global1.x != global1.x, !global1.x), vec4<bool>(true, (u_input.d.x < u_input.d.x) && !global1.x, true, true), all(vec4<bool>(global1.x, true, 0i <= global0.x, true))), Struct_1(global1.x && all(vec3<bool>(global1.x, true, true)), vec4<bool>(0u <= _wgslsmith_mod_u32(4294967295u, u_input.a.x), true, !global1.x, false)));
    global0 = _wgslsmith_div_vec2_i32(vec2<i32>(u_input.c.x, max(select(2147483647i, global0.x, true), -_wgslsmith_dot_vec2_i32(u_input.d.wy, var_0.a))), ~(~var_0.a));
    let var_1 = !global1.x;
    var var_2 = -(~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -u_input.d, abs(vec4<i32>(-7138i, global0.x, global0.x, -1i))));
    global1 = !select(select(!var_0.c.b, var_0.c.b, _wgslsmith_dot_vec2_i32(vec2<i32>(-8183i, u_input.d.x), var_0.a) > ~global0.x), !var_0.c.b, false);
    let x = u_input.a;
    s_output = StorageBuffer(-1392f, -2821i, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(1107f, 273f, -1403f) + vec3<f32>(-545f, 230f, 729f)), vec3<f32>(-665f, -1378f, -1417f))) * vec3<f32>(-1143f, -1521f, -786f)), _wgslsmith_f_op_vec3_f32(func_2())));
}

