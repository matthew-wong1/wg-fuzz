struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<bool>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 31>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: vec2<i32>, arg_2: vec3<i32>, arg_3: Struct_1) -> vec4<bool> {
    global0 = array<bool, 31>();
    var var_0 = arg_3;
    let var_1 = Struct_1(var_0.c.x, var_0.b ^ _wgslsmith_sub_u32(var_0.b, 10937u), select(!select(vec4<bool>(global0[_wgslsmith_index_u32(arg_3.b, 31u)], false, var_0.a, false), vec4<bool>(global0[_wgslsmith_index_u32(var_0.b, 31u)], true, false, arg_3.c.x), true), vec4<bool>(false, false, var_0.a, all(arg_3.c)), select(!any(var_0.c.wzx), !arg_3.a, !(arg_3.b == 46903u))), vec3<i32>(26783i, 18055i, ~arg_0));
    var var_2 = !global0[_wgslsmith_index_u32(~(_wgslsmith_mod_u32(~65591u, var_1.b) << (~abs(4294967295u) % 32u)), 31u)];
    var var_3 = Struct_1(arg_3.a, 50606u, select(select(var_0.c, arg_3.c, var_0.a), select(!vec4<bool>(var_0.a, true, true, arg_3.c.x), vec4<bool>(true, true, true, true), true), var_0.c.x), vec3<i32>(_wgslsmith_sub_i32(abs(-u_input.a.x), arg_0), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.x, arg_0 >> (5074u % 32u), -arg_0, select(0i, 0i, false)), max(vec4<i32>(0i, var_1.d.x, 26205i, 368i), vec4<i32>(arg_1.x, arg_2.x, 2147483647i, arg_3.d.x))), ~reverseBits(-u_input.a.x)));
    return vec4<bool>(var_1.b <= ~(~1u), true, any(!(!select(vec2<bool>(var_1.a, false), var_0.c.ww, vec2<bool>(false, true)))), true);
}

fn func_2(arg_0: u32) -> vec3<u32> {
    var var_0 = -1i;
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(342f * 356f)));
    var var_2 = all(!func_3(_wgslsmith_sub_i32(u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(7308i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))), u_input.a.yy, countOneBits(reverseBits(vec3<i32>(-20083i, 2147483647i, 22044i))), Struct_1(false, arg_0, vec4<bool>(global0[_wgslsmith_index_u32(arg_0, 31u)], false, true, true), firstLeadingBit(vec3<i32>(u_input.a.x, 1i, 1i)))));
    var var_3 = Struct_1(true, _wgslsmith_clamp_u32(arg_0, min(arg_0, arg_0), arg_0), !func_3(28789i, firstLeadingBit(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.yx)), _wgslsmith_mult_vec3_i32(min(u_input.a, vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x)), u_input.a), Struct_1(true, abs(arg_0), vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(0u, 31u)]), u_input.a)), _wgslsmith_sub_vec3_i32(countOneBits(u_input.a), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, select(26821i, u_input.a.x, global0[_wgslsmith_index_u32(arg_0, 31u)]), min(2147483647i, 0i)), vec3<i32>(countOneBits(u_input.a.x), 1i << (arg_0 % 32u), -2147483647i))));
    let var_4 = Struct_1(true, ~abs(87982u), select(!vec4<bool>(true, true, any(var_3.c.ywz), false), vec4<bool>(var_3.b <= 3527u, _wgslsmith_mod_u32(var_3.b, arg_0) <= _wgslsmith_sub_u32(arg_0, 19722u), any(vec4<bool>(true, false, var_3.c.x, var_3.a)), false), vec4<bool>(!global0[_wgslsmith_index_u32(~var_3.b, 31u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(30676u, arg_0, var_3.b, 3233u), vec4<u32>(4294967295u, arg_0, 27662u, var_3.b), vec4<u32>(139765u, 0u, 1u, 1u)), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0, 70205u, 23602u, 26291u), vec4<u32>(var_3.b, arg_0, arg_0, arg_0))), 31u)], false, all(vec3<bool>(true, true, true)))), -u_input.a);
    return vec3<u32>(min(~_wgslsmith_sub_u32(var_3.b, 33772u), var_3.b), min(var_4.b ^ min(select(0u, 28035u, var_3.a), var_3.b), ~var_3.b), (_wgslsmith_mod_u32(12540u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 10236u, 4294967295u), vec3<u32>(1u, arg_0, 26568u))) & ~var_4.b) ^ (arg_0 >> (~abs(var_3.b) % 32u)));
}

