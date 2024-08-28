struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec4<bool>,
    d: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec2<f32>,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 6> = array<i32, 6>(0i, 2147483647i, i32(-2147483648), -1i, -29546i, -1i);

var<private> global1: vec2<u32>;

var<private> global2: vec4<u32>;

var<private> global3: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(vec3<i32>(i32(-2147483648), -27493i, 12696i), vec3<bool>(true, true, false), Struct_1(vec2<f32>(356f, 484f), 2147483647i, vec4<bool>(true, true, true, true), 459f)), Struct_2(vec3<i32>(7923i, 0i, 2147483647i), vec3<bool>(false, true, false), Struct_1(vec2<f32>(813f, 1554f), 1i, vec4<bool>(false, true, false, true), 614f)), Struct_2(vec3<i32>(-2217i, 0i, 2147483647i), vec3<bool>(true, true, true), Struct_1(vec2<f32>(1000f, -877f), i32(-2147483648), vec4<bool>(true, true, false, true), -2091f)), Struct_2(vec3<i32>(2480i, -1i, i32(-2147483648)), vec3<bool>(true, true, false), Struct_1(vec2<f32>(945f, 584f), 2147483647i, vec4<bool>(true, false, false, true), 568f)), Struct_2(vec3<i32>(37392i, -1i, -6079i), vec3<bool>(false, false, true), Struct_1(vec2<f32>(-1773f, 1701f), -43664i, vec4<bool>(true, false, false, false), -204f)), Struct_2(vec3<i32>(42003i, 1i, -36369i), vec3<bool>(false, false, false), Struct_1(vec2<f32>(-822f, -1014f), -28644i, vec4<bool>(false, true, true, false), -564f)), Struct_2(vec3<i32>(-2312i, -1i, 2147483647i), vec3<bool>(false, false, false), Struct_1(vec2<f32>(-312f, 497f), -15361i, vec4<bool>(false, true, true, false), 1010f)), Struct_2(vec3<i32>(-30335i, -2716i, -48980i), vec3<bool>(false, false, false), Struct_1(vec2<f32>(261f, 612f), 1i, vec4<bool>(false, false, false, false), 144f)), Struct_2(vec3<i32>(1i, 1i, -1i), vec3<bool>(false, true, false), Struct_1(vec2<f32>(1190f, 701f), 1i, vec4<bool>(true, false, false, true), 213f)), Struct_2(vec3<i32>(i32(-2147483648), 535i, -7772i), vec3<bool>(false, false, true), Struct_1(vec2<f32>(-695f, -1000f), 1i, vec4<bool>(false, false, false, true), -740f)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<bool> {
    global2 = ~min(vec4<u32>(1u, countOneBits(global2.x), global2.x, global2.x), vec4<u32>(111635u, _wgslsmith_add_u32(0u, global1.x) >> (~global1.x % 32u), _wgslsmith_mult_u32(0u, global1.x >> (4294967295u % 32u)), _wgslsmith_div_u32(max(global2.x, global2.x), ~23720u)));
    var var_0 = false;
    let var_1 = u_input.a;
    var var_2 = global3[_wgslsmith_index_u32(u_input.a, 10u)];
    return !(!select(!var_2.b.yy, vec2<bool>(any(vec3<bool>(var_2.c.c.x, var_2.c.c.x, var_2.c.c.x)), false), var_2.b.x | true));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: vec4<bool>) -> bool {
    let var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_f32(min(arg_1.a.x, arg_1.a.x));
    return arg_1.c.x == select(arg_1.c.x & true, true, all(func_3()));
}

fn func_1(arg_0: vec4<u32>) -> f32 {
    let var_0 = vec2<bool>(func_2(any(vec3<bool>(true, true, true)), Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1835f, 660f))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(910f, 967f))), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)))), u_input.b.x, !select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), true), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1140f + -985f)))), vec4<bool>(true, true, true, true)), any(vec4<bool>(true, true, true, true)));
    global1 = ~global2.ww;
    let var_1 = select(!vec4<bool>(!func_3().x, true, !(!var_0.x), var_0.x), select(!select(!vec4<bool>(var_0.x, var_0.x, false, true), vec4<bool>(var_0.x, var_0.x, var_0.x, true), any(var_0)), select(select(!vec4<bool>(var_0.x, false, var_0.x, true), select(vec4<bool>(false, var_0.x, true, true), vec4<bool>(false, var_0.x, true, var_0.x), vec4<bool>(var_0.x, false, var_0.x, var_0.x)), select(vec4<bool>(false, var_0.x, var_0.x, true), vec4<bool>(var_0.x, var_0.x, false, true), vec4<bool>(true, var_0.x, false, var_0.x))), vec4<bool>(true, false, var_0.x, var_0.x & var_0.x), ~(-2147483647i) < global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a, 4294967295u, global1.x), 6u)]), select(vec4<bool>(var_0.x, false, var_0.x, false), !select(vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(true, false, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, false, var_0.x)), vec4<bool>(var_0.x, var_0.x, true, true))), true);
    global2 = arg_0;
    var var_2 = arg_0.x;
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, 658f, var_1.x)))))));
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: Struct_2) -> bool {
    var var_0 = vec4<f32>(arg_2.c.a.x, arg_0, arg_0, arg_2.c.d);
    let var_1 = !select(arg_2.c.c.zzw, vec3<bool>(true, false, false), arg_2.c.c.x);
    let var_2 = arg_2.c.c.x;
    let var_3 = 1u;
    let var_4 = abs(vec3<i32>(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(0u, u_input.d.x) ^ select(u_input.a, var_3, arg_2.b.x), ~(~global1.x), _wgslsmith_mult_u32(countOneBits(31873u), ~var_3)), 6u)], -34416i, -(~global0[_wgslsmith_index_u32(global1.x, 6u)] & u_input.b.x)));
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 6>();
    var var_0 = func_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(vec4<u32>(8897u, 28067u, global2.x, u_input.c.x))), -1013f, any(vec4<bool>(true, true, true, true)))))), firstLeadingBit(global0[_wgslsmith_index_u32(global1.x, 6u)]), Struct_2(-vec3<i32>(10365i, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, 4294967295u), 6u)], 16962i), !select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true), func_3().x), Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-843f, -587f) - vec2<f32>(-610f, -1616f)))), u_input.b.x, vec4<bool>(true, true, true, true), -964f)));
    global1 = u_input.c ^ u_input.d.yz;
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~reverseBits(_wgslsmith_mod_vec2_u32(~vec2<u32>(global2.x, 18537u), firstTrailingBit(u_input.c))), _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(~u_input.d.zz, global2.yx), global2.ww, ~vec2<u32>(u_input.a, 1u))), 10u)];
    var_0 = true;
    var var_2 = global3[_wgslsmith_index_u32(~firstTrailingBit(u_input.d.x), 10u)];
    let x = u_input.a;
    s_output = StorageBuffer(min(vec2<u32>(select(4294967295u, 0u, !var_1.c.c.x), 4294967295u), vec2<u32>(reverseBits(global1.x << (global2.x % 32u)), global2.x)), -964f, _wgslsmith_f_op_vec2_f32(vec2<f32>(561f, 955f) - vec2<f32>(118f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.a.x) - _wgslsmith_f_op_f32(var_1.c.d - var_1.c.d)))), ~(((vec2<u32>(9807u, global2.x) ^ global2.wz) ^ ~vec2<u32>(0u, 5729u)) | _wgslsmith_sub_vec2_u32(abs(u_input.d.yz), select(global2.xw, vec2<u32>(global2.x, 21105u), true))), ~_wgslsmith_mod_u32(_wgslsmith_div_u32(global2.x << (4294967295u % 32u), global2.x), global2.x));
}

