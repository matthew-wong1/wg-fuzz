struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 19>;

var<private> global1: array<bool, 5>;

var<private> global2: array<vec2<u32>, 26> = array<vec2<u32>, 26>(vec2<u32>(4294967295u, 8171u), vec2<u32>(31680u, 13026u), vec2<u32>(30757u, 2974u), vec2<u32>(4294967295u, 12996u), vec2<u32>(19369u, 50501u), vec2<u32>(29953u, 4294967295u), vec2<u32>(15088u, 9183u), vec2<u32>(0u, 83714u), vec2<u32>(37227u, 96768u), vec2<u32>(1355u, 43949u), vec2<u32>(0u, 74619u), vec2<u32>(19447u, 3593u), vec2<u32>(9297u, 30535u), vec2<u32>(1u, 1u), vec2<u32>(23033u, 24607u), vec2<u32>(0u, 35292u), vec2<u32>(4294967295u, 16410u), vec2<u32>(5591u, 26761u), vec2<u32>(1u, 48235u), vec2<u32>(44433u, 14565u), vec2<u32>(96515u, 1u), vec2<u32>(0u, 48609u), vec2<u32>(32645u, 0u), vec2<u32>(62193u, 4294967295u), vec2<u32>(0u, 0u), vec2<u32>(53258u, 16326u));

var<private> global3: u32 = 1u;

var<private> global4: array<vec2<f32>, 29>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: Struct_1) -> u32 {
    let var_0 = arg_0;
    let var_1 = max(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(16784i, -17063i, var_0.a, -arg_0.a), _wgslsmith_div_vec4_i32(-vec4<i32>(-42071i, var_0.a, var_0.a, arg_0.a), max(vec4<i32>(arg_0.a, var_0.a, var_0.a, -6820i), vec4<i32>(14479i, 2147483647i, var_0.a, -2147483647i)))), vec4<i32>(~arg_0.a, firstTrailingBit(52101i), -var_0.a, -1827i) << (vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a, u_input.a, 58094u), vec4<u32>(30468u, u_input.a, u_input.a, u_input.a)), u_input.a, u_input.a, u_input.a ^ 0u) % vec4<u32>(32u))), max(-vec4<i32>(i32(-1i) * -2147483647i, 0i, 2147483647i << (u_input.a % 32u), 1i), _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.a, var_0.a, -32138i, var_0.a) ^ vec4<i32>(arg_0.a, 63169i, arg_0.a, var_0.a), -vec4<i32>(-24613i, 1i, var_0.a, arg_0.a)), _wgslsmith_sub_vec4_i32(select(vec4<i32>(-2147483647i, 0i, var_0.a, -15300i), vec4<i32>(var_0.a, arg_0.a, -3678i, 44101i), vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 5u)], global1[_wgslsmith_index_u32(4294967295u, 5u)], global1[_wgslsmith_index_u32(1u, 5u)])), vec4<i32>(var_0.a, 0i, arg_0.a, arg_0.a)))));
    let var_2 = var_1;
    let var_3 = abs(4294967295u);
    global0 = array<f32, 19>();
    return 0u;
}

fn func_3(arg_0: i32) -> u32 {
    global2 = array<vec2<u32>, 26>();
    var var_0 = Struct_1(-36850i);
    var var_1 = Struct_1(var_0.a);
    let var_2 = global0[_wgslsmith_index_u32(min(38506u, u_input.a), 19u)];
    let var_3 = vec2<u32>(_wgslsmith_sub_u32(34225u, ~u_input.a) << (u_input.a % 32u), 0u);
    return u_input.a;
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: u32) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global4[_wgslsmith_index_u32(~1u, 29u)])) + _wgslsmith_f_op_vec2_f32(-global4[_wgslsmith_index_u32(arg_1.x, 29u)]));
    global3 = func_2(arg_2);
    global4 = array<vec2<f32>, 29>();
    var var_1 = vec4<bool>(false, true, global1[_wgslsmith_index_u32(func_3(abs(-25061i | arg_2.a)), 5u)] != !all(vec4<bool>(global1[_wgslsmith_index_u32(3416u, 5u)], true, global1[_wgslsmith_index_u32(arg_1.x, 5u)], false)), global1[_wgslsmith_index_u32(func_2(arg_2), 5u)]);
    let var_2 = arg_2;
    return vec3<i32>(firstTrailingBit(firstTrailingBit(var_2.a)), 63380i, abs(var_2.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-44773i, ~50893i, 1i), _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, 0i, -33842i), vec3<i32>(56531i, -2147483647i, 37896i), vec3<i32>(-2147483647i, 6936i, 2147483647i)), func_1(vec4<i32>(-12310i, -2147483647i, 1i, -1i), vec2<u32>(57618u, u_input.a), Struct_1(2147483647i), 18550u))) | vec3<i32>(1i, 1i, 1i), ~(~(-vec3<i32>(1i, 1i, 1i))));
    var var_1 = countOneBits(34826u);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 19u)] - global0[_wgslsmith_index_u32(33023u, 19u)]), _wgslsmith_f_op_f32(1582f + 520f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -428f))), _wgslsmith_f_op_vec2_f32(global4[_wgslsmith_index_u32(1u, 29u)] - global4[_wgslsmith_index_u32(~_wgslsmith_mult_u32(1u, u_input.a), 29u)])));
    global3 = 55122u;
    let var_3 = Struct_1(0i);
    var var_4 = !(!(!(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 5u)], global1[_wgslsmith_index_u32(1u, 5u)], global1[_wgslsmith_index_u32(4294967295u, 5u)]), global1[_wgslsmith_index_u32(33114u, 5u)]))));
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1468f * -203f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-776f)))));
    let var_6 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-661f, var_2.x, -433f, -178f), vec4<f32>(var_2.x, 252f, -1173f, global0[_wgslsmith_index_u32(u_input.a, 19u)]), vec4<bool>(var_6, false, false, true))))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-411f, var_2.x, 243f, global0[_wgslsmith_index_u32(u_input.a, 19u)])))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 19u)], global0[_wgslsmith_index_u32(u_input.a, 19u)], var_2.x, var_2.x) - vec4<f32>(434f, var_2.x, global0[_wgslsmith_index_u32(u_input.a, 19u)], -295f)), vec4<f32>(-2058f, 276f, var_2.x, 435f))), false)), 26501i, vec4<u32>(~11105u, _wgslsmith_dot_vec2_u32(~global2[_wgslsmith_index_u32(49467u, 26u)], _wgslsmith_mult_vec2_u32(vec2<u32>(4770u, 1u), global2[_wgslsmith_index_u32(24564u, 26u)])) | u_input.a, _wgslsmith_sub_u32(u_input.a, 42748u | func_3(-805i)), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 33282u, u_input.a)), 41989u)), _wgslsmith_mod_u32(u_input.a, _wgslsmith_dot_vec2_u32(countOneBits(global2[_wgslsmith_index_u32(0u, 26u)]), vec2<u32>(u_input.a, 95002u))) & u_input.a, 2147483647i);
}

