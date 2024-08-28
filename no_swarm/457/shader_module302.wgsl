// {"0:0":[183,147,114,175,19,50,100,228,225,191,168,72,127,40,28,126]}
// Seed: 10325025507611821653

struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec2<u32>(4294967295u, 8758u), vec2<bool>(true, false)), Struct_1(vec2<u32>(4294967295u, 2904u), vec2<bool>(true, true)), Struct_1(vec2<u32>(136010u, 0u), vec2<bool>(false, false)), Struct_1(vec2<u32>(1u, 18191u), vec2<bool>(true, true)), Struct_1(vec2<u32>(5051u, 22332u), vec2<bool>(false, false)));

var<private> global1: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec2<u32>(52660u, 0u), vec2<bool>(false, true)), Struct_1(vec2<u32>(1u, 3620u), vec2<bool>(true, false)), Struct_1(vec2<u32>(4294967295u, 77446u), vec2<bool>(false, true)), Struct_1(vec2<u32>(4294967295u, 14731u), vec2<bool>(false, true)), Struct_1(vec2<u32>(0u, 4294967295u), vec2<bool>(true, false)), Struct_1(vec2<u32>(85196u, 0u), vec2<bool>(true, false)), Struct_1(vec2<u32>(22224u, 35175u), vec2<bool>(true, false)), Struct_1(vec2<u32>(72291u, 43596u), vec2<bool>(false, true)), Struct_1(vec2<u32>(11964u, 0u), vec2<bool>(true, true)), Struct_1(vec2<u32>(0u, 57647u), vec2<bool>(false, true)), Struct_1(vec2<u32>(1u, 31014u), vec2<bool>(true, false)), Struct_1(vec2<u32>(0u, 6312u), vec2<bool>(true, false)), Struct_1(vec2<u32>(15988u, 27600u), vec2<bool>(false, false)), Struct_1(vec2<u32>(26624u, 1u), vec2<bool>(true, true)), Struct_1(vec2<u32>(7297u, 71680u), vec2<bool>(false, true)), Struct_1(vec2<u32>(40783u, 4294967295u), vec2<bool>(false, true)), Struct_1(vec2<u32>(0u, 660u), vec2<bool>(true, false)), Struct_1(vec2<u32>(1u, 28533u), vec2<bool>(false, false)), Struct_1(vec2<u32>(4834u, 0u), vec2<bool>(false, true)), Struct_1(vec2<u32>(1u, 4294967295u), vec2<bool>(true, false)), Struct_1(vec2<u32>(121507u, 0u), vec2<bool>(false, true)), Struct_1(vec2<u32>(1u, 11519u), vec2<bool>(true, true)), Struct_1(vec2<u32>(21980u, 0u), vec2<bool>(true, false)), Struct_1(vec2<u32>(6137u, 30363u), vec2<bool>(false, false)), Struct_1(vec2<u32>(0u, 1u), vec2<bool>(true, false)), Struct_1(vec2<u32>(11613u, 1u), vec2<bool>(true, true)), Struct_1(vec2<u32>(29663u, 9906u), vec2<bool>(true, true)), Struct_1(vec2<u32>(1u, 1u), vec2<bool>(false, true)), Struct_1(vec2<u32>(1u, 1u), vec2<bool>(true, true)));

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    global1 = array<Struct_1, 29>();
    global1 = array<Struct_1, 29>();
    var var_0 = arg_0.b.x;
    global0 = array<Struct_1, 5>();
    global1 = array<Struct_1, 29>();
    return select(select(vec3<bool>(all(vec4<bool>(true, arg_0.b.x, true, arg_0.b.x)), !false, ~(i32(-2147483648)) <= -7499i), !(!(!vec3<bool>(arg_0.b.x, true, false))), select(select(!vec3<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x), select(vec3<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x), vec3<bool>(arg_0.b.x, arg_0.b.x, true), vec3<bool>(true, arg_0.b.x, arg_0.b.x)), !vec3<bool>(arg_0.b.x, true, false)), select(select(vec3<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x), vec3<bool>(arg_0.b.x, false, arg_0.b.x), true), !vec3<bool>(arg_0.b.x, arg_0.b.x, true), vec3<bool>(false, true, arg_0.b.x)), true)), select(select(!vec3<bool>(true, false, true), select(!vec3<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x), !vec3<bool>(true, arg_0.b.x, arg_0.b.x), select(vec3<bool>(true, false, false), vec3<bool>(arg_0.b.x, false, true), arg_0.b.x)), false), !(!vec3<bool>(true, arg_0.b.x, arg_0.b.x)), all(select(vec4<bool>(arg_0.b.x, arg_0.b.x, false, false), select(vec4<bool>(false, false, true, arg_0.b.x), vec4<bool>(false, arg_0.b.x, true, arg_0.b.x), arg_0.b.x), select(vec4<bool>(false, false, false, arg_0.b.x), vec4<bool>(false, arg_0.b.x, false, arg_0.b.x), false)))), true);
}

