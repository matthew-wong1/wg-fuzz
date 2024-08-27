struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: vec3<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: vec3<bool>,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: i32,
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

var<private> global0: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(Struct_1(vec3<u32>(14927u, 1u, 1u)), Struct_1(vec3<u32>(11805u, 1u, 39568u)), vec4<i32>(53442i, -47036i, 36366i, 23777i), vec3<f32>(2005f, 1465f, -580f)), Struct_2(Struct_1(vec3<u32>(7250u, 11135u, 18459u)), Struct_1(vec3<u32>(59116u, 1u, 44058u)), vec4<i32>(3444i, -56942i, -3000i, 1i), vec3<f32>(-965f, 457f, 1240f)), Struct_2(Struct_1(vec3<u32>(0u, 63955u, 14426u)), Struct_1(vec3<u32>(1u, 1u, 0u)), vec4<i32>(0i, 2147483647i, 2147483647i, -28481i), vec3<f32>(1456f, 328f, -1752f)), Struct_2(Struct_1(vec3<u32>(80290u, 0u, 4793u)), Struct_1(vec3<u32>(1u, 41624u, 0u)), vec4<i32>(-51967i, 0i, 1i, i32(-2147483648)), vec3<f32>(869f, -222f, 1405f)), Struct_2(Struct_1(vec3<u32>(8729u, 4294967295u, 19505u)), Struct_1(vec3<u32>(25033u, 79372u, 66715u)), vec4<i32>(-17311i, -17310i, 21627i, 0i), vec3<f32>(469f, 405f, 1000f)));

var<private> global1: array<u32, 28>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: Struct_3, arg_1: vec2<u32>) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(arg_1.x, 5u)];
    return select(countOneBits(arg_1.x & (1u >> (u_input.c % 32u))) << (~0u % 32u), arg_1.x, (abs(-arg_0.a.x) < (-arg_0.a.x << (1246u % 32u))) | (var_0.d.x <= 865f));
}

