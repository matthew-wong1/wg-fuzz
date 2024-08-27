struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 28> = array<vec3<f32>, 28>(vec3<f32>(1086f, 1304f, 132f), vec3<f32>(-312f, -1047f, 2137f), vec3<f32>(361f, 401f, 767f), vec3<f32>(-1000f, 998f, -1640f), vec3<f32>(-1172f, 336f, 211f), vec3<f32>(-4165f, -1027f, -176f), vec3<f32>(-1826f, 404f, -621f), vec3<f32>(-120f, -941f, 1000f), vec3<f32>(-2019f, -1393f, -2539f), vec3<f32>(-956f, 901f, -438f), vec3<f32>(-182f, -825f, -527f), vec3<f32>(-159f, 190f, 1434f), vec3<f32>(-1000f, -343f, -613f), vec3<f32>(-453f, -1132f, -329f), vec3<f32>(-112f, 390f, 278f), vec3<f32>(-1976f, -2927f, 512f), vec3<f32>(-657f, -1000f, 626f), vec3<f32>(2194f, -748f, -1382f), vec3<f32>(485f, -1393f, -789f), vec3<f32>(-229f, 437f, -476f), vec3<f32>(-1000f, 778f, 486f), vec3<f32>(-302f, -2589f, 905f), vec3<f32>(1655f, 455f, 937f), vec3<f32>(681f, 1000f, -271f), vec3<f32>(-560f, 1000f, 782f), vec3<f32>(879f, 693f, -1045f), vec3<f32>(-1916f, -1000f, 682f), vec3<f32>(-2502f, -984f, -396f));

var<private> global1: array<f32, 2> = array<f32, 2>(-1087f, 1097f);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>) -> bool {
    let var_0 = Struct_1(~firstTrailingBit(vec2<i32>(4653i, 0i)) ^ select(vec2<i32>(-1i) * -vec2<i32>(2147483647i, 0i), firstTrailingBit(~vec2<i32>(-7350i, 1i)), false), abs(~u_input.a.x), vec2<u32>(firstTrailingBit(abs(56203u << (0u % 32u))), firstLeadingBit(~u_input.b)), ~(~u_input.a.yyy) << (countOneBits(u_input.a.xwz) % vec3<u32>(32u)));
    let var_1 = Struct_2(Struct_1(-(~vec2<i32>(-42042i, var_0.a.x)), countOneBits(reverseBits(31784u)), vec2<u32>(firstLeadingBit(0u), min(u_input.a.x, var_0.c.x)) | _wgslsmith_add_vec2_u32(~var_0.c, var_0.d.xx), u_input.a.yzw));
    var var_2 = var_0.a.x;
    let var_3 = var_1.a;
    global0 = array<vec3<f32>, 28>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_1.a.b, 2u)])))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(arg_0.x)))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 2u)])))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(max(80090u, var_1.a.c.x), 2u)] + _wgslsmith_f_op_f32(-arg_0.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - arg_0.x)));
}

fn func_2() -> bool {
    return !any(vec4<bool>(true, true, func_3(vec2<f32>(894f, global1[_wgslsmith_index_u32(u_input.c, 2u)])), false));
}

fn func_1(arg_0: Struct_2) -> vec4<bool> {
    let var_0 = any(select(vec4<bool>(true, true, true, true), vec4<bool>(func_2(), select(global1[_wgslsmith_index_u32(2321u, 2u)] <= 377f, true, true), true, false & all(vec3<bool>(true, false, true))), false));
    var var_1 = arg_0.a;
    let var_2 = Struct_2(arg_0.a);
    global1 = array<f32, 2>();
    global1 = array<f32, 2>();
    return select(select(vec4<bool>(!select(false, var_0, false), any(!vec2<bool>(var_0, var_0)), !var_0, u_input.a.x >= ~42286u), vec4<bool>(true, !any(vec4<bool>(true, false, false, false)), all(vec2<bool>(true, true)), var_0), any(!(!vec2<bool>(true, var_0)))), select(vec4<bool>(var_0, all(!vec3<bool>(var_0, var_0, false)), true, any(!vec3<bool>(true, var_0, var_0))), !(!vec4<bool>(true, var_0, false, var_0)), (!var_0 && all(vec3<bool>(var_0, false, var_0))) && true), !vec4<bool>(!(2147483647i >= arg_0.a.a.x), _wgslsmith_f_op_f32(823f - 822f) > _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(u_input.a.x, 2u)])), var_0, func_3(vec2<f32>(-153f, global1[_wgslsmith_index_u32(var_1.b, 2u)]))));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: i32) -> u32 {
    var var_0 = arg_2;
    var_0 = arg_2;
    global1 = array<f32, 2>();
    let var_1 = arg_2;
    var var_2 = var_1.a.d.x;
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1000f;
    global0 = array<vec3<f32>, 28>();
    var_0 = _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b, 2u)] * global1[_wgslsmith_index_u32(func_4(select(select(vec4<bool>(true, true, true, true), func_1(Struct_2(Struct_1(vec2<i32>(-1i, -2147483647i), u_input.c, vec2<u32>(1u, 13975u), u_input.a.wxw))), vec4<bool>(true, true, true, true)), func_1(Struct_2(Struct_1(vec2<i32>(-1i, 0i), 0u, u_input.a.xz, u_input.a.yzx))), !all(vec2<bool>(false, true))), _wgslsmith_clamp_vec4_i32(-countOneBits(vec4<i32>(-17493i, 6563i, -1i, -18373i)), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, 2147483647i, 2147483647i, -36246i), ~vec4<i32>(22860i, -1i, -46927i, -12148i)), firstTrailingBit(~vec4<i32>(-2147483647i, 1i, 23596i, 1i))), Struct_2(Struct_1(-vec2<i32>(-2147483647i, 1i), 62477u, ~u_input.a.wz, vec3<u32>(0u, u_input.b, u_input.a.x))), 1i), 2u)]);
    global0 = array<vec3<f32>, 28>();
    var var_1 = true;
    let var_2 = Struct_1(-select(reverseBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(-553i, -2147483647i), vec2<i32>(4294i, 0i), vec2<i32>(47174i, 0i))), ~max(vec2<i32>(-76681i, 18284i), vec2<i32>(81657i, 24437i)), any(vec4<bool>(true, true, true, false))), 0u, u_input.a.xw, _wgslsmith_clamp_vec3_u32(select(u_input.a.xxy, vec3<u32>(4294967295u, _wgslsmith_div_u32(u_input.c, 1u), reverseBits(7717u)), func_1(Struct_2(Struct_1(vec2<i32>(-46405i, 0i), u_input.b, vec2<u32>(u_input.b, 1u), u_input.a.zww))).www), vec3<u32>(~(~u_input.a.x), u_input.c, ~u_input.a.x), ~abs(vec3<u32>(18894u, 1u, u_input.b))));
    let var_3 = -var_2.a.x;
    var_0 = global1[_wgslsmith_index_u32(6839u, 2u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(5579u, 2u)]) * _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(15973u, var_2.b), 2u)], _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))), u_input.a.x, abs(~firstLeadingBit(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 35315u), vec2<u32>(u_input.a.x, 17294u)))));
}

