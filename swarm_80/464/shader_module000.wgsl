struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: u32,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648)), 4294967295u, Struct_1(vec4<bool>(true, false, true, true), vec3<u32>(0u, 1u, 47474u), 4294967295u, vec2<u32>(86398u, 1u), vec3<u32>(1u, 42410u, 14858u))), Struct_2(vec3<i32>(23800i, -21232i, 35833i), 1u, Struct_1(vec4<bool>(true, false, false, false), vec3<u32>(0u, 50962u, 0u), 4294967295u, vec2<u32>(39327u, 1u), vec3<u32>(62361u, 4294967295u, 138294u))), Struct_2(vec3<i32>(2882i, 2147483647i, 389i), 14238u, Struct_1(vec4<bool>(true, false, true, true), vec3<u32>(47693u, 3643u, 76032u), 37206u, vec2<u32>(1u, 3965u), vec3<u32>(67536u, 23686u, 1576u))), Struct_2(vec3<i32>(1i, -1i, -25339i), 8680u, Struct_1(vec4<bool>(true, true, true, false), vec3<u32>(48687u, 33628u, 15059u), 4294967295u, vec2<u32>(0u, 1u), vec3<u32>(4294967295u, 1u, 4294967295u))), Struct_2(vec3<i32>(1i, 2147483647i, i32(-2147483648)), 0u, Struct_1(vec4<bool>(true, true, false, true), vec3<u32>(11927u, 9022u, 4294967295u), 32421u, vec2<u32>(24737u, 2050u), vec3<u32>(25332u, 71406u, 4294967295u))), Struct_2(vec3<i32>(10555i, -1i, 29114i), 0u, Struct_1(vec4<bool>(true, true, false, false), vec3<u32>(20365u, 21961u, 46021u), 44446u, vec2<u32>(4294967295u, 1u), vec3<u32>(4294967295u, 15923u, 0u))), Struct_2(vec3<i32>(-31579i, 37120i, i32(-2147483648)), 17917u, Struct_1(vec4<bool>(true, false, false, true), vec3<u32>(11702u, 21520u, 20075u), 1u, vec2<u32>(7341u, 1u), vec3<u32>(11869u, 12688u, 40274u))), Struct_2(vec3<i32>(9700i, 1i, 28268i), 44469u, Struct_1(vec4<bool>(false, true, false, false), vec3<u32>(9709u, 11171u, 4294967295u), 4385u, vec2<u32>(4294967295u, 1u), vec3<u32>(1u, 53394u, 3386u))), Struct_2(vec3<i32>(-1i, -9522i, 63123i), 19448u, Struct_1(vec4<bool>(false, true, true, false), vec3<u32>(0u, 1u, 35944u), 4294967295u, vec2<u32>(24051u, 50860u), vec3<u32>(45564u, 13066u, 4294967295u))), Struct_2(vec3<i32>(39702i, 8169i, -1i), 104531u, Struct_1(vec4<bool>(true, true, false, false), vec3<u32>(51343u, 14007u, 1u), 75455u, vec2<u32>(0u, 0u), vec3<u32>(4294967295u, 21964u, 49051u))), Struct_2(vec3<i32>(2147483647i, i32(-2147483648), 9106i), 19107u, Struct_1(vec4<bool>(false, false, true, true), vec3<u32>(62582u, 0u, 4294967295u), 4294967295u, vec2<u32>(88545u, 0u), vec3<u32>(1u, 12336u, 65257u))), Struct_2(vec3<i32>(8695i, 2147483647i, -1i), 1u, Struct_1(vec4<bool>(true, true, true, false), vec3<u32>(1u, 72508u, 96688u), 0u, vec2<u32>(4294967295u, 47699u), vec3<u32>(0u, 25172u, 3209u))), Struct_2(vec3<i32>(17052i, 2147483647i, 0i), 0u, Struct_1(vec4<bool>(true, true, true, false), vec3<u32>(19648u, 1u, 49389u), 4294967295u, vec2<u32>(0u, 13929u), vec3<u32>(14589u, 4294967295u, 4294967295u))), Struct_2(vec3<i32>(2798i, 12445i, -69124i), 0u, Struct_1(vec4<bool>(false, false, true, false), vec3<u32>(31859u, 4294967295u, 0u), 0u, vec2<u32>(4294967295u, 6874u), vec3<u32>(1u, 1u, 0u))), Struct_2(vec3<i32>(32734i, 1i, 1i), 1u, Struct_1(vec4<bool>(true, false, false, true), vec3<u32>(0u, 0u, 17170u), 1u, vec2<u32>(51374u, 30724u), vec3<u32>(1u, 71276u, 41100u))), Struct_2(vec3<i32>(i32(-2147483648), 2147483647i, -8796i), 47842u, Struct_1(vec4<bool>(true, true, true, true), vec3<u32>(4294967295u, 1u, 22529u), 1u, vec2<u32>(4294967295u, 4294967295u), vec3<u32>(18096u, 2163u, 0u))), Struct_2(vec3<i32>(1474i, 0i, 2147483647i), 0u, Struct_1(vec4<bool>(false, false, true, false), vec3<u32>(34201u, 45883u, 75729u), 9756u, vec2<u32>(4294967295u, 1u), vec3<u32>(4294967295u, 1u, 51987u))), Struct_2(vec3<i32>(-57188i, 1i, 0i), 0u, Struct_1(vec4<bool>(false, true, true, false), vec3<u32>(1u, 44766u, 7565u), 1u, vec2<u32>(0u, 0u), vec3<u32>(1u, 4294967295u, 4294967295u))), Struct_2(vec3<i32>(2147483647i, -36075i, 23674i), 53570u, Struct_1(vec4<bool>(false, true, true, true), vec3<u32>(22682u, 44548u, 0u), 1u, vec2<u32>(10829u, 1u), vec3<u32>(1u, 37968u, 1u))), Struct_2(vec3<i32>(2147483647i, 0i, -10540i), 29392u, Struct_1(vec4<bool>(false, true, true, true), vec3<u32>(0u, 18359u, 89601u), 0u, vec2<u32>(4294967295u, 1u), vec3<u32>(1u, 4294967295u, 1u))), Struct_2(vec3<i32>(2147483647i, 24686i, 2147483647i), 2776u, Struct_1(vec4<bool>(false, false, false, true), vec3<u32>(33921u, 2589u, 1u), 0u, vec2<u32>(8276u, 1u), vec3<u32>(1u, 0u, 0u))), Struct_2(vec3<i32>(-1i, 0i, i32(-2147483648)), 4294967295u, Struct_1(vec4<bool>(true, true, true, true), vec3<u32>(54357u, 30955u, 1u), 50018u, vec2<u32>(111415u, 0u), vec3<u32>(8226u, 1u, 27671u))), Struct_2(vec3<i32>(1i, 2147483647i, i32(-2147483648)), 29464u, Struct_1(vec4<bool>(false, true, false, true), vec3<u32>(0u, 19386u, 691u), 4294967295u, vec2<u32>(4294967295u, 4294967295u), vec3<u32>(57866u, 0u, 1u))), Struct_2(vec3<i32>(40620i, -17160i, -1i), 37683u, Struct_1(vec4<bool>(false, true, true, false), vec3<u32>(49557u, 4294967295u, 4294967295u), 21149u, vec2<u32>(47390u, 1u), vec3<u32>(1u, 4294967295u, 10181u))));

