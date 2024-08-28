// {"0:0":[211,58,30,111,87,255,193,130,214,255,13,74,62,189,178,175,19,128,248,25,26,77,135,123,198,67,75,206,57,134,51,218,105,111,101,243,62,32,77,148,156,207,235,247,92,33,227,214]}
// Seed: 1307329426241315951

struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: bool,
    d: vec2<bool>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: u32,
    d: vec4<bool>,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12>;

var<private> global1: vec4<f32> = vec4<f32>(704f, -1886f, -902f, -2037f);

var<private> global2: vec2<f32>;

var<private> global3: vec3<u32>;

fn func_3(arg_0: vec2<u32>) -> bool {
    let var_0 = Struct_3(Struct_1(1281f / -round(global1.x), -clamp(-vec4<i32>(2147483647i, u_input.d.x, u_input.d.x, 19320i), vec4<i32>(-8495i, u_input.d.x, u_input.d.x, u_input.d.x), max(vec4<i32>(u_input.d.x, -1i, u_input.d.x, -1267i), vec4<i32>(2147483647i, 39223i, 33819i, u_input.d.x))), -u_input.d.x > ~(~u_input.d.x), !select(!vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false))), vec3<bool>(!(!true), !(-1029f == global2.x), !(true && false))), Struct_1(floor(step(792f / global2.x, -global1.x)), countOneBits(~vec4<i32>(-1i, u_input.d.x, u_input.d.x, u_input.d.x)), true, select(vec2<bool>(true || true, false && true), vec2<bool>(any(vec2<bool>(true, true)), any(vec3<bool>(true, true, true))), true), select(select(!vec3<bool>(true, true, false), !vec3<bool>(false, true, true), any(vec2<bool>(true, false))), !select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), vec3<bool>(any(vec3<bool>(false, true, true)), !true, false))), ~(~(~abs(global3.x))));
    var var_1 = ~69826u;
    var var_2 = u_input.a;
    global2 = vec2<f32>(sign(-var_0.a.a), -658f);
    global2 = global1.ww;
    return var_0.b.e.x;
}

fn func_2() -> Struct_2 {
    let var_0 = (-global1.x - -((global1.x / 139f) - ceil(global1.x))) / -129f;
    global1 = -vec4<f32>(global2.x, var_0, -287f, 313f);
    let var_1 = -(global1.zy + global1.yz) / round(global1.yx);
    global1 = trunc(-floor(vec4<f32>(-664f, 1000f, 364f * -763f, global2.x)));
    let var_2 = -select(~(~vec4<i32>(-15786i, i32(-2147483648), 2147483647i, 0i)), -select(vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, 63496i), -vec4<i32>(i32(-2147483648), u_input.d.x, u_input.d.x, 1950i), vec4<bool>(false, false, true, false)), vec4<bool>(!true | !false, !(true & true), true, select(any(vec3<bool>(false, true, false)), !true, false)));
    return Struct_2(Struct_1(-round(var_0), select(-min(var_2, vec4<i32>(var_2.x, u_input.d.x, 2147483647i, i32(-2147483648))), abs(vec4<i32>(-4282i, u_input.d.x, 2147483647i, 31772i)), true), !func_3(global3.zy), !(!(!vec2<bool>(false, false))), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true)), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), true), vec3<bool>(false, false, true), 2198f > -821f))));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: u32) -> f32 {
    global1 = -vec4<f32>(239f, (floor(arg_1.a.a) / (413f + 349f)) * ceil(global1.x), ceil(1116f) / arg_1.a.a, arg_1.a.a);
    return global1.x - -2219f;
}

