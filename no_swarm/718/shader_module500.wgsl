struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec2<i32>,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(vec3<bool>(true, false, true), false, Struct_1(-524f)), Struct_2(vec3<bool>(true, true, false), false, Struct_1(956f)), Struct_2(vec3<bool>(false, false, false), true, Struct_1(-923f)), Struct_2(vec3<bool>(true, true, true), true, Struct_1(946f)), Struct_2(vec3<bool>(true, true, false), false, Struct_1(-752f)), Struct_2(vec3<bool>(false, false, false), true, Struct_1(-375f)), Struct_2(vec3<bool>(false, true, true), true, Struct_1(-2744f)), Struct_2(vec3<bool>(false, true, true), false, Struct_1(-879f)), Struct_2(vec3<bool>(true, false, true), false, Struct_1(-845f)), Struct_2(vec3<bool>(false, true, false), true, Struct_1(-144f)), Struct_2(vec3<bool>(true, true, false), false, Struct_1(-1297f)), Struct_2(vec3<bool>(true, true, true), true, Struct_1(-171f)), Struct_2(vec3<bool>(true, true, false), false, Struct_1(-1012f)), Struct_2(vec3<bool>(false, true, false), false, Struct_1(-2317f)), Struct_2(vec3<bool>(false, true, false), false, Struct_1(1137f)), Struct_2(vec3<bool>(false, false, false), true, Struct_1(-758f)), Struct_2(vec3<bool>(false, true, false), true, Struct_1(-1000f)), Struct_2(vec3<bool>(false, true, false), false, Struct_1(-631f)), Struct_2(vec3<bool>(true, false, false), true, Struct_1(1548f)), Struct_2(vec3<bool>(false, true, true), false, Struct_1(-1000f)), Struct_2(vec3<bool>(true, true, false), true, Struct_1(1571f)), Struct_2(vec3<bool>(false, false, true), true, Struct_1(-2110f)), Struct_2(vec3<bool>(true, false, true), false, Struct_1(-292f)), Struct_2(vec3<bool>(true, false, true), false, Struct_1(250f)), Struct_2(vec3<bool>(true, true, false), true, Struct_1(528f)), Struct_2(vec3<bool>(true, false, true), false, Struct_1(-729f)), Struct_2(vec3<bool>(true, true, true), false, Struct_1(619f)), Struct_2(vec3<bool>(true, true, false), false, Struct_1(-156f)), Struct_2(vec3<bool>(true, true, true), false, Struct_1(-1334f)), Struct_2(vec3<bool>(true, true, false), true, Struct_1(401f)), Struct_2(vec3<bool>(true, false, false), true, Struct_1(1050f)));

var<private> global1: Struct_1;

var<private> global2: u32 = 86547u;

var<private> global3: Struct_1;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<u32>) -> bool {
    var var_0 = select(_wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, u_input.a.x & 32564i, ~1i), vec3<i32>(_wgslsmith_add_i32(-1i, u_input.a.x), -1i, u_input.a.x & u_input.a.x), abs(vec3<i32>(26865i, u_input.a.x, 1i))), select(u_input.a, _wgslsmith_add_vec3_i32(u_input.a, vec3<i32>(17593i, 12406i, u_input.a.x)), true)), ~u_input.a, global3.a > _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.a * 2327f), 1f) - _wgslsmith_f_op_f32(ceil(-1206f))));
    let var_1 = Struct_1(595f);
    let var_2 = vec2<u32>(~0u, _wgslsmith_mult_u32(_wgslsmith_add_u32(reverseBits(1u), 0u), min(~(~arg_0.x), _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0.x, arg_0.x, 1u), max(vec3<u32>(84400u, 1u, 0u), vec3<u32>(15278u, 4294967295u, arg_0.x))))));
    let var_3 = global0[_wgslsmith_index_u32(countOneBits(~min(26259u, _wgslsmith_div_u32(abs(64394u), 25417u))), 31u)];
    global3 = var_3.c;
    return all(select(select(!vec3<bool>(true, var_3.b, false), vec3<bool>(false, any(vec4<bool>(var_3.a.x, var_3.b, false, false)), true), select(var_3.a, vec3<bool>(true, true, var_3.b), any(var_3.a.xy))), !(!select(vec3<bool>(true, true, false), vec3<bool>(var_3.b, var_3.b, var_3.a.x), var_3.b)), vec3<bool>(u_input.a.x < ~(-49587i), true, !var_3.b)));
}

