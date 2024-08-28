// {"0:0":[146,57,47,214,253,42,57,126,18,46,17,67,29,31,134,231,41,16,5,56,137,219,229,149,105,191,70,164,61,175,170,218,58,125,120,210,132,4,49,100,147,145,67,112,14,166,98,174,124,171,235,136,22,250,205,14,234,21,139,63,181,221,137,77,28,248,156,241,177,95,69,183,251,145,69,87,80,103,202,50]}
// Seed: 15891338341038967456

struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: f32,
    d: f32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: i32,
    d: vec2<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: vec3<u32> = vec3<u32>(1u, 4294967295u, 65565u);

var<private> global2: array<f32, 7>;

var<private> global3: u32 = 4294967295u;

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_2) -> bool {
    var var_0 = ~reverseBits(min(min(arg_1.a.zy, global1.zy), ~global1.yz));
    let var_1 = Struct_4(select(arg_2.c.x, !select(!arg_2.c.x, arg_1.a.x <= arg_1.a.x, arg_2.c.x), !arg_2.c.x));
    global0 = var_1.a;
    global3 = (28768u + ~reverseBits(~1574u)) / global1.x;
    var var_2 = -trunc(arg_1.e.x) <= global2[u_input.e.x];
    return trunc(-781f) > exp2(arg_1.e.x);
}

fn func_3() -> f32 {
    var var_0 = u_input.e.x;
    let var_1 = ~(~vec2<u32>(~(~u_input.c.x), ~dot(u_input.e, vec3<u32>(15972u, 36419u, 0u))));
    var var_2 = Struct_1(u_input.c, vec4<i32>(-(-33320i), firstLeadingBit(select(u_input.a, u_input.a, false)), -(i32(-2147483648) / u_input.d.x), (i32(-2147483648) >> u_input.e.x) * max(-1i, u_input.b.x)) >> ~clamp(vec4<u32>(global1.x, 47466u, 48406u, u_input.c.x), u_input.c | vec4<u32>(26000u, 1u, var_1.x, 39604u), u_input.c), -1360f, -((476f + -1574f) / min(-(-1915f), 1000f - global2[u_input.c.x])), select(-(-vec2<f32>(global2[12586u], global2[u_input.e.x])), -(-vec2<f32>(global2[9008u], global2[108260u])), select(select(vec2<bool>(true, false), vec2<bool>(false, false), false), !vec2<bool>(true, true), all(vec2<bool>(true, true)))) / -((vec2<f32>(1333f, 1167f) / vec2<f32>(635f, -1083f)) + -vec2<f32>(global2[4294967295u], -151f)));
    var var_3 = -ceil(step(var_2.c, -1243f));
    let var_4 = vec3<bool>(2147483647i >= u_input.d.x, !(!(!(true && true))), true);
    return min(step(364f, -(step(-784f, var_2.c) - -736f)), -1847f);
}

