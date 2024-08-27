struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-382i, -1i, 6895i, i32(-2147483648));

var<private> global1: i32;

var<private> global2: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(Struct_1(35796u, true), 1270f), Struct_2(Struct_1(15943u, true), -337f), Struct_2(Struct_1(4294967295u, true), 591f), Struct_2(Struct_1(35329u, true), 533f), Struct_2(Struct_1(61283u, false), -981f), Struct_2(Struct_1(7599u, true), -343f), Struct_2(Struct_1(4294967295u, true), 506f), Struct_2(Struct_1(29188u, false), 689f), Struct_2(Struct_1(4294967295u, false), -231f), Struct_2(Struct_1(80885u, true), 936f), Struct_2(Struct_1(34175u, false), -942f), Struct_2(Struct_1(80394u, false), 560f), Struct_2(Struct_1(4294967295u, true), -1119f), Struct_2(Struct_1(2925u, true), 229f));

var<private> global3: array<u32, 29> = array<u32, 29>(1u, 60520u, 0u, 21966u, 0u, 123443u, 93003u, 30148u, 4294967295u, 54946u, 0u, 4294967295u, 1u, 1u, 1u, 4294967295u, 0u, 4294967295u, 27234u, 0u, 7198u, 17480u, 36949u, 30960u, 4294967295u, 74128u, 1u, 46519u, 0u);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec4<u32>, arg_3: vec2<i32>) -> vec3<f32> {
    var var_0 = ~(_wgslsmith_clamp_vec2_u32(vec2<u32>(~arg_2.x, 2047u), ~vec2<u32>(global3[_wgslsmith_index_u32(arg_2.x, 29u)], 1u), vec2<u32>(~0u, 1u)) | select(_wgslsmith_clamp_vec2_u32(u_input.b, abs(arg_2.zw), vec2<u32>(arg_2.x, 118181u)), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_2.x, arg_2.x), ~vec2<u32>(arg_2.x, 0u)), true));
    let var_1 = vec3<i32>((reverseBits(_wgslsmith_dot_vec4_i32(arg_1, vec4<i32>(46970i, global0.x, -54093i, global0.x))) & _wgslsmith_dot_vec2_i32(abs(vec2<i32>(arg_3.x, arg_1.x)), ~vec2<i32>(-2147483647i, 12735i))) << (~42998u % 32u), -global0.x, abs(~_wgslsmith_dot_vec3_i32(-global0.zxy, firstTrailingBit(global0.yzw))));
    global3 = array<u32, 29>();
    global3 = array<u32, 29>();
    let var_2 = !vec2<bool>(!arg_0.b, arg_0.b);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, -1483f, -960f), vec3<f32>(189f, 1000f, 1088f))))))));
}

fn func_2(arg_0: Struct_3, arg_1: i32) -> Struct_2 {
    global2 = array<Struct_2, 14>();
    global0 = -firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(global0.x, 1i, arg_1, -31571i) ^ vec4<i32>(-2147483647i, 2147483647i, -806i, 2147483647i), vec4<i32>(72635i, -2147483647i, 40153i, 38961i)) >> (~(~vec4<u32>(global3[_wgslsmith_index_u32(67603u, 29u)], arg_0.c.a.a, 0u, 44380u)) % vec4<u32>(32u)));
    var var_0 = arg_0;
    let var_1 = !(75489u != _wgslsmith_div_u32(max(1u, var_0.c.a.a), var_0.a.a));
    let var_2 = 57674u;
    return Struct_2(var_0.a, arg_0.b);
}

fn func_3(arg_0: vec3<f32>, arg_1: f32, arg_2: i32, arg_3: Struct_2) -> bool {
    global3 = array<u32, 29>();
    var var_0 = ~max(_wgslsmith_mult_vec2_i32(vec2<i32>(-1903i, i32(-1i) * -21928i), _wgslsmith_div_vec2_i32(global0.zy, -global0.zz)), global0.zx);
    global2 = array<Struct_2, 14>();
    var var_1 = Struct_3(arg_3.a, _wgslsmith_f_op_f32(arg_3.b - arg_0.x), arg_3, arg_1, !arg_3.a.b);
    global0 = min(max(~select(vec4<i32>(var_0.x, arg_2, 0i, 24243i) ^ vec4<i32>(global0.x, -85851i, 1i, 0i), select(vec4<i32>(-8723i, global0.x, global0.x, -25013i), vec4<i32>(arg_2, global0.x, -21044i, -25087i), vec4<bool>(false, false, var_1.c.a.b, arg_3.a.b)), !vec4<bool>(false, var_1.e, arg_3.a.b, true)), countOneBits(select(min(vec4<i32>(-2147483647i, var_0.x, -2147483647i, -1i), vec4<i32>(global0.x, 2147483647i, arg_2, global0.x)), vec4<i32>(arg_2, global0.x, arg_2, global0.x), true))), abs(-vec4<i32>(25309i | global0.x, 0i, ~14795i, global0.x << (u_input.b.x % 32u))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(!vec4<bool>(select(true, false, false), select(false, false, false), true, all(vec3<bool>(false, false, true))), !vec4<bool>(true, true, any(vec3<bool>(false, false, false)), true), vec4<bool>(all(vec4<bool>(false, true, false, false)), false, all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false)), all(vec2<bool>(true, true)))), vec4<bool>(true, any(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), true)), !all(vec2<bool>(true, true)), select(func_3(_wgslsmith_f_op_vec3_f32(func_1(Struct_1(69468u, true), vec4<i32>(48222i, global0.x, global0.x, global0.x), vec4<u32>(global3[_wgslsmith_index_u32(u_input.a, 29u)], 1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(96223u, 29u)], 29u)], u_input.a), global0.wz)), 316f, _wgslsmith_div_i32(-9606i, 12103i), func_2(Struct_3(Struct_1(global3[_wgslsmith_index_u32(0u, 29u)], false), -2583f, Struct_2(Struct_1(54039u, false), 2185f), 1000f, false), 2147483647i)), true, true)), !vec4<bool>(true, true, !(1u > u_input.a), !any(vec2<bool>(true, true))));
    let var_1 = 37039i;
    global3 = array<u32, 29>();
    global3 = array<u32, 29>();
    global3 = array<u32, 29>();
    global1 = ~64204i;
    global1 = -2599i;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(global0.x, i32(-1i) * -global0.x, abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-50460i, var_1, 0i), global0.yyz)), 0i), _wgslsmith_div_i32(abs(var_1), -1i << (1u % 32u)), _wgslsmith_mult_i32(var_1, i32(-1i) * -1i));
}