fn func_2() -> vec3<bool> {
    global0 = array<Struct_2, 31>();
    var var_0 = vec2<bool>(select(true, true, select(true, any(vec2<bool>(true, true)), all(vec2<bool>(true, true)))), true);
    global0 = array<Struct_2, 31>();
    var var_1 = select(vec2<bool>(func_3(vec2<u32>(1u, 1u)), any(!vec2<bool>(var_0.x, var_0.x))), !(!vec2<bool>(var_0.x, func_3(vec2<u32>(29195u, 4294967295u)))), false);
    let var_2 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(206f, global3.a, 139f, _wgslsmith_f_op_f32(select(-648f, global3.a, var_0.x)))));
    return select(!select(!(!vec3<bool>(var_0.x, false, false)), vec3<bool>(false, true, var_0.x | var_0.x), !select(vec3<bool>(var_0.x, var_1.x, var_1.x), vec3<bool>(true, false, var_1.x), true)), vec3<bool>(all(select(vec2<bool>(var_1.x, var_0.x), vec2<bool>(true, true), !var_0.x)), select(false, var_0.x, true), _wgslsmith_f_op_f32(exp2(var_2.x)) < _wgslsmith_f_op_f32(-global3.a)), !select(true, !var_0.x, all(vec3<bool>(false, true, var_0.x))));
}

fn func_1(arg_0: vec3<u32>, arg_1: f32) -> vec4<i32> {
    global2 = abs(arg_0.x);
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a - _wgslsmith_f_op_f32(abs(1517f))))));
    let var_1 = var_0;
    let var_2 = _wgslsmith_mult_u32(abs(~(~53563u)), 31636u);
    let var_3 = any(func_2()) && (firstTrailingBit(1u & arg_0.x) == _wgslsmith_sub_u32(~(~52557u), arg_0.x));
    return -(~vec4<i32>(-1i, u_input.a.x, _wgslsmith_mod_i32(i32(-1i) * -2147483647i, -1i), reverseBits(u_input.a.x)));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1) -> StorageBuffer {
    var var_0 = vec3<i32>(arg_0.x, 0i, ~(arg_0.x & u_input.a.x)) | _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(-arg_0.wzx, func_1(vec3<u32>(42051u, 64067u, 4294967295u), 669f).wzx), firstLeadingBit(~vec3<i32>(9101i, u_input.a.x, -2147483647i)), u_input.a), arg_0.zwx);
    let var_1 = vec2<i32>(arg_0.x, u_input.a.x);
    let var_2 = global0[_wgslsmith_index_u32(min(min(0u, 22338u), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_add_u32(~16133u, firstLeadingBit(0u)), ~select(31892u, 5393u, true), ~(~4294967295u)), ~(~select(vec3<u32>(0u, 0u, 50569u), vec3<u32>(0u, 1u, 52080u), vec3<bool>(false, true, false))))), 31u)];
    let var_3 = global0[_wgslsmith_index_u32(~10120u, 31u)];
    var var_4 = firstTrailingBit(reverseBits(~(_wgslsmith_mult_u32(0u, 7426u) & select(0u, 50447u, var_3.a.x))));
    return StorageBuffer(_wgslsmith_dot_vec4_u32(~abs(vec4<u32>(1u, 1u, 1u, 1u)), ~reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 7073u, 0u, 1u), vec4<u32>(7422u, 6086u, 0u, 2469u), vec4<u32>(44642u, 41884u, 4840u, 1u)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_2.c.a, var_2.c.a, var_3.c.a))))), vec2<i32>(var_1.x, _wgslsmith_div_i32(~(-1i), var_0.x)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1602f, global1.a, 1000f) + vec3<f32>(-1241f, -463f, 440f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(567f, global3.a, 447f))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -591f, 719f), vec3<f32>(-1381f, global1.a, global3.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a, var_3.c.a, 1000f) + vec3<f32>(var_2.c.a, 687f, -1938f)), var_3.a.x))))), abs(_wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(61963u, 0u, 1u, 0u), vec4<u32>(51356u, 68014u, 0u, 4294967295u), vec4<u32>(1u, 13743u, 100322u, 4294967295u)), ~vec4<u32>(70762u, 1u, 4294967295u, 71308u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    var var_1 = _wgslsmith_div_f32(global1.a, _wgslsmith_f_op_f32(-global3.a));
    var var_2 = false;
    var var_3 = max(u_input.a.zx, u_input.a.zz);
    var var_4 = global0[_wgslsmith_index_u32(~23235u, 31u)];
    let x = u_input.a;
    s_output = func_4(func_1(vec3<u32>(1u, firstLeadingBit(1u), _wgslsmith_dot_vec2_u32(vec2<u32>(36661u, 4735u), min(vec2<u32>(17539u, 18360u), vec2<u32>(59745u, 30521u)))), -1000f), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_4.c.a * -116f), -2080f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(global1.a)))))));
}

