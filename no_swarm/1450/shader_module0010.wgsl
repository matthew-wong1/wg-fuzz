struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(297f, -592f);

var<private> global1: array<bool, 25> = array<bool, 25>(false, false, false, false, false, true, true, false, true, true, false, true, false, true, true, false, true, true, true, false, false, false, false, true, true);

var<private> global2: array<vec4<u32>, 10>;

var<private> global3: vec2<i32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<bool>) -> u32 {
    global1 = array<bool, 25>();
    global1 = array<bool, 25>();
    global3 = _wgslsmith_add_vec2_i32(-(~(-vec2<i32>(u_input.a, -1i))) << (vec2<u32>(1u, _wgslsmith_clamp_u32(~68806u, 1u, 14671u)) % vec2<u32>(32u)), select(vec2<i32>(~u_input.b, -1i), ~vec2<i32>(global3.x, _wgslsmith_div_i32(2147483647i, global3.x)), vec2<bool>(true, true)));
    var var_0 = firstTrailingBit(vec4<u32>(_wgslsmith_div_u32(1u, _wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(0u >> (0u % 32u), 10u)], abs(global2[_wgslsmith_index_u32(4294967295u, 10u)]))), ~1u, 1u, abs(reverseBits(45415u))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-812f)))))));
    return ~_wgslsmith_add_u32(~var_0.x, var_0.x);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(any(!vec2<bool>(any(vec2<bool>(arg_0.a, true)), global1[_wgslsmith_index_u32(~33131u, 25u)])));
    global3 = _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(-vec2<i32>(0i, ~u_input.b), -_wgslsmith_mult_vec2_i32(countOneBits(vec2<i32>(-18202i, u_input.b)), vec2<i32>(global3.x, 29583i) & vec2<i32>(global3.x, 3882i))), vec2<i32>(~(-2147483647i), global3.x));
    global3 = vec2<i32>(global3.x, global3.x);
    var var_1 = ~vec2<u32>(0u, func_3(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(global1[_wgslsmith_index_u32(0u, 25u)], arg_0.a), false), !vec2<bool>(arg_0.a, arg_0.a))));
    let var_2 = Struct_1(true);
    return var_2;
}

fn func_1(arg_0: f32, arg_1: vec3<i32>, arg_2: vec2<bool>, arg_3: vec2<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) * 309f)));
    global2 = array<vec4<u32>, 10>();
    let var_1 = Struct_1(any(vec2<bool>(true, true)));
    let var_2 = Struct_1(true);
    let var_3 = _wgslsmith_div_i32(u_input.a, (_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 23360i, global3.x, arg_1.x), vec4<i32>(1i, -2147483647i, arg_1.x, -1i)) >> (select(31698u, 4294967295u, var_1.a) % 32u)) ^ reverseBits(-12764i)) == -2147483647i;
    return func_2(var_2);
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: Struct_1, arg_3: bool) -> i32 {
    global1 = array<bool, 25>();
    var var_0 = Struct_1(arg_2.a);
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1199f) * _wgslsmith_f_op_f32(global0.x * 1147f)))));
    var var_2 = _wgslsmith_mod_u32(~38209u, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(select(4294967295u, 6011u, arg_3), min(14660u, 0u), 1u), vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, abs(75162u), 0u)), ~vec3<u32>(1u, 1u, 1u)));
    let var_3 = arg_2;
    return -3209i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_div_i32(func_4(true, global0.x < global0.x, func_1(2442f, vec3<i32>(-31257i, u_input.b, -2147483647i), vec2<bool>(false, false), vec2<f32>(global0.x, global0.x)), true), ~_wgslsmith_div_i32(-15606i, u_input.a)) == _wgslsmith_sub_i32(0i, firstLeadingBit(reverseBits(33571i))));
    global2 = array<vec4<u32>, 10>();
    let var_1 = var_0;
    var var_2 = Struct_1(all(vec4<bool>(false, true, !global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(1u, 10u)], global2[_wgslsmith_index_u32(4294967295u, 10u)]), 25u)], true)));
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(704f * 483f), _wgslsmith_f_op_f32(-global0.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(372f)), 1914f)));
    global0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(986f * _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-2133f, 1264f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -288f) - _wgslsmith_f_op_f32(abs(-665f)))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-292f, 776f)), vec2<f32>(-1371f, var_3.x))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-866f, var_3.x), var_3.xz, func_2(Struct_1(var_0.a)).a))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1187f, -229f) - var_3.yy)) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_3.x, var_3.x))))))));
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_mult_vec3_i32(vec3<i32>(48907i, u_input.b, i32(-1i) * -2147483647i), ~abs(vec3<i32>(1i, u_input.b, global3.x))), vec3<i32>(-_wgslsmith_sub_i32(global3.x, global3.x), _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(-1i, -1i)), ~vec2<i32>(61183i, 11044i)), -(~u_input.b))), ~100761u, _wgslsmith_sub_vec4_u32(vec4<u32>(firstTrailingBit(33837u), 1u >> (1u % 32u), ~10980u, ~4294967295u), _wgslsmith_sub_vec4_u32(global2[_wgslsmith_index_u32(1u, 10u)], vec4<u32>(4294967295u, 38589u, 0u, 13469u)) | global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(31811u, 16801u)), 10u)]) ^ min(vec4<u32>(_wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(1u, 10u)], vec4<u32>(67315u, 0u, 58223u, 4294967295u)), 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(20426u, 15802u, 0u, 54428u), vec4<u32>(9151u, 4294967295u, 126210u, 45471u)), 1u), firstTrailingBit(_wgslsmith_clamp_vec4_u32(global2[_wgslsmith_index_u32(4294967295u, 10u)], global2[_wgslsmith_index_u32(1u, 10u)], global2[_wgslsmith_index_u32(4294967295u, 10u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-474f)) * global0.x), ~u_input.b);
}