fn func_1(arg_0: vec2<f32>, arg_1: f32) -> vec2<bool> {
    global1 = vec4<f32>(global1.x, global2.x, (-(-global1.x) / func_4(-5341i, func_2(), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false)), global3.x & global3.x)) + -global2.x, trunc(global1.x));
    let var_0 = func_2();
    var var_1 = -arg_1;
    var var_2 = Struct_1(sign(trunc(-1398f * -288f) / -(-536f)), ~var_0.a.b + (vec4<i32>(6661i, 78269i ^ 24396i, u_input.d.x & u_input.d.x, 5373i) ^ ~(vec4<i32>(u_input.d.x, 2147483647i, var_0.a.b.x, u_input.d.x) ^ var_0.a.b)), true, vec2<bool>(var_0.a.d.x && all(vec4<bool>(var_0.a.d.x, true, var_0.a.e.x, var_0.a.c)), all(select(!vec2<bool>(true, var_0.a.e.x), var_0.a.e.yy, !vec2<bool>(false, false)))), vec3<bool>(~(0u & global3.x) <= dot(firstLeadingBit(vec2<u32>(1u, 56063u)), u_input.a.xz / vec2<u32>(global3.x, global3.x)), var_0.a.e.x, false));
    global3 = u_input.a << clamp(vec3<u32>(abs(global3.x), u_input.a.x, abs(u_input.c ^ u_input.b)), vec3<u32>(0u, ~(~u_input.b), u_input.a.x >> (61824u % 1u)), (~vec3<u32>(42177u, global3.x, global3.x) & (u_input.a * vec3<u32>(global3.x, global3.x, global3.x))) / u_input.a);
    return select(vec2<bool>(!(!(var_0.a.d.x || true)), func_3(select(vec2<u32>(28050u, 4294967295u), vec2<u32>(0u, u_input.c), any(vec2<bool>(var_2.d.x, var_0.a.c))))), !var_2.e.zx, true);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = -global1.zy;
    global0 = array<Struct_1, 12>();
    let var_0 = select(select(!select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)), func_1(vec2<f32>(global1.x, -443f), global1.x), false), select(vec2<bool>(!true, true), !select(vec2<bool>(false, true), vec2<bool>(false, true), true), select(!vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), false)), !((1i / u_input.d.x) <= -(-57749i))), !select(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(0u >= 4294967295u, !false), vec2<bool>(true & false, true)), floor(-(-147f)) <= ceil((840f - -887f) * -238f));
    let var_1 = Struct_3(Struct_1(step(111f, select(-global1.x, -102f, var_0.x)), select(-(~vec4<i32>(u_input.d.x, 1i, u_input.d.x, 0i)), vec4<i32>(-28050i, -u_input.d.x, -1i, ~35152i), var_0.x), true, !(!var_0), select(select(!vec3<bool>(true, var_0.x, true), select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, var_0.x, var_0.x)), var_0.x), !select(vec3<bool>(true, var_0.x, false), vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, var_0.x, true)), all(vec3<bool>(false, true, var_0.x)))), global0[~(~abs(firstLeadingBit(1u)))], firstLeadingBit(~min(clamp(u_input.c, 0u, global3.x), u_input.b / global3.x)));
    var var_2 = -(-vec4<f32>(max(-528f, -732f), step(global1.x, global1.x), global1.x, -939f) * vec4<f32>(-(-260f), -ceil(-1161f), var_1.b.a, sign(var_1.a.a * global2.x)));
    global0 = array<Struct_1, 12>();
    var var_3 = max(var_2.zx, vec2<f32>(var_2.x, 848f));
    var var_4 = Struct_3(Struct_1(min(sign(global2.x * global2.x), var_1.a.a), max(var_1.a.b, var_1.a.b), func_3(~(vec2<u32>(u_input.a.x, global3.x) * u_input.a.zz)), var_1.b.d, !var_1.b.e), Struct_1(-1101f, -vec4<i32>(-1i, var_1.a.b.x, u_input.d.x, -1i) >> vec4<u32>(u_input.b, 4294967295u, global3.x & u_input.c, 10680u - global3.x), all(select(!vec4<bool>(var_1.a.c, false, false, var_1.b.c), vec4<bool>(true, var_1.b.e.x, false, var_1.a.e.x), false)), func_1(vec2<f32>(var_2.x, 1756f) - -vec2<f32>(-741f, -895f), 1077f / -2191f), select(!var_1.a.e, func_2().a.e, !func_1(global1.zw, var_2.x).x)), abs(u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(floor(((vec4<f32>(1929f, -569f, 363f, -223f) - vec4<f32>(var_3.x, global2.x, var_2.x, var_2.x)) * (vec4<f32>(318f, 423f, var_3.x, 1511f) / vec4<f32>(-478f, var_2.x, var_4.a.a, 277f))) + vec4<f32>(global1.x - 468f, 247f, -557f, -977f)));
}

