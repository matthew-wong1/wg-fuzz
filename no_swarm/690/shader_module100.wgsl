// {"0:0":[127,164,112,164,206,55,18,249,37,13,128,250,44,150,19,178,198,165,197,122,229,188,181,22,39,240,22,13,131,203,7,194]}
// Seed: 13145613681283996868

struct Struct_1 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: i32,
    d: bool,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
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

var<private> global0: Struct_3;

var<private> global1: array<vec4<bool>, 9>;

var<private> global2: array<vec3<u32>, 27> = array<vec3<u32>, 27>(vec3<u32>(0u, 0u, 1u), vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(18723u, 4294967295u, 96644u), vec3<u32>(17724u, 29038u, 1u), vec3<u32>(75471u, 0u, 19903u), vec3<u32>(4294967295u, 54184u, 1u), vec3<u32>(1u, 2843u, 0u), vec3<u32>(4294967295u, 30854u, 0u), vec3<u32>(40623u, 93599u, 6685u), vec3<u32>(11214u, 27457u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 27897u), vec3<u32>(1u, 1u, 37503u), vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(1u, 0u, 22489u), vec3<u32>(1u, 843u, 5895u), vec3<u32>(1u, 1669u, 0u), vec3<u32>(30113u, 0u, 0u), vec3<u32>(1u, 24341u, 0u), vec3<u32>(4294967295u, 31115u, 7704u), vec3<u32>(1u, 4294967295u, 2901u), vec3<u32>(62344u, 13612u, 13273u), vec3<u32>(4294967295u, 52675u, 21785u), vec3<u32>(4294967295u, 11487u, 92453u), vec3<u32>(1u, 53483u, 1u), vec3<u32>(1u, 31816u, 14u), vec3<u32>(92938u, 4294967295u, 400u), vec3<u32>(0u, 96145u, 1u));

var<private> global3: Struct_1 = Struct_1(vec2<f32>(621f, 163f), vec2<bool>(false, false), 394i, false, vec4<f32>(-431f, -198f, 1000f, -1063f));

var<private> global4: u32 = 1u;

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> vec4<u32> {
    var var_0 = !global0.b.b;
    return vec4<u32>(~select(countOneBits(4294967295u), u_input.c, all(select(global3.b, vec2<bool>(arg_0.d, false), true))), 8729u, dot(vec4<u32>(u_input.b.x << u_input.c, u_input.d % u_input.d, u_input.b.x, 65371u) / select(abs(vec4<u32>(u_input.d, u_input.d, 4294967295u, u_input.b.x)), vec4<u32>(u_input.d, u_input.c, 0u, 0u), true), ~max(clamp(vec4<u32>(1818u, u_input.c, u_input.c, u_input.d), vec4<u32>(0u, u_input.b.x, 2523u, u_input.d), vec4<u32>(u_input.b.x, u_input.b.x, 5400u, 34813u)), select(vec4<u32>(u_input.b.x, u_input.c, 1u, 1u), vec4<u32>(u_input.d, u_input.d, u_input.c, 8268u), arg_0.b.x))), ~1u);
}

