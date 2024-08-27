struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: bool,
    b: vec2<u32>,
    c: u32,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 13>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>, arg_1: bool, arg_2: bool, arg_3: vec2<bool>) -> vec4<u32> {
    let var_0 = !(arg_3.x | false) | arg_2;
    var var_1 = -1i;
    var var_2 = 8016u & (~(~u_input.a.x) << (86185u % 32u));
    var_2 = 4294967295u;
    var_1 = _wgslsmith_dot_vec2_i32(u_input.b, reverseBits(firstLeadingBit((vec2<i32>(-15553i, -2147483647i) ^ vec2<i32>(u_input.d, 0i)) & vec2<i32>(1i, u_input.d))));
    return arg_0;
}

fn func_2(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: f32, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = Struct_3(true, vec2<u32>(~(~4294967295u), 4294967295u), ~(~_wgslsmith_dot_vec4_u32(func_3(vec4<u32>(0u, u_input.c, 4294967295u, arg_0.a), true, true, arg_1.yx), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.a, arg_0.a, 4294967295u, 58631u), vec4<u32>(arg_0.a, arg_0.a, u_input.a.x, u_input.a.x)))), Struct_1(~(arg_3.a >> (reverseBits(u_input.c) % 32u))), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~_wgslsmith_mod_u32(u_input.a.x, 55843u), ~0u), 13u)] * -2052f));
    global0 = array<f32, 13>();
    var var_1 = var_0;
    let var_2 = -abs(~vec3<i32>(-1i, ~1i, 28336i));
    var_1 = var_0;
    return arg_1.xzx;
}

fn func_1(arg_0: i32) -> bool {
    global0 = array<f32, 13>();
    var var_0 = _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c, 13u)]);
    let var_1 = Struct_3(all(func_2(Struct_2(u_input.c), vec4<bool>(true, true, true, all(vec4<bool>(true, true, false, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(u_input.a.x, 13u)]))), Struct_1(u_input.b.x))), u_input.a, countOneBits(min(min(u_input.a.x, 0u), firstLeadingBit(u_input.a.x)) | u_input.a.x), Struct_1(reverseBits(_wgslsmith_dot_vec2_i32(u_input.b, u_input.b)) & reverseBits(~(-2147483647i))), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(u_input.a.x | u_input.c, _wgslsmith_dot_vec2_u32(u_input.a, u_input.a)), _wgslsmith_div_u32(countOneBits(0u), _wgslsmith_clamp_u32(1652u, u_input.a.x, 48240u))), 13u)], -2858f));
    var_0 = _wgslsmith_f_op_f32(min(-667f, global0[_wgslsmith_index_u32(2266u, 13u)]));
    var var_2 = !vec3<bool>(func_2(Struct_2(u_input.a.x), !(!vec4<bool>(var_1.a, true, true, true)), _wgslsmith_f_op_f32(ceil(-1264f)), Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, var_1.d.a, -39149i, 1i), vec4<i32>(1i, arg_0, arg_0, var_1.d.a)))).x, firstTrailingBit(u_input.b.x) > _wgslsmith_mult_i32(~u_input.b.x, 34403i), ~var_1.b.x != ~select(var_1.b.x, var_1.b.x, var_1.a));
    return !(!(!(!(!var_2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 13>();
    global0 = array<f32, 13>();
    global0 = array<f32, 13>();
    let var_0 = true;
    var var_1 = firstLeadingBit(~(~vec4<u32>(firstTrailingBit(u_input.c), 0u, u_input.a.x, ~0u)));
    var var_2 = select(vec4<bool>(select(var_0, func_1(u_input.b.x) & true, func_1(u_input.d)), true, u_input.a.x <= firstTrailingBit(var_1.x), false), vec4<bool>(!var_0, var_0, all(!select(vec2<bool>(false, var_0), vec2<bool>(var_0, var_0), var_0)), any(!select(vec3<bool>(true, true, var_0), vec3<bool>(false, true, true), true))), true);
    global0 = array<f32, 13>();
    var var_3 = var_1.xwx << (~vec3<u32>(var_1.x, 1u, 4294967295u) % vec3<u32>(32u));
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(reverseBits(countOneBits(4294967295u)), 13u)] - 1029f)), -142f);
    let x = u_input.a;
    s_output = StorageBuffer(-(select(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, -12187i, 2147483647i, u_input.d), vec4<i32>(u_input.d, u_input.d, 1i, u_input.d), vec4<i32>(u_input.d, u_input.b.x, 16697i, 1i)), vec4<i32>(-28513i, 17792i, -28389i, -1i) | vec4<i32>(u_input.d, u_input.d, 2147483647i, u_input.b.x), vec4<bool>(false, true, var_2.x, true)) >> (func_3(vec4<u32>(44903u, 4294967295u, var_3.x, u_input.c) ^ vec4<u32>(4294967295u, 0u, 1u, u_input.a.x), -1015f != var_4.x, var_2.x, vec2<bool>(false, var_0)) % vec4<u32>(32u))), ~_wgslsmith_sub_vec3_u32(~(var_1.zzw >> (var_1.wxw % vec3<u32>(32u))), firstTrailingBit(vec3<u32>(0u, 4294967295u, 12524u))), ~(select(min(u_input.b.x, 22426i), abs(1i), any(var_2.zx)) >> (select(45515u, ~36965u, !var_2.x) % 32u)), ~1u);
}

