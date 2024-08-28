// {"0:0":[46,30,200,104,143,199,205,224,217,75,129,94,185,229,175,204,193,164,131,103,120,150,215,194]}
// Seed: 3432866730562198564

struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec4<f32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: vec2<i32>,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: vec2<bool>,
}

struct Struct_4 {
    a: f32,
    b: vec2<u32>,
    c: vec2<bool>,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: u32,
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

var<private> global0: array<vec4<i32>, 18>;

var<private> global1: array<u32, 7> = array<u32, 7>(14197u, 10363u, 1u, 5546u, 0u, 43283u, 4294967295u);

var<private> global2: i32;

fn func_3(arg_0: i32, arg_1: bool) -> i32 {
    var var_0 = !vec2<bool>(arg_1, !false);
    let var_1 = Struct_5(-arg_0);
    let var_2 = Struct_4(-exp2(round(1557f)), vec2<u32>(u_input.d, global1[41143u]), select(select(select(!vec2<bool>(arg_1, true), select(vec2<bool>(true, var_0.x), vec2<bool>(true, arg_1), vec2<bool>(var_0.x, true)), var_0.x && var_0.x), vec2<bool>(all(vec2<bool>(arg_1, var_0.x)), any(vec4<bool>(var_0.x, true, arg_1, var_0.x))), all(select(vec4<bool>(true, arg_1, false, true), vec4<bool>(true, var_0.x, true, arg_1), arg_1))), !select(!vec2<bool>(var_0.x, var_0.x), select(vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, true), vec2<bool>(true, true)), select(vec2<bool>(var_0.x, arg_1), vec2<bool>(arg_1, arg_1), vec2<bool>(var_0.x, true))), true));
    var var_3 = 0u;
    var var_4 = -sign(vec2<f32>(var_2.a, -(-var_2.a)));
    return u_input.c;
}

fn func_2() -> u32 {
    var var_0 = -vec2<i32>(~u_input.a.x, u_input.a.x) & ~u_input.a;
    var var_1 = Struct_5(~func_3(u_input.a.x % 2147483647i, !(!true)));
    var var_2 = ~global1[clamp(81047u, firstTrailingBit(6901u), ~global1[~(~u_input.d)])];
    var var_3 = Struct_5(-1i * -1i);
    let var_4 = Struct_1(vec3<i32>(u_input.a.x << firstTrailingBit(13177u), var_3.a, -(18745i - dot(vec3<i32>(2147483647i, u_input.b, 2147483647i), vec3<i32>(var_1.a, u_input.c, 29330i)))), var_3.a, max(step(vec4<f32>(-(-1620f), -(-1860f), -1517f / 356f, trunc(-578f)), vec4<f32>(-794f, 1205f, trunc(519f), 1504f)), floor(round(vec4<f32>(1545f, 153f, -1059f, 358f)))), !(!all(!vec2<bool>(false, true))));
    return global1[min(countOneBits(global1[u_input.d] % ~(~21213u)), ~(1u * min(~1u, firstLeadingBit(u_input.d))))];
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: u32) -> Struct_4 {
    let var_0 = firstLeadingBit(arg_0.x) | -33003i;
    var var_1 = 1000f;
    global0 = array<vec4<i32>, 18>();
    var_1 = 634f;
    let var_2 = Struct_4(-(-arg_1.x), vec2<u32>(u_input.d, func_2()), !vec2<bool>(true, all(vec4<bool>(true, true, true, false))));
    return var_2;
}

