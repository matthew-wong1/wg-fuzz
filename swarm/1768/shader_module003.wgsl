struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16>;

var<private> global1: array<vec4<f32>, 14> = array<vec4<f32>, 14>(vec4<f32>(-1133f, -1000f, -1650f, -881f), vec4<f32>(922f, -724f, 845f, -833f), vec4<f32>(623f, -543f, -1547f, 501f), vec4<f32>(549f, -2069f, 1505f, 617f), vec4<f32>(-1457f, -3288f, -2429f, 1000f), vec4<f32>(-1000f, -384f, -945f, 712f), vec4<f32>(-1214f, -825f, 160f, 299f), vec4<f32>(593f, 1532f, -2383f, -1521f), vec4<f32>(623f, 1474f, -248f, -103f), vec4<f32>(-152f, 792f, -1449f, -253f), vec4<f32>(575f, -941f, -1000f, -527f), vec4<f32>(-1000f, 690f, -915f, -660f), vec4<f32>(-641f, -878f, 142f, 964f), vec4<f32>(-704f, 267f, 571f, 1088f));

var<private> global2: f32 = 119f;

var<private> global3: array<vec3<i32>, 20>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec2<bool>, arg_1: u32, arg_2: vec2<bool>) -> bool {
    global0 = array<Struct_1, 16>();
    var var_0 = Struct_2(-871f, global0[_wgslsmith_index_u32(arg_1, 16u)]);
    global2 = _wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.a))), _wgslsmith_f_op_f32(-var_0.a))));
    var var_1 = Struct_2(var_0.a, Struct_1(!arg_2, firstTrailingBit(vec2<u32>(86873u, u_input.c)), 0u));
    var_1 = Struct_2(var_0.a, Struct_1(!select(vec2<bool>(false, false), vec2<bool>(true, arg_0.x), arg_0.x), var_1.b.b << (~(~var_0.b.b) % vec2<u32>(32u)), firstLeadingBit(u_input.c)));
    return arg_2.x;
}

fn func_2() -> vec2<bool> {
    return select(vec2<bool>(true, (any(vec3<bool>(true, true, false)) || func_3(vec2<bool>(true, false), u_input.c, vec2<bool>(true, true))) | true), select(vec2<bool>(true, true), vec2<bool>(any(vec4<bool>(true, false, true, false)) || true, select(all(vec2<bool>(false, true)), select(true, true, false), true)), select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), false), true), select(vec2<bool>(true, true), vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(false, true), true)), all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true))))), true);
}

fn func_1() -> StorageBuffer {
    var var_0 = func_2();
    let var_1 = any(select(!(!(!vec2<bool>(true, var_0.x))), select(select(vec2<bool>(true, true), !vec2<bool>(var_0.x, false), var_0.x), func_2(), select(vec2<bool>(var_0.x, true), !vec2<bool>(true, var_0.x), vec2<bool>(false, false))), select(vec2<bool>(select(var_0.x, false, var_0.x), u_input.c == u_input.c), !vec2<bool>(var_0.x, var_0.x), (var_0.x != var_0.x) != all(vec2<bool>(var_0.x, var_0.x)))));
    let var_2 = global0[_wgslsmith_index_u32(0u | u_input.c, 16u)];
    let var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(285f)) - _wgslsmith_f_op_f32(-2140f * -324f))))), Struct_1(vec2<bool>(true, var_0.x), _wgslsmith_mod_vec2_u32(vec2<u32>(~54478u, var_2.b.x), ~select(var_2.b, vec2<u32>(u_input.c, 4294967295u), vec2<bool>(true, true))), 17740u));
    let var_4 = global3[_wgslsmith_index_u32(u_input.c, 20u)];
    return StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_3.a * -1159f)))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(var_3.a))))), firstLeadingBit(2147483647i), ~1u, max(-var_4.xy, vec2<i32>(var_4.x, -var_4.x) << (countOneBits(var_3.b.b) % vec2<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(705f)) * -1391f));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

