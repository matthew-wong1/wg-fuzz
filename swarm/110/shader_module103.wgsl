struct Struct_1 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 5>;

var<private> global1: Struct_1;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_2) -> vec2<i32> {
    let var_0 = Struct_2(1000f, Struct_1(abs(~(~global1.a)), global1.b));
    global0 = array<vec2<f32>, 5>();
    let var_1 = global1.b.x;
    var var_2 = firstTrailingBit(29154u << (select(_wgslsmith_div_u32(~var_0.b.a, 46219u), 1u << (global1.a % 32u), true) % 32u));
    global0 = array<vec2<f32>, 5>();
    return vec2<i32>(_wgslsmith_div_i32(_wgslsmith_div_i32(u_input.a, _wgslsmith_div_i32(8328i, u_input.a)) & _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 1i, u_input.a, u_input.a), ~vec4<i32>(2147483647i, 6671i, u_input.a, -68596i)), firstLeadingBit(-firstTrailingBit(u_input.a))), -u_input.a);
}

fn func_2(arg_0: i32) -> Struct_2 {
    let var_0 = any(!vec4<bool>(any(vec3<bool>(false, false, false)), select(false, true, true), true, true)) | select(true, !all(vec2<bool>(false, true)) || true, all(select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), true)));
    var var_1 = _wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(~(-vec2<i32>(arg_0, 0i)) & firstTrailingBit(-vec2<i32>(17477i, arg_0)), func_3(Struct_2(_wgslsmith_f_op_f32(-613f * 266f), Struct_1(4294967295u, global1.b))), func_3(Struct_2(_wgslsmith_f_op_f32(max(609f, 899f)), Struct_1(global1.a, vec4<u32>(1u, global1.a, 42422u, 111091u))))), firstLeadingBit(-vec2<i32>(-1i, countOneBits(arg_0))));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -274f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(541f, -322f)), -1000f, select(false, true, var_0))), var_0)))), Struct_1(_wgslsmith_mod_u32(u_input.b, 1u), global1.b));
    var var_3 = var_2.b;
    var var_4 = ~vec4<i32>(14173i, 1i & arg_0, ~(var_1.x | reverseBits(0i)), -21614i);
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a) * _wgslsmith_f_op_f32(f32(-1f) * -536f)))), Struct_1(65393u, vec4<u32>(reverseBits(var_2.b.a), ~0u, var_2.b.b.x, global1.a & 28545u) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(65963u, global1.a, 49427u, 49002u), vec4<u32>(var_2.b.a, var_2.b.a, global1.a, 0u) >> (vec4<u32>(var_3.a, 1u, 19935u, var_3.a) % vec4<u32>(32u)), reverseBits(vec4<u32>(var_2.b.b.x, u_input.b, 1u, 6252u))) % vec4<u32>(32u))));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: vec2<f32>) -> vec3<i32> {
    var var_0 = func_2(41620i | ~firstTrailingBit(countOneBits(arg_1)));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-arg_2.x), Struct_1(~_wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.b, 18299u), ~arg_0.a), ~arg_0.b));
    global1 = func_2(arg_1).b;
    global0 = array<vec2<f32>, 5>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1909f));
    return _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(-_wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(arg_1, -1i, -1i)), firstTrailingBit(vec3<i32>(-23592i, -9074i, 1208i))), _wgslsmith_sub_vec3_i32(vec3<i32>(i32(-1i) * -2147483647i, max(2147483647i, 2147483647i), u_input.a), vec3<i32>(58302i, arg_1, _wgslsmith_sub_i32(9053i, u_input.a)))), -vec3<i32>(_wgslsmith_sub_i32(arg_1, -1i), u_input.a, -10217i));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<i32>) -> Struct_2 {
    var var_0 = -vec4<i32>(abs(arg_2.x), reverseBits(14463i), _wgslsmith_dot_vec2_i32(arg_2.zy & ~arg_2.yy, abs(-arg_2.yx)), _wgslsmith_dot_vec2_i32(arg_2.xz, ~(~arg_2.zy)));
    var var_1 = vec2<u32>(_wgslsmith_add_u32(min(4294967295u, 1u), 0u ^ (abs(arg_1.b.b.x) >> (countOneBits(u_input.b) % 32u))), ~_wgslsmith_div_u32(4294967295u, u_input.b));
    let var_2 = func_3(func_2(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(20973i, -15647i, arg_2.x, var_0.x) ^ vec4<i32>(u_input.a, -1i, -79062i, 35575i), _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, 47963i, var_0.x, 18029i), vec4<i32>(-1i, 18309i, var_0.x, 1i))), vec4<i32>(func_1(arg_1.b, arg_2.x, global0[_wgslsmith_index_u32(0u, 5u)]).x, -2147483647i, 1i, firstTrailingBit(1i)))));
    global1 = Struct_1(87533u >> (~arg_1.b.b.x % 32u), vec4<u32>(_wgslsmith_mult_u32(abs(abs(arg_1.b.b.x)), countOneBits(_wgslsmith_clamp_u32(351u, 0u, u_input.b))), arg_0.a, firstLeadingBit(abs(countOneBits(24432u))), arg_0.a));
    var var_3 = arg_1.b;
    return Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(arg_1.a)))))), arg_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_1(2691u, _wgslsmith_mod_vec4_u32(~global1.b, global1.b)), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-302f))))), Struct_1(u_input.b, (vec4<u32>(u_input.b, 36865u, 0u, 1u) >> (global1.b % vec4<u32>(32u))) & vec4<u32>(u_input.b, 1u, 117269u, 37046u))), func_1(Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.b), global1.b.yw) << (~4294967295u % 32u), vec4<u32>(~1u, _wgslsmith_div_u32(0u, 18435u), _wgslsmith_dot_vec4_u32(global1.b, global1.b), ~u_input.b)), _wgslsmith_sub_i32(-2147483647i, -_wgslsmith_sub_i32(u_input.a, -2147483647i)), global0[_wgslsmith_index_u32(1u, 5u)]));
    global1 = func_2(u_input.a).b;
    let var_1 = ~vec4<u32>(var_0.b.a, abs(_wgslsmith_add_u32(~29771u, u_input.b)), _wgslsmith_mod_u32(var_0.b.b.x, 22013u) & 59981u, ~(var_0.b.b.x | (1u & global1.a)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(40740u, 1u));
}

