// {"0:0":[208,187,236,120,211,192,158,224]}
// Seed: 6368668024285635966

struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 9> = array<i32, 9>(-1i, 21687i, -1192i, -62212i, i32(-2147483648), 10719i, 2147483647i, -25399i, 27856i);

var<private> global1: f32 = -534f;

fn func_2() -> vec3<u32> {
    global1 = -(-266f);
    return vec3<u32>(~(~52164u), 1u, abs(u_input.a));
}

fn func_3() -> vec3<i32> {
    let var_0 = Struct_2(-28740i, Struct_1(select(-(vec3<i32>(17305i, u_input.b, i32(-2147483648)) - vec3<i32>(u_input.b, -15749i, global0[u_input.a])), vec3<i32>(-35241i, min(global0[u_input.a], u_input.b), 49143i), select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), vec3<bool>(true, false, true), vec3<bool>(false, false, false))), !((2147483647i & global0[12870u]) <= dot(vec2<i32>(u_input.b, -14995i), vec2<i32>(global0[85694u], -3241i))), ~(vec4<u32>(u_input.a, u_input.a, 1u, 1u) * firstTrailingBit(vec4<u32>(0u, u_input.a, u_input.a, u_input.a))), select(~vec4<u32>(u_input.a, 62673u, 1u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 57876u), !vec4<bool>(false, false, true, true)) >> select(vec4<u32>(u_input.a, 4294967295u, 4294967295u, u_input.a) << vec4<u32>(u_input.a, 540u, 4294967295u, u_input.a), reverseBits(vec4<u32>(u_input.a, u_input.a, 0u, 4294967295u)), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), false))));
    var var_1 = global0[~var_0.b.d.x];
    var var_2 = -15327i;
    let var_3 = 1u;
    let var_4 = Struct_2(~u_input.b, Struct_1(-(-var_0.b.a) | var_0.b.a, ~u_input.a >= 21671u, vec4<u32>((var_0.b.c.x * 14263u) + firstTrailingBit(4294967295u), reverseBits(countOneBits(var_0.b.c.x)), u_input.a, ~(0u | 10350u)), var_0.b.d));
    return vec3<i32>(~(-(global0[20001u] | 2147483647i)) | (-dot(vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(38524i, var_0.b.a.x)) - -(~var_0.b.a.x)), var_0.b.a.x, var_4.b.a.x);
}

fn func_1(arg_0: i32) -> f32 {
    global1 = -671f * ((sign(-(-1000f)) - -(-1164f)) + 1026f);
    let var_0 = Struct_1(vec3<i32>(-(-32605i), countOneBits(2147483647i), countOneBits(-42607i)), true, ~(~min(~vec4<u32>(u_input.a, 4294967295u, 55169u, 0u), vec4<u32>(u_input.a, 1u, u_input.a, u_input.a) << vec4<u32>(u_input.a, u_input.a, u_input.a, 17416u))), ~vec4<u32>(61948u, 68026u, ~(16378u >> u_input.a), dot(vec3<u32>(u_input.a, 48521u, 67821u) << vec3<u32>(u_input.a, 3989u, u_input.a), func_2())));
    let var_1 = vec4<i32>(u_input.b, ~(max(abs(724i), -24103i) << 17911u), firstTrailingBit(1i), 2147483647i);
    var var_2 = Struct_2(global0[var_0.d.x], Struct_1(var_0.a ^ var_0.a, true, var_0.c, (max(var_0.d, vec4<u32>(8581u, var_0.d.x, var_0.d.x, 18221u)) % vec4<u32>(u_input.a, 4294967295u, 4294967295u, u_input.a)) >> ~vec4<u32>(u_input.a, u_input.a, var_0.d.x, var_0.d.x)));
    var_2 = Struct_2(dot(abs(vec4<i32>(-global0[4294967295u], arg_0, var_0.a.x, -56119i - i32(-2147483648))), var_1), Struct_1(func_3(), true, ~(~var_2.b.d), min(~(~vec4<u32>(var_2.b.c.x, 1u, 1u, 4294967295u)), var_0.d)));
    return abs(-sign(416f / -1006f) - -(-1500f / (-1000f + -1224f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(~(i32(-2147483648))) < u_input.b;
    var var_1 = vec3<f32>(max(sign(exp2(-(-257f))), -(-957f * -1773f)), func_1((global0[50590u] + i32(-2147483648)) * u_input.b) * ((min(-207f, 138f) / (-1000f - -328f)) * ((431f + 1287f) / -(-191f))), -1135f / -755f);
    let var_2 = dot(abs((~vec2<i32>(-1i, u_input.b) | (vec2<i32>(9788i, 25766i) & vec2<i32>(u_input.b, 1i))) * (-vec2<i32>(13269i, i32(-2147483648)) % vec2<i32>(43562i, 1i))), vec2<i32>(~u_input.b, firstTrailingBit(-(~global0[33726u]))));
    var var_3 = countOneBits(~abs(1u) / dot(firstLeadingBit(vec4<u32>(u_input.a, u_input.a, u_input.a, 20375u)), clamp(vec4<u32>(61140u, 86652u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 0u), vec4<u32>(1u, 10083u, 4294967295u, u_input.a)))) >> u_input.a;
    global1 = -(-ceil(-trunc(-451f)));
    let x = u_input.a;
    s_output = StorageBuffer(-(firstLeadingBit(vec3<i32>(0i, -1i, i32(-2147483648))) - countOneBits(-vec3<i32>(var_2, 0i, u_input.b))), u_input.a, 0i);
}

