struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: vec4<bool>,
    e: f32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: f32, arg_1: bool) -> vec3<bool> {
    var var_0 = arg_0;
    global0 = array<u32, 24>();
    let var_1 = !(!all(vec4<bool>(false | arg_1, all(vec3<bool>(false, false, false)), false, any(vec2<bool>(false, false)))));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -487f);
    var var_2 = Struct_1(u_input.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -172f)))), vec4<u32>(~9569u, global0[_wgslsmith_index_u32(~86918u, 24u)], 1u, select(0u, u_input.b.x, true)), vec4<bool>(any(!vec3<bool>(true, var_1, true)), var_1, true, true), _wgslsmith_f_op_f32(f32(-1f) * -605f));
    return !vec3<bool>(var_1, true, var_2.d.x);
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    var var_0 = select(select(arg_3.d.ywx, func_3(-1000f, true), !vec3<bool>(true, func_3(arg_2.e, false).x, all(vec3<bool>(arg_2.d.x, arg_3.d.x, false)))), select(select(arg_2.d.xyx, vec3<bool>(arg_3.d.x, true, false), true), select(func_3(arg_2.b, false & arg_2.d.x), vec3<bool>(true, true, true), all(arg_2.d.zzz)), arg_3.d.zwy), false);
    let var_1 = Struct_2(var_0.x);
    let var_2 = var_1.a;
    var var_3 = Struct_3(arg_2.b);
    let var_4 = -2147483647i;
    return true;
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(select(abs(vec4<i32>(2147483647i, -11657i, -2147483647i, -7996i)), vec4<i32>(13917i, -21441i, -46735i, -1i), func_2(Struct_2(false), -29677i, Struct_1(u_input.b.x, -260f, vec4<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 24u)], u_input.a.x, global0[_wgslsmith_index_u32(52061u, 24u)], 52110u), vec4<bool>(false, true, true, true), -467f), Struct_1(73348u, -265f, vec4<u32>(36497u, 67025u, 4294967295u, u_input.a.x), vec4<bool>(true, false, true, true), 409f))), ~vec4<i32>(4111i, -2147483647i, -1i, 2147483647i)), vec4<i32>(1i, max(abs(-1i), abs(0i)), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), ~vec3<i32>(-49601i, -9623i, 0i)), -1i)) | abs(vec4<i32>(1i, _wgslsmith_mult_i32(-10148i, 20239i) << (abs(global0[_wgslsmith_index_u32(12719u, 24u)]) % 32u), -7008i, -2147483647i >> (~4294967295u % 32u)));
    global0 = array<u32, 24>();
    var var_1 = Struct_2(true);
    global0 = array<u32, 24>();
    let var_2 = select(!vec3<bool>(var_1.a, true, true), select(select(vec3<bool>(func_3(487f, var_1.a).x, !var_1.a, var_1.a || var_1.a), select(!vec3<bool>(var_1.a, var_1.a, true), select(vec3<bool>(var_1.a, false, var_1.a), vec3<bool>(true, var_1.a, true), vec3<bool>(false, true, true)), !vec3<bool>(var_1.a, var_1.a, false)), select(vec3<bool>(var_1.a, var_1.a, true), func_3(236f, var_1.a), !vec3<bool>(true, var_1.a, true))), select(vec3<bool>(!var_1.a, true, true), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 24u)] != 21949u, var_1.a), !(!vec3<bool>(true, var_1.a, var_1.a))), !var_1.a), vec3<bool>((i32(-1i) * -47005i) > firstTrailingBit(-52071i), true, true));
    return Struct_1(global0[_wgslsmith_index_u32(u_input.b.x, 24u)], _wgslsmith_f_op_f32(-2302f + _wgslsmith_f_op_f32(step(-168f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(331f - 344f), _wgslsmith_f_op_f32(max(-1822f, 1000f))))))), u_input.b, !(!select(select(vec4<bool>(var_2.x, var_2.x, false, var_2.x), vec4<bool>(var_1.a, var_1.a, var_2.x, false), true), vec4<bool>(var_1.a, var_1.a, true, false), !vec4<bool>(false, var_2.x, var_2.x, var_1.a))), _wgslsmith_f_op_f32(f32(-1f) * -392f));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: Struct_1) -> Struct_3 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(abs(arg_0.a)));
    var var_1 = arg_3.d.xxz;
    var var_2 = _wgslsmith_dot_vec3_u32(~vec3<u32>(_wgslsmith_sub_u32(countOneBits(4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, global0[_wgslsmith_index_u32(25875u, 24u)], global0[_wgslsmith_index_u32(19730u, 24u)], 0u), arg_3.c)), 18994u, _wgslsmith_mod_u32(select(global0[_wgslsmith_index_u32(arg_3.c.x, 24u)], 4294967295u, arg_3.d.x), 32627u)), _wgslsmith_mod_vec3_u32(u_input.b.yxx, u_input.b.yzx));
    var var_3 = _wgslsmith_dot_vec3_i32(~(-min(vec3<i32>(15340i, -2147483647i, 1778i), vec3<i32>(8815i, 1i, 0i))) >> (u_input.b.xyx % vec3<u32>(32u)), abs(select(~vec3<i32>(-43920i, -33715i, 2147483647i), -vec3<i32>(7645i, 18877i, -9954i), false)) ^ -(~vec3<i32>(1i, 1i, 1i)));
    let var_4 = Struct_2(true);
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -372f)));
}

