struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<i32>,
    d: vec3<bool>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_3,
    c: vec4<bool>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
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

var<private> global0: array<vec2<u32>, 13>;

var<private> global1: Struct_5;

var<private> global2: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(vec3<bool>(false, false, false)), Struct_2(vec3<bool>(false, false, false)), Struct_2(vec3<bool>(true, true, false)), Struct_2(vec3<bool>(true, true, false)), Struct_2(vec3<bool>(true, true, false)), Struct_2(vec3<bool>(true, true, true)), Struct_2(vec3<bool>(false, false, true)), Struct_2(vec3<bool>(true, false, true)), Struct_2(vec3<bool>(true, false, false)), Struct_2(vec3<bool>(false, false, false)), Struct_2(vec3<bool>(false, false, true)), Struct_2(vec3<bool>(false, false, false)), Struct_2(vec3<bool>(true, true, false)), Struct_2(vec3<bool>(true, true, false)), Struct_2(vec3<bool>(true, true, true)), Struct_2(vec3<bool>(false, true, true)), Struct_2(vec3<bool>(true, false, true)), Struct_2(vec3<bool>(true, true, true)), Struct_2(vec3<bool>(true, false, false)), Struct_2(vec3<bool>(true, true, false)), Struct_2(vec3<bool>(true, true, false)), Struct_2(vec3<bool>(true, true, true)));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_4) -> u32 {
    var var_0 = !(!global1.b.a.a);
    var var_1 = vec4<bool>(true, 950f < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(1978f)))))), false, any(vec3<bool>(arg_1.a.b, true, !(arg_0.x | false))));
    var_0 = var_1.wxw;
    var var_2 = Struct_5(global1.b, global1.a, global1.c, abs(global1.d << (_wgslsmith_sub_vec4_u32(u_input.c, vec4<u32>(0u, u_input.b, global1.d.x, global1.d.x)) % vec4<u32>(32u))));
    var var_3 = Struct_5(global1.b, Struct_3(Struct_2(select(global1.a.c.a, vec3<bool>(var_2.a.c.a.x, var_0.x, global1.b.c.a.x), !global1.c.x)), arg_0.x, Struct_2(vec3<bool>(false, any(vec2<bool>(var_0.x, false)), true))), !select(vec4<bool>(true, any(var_2.a.a.a), true, true), !vec4<bool>(false, false, true, var_0.x), select(var_0.x, all(arg_1.a.c.a), true)), ~firstTrailingBit(firstLeadingBit(global1.d)));
    return _wgslsmith_add_u32(43321u, ~4294967295u);
}

fn func_2() -> bool {
    global1 = Struct_5(global1.b, Struct_3(global1.b.c, false, global2[_wgslsmith_index_u32(func_3(global1.c.ww, Struct_4(global1.a, Struct_3(Struct_2(vec3<bool>(false, false, false)), false, global1.a.a))), 22u)]), !select(!global1.c, !select(global1.c, vec4<bool>(global1.c.x, global1.b.c.a.x, global1.c.x, true), true), global1.c), u_input.c);
    let var_0 = global1.a;
    var var_1 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(1f - 1648f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(247f - 371f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-693f, -1233f))), 1000f)));
    var var_2 = Struct_4(Struct_3(global1.b.a, !all(vec3<bool>(true, false, false)), global1.b.a), global1.a);
    return all(vec2<bool>(true, false));
}

