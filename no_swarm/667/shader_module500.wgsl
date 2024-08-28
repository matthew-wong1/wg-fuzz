// {"0:0":[198,22,241,234,196,234,201,175,106,12,223,115,189,155,145,111,193,64,118,43,67,158,158,222,219,191,245,84,205,120,171,157]}
// Seed: 17610255803409534456

struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_3,
}

struct Struct_5 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 26>;

var<private> global1: vec3<i32> = vec3<i32>(-17250i, i32(-2147483648), 1i);

var<private> global2: array<vec2<i32>, 31>;

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_4, arg_3: bool) -> i32 {
    global1 = select(u_input.b.wwz, ~(~vec3<i32>(~(-1i), 72214i, -34606i)), !(!select(select(vec3<bool>(true, true, true), vec3<bool>(arg_2.b.b, arg_1.b, arg_3), arg_3), vec3<bool>(false, arg_3, arg_2.a.b), arg_2.a.b)));
    global1 = u_input.b.wwx;
    var var_0 = Struct_2(arg_1, dot(firstTrailingBit(max(-global1.zz, vec2<i32>(-45910i, 53690i))), ((vec2<i32>(global1.x, 28989i) >> arg_2.c.b.c.xx) << ~vec2<u32>(arg_2.c.a.c.x, 4294967295u)) + ~vec2<i32>(global1.x, 1i)), arg_2.c.a.c);
    let var_1 = Struct_5(vec2<f32>(-2384f, -var_0.a.a.x) * -arg_2.b.a.yz);
    global2 = array<vec2<i32>, 31>();
    return countOneBits(-21830i & (dot(~vec3<i32>(i32(-2147483648), global1.x, u_input.a), u_input.b.yyw) ^ select(-1i, var_0.b, false)));
}

fn func_2() -> bool {
    global1 = vec3<i32>(-6998i, reverseBits(dot(u_input.b.wy, vec2<i32>(global1.x, func_3(global1.x, Struct_1(vec4<f32>(409f, 1389f, -452f, 1048f), false, -731f), Struct_4(Struct_1(vec4<f32>(-1452f, 370f, -842f, 427f), false, -832f), Struct_1(vec4<f32>(193f, -471f, -389f, -555f), false, 734f), Struct_3(Struct_2(Struct_1(vec4<f32>(-746f, 111f, 260f, 362f), false, 1625f), global1.x, vec3<u32>(1u, 1u, 1u)), Struct_2(Struct_1(vec4<f32>(-286f, 645f, -512f, 877f), true, -360f), global1.x, vec3<u32>(1u, 17768u, 28796u)))), true)))), (1i - (global1.x << (61517u + 1u))) >> ~(min(4294967295u, 4294967295u) & max(58976u, 4294967295u)));
    var var_0 = Struct_5(vec2<f32>(floor(-1906f), sign(step(1465f, -647f)) - -1000f));
    let var_1 = reverseBits(clamp(reverseBits(~(~global0[0u])), select(reverseBits(vec2<u32>(48193u, 75005u)) | global0[89505u - 4294967295u], vec2<u32>(84227u ^ 27481u, 0u), false || select(false, true, true)), global0[dot(~vec2<u32>(1u, 49691u) << (global0[80823u] % global0[55780u]), global0[max(firstLeadingBit(4294967295u), abs(34811u))])]));
    return u_input.a < -12362i;
}

fn func_1() -> vec4<bool> {
    var var_0 = Struct_3(Struct_2(Struct_1(vec4<f32>(-251f + -609f, 1241f * 662f, -1544f, sign(1000f)), func_2(), -max(-661f, 1157f)), u_input.a, select(firstTrailingBit(vec3<u32>(1u, 4294967295u, 1u) * vec3<u32>(69992u, 63799u, 18589u)), vec3<u32>(1u % 7645u, 0u - 11812u, ~4294967295u), all(vec4<bool>(false, true, false, true)))), Struct_2(Struct_1(abs(exp2(vec4<f32>(-627f, 767f, 578f, 388f))), false, 1284f), (15475i ^ -27765i) + -1769i, ~(~vec3<u32>(91953u, 1u, 0u)) * vec3<u32>(abs(0u), abs(36364u), dot(vec2<u32>(1u, 62659u), vec2<u32>(44343u, 1u)))));
    let var_1 = vec3<u32>(var_0.b.c.x, 0u >> ~var_0.a.c.x, var_0.b.c.x);
    var var_2 = false;
    var var_3 = true;
    let var_4 = Struct_4(Struct_1(abs(var_0.a.a.a) + (var_0.b.a.a / (vec4<f32>(-439f, var_0.a.a.c, 299f, -1465f) + vec4<f32>(-1626f, var_0.b.a.a.x, var_0.b.a.a.x, 126f))), var_0.b.a.b, max(-var_0.b.a.c, -abs(-263f))), var_0.b.a, Struct_3(Struct_2(var_0.a.a, -1i, ~vec3<u32>(var_0.a.c.x, 0u, var_1.x)), var_0.b));
    return select(select(!(!select(vec4<bool>(false, var_4.a.b, false, true), vec4<bool>(false, var_4.a.b, true, var_0.b.a.b), var_0.a.a.b)), select(!select(vec4<bool>(false, var_0.b.a.b, var_4.c.b.a.b, false), vec4<bool>(var_0.a.a.b, false, true, var_0.a.a.b), true), select(select(vec4<bool>(var_4.a.b, var_4.a.b, true, var_4.c.b.a.b), vec4<bool>(true, var_0.a.a.b, true, true), var_0.b.a.b), !vec4<bool>(var_0.b.a.b, var_4.c.a.a.b, true, var_0.a.a.b), !vec4<bool>(true, false, var_0.b.a.b, var_0.a.a.b)), true), select(!select(vec4<bool>(false, var_4.b.b, true, var_4.a.b), vec4<bool>(var_4.b.b, var_4.a.b, true, var_4.c.a.a.b), true), !vec4<bool>(false, var_0.a.a.b, false, false), !select(vec4<bool>(var_0.a.a.b, var_0.a.a.b, var_4.b.b, true), vec4<bool>(var_4.a.b, var_4.c.b.a.b, var_4.b.b, false), false))), !(!vec4<bool>(!var_0.a.a.b, !var_0.b.a.b, var_0.b.a.b && false, var_0.b.a.b)), false);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 26>();
    var var_0 = all(func_1()) & !select(all(func_1().xyw), false, ~(-40551i) < firstLeadingBit(u_input.b.x));
    global1 = -select(vec3<i32>(-(-1004i), -55981i, u_input.b.x & global1.x) % u_input.b.xzz, vec3<i32>(firstTrailingBit(-u_input.a), -42747i, -(-8275i)), vec3<bool>(!(!false), false, any(func_1().www)));
    let var_1 = firstTrailingBit(vec4<u32>(min(~62893u, firstTrailingBit(37961u)), 65237u >> (0u << 1u), firstLeadingBit(reverseBits(4924u)), ~14809u) % vec4<u32>(dot(~global0[1u], vec2<u32>(1u, 0u)), 4294967295u, (80440u >> 4294967295u) | (36575u * 0u), ~(0u << 63934u)));
    global2 = array<vec2<i32>, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(countOneBits(~dot(vec3<u32>(var_1.x, 4294967295u, var_1.x), vec3<u32>(4294967295u, var_1.x, 1u))), ~reverseBits(~var_1.x)), var_1.x, vec3<f32>(round(max(1111f, 536f)) * -(-1141f), -381f, -(-2099f)));
}

