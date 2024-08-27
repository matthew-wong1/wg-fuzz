struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 31>;

var<private> global1: array<bool, 23>;

var<private> global2: array<f32, 15> = array<f32, 15>(-2275f, -221f, -815f, 1234f, -833f, 727f, -904f, -1687f, 540f, -1092f, 407f, 1000f, -370f, -908f, 1235f);

var<private> global3: vec4<u32> = vec4<u32>(4294967295u, 19215u, 46634u, 4294967295u);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(-1000f);
    let var_1 = arg_2;
    global0 = array<vec4<f32>, 31>();
    global0 = array<vec4<f32>, 31>();
    var var_2 = arg_2;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-794f, 188f))) * _wgslsmith_f_op_f32(floor(-196f)))));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: vec3<u32>) -> Struct_1 {
    var var_0 = vec2<bool>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(arg_2.a, arg_0.a)))))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2.a), 796f)) - arg_2.a), select(global1[_wgslsmith_index_u32(u_input.b.x, 23u)], global1[_wgslsmith_index_u32(global3.x, 23u)], true));
    var var_1 = abs(vec2<i32>(5567i, _wgslsmith_div_i32(-2147483647i, arg_1 << (75042u % 32u))));
    var var_2 = select(vec3<bool>(select(arg_3.x <= _wgslsmith_mult_u32(u_input.a.x, arg_3.x), !all(vec4<bool>(true, true, var_0.x, false)), true), true, select(true, -606f >= _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 15u)] - global2[_wgslsmith_index_u32(0u, 15u)]), true)), !select(vec3<bool>(arg_0.a <= -792f, !global1[_wgslsmith_index_u32(46301u, 23u)], false), vec3<bool>(all(vec3<bool>(global1[_wgslsmith_index_u32(arg_3.x, 23u)], false, var_0.x)), true, all(vec2<bool>(false, false))), (1034f == arg_2.a) || false), any(!(!vec4<bool>(global1[_wgslsmith_index_u32(arg_3.x, 23u)], false, true, global1[_wgslsmith_index_u32(u_input.b.x, 23u)]))));
    global0 = array<vec4<f32>, 31>();
    var var_3 = select(select(!select(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 23u)], false, var_2.x), !vec3<bool>(var_0.x, var_2.x, global1[_wgslsmith_index_u32(0u, 23u)]), !vec3<bool>(var_0.x, var_2.x, true)), select(select(select(vec3<bool>(global1[_wgslsmith_index_u32(31580u, 23u)], true, var_0.x), vec3<bool>(var_2.x, var_2.x, var_2.x), global1[_wgslsmith_index_u32(global3.x, 23u)]), select(vec3<bool>(false, var_2.x, false), vec3<bool>(var_0.x, true, false), vec3<bool>(var_2.x, true, true)), true), vec3<bool>(all(vec4<bool>(var_0.x, var_0.x, global1[_wgslsmith_index_u32(65623u, 23u)], true)), false, false), vec3<bool>(true, true, true)), select(false, var_0.x & var_0.x, true) | !(arg_0.a == arg_0.a)), select(!vec3<bool>(all(vec4<bool>(global1[_wgslsmith_index_u32(arg_3.x, 23u)], true, false, false)), 9342u < global3.x, all(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 23u)], true, false))), vec3<bool>(true, any(!vec2<bool>(var_0.x, true)), global1[_wgslsmith_index_u32(~arg_3.x, 23u)]), select(!(!vec3<bool>(var_0.x, var_2.x, global1[_wgslsmith_index_u32(u_input.b.x, 23u)])), !(!vec3<bool>(true, true, var_2.x)), vec3<bool>(arg_3.x >= 4294967295u, var_2.x, global1[_wgslsmith_index_u32(4294967295u, 23u)] || var_0.x))), false);
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(arg_3.x, 15u)] + 1f)));
}

fn func_1(arg_0: vec2<i32>, arg_1: i32) -> Struct_1 {
    global3 = ~firstLeadingBit(vec4<u32>(13984u, ~(~0u), u_input.a.x, _wgslsmith_mult_u32(23248u, global3.x)));
    let var_0 = func_3(func_2(global3.zyz, u_input.b.x, Struct_1(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global3.x | 47634u, u_input.b.x), 15u)])), 1i, Struct_1(global2[_wgslsmith_index_u32(~global3.x, 15u)]), firstLeadingBit(max(select(countOneBits(u_input.b.xwy), global3.wyy, !global1[_wgslsmith_index_u32(4294967295u, 23u)]), u_input.b.zyx)));
    global3 = reverseBits(vec4<u32>(global3.x, 0u, ~(~countOneBits(global3.x)), ~u_input.a.x));
    var var_1 = 30174i;
    var var_2 = func_3(func_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, 1726f)))), -996i ^ -_wgslsmith_dot_vec2_i32(arg_0, vec2<i32>(arg_0.x, arg_0.x)), Struct_1(-1309f), select(firstLeadingBit(u_input.b.zyw), u_input.b.yyy, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, global3.x | global3.x), 23u)])), abs(~(~min(arg_1, 31778i))), var_0, _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(abs(vec3<u32>(u_input.b.x, 0u, u_input.b.x)), u_input.b.zyz), vec3<u32>(abs(u_input.b.x), 1u, 4294967295u)));
    return Struct_1(_wgslsmith_f_op_f32(-var_2.a));
}