fn func_2() -> Struct_1 {
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    var var_0 = func_3(Struct_1(vec2<u32>(41198u, ~1u + ~u_input.a.x), !(!vec2<bool>(true, false))));
    var var_1 = 543f;
    var var_2 = !var_0.xx;
    return global1[~u_input.a.x];
}

fn func_1(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: bool) -> Struct_1 {
    let var_0 = func_2();
    let var_1 = -(~(vec4<i32>(clamp(-1i, arg_0, -20342i), clamp(arg_0, -64180i, 33236i), ~arg_0, arg_0 | i32(-2147483648)) << max(vec4<u32>(u_input.a.x, 4294967295u, arg_1.x, var_0.a.x) % vec4<u32>(u_input.a.x, 121936u, arg_1.x, arg_1.x), vec4<u32>(u_input.a.x, 1u, arg_1.x, 1u))));
    global1 = array<Struct_1, 29>();
    var var_2 = vec3<i32>(-(-countOneBits(-24975i)), dot(abs(min(vec2<i32>(-1i, 5536i), var_1.wx)) - vec2<i32>(-7314i, i32(-2147483648)), var_1.yx ^ max(var_1.ww, var_1.xy)), ~(var_1.x / arg_0));
    var var_3 = func_3(Struct_1(select(arg_1, countOneBits(reverseBits(var_0.a)), any(!var_0.b)), !func_3(Struct_1(vec2<u32>(0u, 50621u), vec2<bool>(arg_3, false))).yy));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 5>();
    let var_0 = 0u;
    var var_1 = func_1((reverseBits(21947i) >> ~(~var_0)) / 0i, ~u_input.a.xy, Struct_2(true & !all(vec3<bool>(false, false, true))), false);
    let var_2 = vec4<bool>(var_1.b.x, -trunc(1154f - 108f) >= -185f, any(var_1.b), var_1.b.x);
    var_1 = Struct_1(u_input.a.yz + firstTrailingBit(~vec2<u32>(var_0, var_0)), vec2<bool>(!false, true));
    global1 = array<Struct_1, 29>();
    var_1 = global0[0u];
    let x = u_input.a;
    s_output = StorageBuffer(-(vec4<f32>(1000f, -567f, 1313f, -515f) + (vec4<f32>(433f, 149f, 350f, 271f) - vec4<f32>(-558f, 1000f, 1403f, 312f))) - (((vec4<f32>(1632f, -1261f, 246f, 1587f) + vec4<f32>(-1000f, -433f, -1000f, 838f)) - -vec4<f32>(543f, -684f, -916f, 638f)) + -(vec4<f32>(-531f, -1381f, -2521f, -107f) - vec4<f32>(-1167f, -1000f, -1117f, 1815f))), firstTrailingBit(reverseBits(vec4<u32>(var_0, var_0, 1u, 8566u)) - (max(vec4<u32>(u_input.a.x, 25179u, 80060u, var_0), vec4<u32>(68983u, 11345u, 26759u, 87231u)) | ~vec4<u32>(30114u, 12518u, 27566u, 1u))), select((vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x) * vec4<u32>(var_0, 20654u, u_input.a.x, 0u)) / (vec4<u32>(4294967295u, 33319u, u_input.a.x, 4458u) & vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, var_0)), vec4<u32>(~11315u, 81089u * var_0, 0u, 4294967295u), vec4<bool>(var_1.b.x, false, false, var_0 >= 1u)) + (((vec4<u32>(60u, 1u, var_0, 21020u) & vec4<u32>(22484u, 4294967295u, 32920u, 18258u)) | (vec4<u32>(var_1.a.x, u_input.a.x, var_0, 43957u) * vec4<u32>(4294967295u, u_input.a.x, var_0, 10986u))) ^ vec4<u32>(~var_1.a.x, firstLeadingBit(u_input.a.x), var_1.a.x, var_0)));
}

