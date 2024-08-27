struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: bool,
    c: vec2<u32>,
    d: f32,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 19> = array<bool, 19>(false, true, false, true, true, false, false, true, true, true, false, false, false, false, true, true, false, true, false);

var<private> global1: array<vec3<u32>, 18>;

var<private> global2: array<Struct_4, 8> = array<Struct_4, 8>(Struct_4(Struct_1(1u)), Struct_4(Struct_1(0u)), Struct_4(Struct_1(4294967295u)), Struct_4(Struct_1(1u)), Struct_4(Struct_1(1u)), Struct_4(Struct_1(0u)), Struct_4(Struct_1(45058u)), Struct_4(Struct_1(4294967295u)));

var<private> global3: array<Struct_3, 14> = array<Struct_3, 14>(Struct_3(vec2<bool>(false, false), true, vec2<u32>(1u, 4294967295u), 438f), Struct_3(vec2<bool>(false, false), true, vec2<u32>(0u, 61348u), 1605f), Struct_3(vec2<bool>(true, false), true, vec2<u32>(74931u, 7902u), 493f), Struct_3(vec2<bool>(true, true), true, vec2<u32>(0u, 0u), -1106f), Struct_3(vec2<bool>(true, false), false, vec2<u32>(1u, 4294967295u), -103f), Struct_3(vec2<bool>(true, true), false, vec2<u32>(4294967295u, 39499u), 2136f), Struct_3(vec2<bool>(false, false), true, vec2<u32>(1u, 24329u), -868f), Struct_3(vec2<bool>(true, false), true, vec2<u32>(52937u, 17011u), 869f), Struct_3(vec2<bool>(true, false), true, vec2<u32>(0u, 9918u), -517f), Struct_3(vec2<bool>(true, true), true, vec2<u32>(0u, 0u), 889f), Struct_3(vec2<bool>(true, true), true, vec2<u32>(1u, 39126u), -102f), Struct_3(vec2<bool>(true, true), true, vec2<u32>(11397u, 0u), 1478f), Struct_3(vec2<bool>(false, true), true, vec2<u32>(4294967295u, 4294967295u), 782f), Struct_3(vec2<bool>(true, true), false, vec2<u32>(29788u, 0u), -394f));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: bool) -> f32 {
    let var_0 = firstLeadingBit(min(u_input.a, 9766u));
    var var_1 = ~vec2<u32>(firstTrailingBit(~4294967295u), 51882u);
    let var_2 = Struct_2(Struct_1(_wgslsmith_mult_u32(_wgslsmith_mult_u32(max(0u, 151885u), 1u >> (u_input.a % 32u)), _wgslsmith_sub_u32(_wgslsmith_div_u32(1u, var_1.x), 1u))));
    var var_3 = u_input.c;
    let var_4 = _wgslsmith_dot_vec2_u32(~((~vec2<u32>(4294967295u, u_input.a) << (~vec2<u32>(74227u, u_input.c) % vec2<u32>(32u))) & vec2<u32>(~var_1.x, var_2.a.a)), vec2<u32>(1u, abs(var_2.a.a)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(-389f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-675f, _wgslsmith_f_op_f32(step(-206f, -1382f)))) - _wgslsmith_f_op_f32(-2092f * _wgslsmith_f_op_f32(trunc(-700f))))));
}

fn func_2(arg_0: Struct_4) -> Struct_1 {
    global0 = array<bool, 19>();
    let var_0 = Struct_5(_wgslsmith_f_op_f32(func_3(~u_input.b.x, !global0[_wgslsmith_index_u32(~firstLeadingBit(arg_0.a.a), 19u)])));
    var var_1 = vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(u_input.c, 19u)]);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(155f * -690f) - _wgslsmith_f_op_f32(var_0.a * 1000f)) + _wgslsmith_f_op_f32(func_3(u_input.b.x, all(vec4<bool>(false, false, false, var_1.x)))))));
    var var_3 = -340f;
    return arg_0.a;
}

