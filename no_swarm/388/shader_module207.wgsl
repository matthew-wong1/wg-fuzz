struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<u32>(136192u, 12705u, 0u, 23315u), -1i);

var<private> global1: array<bool, 12>;

var<private> global2: array<vec4<f32>, 11>;

var<private> global3: Struct_1 = Struct_1(vec4<u32>(0u, 1u, 0u, 1u), 1i);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> i32 {
    global3 = Struct_1(~vec4<u32>(min(global0.a.x, 50011u) | global3.a.x, 1u, 14140u, global0.a.x), 1i);
    let var_0 = ~vec2<i32>(global0.b, -(i32(-1i) * -1945i));
    global3 = arg_0;
    global0 = arg_0;
    var var_1 = firstLeadingBit(var_0);
    return var_1.x;
}

fn func_2(arg_0: vec3<u32>) -> i32 {
    global0 = Struct_1(vec4<u32>(89913u, 15757u, 4294967295u, _wgslsmith_add_u32(~4294967295u, global0.a.x)), global3.b & min(1i, 1i));
    let var_0 = global0.a;
    let var_1 = false;
    var var_2 = Struct_1(global0.a, u_input.b);
    let var_3 = -_wgslsmith_dot_vec4_i32(vec4<i32>(0i, global3.b | func_3(Struct_1(vec4<u32>(21542u, 47058u, arg_0.x, 78066u), 17687i), -1000f), firstTrailingBit(~0i), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.b, global3.b, -33101i, -1i), vec4<i32>(-41635i, global3.b, -19632i, u_input.b)), -62456i)), min(vec4<i32>(var_2.b, -1i, -13153i, global3.b), -vec4<i32>(-1i, u_input.c, var_2.b, var_2.b)) | _wgslsmith_mod_vec4_i32(abs(vec4<i32>(17344i, global3.b, 1i, 2147483647i)), -vec4<i32>(var_2.b, global3.b, -2147483647i, global0.b)));
    return countOneBits(-(max(1884i, var_3) | (func_3(Struct_1(vec4<u32>(75643u, 60845u, 4294967295u, global3.a.x), 14370i), -1425f) << (~1256u % 32u))));
}

fn func_1() -> vec3<bool> {
    let var_0 = Struct_1(_wgslsmith_clamp_vec4_u32(global0.a, vec4<u32>((47838u >> (0u % 32u)) & global0.a.x, global0.a.x, global3.a.x, ~global0.a.x), ~(~vec4<u32>(global0.a.x, global0.a.x, u_input.a, global3.a.x))), ~(func_2(global0.a.yxw) >> (min(1u, global3.a.x) % 32u)));
    return select(!select(!vec3<bool>(global1[_wgslsmith_index_u32(global3.a.x, 12u)], true, true), select(vec3<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 12u)], true), !vec3<bool>(global1[_wgslsmith_index_u32(43735u, 12u)], false, false), true), vec3<bool>(true, true, true)), !(!(!vec3<bool>(global1[_wgslsmith_index_u32(global0.a.x, 12u)], false, false))), !select(select(vec3<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 12u)], true), !vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 12u)], global1[_wgslsmith_index_u32(var_0.a.x, 12u)], false), !vec3<bool>(false, global1[_wgslsmith_index_u32(67823u, 12u)], global1[_wgslsmith_index_u32(13675u, 12u)])), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 12u)], all(vec3<bool>(global1[_wgslsmith_index_u32(0u, 12u)], global1[_wgslsmith_index_u32(var_0.a.x, 12u)], true)), global1[_wgslsmith_index_u32(1u, 12u)]), any(vec4<bool>(true, global1[_wgslsmith_index_u32(49737u, 12u)], true, false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 12u)], !global1[_wgslsmith_index_u32(min(_wgslsmith_dot_vec3_u32(global3.a.yzz, global3.a.zyw), _wgslsmith_dot_vec3_u32(vec3<u32>(global3.a.x, 4294967295u, 0u), vec3<u32>(global0.a.x, 41576u, 39447u))), 12u)], global1[_wgslsmith_index_u32(max(global0.a.x, global3.a.x), 12u)]), select(vec3<bool>(all(vec4<bool>(global1[_wgslsmith_index_u32(5834u, 12u)], false, false, true)), any(vec2<bool>(true, true)), true & (global1[_wgslsmith_index_u32(u_input.a, 12u)] && false)), vec3<bool>(true, global1[_wgslsmith_index_u32(global0.a.x, 12u)], select(true, global1[_wgslsmith_index_u32(abs(4294967295u), 12u)], false)), ~global0.a.x < _wgslsmith_mod_u32(u_input.a & u_input.a, ~65461u)), func_1());
    var var_1 = 22614u;
    var var_2 = max(max(countOneBits(_wgslsmith_add_vec2_i32(vec2<i32>(8690i, 1i), vec2<i32>(0i, global3.b))), select(firstLeadingBit(vec2<i32>(global3.b, u_input.c)), firstLeadingBit(vec2<i32>(-2147483647i, global3.b)), false)) ^ reverseBits(select(vec2<i32>(-2147483647i, -8096i), vec2<i32>(global0.b, u_input.c), true)), _wgslsmith_mult_vec2_i32(vec2<i32>(~_wgslsmith_mult_i32(2147483647i, 1i), global0.b), abs(vec2<i32>(-1i) * -vec2<i32>(100284i, 2147483647i))));
    var var_3 = countOneBits(vec3<i32>(-func_2(vec3<u32>(1u, global0.a.x, global3.a.x)), reverseBits(1i), global0.b) ^ _wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(-2147483647i, global0.b, -1i)) >> (global3.a.xxy % vec3<u32>(32u)), ~vec3<i32>(2147483647i, global0.b, -1i)));
    let var_4 = vec4<i32>(~(-36889i), -global3.b, _wgslsmith_add_i32(_wgslsmith_clamp_i32(~global3.b, min(-7020i, global0.b), _wgslsmith_sub_i32(var_3.x, global0.b)), abs(var_3.x)) ^ func_2(global0.a.zwx), global0.b);
    var_2 = var_3.xx;
    var var_5 = vec4<i32>(1i, -21547i, 810i, -firstTrailingBit(-720i));
    var var_6 = all(!var_0.zz);
    let var_7 = ~global3.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(1416f, -342f), _wgslsmith_f_op_f32(f32(-1f) * -1661f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-544f, -434f)) * 495f), 1164f)));
}

