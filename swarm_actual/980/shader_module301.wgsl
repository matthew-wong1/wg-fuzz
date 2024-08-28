struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: u32,
    d: Struct_2,
    e: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 14>;

var<private> global1: Struct_1 = Struct_1(vec3<i32>(-51568i, 30537i, -4826i), vec2<i32>(1i, 18383i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: f32, arg_3: u32) -> bool {
    let var_0 = Struct_4(Struct_1(_wgslsmith_clamp_vec3_i32(select(vec3<i32>(1i, -1i, -29127i), min(global1.a, global1.a), any(vec3<bool>(true, false, false))), -vec3<i32>(global1.a.x, global1.a.x, -32220i) | countOneBits(vec3<i32>(global1.b.x, global0[_wgslsmith_index_u32(u_input.a.x, 14u)], 1i)), min(global1.a, min(global1.a, global1.a))), _wgslsmith_add_vec2_i32(min(vec2<i32>(global1.b.x, global0[_wgslsmith_index_u32(u_input.a.x, 14u)]), vec2<i32>(0i, global0[_wgslsmith_index_u32(1u, 14u)])), firstLeadingBit(global1.a.xx)) ^ (global1.b >> (vec2<u32>(u_input.a.x, 4294967295u) % vec2<u32>(32u)))));
    return true;
}

fn func_2() -> Struct_3 {
    var var_0 = !vec4<bool>(true, func_3(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, 1283f, -1000f, -331f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(912f, 1858f, -552f, 398f))), vec4<bool>(true, true, true, true))), Struct_2(vec2<u32>(4294967295u, u_input.a.x), _wgslsmith_add_u32(u_input.a.x, 59231u)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_sub_u32(u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 73600u), vec4<u32>(u_input.a.x, 12970u, u_input.a.x, 3753u)))), all(vec3<bool>(true, true, true)), all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)), true)));
    let var_1 = Struct_4(Struct_1(-(vec3<i32>(0i, global0[_wgslsmith_index_u32(3218u, 14u)], global1.b.x) ^ firstLeadingBit(vec3<i32>(global1.a.x, global0[_wgslsmith_index_u32(4294967295u, 14u)], -31365i))), vec2<i32>(-503i, -global0[_wgslsmith_index_u32(countOneBits(u_input.a.x), 14u)])));
    global1 = var_1.a;
    var var_2 = -617f;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-536f, _wgslsmith_f_op_f32(-1f)))));
    return Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3, _wgslsmith_f_op_f32(max(738f, 789f)), var_3)) + vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(519f - 1480f), 1f)), _wgslsmith_f_op_f32(abs(var_3)), _wgslsmith_f_op_f32(max(502f, _wgslsmith_div_f32(-1277f, var_3))))), select(var_0.xxx, !var_0.zxy, !(all(var_0.wzw) != select(true, var_0.x, var_0.x))), ~abs(u_input.a.x), Struct_2(u_input.a.zw, u_input.a.x), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3, -718f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_3 + var_3)))))));
}

fn func_1() -> vec3<i32> {
    var var_0 = select(u_input.a.xxx, u_input.a.yyw, vec3<bool>(false, any(vec2<bool>(true, true)), false));
    let var_1 = -global1.a.yy;
    var_0 = vec3<u32>(109517u, ~53016u, _wgslsmith_div_u32(reverseBits(var_0.x), _wgslsmith_dot_vec2_u32(abs(~var_0.xx), var_0.zy << (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u)))));
    var var_2 = func_2();
    let var_3 = -global1.a;
    return countOneBits(vec3<i32>(~(_wgslsmith_clamp_i32(var_1.x, var_3.x, var_1.x) & global1.a.x), _wgslsmith_div_i32(global0[_wgslsmith_index_u32(1u, 14u)], 2147483647i), -10544i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 14>();
    let var_0 = u_input.a;
    global1 = Struct_1(abs(vec3<i32>(global0[_wgslsmith_index_u32(12429u, 14u)] & global1.b.x, 0i, -28344i) & _wgslsmith_sub_vec3_i32(func_1(), _wgslsmith_div_vec3_i32(global1.a, global1.a))), ~abs(~global1.a.zx));
    global1 = Struct_1(-((_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, global1.a.x, global0[_wgslsmith_index_u32(var_0.x, 14u)]), global1.a) & ~global1.a) & ((vec3<i32>(23428i, global1.a.x, -1i) & global1.a) << (~vec3<u32>(4294967295u, 0u, 1u) % vec3<u32>(32u)))), reverseBits(vec2<i32>(global1.b.x, -45386i)));
    global0 = array<i32, 14>();
    global1 = Struct_1(~(~global1.a), _wgslsmith_add_vec2_i32(abs(countOneBits(global1.b)), ~global1.a.xz));
    let var_1 = vec3<u32>(u_input.a.x, 1u, _wgslsmith_div_u32(80071u, func_2().c));
    let var_2 = false | (var_0.x != 4294967295u);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1972f, -213f, -2360f, 244f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(574f, 1795f, 365f, 1000f) - vec4<f32>(907f, 162f, -1159f, -1254f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-4135f, 1000f, -717f, 1018f))))), select(select(vec4<bool>(var_2, var_2, var_2, var_2), select(vec4<bool>(var_2, var_2, false, var_2), vec4<bool>(true, var_2, var_2, false), true), !vec4<bool>(var_2, false, var_2, false)), !vec4<bool>(true, false, false, var_2), vec4<bool>(var_2, true, true, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(var_1.x, 14u)]);
}

