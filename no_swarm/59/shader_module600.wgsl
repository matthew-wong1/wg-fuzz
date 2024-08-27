struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(Struct_1(-968i)), Struct_2(Struct_1(-26985i)), Struct_2(Struct_1(42377i)), Struct_2(Struct_1(1i)), Struct_2(Struct_1(-22772i)), Struct_2(Struct_1(1i)), Struct_2(Struct_1(14294i)), Struct_2(Struct_1(i32(-2147483648))), Struct_2(Struct_1(-1i)), Struct_2(Struct_1(2147483647i)), Struct_2(Struct_1(12390i)), Struct_2(Struct_1(2147483647i)), Struct_2(Struct_1(-14937i)));

var<private> global1: array<bool, 13>;

var<private> global2: array<Struct_2, 9>;

var<private> global3: array<bool, 8>;

var<private> global4: array<bool, 2>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: Struct_1) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-862f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1472f), _wgslsmith_f_op_f32(f32(-1f) * -1192f)))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1184f))), _wgslsmith_f_op_f32(1f + _wgslsmith_div_f32(-735f, -1880f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-200f, -145f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(346f, -1000f))))));
    let var_1 = vec2<bool>(true, true);
    var var_2 = Struct_2(arg_2);
    let var_3 = Struct_2(Struct_1(arg_2.a));
    var var_4 = !(!(var_2.a.a >= (37730i | var_3.a.a))) && (_wgslsmith_f_op_f32(f32(-1f) * -698f) != _wgslsmith_div_f32(var_0.x, 2359f));
    return -countOneBits(~vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-18813i, -1i, var_3.a.a), vec3<i32>(2147483647i, arg_2.a, var_3.a.a)), _wgslsmith_mod_i32(var_3.a.a, var_3.a.a), var_3.a.a, var_2.a.a));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: vec3<f32>, arg_3: Struct_2) -> Struct_1 {
    global1 = array<bool, 13>();
    var var_0 = arg_3.a.a;
    var var_1 = Struct_1(_wgslsmith_dot_vec4_i32(-vec4<i32>(reverseBits(38409i), -2147483647i, _wgslsmith_mod_i32(arg_0.x, arg_3.a.a), _wgslsmith_clamp_i32(arg_3.a.a, arg_3.a.a, -1i)), _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(arg_3.a.a, arg_3.a.a, -36757i, arg_3.a.a), _wgslsmith_mod_vec4_i32(vec4<i32>(-57888i, 0i, -2147483647i, -1i), vec4<i32>(arg_0.x, arg_3.a.a, arg_3.a.a, -1i))), func_3(!vec3<bool>(global4[_wgslsmith_index_u32(31099u, 2u)], false, global3[_wgslsmith_index_u32(arg_1.x, 8u)]), ~vec4<u32>(4294967295u, 111485u, u_input.a.x, 48374u), Struct_1(-57066i)), _wgslsmith_add_vec4_i32(-vec4<i32>(arg_3.a.a, arg_0.x, arg_3.a.a, -30028i), ~vec4<i32>(21285i, arg_0.x, -13496i, arg_0.x)))));
    var var_2 = _wgslsmith_sub_i32(select(1i, select(~(arg_0.x & 0i), reverseBits(var_1.a), (global1[_wgslsmith_index_u32(arg_1.x, 13u)] || true) & all(vec2<bool>(false, true))), !(global4[_wgslsmith_index_u32(abs(u_input.a.x), 2u)] & any(vec2<bool>(true, global3[_wgslsmith_index_u32(u_input.a.x, 8u)])))), _wgslsmith_dot_vec4_i32(-(~(~vec4<i32>(-61883i, -63573i, var_1.a, -2147483647i))), -(~_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_3.a.a, arg_3.a.a, 2147483647i, -15285i), vec4<i32>(-39236i, 1i, arg_3.a.a, arg_0.x), vec4<i32>(1i, arg_3.a.a, 1i, arg_0.x)))));
    let var_3 = any(!(!(!select(vec4<bool>(false, true, global1[_wgslsmith_index_u32(50318u, 13u)], true), vec4<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 13u)], global4[_wgslsmith_index_u32(u_input.a.x, 2u)], true), false))));
    return arg_3.a;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> bool {
    var var_0 = arg_2;
    global1 = array<bool, 13>();
    var var_1 = ~u_input.a.x;
    global2 = array<Struct_2, 9>();
    var var_2 = u_input.a;
    return all(!(!(!select(vec2<bool>(global1[_wgslsmith_index_u32(26987u, 13u)], global4[_wgslsmith_index_u32(0u, 2u)]), vec2<bool>(global3[_wgslsmith_index_u32(arg_3, 8u)], true), false))));
}

