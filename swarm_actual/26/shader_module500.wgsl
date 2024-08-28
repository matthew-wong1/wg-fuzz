// {"0:0":[151,103,72,221,217,68,182,18,163,228,185,49,133,84,7,174,184,27,37,182,111,113,227,58,144,176,249,218,24,122,38,1,75,111,73,184,127,130,186,76,211,92,63,149,22,17,38,179,28,182,120,121,143,48,246,196,184,74,132,19,173,243,62,143]}
// Seed: 13598443509183437616

struct Struct_1 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<u32, 27>;

var<private> global2: array<Struct_1, 22>;

var<private> global3: array<vec4<i32>, 3>;

fn func_3(arg_0: Struct_1) -> bool {
    global0 = select(select(select(select(!vec4<bool>(global0.x, true, false, global0.x), select(vec4<bool>(true, true, global0.x, false), vec4<bool>(false, true, true, global0.x), vec4<bool>(true, true, global0.x, false)), select(vec4<bool>(false, global0.x, false, global0.x), vec4<bool>(false, global0.x, false, global0.x), vec4<bool>(true, global0.x, false, true))), vec4<bool>(global0.x, global0.x && global0.x, all(vec2<bool>(true, global0.x)), global0.x), select(vec4<bool>(false, global0.x, true, global0.x), !vec4<bool>(true, global0.x, global0.x, global0.x), false | global0.x)), !(!vec4<bool>(global0.x, false, true, true)), !vec4<bool>(global0.x || global0.x, false, any(vec4<bool>(global0.x, true, global0.x, global0.x)), false)), !(!(!select(vec4<bool>(false, false, global0.x, true), vec4<bool>(global0.x, false, false, global0.x), global0.x))), select(vec4<bool>(!true, global0.x, global0.x, global0.x && (u_input.a.x > -26280i)), vec4<bool>(all(vec2<bool>(false, false)), all(select(vec2<bool>(false, true), vec2<bool>(true, global0.x), global0.x)), true, any(select(global0.wxz, global0.zwx, vec3<bool>(true, global0.x, global0.x)))), !select(!vec4<bool>(false, false, false, global0.x), select(vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(true, false, false, true), false), select(vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(true, global0.x, global0.x, false), global0.x))));
    let var_0 = global2[4294967295u];
    let var_1 = global2[countOneBits(1u)];
    let var_2 = u_input.b.x < firstLeadingBit(min(dot(vec4<i32>(u_input.b.x, u_input.a.x, 2147483647i, 1i) ^ vec4<i32>(u_input.a.x, 49600i, u_input.b.x, -20757i), vec4<i32>(u_input.a.x, 2147483647i, u_input.b.x, 50129i)), 2147483647i));
    let var_3 = Struct_1((u_input.e * (~vec3<u32>(23010u, arg_0.a.x, u_input.d) ^ clamp(arg_0.a, u_input.e, vec3<u32>(26551u, arg_0.a.x, 323u)))) | vec3<u32>(~var_1.a.x ^ select(arg_0.a.x, var_1.a.x, global0.x), global1[arg_0.a.x], 102092u), -2784f);
    return select(all(vec4<bool>(!global0.x, !var_2, true, global0.x)), all(!vec4<bool>(29129u < var_3.a.x, !true, all(vec4<bool>(true, global0.x, global0.x, false)), false == global0.x)), global0.x);
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: f32, arg_3: Struct_1) -> f32 {
    global3 = array<vec4<i32>, 3>();
    let var_0 = select(vec4<bool>(true, func_3(Struct_1(arg_3.a, -(-707f))), arg_1, !all(select(vec4<bool>(false, true, true, true), vec4<bool>(global0.x, false, false, global0.x), arg_1))), select(!(!vec4<bool>(arg_1, true, false, global0.x)), vec4<bool>(true, global0.x, false != any(vec2<bool>(false, global0.x)), arg_1), vec4<bool>(any(global0.yzz), arg_1, true, (4294967295u >= 26126u) && all(global0.zw))), !select(select(select(vec4<bool>(arg_1, global0.x, global0.x, global0.x), vec4<bool>(global0.x, arg_1, arg_1, true), global0.x), select(vec4<bool>(global0.x, true, arg_1, false), vec4<bool>(false, global0.x, global0.x, true), true), vec4<bool>(global0.x, global0.x, false, global0.x)), !vec4<bool>(global0.x, arg_1, global0.x, arg_1), !select(global0.x, arg_1, global0.x)));
    let var_1 = max(vec3<u32>(arg_0.a.x, firstTrailingBit((global1[0u] << arg_0.a.x) ^ arg_0.a.x), arg_0.a.x), select(~min(abs(arg_3.a), select(arg_0.a, arg_3.a, global0.wxw)), u_input.e, true));
    var var_2 = vec3<bool>(any(!select(var_0.ww, !var_0.zy, global0.zw)), all(global0.xyw), !false);
    var var_3 = var_1.x;
    return 1164f;
}

