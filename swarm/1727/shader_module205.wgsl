struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 22> = array<vec3<i32>, 22>(vec3<i32>(16345i, -1i, 2147483647i), vec3<i32>(4006i, 8216i, 423i), vec3<i32>(1i, i32(-2147483648), -17933i), vec3<i32>(2147483647i, -51026i, -44853i), vec3<i32>(1i, 6441i, -1i), vec3<i32>(-26880i, 2147483647i, -1i), vec3<i32>(1i, 1i, -50798i), vec3<i32>(12682i, 0i, 0i), vec3<i32>(14495i, -82826i, 2483i), vec3<i32>(-1i, 11225i, 51495i), vec3<i32>(-17646i, 2147483647i, 32409i), vec3<i32>(1i, 1i, 55436i), vec3<i32>(i32(-2147483648), 9705i, 10533i), vec3<i32>(2147483647i, 0i, 2147483647i), vec3<i32>(-1i, 12471i, 14101i), vec3<i32>(18468i, 39174i, 20751i), vec3<i32>(66484i, -45609i, -24490i), vec3<i32>(0i, 0i, 1i), vec3<i32>(1i, 2147483647i, 33412i), vec3<i32>(-38811i, 17260i, -47503i), vec3<i32>(16674i, -14998i, -2874i), vec3<i32>(17743i, 2147483647i, -1i));

var<private> global1: vec3<f32>;

var<private> global2: vec4<i32> = vec4<i32>(37315i, i32(-2147483648), i32(-2147483648), -1i);

var<private> global3: array<u32, 32> = array<u32, 32>(47064u, 5483u, 30434u, 1u, 23724u, 0u, 0u, 49559u, 0u, 15387u, 4294967295u, 16537u, 9328u, 0u, 130005u, 12556u, 67213u, 0u, 3530u, 28795u, 4294967295u, 4294967295u, 0u, 0u, 22267u, 1u, 25836u, 32865u, 88591u, 29066u, 24582u, 34646u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32, arg_1: vec4<u32>, arg_2: vec3<i32>, arg_3: f32) -> vec4<i32> {
    var var_0 = any(vec3<bool>(!(all(vec2<bool>(true, false)) & false), select(true, true & all(vec3<bool>(true, true, true)), true), false));
    global2 = vec4<i32>(reverseBits(~global2.x >> (1u % 32u)), ~(-(u_input.a.x << (arg_0 % 32u))) & u_input.a.x, -14427i, -1i);
    var var_1 = vec4<f32>(637f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.x + 142f), _wgslsmith_f_op_f32(max(global1.x, 1242f)))) + 244f) - 2020f), _wgslsmith_f_op_f32(f32(-1f) * -198f), arg_3);
    var var_2 = !(!select(vec2<bool>(any(vec4<bool>(true, true, true, false)), true), select(select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(true, false), false), !(arg_1.x <= global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_1.x, 32u)], 32u)])));
    var var_3 = ~arg_1.x;
    return ~_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(18187i, global2.x, global2.x), abs(vec3<i32>(0i, u_input.a.x, u_input.a.x))), u_input.b, -u_input.b), select(~vec4<i32>(-49814i, -16824i, 21471i, -37684i) | _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, arg_2.x, 2147483647i, arg_2.x), vec4<i32>(-2147483647i, arg_2.x, 2147483647i, u_input.b)), vec4<i32>(global2.x, reverseBits(global2.x), -1047i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.x, 1i, 1i, u_input.b), vec4<i32>(1i, global2.x, arg_2.x, u_input.a.x))), false), vec4<i32>(-1i, -24119i, -40466i, ~34597i) & (_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, u_input.a.x, arg_2.x, 10560i), vec4<i32>(global2.x, 15077i, -1i, u_input.b)) >> (select(arg_1, vec4<u32>(1276u, arg_0, arg_0, arg_0), var_2.x) % vec4<u32>(32u))));
}