fn func_1(arg_0: vec3<bool>, arg_1: bool) -> i32 {
    var var_0 = vec2<bool>(!func_4(~vec2<u32>(u_input.a.x, 42295u), func_2(-vec2<i32>(1429i, 0i), u_input.a.wxx, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -127f, 314f)), global2[_wgslsmith_index_u32(~20213u, 9u)]), Struct_1(1i), _wgslsmith_clamp_u32(42298u, u_input.a.x, u_input.a.x) >> (u_input.a.x % 32u)), any(vec3<bool>(arg_0.x, func_4(vec2<u32>(0u, 0u), func_2(vec2<i32>(59983i, -2147483647i), u_input.a.xzy, vec3<f32>(1101f, 326f, 337f), global0[_wgslsmith_index_u32(1u, 13u)]), Struct_1(1i), 0u), !(u_input.a.x > u_input.a.x))));
    let var_1 = Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), ~_wgslsmith_mult_vec2_i32(vec2<i32>(16581i, 0i), _wgslsmith_add_vec2_i32(vec2<i32>(-1i, 8864i), vec2<i32>(-6771i, 64297i)))));
    return var_1.a;
}

fn func_5(arg_0: vec2<i32>, arg_1: vec3<i32>) -> Struct_2 {
    global2 = array<Struct_2, 9>();
    let var_0 = Struct_1(arg_1.x);
    return global0[_wgslsmith_index_u32(~u_input.a.x << (~u_input.a.x % 32u), 13u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-262f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(445f)))), !(true && global1[_wgslsmith_index_u32(1485u, 13u)]))))) - 311f);
    let var_1 = vec2<u32>(max(27893u, ~(~select(u_input.a.x, 4294967295u, false))), _wgslsmith_dot_vec4_u32(u_input.a, ~(u_input.a ^ (vec4<u32>(0u, 67227u, u_input.a.x, 0u) & vec4<u32>(115994u, 71730u, u_input.a.x, u_input.a.x)))));
    let var_2 = Struct_1(i32(-1i) * -2147483647i);
    global1 = array<bool, 13>();
    var var_3 = func_5(min(abs(-_wgslsmith_add_vec2_i32(vec2<i32>(-1i, var_2.a), vec2<i32>(88i, var_2.a))), vec2<i32>(~func_1(vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 8u)], false, true), true), var_2.a)), max(~_wgslsmith_clamp_vec3_i32(vec3<i32>(var_2.a, -2147483647i, 2147483647i) & vec3<i32>(var_2.a, var_2.a, -8666i), ~vec3<i32>(var_2.a, var_2.a, -6728i), _wgslsmith_add_vec3_i32(vec3<i32>(var_2.a, var_2.a, 2147483647i), vec3<i32>(var_2.a, -2147483647i, var_2.a))), _wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(-2147483647i, 18495i, -1i)), firstTrailingBit(vec3<i32>(var_2.a, var_2.a, var_2.a))) & reverseBits(firstTrailingBit(vec3<i32>(-2147483647i, 0i, 16562i)))));
    let var_4 = _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~u_input.a, _wgslsmith_clamp_vec4_u32(u_input.a, vec4<u32>(7312u, u_input.a.x, 0u, u_input.a.x), vec4<u32>(17061u, 5570u, 83836u, 57626u))), ~u_input.a & ~u_input.a), ~u_input.a.x, var_1.x), _wgslsmith_sub_vec3_u32(u_input.a.yyy, u_input.a.wzy));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a, firstLeadingBit(vec2<i32>(_wgslsmith_mod_i32(var_2.a | var_3.a.a, -69638i), -2147483647i)), ~(~max(firstLeadingBit(u_input.a.xz), vec2<u32>(var_4, 1u))), reverseBits(select(~_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), ~var_4, false)));
}

