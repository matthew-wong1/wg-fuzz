struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 11> = array<vec3<bool>, 11>(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true));

var<private> global1: array<vec4<u32>, 28> = array<vec4<u32>, 28>(vec4<u32>(1u, 1u, 4294967295u, 24311u), vec4<u32>(4294967295u, 4294967295u, 19232u, 0u), vec4<u32>(17731u, 19936u, 13565u, 1u), vec4<u32>(66308u, 0u, 43736u, 1u), vec4<u32>(31904u, 61646u, 1u, 4294967295u), vec4<u32>(85100u, 4294967295u, 41529u, 4294967295u), vec4<u32>(68249u, 63406u, 0u, 1u), vec4<u32>(5666u, 1u, 46137u, 0u), vec4<u32>(0u, 22441u, 4294967295u, 39019u), vec4<u32>(0u, 0u, 7805u, 8333u), vec4<u32>(22152u, 0u, 77472u, 1u), vec4<u32>(53099u, 0u, 4294967295u, 1u), vec4<u32>(4294967295u, 13980u, 15318u, 54531u), vec4<u32>(44101u, 25723u, 30087u, 65581u), vec4<u32>(6178u, 9320u, 0u, 60409u), vec4<u32>(7290u, 1u, 34575u, 20911u), vec4<u32>(4294967295u, 76465u, 18008u, 19144u), vec4<u32>(4270u, 0u, 11469u, 17375u), vec4<u32>(0u, 0u, 4294967295u, 1u), vec4<u32>(1u, 92439u, 4286u, 1u), vec4<u32>(1u, 9809u, 4479u, 4294967295u), vec4<u32>(4294967295u, 0u, 0u, 4294967295u), vec4<u32>(70374u, 0u, 6264u, 29635u), vec4<u32>(1u, 14180u, 0u, 33998u), vec4<u32>(47614u, 4294967295u, 0u, 14378u), vec4<u32>(37414u, 4294967295u, 82016u, 4294967295u), vec4<u32>(4294967295u, 1u, 1u, 55670u), vec4<u32>(1u, 1u, 1u, 58553u));

var<private> global2: array<vec2<bool>, 27>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2) -> vec4<u32> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -117f)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -3448f), _wgslsmith_f_op_f32(sign(539f))))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-164f))) * _wgslsmith_f_op_f32(max(-584f, _wgslsmith_f_op_f32(f32(-1f) * -808f)))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -615f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1922f + -1000f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-779f * 2004f)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(1223f, 320f)), _wgslsmith_f_op_f32(-1292f * -1903f), !arg_0.a))))));
    var var_1 = Struct_1(~(~firstLeadingBit(abs(global1[_wgslsmith_index_u32(20623u, 28u)]))), firstTrailingBit(min(u_input.a, max(u_input.a, _wgslsmith_clamp_i32(-2147483647i, -2147483647i, 2147483647i)))));
    var var_2 = _wgslsmith_f_op_f32(-1936f - _wgslsmith_f_op_f32(f32(-1f) * -352f));
    var var_3 = _wgslsmith_f_op_f32(-var_0.x);
    let var_4 = arg_0;
    return min(~global1[_wgslsmith_index_u32(0u, 28u)], _wgslsmith_div_vec4_u32(~(~vec4<u32>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x)) >> (select(_wgslsmith_div_vec4_u32(vec4<u32>(0u, var_1.a.x, 66627u, var_1.a.x), global1[_wgslsmith_index_u32(634u, 28u)]), vec4<u32>(var_1.a.x, 1u, var_1.a.x, 1u), true) % vec4<u32>(32u)), select(vec4<u32>(0u, var_1.a.x, 1u, 1u), global1[_wgslsmith_index_u32(0u & var_1.a.x, 28u)] >> ((vec4<u32>(52436u, var_1.a.x, 1u, var_1.a.x) >> (vec4<u32>(var_1.a.x, var_1.a.x, var_1.a.x, 33511u) % vec4<u32>(32u))) % vec4<u32>(32u)), all(vec4<bool>(true, true, true, var_4.a)))));
}

