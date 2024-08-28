struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec2<i32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: u32,
    d: Struct_2,
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

var<private> global0: Struct_2 = Struct_2(Struct_1(vec3<u32>(4294967295u, 16380u, 85096u)), vec4<u32>(4294967295u, 47382u, 0u, 10977u), vec4<f32>(-237f, 1290f, 1177f, -879f), vec2<i32>(2147483647i, 0i));

var<private> global1: u32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> bool {
    let var_0 = global0.b;
    let var_1 = Struct_2(global0.a, ~(~(~select(global0.b, vec4<u32>(0u, var_0.x, 40855u, 1u), vec4<bool>(true, false, false, false)))), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-2203f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.x * global0.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1633f, _wgslsmith_f_op_f32(-2058f * -1254f)))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-336f, _wgslsmith_f_op_f32(global0.c.x + global0.c.x)))), _wgslsmith_f_op_f32(abs(782f))), global0.d);
    global0 = Struct_2(var_1.a, min(var_1.b, var_1.b), _wgslsmith_f_op_vec4_f32(global0.c + var_1.c), -vec2<i32>(-global0.d.x & -74712i, ~(var_1.d.x << (42626u % 32u))));
    return all(select(vec2<bool>(var_1.c.x >= _wgslsmith_f_op_f32(f32(-1f) * -1236f), all(vec4<bool>(true, true, false, false))), !select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true)), true));
}

fn func_4(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_3) -> u32 {
    let var_0 = vec3<bool>(all(vec2<bool>(!(global0.d.x == 2147483647i), any(!vec3<bool>(arg_0, arg_0, false)))), !arg_0, global0.d.x <= 1i);
    var var_1 = _wgslsmith_div_i32(firstTrailingBit(-16300i), arg_2.d.d.x | -44730i);
    var var_2 = arg_2.d;
    global0 = arg_2.b;
    let var_3 = _wgslsmith_f_op_f32(-2159f + arg_2.d.c.x);
    return firstTrailingBit(~arg_1.x);
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_3) -> i32 {
    global1 = func_4(func_3(), vec4<u32>(u_input.a, _wgslsmith_mult_u32(62110u, ~u_input.a), 4294967295u, reverseBits(42108u)), Struct_3(~18762i, Struct_2(global0.a, global0.b, arg_1.b.c, _wgslsmith_mult_vec2_i32(-arg_1.d.d, arg_1.d.d)), u_input.a, Struct_2(Struct_1(global0.b.zww), (vec4<u32>(9084u, arg_1.b.b.x, 4294967295u, arg_1.b.b.x) ^ global0.b) << (vec4<u32>(4294967295u, u_input.a, global0.b.x, 0u) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(678f, arg_1.b.c.x, -132f, -1599f))), _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(arg_1.d.d, vec2<i32>(6260i, arg_1.d.d.x)), vec2<i32>(1i, arg_1.d.d.x)))));
    global0 = arg_1.d;
    var var_0 = vec3<i32>(41689i, 2147483647i, reverseBits(global0.d.x));
    var var_1 = Struct_1(global0.b.zxz);
    var_1 = Struct_1(~_wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(42359u, u_input.a, 39435u)) << (~vec3<u32>(4294967295u, arg_1.b.a.a.x, 9412u) % vec3<u32>(32u)), min(countOneBits(arg_1.d.b.yzx), vec3<u32>(global0.a.a.x, 54020u, 4294967295u))));
    return max(global0.d.x, -abs(1i));
}