fn func_4(arg_0: Struct_1) -> vec2<i32> {
    let var_0 = select(~max(global3.x >> (global3.x % 32u), 62132u), _wgslsmith_clamp_u32(~41867u >> (global3.x % 32u), 0u, global3.x), all(vec4<bool>(false, false, false, true))) ^ u_input.b.x;
    global1 = array<bool, 23>();
    var var_1 = 1u;
    global3 = ~select(u_input.b, _wgslsmith_clamp_vec4_u32(u_input.b, u_input.b, u_input.b), vec4<bool>(0u >= select(u_input.a.x, global3.x, global1[_wgslsmith_index_u32(4294967295u, 23u)]), false, (global1[_wgslsmith_index_u32(41511u, 23u)] | false) || global1[_wgslsmith_index_u32(var_0, 23u)], true));
    let var_2 = func_2(vec3<u32>(_wgslsmith_add_u32(~(u_input.a.x >> (15864u % 32u)), _wgslsmith_clamp_u32(u_input.a.x >> (var_0 % 32u), ~global3.x, var_0)), 28690u, _wgslsmith_mult_u32(abs(max(global3.x, var_0)), reverseBits(5284u) >> (0u % 32u))), ~_wgslsmith_mod_u32(~1u, global3.x), func_2(select(~firstLeadingBit(vec3<u32>(u_input.a.x, var_0, 16335u)), u_input.b.zwy, select(vec3<bool>(global1[_wgslsmith_index_u32(global3.x, 23u)], global1[_wgslsmith_index_u32(33291u, 23u)], global1[_wgslsmith_index_u32(u_input.a.x, 23u)]), select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 23u)], global1[_wgslsmith_index_u32(u_input.b.x, 23u)], false), vec3<bool>(true, false, true), global1[_wgslsmith_index_u32(11246u, 23u)]), !vec3<bool>(global1[_wgslsmith_index_u32(global3.x, 23u)], true, true))), var_0, arg_0));
    return select(select(max(vec2<i32>(min(0i, 1i), _wgslsmith_add_i32(17126i, -8195i)), _wgslsmith_add_vec2_i32(vec2<i32>(-50148i, -5243i), _wgslsmith_mod_vec2_i32(vec2<i32>(23626i, 2147483647i), vec2<i32>(-5126i, 2147483647i)))), vec2<i32>(-(i32(-1i) * -1306i), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(1i, 0i), firstLeadingBit(-2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(-1i, 2147483647i)))), !(!vec2<bool>(global1[_wgslsmith_index_u32(1u, 23u)], true))), ~(-select(-vec2<i32>(2147483647i, 0i), vec2<i32>(-1i, 2147483647i) >> (u_input.a % vec2<u32>(32u)), vec2<bool>(false, global1[_wgslsmith_index_u32(var_0, 23u)]))), _wgslsmith_f_op_f32(min(1000f, func_2(select(u_input.b.wyw, vec3<u32>(0u, 10445u, global3.x), true), u_input.b.x, func_1(vec2<i32>(-24004i, 0i), -1i)).a)) > _wgslsmith_f_op_f32(728f * _wgslsmith_f_op_f32(func_2(vec3<u32>(u_input.b.x, var_0, 0u), 4294967295u, Struct_1(global2[_wgslsmith_index_u32(global3.x, 15u)])).a + _wgslsmith_f_op_f32(-arg_0.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(vec2<i32>(1i, 1i), -abs(18265i)));
    var var_1 = vec4<i32>(-21761i, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(-1i, var_0.x), -(~vec2<i32>(var_0.x, var_0.x))), var_0.x), -1i, var_0.x);
    let var_2 = u_input.b.xzw;
    var_1 = ~vec4<i32>(var_1.x, firstLeadingBit(var_1.x), _wgslsmith_add_i32(firstTrailingBit(var_0.x), 38514i), ~_wgslsmith_clamp_i32(-var_0.x, var_1.x, i32(-1i) * -2147483647i));
    global0 = array<vec4<f32>, 31>();
    global0 = array<vec4<f32>, 31>();
    let var_3 = vec4<i32>(~var_0.x, _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(firstLeadingBit(var_1.wxx), var_1.wwx), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, -1i, var_0.x, var_1.x), _wgslsmith_sub_vec4_i32(vec4<i32>(-3968i, 38340i, -7066i, var_0.x), vec4<i32>(-2147483647i, var_1.x, 9125i, 1i))) & -(~1i), -2147483647i), abs(abs(var_1.x)), reverseBits(-_wgslsmith_mult_i32(-24966i, var_0.x) >> (_wgslsmith_sub_u32(5917u, var_2.x) % 32u)));
    let var_4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(37369u, 15u)] + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -288f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 15u)]))) - vec2<f32>(global2[_wgslsmith_index_u32(min(_wgslsmith_sub_u32(max(u_input.b.x, 4294967295u), 20162u), 19221u), 15u)], global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_2.x, 4294967295u), 15u)]));
    let x = u_input.a;
    s_output = StorageBuffer(select(firstLeadingBit(u_input.b), _wgslsmith_add_vec4_u32(~(~vec4<u32>(global3.x, var_2.x, global3.x, 4294967295u)), select(firstLeadingBit(u_input.b), vec4<u32>(0u, 4294967295u, 30543u, 0u), !vec4<bool>(true, false, global1[_wgslsmith_index_u32(global3.x, 23u)], global1[_wgslsmith_index_u32(4294967295u, 23u)]))), vec4<bool>(_wgslsmith_div_f32(-1807f, var_4.x) >= 479f, true, true || all(vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.b.x, 23u)], false)), global1[_wgslsmith_index_u32(abs(~var_2.x), 23u)])), ~global3.wwx);
}

