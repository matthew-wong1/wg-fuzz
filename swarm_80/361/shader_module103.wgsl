struct Struct_1 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<f32>,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 19> = array<bool, 19>(false, false, true, false, false, false, false, false, false, true, true, false, true, false, true, true, false, true, false);

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: i32) -> Struct_1 {
    let var_0 = Struct_1(select(47475u, arg_1, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(101f, arg_0, arg_0)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(285f, 1230f, arg_0))))));
    let var_1 = Struct_4(_wgslsmith_mod_i32(~(-1i), arg_2));
    global0 = array<bool, 19>();
    var var_2 = 4855i;
    var var_3 = 107f;
    return var_0;
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>) -> u32 {
    let var_0 = abs((vec4<i32>(1i, 1i, 1i, 1i) >> (_wgslsmith_add_vec4_u32(~vec4<u32>(arg_1.x, arg_1.x, 100691u, 47191u), ~vec4<u32>(16330u, u_input.a, arg_0.a, 4294967295u)) % vec4<u32>(32u))) & select(vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), min(vec4<i32>(-1i, -2147483647i, -692i, -1932i), vec4<i32>(-2147483647i, -52141i, 2147483647i, -1i))), global0[_wgslsmith_index_u32(func_2(_wgslsmith_f_op_f32(round(-457f)), ~arg_0.a, 1i).a, 19u)]));
    let var_1 = select(any(!(!vec3<bool>(global0[_wgslsmith_index_u32(3201u, 19u)], global0[_wgslsmith_index_u32(u_input.a, 19u)], true))), _wgslsmith_div_f32(arg_0.b.x, -1081f) >= arg_0.b.x, u_input.a < 4294967295u) | true;
    var var_2 = arg_0.b.x;
    let var_3 = max(_wgslsmith_add_vec4_u32(abs(~vec4<u32>(1u, arg_1.x, arg_0.a, 0u)), _wgslsmith_div_vec4_u32(~vec4<u32>(21558u, 6223u, arg_0.a, 0u), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 1u, 4197u, 1u), vec4<u32>(0u, arg_0.a, 20087u, 48368u)))) >> (~vec4<u32>(u_input.a, 84263u, abs(4294967295u), firstLeadingBit(1u)) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(min(abs(vec4<u32>(554u, arg_0.a, arg_0.a, arg_0.a)), ~vec4<u32>(arg_0.a, arg_0.a, arg_1.x, u_input.a)), _wgslsmith_clamp_vec4_u32(select(vec4<u32>(1u, arg_0.a, 4294967295u, arg_1.x), vec4<u32>(u_input.a, 0u, arg_0.a, arg_0.a), true), _wgslsmith_add_vec4_u32(vec4<u32>(103793u, 0u, arg_0.a, 32777u), vec4<u32>(1u, 1u, arg_1.x, u_input.a)), ~vec4<u32>(7063u, arg_0.a, 22510u, 1u))) << ((min(~vec4<u32>(4294967295u, 1u, u_input.a, u_input.a), vec4<u32>(u_input.a, 1u, arg_0.a, arg_0.a)) | ~vec4<u32>(arg_0.a, u_input.a, u_input.a, 0u)) % vec4<u32>(32u)));
    var var_4 = ~72720u & arg_0.a;
    return 45134u;
}

fn func_4(arg_0: vec4<i32>, arg_1: f32, arg_2: u32, arg_3: vec2<i32>) -> Struct_2 {
    let var_0 = !vec3<bool>(global0[_wgslsmith_index_u32(min(~4294967295u, 4294967295u), 19u)] | any(select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 19u)], global0[_wgslsmith_index_u32(1u, 19u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(arg_2, 19u)]), true)), global0[_wgslsmith_index_u32(~abs(select(arg_2, arg_2, global0[_wgslsmith_index_u32(0u, 19u)])), 19u)], all(select(!vec3<bool>(true, true, global0[_wgslsmith_index_u32(u_input.a, 19u)]), !vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 19u)], global0[_wgslsmith_index_u32(4294967295u, 19u)], false), true)));
    return Struct_2(Struct_1(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(58194u, u_input.a)), ~_wgslsmith_sub_vec2_u32(vec2<u32>(3236u, u_input.a), vec2<u32>(0u, 4294967295u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1147f, 601f, arg_1)), vec3<f32>(-1243f, arg_1, 224f), !vec3<bool>(true, false, global0[_wgslsmith_index_u32(24746u, 19u)]))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, 1252f) + vec3<f32>(arg_1, -1262f, arg_1)))), ~arg_3.x, var_0);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> vec2<u32> {
    var var_0 = ~52971i;
    var_0 = 2147483647i;
    global0 = array<bool, 19>();
    let var_1 = func_4(abs(-(~(-vec4<i32>(7300i, 12272i, -1i, 15603i)))), _wgslsmith_f_op_f32(trunc(arg_0.b.x)), ~func_3(func_2(_wgslsmith_f_op_f32(-453f * arg_1.b.x), _wgslsmith_dot_vec3_u32(vec3<u32>(14418u, u_input.a, 9522u), vec3<u32>(56718u, u_input.a, arg_1.a)), -7840i), vec3<u32>(reverseBits(arg_1.a), arg_0.a, 14276u ^ arg_0.a)), _wgslsmith_mod_vec2_i32(-firstTrailingBit(vec2<i32>(0i, 37487i)), ~abs(vec2<i32>(-12893i, 46887i))) << (vec2<u32>(0u, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(4294967295u, arg_1.a, u_input.a), 37183u)) % vec2<u32>(32u)));
    var var_2 = func_4(abs(vec4<i32>(var_1.b, ~(-2147483647i), -9421i, var_1.b) << (~(~vec4<u32>(4294967295u, arg_1.a, var_1.a.a, 1u)) % vec4<u32>(32u))), -1105f, 57503u << (abs(arg_1.a) % 32u), -vec2<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -2147483647i, var_1.b, var_1.b), vec4<i32>(var_1.b, var_1.b, 7786i, var_1.b)), select(15134i, -2147483647i, global0[_wgslsmith_index_u32(11248u, 19u)])));
    return vec2<u32>(max((~var_1.a.a >> (~var_1.a.a % 32u)) >> (abs(arg_1.a) % 32u), 4294967295u), ~72561u);
}