fn func_1() -> Struct_3 {
    let var_0 = ~_wgslsmith_sub_vec4_i32(min(vec4<i32>(global0.d.x, global0.d.x, global0.d.x, global0.d.x) << ((global0.b ^ global0.b) % vec4<u32>(32u)), abs(vec4<i32>(-17016i, global0.d.x, global0.d.x, -20839i)) & (vec4<i32>(global0.d.x, 4968i, 25363i, 2147483647i) >> (vec4<u32>(u_input.a, 19715u, global0.b.x, global0.b.x) % vec4<u32>(32u)))), max(vec4<i32>(-1i) * -vec4<i32>(-2147483647i, -2147483647i, 12455i, global0.d.x), select(vec4<i32>(-42549i, global0.d.x, global0.d.x, global0.d.x) & vec4<i32>(-22525i, global0.d.x, -38077i, global0.d.x), -vec4<i32>(global0.d.x, -1i, global0.d.x, global0.d.x), true)));
    global1 = ~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(~(13608u & u_input.a), u_input.a), global0.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(5431u, global0.a.a.x), global0.b.zw));
    var var_1 = Struct_1(vec3<u32>(u_input.a, 53882u, _wgslsmith_div_u32(_wgslsmith_div_u32(70695u, _wgslsmith_dot_vec4_u32(global0.b, global0.b)), 0u)));
    var var_2 = u_input.a;
    var_2 = global0.b.x << (~var_1.a.x % 32u);
    return Struct_3(_wgslsmith_dot_vec4_i32(vec4<i32>(~global0.d.x, func_2(global0.c.xxw, Struct_3(var_0.x, Struct_2(global0.a, vec4<u32>(global0.b.x, var_1.a.x, 1u, 4294967295u), vec4<f32>(-1450f, 376f, -1811f, -1000f), global0.d), 33742u, Struct_2(Struct_1(global0.a.a), vec4<u32>(0u, global0.a.a.x, var_1.a.x, 0u), vec4<f32>(621f, -1000f, global0.c.x, 1000f), vec2<i32>(-1i, var_0.x)))), -global0.d.x, ~(-12521i)), abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, 37361i, -300i, -2147483647i), _wgslsmith_mult_vec4_i32(var_0, var_0), vec4<i32>(-2147483647i, global0.d.x, -8495i, 1i)))), Struct_2(Struct_1(abs(var_1.a)), ~(~(~vec4<u32>(global0.a.a.x, 36543u, 4294967295u, var_1.a.x))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.c.x, -343f, _wgslsmith_f_op_f32(trunc(global0.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -892f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.c.x, global0.c.x, -1547f, global0.c.x), vec4<f32>(global0.c.x, 1000f, 1269f, -1000f)))))), min(select(vec2<i32>(2147483647i, 11895i), _wgslsmith_mult_vec2_i32(global0.d, vec2<i32>(var_0.x, var_0.x)), vec2<bool>(false, true)), vec2<i32>(var_0.x, global0.d.x) >> (~vec2<u32>(var_1.a.x, 4294967295u) % vec2<u32>(32u)))), _wgslsmith_mod_u32(select(~(var_1.a.x | u_input.a), countOneBits(_wgslsmith_mod_u32(0u, u_input.a)), all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true)))), 45949u), Struct_2(global0.a, _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 4294967295u, global0.a.a.x, 55817u), vec4<u32>(0u, 4294967295u, 8804u, u_input.a)) << (_wgslsmith_sub_vec4_u32(global0.b, global0.b) % vec4<u32>(32u)), (global0.b & global0.b) >> (firstTrailingBit(global0.b) % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0.c.x), 525f, global0.c.x, global0.c.x) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(275f, global0.c.x, 631f, -522f)) * vec4<f32>(global0.c.x, global0.c.x, global0.c.x, global0.c.x))), firstLeadingBit(-vec2<i32>(-19717i, -12434i)) << (~select(vec2<u32>(var_1.a.x, u_input.a), var_1.a.yy, false) % vec2<u32>(32u))));
}

fn func_5(arg_0: Struct_3, arg_1: i32) -> vec4<i32> {
    global0 = arg_0.d;
    let var_0 = vec4<u32>(67241u ^ u_input.a, u_input.a, _wgslsmith_mult_u32(func_4(all(vec4<bool>(true, true, true, false)), global0.b, Struct_3(2147483647i, Struct_2(global0.a, arg_0.b.b, global0.c, vec2<i32>(0i, arg_0.d.d.x)), 1u, Struct_2(arg_0.d.a, global0.b, arg_0.b.c, global0.d))), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(global0.b.wx, global0.b.zz), 0u)) & _wgslsmith_dot_vec3_u32(vec3<u32>(~0u, u_input.a ^ 0u, reverseBits(global0.b.x)), vec3<u32>(4294967295u, abs(4294967295u), _wgslsmith_mod_u32(1u, arg_0.d.b.x))), 11921u);
    global1 = ~6097u;
    let var_1 = 4294967295u;
    let var_2 = !(!select(select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), global0.d.x <= 0i), select(vec3<bool>(true, false, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false))), true));
    return vec4<i32>(i32(-1i) * -abs(reverseBits(global0.d.x)), arg_1, arg_0.a, firstTrailingBit(arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(_wgslsmith_div_vec4_i32(select(vec4<i32>(61261i, 2147483647i, global0.d.x, global0.d.x), -vec4<i32>(global0.d.x, -2162i, global0.d.x, global0.d.x), true), func_5(func_1(), -19850i)) | max(vec4<i32>(-13508i, firstLeadingBit(61732i), ~global0.d.x, _wgslsmith_div_i32(-2147483647i, global0.d.x)), max(vec4<i32>(global0.d.x, 2147483647i, -10475i, global0.d.x) | vec4<i32>(-2147483647i, 68934i, global0.d.x, global0.d.x), vec4<i32>(-30292i, 46053i, -17061i, -1i))));
    var var_1 = 1u;
    var var_2 = (_wgslsmith_div_u32(~83681u, global0.a.a.x) >> (~15077u % 32u)) < _wgslsmith_dot_vec3_u32(reverseBits(~global0.b.yxx), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, global0.a.a.x | 15290u, global0.b.x << (u_input.a % 32u)), global0.a.a));
    let var_3 = !(!select(!select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, true), global0.c.x <= _wgslsmith_f_op_f32(select(-485f, 1150f, true))));
    var var_4 = firstLeadingBit(global0.b) | vec4<u32>(select(1u, u_input.a, true), firstLeadingBit(global0.b.x), _wgslsmith_dot_vec2_u32(~(global0.b.zx >> (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u))), countOneBits(global0.a.a.yy)), 1u);
    let var_5 = 10556u;
    let x = u_input.a;
    s_output = StorageBuffer(var_5);
}

