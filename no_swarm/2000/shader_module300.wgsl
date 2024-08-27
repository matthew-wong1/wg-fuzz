struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: u32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 6>;

var<private> global1: array<u32, 28> = array<u32, 28>(7142u, 62216u, 103281u, 0u, 4294967295u, 32326u, 15967u, 1u, 0u, 4294967295u, 5953u, 1u, 0u, 1u, 1u, 46833u, 0u, 1u, 0u, 1u, 104644u, 70852u, 31259u, 4294967295u, 72152u, 4294967295u, 1u, 4294967295u);

var<private> global2: vec2<u32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-354f, 226f)), -703f)) + 688f))));
    var var_1 = var_0;
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, 535f) * _wgslsmith_f_op_f32(f32(-1f) * -652f))))) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - 101f) + var_0), _wgslsmith_f_op_f32(-var_0)))));
    var var_3 = true | any(vec2<bool>(all(vec2<bool>(true, true)), ~26435i >= _wgslsmith_dot_vec2_i32(u_input.a.xx, u_input.a.zy)));
    global2 = vec2<u32>(~(~firstLeadingBit(~u_input.b.x)), reverseBits(0u));
    return select(select(vec3<bool>(true, false, all(vec3<bool>(true, true, true))), vec3<bool>(var_2.x >= _wgslsmith_f_op_f32(min(974f, -122f)), ~29221i <= (2147483647i >> (global1[_wgslsmith_index_u32(global2.x, 28u)] % 32u)), firstTrailingBit(4294967295u) != (u_input.b.x ^ 75313u)), !(!any(vec2<bool>(true, true)))), vec3<bool>(false, ~(~1u) > max(u_input.b.x, ~u_input.b.x), true), !(!(!(81316u != u_input.b.x))));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_1(vec4<bool>(!(!select(true, true, true)), select(~u_input.c <= (i32(-1i) * -24790i), true, true), all(func_3()), true), true & (all(vec2<bool>(false, false)) & false), ~global1[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(36215u, 28u)], 4294967295u)), 28u)], min(vec4<u32>(4294967295u, ~(~u_input.b.x), ~select(u_input.b.x, global1[_wgslsmith_index_u32(global2.x, 28u)], true), 51051u), _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 61766u, 1u, u_input.b.x), countOneBits(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, u_input.b.x))), ~(vec4<u32>(1u, global2.x, 9803u, 58806u) >> (vec4<u32>(u_input.b.x, 44662u, 0u, u_input.b.x) % vec4<u32>(32u))))));
    let var_1 = !all(select(select(select(vec4<bool>(false, var_0.a.x, var_0.b, var_0.b), vec4<bool>(false, var_0.b, var_0.a.x, var_0.b), false), var_0.a, select(var_0.a, var_0.a, var_0.a)), select(vec4<bool>(var_0.b, true, true, var_0.a.x), vec4<bool>(true, true, true, var_0.a.x), false), (var_0.b || false) & true));
    let var_2 = Struct_2(!select(!(!var_0.a), !var_0.a, var_0.a), Struct_1(var_0.a, true && (_wgslsmith_f_op_f32(-376f + 1146f) == _wgslsmith_f_op_f32(floor(179f))), ~min(~var_0.d.x, ~4294967295u), max(~min(var_0.d, vec4<u32>(34401u, global1[_wgslsmith_index_u32(u_input.b.x, 28u)], var_0.d.x, u_input.b.x)), vec4<u32>(11739u, abs(4294967295u), 0u, _wgslsmith_dot_vec4_u32(var_0.d, vec4<u32>(u_input.b.x, global2.x, global1[_wgslsmith_index_u32(var_0.d.x, 28u)], 0u))))), Struct_1(!select(var_0.a, vec4<bool>(true, true, true, true), vec4<bool>(var_1, false, var_0.a.x, false)), true, firstLeadingBit(0u), ~(~select(var_0.d, var_0.d, vec4<bool>(var_1, var_0.b, var_1, true)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1200f, -1437f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(559f, -493f))))))));
    var var_3 = global2.x;
    global1 = array<u32, 28>();
    return Struct_2(!vec4<bool>(!var_0.a.x, reverseBits(u_input.b.x) < _wgslsmith_add_u32(5234u, global2.x), func_3().x, !var_1), Struct_1(vec4<bool>(var_0.a.x, !any(vec3<bool>(var_2.b.b, true, false)), false, all(var_0.a)), u_input.a.x >= 2147483647i, reverseBits(abs(global1[_wgslsmith_index_u32(var_2.c.c, 28u)])) << (min(_wgslsmith_dot_vec3_u32(var_0.d.xyz, var_0.d.zzw), ~0u) % 32u), firstTrailingBit(_wgslsmith_div_vec4_u32(~vec4<u32>(global2.x, var_2.b.c, var_2.c.d.x, global2.x), var_2.c.d))), Struct_1(var_2.a, !(!var_2.b.b), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, global1[_wgslsmith_index_u32(60618u, 28u)]), _wgslsmith_sub_vec2_u32(var_2.c.d.ww, var_0.d.yx)), ~(~4294967295u)), ~vec4<u32>(min(1u, var_0.d.x), 1u, _wgslsmith_dot_vec2_u32(u_input.b.zx, vec2<u32>(var_0.c, u_input.b.x)), ~0u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_2.d, vec2<f32>(var_2.d.x, var_2.d.x))) * _wgslsmith_f_op_vec2_f32(-var_2.d)));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: vec3<u32>) -> u32 {
    var var_0 = func_2();
    global1 = array<u32, 28>();
    let var_1 = abs(var_0.b.d.ww);
    let var_2 = var_0.a.xw;
    let var_3 = func_2();
    return firstLeadingBit(45202u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~min(~firstTrailingBit(vec4<u32>(global2.x, global1[_wgslsmith_index_u32(u_input.b.x, 28u)], global2.x, u_input.b.x)), ~(~vec4<u32>(0u, 54876u, global2.x, global2.x)));
    var var_1 = vec4<bool>(true, any(vec2<bool>(func_1(vec3<bool>(true, false, false), vec4<u32>(u_input.b.x, 46430u, global2.x, 6448u), var_0.xxw) >= 0u, all(vec3<bool>(false, true, true)))), true, func_2().a.x | func_3().x);
    var_0 = ~vec4<u32>(var_0.x, 4294967295u, var_0.x, _wgslsmith_add_u32(global2.x, countOneBits(2931u) | global1[_wgslsmith_index_u32(global2.x, 28u)]));
    var_1 = !select(vec4<bool>(true, !func_2().b.a.x, any(vec4<bool>(var_1.x, true, true, false)), var_0.x < 0u), vec4<bool>(!func_3().x, true, func_2().c.b, var_1.x), !(!func_2().b.a));
    var var_2 = var_0.zw;
    let var_3 = all(!(!(!func_2().b.a.wwx)));
    let var_4 = !(u_input.a.x >= -2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(16762i, u_input.c, -(~u_input.a.x), -u_input.a.x ^ abs(_wgslsmith_add_i32(-2147483647i, u_input.c))), min(~reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(-39075i, -2147483647i, u_input.c, u_input.c), vec4<i32>(-16701i, -9066i, 4728i, u_input.a.x), vec4<i32>(u_input.a.x, -51707i, 6083i, u_input.c))), ~vec4<i32>(firstTrailingBit(u_input.c), 4406i, _wgslsmith_dot_vec3_i32(u_input.a, u_input.a), ~u_input.a.x)));
}

