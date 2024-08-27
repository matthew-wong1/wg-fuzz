struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: f32;

var<private> global2: array<i32, 32>;

var<private> global3: array<bool, 27>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> vec3<bool> {
    var var_0 = Struct_3(all(!(!select(vec2<bool>(true, false), vec2<bool>(false, global3[_wgslsmith_index_u32(4294967295u, 27u)]), vec2<bool>(true, global3[_wgslsmith_index_u32(arg_1.a.x, 27u)])))), Struct_1(select(abs(max(vec2<u32>(52279u, arg_1.a.x), arg_1.a)), reverseBits(arg_1.a), select(select(vec2<bool>(global3[_wgslsmith_index_u32(14578u, 27u)], true), vec2<bool>(global3[_wgslsmith_index_u32(1u, 27u)], true), false), vec2<bool>(global3[_wgslsmith_index_u32(arg_0, 27u)], true), vec2<bool>(true, true)))), ~(-2147483647i));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(227f, 1006f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-1026f, 1365f)), 144f)))));
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-432f, 676f, -1238f) * vec3<f32>(922f, 140f, 856f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-361f, -1791f, -2302f)))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(2737f, -569f, 260f) * vec3<f32>(-674f, 1106f, -1163f)), vec3<f32>(-470f, 387f, 783f), !vec3<bool>(true, var_0.a, var_0.a)))), vec3<f32>(1743f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1783f)), 1311f))), vec3<f32>(359f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1954f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-1090f)), _wgslsmith_f_op_f32(1000f * -683f), true))))));
    var var_2 = ~34281u;
    var var_3 = countOneBits(~36647u);
    return !select(select(select(!vec3<bool>(global3[_wgslsmith_index_u32(33872u, 27u)], true, true), vec3<bool>(global3[_wgslsmith_index_u32(arg_0, 27u)], global3[_wgslsmith_index_u32(4294967295u, 27u)], var_0.a), !vec3<bool>(true, global3[_wgslsmith_index_u32(var_0.b.a.x, 27u)], var_0.a)), !select(vec3<bool>(true, false, global3[_wgslsmith_index_u32(arg_1.a.x, 27u)]), vec3<bool>(false, true, false), global3[_wgslsmith_index_u32(30806u, 27u)]), all(vec4<bool>(global3[_wgslsmith_index_u32(1u, 27u)], global3[_wgslsmith_index_u32(0u, 27u)], true, global3[_wgslsmith_index_u32(41409u, 27u)]))), vec3<bool>(true, true, all(select(vec3<bool>(var_0.a, global3[_wgslsmith_index_u32(33398u, 27u)], var_0.a), vec3<bool>(true, false, false), true))), !any(select(vec3<bool>(true, true, var_0.a), vec3<bool>(var_0.a, global3[_wgslsmith_index_u32(arg_1.a.x, 27u)], var_0.a), false)));
}

