struct Struct_1 {
    a: i32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(2147483647i, -14089i, -1i);

var<private> global1: array<u32, 8> = array<u32, 8>(65385u, 5403u, 32778u, 1u, 4294967295u, 13772u, 0u, 2725u);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<f32>, arg_2: vec3<u32>) -> f32 {
    var var_0 = 18833u;
    let var_1 = true;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x));
    var_0 = arg_2.x;
    var var_3 = 1i;
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(arg_1.x - arg_1.x)) - -716f)));
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: vec2<f32>, arg_3: vec4<i32>) -> bool {
    var var_0 = Struct_2(select(vec2<bool>(_wgslsmith_f_op_f32(-arg_2.x) > arg_2.x, any(vec4<bool>(true, false, true, false)) | any(vec3<bool>(true, false, false))), select(vec2<bool>(true, all(vec3<bool>(false, false, false))), select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), true)), any(vec3<bool>(false, true, true))), true), ~u_input.b.wyy, _wgslsmith_clamp_vec3_u32(firstLeadingBit(~_wgslsmith_clamp_vec3_u32(u_input.b.wzy, u_input.b.zyx, u_input.b.zxy)), _wgslsmith_add_vec3_u32(reverseBits(u_input.b.www | u_input.b.zwx), vec3<u32>(10368u ^ arg_1, abs(1u), 1u)), vec3<u32>(u_input.a, u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.b.x), min(vec2<u32>(10293u, arg_1), vec2<u32>(global1[_wgslsmith_index_u32(arg_1, 8u)], arg_1))))));
    return all(vec4<bool>(select(select(all(vec4<bool>(false, var_0.a.x, true, false)), false, arg_2.x <= 716f), true, var_0.a.x), (true && var_0.a.x) | (!var_0.a.x & true), var_0.a.x, true));
}

fn func_2(arg_0: u32, arg_1: vec2<bool>) -> vec2<bool> {
    var var_0 = Struct_1(27213i, _wgslsmith_mult_vec2_u32(u_input.b.yx, ~(vec2<u32>(global1[_wgslsmith_index_u32(arg_0, 8u)], u_input.b.x) ^ ~u_input.b.yz)));
    global0 = ~vec3<i32>(-17247i, -56621i, 2147483647i);
    var var_1 = vec2<i32>(-1i) * -global0.zy;
    let var_2 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1498f, 149f) * vec3<f32>(-1186f, -451f, -921f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1485f, -1024f, 803f, -689f))), u_input.b.xxw & vec3<u32>(var_0.b.x, 47570u, 72374u))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-694f, -384f)) + _wgslsmith_f_op_f32(ceil(2170f)))), var_0.b.x & global1[_wgslsmith_index_u32(4294967295u, 8u)], _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-453f, -706f), vec2<f32>(1230f, 1007f))))), -vec4<i32>(var_0.a >> (0u % 32u), _wgslsmith_div_i32(1i, u_input.d), -60144i, _wgslsmith_dot_vec4_i32(vec4<i32>(36016i, 1i, 29351i, global0.x), vec4<i32>(global0.x, var_1.x, -2147483647i, 1i)))) & arg_1.x;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1f, 1f, 1f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -245f, -2448f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1499f, 1000f, 843f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1354f, -394f, -1577f)) - vec3<f32>(-661f, -350f, -487f)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-131f, -1237f, 124f), vec3<f32>(-1035f, -1460f, -1579f), select(vec3<bool>(var_2, var_2, arg_1.x), vec3<bool>(var_2, false, arg_1.x), vec3<bool>(arg_1.x, true, arg_1.x)))))));
    return arg_1;
}

fn func_1() -> vec3<i32> {
    var var_0 = -vec4<i32>(25317i, i32(-1i) * -48883i, min(-2147483647i, max(_wgslsmith_clamp_i32(global0.x, global0.x, -1i), _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, global0.x, global0.x, -2147483647i), vec4<i32>(u_input.d, -58148i, global0.x, u_input.c)))), u_input.c);
    var var_1 = Struct_2(func_2(~max(_wgslsmith_sub_u32(1u, 0u), ~80081u), vec2<bool>(all(vec2<bool>(true, true)), true)), u_input.b.yxy, firstLeadingBit(~vec3<u32>(u_input.b.x, global1[_wgslsmith_index_u32(17901u, 8u)] & global1[_wgslsmith_index_u32(34537u, 8u)], ~12258u)));
    return vec3<i32>(-1i) * -vec3<i32>(min(u_input.d, countOneBits(18795i)), -(i32(-1i) * -2147483647i), firstTrailingBit(_wgslsmith_add_i32(var_0.x, 1i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = countOneBits(-reverseBits(func_1())) | (vec3<i32>(_wgslsmith_mod_i32(-20450i, -u_input.d), 0i << (firstLeadingBit(2301u) % 32u), _wgslsmith_div_i32(u_input.c, global0.x ^ global0.x)) & vec3<i32>(func_1().x, ~(-u_input.c), _wgslsmith_mult_i32(-10671i, firstTrailingBit(-27576i))));
    global1 = array<u32, 8>();
    global1 = array<u32, 8>();
    let var_0 = all(vec2<bool>(false, !all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true))));
    var var_1 = global0.x;
    let var_2 = select(vec2<bool>(true, false), !func_2(u_input.b.x, vec2<bool>(var_0 | false, var_0)), select(true, any(vec2<bool>(var_0, var_0)), (var_0 | var_0) && true) & all(!(!vec4<bool>(var_0, false, var_0, var_0))));
    global1 = array<u32, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(~abs(vec4<i32>(-1i) * -vec4<i32>(2147483647i, global0.x, 1i, global0.x)), -(min(select(vec4<i32>(2147483647i, u_input.d, global0.x, u_input.c), vec4<i32>(-52088i, -2147483647i, global0.x, u_input.c), vec4<bool>(var_0, true, var_0, var_0)), -vec4<i32>(u_input.c, u_input.c, 32851i, u_input.d)) ^ _wgslsmith_div_vec4_i32(vec4<i32>(global0.x, global0.x, u_input.d, -28377i), countOneBits(vec4<i32>(global0.x, u_input.d, global0.x, 1i)))), _wgslsmith_dot_vec4_u32(vec4<u32>(~(~0u), _wgslsmith_add_u32(1u, max(global1[_wgslsmith_index_u32(u_input.b.x, 8u)], 17041u)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, u_input.b.x), u_input.b.zzx), max(global1[_wgslsmith_index_u32(u_input.a, 8u)] >> (683u % 32u), firstLeadingBit(u_input.b.x))), select(u_input.b, (u_input.b << (u_input.b % vec4<u32>(32u))) | select(u_input.b, u_input.b, vec4<bool>(var_2.x, var_0, true, false)), !(!vec4<bool>(false, false, var_2.x, true)))));
}