fn func_1() -> bool {
    global0 = array<bool, 31>();
    let var_0 = vec3<i32>(min(u_input.a.x, -_wgslsmith_mod_i32(31618i, u_input.a.x)), abs(-u_input.a.x), reverseBits(u_input.a.x)) ^ firstLeadingBit(-(vec3<i32>(15300i, u_input.a.x, 0i) << (func_2(67319u) % vec3<u32>(32u))));
    global0 = array<bool, 31>();
    var var_1 = -var_0.x;
    return !(true | (_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1515f * 521f), _wgslsmith_f_op_f32(select(-755f, 647f, global0[_wgslsmith_index_u32(0u, 31u)])), true)) < _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -810f)))));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_add_vec3_u32(~abs(firstTrailingBit(vec3<u32>(77361u, arg_0.b, 0u) | vec3<u32>(arg_0.b, arg_0.b, arg_0.b))), ~vec3<u32>(1u, select(0u, 4294967295u, global0[_wgslsmith_index_u32(1u, 31u)]) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(arg_0.b, 0u)), ~(~20454u)));
    var var_1 = _wgslsmith_sub_i32(-u_input.a.x, -firstLeadingBit(arg_0.d.x));
    var var_2 = min(_wgslsmith_mod_vec4_u32(~_wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(0u, var_0.x, arg_0.b, var_0.x)), vec4<u32>(var_0.x, var_0.x, 3966u, arg_0.b), reverseBits(vec4<u32>(arg_0.b, 16018u, 4294967295u, 68258u))), ~select(abs(vec4<u32>(1u, 1u, 0u, var_0.x)), vec4<u32>(arg_0.b, arg_0.b, 0u, 1u), vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 31u)], global0[_wgslsmith_index_u32(57982u, 31u)], global0[_wgslsmith_index_u32(var_0.x, 31u)]))), ~(~vec4<u32>(max(4294967295u, 4294967295u), reverseBits(var_0.x), ~var_0.x, countOneBits(var_0.x))));
    let var_3 = var_0.zy;
    var var_4 = arg_0;
    return Struct_1(global0[_wgslsmith_index_u32(var_3.x, 31u)], 35276u, vec4<bool>(!var_4.c.x, true, !all(!arg_0.c.www), !any(vec4<bool>(var_4.c.x, false, arg_0.a, arg_0.a)) | true), vec3<i32>(max(-(~u_input.a.x), var_4.d.x), arg_0.d.x, u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(any(vec2<bool>(global0[_wgslsmith_index_u32(~24128u, 31u)], true)), countOneBits(4294967295u ^ select(1u, 4294967295u, false)), select(vec4<bool>(any(vec3<bool>(false, global0[_wgslsmith_index_u32(38137u, 31u)], false)), true, all(vec3<bool>(false, global0[_wgslsmith_index_u32(0u, 31u)], global0[_wgslsmith_index_u32(4294967295u, 31u)])), any(vec3<bool>(global0[_wgslsmith_index_u32(1u, 31u)], global0[_wgslsmith_index_u32(0u, 31u)], false))), select(select(vec4<bool>(global0[_wgslsmith_index_u32(1u, 31u)], false, true, global0[_wgslsmith_index_u32(81343u, 31u)]), vec4<bool>(global0[_wgslsmith_index_u32(26020u, 31u)], global0[_wgslsmith_index_u32(3847u, 31u)], true, global0[_wgslsmith_index_u32(1u, 31u)]), global0[_wgslsmith_index_u32(21151u, 31u)]), vec4<bool>(global0[_wgslsmith_index_u32(24297u, 31u)], global0[_wgslsmith_index_u32(0u, 31u)], global0[_wgslsmith_index_u32(0u, 31u)], true), global0[_wgslsmith_index_u32(1u, 31u)]), select(select(vec4<bool>(true, global0[_wgslsmith_index_u32(23925u, 31u)], false, true), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 31u)], global0[_wgslsmith_index_u32(0u, 31u)], global0[_wgslsmith_index_u32(0u, 31u)], false), vec4<bool>(true, false, false, false)), !vec4<bool>(global0[_wgslsmith_index_u32(0u, 31u)], global0[_wgslsmith_index_u32(4294967295u, 31u)], global0[_wgslsmith_index_u32(13455u, 31u)], false), func_1())), _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(-58713i, u_input.a.x, u_input.a.x)), abs(u_input.a)), -u_input.a)));
    global0 = array<bool, 31>();
    var var_1 = Struct_1(!any(vec3<bool>(global0[_wgslsmith_index_u32(var_0.b, 31u)] && global0[_wgslsmith_index_u32(var_0.b, 31u)], func_1(), var_0.a)), _wgslsmith_mult_u32(var_0.b | var_0.b, 0u), !vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~34790u, 4294967295u), 31u)], global0[_wgslsmith_index_u32(var_0.b, 31u)], false, true), ~var_0.d);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1033f, -1000f)), _wgslsmith_f_op_f32(-229f - 2527f))) > _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * -633f), _wgslsmith_f_op_f32(select(-887f, 1512f, true))))), ~(~40021u), var_0.c, func_4(Struct_1(func_1(), var_0.b >> (~1u % 32u), !(!vec4<bool>(var_0.a, var_0.a, global0[_wgslsmith_index_u32(var_0.b, 31u)], false)), _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(var_1.d, var_1.d), vec3<i32>(u_input.a.x, -2147483647i, 32541i)))).d);
    let var_3 = var_0.d.x << (15720u % 32u);
    let var_4 = Struct_1(true, _wgslsmith_sub_u32(~var_2.b, _wgslsmith_dot_vec2_u32(vec2<u32>(21764u >> (var_1.b % 32u), ~var_2.b), vec2<u32>(56104u, var_1.b))), var_2.c, _wgslsmith_div_vec3_i32(var_0.d, -_wgslsmith_sub_vec3_i32(var_1.d, vec3<i32>(75820i, var_3, -1i)) | vec3<i32>(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(6527i, var_1.d.x, var_3, u_input.a.x), vec4<i32>(-1i, 1i, u_input.a.x, -2147483647i)), _wgslsmith_dot_vec4_i32(vec4<i32>(-9667i, var_3, var_2.d.x, 1i), vec4<i32>(var_2.d.x, -1i, 47583i, 1i)))));
    var var_5 = countOneBits(var_1.d.yy) | func_4(var_4).d.zy;
    var_5 = abs(vec2<i32>(~2147483647i, var_2.d.x)) & u_input.a.yx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-1f), vec3<u32>(_wgslsmith_sub_u32(~(~62624u), _wgslsmith_mod_u32(var_0.b, var_4.b) ^ (var_2.b ^ 1u)), _wgslsmith_clamp_u32(max(var_4.b, firstTrailingBit(var_4.b)), 33193u, var_2.b), _wgslsmith_mod_u32(var_1.b, 0u)), _wgslsmith_mult_vec2_i32(var_4.d.xz, var_2.d.xx));
}

