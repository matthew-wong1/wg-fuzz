// {"0:0":[87,234,235,238,178,106,99,144]}
// Seed: 5644502266237299064

struct Struct_1 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: u32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 21>;

var<private> global1: array<Struct_2, 25>;

var<private> global2: Struct_3;

var<private> global3: i32;

fn func_3(arg_0: bool, arg_1: vec2<bool>) -> u32 {
    let var_0 = global2.a;
    global2 = Struct_3(Struct_1(vec3<bool>(false, false, arg_0), vec3<u32>(u_input.a + u_input.a, dot(var_0.b, global2.a.b), u_input.a & 40410u) ^ ~vec3<u32>(global2.a.c, 55794u, global2.c.x), 4294967295u, global2.a.d), -1i, abs(countOneBits(vec2<u32>(var_0.b.x, global2.a.d.x) - ~var_0.b.zx)), vec4<i32>(firstLeadingBit(~(-1i) % 0i), ~(u_input.b ^ global2.d.x) / ~(-u_input.b), (max(global2.d.x, -11055i) * (-7858i % u_input.b)) | -1i, 2147483647i), select(vec3<bool>(!(true | false), (21272u + 656u) >= 63187u, arg_0 & false), !(!var_0.a), any(vec4<bool>(var_0.a.x, any(var_0.a), false, var_0.a.x))));
    let var_1 = global2.d.x;
    var var_2 = vec3<bool>(all(var_0.a.zy), true, var_0.a.x);
    let var_3 = clamp(global2.b, ~u_input.b, -(u_input.b - firstLeadingBit(global2.b)));
    return 15307u;
}

fn func_2(arg_0: f32, arg_1: u32) -> vec3<f32> {
    let var_0 = Struct_1(vec3<bool>(!true, ~(u_input.b ^ global2.b) >= (reverseBits(13313i) / global2.d.x), global2.a.a.x), ~global2.a.d.yyw, firstTrailingBit(countOneBits(4489u) ^ 1u), vec4<u32>(~17295u, 82863u, arg_1 ^ func_3(!global2.e.x, !vec2<bool>(global2.e.x, true)), firstLeadingBit(u_input.a)));
    var var_1 = global2.a.b >> (abs(min(vec3<u32>(u_input.a, 48311u, 1u), vec3<u32>(4294967295u, arg_1, arg_1)) / min(vec3<u32>(0u, 39165u, 72261u), var_0.b)) + abs(~(vec3<u32>(u_input.a, var_0.c, 1u) * global2.a.b)));
    let var_2 = select(abs(~(vec4<u32>(arg_1, var_1.x, var_0.c, 1u) % vec4<u32>(global2.a.d.x, arg_1, var_0.b.x, arg_1)) & abs(global2.a.d)), global2.a.d, !vec4<bool>(var_0.a.x, all(vec3<bool>(false, global2.e.x, false)), any(!global2.a.a.yz), -450f <= global0[var_1.x]));
    var_1 = firstTrailingBit(var_2.yzz);
    var var_3 = select(var_2, max(~(~vec4<u32>(20718u, var_1.x, var_2.x, 51021u)), abs(global2.a.d)), !false);
    return vec3<f32>(trunc(-arg_0), min(480f, arg_0 + 773f), (ceil(global0[4294967295u]) / trunc(942f)) * 656f) * vec3<f32>(arg_0 / -(-(-266f)), global0[reverseBits(~4294967295u & reverseBits(1u))], trunc(ceil(ceil(-532f))));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: vec3<f32>) -> u32 {
    global1 = array<Struct_2, 25>();
    let var_0 = !true;
    let var_1 = 715f;
    global0 = array<f32, 21>();
    global2 = arg_1;
    return min(1u, 4294967295u - ~(~dot(vec2<u32>(16049u, arg_1.c.x), vec2<u32>(59042u, arg_1.a.c))));
}

