struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: f32,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 5679u;

var<private> global1: Struct_1;

var<private> global2: vec4<u32> = vec4<u32>(2199u, 2728u, 122559u, 1u);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    global1 = Struct_1(vec4<bool>(!(any(vec3<bool>(global1.a.x, true, true)) & !global1.a.x), true, false, global1.b.x), global1.a.xy);
    var var_0 = u_input.c.xz;
    let var_1 = 2147483647i;
    var var_2 = Struct_1(global1.a, global1.a.xw);
    let var_3 = Struct_1(!(!global1.a), global1.b);
    return global2.x;
}

fn func_2(arg_0: u32, arg_1: vec2<f32>, arg_2: f32) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1239f);
    global0 = _wgslsmith_add_u32(~func_3(), reverseBits(arg_0));
    global2 = select(vec4<u32>(27820u, func_3() & ~1u, _wgslsmith_mult_u32(reverseBits(global2.x) >> (17980u % 32u), 23196u), _wgslsmith_dot_vec4_u32(~reverseBits(vec4<u32>(global2.x, 62548u, 1u, u_input.b)), min(vec4<u32>(82739u, 4294967295u, global2.x, u_input.a.x), vec4<u32>(arg_0, u_input.b, 6627u, arg_0)))), _wgslsmith_mult_vec4_u32(~firstLeadingBit(vec4<u32>(53799u, u_input.a.x, 453u, 4294967295u)) >> (max(vec4<u32>(1u, global2.x, global2.x, arg_0), select(vec4<u32>(32259u, global2.x, 36636u, u_input.a.x), vec4<u32>(68638u, global2.x, arg_0, arg_0), vec4<bool>(false, false, global1.b.x, true))) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 52000u, u_input.b, 58178u) << (~vec4<u32>(arg_0, global2.x, 4294967295u, arg_0) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_dot_vec3_u32(global2.ywy, vec3<u32>(u_input.b, u_input.a.x, 14356u)), arg_0, select(global2.x, arg_0, global1.a.x), 40959u), (vec4<u32>(135470u, 6599u, global2.x, 27182u) | vec4<u32>(42620u, global2.x, 13682u, arg_0)) << (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 1u, 1u, 4294967295u), vec4<u32>(arg_0, 7312u, 105079u, arg_0)) % vec4<u32>(32u)))), true && !((global1.b.x & false) & false));
    let var_1 = Struct_1(global1.a, vec2<bool>(!any(vec3<bool>(global1.a.x, global1.b.x, global1.a.x)), !all(global1.a.xy)));
    var var_2 = vec2<u32>((firstTrailingBit(0u) >> (1u % 32u)) | ~4294967295u, u_input.a.x);
    return ~(~(reverseBits(global2.zz) >> (u_input.a % vec2<u32>(32u))));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec2<bool>, arg_2: vec2<i32>) -> bool {
    let var_0 = abs(min(abs(vec2<u32>(_wgslsmith_add_u32(15758u, arg_0.x), ~44791u)), vec2<u32>(func_3(), ~u_input.a.x)));
    let var_1 = 4984i;
    var var_2 = 0i;
    global1 = Struct_1(!global1.a, global1.b);
    var var_3 = var_1;
    return true;
}

fn func_1(arg_0: Struct_1) -> f32 {
    var var_0 = Struct_1(select(vec4<bool>(!(false & global1.a.x), arg_0.b.x, select(true, true, global1.a.x), false), vec4<bool>(global1.b.x, !arg_0.a.x, func_4(func_2(1u, vec2<f32>(-1000f, 1181f), -890f), vec2<bool>(arg_0.b.x, false), vec2<i32>(u_input.c.x, u_input.c.x)), all(arg_0.a)), select(global1.a, select(select(vec4<bool>(false, arg_0.b.x, false, arg_0.a.x), vec4<bool>(true, true, arg_0.a.x, global1.b.x), arg_0.a), !vec4<bool>(arg_0.a.x, false, false, false), all(vec4<bool>(arg_0.a.x, global1.b.x, true, arg_0.a.x))), !select(arg_0.a, arg_0.a, true))), !select(select(!vec2<bool>(arg_0.a.x, true), vec2<bool>(global1.b.x, global1.b.x), u_input.c.x != -9218i), select(!global1.a.xw, select(vec2<bool>(global1.a.x, arg_0.b.x), global1.a.ww, arg_0.a.wx), arg_0.a.xy), vec2<bool>(func_4(vec2<u32>(0u, global2.x), global1.a.wz, u_input.c.xy), true || global1.a.x)));
    global2 = ~(~firstLeadingBit(vec4<u32>(u_input.b, global2.x, u_input.a.x, 1u) ^ vec4<u32>(u_input.b, 1u, 1u, 53206u))) & abs(max(max(vec4<u32>(29463u, 78493u, u_input.b, u_input.b), vec4<u32>(51767u, global2.x, 54701u, 1u)), ~vec4<u32>(global2.x, 1u, global2.x, u_input.b)) ^ vec4<u32>(countOneBits(global2.x), ~0u, u_input.b, 0u));
    var var_1 = _wgslsmith_f_op_f32(trunc(-1261f));
    var var_2 = reverseBits(u_input.b);
    var var_3 = Struct_1(vec4<bool>(true, any(vec3<bool>(global1.a.x | true, arg_0.b.x, true)), -1157f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1015f, 677f))), true), var_0.a.yy);
    return -1502f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(536f, 406f, 160f, 424f))), vec4<f32>(_wgslsmith_f_op_f32(func_1(Struct_1(vec4<bool>(global1.b.x, true, false, true), vec2<bool>(false, global1.b.x)))), _wgslsmith_f_op_f32(abs(-1894f)), _wgslsmith_f_op_f32(min(1041f, 1289f)), 1293f))))));
    global2 = abs(vec4<u32>(~reverseBits(75458u), ~u_input.a.x, min(u_input.b, 64520u), 0u) | firstLeadingBit(vec4<u32>(_wgslsmith_mult_u32(10726u, 23965u), ~56199u, abs(0u), global2.x)));
    var var_1 = vec4<u32>(~4294967295u, _wgslsmith_div_u32(countOneBits(4294967295u), u_input.b), 0u, _wgslsmith_sub_u32(31553u, 0u));
    global0 = var_1.x;
    global0 = ~global2.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.xz, 4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(global1.a, !vec2<bool>(global1.a.x, false))))), firstTrailingBit(firstLeadingBit(func_3())), ~(~vec4<u32>(843u << (var_1.x % 32u), 33705u ^ u_input.b, u_input.b, _wgslsmith_clamp_u32(global2.x, 0u, 4533u))));
}

