struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-1i, 37529i, -41389i, i32(-2147483648));

var<private> global1: array<vec4<f32>, 13> = array<vec4<f32>, 13>(vec4<f32>(-241f, 125f, -676f, -484f), vec4<f32>(1378f, -607f, 855f, 1000f), vec4<f32>(593f, -1167f, 1296f, 761f), vec4<f32>(253f, -1780f, 207f, -136f), vec4<f32>(-1538f, -309f, 395f, 1036f), vec4<f32>(211f, 735f, 180f, -528f), vec4<f32>(437f, 1380f, 2304f, -928f), vec4<f32>(-830f, 1290f, 290f, -138f), vec4<f32>(-134f, 808f, -172f, 999f), vec4<f32>(603f, -1556f, -879f, -369f), vec4<f32>(686f, -1176f, -224f, -1000f), vec4<f32>(-1276f, -660f, 468f, 840f), vec4<f32>(-466f, 580f, -795f, 679f));

var<private> global2: array<Struct_1, 28>;

var<private> global3: Struct_2 = Struct_2(Struct_1(false, 476f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>) -> u32 {
    var var_0 = vec2<bool>(all(select(vec3<bool>(true, true, !arg_0.a), vec3<bool>(false, arg_0.a, !arg_0.a), select(select(vec3<bool>(global3.a.a, global3.a.a, true), vec3<bool>(true, true, global3.a.a), arg_0.a), vec3<bool>(global3.a.a, true, global3.a.a), vec3<bool>(true, arg_0.a, true)))), arg_0.a || arg_0.a);
    let var_1 = ~(~select(~(~vec4<u32>(38032u, 89772u, 0u, 30455u)), vec4<u32>(1u, 1u, 1u, 1u), all(!vec2<bool>(true, arg_0.a))));
    let var_2 = Struct_2(Struct_1(select(all(vec4<bool>(var_0.x, var_0.x, true, var_0.x)), true, false), _wgslsmith_f_op_f32(-arg_0.b)));
    let var_3 = Struct_1(var_0.x | any(select(!vec4<bool>(global3.a.a, true, arg_0.a, true), !vec4<bool>(true, true, false, arg_0.a), true)), arg_0.b);
    var_0 = vec2<bool>(false, var_2.a.a);
    return ~(~min(0u, _wgslsmith_clamp_u32(firstLeadingBit(4294967295u), var_1.x, select(31991u, 0u, global3.a.a))));
}

fn func_2(arg_0: f32) -> u32 {
    let var_0 = firstLeadingBit(vec3<u32>(0u, 1u, 29184u >> (func_3(global2[_wgslsmith_index_u32(1u, 28u)], vec4<i32>(-2147483647i, -2147483647i, -1i, global0.x)) % 32u))) ^ _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_div_u32(0u, 57897u), ~39334u, select(31975u, 55466u, global3.a.a)) | vec3<u32>(1u, 1u, 1u), ~max(vec3<u32>(24291u, 4294967295u, 28806u), ~vec3<u32>(4294967295u, 0u, 75837u)));
    var var_1 = Struct_2(global3.a);
    let var_2 = reverseBits(~func_3(Struct_1(true, _wgslsmith_f_op_f32(round(global3.a.b))), vec4<i32>(-1i) * -vec4<i32>(1i, global0.x, 3921i, global0.x)));
    let var_3 = global3.a;
    global0 = vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.a & (vec2<i32>(global0.x, u_input.a.x) & abs(vec2<i32>(u_input.a.x, global0.x))), firstTrailingBit(global0.yy)), u_input.a.x, _wgslsmith_clamp_i32(_wgslsmith_add_i32(min(-61062i, ~global0.x), abs(~(-6047i))), ~u_input.a.x, 1i), u_input.a.x);
    return ~4294967295u;
}

fn func_1(arg_0: vec4<bool>, arg_1: f32, arg_2: u32) -> u32 {
    global1 = array<vec4<f32>, 13>();
    let var_0 = arg_0;
    var var_1 = false;
    return reverseBits(~func_2(_wgslsmith_f_op_f32(-global3.a.b)));
}

fn func_4(arg_0: bool, arg_1: u32) -> u32 {
    global0 = -(vec4<i32>(-1i) * -vec4<i32>(max(u_input.a.x, u_input.a.x), ~1i, -49950i, ~global0.x));
    var var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(global3.a.b, _wgslsmith_div_f32(1f, global3.a.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global3.a.b)))));
    global0 = ~_wgslsmith_div_vec4_i32(-(vec4<i32>(0i, -8118i, u_input.a.x, global0.x) & _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, -1i, -2345i, global0.x), vec4<i32>(25300i, -40758i, u_input.a.x, global0.x), vec4<i32>(global0.x, -12366i, global0.x, global0.x))), firstLeadingBit(vec4<i32>(_wgslsmith_dot_vec2_i32(global0.zx, u_input.a), global0.x, -2147483647i, 7292i)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_0.x));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.b)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.b)), 187f)), _wgslsmith_f_op_f32(min(111f, -1291f)));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<f32>, 13>();
    global2 = array<Struct_1, 28>();
    var var_0 = vec2<u32>(~_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(max(vec2<u32>(0u, 125347u), vec2<u32>(4294967295u, 0u)), vec2<u32>(1u, 1u)), ~27662u), min(4294967295u, 4294967295u));
    var var_1 = ~vec4<u32>(var_0.x, ~(~(1u & var_0.x)), func_4(all(vec4<bool>(true, global3.a.a, false, false)), func_1(vec4<bool>(global3.a.a, true, global3.a.a, true), -1000f, 1u) >> (var_0.x % 32u)), ~1u);
    let var_2 = false;
    var_0 = _wgslsmith_mod_vec2_u32(var_1.yw, firstTrailingBit(~abs(max(vec2<u32>(var_0.x, 10141u), var_1.zx))));
    global3 = Struct_2(Struct_1(!(min(1u, var_1.x) <= var_1.x), global3.a.b));
    global1 = array<vec4<f32>, 13>();
    var var_3 = -854i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global3.a.b))));
}

