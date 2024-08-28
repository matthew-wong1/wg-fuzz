struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec4<i32>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_1;

var<private> global2: vec3<u32> = vec3<u32>(63505u, 15730u, 1u);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_f32(-global1.a.x);
    global2 = firstTrailingBit(u_input.a);
    let var_1 = Struct_3(arg_0.a, vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a.a.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a.c, _wgslsmith_div_f32(-1000f, arg_0.a.c)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1389f)))), _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.b.x, 344f, false))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(arg_0.a.c, -930f, arg_0.d)))) + global1.a.x)), vec4<i32>((_wgslsmith_clamp_i32(arg_0.c.x, arg_0.c.x, u_input.e) >> (~1u % 32u)) | arg_0.c.x, ~(-(~0i)), _wgslsmith_div_i32(-26681i, -firstTrailingBit(arg_0.c.x)), _wgslsmith_clamp_i32(u_input.d, ~abs(u_input.d), u_input.d)), ~0u < (abs(max(u_input.c, global2.x)) | _wgslsmith_clamp_u32(~global2.x, select(32123u, global2.x, global1.b), global2.x)));
    global2 = ~(u_input.a << (vec3<u32>(_wgslsmith_add_u32(1u, ~global2.x), min(~1u, select(70253u, 34126u, global1.b)), 1u) % vec3<u32>(32u)));
    let var_2 = abs(abs(1u));
    return _wgslsmith_f_op_vec4_f32(var_1.b + vec4<f32>(-1199f, _wgslsmith_f_op_f32(max(arg_0.a.c, 664f)), -1091f, arg_0.b.x));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>) -> bool {
    global1 = arg_0;
    var var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.c, arg_0.c, 855f, arg_0.c), vec4<f32>(arg_0.a.x, arg_0.c, 1261f, global1.a.x), vec4<bool>(arg_1.x, arg_0.b, false, global1.b))))), _wgslsmith_f_op_vec4_f32(func_3(Struct_3(Struct_1(arg_0.a, true, -241f), vec4<f32>(global1.a.x, arg_0.c, 755f, arg_0.c), vec4<i32>(u_input.e, u_input.d, u_input.e, -20297i), false))), !select(vec4<bool>(global1.b, true, arg_0.b, global1.b), vec4<bool>(global1.b, arg_0.b, false, true), vec4<bool>(arg_1.x, global1.b, arg_0.b, false)))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(1047f, arg_0.a.x, 1488f, global1.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, arg_0.c) * vec4<f32>(global1.c, -493f, 2314f, arg_0.a.x)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.c + arg_0.c))), arg_0.c, -315f, global1.c))));
    var var_1 = Struct_3(arg_0, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(global1.a.x - _wgslsmith_f_op_f32(round(global1.a.x))), -1000f, 2550f)), vec4<i32>(-3083i, i32(-1i) * -7940i, u_input.e, u_input.e), true);
    let var_2 = reverseBits(select(abs(~var_1.c.yw), -vec2<i32>(-2147483647i, -1i) << (~(~vec2<u32>(global2.x, u_input.a.x)) % vec2<u32>(32u)), select(vec2<bool>(true, true), vec2<bool>(true, all(arg_1.zy)), vec2<bool>(!arg_1.x, !arg_0.b))));
    let var_3 = -((var_1.c.wzz | countOneBits(var_1.c.ywz)) ^ var_1.c.xwz);
    return false;
}