fn func_2() -> Struct_1 {
    var var_0 = global0.b.e;
    var var_1 = (-(-vec4<i32>(-7464i, -63495i, -11230i, -29744i)) << ~func_3(Struct_1(var_0.zx, vec2<bool>(true, global3.d), u_input.a.x, global0.c.x, vec4<f32>(global0.b.e.x, var_0.x, global3.a.x, global0.b.e.x)), global0.b, any(vec2<bool>(false, global0.c.x)))) % countOneBits(select(~vec4<i32>(u_input.a.x, global0.b.c, global3.c, 0i), vec4<i32>(global3.c, global3.c, u_input.a.x, -1i) % abs(vec4<i32>(1i, -3471i, -2605i, global3.c)), any(vec3<bool>(global0.a.x, true, global0.b.d))));
    var var_2 = 185f;
    let var_3 = Struct_2(global0.b, global0.b.e.x, var_0.x);
    var var_4 = vec4<f32>(trunc(1291f), -615f, ceil(578f), global3.e.x);
    return global0.b;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_3) -> u32 {
    global1 = array<vec4<bool>, 9>();
    var var_0 = Struct_3(!global0.c, global0.b, !(!vec3<bool>(arg_1.c.x, -1000f == arg_1.b.a.x, false)));
    var var_1 = -vec2<f32>(-step(-731f, 1070f) - global3.a.x, -func_2().a.x);
    return u_input.b.x * 0u;
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<i32>) -> f32 {
    var var_0 = Struct_2(global0.b, select(max(-922f, ceil(1095f)), -(-1446f), true), (-(global0.b.e.x + 539f) * max(max(323f, 203f), select(741f, arg_0.x, global3.b.x))) / max(1153f, -118f));
    global1 = array<vec4<bool>, 9>();
    let var_1 = vec3<u32>(~(~(u_input.b.x - u_input.b.x)) << 1u, 4294967295u, func_4(!select(select(var_0.a.b, var_0.a.b, true), global0.b.b, select(global0.b.b, vec2<bool>(var_0.a.d, global3.b.x), vec2<bool>(global0.c.x, global3.d))), Struct_3(global0.c, func_2(), vec3<bool>(!global3.d, 63372u > u_input.b.x, any(vec4<bool>(true, false, false, true))))));
    var var_2 = global0.b.c;
    var var_3 = -34428i;
    return var_0.b;
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec2<f32>) -> Struct_2 {
    var var_0 = Struct_1(vec2<f32>(451f, trunc(-(-705f))) / arg_2.a.e.wx, select(arg_2.a.b, vec2<bool>(u_input.d <= (4294967295u % 14949u), arg_2.a.d), true), -1i, !true, global3.e);
    let var_1 = 253f;
    var var_2 = func_2();
    let var_3 = -var_2.a.x;
    var var_4 = -(-sign(global0.b.e.wz));
    return arg_1;
}

fn func_6(arg_0: Struct_2) -> u32 {
    let var_0 = arg_0.a.c;
    let var_1 = Struct_2(Struct_1(-(-vec2<f32>(global0.b.a.x, -2781f)), select(!func_2().b, !func_2().b, true), (-42075i ^ min(u_input.a.x, 1i)) ^ -1031i, dot(global2[u_input.c & u_input.d], countOneBits(global2[u_input.c])) != 21863u, -vec4<f32>(abs(-683f), -arg_0.a.e.x, arg_0.c + arg_0.b, global0.b.a.x)), -(-(-global0.b.a.x)), abs(-global0.b.a.x));
    global1 = array<vec4<bool>, 9>();
    let var_2 = vec2<i32>(50318i, 0i);
    global4 = u_input.b.x * ~func_3(func_5(-global0.b.a, Struct_2(Struct_1(global0.b.a, global0.a.zz, var_0, global0.c.x, arg_0.a.e), arg_0.b, arg_0.c), arg_0, global3.e.xy + vec2<f32>(887f, global3.e.x)).a, global0.b, func_5(vec2<f32>(global3.e.x, -914f), func_5(var_1.a.a, Struct_2(Struct_1(vec2<f32>(var_1.a.e.x, var_1.b), arg_0.a.b, 11554i, arg_0.a.b.x, vec4<f32>(arg_0.a.e.x, 1614f, global0.b.a.x, arg_0.b)), global0.b.e.x, -209f), Struct_2(var_1.a, arg_0.b, 1184f), arg_0.a.a), func_5(global0.b.a, Struct_2(arg_0.a, var_1.b, -936f), var_1, global3.e.yy), -var_1.a.e.zw).a.d).x;
    return select(74659u, ~(~(~4294967295u)), !(false && !global3.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.b;
    global4 = func_6(func_5(-((var_0.e.xx * global0.b.a) / global0.b.e.yx), Struct_2(global0.b, func_1(abs(vec4<f32>(var_0.e.x, global3.a.x, global3.a.x, 1842f)), vec3<i32>(i32(-2147483648), global0.b.c, 0i)), -172f), Struct_2(func_2(), -(global3.a.x + 828f), var_0.e.x + global0.b.e.x), var_0.e.yy));
    var var_1 = func_2();
    let var_2 = global0.b.e;
    let var_3 = 1i >> ((~(~38895u) * ~reverseBits(u_input.c)) + u_input.b.x);
    var var_4 = -reverseBits(global3.c);
    var_0 = global0.b;
    let var_5 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(i32(-2147483648));
}