fn func_5(arg_0: vec2<i32>, arg_1: u32, arg_2: vec2<u32>, arg_3: i32) -> Struct_1 {
    global0 = array<bool, 19>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(352f + 2702f), _wgslsmith_f_op_f32(max(-284f, -1640f))))))) - _wgslsmith_f_op_f32(-453f * 1000f));
    let var_1 = vec2<bool>(true | all(select(select(vec2<bool>(false, false), vec2<bool>(true, global0[_wgslsmith_index_u32(arg_2.x, 19u)]), vec2<bool>(global0[_wgslsmith_index_u32(26389u, 19u)], global0[_wgslsmith_index_u32(4294967295u, 19u)])), vec2<bool>(false, true), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 19u)], global0[_wgslsmith_index_u32(arg_2.x, 19u)]))), select(!global0[_wgslsmith_index_u32(func_1(Struct_1(u_input.a, vec3<f32>(var_0, -760f, 996f)), Struct_1(0u, vec3<f32>(243f, 1121f, -1051f))).x, 19u)], all(vec2<bool>(global0[_wgslsmith_index_u32(arg_1, 19u)], false)), any(!func_4(vec4<i32>(-1i, arg_0.x, arg_0.x, 1i), 766f, u_input.a, vec2<i32>(arg_0.x, 0i)).c.yz)));
    return func_4(~vec4<i32>(arg_0.x, firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_3, arg_3, arg_0.x), vec3<i32>(2147483647i, arg_0.x, -1i))), arg_3, func_4(-vec4<i32>(arg_0.x, arg_3, arg_3, -1296i), _wgslsmith_f_op_f32(min(var_0, -340f)), ~arg_1, vec2<i32>(-12802i, arg_0.x)).b), _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(-func_4(-vec4<i32>(arg_0.x, arg_3, arg_3, arg_3), _wgslsmith_f_op_f32(var_0 - var_0), u_input.a & 24067u, min(arg_0, vec2<i32>(0i, -2147483647i))).a.b.x)), arg_2.x, (~vec2<i32>(-9140i, arg_0.x) >> (~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.a), arg_2) % vec2<u32>(32u))) >> (vec2<u32>(_wgslsmith_div_u32(0u, _wgslsmith_clamp_u32(85739u, 0u, arg_1)), (arg_1 << (arg_1 % 32u)) | firstTrailingBit(u_input.a)) % vec2<u32>(32u))).a;
}

