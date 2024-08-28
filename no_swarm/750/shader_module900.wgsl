// {"0:0":[99,153,96,111,126,247,196,85,3,80,217,1,71,161,188,233,17,125,181,232,219,30,47,63,251,216,124,187,4,115,144,193]}
// Seed: 9665667178781852255

struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 24>;

var<private> global1: array<vec4<i32>, 26> = array<vec4<i32>, 26>(vec4<i32>(-1i, -1i, 13676i, -34028i), vec4<i32>(i32(-2147483648), 35678i, -6093i, 3376i), vec4<i32>(1i, 2147483647i, i32(-2147483648), 32803i), vec4<i32>(0i, 796i, -1i, 2147483647i), vec4<i32>(-1i, -1i, 14538i, 41582i), vec4<i32>(2147483647i, -16036i, i32(-2147483648), -34138i), vec4<i32>(-897i, 0i, 26873i, 1i), vec4<i32>(-38366i, -52302i, 12583i, -27575i), vec4<i32>(i32(-2147483648), 41114i, 0i, -46681i), vec4<i32>(28149i, 0i, -1i, -8731i), vec4<i32>(0i, 1i, 6744i, 2147483647i), vec4<i32>(36705i, 4986i, 17211i, i32(-2147483648)), vec4<i32>(48064i, 1i, 2147483647i, -12173i), vec4<i32>(2147483647i, -3856i, i32(-2147483648), 18166i), vec4<i32>(i32(-2147483648), -9366i, -75344i, 7348i), vec4<i32>(0i, 1i, 0i, 54052i), vec4<i32>(-23085i, -20814i, 1i, 2147483647i), vec4<i32>(-1i, 15410i, 74387i, i32(-2147483648)), vec4<i32>(-1i, 1i, -20260i, 1i), vec4<i32>(0i, 36517i, 10439i, -16925i), vec4<i32>(-73187i, -18342i, -75260i, 50928i), vec4<i32>(-26150i, 2147483647i, -40362i, 45797i), vec4<i32>(-4309i, i32(-2147483648), -1i, -38149i), vec4<i32>(0i, 4603i, 0i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 1i, 1i, 4990i), vec4<i32>(1i, -12419i, 2147483647i, -41860i));

var<private> global2: vec3<i32>;

var<private> global3: Struct_3 = Struct_3(4294967295u);

fn func_3(arg_0: bool, arg_1: u32) -> vec2<i32> {
    var var_0 = Struct_1(-659f * (exp2(-(-2170f)) + 311f), select(any(!select(vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(false, arg_0, true, arg_0), false)), !(-396f > (-2095f / -259f)), !arg_0), -max(1000f, exp2(-424f)) - -ceil(789f));
    global1 = array<vec4<i32>, 26>();
    var_0 = Struct_1(var_0.c, any(select(select(!vec2<bool>(false, false), select(vec2<bool>(false, var_0.b), vec2<bool>(arg_0, arg_0), var_0.b), vec2<bool>(false, var_0.b)), vec2<bool>(arg_0, false), vec2<bool>(20217u <= 0u, any(vec4<bool>(false, false, true, false))))), sign(select(sign(289f + var_0.c), -621f, false)));
    let var_1 = Struct_2(Struct_1(var_0.a, true, -(-floor(var_0.a))), !any(!vec4<bool>(false, arg_0, true, var_0.b)), Struct_1(-var_0.c - -(-321f), !(true | false), exp2(-306f)), Struct_1((250f + -1000f) * 1394f, var_0.b, -320f));
    var var_2 = !false;
    return ~global2.zz;
}

fn func_4(arg_0: vec2<i32>, arg_1: u32, arg_2: vec2<i32>) -> vec2<bool> {
    global2 = -u_input.b;
    let var_0 = vec2<bool>(all(vec3<bool>(!false | (false | true), (arg_0.x <= arg_0.x) | all(vec2<bool>(true, false)), -arg_0.x > u_input.b.x)), false);
    let var_1 = Struct_3(global3.a);
    let var_2 = vec2<f32>(-(sign(-1000f / -1000f) / select(820f, -775f, 1049f >= -1212f)), 634f);
    let var_3 = Struct_2(Struct_1(-1590f, any(vec2<bool>(26732i < -699i, var_0.x)), 516f), true | ((min(10270u, 0u) % 0u) > abs(arg_1 + 2765u)), Struct_1(-(-trunc(var_2.x)), var_0.x, ((var_2.x / -300f) + exp2(var_2.x)) / 1404f), Struct_1((-508f / (-736f / var_2.x)) / abs(968f + -2153f), true | any(!var_0), -667f / 584f));
    return !select(var_0, vec2<bool>(!false, !select(true, var_3.b, var_3.c.b)), any(select(!var_0, vec2<bool>(var_3.c.b, false), select(vec2<bool>(false, var_3.a.b), var_0, var_3.d.b))));
}

fn func_2(arg_0: vec4<u32>) -> vec2<bool> {
    let var_0 = !func_4(func_3(true, global3.a), global3.a, vec2<i32>(global2.x, global2.x));
    let var_1 = Struct_3(4294967295u);
    global0 = array<vec3<f32>, 24>();
    global1 = array<vec4<i32>, 26>();
    var var_2 = ~abs(u_input.b);
    return func_4((var_2.zz >> (abs(vec2<u32>(4294967295u, 3600u)) << min(vec2<u32>(1u, var_1.a), arg_0.wy))) << ~(~vec2<u32>(var_1.a, var_1.a) + vec2<u32>(41205u, global3.a)), select(max(58824u, min(dot(arg_0.wyz, arg_0.wwz), arg_0.x)), 63685u, any(!select(vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(false, var_0.x, true, var_0.x), vec4<bool>(var_0.x, var_0.x, false, false)))), func_3(true, 31425u));
}

fn func_1() -> Struct_3 {
    var var_0 = abs((~vec3<u32>(1u, global3.a, 4294967295u) * vec3<u32>(global3.a, global3.a, 3934u)) / (~vec3<u32>(global3.a, global3.a, global3.a) * vec3<u32>(global3.a, 21429u, 47536u))) / ~min(~vec3<u32>(global3.a, global3.a, global3.a), ~vec3<u32>(37999u, 25355u, 0u) & (vec3<u32>(1u, 85312u, global3.a) + vec3<u32>(1u, 57486u, global3.a)));
    let var_1 = select(func_2(vec4<u32>(1u, dot(~vec2<u32>(0u, 1u), vec2<u32>(22160u, 4294967295u) >> var_0.zx), 21828u, global3.a)), func_4(global2.zx, (var_0.x - global3.a) ^ (abs(13503u) / ~global3.a), max(func_3(all(vec2<bool>(true, false)), var_0.x), u_input.b.xy)), !func_2(~(~vec4<u32>(var_0.x, global3.a, var_0.x, global3.a))));
    global0 = array<vec3<f32>, 24>();
    let var_2 = !all(!vec3<bool>(1u >= var_0.x, true, var_1.x));
    global1 = array<vec4<i32>, 26>();
    return Struct_3(var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_3(4817u);
    let var_0 = -443f;
    global0 = array<vec3<f32>, 24>();
    let var_1 = global1[0u % global3.a];
    global3 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(~(var_1.zz | vec2<i32>(1i, u_input.b.x))));
}