fn func_3(arg_0: vec4<u32>) -> u32 {
    var var_0 = -1i;
    var var_1 = 2147483647i;
    global1 = array<u32, 28>();
    var var_2 = select(select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), all(vec2<bool>(true, true))), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true)), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true)), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false))), !vec3<bool>(false, firstLeadingBit(u_input.d) != u_input.d, true || select(true, false, false)), select(!vec3<bool>(all(vec4<bool>(false, true, false, false)), true, all(vec4<bool>(true, false, false, true))), select(vec3<bool>(false, true, false), select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true), true), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true))), vec3<bool>(false, any(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true)), !(-44802i <= u_input.d))));
    var var_3 = Struct_1(~(vec3<u32>(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(4294967295u, 28u)], arg_0.x), u_input.b.x, ~u_input.c) >> (_wgslsmith_clamp_vec3_u32(arg_0.zyy << (vec3<u32>(u_input.c, 39714u, u_input.c) % vec3<u32>(32u)), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(11941u, 28u)], 28u)], 28u)], 28u)], 4294967295u, 21768u) >> (vec3<u32>(1u, 0u, 0u) % vec3<u32>(32u)), arg_0.yxx) % vec3<u32>(32u))));
    return _wgslsmith_mod_u32(_wgslsmith_add_u32(1u, min(4294967295u, 56825u)), ~(~reverseBits(1u)));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<bool>) -> vec4<bool> {
    global0 = array<Struct_2, 5>();
    let var_0 = u_input.a == u_input.a;
    global0 = array<Struct_2, 5>();
    var var_1 = Struct_1(vec3<u32>(57540u, u_input.b.x | u_input.c, ~func_3(~vec4<u32>(30558u, global1[_wgslsmith_index_u32(0u, 28u)], global1[_wgslsmith_index_u32(u_input.b.x, 28u)], 14921u))));
    var var_2 = Struct_1(select(select(_wgslsmith_div_vec3_u32(abs(var_1.a), var_1.a & vec3<u32>(var_1.a.x, 1u, u_input.b.x)), vec3<u32>(u_input.c, u_input.b.x, 1u) & ~vec3<u32>(u_input.c, 16313u, u_input.b.x), true), vec3<u32>(select(0u, 56740u, true), reverseBits(1u), 0u) >> ((var_1.a << (~vec3<u32>(4294967295u, 14574u, 32432u) % vec3<u32>(32u))) % vec3<u32>(32u)), all(select(!arg_1.yz, select(vec2<bool>(arg_0.x, false), vec2<bool>(false, true), vec2<bool>(true, arg_0.x)), var_0))));
    return select(!(!(!select(vec4<bool>(var_0, arg_0.x, true, false), vec4<bool>(arg_0.x, false, arg_1.x, false), arg_1.x))), vec4<bool>(true, false, all(vec4<bool>(all(arg_1.yy), any(vec4<bool>(true, var_0, false, arg_1.x)), arg_0.x, !var_0)), !(!arg_0.x)), select(select(select(select(vec4<bool>(var_0, false, var_0, true), vec4<bool>(arg_0.x, var_0, arg_0.x, false), true), select(vec4<bool>(var_0, arg_0.x, false, arg_1.x), vec4<bool>(false, false, true, var_0), true), false), select(vec4<bool>(true, arg_0.x, arg_0.x, arg_1.x), select(vec4<bool>(var_0, false, true, arg_1.x), vec4<bool>(arg_0.x, true, arg_1.x, true), vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x)), all(vec3<bool>(false, true, arg_0.x))), select(vec4<bool>(true, arg_1.x, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, false, arg_0.x, var_0), vec4<bool>(arg_1.x, var_0, var_0, arg_1.x))), !(!(!vec4<bool>(arg_0.x, var_0, false, var_0))), !select(!vec4<bool>(false, arg_1.x, arg_0.x, arg_1.x), select(vec4<bool>(arg_0.x, arg_0.x, false, false), vec4<bool>(false, true, arg_1.x, arg_0.x), vec4<bool>(true, arg_1.x, false, false)), !vec4<bool>(arg_0.x, true, false, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-257f, -1383f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-670f - -1764f)), _wgslsmith_f_op_f32(-345f + 935f))));
    var_0 = vec3<f32>(335f, var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.x), var_0.x, true || all(vec4<bool>(false, true, false, true)))) - 1124f));
    global0 = array<Struct_2, 5>();
    let var_1 = _wgslsmith_f_op_f32(-var_0.x);
    var var_2 = _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(abs(firstLeadingBit(_wgslsmith_div_vec3_u32(vec3<u32>(0u, global1[_wgslsmith_index_u32(17475u, 28u)], 63832u), vec3<u32>(4294967295u, 28764u, global1[_wgslsmith_index_u32(54447u, 28u)])))), ~(~(~vec3<u32>(18372u, u_input.b.x, global1[_wgslsmith_index_u32(15064u, 28u)])))), global1[_wgslsmith_index_u32(4294967295u, 28u)] ^ func_1(Struct_3(vec4<i32>(-57785i, u_input.d, 58229i, u_input.a)), ~(~vec2<u32>(56540u, 32581u))));
    global0 = array<Struct_2, 5>();
    let var_3 = Struct_4(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_0.x)), Struct_1(~(~min(vec3<u32>(u_input.b.x, 1u, u_input.c), vec3<u32>(u_input.b.x, u_input.c, global1[_wgslsmith_index_u32(u_input.c, 28u)])))), vec3<bool>(false, any(select(vec4<bool>(true, true, true, true), func_2(vec2<bool>(false, false), vec3<bool>(true, false, true)), true)), _wgslsmith_f_op_f32(f32(-1f) * -765f) > _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-var_0.x))), Struct_3(select(abs(select(vec4<i32>(u_input.a, u_input.d, u_input.d, -1i), vec4<i32>(u_input.a, 1i, -17081i, -5033i), vec4<bool>(false, true, true, false))), abs(vec4<i32>(-4862i, u_input.a, u_input.d, -2147483647i)), select(func_2(vec2<bool>(false, false), vec3<bool>(false, false, false)), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false)), all(vec2<bool>(true, false))))));
    global1 = array<u32, 28>();
    var var_4 = ~select(select(select(var_3.c.a.yy, ~vec2<u32>(var_3.c.a.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 28u)], 28u)], 28u)], 28u)]), !var_3.d.zz), ~abs(vec2<u32>(global1[_wgslsmith_index_u32(1u, 28u)], u_input.b.x)), !var_3.d.x), select(abs(u_input.b), u_input.b, var_3.d.x) & firstTrailingBit(u_input.b), var_3.d.zx);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(1u, _wgslsmith_dot_vec2_u32(u_input.b, var_3.c.a.xz), _wgslsmith_clamp_u32(var_3.c.a.x, 30143u, ~global1[_wgslsmith_index_u32(25137u, 28u)])), ~(~0u)));
}