fn func_1(arg_0: vec3<bool>, arg_1: u32, arg_2: Struct_1) -> i32 {
    let var_0 = vec4<f32>(-step(1632f, func_2(Struct_1(vec3<u32>(0u, arg_2.a.x, global1[58959u]), 1213f), true, arg_2.b, Struct_1(u_input.e, arg_2.b)) / 292f), exp2((arg_2.b - arg_2.b) - (-133f - (-607f - -1914f))), -(-232f), -arg_2.b);
    let var_1 = ~select(u_input.e, arg_2.a, !global0.x) & arg_2.a;
    global1 = array<u32, 27>();
    let var_2 = global3[var_1.x] & vec4<i32>(u_input.b.x, u_input.a.x, 0i | 10218i, 2147483647i);
    let var_3 = arg_2;
    return u_input.b.x;
}

fn func_4(arg_0: f32, arg_1: vec3<f32>, arg_2: i32) -> vec4<i32> {
    var var_0 = -max(-vec4<f32>(-402f, -682f, -arg_1.x, -401f), step(-vec4<f32>(arg_0, arg_1.x, arg_0, arg_0) + (vec4<f32>(906f, arg_1.x, arg_0, 366f) - vec4<f32>(arg_1.x, 1000f, arg_0, arg_1.x)), select(-vec4<f32>(-102f, 2036f, arg_0, arg_0), ceil(vec4<f32>(-665f, 1001f, 1000f, -417f)), !vec4<bool>(global0.x, global0.x, global0.x, global0.x))));
    global0 = !(!vec4<bool>(global0.x, select(any(global0.xwx), global0.x, global0.x), global0.x, global0.x));
    let var_1 = global2[max(~(~((4294967295u & 4294967295u) / 4294967295u)), ~clamp(70246u, ~0u | reverseBits(22029u), 52517u))];
    var var_2 = vec3<u32>(34252u << ((clamp(u_input.d, u_input.c, 0u) * min(4294967295u, 50914u)) / var_1.a.x), u_input.e.x, 4294967295u | max(1u, var_1.a.x));
    var var_3 = vec3<u32>(~(54180u & var_1.a.x), ((abs(u_input.e.x) << clamp(global1[17292u], 4294967295u, var_2.x)) ^ var_2.x) * (~clamp(var_2.x, var_1.a.x, var_2.x) | ~(~47936u)), 0u - ~reverseBits(var_2.x));
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(global3[37845u - ~24791u], u_input.a & func_4(-step(913f, -1775f), trunc(-vec3<f32>(-370f, 507f, -507f)), func_1(global0.yxz, global1[12165u], global2[4294967295u]) % (0i & u_input.b.x)), global0.x);
    var var_1 = -(-1i);
    var var_2 = func_3(global2[(~37438u ^ dot(~u_input.e, u_input.e)) ^ global1[u_input.d]]);
    var var_3 = min(vec2<u32>(dot(~vec2<u32>(72725u, global1[138851u]), u_input.e.yz), ~18940u), vec2<u32>(global1[5104u], 0u)) * (firstTrailingBit(~u_input.e.yz) * u_input.e.xz);
    let var_4 = vec2<f32>(-830f, (max(-2008f, 275f) - floor(-253f)) / (-(-404f) / (-1692f * -497f))) - vec2<f32>(967f, -485f);
    var var_5 = -select(vec4<f32>(var_4.x, var_4.x, var_4.x, var_4.x * 1345f), max(vec4<f32>(253f, var_4.x, var_4.x, -482f) / vec4<f32>(var_4.x, var_4.x, var_4.x, -293f), vec4<f32>(187f, 2265f, 393f, 1097f)), func_3(global2[global1[global1[0u]] & global1[u_input.c]])) * -abs(vec4<f32>(var_4.x, var_4.x, -1000f, -1716f));
    var var_6 = ~(min(~48599u, 56558u & ~63200u) >> 81445u);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(52608u, ~var_3.x, dot(reverseBits(vec3<u32>(u_input.e.x, global1[16022u], 0u)), ~u_input.e)), 641f);
}