fn func_2(arg_0: u32) -> u32 {
    var var_0 = ~arg_0 | arg_0;
    let var_1 = select(func_3(arg_0, Struct_1(~vec2<u32>(arg_0, arg_0))), select(!(!vec3<bool>(global3[_wgslsmith_index_u32(arg_0, 27u)], true, false)), vec3<bool>(global3[_wgslsmith_index_u32(arg_0, 27u)], true, global3[_wgslsmith_index_u32(arg_0, 27u)]), !(any(vec4<bool>(global3[_wgslsmith_index_u32(arg_0, 27u)], false, false, true)) && !global3[_wgslsmith_index_u32(arg_0, 27u)])), global3[_wgslsmith_index_u32(11982u, 27u)]);
    let var_2 = reverseBits(vec3<u32>(_wgslsmith_sub_u32(~arg_0, _wgslsmith_div_u32(11956u, 10725u)), 1u, 0u)) & abs(~_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 4294967295u, 1u), abs(vec3<u32>(20364u, 25614u, 48697u)), abs(vec3<u32>(4294967295u, 29687u, arg_0))));
    var_0 = ~_wgslsmith_div_u32(var_2.x, 108263u);
    let var_3 = !(~(arg_0 & ~var_2.x) >= 0u);
    return _wgslsmith_dot_vec2_u32(reverseBits(~vec2<u32>(~arg_0, 32565u ^ var_2.x)), select(vec2<u32>(52312u, ~_wgslsmith_dot_vec2_u32(var_2.zy, vec2<u32>(17835u, var_2.x))), _wgslsmith_mod_vec2_u32(vec2<u32>(min(34072u, var_2.x), 5474u), var_2.zx << (var_2.zz % vec2<u32>(32u))), true));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<f32>) -> bool {
    global3 = array<bool, 27>();
    global1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_2.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(196f + arg_2.x), -442f))))));
    let var_0 = _wgslsmith_sub_vec2_u32(~arg_1.a.a, vec2<u32>(_wgslsmith_add_u32(func_2(arg_0.a.a.x), 1u) & _wgslsmith_sub_u32(arg_0.a.a.x, 0u), 1u));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_2.x, -1769f), vec2<f32>(-1385f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.x + arg_2.x), -1923f))) + _wgslsmith_f_op_vec2_f32(-arg_2.zz));
    let var_2 = Struct_3(all(func_3(_wgslsmith_div_u32(arg_0.a.a.x, arg_1.a.a.x), Struct_1(vec2<u32>(arg_1.a.a.x, arg_1.a.a.x)))), Struct_1(~vec2<u32>(_wgslsmith_sub_u32(0u, arg_0.a.a.x), arg_1.a.a.x >> (var_0.x % 32u))), _wgslsmith_div_i32(i32(-1i) * -_wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(arg_0.a.a.x, 32u)], global2[_wgslsmith_index_u32(arg_1.a.a.x, 32u)], -10234i), _wgslsmith_add_i32(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(61008i, 24633i, 0i), _wgslsmith_mult_i32(global2[_wgslsmith_index_u32(var_0.x, 32u)], 1i)), abs(-1i))));
    return !any(vec4<bool>(true, !all(vec3<bool>(false, global3[_wgslsmith_index_u32(arg_1.a.a.x, 27u)], true)), global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(var_2.b.a, var_2.b.a), arg_0.a.a.x >> (60445u % 32u), max(4294967295u, 72443u)), 27u)], !any(vec2<bool>(true, false))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = -478f;
    let var_0 = select(vec3<bool>(!(!global3[_wgslsmith_index_u32(~1u, 27u)]), true || !all(vec2<bool>(false, global3[_wgslsmith_index_u32(4294967295u, 27u)])), false), vec3<bool>(all(!(!vec4<bool>(false, false, global3[_wgslsmith_index_u32(21163u, 27u)], true))), global3[_wgslsmith_index_u32((~0u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(99382u, 12857u)) % 32u)) ^ _wgslsmith_mod_u32(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(14869u, 1u, 17010u, 10101u), vec4<u32>(51432u, 4294967295u, 0u, 1u))), 27u)], !(!global3[_wgslsmith_index_u32(1u, 27u)])), !select(select(select(vec3<bool>(global3[_wgslsmith_index_u32(16322u, 27u)], global3[_wgslsmith_index_u32(29726u, 27u)], true), vec3<bool>(global3[_wgslsmith_index_u32(62289u, 27u)], false, true), false), select(vec3<bool>(global3[_wgslsmith_index_u32(1u, 27u)], global3[_wgslsmith_index_u32(4294967295u, 27u)], false), vec3<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 27u)], false), vec3<bool>(global3[_wgslsmith_index_u32(0u, 27u)], global3[_wgslsmith_index_u32(1u, 27u)], false)), func_1(Struct_2(Struct_1(vec2<u32>(5009u, 0u))), Struct_2(Struct_1(vec2<u32>(1u, 105299u))), vec3<f32>(620f, -191f, -204f))), vec3<bool>(true, global3[_wgslsmith_index_u32(~70244u, 27u)], func_1(Struct_2(Struct_1(vec2<u32>(0u, 13468u))), Struct_2(Struct_1(vec2<u32>(4294967295u, 30728u))), vec3<f32>(1168f, 1000f, -184f))), global3[_wgslsmith_index_u32(82161u, 27u)]));
    var var_1 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(0u, ~9359u, abs(4294967295u)), 70891u, 1u), vec3<u32>(1u, countOneBits(func_2(35134u)), 1u));
    var var_2 = _wgslsmith_div_f32(885f, 1052f);
    let var_3 = !var_0.xy;
    let x = u_input.a;
    s_output = StorageBuffer(-(vec4<i32>(-1i) * -vec4<i32>(u_input.a, u_input.a, 63375i, -2147483647i)) | vec4<i32>(global2[_wgslsmith_index_u32(~min(4294967295u, 0u), 32u)], 0i, ~_wgslsmith_add_i32(global2[_wgslsmith_index_u32(21153u, 32u)], -1i), -(global2[_wgslsmith_index_u32(0u, 32u)] & global2[_wgslsmith_index_u32(4294967295u, 32u)])));
}

