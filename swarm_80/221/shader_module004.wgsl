struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<u32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(5386u, vec3<u32>(4294967295u, 1u, 4294967295u), vec3<f32>(-1000f, 588f, 1000f)), Struct_1(4294967295u, vec3<u32>(1u, 0u, 45761u), vec3<f32>(-513f, -713f, 1260f)), Struct_1(2552u, vec3<u32>(16749u, 23102u, 26665u), vec3<f32>(464f, 1243f, -545f)), Struct_1(0u, vec3<u32>(4294967295u, 0u, 19711u), vec3<f32>(385f, 141f, 318f)), Struct_1(1u, vec3<u32>(0u, 37553u, 4294967295u), vec3<f32>(-1201f, -312f, -1539f)), Struct_1(60222u, vec3<u32>(0u, 53640u, 0u), vec3<f32>(-1000f, -1000f, 413f)), Struct_1(18272u, vec3<u32>(62746u, 1u, 4294967295u), vec3<f32>(-577f, -206f, -930f)), Struct_1(35357u, vec3<u32>(0u, 34200u, 0u), vec3<f32>(673f, 1145f, -1163f)), Struct_1(0u, vec3<u32>(30232u, 9448u, 4294967295u), vec3<f32>(331f, 681f, -809f)), Struct_1(15931u, vec3<u32>(14873u, 11761u, 35760u), vec3<f32>(488f, 262f, -841f)), Struct_1(71907u, vec3<u32>(2457u, 1u, 10637u), vec3<f32>(-1762f, 175f, -557f)), Struct_1(64429u, vec3<u32>(7575u, 28021u, 0u), vec3<f32>(-298f, -969f, 233f)), Struct_1(55484u, vec3<u32>(36428u, 48755u, 6664u), vec3<f32>(214f, 1896f, 562f)));

var<private> global1: array<Struct_1, 12>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_2(vec2<bool>(true, -85587i > u_input.d), global0[_wgslsmith_index_u32(u_input.c, 13u)], ~vec4<u32>(_wgslsmith_mod_u32(u_input.c, 0u), max(u_input.c, 0u), ~52876u, 4294967295u), _wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.d, u_input.a, 23207i, u_input.b) << (vec4<u32>(15272u, u_input.c, 115313u, u_input.c) % vec4<u32>(32u)), vec4<i32>(29304i, ~0i, 2147483647i, u_input.d | 1i), select(-vec4<i32>(u_input.d, u_input.a, u_input.b, 11829i), vec4<i32>(u_input.b, u_input.d, -39088i, u_input.a), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), true)))), Struct_1(~34863u, vec3<u32>(abs(~26853u), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c, 62869u), ~vec2<u32>(45348u, u_input.c)), ~(~u_input.c)), vec3<f32>(1000f, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -701f))))), ~abs(vec4<u32>(firstLeadingBit(1262u), u_input.c, u_input.c, ~u_input.c)), !select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true), u_input.c <= 91190u), vec3<bool>(true, 1i <= u_input.b, any(vec2<bool>(true, false))), vec3<bool>(true, true, select(false, false, false))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(var_0.a.d.yyw), var_0.a.d.zzx);
}