fn func_1() -> Struct_1 {
    var var_0 = vec4<f32>(global0[min(~dot(vec2<u32>(u_input.a, 0u), global2.c), u_input.a) + ((~6630u / countOneBits(u_input.a)) ^ func_4(vec2<bool>(global2.e.x, global2.a.a.x), Struct_3(global2.a, global2.b, global2.a.b.zz, vec4<i32>(0i, -1i, -22876i, global2.d.x), global2.e), func_2(global0[global2.a.c], global2.a.d.x)))], global0[~(~u_input.a) >> 1u], -410f - select(global0[~4294967295u] + abs(813f), global0[countOneBits(dot(global2.a.d.wyz, global2.a.d.wxz))], global2.e.x), global0[~(~74972u)]);
    global1 = array<Struct_2, 25>();
    global1 = array<Struct_2, 25>();
    global2 = Struct_3(Struct_1(global2.e, global2.a.d.wyz, func_3(global2.a.a.x, vec2<bool>(global2.a.a.x, !false)), ~vec4<u32>(~23955u, 0u, global2.a.b.x, firstLeadingBit(16542u))), 11019i, reverseBits(vec2<u32>(dot(vec3<u32>(global2.a.d.x, 0u, 4294967295u), global2.a.d.zwx), 0u)) & ~(~global2.a.b.xz), max(countOneBits(vec4<i32>(u_input.b, 2147483647i, global2.d.x, 2147483647i)) % min(global2.d, global2.d), vec4<i32>(global2.b, 60413i, dot(global2.d, global2.d), global2.b % 0i)) & vec4<i32>(i32(-2147483648), 0i / global2.b, -59333i, 0i % abs(1i)), vec3<bool>(any(select(select(vec4<bool>(global2.e.x, global2.e.x, true, global2.a.a.x), vec4<bool>(false, global2.e.x, global2.e.x, false), vec4<bool>(true, true, global2.a.a.x, global2.e.x)), select(vec4<bool>(global2.e.x, global2.e.x, false, global2.e.x), vec4<bool>(global2.e.x, global2.e.x, global2.e.x, global2.e.x), vec4<bool>(true, true, global2.e.x, false)), true)), any(!vec4<bool>(true, false, global2.e.x, global2.e.x)), !(!(!true))));
    let var_1 = Struct_3(Struct_1(vec3<bool>(any(select(vec3<bool>(false, true, false), global2.a.a, global2.e.x)), !(var_0.x >= 1163f), all(vec2<bool>(global2.a.a.x, global2.a.a.x)) == any(vec3<bool>(false, false, global2.e.x))), global2.a.d.zzy, firstLeadingBit(~global2.a.d.x), ~(~(~global2.a.d))), ~2147483647i, abs((~vec2<u32>(7147u, global2.a.c) ^ global2.a.d.wy) % firstTrailingBit(global2.a.b.zz)), vec4<i32>(countOneBits(abs(1i % u_input.b)), dot(firstLeadingBit(vec2<i32>(u_input.b, 2147483647i)), abs(select(global2.d.zw, vec2<i32>(0i, 15417i), global2.a.a.x))), select(-u_input.b, -min(global2.d.x, global2.b), true), -(~2147483647i) >> (~u_input.a + (u_input.a << global2.c.x))), select(select(vec3<bool>(false, global2.e.x, !global2.e.x), !global2.a.a, global2.a.a.x || true), vec3<bool>(!(global2.c.x < 4294967295u), global2.a.a.x, false && (true && global2.e.x)), !true));
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = u_input.b;
    let var_0 = func_1();
    var var_1 = dot(reverseBits(firstTrailingBit(global2.d.wx)), reverseBits(global2.d.zz));
    var_1 = global2.b;
    global1 = array<Struct_2, 25>();
    var var_2 = func_1();
    global1 = array<Struct_2, 25>();
    global0 = array<f32, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(step(select(-(-vec4<f32>(191f, 128f, global0[var_0.b.x], -402f)), step(vec4<f32>(global0[var_2.c], global0[1u], -650f, 459f) - vec4<f32>(global0[var_2.c], global0[var_2.b.x], global0[4294967295u], global0[var_0.c]), abs(vec4<f32>(global0[var_0.d.x], global0[var_0.b.x], global0[1u], 183f))), global2.e.x), round(round(max(vec4<f32>(-309f, global0[var_0.b.x], global0[var_0.b.x], -874f), vec4<f32>(global0[13122u], 762f, global0[49501u], global0[global2.c.x]))))), vec3<f32>(global0[dot(~vec3<u32>(var_2.b.x, global2.a.d.x, 7828u), ~vec3<u32>(var_0.b.x, var_0.d.x, 12519u))] / step(global0[26047u] * -816f, global0[4294967295u]), -global0[0u], ceil(-(-988f) / ceil(global0[0u]))), (select(select(vec4<i32>(-27117i, global2.d.x, u_input.b, u_input.b), global2.d, vec4<bool>(var_2.a.x, false, global2.e.x, var_0.a.x)), vec4<i32>(u_input.b, 16695i, -8554i, 21020i), !vec4<bool>(global2.a.a.x, false, var_0.a.x, false)) & vec4<i32>(~global2.b, global2.b, firstLeadingBit(i32(-2147483648)), -global2.d.x)) * global2.d, vec3<i32>(-(-(2147483647i ^ 1i)), -reverseBits(16i) >> ((1u << 3212u) >> 11061u), dot(~global2.d.yw & abs(vec2<i32>(0i, i32(-2147483648))), global2.d.wz)), abs(select(vec3<f32>(global0[31123u], global0[global2.c.x % 86896u], global0[~24772u]), vec3<f32>(global0[func_1().b.x], -global0[71155u], sign(1189f)), select(global2.a.c, var_0.b.x, global2.a.a.x) <= (u_input.a & u_input.a))));
}