fn func_4(arg_0: Struct_4) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(~(max(vec3<i32>(u_input.c, 1i, 5924i), vec3<i32>(2147483647i, 21828i, u_input.c)) - ~vec3<i32>(u_input.b, u_input.c, 1i)), 2147483647i, -(vec4<f32>(arg_0.a, arg_0.a, -657f, arg_0.a) - vec4<f32>(289f, arg_0.a, arg_0.a, arg_0.a)), !(firstLeadingBit(arg_0.b.x) == 0u)), select(true, -13986i <= u_input.c, arg_0.c.x) || !(any(vec3<bool>(arg_0.c.x, true, arg_0.c.x)) & func_1(vec4<i32>(u_input.b, u_input.b, -12880i, u_input.c), vec3<f32>(963f, 701f, arg_0.a), 45388u).c.x), Struct_1(clamp(~vec3<i32>(u_input.c, u_input.c, 16019i) / vec3<i32>(42050i, u_input.c, -46826i), max(-vec3<i32>(u_input.c, -1i, u_input.c), vec3<i32>(-16607i, u_input.b, u_input.b)), -countOneBits(vec3<i32>(u_input.b, u_input.a.x, 32736i))), -14177i % -u_input.c, -(vec4<f32>(arg_0.a, arg_0.a, -1517f, -914f) * vec4<f32>(arg_0.a, 825f, 324f, arg_0.a)) + vec4<f32>(-arg_0.a, arg_0.a, arg_0.a / 1161f, max(arg_0.a, arg_0.a)), !arg_0.c.x && !arg_0.c.x), -select(u_input.a, (vec2<i32>(0i, -7587i) + u_input.a) - select(u_input.a, u_input.a, arg_0.c.x), all(!vec4<bool>(arg_0.c.x, arg_0.c.x, false, false))), ~arg_0.b.x);
    let var_1 = arg_0.c;
    var var_2 = select(abs(~vec3<u32>(global1[var_0.e], arg_0.b.x, global1[arg_0.b.x]) >> (~vec3<u32>(u_input.d, 0u, 4294967295u) + reverseBits(vec3<u32>(1u, 34955u, arg_0.b.x)))), select(abs(select(vec3<u32>(u_input.d, 1u, 32300u), vec3<u32>(0u, 23689u, 1u), vec3<bool>(false, var_0.b, false)) >> ~vec3<u32>(6306u, 32239u, arg_0.b.x)), ~countOneBits(vec3<u32>(global1[1u], 1u, 1u)) % ~vec3<u32>(1u, 11713u, var_0.e), select(false, !all(vec3<bool>(true, var_1.x, arg_0.c.x)), var_1.x)), !vec3<bool>(any(select(vec3<bool>(true, var_0.a.d, true), vec3<bool>(var_1.x, arg_0.c.x, false), vec3<bool>(var_1.x, true, var_0.a.d))), all(!vec4<bool>(var_0.b, var_1.x, true, var_0.c.d)), 40736u >= 4294967295u));
    global1 = array<u32, 7>();
    let var_3 = ~var_0.c.a & (reverseBits(~var_0.a.a) / -vec3<i32>(13007i, u_input.a.x, 2147483647i - u_input.c));
    return Struct_1(-(vec3<i32>(89617i, 18539i + -1i, var_3.x) / (vec3<i32>(2147483647i, -33605i, var_3.x) + (vec3<i32>(0i, 1i, 2147483647i) >> vec3<u32>(var_0.e, var_0.e, 56006u)))), -49911i, select(vec4<f32>(var_0.c.c.x, floor(1169f), -699f * -399f, -(-2217f)), var_0.c.c, vec4<bool>(var_1.x, -988f >= arg_0.a, var_1.x, all(vec3<bool>(true, arg_0.c.x, arg_0.c.x)))) * var_0.a.c, false);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> vec4<u32> {
    global1 = array<u32, 7>();
    let var_0 = !select(!vec3<bool>(true, true, arg_1.d && true), vec3<bool>(arg_0.d, arg_1.d, true), !(!(arg_0.d | false)));
    global0 = array<vec4<i32>, 18>();
    var var_1 = ~(~min(vec4<u32>(global1[78657u], 45766u, global1[4294967295u], 1u), ~vec4<u32>(global1[78599u], global1[0u], u_input.d, 0u))) * (~vec4<u32>(dot(vec4<u32>(4294967295u, 15864u, 27643u, 0u), vec4<u32>(0u, 4294967295u, global1[5156u], u_input.d)), 1u, 1u ^ global1[u_input.d], ~0u) + vec4<u32>(u_input.d, u_input.d, ~(u_input.d >> 47319u), 1u % max(u_input.d, 35745u)));
    global1 = array<u32, 7>();
    return vec4<u32>(5973u >> select(~(~global1[1u]), clamp(dot(vec4<u32>(4294967295u, u_input.d, 90488u, 0u), vec4<u32>(u_input.d, 40158u, 16168u, var_1.x)), var_1.x << u_input.d, 1u * 4294967295u), (global1[99064u] + 0u) != var_1.x), global1[dot(vec4<u32>(4294967295u, 21126u, u_input.d / clamp(var_1.x, 68u, 0u), var_1.x), max(abs(vec4<u32>(var_1.x, 4294967295u, 50829u, u_input.d) >> vec4<u32>(u_input.d, 2751u, var_1.x, var_1.x)), vec4<u32>(54151u, global1[var_1.x], 38130u, global1[var_1.x]) - abs(vec4<u32>(4294967295u, 8388u, var_1.x, 0u))))], u_input.d, 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = !true;
    let var_2 = vec2<bool>(var_1, true);
    let var_3 = func_5(func_4(func_1(global0[(26106u / 51021u) | abs(global1[global1[4294967295u]])], -vec3<f32>(-322f, 312f, -123f), ~dot(vec2<u32>(0u, u_input.d), vec2<u32>(global1[54045u], 50854u)))), Struct_1(-abs(vec3<i32>(u_input.c, -32996i, i32(-2147483648))), min(i32(-2147483648), 16687i) & u_input.a.x, exp2(func_4(func_1(vec4<i32>(-32029i, 2147483647i, -30901i, -53603i), vec3<f32>(507f, 1537f, -1249f), 18480u)).c), !(!var_2.x)));
    var_0 = false;
    global2 = -u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(min(u_input.a.x, -21345i)));
}

