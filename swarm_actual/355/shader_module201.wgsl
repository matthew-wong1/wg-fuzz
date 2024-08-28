// {"0:0":[130,18,167,150,153,204,160,166,186,244,11,192,245,83,155,206,249,185,136,15,175,183,165,202,242,82,126,65,84,128,32,101]}
// Seed: 1712988471670512867

struct Struct_1 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: bool,
    e: vec2<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: vec3<u32>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 27> = array<vec4<u32>, 27>(vec4<u32>(4294967295u, 33762u, 0u, 4294967295u), vec4<u32>(4294967295u, 22874u, 31121u, 43410u), vec4<u32>(16424u, 0u, 1u, 1u), vec4<u32>(4303u, 72014u, 4294967295u, 1u), vec4<u32>(1u, 0u, 64071u, 1u), vec4<u32>(4294967295u, 50640u, 38381u, 16964u), vec4<u32>(6498u, 1u, 0u, 8053u), vec4<u32>(4294967295u, 0u, 1u, 19354u), vec4<u32>(21420u, 36679u, 1u, 0u), vec4<u32>(4294967295u, 1u, 31008u, 0u), vec4<u32>(54228u, 4294967295u, 40639u, 3122u), vec4<u32>(29106u, 0u, 33741u, 0u), vec4<u32>(17085u, 1u, 56192u, 0u), vec4<u32>(0u, 103669u, 4294967295u, 12378u), vec4<u32>(28999u, 4294967295u, 1u, 82295u), vec4<u32>(54306u, 1u, 48619u, 0u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 24598u), vec4<u32>(0u, 0u, 80179u, 9969u), vec4<u32>(81960u, 52644u, 4294967295u, 27850u), vec4<u32>(42515u, 4642u, 27830u, 13020u), vec4<u32>(75508u, 1u, 45564u, 7168u), vec4<u32>(1u, 58522u, 79283u, 20348u), vec4<u32>(7948u, 0u, 2753u, 58683u), vec4<u32>(38471u, 0u, 1u, 0u), vec4<u32>(639u, 4294967295u, 31160u, 68190u), vec4<u32>(15527u, 1u, 39292u, 118994u), vec4<u32>(62988u, 0u, 19213u, 52185u));

var<private> global1: i32 = -46034i;

var<private> global2: bool = false;

fn func_2(arg_0: vec3<i32>, arg_1: u32, arg_2: vec4<f32>, arg_3: vec3<u32>) -> f32 {
    global1 = reverseBits(arg_0.x / reverseBits(dot(arg_0, vec3<i32>(-17756i, arg_0.x, arg_0.x)))) / ~(min(arg_0.x | -17703i, arg_0.x % -71614i) >> (~4294967295u & ~1u));
    let var_0 = Struct_2(Struct_1(exp2(arg_2.zy) / arg_2.wx, arg_0.x + (arg_0.x & -13002i)), true, ~(~arg_3.x), false, -arg_0.xz);
    global1 = abs(-16279i);
    let var_1 = !(641f >= var_0.a.a.x) | (var_0.c < (1u * (~arg_3.x ^ dot(u_input.b, global0[u_input.b.x]))));
    var var_2 = arg_0.x;
    return trunc(-(-1030f));
}

fn func_3(arg_0: vec4<f32>) -> Struct_1 {
    var var_0 = 1184f;
    var_0 = arg_0.x;
    var var_1 = Struct_3(!select(select(!vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false)), !vec4<bool>(false, false, true, true)), select(!vec4<bool>(false, false, false, false), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false)), !false), all(!vec4<bool>(false, true, false, false))), Struct_2(Struct_1(arg_0.zz, ~0i << ~1u), true, 1u, !all(vec4<bool>(true, true, false, false)), abs(~vec2<i32>(-43624i, 0i) & vec2<i32>(37963i, 6419i))), vec3<u32>(~u_input.b.x, ~51681u ^ dot(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b.yx), u_input.b.x), u_input.a);
    var var_2 = var_1.b.d;
    var var_3 = max(~abs(var_1.c.yy), vec2<u32>(u_input.b.x, dot(countOneBits(vec3<u32>(var_1.d, u_input.a, u_input.a)), var_1.c)));
    return var_1.b.a;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = func_3(abs(vec4<f32>(-arg_0.a.x, arg_0.a.x, -arg_0.a.x, -(-989f))) - (vec4<f32>(-arg_0.a.x, arg_0.a.x, max(559f, arg_0.a.x), arg_0.a.x) - vec4<f32>(-arg_0.a.x, 328f, func_2(vec3<i32>(0i, arg_0.b, arg_0.b), 61853u, vec4<f32>(-988f, arg_0.a.x, arg_0.a.x, arg_0.a.x), vec3<u32>(u_input.b.x, u_input.a, u_input.b.x)), arg_0.a.x)));
    var var_1 = arg_0;
    var var_2 = Struct_3(vec4<bool>(!(~u_input.a <= abs(u_input.a)), !false, countOneBits(~u_input.a) <= u_input.b.x, (false && (true | true)) || (firstTrailingBit(76500u) != 56094u)), Struct_2(arg_0, all(select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), true)), (u_input.b.x & 4294967295u) << countOneBits(22810u), false, vec2<i32>(-1i, dot(vec4<i32>(var_0.b, 0i, i32(-2147483648), arg_0.b) >> global0[1u], firstLeadingBit(vec4<i32>(21211i, arg_0.b, -15364i, var_0.b))))), u_input.b.zxx, reverseBits(firstTrailingBit(4294967295u)) << (u_input.a | ~1u));
    var var_3 = sign(-1064f);
    var var_4 = Struct_1(-arg_0.a, 1i);
    return arg_0;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_3) -> bool {
    var var_0 = vec3<f32>(arg_2.b.a.a.x, -753f, -(arg_1.a.x - abs(ceil(241f))));
    var_0 = vec3<f32>(abs(sign(exp2(-480f))) / -(-(-1000f)), arg_2.b.a.a.x * var_0.x, arg_2.b.a.a.x);
    global1 = (-64550i >> u_input.a) ^ 9649i;
    var var_1 = arg_2.a;
    var var_2 = arg_2.a;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_4(-vec2<i32>(-reverseBits(3900i), firstTrailingBit(-1i)), func_1(Struct_1(min(-vec2<f32>(-1569f, 317f), round(vec2<f32>(380f, 1000f))), ~abs(2147483647i))), Struct_3(vec4<bool>(!false, !(3003i <= -47098i), !(-799f >= 1994f), (false & true) | !true), Struct_2(func_1(func_3(vec4<f32>(-142f, 753f, 427f, -374f))), (u_input.b.x / 0u) < ~u_input.b.x, ~4294967295u, true, ~min(vec2<i32>(-1i, 10156i), vec2<i32>(33543i, 1i))), select(u_input.b.xxx, u_input.b.yzw, !vec3<bool>(false, false, false)), u_input.a << u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, u_input.a);
}

