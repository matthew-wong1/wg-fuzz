struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: vec2<bool>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(vec3<i32>(2147483647i, 2147483647i, 1i), Struct_1(true, vec2<bool>(false, true), vec2<bool>(false, true), vec4<u32>(4294967295u, 12763u, 6101u, 42656u)), Struct_1(false, vec2<bool>(true, true), vec2<bool>(true, false), vec4<u32>(4294967295u, 48381u, 4294967295u, 0u))), Struct_2(vec3<i32>(29963i, 0i, -2288i), Struct_1(true, vec2<bool>(false, false), vec2<bool>(false, true), vec4<u32>(27971u, 4294967295u, 1u, 5991u)), Struct_1(false, vec2<bool>(false, false), vec2<bool>(true, false), vec4<u32>(1u, 1u, 0u, 4294967295u))), Struct_2(vec3<i32>(i32(-2147483648), 1i, -1i), Struct_1(false, vec2<bool>(true, false), vec2<bool>(true, false), vec4<u32>(4294967295u, 12540u, 83284u, 4294967295u)), Struct_1(true, vec2<bool>(true, false), vec2<bool>(false, true), vec4<u32>(9901u, 4294967295u, 4294967295u, 0u))), Struct_2(vec3<i32>(-1i, -35579i, 2147483647i), Struct_1(true, vec2<bool>(true, true), vec2<bool>(false, false), vec4<u32>(31399u, 1u, 1u, 0u)), Struct_1(true, vec2<bool>(false, true), vec2<bool>(false, true), vec4<u32>(51445u, 0u, 0u, 6765u))), Struct_2(vec3<i32>(-94415i, 1i, 0i), Struct_1(true, vec2<bool>(true, true), vec2<bool>(true, true), vec4<u32>(8791u, 1u, 42999u, 0u)), Struct_1(true, vec2<bool>(false, false), vec2<bool>(false, false), vec4<u32>(1u, 0u, 4294967295u, 63548u))), Struct_2(vec3<i32>(2147483647i, -1i, 1i), Struct_1(true, vec2<bool>(false, false), vec2<bool>(false, false), vec4<u32>(1u, 104139u, 47692u, 0u)), Struct_1(false, vec2<bool>(false, true), vec2<bool>(false, true), vec4<u32>(0u, 4294967295u, 0u, 0u))), Struct_2(vec3<i32>(-59645i, 2147483647i, -18178i), Struct_1(true, vec2<bool>(true, false), vec2<bool>(true, false), vec4<u32>(0u, 1u, 82622u, 1u)), Struct_1(false, vec2<bool>(false, true), vec2<bool>(false, false), vec4<u32>(1u, 59031u, 31872u, 24243u))), Struct_2(vec3<i32>(2147483647i, 82003i, -34100i), Struct_1(true, vec2<bool>(true, true), vec2<bool>(true, true), vec4<u32>(6033u, 4294967295u, 21714u, 1u)), Struct_1(false, vec2<bool>(true, false), vec2<bool>(false, false), vec4<u32>(0u, 1788u, 17315u, 58726u))), Struct_2(vec3<i32>(-12904i, 14019i, -18151i), Struct_1(true, vec2<bool>(true, true), vec2<bool>(false, false), vec4<u32>(0u, 4294967295u, 0u, 1u)), Struct_1(true, vec2<bool>(false, false), vec2<bool>(true, true), vec4<u32>(4294967295u, 2795u, 17153u, 1u))), Struct_2(vec3<i32>(28026i, 1i, -755i), Struct_1(true, vec2<bool>(true, true), vec2<bool>(false, false), vec4<u32>(28211u, 4294967295u, 4294967295u, 13645u)), Struct_1(false, vec2<bool>(false, true), vec2<bool>(true, false), vec4<u32>(1u, 1u, 18281u, 0u))), Struct_2(vec3<i32>(-60998i, i32(-2147483648), 2147483647i), Struct_1(false, vec2<bool>(false, true), vec2<bool>(true, false), vec4<u32>(51293u, 4294967295u, 0u, 0u)), Struct_1(false, vec2<bool>(false, false), vec2<bool>(false, false), vec4<u32>(27149u, 60630u, 1u, 49874u))), Struct_2(vec3<i32>(15264i, 0i, -24102i), Struct_1(false, vec2<bool>(true, false), vec2<bool>(true, true), vec4<u32>(63010u, 50753u, 4294967295u, 1u)), Struct_1(true, vec2<bool>(true, true), vec2<bool>(true, false), vec4<u32>(10798u, 0u, 38748u, 2124u))), Struct_2(vec3<i32>(19478i, 78974i, -1i), Struct_1(false, vec2<bool>(false, true), vec2<bool>(false, false), vec4<u32>(0u, 44156u, 0u, 0u)), Struct_1(true, vec2<bool>(false, true), vec2<bool>(true, false), vec4<u32>(10112u, 0u, 4294967295u, 0u))), Struct_2(vec3<i32>(40521i, 2147483647i, i32(-2147483648)), Struct_1(true, vec2<bool>(true, true), vec2<bool>(false, false), vec4<u32>(79559u, 6090u, 23553u, 95028u)), Struct_1(false, vec2<bool>(false, true), vec2<bool>(true, true), vec4<u32>(65043u, 15357u, 26169u, 1u))), Struct_2(vec3<i32>(i32(-2147483648), -1i, -40007i), Struct_1(false, vec2<bool>(true, true), vec2<bool>(true, false), vec4<u32>(0u, 61377u, 28056u, 1u)), Struct_1(false, vec2<bool>(false, false), vec2<bool>(false, false), vec4<u32>(30678u, 39165u, 26886u, 14365u))), Struct_2(vec3<i32>(-49999i, 5466i, -14130i), Struct_1(true, vec2<bool>(true, true), vec2<bool>(true, true), vec4<u32>(29727u, 0u, 4294967295u, 4294967295u)), Struct_1(false, vec2<bool>(false, false), vec2<bool>(false, true), vec4<u32>(27634u, 1u, 9545u, 55561u))), Struct_2(vec3<i32>(-26041i, -65925i, 2147483647i), Struct_1(true, vec2<bool>(false, true), vec2<bool>(false, true), vec4<u32>(33298u, 34147u, 0u, 4294967295u)), Struct_1(false, vec2<bool>(true, false), vec2<bool>(false, false), vec4<u32>(59725u, 0u, 24740u, 121089u))), Struct_2(vec3<i32>(2147483647i, 21086i, 20459i), Struct_1(true, vec2<bool>(false, false), vec2<bool>(true, false), vec4<u32>(81114u, 28834u, 64642u, 0u)), Struct_1(false, vec2<bool>(false, false), vec2<bool>(true, false), vec4<u32>(0u, 1896u, 4294967295u, 0u))), Struct_2(vec3<i32>(-62852i, -36285i, 2773i), Struct_1(false, vec2<bool>(true, false), vec2<bool>(false, false), vec4<u32>(22504u, 10530u, 47677u, 2521u)), Struct_1(true, vec2<bool>(false, false), vec2<bool>(true, false), vec4<u32>(2998u, 26025u, 0u, 1u))), Struct_2(vec3<i32>(1i, -74430i, 1i), Struct_1(false, vec2<bool>(false, false), vec2<bool>(false, true), vec4<u32>(34302u, 41248u, 38180u, 45380u)), Struct_1(true, vec2<bool>(true, true), vec2<bool>(true, true), vec4<u32>(36705u, 0u, 0u, 1u))), Struct_2(vec3<i32>(61998i, i32(-2147483648), -20047i), Struct_1(false, vec2<bool>(false, false), vec2<bool>(true, false), vec4<u32>(4294967295u, 11597u, 0u, 1u)), Struct_1(false, vec2<bool>(true, false), vec2<bool>(false, false), vec4<u32>(46919u, 0u, 41010u, 1u))), Struct_2(vec3<i32>(-18201i, 0i, -26628i), Struct_1(true, vec2<bool>(false, false), vec2<bool>(false, false), vec4<u32>(1u, 36254u, 55536u, 1u)), Struct_1(true, vec2<bool>(true, true), vec2<bool>(false, true), vec4<u32>(0u, 72133u, 4294967295u, 9205u))));