fn func_5(arg_0: Struct_3, arg_1: i32, arg_2: Struct_3) -> Struct_2 {
    var var_0 = max(vec4<u32>(43029u, ~74199u >> (~u_input.b.x % 32u), global0[_wgslsmith_index_u32(1u, 24u)], _wgslsmith_clamp_u32(29224u, u_input.c.x, 1u) ^ (global0[_wgslsmith_index_u32(7970u, 24u)] & 14208u)), firstLeadingBit(~_wgslsmith_add_vec4_u32(vec4<u32>(0u, 49563u, 17857u, 1u), vec4<u32>(1u, u_input.b.x, 41062u, 4294967295u)))) << (abs(u_input.b) % vec4<u32>(32u));
    var_0 = u_input.b;
    var var_1 = arg_2;
    var var_2 = Struct_2(func_1().d.x);
    var var_3 = func_1();
    return Struct_2(func_2(Struct_2(!(var_2.a | var_2.a)), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, arg_1) << (vec2<u32>(0u, global0[_wgslsmith_index_u32(1u, 24u)]) % vec2<u32>(32u)), -vec2<i32>(-1i, arg_1)), ~0i), Struct_1(var_3.a, _wgslsmith_f_op_f32(-499f + _wgslsmith_f_op_f32(arg_2.a + var_3.b)), vec4<u32>(min(var_3.a, var_0.x), ~1712u, var_0.x, 1u), !select(vec4<bool>(false, var_2.a, false, false), vec4<bool>(false, true, false, true), var_3.d), _wgslsmith_f_op_f32(arg_2.a * var_1.a)), Struct_1(var_3.c.x >> (firstTrailingBit(0u) % 32u), _wgslsmith_f_op_f32(f32(-1f) * -1140f), ~vec4<u32>(31000u, 4294967295u, 22526u, 31606u), !(!vec4<bool>(false, var_2.a, false, var_2.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.b * -339f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 24>();
    global0 = array<u32, 24>();
    let var_0 = func_5(func_4(Struct_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-556f + 1563f)))), Struct_2(false), vec2<bool>(all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false)), true), func_1()), ~(~(-35994i) << ((u_input.c.x & 8882u) % 32u)), func_4(func_4(func_4(func_4(Struct_3(-135f), Struct_2(false), vec2<bool>(false, true), Struct_1(4294967295u, 449f, vec4<u32>(u_input.b.x, 22043u, 101119u, 22403u), vec4<bool>(false, true, false, true), -1155f)), Struct_2(true), vec2<bool>(true, false), Struct_1(global0[_wgslsmith_index_u32(12007u, 24u)], -844f, u_input.b, vec4<bool>(false, false, false, true), 448f)), Struct_2(true), vec2<bool>(any(vec2<bool>(true, true)), true), Struct_1(global0[_wgslsmith_index_u32(4294967295u & u_input.a.x, 24u)], _wgslsmith_f_op_f32(round(111f)), ~u_input.b, vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(f32(-1f) * -334f))), Struct_2(func_1().d.x), select(func_3(-2045f, true).zy, vec2<bool>(true, true), vec2<bool>(true, true)), func_1()));
    global0 = array<u32, 24>();
    global0 = array<u32, 24>();
    var var_1 = true;
    global0 = array<u32, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(-301f, vec2<f32>(_wgslsmith_f_op_f32(1f - _wgslsmith_div_f32(-1335f, _wgslsmith_div_f32(-1284f, 140f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1267f, 990f, var_0.a)), _wgslsmith_div_f32(-369f, 1654f)))), u_input.a);
}