fn func_2(arg_0: vec4<bool>) -> vec3<i32> {
    var var_0 = Struct_2(false);
    var_0 = Struct_2(true);
    var_0 = Struct_2(true);
    let var_1 = select(vec4<u32>(~38065u, 0u, max(firstLeadingBit(1u), 0u) >> (_wgslsmith_div_u32(1u, ~1u) % 32u), 40265u), ~func_3(Struct_2(!var_0.a)), select(!select(!vec4<bool>(var_0.a, false, var_0.a, arg_0.x), select(arg_0, vec4<bool>(true, true, arg_0.x, arg_0.x), var_0.a), vec4<bool>(true, var_0.a, true, var_0.a)), select(arg_0, vec4<bool>(var_0.a, arg_0.x || var_0.a, var_0.a, var_0.a), all(arg_0)), select(select(vec4<bool>(var_0.a, var_0.a, false, arg_0.x), select(vec4<bool>(false, arg_0.x, var_0.a, var_0.a), arg_0, false), true), arg_0, var_0.a)));
    let var_2 = vec4<i32>(_wgslsmith_add_i32(abs(u_input.a), _wgslsmith_add_i32(-u_input.a, u_input.a) & ~select(u_input.a, -15772i, false)), _wgslsmith_add_i32(u_input.a, u_input.a), u_input.a, -u_input.a | _wgslsmith_dot_vec2_i32(~(-vec2<i32>(-20267i, 0i)), _wgslsmith_clamp_vec2_i32(-vec2<i32>(u_input.a, 2147483647i), ~vec2<i32>(u_input.a, u_input.a), vec2<i32>(-26398i, 0i) << (vec2<u32>(var_1.x, 44215u) % vec2<u32>(32u)))));
    return -(vec3<i32>(-1i) * -vec3<i32>(~2147483647i, -1i, u_input.a));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1) -> Struct_1 {
    global1 = array<vec4<u32>, 28>();
    let var_0 = _wgslsmith_clamp_i32(u_input.a, firstTrailingBit(-19393i), ~(~func_2(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), false)).x));
    global2 = array<vec2<bool>, 27>();
    let var_1 = 39034i;
    global0 = array<vec3<bool>, 11>();
    return Struct_1(vec4<u32>(arg_1.a.x, ~(~arg_1.a.x), arg_1.a.x, arg_1.a.x), reverseBits(var_1));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_2) -> bool {
    let var_0 = Struct_2(arg_1.a);
    global0 = array<vec3<bool>, 11>();
    var var_1 = global2[_wgslsmith_index_u32(min(~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), 1u), _wgslsmith_mod_u32(54880u, _wgslsmith_dot_vec3_u32(select(vec3<u32>(2033u, 36162u, 1u), vec3<u32>(4294967295u, 10801u, 100526u), var_0.a), vec3<u32>(50558u, 1u, 4294967295u))) & _wgslsmith_mult_u32(1u, ~_wgslsmith_div_u32(9258u, 4294967295u))), 27u)];
    var var_2 = func_4(func_2(vec4<bool>(true, var_0.a, true, true)), Struct_1(select(vec4<u32>(~0u, 0u, ~70321u, 4294967295u >> (0u % 32u)), ~(~global1[_wgslsmith_index_u32(21377u, 28u)]), true), 1i));
    var var_3 = ~(-1i);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<u32>, 28>();
    global2 = array<vec2<bool>, 27>();
    var var_0 = vec2<i32>(1i, u_input.a);
    var var_1 = reverseBits(u_input.a);
    let var_2 = select(select(!vec4<bool>(func_1(vec2<i32>(-3670i, u_input.a), Struct_2(true)), true, true, true), !(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(true, false, false)), select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), false), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), false), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), true)), func_1(firstLeadingBit(vec2<i32>(-22539i, -21785i)), Struct_2(true)))), vec4<bool>(reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(27022i, -40016i))) != var_0.x, u_input.a <= abs(~u_input.a), true, (select(true, false, false) || all(vec4<bool>(true, true, false, false))) || true), true);
    var_1 = ~(i32(-1i) * -1i);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~4294967295u, 1u, min(firstTrailingBit(func_4(vec3<i32>(1i, var_0.x, u_input.a), Struct_1(vec4<u32>(1u, 4294967295u, 4294967295u, 84399u), u_input.a)).a.x), 1u)), ((vec2<i32>(-1i) * -vec2<i32>(u_input.a, -2147483647i)) << (~vec2<u32>(1u, 1u) % vec2<u32>(32u))) & abs(~select(vec2<i32>(var_0.x, -1i), vec2<i32>(u_input.a, var_0.x), vec2<bool>(false, var_2.x))));
}