var<private> global1: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec4<bool>(true, false, true, false), vec3<u32>(2893u, 35892u, 1u), 0u, vec2<u32>(0u, 0u), vec3<u32>(1046u, 0u, 4294967295u)), Struct_1(vec4<bool>(true, true, true, true), vec3<u32>(22639u, 4294967295u, 38911u), 51470u, vec2<u32>(33463u, 0u), vec3<u32>(1u, 32159u, 4294967295u)), Struct_1(vec4<bool>(false, false, true, false), vec3<u32>(63241u, 0u, 1u), 16945u, vec2<u32>(2038u, 4294967295u), vec3<u32>(1u, 12863u, 1u)), Struct_1(vec4<bool>(true, false, true, false), vec3<u32>(1u, 4294967295u, 70019u), 125847u, vec2<u32>(86598u, 111996u), vec3<u32>(4294967295u, 0u, 4294967295u)), Struct_1(vec4<bool>(true, true, true, false), vec3<u32>(0u, 12503u, 19563u), 20959u, vec2<u32>(30771u, 16713u), vec3<u32>(62318u, 1u, 1u)));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(true, !(select(false, true, true) | true));
    let var_1 = var_0.x;
    global0 = array<Struct_2, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(reverseBits(-16333i), _wgslsmith_dot_vec4_i32(~vec4<i32>(-10017i, u_input.d.x, u_input.e, 34989i) << (~vec4<u32>(42498u, 4214u, u_input.c, 23388u) % vec4<u32>(32u)), countOneBits(vec4<i32>(1i, u_input.a.x, u_input.e, u_input.a.x)))), (~vec4<u32>(4294967295u, 2600u, 4294967295u, 0u) >> ((~vec4<u32>(u_input.b.x, 4294967295u, 92374u, u_input.c) << (~vec4<u32>(u_input.c, u_input.c, 0u, u_input.b.x) % vec4<u32>(32u))) % vec4<u32>(32u))) ^ ~select(abs(vec4<u32>(u_input.c, 4294967295u, u_input.b.x, 26439u)), vec4<u32>(u_input.b.x, 22807u, u_input.b.x, u_input.c), !vec4<bool>(var_1, var_1, var_1, true)), 4294967295u);
}

