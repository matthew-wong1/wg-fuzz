struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: i32 = -7248i;

var<private> global2: Struct_1 = Struct_1(vec2<bool>(true, true), 31840u, false);

var<private> global3: array<i32, 18>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: vec3<u32>) -> bool {
    var var_0 = -(_wgslsmith_div_vec2_i32(vec2<i32>(-39424i, i32(-1i) * -24266i), vec2<i32>(-1i, firstLeadingBit(global3[_wgslsmith_index_u32(4294967295u, 18u)]))) & u_input.c.xy);
    global3 = array<i32, 18>();
    return false;
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec2<u32>) -> u32 {
    let var_0 = 1u;
    let var_1 = arg_0;
    let var_2 = var_1;
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1493f, -180f, -2243f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1654f, -104f, -249f), vec3<f32>(1000f, 846f, 351f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-792f, -196f, 1916f))), vec3<f32>(180f, _wgslsmith_f_op_f32(ceil(867f)), -1289f), !(!vec3<bool>(var_2.c, true, var_1.c)))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-220f, -515f, -1407f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1144f, -1441f, -170f))))));
    var var_4 = Struct_1(vec2<bool>(arg_0.c, var_2.a.x), 37038u, func_1(_wgslsmith_clamp_vec3_u32(~countOneBits(vec3<u32>(0u, 1u, var_2.b)), vec3<u32>(~22046u, 3679u, ~4294967295u), global0.yyy)));
    return select(1u, global0.x, !(!(arg_0.a.x && !arg_0.a.x)));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global0 = vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.b, 1u, _wgslsmith_sub_u32(72502u, global2.b), arg_0.b), vec4<u32>(global0.x, 21396u, abs(arg_0.b), _wgslsmith_mult_u32(global0.x, 22934u))) | ~(~(global0.x | 4294967295u)), 0u, ~(~_wgslsmith_sub_u32(~47163u, 30471u)), max(func_3(arg_0, u_input.a, vec2<u32>(43194u, global2.b)), arg_0.b));
    var var_0 = vec2<u32>(global0.x & arg_0.b, arg_0.b);
    let var_1 = arg_0;
    global3 = array<i32, 18>();
    let var_2 = any(!vec2<bool>(global2.a.x, all(!vec4<bool>(false, arg_0.a.x, true, false))));
    return Struct_1(arg_0.a, 4294967295u, func_1(global0.ywy));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    global1 = global3[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec4_u32(firstTrailingBit(countOneBits(~vec4<u32>(0u, 82916u, global0.x, 4294967295u))), _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(26680u, 76422u, 53775u, 4294967295u), select(vec4<u32>(global0.x, 20597u, global0.x, 17215u), vec4<u32>(0u, 27913u, 381u, 0u), vec4<bool>(true, global2.c, true, false)), vec4<u32>(global2.b, 4294967295u, 3853u, 106681u)), reverseBits(~vec4<u32>(global2.b, global2.b, 39632u, global0.x))))), 18u)];
    global2 = func_2(Struct_1(vec2<bool>(true, global2.c), global0.x, func_1(~vec3<u32>(global0.x, 0u, 1u))));
    var_0 = !(!any(select(vec3<bool>(global2.c, false, false), !vec3<bool>(true, global2.a.x, true), false)));
    let x = u_input.a;
    s_output = StorageBuffer(min(~(_wgslsmith_mod_vec2_i32(u_input.a.xx, u_input.a.zy) << (global0.wy % vec2<u32>(32u))), vec2<i32>(firstTrailingBit(-u_input.a.x), u_input.b)), _wgslsmith_div_u32(4294967295u, ~(~(~108449u))), global0.zz, vec4<u32>(global2.b, _wgslsmith_clamp_u32(~1u, max(57483u, select(global0.x, global0.x, true)), firstTrailingBit(1u)), _wgslsmith_sub_u32(global0.x, global2.b), ~(~reverseBits(1u))));
}