fn func_4(arg_0: Struct_3) -> u32 {
    let var_0 = min(arg_0.c.yy, arg_0.c.xy);
    global0 = ~(~37537u);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(global1.c - arg_0.b.x), arg_0.b.x, global1.c, global1.c);
    global2 = u_input.a;
    let var_2 = abs(~vec3<u32>(~(~39515u), _wgslsmith_mult_u32(4294967295u, global2.x), ~(~4294967295u)));
    return select((u_input.c & ~21528u) << (~abs(19440u) % 32u), 1u, select(max(var_0.x, 2147483647i), firstTrailingBit(-1i), true) < var_0.x) | _wgslsmith_sub_u32((~var_2.x >> (14055u % 32u)) >> ((global2.x & (70954u >> (global2.x % 32u))) % 32u), 11542u);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool, arg_3: i32) -> bool {
    global2 = ~vec3<u32>(58043u, 44738u, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), global2.yy), 1u), vec2<u32>(_wgslsmith_sub_u32(1u, 0u), u_input.c)));
    global0 = arg_1.a.x;
    global0 = ~_wgslsmith_dot_vec2_u32(~vec2<u32>(44417u, u_input.c) & vec2<u32>(arg_1.a.x, u_input.a.x), vec2<u32>(~u_input.a.x, firstTrailingBit(4294967295u))) | func_4(Struct_3(Struct_1(global1.a, func_2(Struct_1(vec2<f32>(-436f, 889f), false, 1205f), vec3<bool>(global1.b, arg_1.b.b, global1.b)), _wgslsmith_f_op_f32(f32(-1f) * -106f)), vec4<f32>(_wgslsmith_f_op_f32(abs(996f)), arg_0.a.x, _wgslsmith_f_op_f32(-arg_1.b.c), arg_1.b.a.x), min(min(vec4<i32>(u_input.e, -1i, 16666i, arg_3), vec4<i32>(arg_3, arg_3, u_input.d, arg_3)), vec4<i32>(u_input.e, arg_3, 45299i, u_input.d)), !all(vec2<bool>(true, global1.b))));
    let var_0 = vec4<bool>(false, true, false, (_wgslsmith_f_op_f32(abs(-865f)) >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.c * arg_0.a.x)))) | true);
    global2 = min(firstTrailingBit(_wgslsmith_mod_vec3_u32(~u_input.a >> (arg_1.a.yxw % vec3<u32>(32u)), arg_1.a.yyz | arg_1.a.yzy)), _wgslsmith_clamp_vec3_u32(vec3<u32>(~_wgslsmith_clamp_u32(11700u, arg_1.a.x, 42164u), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.a.x, 5693u), ~arg_1.a.x, reverseBits(u_input.c)), min(0u >> (0u % 32u), firstLeadingBit(15098u))), u_input.a, ~(~(~vec3<u32>(global2.x, u_input.c, 50169u)))));
    return func_2(arg_1.b, select(vec3<bool>(any(!vec3<bool>(false, false, arg_2)), all(select(vec3<bool>(arg_2, false, arg_0.b), var_0.xzy, var_0.wyz)), var_0.x || arg_0.b), vec3<bool>(true, global1.c < _wgslsmith_f_op_f32(max(109f, arg_1.b.a.x)), !arg_1.b.b), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(global1.a.x + global1.a.x), -516f), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-global1.a), global1.a)))))), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-447f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1830f - global1.c)))))));
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(min(648f, global1.a.x)), _wgslsmith_f_op_f32(floor(-1502f))), global1.a, vec2<bool>(func_1(Struct_1(global1.a, var_0.b, -1036f), Struct_2(vec4<u32>(17543u, 4294967295u, global2.x, u_input.a.x), Struct_1(var_0.a, var_0.b, global1.c)), false, u_input.d), u_input.c > u_input.c))))), global1.b, global1.a.x);
    let var_1 = ~(~(~global2.x));
    var_0 = Struct_1(vec2<f32>(1137f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -109f) + global1.a.x)), var_0.b, 669f);
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.c, global1.a.x), vec2<f32>(global1.a.x, -832f))) * _wgslsmith_f_op_vec2_f32(trunc(global1.a))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(var_0.a + vec2<f32>(global1.c, 813f)))))), true, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(1000f, var_0.a.x), _wgslsmith_f_op_f32(abs(var_0.c))), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(ceil(-295f)))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-577f)), var_0.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.c)) + _wgslsmith_f_op_f32(round(-1535f))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(global1.a.x, _wgslsmith_f_op_f32(-var_0.a.x)));
}