fn func_2(arg_0: f32, arg_1: vec4<f32>, arg_2: Struct_1) -> i32 {
    global2 = ~_wgslsmith_mult_vec4_i32(reverseBits(func_3(~16698u, vec4<u32>(1u, global3[_wgslsmith_index_u32(71941u, 32u)], 95421u, 4294967295u) | vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(0u, 32u)], global3[_wgslsmith_index_u32(4294967295u, 32u)], 1u), _wgslsmith_mult_vec3_i32(global0[_wgslsmith_index_u32(4294967295u, 22u)], vec3<i32>(-2147483647i, u_input.b, -1i)), _wgslsmith_f_op_f32(-arg_0))), ~_wgslsmith_mult_vec4_i32(abs(vec4<i32>(global2.x, 2147483647i, 1i, 1i)), func_3(1u, vec4<u32>(global3[_wgslsmith_index_u32(0u, 32u)], 37117u, global3[_wgslsmith_index_u32(3703u, 32u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 32u)], 32u)], 32u)], 32u)], 32u)]), u_input.a, arg_1.x)));
    return global2.x;
}

fn func_1(arg_0: Struct_2, arg_1: i32) -> vec2<f32> {
    global1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-317f, _wgslsmith_f_op_f32(f32(-1f) * -848f), arg_0.a.a.x))), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(556f * 2178f) + arg_0.a.b), _wgslsmith_f_op_f32(global1.x * 1311f), true)), -1005f, arg_0.a.b)));
    global0 = array<vec3<i32>, 22>();
    global2 = vec4<i32>(-max(~(-1i), -global2.x), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~global3[_wgslsmith_index_u32(4294967295u, 32u)], global3[_wgslsmith_index_u32(329u, 32u)] << (global3[_wgslsmith_index_u32(1u, 32u)] % 32u)), 22u)], _wgslsmith_div_vec3_i32(vec3<i32>(4433i, arg_0.b.x, 0i), vec3<i32>(-1i, 2147483647i, u_input.b) & vec3<i32>(u_input.b, u_input.a.x, arg_1))), max(u_input.a, global2.zyx)), arg_1, select(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global2.x, arg_1) << (vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(13178u, 32u)], 32u)], 32u)], 0u) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(global2.zw, vec2<i32>(u_input.b, -1i))), -arg_0.b.x << (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 13584u, 4294967295u, 1u), vec4<u32>(global3[_wgslsmith_index_u32(0u, 32u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(6837u, 32u)], 32u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(32196u, 32u)], 32u)], 32u)], 32u)], 74608u)) % 32u)), func_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(1178f)), global1.x, true)), vec4<f32>(_wgslsmith_f_op_f32(-global1.x), global1.x, _wgslsmith_f_op_f32(-arg_0.a.b), global1.x), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(254f, arg_0.a.a.x) + global1.yz), arg_0.a.a.x, select(27737i, 0i, true), -u_input.a.x)), _wgslsmith_add_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 32u)], 32u)], 32u)] | 4294967295u, countOneBits(6103u)) <= ~firstLeadingBit(global3[_wgslsmith_index_u32(10988u, 32u)])));
    let var_0 = arg_0.a;
    global2 = vec4<i32>(-global2.x, _wgslsmith_mod_i32(45993i >> (~_wgslsmith_mult_u32(4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(47686u, 32u)], 32u)]) % 32u), i32(-1i) * -select(u_input.b, arg_0.b.x, false)), -_wgslsmith_dot_vec4_i32(vec4<i32>(-43787i, u_input.b, 10457i, u_input.a.x) ^ vec4<i32>(arg_0.a.d, -46306i, global2.x, arg_1), vec4<i32>(0i, var_0.d, arg_1, 8749i)) & -14334i, var_0.c);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.a.a + vec2<f32>(_wgslsmith_f_op_f32(-831f + -1000f), global1.x)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: vec4<f32>) -> Struct_3 {
    global2 = abs(vec4<i32>(22234i, -10782i, max(-(~global2.x), 1i), 1i));
    global2 = vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_mod_i32(~(arg_1.d ^ arg_1.c), max(_wgslsmith_clamp_i32(2147483647i, 1i, 41118i), func_2(global1.x, vec4<f32>(671f, arg_0.a.x, -566f, 1090f), Struct_1(global1.zy, 524f, -2147483647i, arg_1.d)))), _wgslsmith_mod_i32(~(-15048i), -2147483647i)), arg_1.d, -(-max(arg_1.d, -10135i) | abs(firstTrailingBit(-11440i))), _wgslsmith_div_i32(-26620i, abs(select(u_input.b, -2147483647i, true)) ^ arg_1.d));
    var var_0 = ~(countOneBits(firstTrailingBit(_wgslsmith_div_vec2_i32(vec2<i32>(0i, arg_1.d), vec2<i32>(-2147483647i, global2.x)))) >> (~(~max(vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 32u)], 32u)], global3[_wgslsmith_index_u32(4294967295u, 32u)]), vec2<u32>(65480u, global3[_wgslsmith_index_u32(24340u, 32u)]))) % vec2<u32>(32u)));
    global0 = array<vec3<i32>, 22>();
    let var_1 = Struct_1(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-540f)))), ~(-reverseBits(-15226i)), 9172i);
    return Struct_3(~vec4<u32>(~(~global3[_wgslsmith_index_u32(22751u, 32u)]), _wgslsmith_sub_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 32u)], 32u)], global3[_wgslsmith_index_u32(4294967295u, 32u)]), 1u, reverseBits(~global3[_wgslsmith_index_u32(0u, 32u)])));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(-global1.x)))));
    let var_1 = !(!any(vec4<bool>(true, true, true, true)));
    let var_2 = select(vec4<bool>(true, true | any(!vec2<bool>(true, var_1)), var_1, var_1), vec4<bool>(!(global2.x > 19277i), !((54950u ^ global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(25615u, 32u)], 32u)]) >= 0u), false, var_1), var_1);
    let var_3 = all(!var_2);
    global2 = (_wgslsmith_mult_vec4_i32(~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, global2.x, global2.x, global2.x), vec4<i32>(global2.x, global2.x, -31529i, 1i)), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.b), u_input.a.xz), -1i, -5384i, ~u_input.b)) << (~abs(~vec4<u32>(8624u, 4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(5048u, 32u)], 32u)], global3[_wgslsmith_index_u32(16232u, 32u)])) % vec4<u32>(32u))) & (~(vec4<i32>(-1i) * -vec4<i32>(2147483647i, u_input.a.x, 1i, 8284i)) | vec4<i32>(-1i, ~global2.x, _wgslsmith_div_i32(~(-17171i), select(-2147483647i, global2.x, var_3)), -global2.x));
    var var_4 = select(var_2.xw, !var_2.xz, var_2.wz);
    let var_5 = func_4(Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global1.x) * _wgslsmith_f_op_vec2_f32(func_1(Struct_2(Struct_1(vec2<f32>(1366f, 1000f), global1.x, 29422i, 2147483647i), vec3<i32>(u_input.b, 4266i, -572i)), 308i))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, -773f)))), global1.x, u_input.a.x, u_input.a.x), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1468f, -858f)))) - global1.yz), _wgslsmith_f_op_f32(select(global1.x, 946f, !var_2.x)), ~global2.x, max(~(-17256i), _wgslsmith_mod_i32(u_input.a.x, u_input.b))), vec4<bool>(false, var_1, any(select(var_2.wy, vec2<bool>(false, var_3), vec2<bool>(true, true))), var_3), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(690f, global1.x, 1000f, global1.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(213f, global1.x, global1.x, global1.x), vec4<f32>(global1.x, -109f, global1.x, global1.x), var_2)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-296f, 345f, 214f, global1.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1010f, 749f, 418f, 100f) + vec4<f32>(694f, global1.x, 4429f, global1.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_div_u32(var_5.a.x, var_5.a.x), 11688u, 100545u, 0u), u_input.a.yy);
}

