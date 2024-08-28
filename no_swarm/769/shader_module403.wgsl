struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(i32(-2147483648));

var<private> global1: bool = false;

var<private> global2: vec2<i32>;

var<private> global3: vec3<u32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: f32) -> bool {
    global0 = Struct_2(global0.a);
    global1 = false;
    global1 = !(!(!any(vec2<bool>(true, false))));
    global2 = vec2<i32>(min(0i, ~global2.x), global2.x);
    global0 = Struct_2(max(-global2.x, min(-select(-2147483647i, -12739i, true), global2.x)));
    return false;
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: bool, arg_3: Struct_1) -> u32 {
    var var_0 = _wgslsmith_dot_vec3_i32(countOneBits((~vec3<i32>(global0.a, -2147483647i, u_input.d.x) << (~u_input.a % vec3<u32>(32u))) ^ vec3<i32>(u_input.d.x, u_input.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-18184i, global2.x, arg_1.a, global0.a), vec4<i32>(-1i, 45733i, -2147483647i, u_input.c)))), ~(_wgslsmith_sub_vec3_i32(vec3<i32>(global0.a, u_input.c, -2147483647i), _wgslsmith_mult_vec3_i32(vec3<i32>(global2.x, global2.x, arg_1.a), vec3<i32>(u_input.c, 266i, u_input.c))) & reverseBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c, -1i, global0.a), vec3<i32>(0i, -705i, arg_1.a), vec3<i32>(global2.x, -21723i, 49045i)))));
    let var_1 = Struct_1(select(vec3<u32>(arg_3.a.x, ~(~57978u), global3.x), vec3<u32>(1u, ~40563u, 1u), select(vec3<bool>(arg_0, true, arg_2), !vec3<bool>(false, arg_0, true), false)), _wgslsmith_f_op_vec4_f32(ceil(arg_3.b)));
    global1 = any(vec2<bool>(all(vec2<bool>(true, true)), false));
    global1 = arg_2 && !(!(!arg_2));
    global0 = Struct_2(abs(0i));
    return ~66533u;
}

fn func_2(arg_0: i32) -> Struct_2 {
    var var_0 = _wgslsmith_sub_vec4_u32(firstTrailingBit(countOneBits(vec4<u32>(global3.x, 25143u, u_input.a.x, u_input.a.x)) ^ abs(vec4<u32>(u_input.a.x, 10680u, global3.x, 0u))), _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_div_u32(u_input.b, global3.x), ~u_input.b, global3.x, global3.x | 24829u), _wgslsmith_div_vec4_u32(vec4<u32>(0u, global3.x, u_input.a.x, 0u), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.b), vec4<u32>(1985u, 24479u, 1u, u_input.b), vec4<u32>(0u, u_input.b, global3.x, 0u))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(53662u, global3.x, 4294967295u, 35804u), vec4<u32>(0u, u_input.b, global3.x, u_input.b)))) << (~vec4<u32>(global3.x, u_input.b, max(_wgslsmith_add_u32(global3.x, global3.x), ~u_input.b), u_input.a.x) % vec4<u32>(32u));
    global0 = Struct_2(firstLeadingBit(~(-18386i)));
    global3 = max(vec3<u32>(55235u, 1u, abs(global3.x)), _wgslsmith_mod_vec3_u32(var_0.zyy >> (~firstLeadingBit(var_0.yxw) % vec3<u32>(32u)), vec3<u32>(var_0.x, 6104u, func_3(any(vec3<bool>(true, false, true)), Struct_2(-1i), any(vec2<bool>(true, true)), Struct_1(vec3<u32>(59635u, 21859u, var_0.x), vec4<f32>(-576f, -270f, 608f, -562f))))));
    global1 = !(!func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(647f)))));
    let var_1 = !select(select(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true), all(vec3<bool>(true, true, true))), !select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(true, true || all(vec4<bool>(false, true, false, false))));
    return Struct_2(2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(global0.a);
    var var_0 = Struct_2(abs(_wgslsmith_add_i32(-(global0.a >> (global3.x % 32u)), u_input.d.x)));
    var var_1 = !(!vec3<bool>(func_1(_wgslsmith_f_op_f32(ceil(-258f))), any(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true))), true));
    global1 = true;
    var_0 = func_2(i32(-1i) * -_wgslsmith_clamp_i32(~var_0.a, u_input.c, global2.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(vec3<i32>(-(0i | global0.a), -select(u_input.d.x, var_0.a, var_1.x), var_0.a), -select(vec3<i32>(global2.x, 2147483647i, 1i), -vec3<i32>(-15158i, -2147483647i, global0.a), !vec3<bool>(var_1.x, var_1.x, var_1.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(946f, 349f, 139f, 1647f) - vec4<f32>(1201f, -1245f, 1468f, -487f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-3433f, -1387f, -1846f, 2090f)))) * vec4<f32>(-453f, _wgslsmith_f_op_f32(select(-1213f, _wgslsmith_f_op_f32(f32(-1f) * -1224f), var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1394f * 1646f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-672f, 746f)), 521f, 16369i < var_0.a)))));
}

