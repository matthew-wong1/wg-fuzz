struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<bool>,
    d: i32,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 12>;

var<private> global1: vec4<f32> = vec4<f32>(857f, -232f, 229f, 1493f);

var<private> global2: f32 = -139f;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: bool, arg_1: Struct_3) -> vec2<u32> {
    var var_0 = 51093u;
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-442f, -662f, -1000f, global1.x), vec4<f32>(global1.x, global1.x, 598f, 1411f)) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(791f, -1462f, global1.x, global1.x)))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1209f, 1175f, 582f, global1.x)), vec4<f32>(global1.x, global1.x, 243f, -1000f), true))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(global1.x * global1.x), _wgslsmith_f_op_f32(-357f - global1.x), 296f, -1344f), vec4<f32>(global1.x, global1.x, global1.x, 329f)))));
    var var_1 = ~max(vec2<u32>(40907u, _wgslsmith_clamp_u32(4294967295u, 36336u, u_input.b)) | select(abs(vec2<u32>(u_input.b, u_input.b)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, 10936u), vec2<u32>(24833u, 1u)), false && arg_0), _wgslsmith_clamp_vec2_u32(vec2<u32>(~u_input.b, u_input.b), ~min(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(u_input.b, u_input.b)), min(max(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, 13360u)), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, 0u), vec2<u32>(u_input.b, 33397u)))));
    global2 = global1.x;
    var var_2 = 518f;
    return reverseBits(vec2<u32>(4294967295u, reverseBits(~(~var_1.x))));
}

fn func_3() -> vec4<f32> {
    var var_0 = Struct_1(~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x >> (u_input.b % 32u), u_input.a.x & u_input.a.x, 2147483647i << (u_input.b % 32u), firstTrailingBit(u_input.a.x)), -reverseBits(u_input.a)), reverseBits(min(vec2<u32>(51817u, 32568u) << (vec2<u32>(u_input.b, 23562u) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(firstLeadingBit(vec2<u32>(u_input.b, u_input.b)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(4294967295u, u_input.b))))));
    global0 = array<Struct_2, 12>();
    var_0 = Struct_1(max(vec4<i32>(min(-2147483647i, _wgslsmith_clamp_i32(2147483647i, u_input.a.x, var_0.a.x)), 57376i, firstLeadingBit(u_input.a.x), abs(reverseBits(33887i))), vec4<i32>(-17414i, _wgslsmith_sub_i32(-1i, 2147483647i), ~var_0.a.x, ~u_input.a.x) << (vec4<u32>(var_0.b.x, u_input.b, u_input.b & 64394u, _wgslsmith_clamp_u32(8635u, 1u, 63578u)) % vec4<u32>(32u))), var_0.b);
    var var_1 = vec3<bool>(global1.x == _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1119f * -909f))), (u_input.a.x >> (var_0.b.x % 32u)) < (i32(-1i) * -1i), any(vec2<bool>(true, true)));
    let var_2 = ~(reverseBits(u_input.b) >> (1u % 32u)) <= (reverseBits(u_input.b) & 0u);
    return _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, 1000f, _wgslsmith_f_op_f32(global1.x * -457f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(456f, 522f, -149f, -1067f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(480f, -2438f, 1767f, global1.x))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(631f, 441f, 668f, 1000f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -282f, global1.x, global1.x))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -319f, -187f, 2269f) + vec4<f32>(global1.x, global1.x, global1.x, -130f))))))))));
}

fn func_2(arg_0: Struct_1) -> vec2<u32> {
    var var_0 = !(!(!(u_input.b <= 0u)) | (select(true, true, false) == (select(-1i, u_input.a.x, true) < -1i)));
    global1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(func_3()), _wgslsmith_f_op_vec4_f32(-vec4<f32>(884f, global1.x, 1980f, global1.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(198f, global1.x, global1.x, global1.x))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 1922f, global1.x, -1504f)), vec4<f32>(-309f, 1003f, 243f, 972f))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(global1.x * global1.x), _wgslsmith_f_op_f32(1304f * global1.x), -308f, 216f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -944f, global1.x, global1.x) - vec4<f32>(global1.x, global1.x, global1.x, global1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, global1.x, global1.x) + vec4<f32>(-419f, -945f, global1.x, -771f))), _wgslsmith_add_u32(u_input.b, u_input.b) >= ~1u))));
    var var_1 = global0[_wgslsmith_index_u32(u_input.b, 12u)];
    global2 = global1.x;
    var_1 = global0[_wgslsmith_index_u32(~(firstTrailingBit(var_1.a.b.x) ^ _wgslsmith_sub_u32(arg_0.b.x, arg_0.b.x)), 12u)];
    return ~var_1.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ((~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(0u, 1u)) ^ abs(func_1(false, Struct_3(u_input.a.x)))) << (_wgslsmith_mult_vec2_u32(~(vec2<u32>(u_input.b, u_input.b) & vec2<u32>(0u, u_input.b)), ~(vec2<u32>(u_input.b, u_input.b) & vec2<u32>(u_input.b, 29721u))) % vec2<u32>(32u))) << (_wgslsmith_add_vec2_u32(firstLeadingBit(vec2<u32>(~u_input.b, u_input.b & u_input.b)), _wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(9448u, u_input.b), vec2<u32>(43247u, u_input.b) << (vec2<u32>(11476u, 71086u) % vec2<u32>(32u)), func_2(Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 0i), vec2<u32>(67673u, 0u)))), ~abs(vec2<u32>(22512u, u_input.b)))) % vec2<u32>(32u));
    var var_1 = Struct_1(vec4<i32>(68647i, -28090i, 72617i << (_wgslsmith_add_u32(_wgslsmith_add_u32(0u, 4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(90495u, 0u, 0u), vec3<u32>(3932u, 0u, u_input.b))) % 32u), 0i), ~(~(~func_2(Struct_1(vec4<i32>(-1i, u_input.a.x, u_input.a.x, u_input.a.x), vec2<u32>(var_0.x, 4294967295u))))));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -717f)))));
    var_0 = var_1.b;
    let var_2 = select(!vec4<bool>(all(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false)), all(vec3<bool>(true, false, false)), false, false), select(select(vec4<bool>(false, select(false, false, false), true, true), !select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), false), true), !vec4<bool>(false, any(vec2<bool>(false, false)), false, true), !all(vec2<bool>(false, false)) & !any(vec2<bool>(false, true))), vec4<bool>(true, true, false == any(vec3<bool>(false, false, true)), any(select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), false)))));
    let var_3 = 98041u;
    let var_4 = select(var_2.wx, var_2.zz, ((_wgslsmith_mod_u32(var_3, var_1.b.x) <= 1u) || var_2.x) || !all(vec4<bool>(var_2.x, var_2.x, var_2.x, false)));
    var var_5 = func_2(Struct_1(~select(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, -35822i, 1i, var_1.a.x), vec4<i32>(1i, -1i, var_1.a.x, -12732i), u_input.a), reverseBits(vec4<i32>(0i, u_input.a.x, 0i, var_1.a.x)), var_2.x), ~(~vec2<u32>(var_3, var_0.x))));
    var_5 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~vec3<u32>(4294967295u, 0u, var_0.x) | reverseBits(vec3<u32>(var_0.x, 0u, 0u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1f * -282f)))), _wgslsmith_add_i32(var_1.a.x, u_input.a.x));
}