fn func_1() -> Struct_5 {
    let var_0 = vec3<bool>(true, all(!select(global1.c, global1.c, global1.c)) || select(any(vec2<bool>(true, true)), select(false, select(false, global1.b.c.a.x, global1.c.x), all(vec4<bool>(global1.c.x, global1.c.x, true, global1.b.c.a.x))), true), func_2());
    var var_1 = Struct_4(Struct_3(global2[_wgslsmith_index_u32(abs(u_input.b), 22u)], false, Struct_2(select(select(vec3<bool>(global1.b.a.a.x, global1.a.a.a.x, global1.b.b), vec3<bool>(global1.b.c.a.x, global1.c.x, true), true), !vec3<bool>(global1.a.a.a.x, false, false), select(var_0, vec3<bool>(false, global1.a.b, false), vec3<bool>(false, global1.c.x, true))))), global1.a);
    var var_2 = Struct_5(global1.a, Struct_3(Struct_2(select(var_1.a.c.a, select(var_0, var_1.b.a.a, vec3<bool>(false, true, var_1.b.b)), vec3<bool>(false, false, false))), var_0.x, global1.a.c), vec4<bool>(true, any(vec3<bool>(var_1.b.c.a.x, var_0.x, false)), true, true), ~(global1.d ^ select(vec4<u32>(global1.d.x, global1.d.x, 13877u, 1u), vec4<u32>(u_input.b, 57760u, global1.d.x, 121971u), any(vec3<bool>(var_1.b.a.a.x, false, global1.c.x)))));
    global1 = Struct_5(Struct_3(var_1.b.c, false, global1.a.a), global1.b, vec4<bool>(global1.c.x, global1.b.b, !all(var_1.b.a.a.zy), 32394i < firstLeadingBit(countOneBits(u_input.a.x))), max(_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(24435u, 1u), ~u_input.b, 32895u & global1.d.x, _wgslsmith_div_u32(35133u, 1u)), global1.d), vec4<u32>(var_2.d.x, _wgslsmith_add_u32(26853u, u_input.b), var_2.d.x, _wgslsmith_dot_vec2_u32(u_input.c.xx, vec2<u32>(38966u, u_input.c.x))) >> ((vec4<u32>(13421u, var_2.d.x, var_2.d.x, 8029u) ^ vec4<u32>(23164u, 0u, u_input.b, 1u)) % vec4<u32>(32u))));
    let var_3 = ~_wgslsmith_dot_vec4_u32(~vec4<u32>(var_2.d.x, _wgslsmith_sub_u32(4294967295u, 8960u), u_input.b | var_2.d.x, 56929u), _wgslsmith_mod_vec4_u32(vec4<u32>(78100u, 0u, var_2.d.x, 1u), (vec4<u32>(2897u, global1.d.x, 21903u, 16132u) ^ vec4<u32>(31927u, global1.d.x, global1.d.x, 1u)) >> ((u_input.c & u_input.c) % vec4<u32>(32u))));
    return Struct_5(Struct_3(global2[_wgslsmith_index_u32(1u, 22u)], false, Struct_2(vec3<bool>(false, !global1.b.b, true))), Struct_3(Struct_2(var_2.c.wzy), true && !(!var_2.b.b), global1.b.c), select(select(select(select(vec4<bool>(true, global1.a.b, false, var_1.a.b), vec4<bool>(true, false, var_2.a.c.a.x, false), var_2.c), select(var_2.c, vec4<bool>(var_1.a.c.a.x, var_0.x, var_0.x, true), var_1.a.a.a.x), vec4<bool>(false, var_1.b.a.a.x, true, global1.b.a.a.x)), global1.c, abs(u_input.a.x) >= ~u_input.a.x), !select(vec4<bool>(var_0.x, true, global1.c.x, false), vec4<bool>(false, var_2.b.b, false, var_0.x), true), true), ~global1.d);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1();
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(342f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(758f + -682f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -412f), _wgslsmith_f_op_f32(-1007f - -1148f), false)), _wgslsmith_f_op_f32(f32(-1f) * -253f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(768f, 1450f, 1910f, 2555f) + vec4<f32>(-1446f, 439f, -763f, 687f))))));
    var var_1 = 1u;
    var_1 = u_input.c.x;
    var_1 = ~(~4294967295u) >> (global1.d.x % 32u);
    var var_2 = Struct_4(Struct_3(func_1().a.c, any(func_1().c), global2[_wgslsmith_index_u32(~1u, 22u)]), global1.a);
    let x = u_input.a;
    s_output = StorageBuffer(0i);
}

