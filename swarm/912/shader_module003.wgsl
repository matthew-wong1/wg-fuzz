struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-1i, 32854i, -18561i);

var<private> global1: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(25207i), Struct_1(60792i), Struct_1(-1i), Struct_1(1i), Struct_1(i32(-2147483648)), Struct_1(-49916i), Struct_1(i32(-2147483648)), Struct_1(0i), Struct_1(1i), Struct_1(-72405i), Struct_1(-28684i), Struct_1(22122i), Struct_1(5526i), Struct_1(-43403i), Struct_1(8349i), Struct_1(i32(-2147483648)));

var<private> global2: array<Struct_2, 9>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: Struct_2) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(-2061f, -1369f, -1225f, arg_0), vec4<f32>(-621f, arg_0, arg_0, 813f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -1522f, 1000f, -104f))))), vec4<f32>(-1186f, _wgslsmith_f_op_f32(-arg_0), -530f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-305f)) + -406f)), !select(!vec4<bool>(arg_1, arg_1, false, arg_1), vec4<bool>(true, arg_1, arg_1, false), -738f > arg_0))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-204f, arg_0)) - _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(ceil(1173f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)))), 586f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(abs(-890f))), _wgslsmith_div_f32(arg_0, arg_0))))));
    let var_1 = u_input.a;
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(var_1, _wgslsmith_sub_u32(u_input.a, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1, 66036u, u_input.a) & vec3<u32>(var_1, u_input.a, 0u), ~vec3<u32>(51448u, 91153u, 0u)), abs(~u_input.a)))), 9u)];
    let var_3 = arg_2;
    global0 = _wgslsmith_add_vec3_i32(max(vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, var_3.a.a, var_3.a.a, var_3.a.a), vec4<i32>(arg_2.a.a, var_3.a.a, -2147483647i, var_2.a.a)), _wgslsmith_div_vec4_i32(vec4<i32>(arg_2.a.a, var_2.a.a, arg_2.a.a, 1i), vec4<i32>(arg_2.a.a, var_3.a.a, var_3.a.a, -2147483647i))), arg_2.a.a, -2147483647i), _wgslsmith_div_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(-17278i, var_3.a.a, -39333i), ~select(vec3<i32>(var_2.a.a, -2147483647i, 2147483647i), vec3<i32>(2147483647i, var_2.a.a, var_3.a.a), true))), firstLeadingBit(abs(_wgslsmith_add_vec3_i32(vec3<i32>(var_2.a.a, global0.x, var_2.a.a), _wgslsmith_sub_vec3_i32(vec3<i32>(var_2.a.a, 1i, arg_2.a.a), vec3<i32>(global0.x, -3832i, 8335i))))));
    return ~_wgslsmith_clamp_i32(0i, max(max(2147483647i, -1i), arg_2.a.a), _wgslsmith_dot_vec4_i32(select(-vec4<i32>(var_3.a.a, 0i, 0i, global0.x), max(vec4<i32>(var_2.a.a, -1i, 2147483647i, arg_2.a.a), vec4<i32>(-23271i, arg_2.a.a, var_2.a.a, arg_2.a.a)), true), vec4<i32>(6036i, var_2.a.a, 10456i, 10252i) << ((vec4<u32>(u_input.a, var_1, 86140u, 33774u) & vec4<u32>(u_input.a, 17548u, 4294967295u, 0u)) % vec4<u32>(32u))));
}

fn func_2() -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1635f), _wgslsmith_div_f32(321f, 668f)))))));
    var var_1 = (true && !all(vec2<bool>(true, false))) & (_wgslsmith_f_op_f32(max(-560f, -136f)) > _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, var_0.x)));
    let var_2 = 4294967295u;
    var var_3 = vec3<i32>(-((func_3(-731f, false, global2[_wgslsmith_index_u32(26301u, 9u)]) ^ -16210i) ^ 1i), global0.x, ~(~(~(-61060i ^ global0.x))));
    let var_4 = vec2<f32>(-414f, -117f);
    return -(min(~reverseBits(vec4<i32>(var_3.x, 20177i, -2147483647i, 2147483647i)), vec4<i32>(select(1i, global0.x, false), global0.x << (var_2 % 32u), 1i, ~var_3.x)) | _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, 0i, global0.x, var_3.x), vec4<i32>(global0.x, 2147483647i, 59996i, global0.x), vec4<i32>(-2147483647i, -32010i, var_3.x, 2147483647i)), -vec4<i32>(var_3.x, -2147483647i, global0.x, global0.x), ~vec4<i32>(1i, 8593i, -2147483647i, global0.x)), min(vec4<i32>(var_3.x, -1i, global0.x, -23568i), vec4<i32>(1243i, 0i, 2147483647i, 10120i) ^ vec4<i32>(var_3.x, -2147483647i, var_3.x, 0i))));
}

fn func_1(arg_0: i32, arg_1: Struct_2) -> u32 {
    var var_0 = func_2();
    let var_1 = select(_wgslsmith_mod_vec3_i32(var_0.wzy | (vec3<i32>(arg_1.a.a, 30624i, -2498i) & min(vec3<i32>(var_0.x, global0.x, var_0.x), vec3<i32>(2147483647i, arg_1.a.a, 2147483647i))), _wgslsmith_add_vec3_i32(firstLeadingBit(_wgslsmith_mod_vec3_i32(var_0.yzy, vec3<i32>(-19843i, 1i, var_0.x))), _wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(global0.x, arg_0, -1i)), ~vec3<i32>(global0.x, global0.x, 2147483647i)))), _wgslsmith_add_vec3_i32(var_0.yzx, vec3<i32>(arg_1.a.a, arg_0, -var_0.x) & firstLeadingBit(var_0.ywy)), all(vec2<bool>(true, true)));
    let var_2 = vec4<u32>(u_input.a, select(~47363u, _wgslsmith_mult_u32(~4294967295u, ~u_input.a), !(11530u > u_input.a)), u_input.a, _wgslsmith_mod_u32(u_input.a, u_input.a >> (0u % 32u))) >> (~vec4<u32>(11795u >> (_wgslsmith_add_u32(23958u, u_input.a) % 32u), u_input.a, 1u, ~(~u_input.a)) % vec4<u32>(32u));
    return ~(~firstLeadingBit(~0u) << (firstTrailingBit(4294967295u) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 9>();
    let var_0 = vec4<bool>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1702f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-178f - 237f))))) == -602f, true, any(vec3<bool>(true, -2155f <= _wgslsmith_f_op_f32(round(409f)), u_input.a <= func_1(global0.x, global2[_wgslsmith_index_u32(13907u, 9u)]))), any(select(vec2<bool>(true, true), vec2<bool>(true, false), false)));
    let var_1 = _wgslsmith_sub_vec3_i32(-select(~reverseBits(vec3<i32>(global0.x, -2892i, global0.x)), _wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(1i, global0.x, global0.x)), _wgslsmith_sub_vec3_i32(vec3<i32>(0i, -2665i, -2147483647i), vec3<i32>(-48521i, -24369i, global0.x))), any(!vec2<bool>(true, var_0.x))), vec3<i32>(~select(global0.x, global0.x, false), -57552i, global0.x));
    var var_2 = Struct_1(-var_1.x);
    global1 = array<Struct_1, 16>();
    global2 = array<Struct_2, 9>();
    var var_3 = Struct_2(global1[_wgslsmith_index_u32(~70884u, 16u)]);
    var var_4 = _wgslsmith_f_op_f32(-359f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1104f)) + _wgslsmith_f_op_f32(ceil(-575f))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1174f * -1214f), 242f)))));
    global1 = array<Struct_1, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u);
}

