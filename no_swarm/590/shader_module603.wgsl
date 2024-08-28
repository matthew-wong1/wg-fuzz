// {"0:0":[109,143,228,96,255,196,121,153,159,36,114,88,5,172,199,209,5,1,180,211,165,82,26,55,231,54,244,254,244,200,81,251]}
// Seed: 18067294427128734492

struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 2>;

var<private> global1: Struct_1 = Struct_1(false, 775f, vec3<f32>(588f, -1225f, 182f));

var<private> global2: u32;

var<private> global3: f32;

fn func_3() -> bool {
    let var_0 = global0[u_input.e | 0u];
    global2 = ~((~dot(vec3<u32>(u_input.e, u_input.d.x, u_input.e), vec3<u32>(53573u, global0[4294967295u], 15931u)) << 9702u) ^ u_input.e);
    global2 = max(3888u, 0u);
    var var_1 = ~(~abs(vec3<u32>(global0[0u] * 11088u, global0[dot(vec3<u32>(u_input.e, 10647u, 0u), vec3<u32>(49675u, global0[global0[42125u]], 102661u))], global0[1u % u_input.d.x])));
    global3 = -global1.b / -1290f;
    return global1.a;
}

fn func_2(arg_0: u32) -> vec3<u32> {
    let var_0 = select(vec4<bool>(true, ((0u + global0[u_input.e]) >> 0u) >= (0u * max(u_input.e, 1u)), global1.a, global1.a), vec4<bool>(false, func_3(), func_3(), global1.c.x == -1000f), !select(vec4<bool>(true || global1.a, true, global1.a, false), !select(vec4<bool>(true, false, global1.a, global1.a), vec4<bool>(global1.a, global1.a, global1.a, global1.a), vec4<bool>(false, global1.a, true, global1.a)), vec4<bool>(!false, false, global1.a && true, any(vec3<bool>(false, true, false)))));
    let var_1 = Struct_1(any(vec3<bool>(any(var_0), any(var_0.wx), !var_0.x || var_0.x)), -1000f, trunc(select(floor(vec3<f32>(global1.c.x, global1.b, -828f)) * global1.c, -global1.c, vec3<bool>(any(vec4<bool>(global1.a, global1.a, false, false)), true, !true))));
    var var_2 = Struct_1(false, round(-trunc(global1.c.x) - (1168f - -global1.b)), select(floor((var_1.c * global1.c) * var_1.c), -vec3<f32>(-1000f, global1.c.x, floor(var_1.c.x)), var_1.a && (57379u <= ~1u)));
    var var_3 = -1i;
    let var_4 = u_input.b ^ 1i;
    return vec3<u32>(countOneBits(arg_0), ~(~(~u_input.d.x)), firstLeadingBit(arg_0));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: f32) -> u32 {
    let var_0 = vec3<u32>(~(~(~38580u)), ~u_input.d.x, u_input.e) >> ~func_2(~29664u);
    global3 = global1.c.x;
    global2 = ~(dot(vec4<u32>(u_input.d.x, 5750u, 75206u, global0[0u]) - abs(vec4<u32>(global0[14785u], global0[global0[var_0.x]], u_input.e, 22340u)), vec4<u32>(4294967295u, 24725u, 1u, 4294967295u) << vec4<u32>(1u, 20459u, 4078u, u_input.d.x)) | ~4294967295u);
    let var_1 = floor(vec4<f32>(-sign(global1.c.x - 332f), 537f, -abs(global1.b * 1725f), arg_2));
    global3 = -abs(global1.c.x * -min(-844f, arg_2));
    return max(4294967295u, 4294967295u >> (~abs(var_0.x) + countOneBits(u_input.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = dot(~vec4<u32>(4294967295u, 4294967295u, dot(~vec2<u32>(u_input.d.x, global0[u_input.d.x]), ~vec2<u32>(global0[4294967295u], global0[71782u])), ~38148u >> func_1(Struct_1(global1.a, -221f, vec3<f32>(-452f, 522f, -157f)), 0i, global1.c.x)), ~vec4<u32>(firstTrailingBit(abs(global0[u_input.d.x])), global0[~0u] - u_input.d.x, 34347u, ~firstLeadingBit(u_input.e)));
    let var_1 = 18612u;
    let var_2 = global0[~(~var_0)];
    let var_3 = !select(!(!(!vec2<bool>(true, true))), vec2<bool>(!(global1.a | global1.a), global1.a), false);
    var var_4 = countOneBits(vec3<i32>(dot(u_input.c, firstLeadingBit(vec2<i32>(1i, i32(-2147483648)))), ~clamp(0i, u_input.b, i32(-2147483648)), u_input.b) >> countOneBits((vec3<u32>(60919u, 12000u, var_0) % vec3<u32>(var_1, 34917u, var_0)) ^ firstTrailingBit(vec3<u32>(global0[global0[1u]], var_0, 1u))));
    let x = u_input.a;
    s_output = StorageBuffer(38959u, ~min(u_input.d | u_input.d, ~u_input.d) ^ u_input.d);
}