fn func_4(arg_0: Struct_1) -> Struct_4 {
    var var_0 = !(-504f != _wgslsmith_f_op_f32(select(-1397f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-378f)), 855f, true)), !any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 19u)], true, false)))));
    global2 = array<Struct_4, 8>();
    let var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-743f, -1000f), vec2<f32>(-1151f, 681f), global0[_wgslsmith_index_u32(arg_0.a, 19u)])) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1267f, 128f) - vec2<f32>(-686f, 830f)))))));
    global3 = array<Struct_3, 14>();
    var_0 = global0[_wgslsmith_index_u32(reverseBits(min(37383u, ~(~u_input.c))) >> (arg_0.a % 32u), 19u)];
    return Struct_4(Struct_1(max(u_input.a, ~(~1063u))));
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: u32) -> Struct_1 {
    let var_0 = 2147483647i;
    var var_1 = -337f;
    var var_2 = func_4(func_2(global2[_wgslsmith_index_u32(arg_2, 8u)]));
    var var_3 = ~(vec2<u32>(0u, arg_1.a.a ^ 1u) ^ ~_wgslsmith_clamp_vec2_u32(max(vec2<u32>(14999u, 58181u), vec2<u32>(21857u, var_2.a.a)), min(vec2<u32>(8301u, u_input.a), vec2<u32>(arg_2, arg_0)), abs(vec2<u32>(arg_2, 0u))));
    let var_4 = -31391i;
    return arg_1.a;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<bool>) -> f32 {
    global3 = array<Struct_3, 14>();
    global2 = array<Struct_4, 8>();
    let var_0 = !vec3<bool>(true, any(select(arg_2.wyx, !vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 19u)], arg_2.x, true), arg_2.xwy)), false);
    var var_1 = arg_1;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-665f, -543f))), 1623f, -765f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f))))));
    return 988f;
}

fn func_6(arg_0: f32, arg_1: Struct_3, arg_2: f32, arg_3: f32) -> Struct_1 {
    global2 = array<Struct_4, 8>();
    var var_0 = Struct_5(775f);
    return func_2(global2[_wgslsmith_index_u32(~u_input.c, 8u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 19>();
    let var_0 = 67296i;
    var var_1 = u_input.a;
    let var_2 = 60999u;
    global2 = array<Struct_4, 8>();
    var var_3 = Struct_2(func_6(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1118f) * _wgslsmith_f_op_f32(-1686f + -1105f)), -981f)), Struct_3(select(!vec2<bool>(global0[_wgslsmith_index_u32(var_2, 19u)], global0[_wgslsmith_index_u32(u_input.a, 19u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 19u)], global0[_wgslsmith_index_u32(u_input.a, 19u)]), !vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 19u)], false)), global0[_wgslsmith_index_u32(9684u, 19u)], countOneBits(vec2<u32>(var_2, 1u)), _wgslsmith_f_op_f32(func_5(func_1(18350u, Struct_2(Struct_1(1u)), u_input.a), Struct_2(Struct_1(u_input.a)), select(vec4<bool>(global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(u_input.c, 19u)], global0[_wgslsmith_index_u32(u_input.c, 19u)], global0[_wgslsmith_index_u32(var_2, 19u)]), vec4<bool>(global0[_wgslsmith_index_u32(var_2, 19u)], global0[_wgslsmith_index_u32(var_2, 19u)], false, global0[_wgslsmith_index_u32(0u, 19u)]), false)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-154f, -227f, global0[_wgslsmith_index_u32(var_2, 19u)])) + -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-601f * 842f), -1407f))), _wgslsmith_f_op_f32(func_3(-(~(-57476i)), global0[_wgslsmith_index_u32(var_2, 19u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2640f - 1815f) * -1395f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-168f, -125f)), _wgslsmith_f_op_f32(sign(146f)), any(vec3<bool>(global0[_wgslsmith_index_u32(0u, 19u)], false, false)))), _wgslsmith_f_op_f32(782f + -1047f))));
}

