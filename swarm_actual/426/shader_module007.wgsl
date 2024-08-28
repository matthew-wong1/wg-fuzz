// {"0:0":[157,213,55,205,206,231,76,200,188,74,77,148,159,29,99,173,9,198,52,211,27,249,66,171,70,241,8,37,176,159,240,155]}
// Seed: 3493534705670975776

struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec2<bool>,
    d: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec4<f32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: bool;

var<private> global2: array<vec3<i32>, 30>;

fn func_1(arg_0: i32) -> i32 {
    let var_0 = -(-vec4<f32>(-(-2068f), floor(-202f + 319f), min(-1541f, 231f) + -800f, 788f));
    global1 = !true | true;
    global1 = false;
    global1 = !(!(!true));
    let var_1 = vec2<bool>(~dot(u_input.a, ~u_input.a) < (1u - 16475u), ~1u >= 14122u);
    return -1i;
}

fn func_3(arg_0: vec4<i32>) -> bool {
    global2 = array<vec3<i32>, 30>();
    let var_0 = -25638i ^ func_1(arg_0.x);
    var var_1 = var_0;
    return false;
}

fn func_2(arg_0: vec2<bool>) -> vec4<i32> {
    let var_0 = Struct_2(vec4<bool>(arg_0.x, func_3(select(vec4<i32>(22222i, 7136i, -79002i, 0i), reverseBits(vec4<i32>(u_input.b, -13950i, u_input.b, 47282i)), arg_0.x)), !all(select(vec2<bool>(true, false), vec2<bool>(arg_0.x, arg_0.x), arg_0.x)), func_3(clamp(vec4<i32>(u_input.b, 50904i, i32(-2147483648), u_input.b), -vec4<i32>(-80320i, 0i, u_input.b, -48878i), vec4<i32>(u_input.b, u_input.b, i32(-2147483648), 44902i)))), Struct_1(-(firstTrailingBit(vec4<i32>(u_input.b, 4037i, -1i, 1i)) & ~vec4<i32>(i32(-2147483648), i32(-2147483648), 1i, u_input.b)), u_input.b, !vec2<bool>(!arg_0.x, arg_0.x), ~32940i), any(!vec2<bool>(true, false)) && false, select(-(step(1187f, -259f) + -(-143f)), -step(min(356f, 703f), -(-863f)), true));
    var var_1 = abs(31064u);
    var var_2 = !(!true);
    let var_3 = var_0.b;
    let var_4 = exp2(floor(-sign(-vec2<f32>(var_0.d, var_0.d))));
    return vec4<i32>(~var_0.b.d, ~(-13325i), -5712i, var_3.a.x);
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> vec2<bool> {
    let var_0 = vec3<i32>(-7072i, u_input.b << (reverseBits(u_input.a.x) - min(26129u, u_input.a.x)), -(-15852i)) % vec3<i32>(0i, dot(max(arg_0.a, -vec4<i32>(-34469i, 37590i, arg_0.d, -25193i)), abs(arg_0.a)), func_2(arg_0.c).x);
    global1 = true;
    var var_1 = arg_0;
    var var_2 = select(!vec3<bool>(!(false || var_1.c.x), !var_1.c.x, select(true, true, var_1.c.x)), vec3<bool>(!(!all(vec4<bool>(arg_0.c.x, true, var_1.c.x, true))), arg_0.c.x, arg_0.c.x || !arg_0.c.x), var_1.c.x);
    global0 = -(-52991i);
    return !vec2<bool>(any(!select(vec3<bool>(false, arg_0.c.x, true), vec3<bool>(true, false, true), false)), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.wxy;
    global0 = u_input.b;
    global1 = !false;
    let var_1 = func_4(Struct_1(-vec4<i32>(abs(u_input.b), ~(i32(-2147483648)), 18213i, func_1(57664i)), dot(func_2(vec2<bool>(false, true)) * func_2(vec2<bool>(false, false)), -vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)), select(select(!vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(true, true), true), true && false), vec2<bool>(!true, false || false), all(!vec4<bool>(true, false, true, true))), select(firstTrailingBit(-u_input.b), dot(global2[~u_input.a.x], global2[u_input.a.x]), all(vec4<bool>(false, false, false, false)))), round(-(-1463f)));
    global0 = -4229i;
    var var_2 = firstLeadingBit(-clamp(~select(vec2<i32>(u_input.b, 27192i), vec2<i32>(u_input.b, 2147483647i), false), firstTrailingBit(min(vec2<i32>(u_input.b, -1i), vec2<i32>(u_input.b, 18292i))), vec2<i32>(-32319i, 2096i) << (vec2<u32>(var_0.x, var_0.x) * vec2<u32>(var_0.x, 4294967295u))));
    var var_3 = Struct_1(select(clamp(-(~vec4<i32>(var_2.x, var_2.x, -7847i, -1i)), vec4<i32>(u_input.b, 26845i, var_2.x, var_2.x) >> ~vec4<u32>(67222u, u_input.a.x, 0u, 27237u), ~vec4<i32>(1i, -67091i, var_2.x, -1i) + vec4<i32>(-5013i, u_input.b, -1i, 2147483647i)), reverseBits(vec4<i32>(103875i, var_2.x, -19776i, 21826i)) >> (vec4<u32>(4294967295u, var_0.x, var_0.x, u_input.a.x) - u_input.a), vec4<bool>((-2245i & var_2.x) == -(-63582i), true, false, var_1.x)), i32(-2147483648), func_4(Struct_1(min(vec4<i32>(var_2.x, 9284i, 1i, 2147483647i) - vec4<i32>(var_2.x, -3545i, -28314i, u_input.b), abs(vec4<i32>(0i, 1i, var_2.x, u_input.b))), dot(vec4<i32>(u_input.b, 22926i, u_input.b, u_input.b) - vec4<i32>(9444i, var_2.x, u_input.b, u_input.b), vec4<i32>(u_input.b, 2147483647i, var_2.x, 3816i)), !func_4(Struct_1(vec4<i32>(u_input.b, u_input.b, var_2.x, u_input.b), -23195i, vec2<bool>(var_1.x, true), -40983i), -1610f), -(-(-494i))), -1000f), -31497i);
    global2 = array<vec3<i32>, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(step(-exp2(vec3<f32>(-1026f, -1672f, 262f)), vec3<f32>(step(2466f, -683f * -1144f), trunc(-291f), -4373f)), u_input.a.x, vec4<f32>(-((-410f / 2042f) / 523f), 1000f, -404f, -select(377f / -1061f, 358f / 1563f, var_3.c.x && var_3.c.x)), var_0.x, sign(1382f));
}

