struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> f32 {
    var var_0 = all(select(vec2<bool>(false, select(true, false, u_input.d.x != u_input.d.x)), !vec2<bool>(false, all(vec3<bool>(false, false, true))), true));
    let var_1 = vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-643f, _wgslsmith_f_op_f32(abs(-1000f))))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-591f)) + _wgslsmith_f_op_f32(f32(-1f) * -772f)), ~(~89897u << (~u_input.c % 32u)) > _wgslsmith_clamp_u32(u_input.a, abs(~global0.x), ~10983u));
    var var_2 = Struct_4(false, ~_wgslsmith_mod_u32(select(~global0.x, 13594u, false), u_input.b), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-959f * 926f))));
    let var_3 = 4294967295u;
    global0 = vec2<u32>(var_3, min(~_wgslsmith_div_u32(~var_2.b, 4294967295u), 48472u));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -835f))))), _wgslsmith_f_op_f32(f32(-1f) * -1062f)));
}

fn func_2(arg_0: Struct_1) -> vec2<u32> {
    let var_0 = ~(~vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4086u, 42897u), vec3<u32>(4294967295u, global0.x, u_input.b)), ~u_input.c, _wgslsmith_sub_u32(0u, u_input.c)));
    var var_1 = _wgslsmith_sub_vec2_i32((vec2<i32>(-1i) * -(~u_input.d.zz)) | countOneBits(select(vec2<i32>(u_input.d.x, 2147483647i), firstLeadingBit(u_input.d.yz), true)), max(-u_input.d.yz, u_input.d.xz));
    var var_2 = Struct_3(~(~vec4<u32>(var_0.x | var_0.x, u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), var_0.xy), _wgslsmith_mod_u32(u_input.a, 1u))), arg_0, _wgslsmith_mod_i32(~((i32(-1i) * -28139i) ^ -var_1.x), -2147483647i), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3())))), Struct_2(arg_0, _wgslsmith_clamp_vec3_i32(u_input.d, select(vec3<i32>(u_input.d.x, var_1.x, u_input.d.x), vec3<i32>(-11617i, 2147483647i, 9906i), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false))), vec3<i32>(countOneBits(var_1.x), -50351i, var_1.x))));
    let var_3 = Struct_3(~_wgslsmith_mod_vec4_u32(abs(vec4<u32>(var_0.x, 26692u, 1u, var_2.a.x)), ~var_2.a) >> (abs(var_2.a) % vec4<u32>(32u)), Struct_1(555f), 1i, var_2.b, Struct_2(var_2.e.a, ~abs(vec3<i32>(1i, var_2.e.b.x, 13001i) ^ vec3<i32>(2147483647i, var_2.c, var_1.x))));
    var var_4 = select(select(vec2<bool>(true, arg_0.a > var_2.d.a), vec2<bool>(any(select(vec2<bool>(true, false), vec2<bool>(false, true), false)), all(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)))), any(vec3<bool>(true, true, true))), vec2<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false))), select(any(vec3<bool>(true, true, true)), (var_3.e.b.x >> (global0.x % 32u)) != select(var_1.x, u_input.d.x, true), all(vec2<bool>(false, true)))), false);
    return firstTrailingBit(vec2<u32>(var_2.a.x, var_0.x));
}

fn func_1(arg_0: f32, arg_1: f32) -> Struct_2 {
    global0 = reverseBits(func_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-657f)) + _wgslsmith_f_op_f32(587f - arg_1)))));
    global0 = vec2<u32>(~u_input.c, u_input.b);
    let var_0 = all(vec2<bool>(true, !(arg_0 <= -484f)));
    var var_1 = -vec3<i32>(_wgslsmith_clamp_i32(u_input.d.x, _wgslsmith_clamp_i32(max(-1i, u_input.d.x), ~u_input.d.x, u_input.d.x << (global0.x % 32u)), -26789i), max(2147483647i, 29690i), u_input.d.x);
    var var_2 = ~_wgslsmith_sub_vec3_u32(vec3<u32>(countOneBits(~global0.x), ~_wgslsmith_sub_u32(u_input.a, global0.x), firstLeadingBit(19168u)), vec3<u32>(~25782u, 1u, ~u_input.b));
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1499f - -1602f) * -874f)))), abs(-_wgslsmith_add_vec3_i32(vec3<i32>(var_1.x, -1i, -11511i), vec3<i32>(var_1.x, var_1.x, 1i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(-1825f, _wgslsmith_f_op_f32(-378f * _wgslsmith_f_op_f32(select(1000f, -156f, _wgslsmith_f_op_f32(floor(1000f)) > _wgslsmith_f_op_f32(-159f + 1379f)))));
    let var_1 = true;
    let var_2 = 109f;
    let var_3 = !all(select(vec2<bool>(var_1, !var_1), select(select(vec2<bool>(var_1, false), vec2<bool>(var_1, true), false), select(vec2<bool>(false, var_1), vec2<bool>(var_1, true), vec2<bool>(false, var_1)), u_input.d.x > var_0.b.x), !(var_0.b.x <= -23119i)));
    global0 = reverseBits(~(~vec2<u32>(_wgslsmith_mod_u32(60999u, global0.x), global0.x)));
    let var_4 = Struct_1(-1364f);
    let x = u_input.a;
    s_output = StorageBuffer(~(-reverseBits(u_input.d.x)));
}

