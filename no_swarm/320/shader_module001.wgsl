struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec4<f32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: i32,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec3<u32> = vec3<u32>(1u, 2784u, 0u);

var<private> global2: i32 = 0i;

var<private> global3: Struct_4;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: Struct_3) -> i32 {
    global2 = -9569i;
    global0 = _wgslsmith_dot_vec3_u32(firstLeadingBit(abs(vec3<u32>(global1.x, 37692u, 1u))), abs(~_wgslsmith_clamp_vec3_u32(~vec3<u32>(global1.x, global1.x, 942u), select(vec3<u32>(global1.x, u_input.a, u_input.a), vec3<u32>(0u, 0u, 0u), global3.a.a.x), countOneBits(vec3<u32>(4294967295u, global1.x, u_input.a)))));
    var var_0 = ~global1.x;
    let var_1 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(2408f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(132f))))), arg_1.a.c.x), global3.a, arg_0, ~(min(~vec3<u32>(global1.x, global1.x, global1.x), ~vec3<u32>(1u, global1.x, 3364u)) ^ ~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 16062u, u_input.a), vec3<u32>(u_input.a, global1.x, global1.x))), ~(~global1.yz));
    global3 = Struct_4(Struct_1(arg_1.a.a, !select(all(vec4<bool>(true, arg_1.a.a.x, global3.a.d.x, arg_1.a.b)), global3.a.b, var_1.b.a.x), vec4<f32>(global3.a.c.x, _wgslsmith_f_op_f32(f32(-1f) * -366f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(723f, arg_1.a.c.x)) - _wgslsmith_f_op_f32(-1000f - arg_1.a.c.x)), arg_1.a.c.x), vec4<bool>(var_1.b.a.x, false, all(vec3<bool>(false, global3.a.d.x, false)), true)), vec3<bool>(all(vec3<bool>(!global3.b.x, true, all(var_1.b.d))), all(vec2<bool>(var_1.b.d.x, any(global3.a.d.wxw))), var_1.b.d.x != any(vec3<bool>(true, true, true))));
    return arg_0;
}

fn func_2(arg_0: vec2<u32>) -> Struct_4 {
    var var_0 = global1.x;
    let var_1 = ~vec4<i32>(min(countOneBits(1i), 2147483647i), firstLeadingBit(~(-2147483647i)), func_3(-u_input.b.x, Struct_3(Struct_1(vec2<bool>(true, true), global3.a.b, global3.a.c, vec4<bool>(global3.b.x, global3.a.d.x, true, true)))), 25362i >> (u_input.a % 32u)) ^ firstTrailingBit(~reverseBits(~vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 2147483647i)));
    global2 = ~(~var_1.x);
    global0 = u_input.a;
    var var_2 = global3.a.c.x;
    return Struct_4(Struct_1(vec2<bool>(global3.b.x, global3.b.x), true, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global3.a.c.x, global3.a.c.x)) - _wgslsmith_f_op_f32(round(global3.a.c.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -531f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(global3.a.c.x, global3.a.c.x)), global3.a.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-240f - global3.a.c.x))), !global3.a.d), global3.a.d.xww);
}

fn func_1(arg_0: u32, arg_1: Struct_3, arg_2: vec2<i32>) -> f32 {
    global3 = func_2(~(~vec2<u32>(1u, ~11186u)));
    let var_0 = u_input.b.x;
    let var_1 = func_2(global1.xz);
    let var_2 = reverseBits(_wgslsmith_clamp_u32(~min(6649u, global1.x), ~(~_wgslsmith_dot_vec2_u32(global1.zx, vec2<u32>(arg_0, arg_0))), ~arg_0));
    return arg_1.a.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_u32(~0u, u_input.a) ^ 1u;
    global2 = u_input.b.x;
    var var_1 = Struct_2(vec2<f32>(-2996f, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(u_input.a, Struct_3(global3.a), vec2<i32>(u_input.b.x, -15446i)))))), global3.a, func_3(~select(-u_input.b.x, ~(-2147483647i), global3.b.x), Struct_3(Struct_1(vec2<bool>(true, true), all(vec2<bool>(global3.a.d.x, global3.a.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a.c.x, global3.a.c.x, global3.a.c.x, global3.a.c.x)), vec4<bool>(global3.a.d.x, false, true, global3.b.x)))), abs(vec3<u32>(~_wgslsmith_sub_u32(u_input.a, global1.x), u_input.a, global1.x)), global1.xy);
    let var_2 = global3.a.c.x;
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1632f);
    global3 = func_2(abs(var_1.e << (~(~vec2<u32>(global1.x, 1u)) % vec2<u32>(32u))));
    var var_4 = Struct_3(var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(min(vec4<u32>(u_input.a | var_1.e.x, _wgslsmith_mod_u32(u_input.a, 68934u >> (var_0 % 32u)), countOneBits(15056u), 12462u), _wgslsmith_add_vec4_u32(vec4<u32>(abs(48539u), 4294967295u, 21153u, var_0), firstTrailingBit(reverseBits(vec4<u32>(39677u, 4294967295u, 26201u, 0u))))), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, ~4294967295u, reverseBits(var_0)) | (select(vec3<u32>(4344u, 0u, u_input.a), vec3<u32>(4294967295u, var_0, var_0), false) >> (var_1.d % vec3<u32>(32u))), _wgslsmith_sub_vec3_u32(min(vec3<u32>(u_input.a, 61155u, 4294967295u), countOneBits(var_1.d)), select(_wgslsmith_div_vec3_u32(var_1.d, vec3<u32>(0u, 3927u, var_0)), ~vec3<u32>(var_1.d.x, 10464u, var_0), select(vec3<bool>(var_1.b.a.x, var_1.b.b, true), vec3<bool>(global3.b.x, true, var_1.b.a.x), global3.b.x)))), reverseBits(~_wgslsmith_clamp_u32(global1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(46179u, var_1.e.x, var_1.d.x, u_input.a), vec4<u32>(1u, u_input.a, global1.x, u_input.a)), 38695u)), var_1.c, global1.zy);
}