var<private> global1: array<vec3<u32>, 19> = array<vec3<u32>, 19>(vec3<u32>(1u, 25611u, 13723u), vec3<u32>(4294967295u, 1u, 84884u), vec3<u32>(70960u, 67182u, 39668u), vec3<u32>(1u, 20472u, 1u), vec3<u32>(66377u, 0u, 37879u), vec3<u32>(0u, 23331u, 20665u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 0u, 29809u), vec3<u32>(1u, 21541u, 8003u), vec3<u32>(63329u, 0u, 4294967295u), vec3<u32>(58300u, 75093u, 13854u), vec3<u32>(51376u, 1u, 19080u), vec3<u32>(12620u, 0u, 0u), vec3<u32>(4294967295u, 92368u, 4294967295u), vec3<u32>(1u, 0u, 13866u), vec3<u32>(78070u, 4294967295u, 0u), vec3<u32>(10345u, 1u, 18397u), vec3<u32>(1u, 4294967295u, 11538u), vec3<u32>(4294967295u, 35217u, 4294967295u));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(u_input.b.x & ((u_input.b.x << (1u % 32u)) ^ abs(u_input.b.x))));
    let var_1 = false;
    let var_2 = max(4294967295u, _wgslsmith_add_u32(~abs(_wgslsmith_dot_vec3_u32(vec3<u32>(41731u, u_input.b.x, var_0), global1[_wgslsmith_index_u32(1u, 19u)])), u_input.b.x));
    global0 = array<Struct_2, 22>();
    var var_3 = !(var_1 && !var_1);
    global0 = array<Struct_2, 22>();
    let var_4 = global0[_wgslsmith_index_u32(36356u, 22u)];
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a, _wgslsmith_sub_i32(var_4.a.x, -1i));
}