fn func_6(arg_0: Struct_3, arg_1: vec4<f32>) -> Struct_3 {
    global0 = array<bool, 19>();
    var var_0 = Struct_4(reverseBits(_wgslsmith_dot_vec3_i32(~_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, arg_0.b.b, arg_0.a), vec3<i32>(2147483647i, arg_0.b.b, arg_0.a)), reverseBits(vec3<i32>(arg_0.a, arg_0.b.b, -15063i)))));
    global0 = array<bool, 19>();
    var var_1 = vec4<bool>(all(vec2<bool>(true, false)), !global0[_wgslsmith_index_u32(~func_5(vec2<i32>(1i, 1i), ~9436u, vec2<u32>(u_input.a, u_input.a), ~arg_0.a).a, 19u)], u_input.a <= func_2(_wgslsmith_div_f32(-674f, arg_0.b.a.b.x), ~(~u_input.a), 0i).a, !(any(select(vec4<bool>(global0[_wgslsmith_index_u32(18793u, 19u)], true, true, false), vec4<bool>(true, true, global0[_wgslsmith_index_u32(arg_0.b.a.a, 19u)], global0[_wgslsmith_index_u32(4294967295u, 19u)]), vec4<bool>(arg_0.b.c.x, false, false, false))) | false));
    var var_2 = Struct_1(_wgslsmith_add_u32(1u, u_input.a), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-1095f, 143f), arg_0.b.a.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(121f * 621f) - _wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.b.a.b.x - -2710f)))));
    return Struct_3(1i, func_4(-_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(0i, var_0.a, 29973i, -2147483647i), vec4<i32>(1i, var_0.a, 28159i, 0i)), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, var_0.a, arg_0.a, -2147483647i), vec4<i32>(arg_0.b.b, -8928i, -45811i, var_0.a))), arg_0.b.a.b.x, ~func_5(max(vec2<i32>(20392i, var_0.a), vec2<i32>(var_0.a, 12815i)), u_input.a, _wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.b.a.a, 1u), vec2<u32>(var_2.a, 36509u)), 13830i).a, ~vec2<i32>(var_0.a, var_0.a) << (vec2<u32>(0u, abs(3585u)) % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(Struct_3(max(abs(-1i), 2147483647i) & (-838i << (u_input.a % 32u)), Struct_2(func_5(-vec2<i32>(18089i, 20854i), u_input.a, func_1(Struct_1(1u, vec3<f32>(-807f, 238f, 280f)), Struct_1(u_input.a, vec3<f32>(542f, -1000f, 752f))), _wgslsmith_div_i32(1400i, -2147483647i)), 1i, vec3<bool>(false != global0[_wgslsmith_index_u32(1u, 19u)], !global0[_wgslsmith_index_u32(u_input.a, 19u)], true))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1684f, 618f, -596f, 1693f) - vec4<f32>(649f, 620f, -324f, 355f)) - vec4<f32>(-470f, -228f, 1714f, 204f)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(699f, -821f, 873f, -687f)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(550f)), _wgslsmith_f_op_f32(2062f - 1000f), -635f, _wgslsmith_f_op_f32(min(335f, -122f))) - vec4<f32>(153f, _wgslsmith_f_op_f32(571f - 1197f), _wgslsmith_f_op_f32(step(1605f, -1806f)), _wgslsmith_f_op_f32(step(1000f, 297f)))))));
    global0 = array<bool, 19>();
    global0 = array<bool, 19>();
    var var_1 = _wgslsmith_sub_u32(36131u, func_6(func_6(Struct_3(_wgslsmith_add_i32(var_0.a, 2147483647i), var_0.b), vec4<f32>(_wgslsmith_f_op_f32(var_0.b.a.b.x + 860f), 219f, _wgslsmith_div_f32(1600f, var_0.b.a.b.x), var_0.b.a.b.x)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.a.b.x, var_0.b.a.b.x, -386f, var_0.b.a.b.x))))))).b.a.a);
    global0 = array<bool, 19>();
    global0 = array<bool, 19>();
    let var_2 = min(vec2<u32>(42550u, var_0.b.a.a), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(~1u, ~var_0.b.a.a), _wgslsmith_sub_vec2_u32(vec2<u32>(657u, var_0.b.a.a), abs(vec2<u32>(1u, 567u)))), _wgslsmith_mult_u32(var_0.b.a.a, select(select(var_0.b.a.a, u_input.a, global0[_wgslsmith_index_u32(1u, 19u)]), 1u, any(var_0.b.c)))));
    var_1 = min(41043u, 1u);
    var_1 = _wgslsmith_clamp_u32(u_input.a, func_3(var_0.b.a, ~vec3<u32>(var_2.x, 49511u, var_0.b.a.a)) << (0u % 32u), ~4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(~vec2<i32>(_wgslsmith_mult_i32(1i, var_0.b.b), firstTrailingBit(var_0.a)), select(vec2<i32>(var_0.b.b, 1i), -(~vec2<i32>(var_0.a, -11753i)), vec2<bool>(func_6(Struct_3(var_0.b.b, Struct_2(Struct_1(1u, var_0.b.a.b), var_0.b.b, vec3<bool>(false, true, true))), vec4<f32>(610f, -964f, var_0.b.a.b.x, 398f)).b.c.x, 11298i < var_0.b.b))), ~var_0.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(var_0.b.a.b)))), var_0.b.a.b), func_4(~(~vec4<i32>(var_0.a, var_0.b.b, var_0.a, var_0.b.b)), _wgslsmith_f_op_f32(-var_0.b.a.b.x), 0u, vec2<i32>(-var_0.a, firstLeadingBit(-10750i))).a.a << (var_2.x % 32u), _wgslsmith_mod_vec2_u32(vec2<u32>(firstTrailingBit(~25920u), max(u_input.a, 25344u) & func_2(-418f, 17361u, var_0.a).a), var_2));
}

