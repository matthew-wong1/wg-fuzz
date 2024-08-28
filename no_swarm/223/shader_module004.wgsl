struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec4<f32>,
    d: u32,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: vec4<u32>,
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

var<private> global0: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(Struct_1(vec3<bool>(false, true, false)), 1u, vec4<f32>(-836f, -959f, -549f, 1983f), 21409u, 29616i), Struct_2(Struct_1(vec3<bool>(true, true, false)), 28018u, vec4<f32>(1000f, 1608f, 1656f, -1639f), 1u, 55232i), Struct_2(Struct_1(vec3<bool>(false, false, true)), 1u, vec4<f32>(1000f, -866f, 225f, 695f), 14730u, -1i), Struct_2(Struct_1(vec3<bool>(false, false, false)), 0u, vec4<f32>(-952f, 322f, -638f, -1024f), 21265u, i32(-2147483648)), Struct_2(Struct_1(vec3<bool>(true, false, false)), 106923u, vec4<f32>(934f, -1314f, -2392f, 446f), 19511u, -1i), Struct_2(Struct_1(vec3<bool>(true, true, true)), 62051u, vec4<f32>(-749f, -1114f, 1000f, 464f), 1u, 0i), Struct_2(Struct_1(vec3<bool>(false, false, true)), 6327u, vec4<f32>(-1000f, -161f, -235f, 109f), 10009u, 2147483647i), Struct_2(Struct_1(vec3<bool>(false, false, false)), 8601u, vec4<f32>(212f, -1804f, -414f, -1242f), 4294967295u, 4238i), Struct_2(Struct_1(vec3<bool>(true, true, true)), 0u, vec4<f32>(1768f, -2287f, -740f, -965f), 8763u, 29406i), Struct_2(Struct_1(vec3<bool>(true, true, false)), 0u, vec4<f32>(-319f, -291f, -1588f, -1000f), 9700u, -9294i), Struct_2(Struct_1(vec3<bool>(true, true, true)), 4294967295u, vec4<f32>(-562f, -1126f, -1665f, 243f), 39069u, 2147483647i), Struct_2(Struct_1(vec3<bool>(false, false, true)), 4294967295u, vec4<f32>(496f, 733f, 367f, -386f), 1u, -1i));

var<private> global1: array<vec4<u32>, 27>;

var<private> global2: array<vec3<f32>, 21>;

var<private> global3: bool;

var<private> global4: array<bool, 7> = array<bool, 7>(false, false, false, true, false, true, false);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-194f + _wgslsmith_f_op_f32(min(216f, _wgslsmith_f_op_f32(ceil(-2054f))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(var_0, _wgslsmith_f_op_f32(-var_0), true)), var_0, _wgslsmith_div_f32(_wgslsmith_div_f32(var_0, var_0), 170f), 1056f) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2231f, var_0, var_0, -667f) + vec4<f32>(2441f, 488f, var_0, 584f))))))));
    let var_2 = vec4<u32>(~arg_0 << (81454u % 32u), ~max(_wgslsmith_mod_u32(arg_0, 0u), u_input.e.x), arg_0, arg_0) >> (vec4<u32>(~(~arg_0), 45532u, min(1009u, 4595u), ~15919u) % vec4<u32>(32u));
    let var_3 = vec2<bool>(1910i < firstTrailingBit(~u_input.a.x << (~40241u % 32u)), 39065u < min(_wgslsmith_mod_u32(1u, ~u_input.d.x), _wgslsmith_sub_u32(~1u, var_2.x)));
    var var_4 = u_input.c;
    return vec3<bool>(!any(vec4<bool>(true, select(true, global4[_wgslsmith_index_u32(0u, 7u)], global4[_wgslsmith_index_u32(var_2.x, 7u)]), true, false)), var_3.x, select(false, true && !(1u != u_input.d.x), !(!all(vec4<bool>(true, var_3.x, global4[_wgslsmith_index_u32(var_2.x, 7u)], var_3.x)))));
}

fn func_2() -> f32 {
    let var_0 = Struct_2(Struct_1(select(!func_3(0u), select(vec3<bool>(true, true, true), select(vec3<bool>(true, global4[_wgslsmith_index_u32(u_input.c, 7u)], false), vec3<bool>(false, global4[_wgslsmith_index_u32(u_input.d.x, 7u)], global4[_wgslsmith_index_u32(u_input.c, 7u)]), global4[_wgslsmith_index_u32(0u, 7u)]), func_3(u_input.c)), !(!vec3<bool>(true, global4[_wgslsmith_index_u32(u_input.e.x, 7u)], global4[_wgslsmith_index_u32(47842u, 7u)])))), 0u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(492f, 135f, -516f, -1005f), vec4<f32>(673f, -1000f, 1131f, -571f))))))), u_input.e.x, u_input.a.x);
    var var_1 = var_0.c;
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(var_0.c.x)))), -1150f)), _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(278f - -607f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_0.c.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-976f - var_0.c.x))))), var_0.c.x));
    var_1 = var_0.c;
    global0 = array<Struct_2, 12>();
    return _wgslsmith_f_op_f32(ceil(-1000f));
}

fn func_1(arg_0: vec2<i32>) -> Struct_3 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(526f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1430f - 600f))), true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2138f)))));
    let var_1 = countOneBits(u_input.c);
    var_0 = vec2<f32>(-559f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)));
    let var_2 = vec3<u32>((u_input.d.x & abs(var_1)) & var_1, ~33238u, ~u_input.c);
    var var_3 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1359f, -539f), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(select(var_0.x, var_0.x, false)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, -1000f), vec2<f32>(var_0.x, var_0.x), vec2<bool>(global4[_wgslsmith_index_u32(var_2.x, 7u)], global4[_wgslsmith_index_u32(2330u, 7u)]))), _wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, var_0.x), vec2<f32>(1164f, 287f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-702f, -694f) + vec2<f32>(-1026f, var_0.x)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-246f, -780f)))))));
    return Struct_3(Struct_1(vec3<bool>(!(-5752i <= u_input.a.x), global4[_wgslsmith_index_u32(~var_2.x, 7u)], global4[_wgslsmith_index_u32(u_input.d.x, 7u)])), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(var_0.x)), var_0.x)) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1365f, var_0.x), vec2<f32>(var_0.x, -563f)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(845f, 355f) - vec2<f32>(-870f, 362f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(~(reverseBits(~u_input.e.x) & 57954u), reverseBits(u_input.d.x), (~(~0u) << ((u_input.e.x ^ ~55287u) % 32u)) >= ~(~u_input.d.x));
    global4 = array<bool, 7>();
    let var_1 = func_1(u_input.a);
    var_0 = ~u_input.e.x;
    global0 = array<Struct_2, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(25762i);
}