fn func_1(arg_0: vec4<f32>) -> vec2<f32> {
    var var_0 = select(firstLeadingBit(firstTrailingBit(u_input.c.xz)), vec2<u32>(abs(~(~0u)), 0u), !(!(!(592f != 162f))));
    var var_1 = Struct_3(global2[75758u], Struct_1(select(u_input.c | (u_input.c >> u_input.c), u_input.c, !func_2(vec4<f32>(-1040f, global2[42155u], global2[1u], -826f), Struct_1(u_input.c, vec4<i32>(18583i, -11670i, 26185i, u_input.b.x), global2[global1.x], global2[u_input.c.x], arg_0.yz), Struct_2(vec3<i32>(0i, u_input.d.x, u_input.d.x), Struct_1(u_input.c, vec4<i32>(u_input.a, 0i, u_input.b.x, u_input.a), arg_0.x, -750f, arg_0.yz), vec4<bool>(true, false, true, false)))), -countOneBits(vec4<i32>(1i, 2147483647i, u_input.a, i32(-2147483648))), max(-select(arg_0.x, global2[4294967295u], false), arg_0.x), -min(global2[abs(56603u)], -725f), vec2<f32>(global2[~max(7105u, 68629u)], -(-1721f))), ceil(floor(-arg_0)) + (-arg_0 / sign(vec4<f32>(global2[1u], -990f, arg_0.x, global2[10732u]) - arg_0)));
    var var_2 = -((291f / (var_1.c.x / func_3())) / (exp2(-arg_0.x) + var_1.a));
    let var_3 = Struct_2(vec3<i32>(u_input.a | var_1.b.b.x, ~(i32(-2147483648)), var_1.b.b.x), var_1.b, !(!select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false)), !vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false))));
    global2 = array<f32, 7>();
    return exp2(var_3.b.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = step(-ceil(func_1(select(vec4<f32>(905f, 1296f, -204f, global2[u_input.e.x]), vec4<f32>(global2[4294967295u], global2[global1.x], -620f, -782f), vec4<bool>(true, true, false, true)))), -vec2<f32>(global2[44455u] - -800f, -global2[3590u]) - func_1((vec4<f32>(global2[global1.x], 1696f, global2[1u], global2[global1.x]) / vec4<f32>(-512f, 301f, 1000f, global2[global1.x])) / -vec4<f32>(376f, global2[global1.x], 244f, global2[u_input.c.x])));
    global2 = array<f32, 7>();
    let var_1 = u_input.d;
    let var_2 = select(select(!vec3<bool>(true & true, !false, true), vec3<bool>(any(!vec3<bool>(true, false, true)), true, select(-1448f, global2[global1.x], true) <= abs(global2[global1.x])), all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), all(vec4<bool>(true, true, false, true))))), select(!(!vec3<bool>(false, true, false)), !vec3<bool>(any(vec2<bool>(false, true)), any(vec4<bool>(false, false, false, true)), true), vec3<bool>(-19728i < clamp(u_input.b.x, -1140i, u_input.b.x), true, !(!false))), !true == !(!(!true)));
    let var_3 = Struct_2(u_input.d, Struct_1(max(countOneBits(clamp(vec4<u32>(global1.x, 4294967295u, u_input.c.x, global1.x), vec4<u32>(10112u, 7415u, u_input.c.x, 57838u), vec4<u32>(u_input.e.x, 66002u, 6716u, 1u))), u_input.c), ~(select(vec4<i32>(-38108i, u_input.a, -1i, 1i), vec4<i32>(var_1.x, u_input.a, u_input.a, u_input.b.x), false) ^ -vec4<i32>(i32(-2147483648), var_1.x, u_input.b.x, u_input.a)), -1740f, global2[~((18082u % global1.x) + 0u)], select(vec2<f32>(141f, var_0.x) / vec2<f32>(-489f, 308f), vec2<f32>(global2[global1.x], var_0.x), var_2.zz) / vec2<f32>(-1194f, -1778f)), select(vec4<bool>(!(u_input.d.x >= u_input.a), !all(vec4<bool>(false, true, var_2.x, true)), true, all(select(vec2<bool>(false, false), var_2.xz, vec2<bool>(var_2.x, var_2.x)))), select(!select(vec4<bool>(false, var_2.x, var_2.x, var_2.x), vec4<bool>(var_2.x, false, true, var_2.x), vec4<bool>(var_2.x, false, true, true)), select(vec4<bool>(false, false, true, true), select(vec4<bool>(true, var_2.x, true, var_2.x), vec4<bool>(var_2.x, false, var_2.x, false), vec4<bool>(var_2.x, var_2.x, true, false)), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x)), !select(vec4<bool>(true, var_2.x, false, var_2.x), vec4<bool>(false, var_2.x, var_2.x, true), vec4<bool>(true, var_2.x, true, false))), !(!var_2.x) & ((global1.x + global1.x) == dot(u_input.c, u_input.c))));
    var var_4 = global1.zx;
    global3 = u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<f32>(var_3.b.e.x, var_3.b.d + var_0.x, var_0.x), (var_3.b.a * abs(u_input.c)) % (~u_input.c - vec4<u32>(global1.x >> 4965u, firstLeadingBit(var_4.x), u_input.c.x % u_input.c.x, 48965u)), dot(vec4<i32>(~dot(var_3.b.b.xx, vec2<i32>(var_3.a.x, -54812i)), 1i, var_3.a.x % -43456i, 36743i), ~var_3.b.b), var_3.b.e, firstTrailingBit(vec2<u32>(~global1.x, 1u) << (max(global1.xx, vec2<u32>(var_3.b.a.x, 1u)) << vec2<u32>(3974u, 0u))));
}

