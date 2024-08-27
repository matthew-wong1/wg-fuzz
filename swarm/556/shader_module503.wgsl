struct Struct_1 {
    a: vec2<i32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, true, false);

var<private> global1: array<vec2<u32>, 23>;

var<private> global2: Struct_1;

var<private> global3: vec3<i32>;

var<private> global4: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec2<i32>(-27726i, -24531i), false), Struct_1(vec2<i32>(-1i, 0i), false), Struct_1(vec2<i32>(2147483647i, -8157i), true), Struct_1(vec2<i32>(30786i, -1i), true), Struct_1(vec2<i32>(9520i, 0i), true), Struct_1(vec2<i32>(i32(-2147483648), 22280i), false), Struct_1(vec2<i32>(-7742i, i32(-2147483648)), false), Struct_1(vec2<i32>(-18426i, i32(-2147483648)), true), Struct_1(vec2<i32>(9571i, -11493i), true), Struct_1(vec2<i32>(46634i, -41637i), false), Struct_1(vec2<i32>(-31367i, i32(-2147483648)), false), Struct_1(vec2<i32>(1i, 51231i), false), Struct_1(vec2<i32>(2147483647i, 16094i), true), Struct_1(vec2<i32>(0i, 19696i), false), Struct_1(vec2<i32>(-42557i, 46656i), true), Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), true), Struct_1(vec2<i32>(1i, -21836i), true), Struct_1(vec2<i32>(2147483647i, 0i), false), Struct_1(vec2<i32>(2147483647i, 14437i), false), Struct_1(vec2<i32>(-70057i, i32(-2147483648)), true), Struct_1(vec2<i32>(-39761i, 5130i), false), Struct_1(vec2<i32>(0i, -14444i), false), Struct_1(vec2<i32>(2147483647i, -34965i), false), Struct_1(vec2<i32>(0i, -7690i), true), Struct_1(vec2<i32>(16213i, 0i), false), Struct_1(vec2<i32>(-36720i, 2147483647i), true), Struct_1(vec2<i32>(1i, i32(-2147483648)), true), Struct_1(vec2<i32>(-1i, -74780i), false), Struct_1(vec2<i32>(0i, i32(-2147483648)), false));

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = global2.b;
    var var_1 = ~(~(-min(firstLeadingBit(vec3<i32>(-5706i, global3.x, 10454i)), vec3<i32>(global3.x, -1i, global3.x))));
    let var_2 = Struct_1(_wgslsmith_add_vec2_i32(abs(var_1.xz), var_1.yx), true);
    let var_3 = var_2;
    var_1 = ~_wgslsmith_add_vec3_i32(vec3<i32>(-36311i, var_2.a.x, firstLeadingBit(12971i)) & -countOneBits(vec3<i32>(-53347i, -2147483647i, 23377i)), -(~vec3<i32>(-1i, global3.x, -49774i)));
    return _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(firstTrailingBit(u_input.b), ~abs(u_input.b)), vec2<u32>(130u, ~firstLeadingBit(6153u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, 0u) | max(vec2<u32>(u_input.b, 0u), global1[_wgslsmith_index_u32(u_input.b, 23u)]), vec2<u32>(55489u ^ u_input.b, _wgslsmith_mult_u32(36126u, 1u)), ~(~global1[_wgslsmith_index_u32(76006u, 23u)]))), reverseBits(~select(vec2<u32>(39804u, 23403u), vec2<u32>(u_input.a, 65960u), vec2<bool>(false, true))) & ~_wgslsmith_mod_vec2_u32(global1[_wgslsmith_index_u32(countOneBits(5000u), 23u)], ~vec2<u32>(4294967295u, 1u)));
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: f32) -> vec2<i32> {
    var var_0 = global4[_wgslsmith_index_u32(~func_3(), 29u)];
    let var_1 = 0u;
    var var_2 = Struct_1(firstLeadingBit(vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.x, 0i, var_0.a.x), vec3<i32>(global2.a.x, -1i, -91901i)), _wgslsmith_sub_i32(-25924i, global2.a.x)), global3.x)), arg_0);
    var var_3 = vec4<bool>(!(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_1, 4294967295u), vec3<u32>(arg_1, 79971u, 4294967295u)), arg_1) != ~1u), var_0.b, !(!any(!vec3<bool>(true, arg_0, global0.x))), global0.x);
    let var_4 = Struct_1(vec2<i32>(4894i, global3.x), !select(!var_0.b, 8602u != var_1, false) || all(!global0.wxw));
    return abs(global3.xy);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_div_i32(16873i, _wgslsmith_div_i32(_wgslsmith_add_i32(~global3.x, i32(-1i) * -global2.a.x), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(0i, 1i, 21601i), vec3<i32>(103018i, 10819i, -1i)) | -vec3<i32>(global2.a.x, 63030i, -21222i), vec3<i32>(-1i) * -vec3<i32>(1i, -15867i, arg_0.a.x))));
    var var_1 = global2.b && global0.x;
    global1 = array<vec2<u32>, 23>();
    var var_2 = arg_1.x;
    let var_3 = Struct_1(func_2(global0.x, _wgslsmith_sub_u32(4294967295u | select(42956u, 45558u, arg_0.b), u_input.b), arg_1.x), any(vec3<bool>(all(vec3<bool>(true, true, true)), true, global2.b)));
    return Struct_1(vec2<i32>(0i, -func_2(any(global0.xy), u_input.b, _wgslsmith_f_op_f32(arg_1.x * 138f)).x), !any(vec2<bool>(true, false)));
}

fn func_4(arg_0: vec2<i32>, arg_1: bool, arg_2: Struct_1, arg_3: vec2<bool>) -> u32 {
    var var_0 = ~(~_wgslsmith_dot_vec3_u32(~(~vec3<u32>(40135u, 1u, 0u)), ~(~vec3<u32>(u_input.b, u_input.b, 0u))));
    var var_1 = firstTrailingBit(u_input.a);
    var var_2 = any(!select(select(vec4<bool>(true, false, false, arg_3.x), select(vec4<bool>(arg_2.b, arg_3.x, global0.x, true), vec4<bool>(global2.b, global2.b, arg_2.b, true), vec4<bool>(false, false, false, global2.b)), true | global2.b), !vec4<bool>(arg_1, arg_1, global2.b, arg_1), !select(vec4<bool>(arg_3.x, global0.x, true, true), vec4<bool>(arg_3.x, true, false, arg_3.x), arg_2.b)));
    global0 = !vec4<bool>(false, true, arg_2.b, !any(select(vec3<bool>(true, global0.x, false), vec3<bool>(arg_2.b, false, arg_1), false)));
    let var_3 = _wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.a, u_input.a), u_input.b) != u_input.b;
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -917f;
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(func_4(~vec2<i32>(global2.a.x, 1i), 1u == u_input.b, func_1(Struct_1(vec2<i32>(global3.x, global2.a.x), global0.x), vec4<f32>(-1184f, 1049f, 896f, 483f), 12184i, Struct_1(vec2<i32>(30683i, global2.a.x), false)), !global0.wx), max(u_input.b, 0u ^ u_input.a), 26439u), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f - 504f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -763f))), _wgslsmith_f_op_f32(f32(-1f) * -1552f), 1076f))), 2147483647i, _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(~(-1i), _wgslsmith_div_i32(-2147483647i, global2.a.x), 0i), -(vec3<i32>(global2.a.x, global3.x, global3.x) | vec3<i32>(global3.x, -33668i, global2.a.x))), vec3<i32>(~global2.a.x | min(global2.a.x, global3.x), global3.x, ~(~global3.x))));
}

