// {"0:0":[65,214,16,137,17,71,135,217,124,79,250,139,87,183,101,202,220,88,75,160,21,237,99,137,194,129,44,86,76,243,198,3,116,44,248,214,39,235,66,43,79,18,188,160,97,166,100,231]}
// Seed: 6538558725432325037

struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec2<u32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: vec2<i32> = vec2<i32>(1i, 0i);

var<private> global2: vec2<bool>;

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec3<i32>) -> vec2<bool> {
    global2 = vec2<bool>(any(select(vec3<bool>(global2.x, !global2.x, false || true), select(!vec3<bool>(true, arg_0.d.x, arg_0.d.x), select(vec3<bool>(true, arg_0.d.x, true), vec3<bool>(global2.x, true, arg_0.d.x), false), false), !(!vec3<bool>(arg_0.d.x, global2.x, global2.x)))), any(!(!arg_0.d)));
    var var_0 = u_input.c;
    var var_1 = Struct_1(-(-step(vec3<f32>(113f, -455f, 521f), vec3<f32>(arg_0.a.x, arg_0.a.x, arg_0.a.x)) / arg_0.a), arg_1, vec2<u32>(13611u, ~abs(arg_0.c.x + 56137u)), arg_0.d);
    var var_2 = Struct_1(max(vec3<f32>(select(arg_0.a.x, -arg_0.a.x, false), -(-(-426f)), -907f), vec3<f32>(-(-1000f - var_1.a.x), (329f * arg_0.a.x) * exp2(arg_0.a.x), -623f)), 24739u, vec2<u32>(countOneBits(0u) | var_1.b, 1u & dot(abs(vec2<u32>(var_1.b, var_1.b)), vec2<u32>(1u, u_input.a.x))), vec2<bool>(any(select(vec4<bool>(var_1.d.x, global2.x, var_1.d.x, global2.x), vec4<bool>(false, var_1.d.x, false, arg_0.d.x), !false)), true));
    let var_3 = var_2.d.x;
    return select(select(!select(vec2<bool>(global2.x, global2.x), select(vec2<bool>(false, var_1.d.x), arg_0.d, vec2<bool>(true, false)), arg_0.d), var_2.d, arg_0.d), arg_0.d, global2.x);
}

fn func_2(arg_0: vec3<i32>) -> vec3<u32> {
    global2 = select(!vec2<bool>(!(u_input.d.x > u_input.b), !true), !vec2<bool>(true & !false, true), !func_3(Struct_1(-vec3<f32>(-614f, -654f, 436f), ~global0.x, vec2<u32>(1u, 4294967295u), vec2<bool>(global2.x, global2.x)), u_input.a.x, arg_0));
    let var_0 = ~(((vec4<u32>(global0.x, 89441u, 49326u, 62969u) / clamp(vec4<u32>(4294967295u, 1u, global0.x, 0u), vec4<u32>(global0.x, global0.x, 1944u, global0.x), vec4<u32>(u_input.a.x, 1u, 1u, 71388u))) | vec4<u32>(firstLeadingBit(4294967295u), u_input.a.x, global0.x, 4294967295u)) << ~(~(~vec4<u32>(global0.x, u_input.a.x, 71012u, 4294967295u))));
    var var_1 = select(vec3<bool>(global2.x, any(vec2<bool>(false, select(false, global2.x, false))), !all(vec4<bool>(true, global2.x, global2.x, false)) & false), !vec3<bool>(global2.x | global2.x, !false, !global2.x), !all(vec4<bool>(!global2.x, false, any(vec4<bool>(global2.x, true, false, false)), 0i <= 0i)));
    global1 = abs(vec2<i32>(-3791i, 0i));
    global0 = ~vec3<u32>(var_0.x, 36011u, var_0.x);
    return var_0.wzy;
}

fn func_1(arg_0: vec2<f32>, arg_1: f32, arg_2: vec2<bool>) -> vec2<bool> {
    var var_0 = global1.x;
    let var_1 = vec3<bool>(true, arg_2.x, true);
    var var_2 = Struct_1(-vec3<f32>(-1059f, 556f, -478f), ~(~(~(~62967u))), global0.yy, vec2<bool>(var_1.x, !var_1.x));
    var var_3 = vec2<bool>(!arg_2.x & any(var_2.d), var_2.d.x);
    global0 = func_2(~(firstTrailingBit(u_input.c.xzy) / abs(vec3<i32>(-1i, 1i, 0i)))) << vec3<u32>(firstTrailingBit(4294967295u), global0.x, 1u);
    return vec2<bool>(global2.x, !(arg_0.x < select(397f, arg_0.x, !arg_2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = !select(select(vec2<bool>(874f <= 1045f, global2.x), !vec2<bool>(false, false), vec2<bool>(global2.x, u_input.a.x != 28599u)), !(!select(vec2<bool>(global2.x, global2.x), vec2<bool>(global2.x, false), vec2<bool>(global2.x, true))), !global2.x);
    let var_0 = Struct_1(vec3<f32>(-(-801f), max(abs(-114f / 204f), -1844f), 624f), dot(global0.yy, firstLeadingBit(vec2<u32>(countOneBits(global0.x), 709u / u_input.a.x))), global0.xz, select(vec2<bool>(true && global2.x, false), select(vec2<bool>(true | global2.x, false), vec2<bool>(false, any(vec4<bool>(global2.x, global2.x, global2.x, false))), select(vec2<bool>(false, false), vec2<bool>(global2.x, false), !vec2<bool>(global2.x, false))), !func_1(vec2<f32>(1000f, -1000f), round(-1024f), !vec2<bool>(global2.x, global2.x))));
    global0 = vec3<u32>(var_0.b | global0.x, 1u, u_input.a.x);
    global0 = vec3<u32>(max(1u, ~u_input.a.x + (~var_0.b * ~u_input.a.x)), abs(0u), u_input.a.x);
    var var_1 = 1u < select(~(~abs(13537u)), (var_0.c.x << u_input.a.x) / ~(~0u), var_0.d.x);
    global1 = ~u_input.c.ww;
    var var_2 = min(firstTrailingBit(~vec3<i32>(u_input.d.x, global1.x, u_input.d.x)) ^ vec3<i32>(1i, u_input.c.x, firstLeadingBit(-1i)), vec3<i32>(~79179i * (~global1.x % (15288i ^ u_input.c.x)), global1.x * u_input.b, 28065i));
    let x = u_input.a;
    s_output = StorageBuffer(min((select(vec3<u32>(44365u, 1u, 20453u), vec3<u32>(global0.x, 0u, 105714u), vec3<bool>(true, true, true)) + vec3<u32>(u_input.a.x, 0u, var_0.c.x)) >> reverseBits(vec3<u32>(global0.x, 58991u, 4294967295u) >> vec3<u32>(var_0.c.x, 1u, global0.x)), select(vec3<u32>(firstLeadingBit(var_0.b), firstLeadingBit(0u), ~global0.x), firstTrailingBit(vec3<u32>(global0.x, global0.x, 16395u)) + ~vec3<u32>(1u, 1u, 1u), select(select(vec3<bool>(var_0.d.x, false, true), vec3<bool>(true, global2.x, false), false), !vec3<bool>(true, true, true), global2.x || global2.x))));
}

