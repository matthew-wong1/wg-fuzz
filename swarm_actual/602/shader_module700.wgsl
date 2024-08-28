// {"0:0":[75,196,126,183,17,37,113,129,127,54,202,12,180,30,106,209]}
// Seed: 5657813217770713287

struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec4<u32>(47735u, 1u, 4294967295u, 18208u)), Struct_1(vec4<u32>(36760u, 69731u, 1u, 4294967295u)), Struct_1(vec4<u32>(0u, 1u, 15598u, 15922u)), Struct_1(vec4<u32>(4294967295u, 0u, 3011u, 4294967295u)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 0u, 2627u)), Struct_1(vec4<u32>(40738u, 64977u, 23187u, 0u)), Struct_1(vec4<u32>(108027u, 0u, 1u, 3508u)), Struct_1(vec4<u32>(22532u, 93516u, 4294967295u, 1u)), Struct_1(vec4<u32>(1u, 42634u, 1u, 4294967295u)), Struct_1(vec4<u32>(54092u, 1u, 16317u, 29235u)), Struct_1(vec4<u32>(49228u, 4294967295u, 4294967295u, 62573u)), Struct_1(vec4<u32>(0u, 0u, 28233u, 45517u)), Struct_1(vec4<u32>(0u, 1u, 4294967295u, 8931u)), Struct_1(vec4<u32>(36321u, 4294967295u, 19187u, 49592u)), Struct_1(vec4<u32>(1u, 57850u, 0u, 1u)));

var<private> global1: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec4<u32>(123624u, 19217u, 1u, 71941u)), Struct_1(vec4<u32>(1u, 40410u, 1u, 30790u)), Struct_1(vec4<u32>(108985u, 19373u, 0u, 0u)), Struct_1(vec4<u32>(0u, 4294967295u, 1u, 4294967295u)), Struct_1(vec4<u32>(44412u, 0u, 0u, 11728u)), Struct_1(vec4<u32>(34840u, 49019u, 1u, 21953u)), Struct_1(vec4<u32>(456u, 0u, 5477u, 4294967295u)), Struct_1(vec4<u32>(1217u, 21549u, 2070u, 0u)), Struct_1(vec4<u32>(6514u, 103065u, 69346u, 4294967295u)), Struct_1(vec4<u32>(8725u, 40718u, 0u, 0u)), Struct_1(vec4<u32>(2094u, 16896u, 0u, 4294967295u)), Struct_1(vec4<u32>(64801u, 4294967295u, 0u, 53854u)), Struct_1(vec4<u32>(48353u, 6006u, 0u, 57196u)), Struct_1(vec4<u32>(50520u, 84213u, 1u, 4294967295u)), Struct_1(vec4<u32>(66550u, 1u, 1u, 12441u)), Struct_1(vec4<u32>(1u, 63060u, 0u, 31508u)), Struct_1(vec4<u32>(4294967295u, 1u, 20440u, 4294967295u)), Struct_1(vec4<u32>(0u, 556u, 67387u, 1u)), Struct_1(vec4<u32>(2774u, 4294967295u, 68358u, 112332u)), Struct_1(vec4<u32>(28545u, 4294967295u, 48136u, 1u)), Struct_1(vec4<u32>(1u, 0u, 11967u, 0u)), Struct_1(vec4<u32>(55159u, 0u, 1u, 44606u)), Struct_1(vec4<u32>(18121u, 4294967295u, 0u, 4294967295u)), Struct_1(vec4<u32>(0u, 1u, 0u, 4294967295u)), Struct_1(vec4<u32>(4294967295u, 0u, 17997u, 4294967295u)), Struct_1(vec4<u32>(5005u, 48745u, 5026u, 1u)), Struct_1(vec4<u32>(1u, 678u, 23671u, 0u)), Struct_1(vec4<u32>(35170u, 1u, 1u, 0u)));

fn func_3() -> bool {
    global0 = array<Struct_1, 15>();
    global1 = array<Struct_1, 28>();
    let var_0 = -(~(abs(vec2<i32>(594i, u_input.b)) + vec2<i32>(u_input.b, u_input.b))) % max(vec2<i32>(u_input.b, i32(-2147483648) & 0i), vec2<i32>(dot(vec4<i32>(u_input.b, i32(-2147483648), 2147483647i, 12294i) / vec4<i32>(1i, 14823i, 60898i, 0i), select(vec4<i32>(u_input.b, u_input.b, u_input.b, -1i), vec4<i32>(-37119i, 43967i, 1i, 26092i), true)), min(dot(vec3<i32>(1i, u_input.b, u_input.b), vec3<i32>(2147483647i, 21246i, u_input.b)), u_input.b - 23674i)));
    let var_1 = Struct_1(vec4<u32>(~(u_input.a.x / countOneBits(u_input.a.x)), 72333u, select(u_input.a.x & ~u_input.a.x, 1u << reverseBits(u_input.a.x), all(vec2<bool>(false, true))), 0u));
    global1 = array<Struct_1, 28>();
    return all(!vec4<bool>(!false, true && select(false, false, false), any(!vec3<bool>(true, true, true)), (var_1.a.x >> u_input.a.x) > (0u * 28719u)));
}

fn func_2(arg_0: Struct_2) -> vec3<bool> {
    let var_0 = -(-ceil(round(294f) * round(1315f)));
    let var_1 = Struct_2(select(vec3<bool>(!false, arg_0.a.x, -var_0 == var_0), vec3<bool>(func_3() | true, !arg_0.a.x, all(arg_0.a.zx)), !vec3<bool>(!false, true, arg_0.a.x)));
    global1 = array<Struct_1, 28>();
    let var_2 = -max(-(-vec4<f32>(var_0, 1155f, var_0, -1000f) * vec4<f32>(var_0, 2040f, 1000f, var_0)), -step(vec4<f32>(-1000f, var_0, var_0, var_0), vec4<f32>(463f, 1000f, 358f, var_0)) - -vec4<f32>(1530f, -1310f, -840f, -431f));
    global1 = array<Struct_1, 28>();
    return vec3<bool>(var_1.a.x, arg_0.a.x, var_1.a.x);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> f32 {
    return trunc(-(-(-step(-967f, 1335f))));
}

fn func_5(arg_0: vec4<f32>, arg_1: f32, arg_2: u32) -> Struct_2 {
    global0 = array<Struct_1, 15>();
    var var_0 = (vec3<u32>(firstLeadingBit(max(arg_2, arg_2)), ~(2222u - arg_2), 1u) % (u_input.a & vec3<u32>(0u, 24711u, ~u_input.a.x))) << u_input.a;
    let var_1 = 1u;
    global0 = array<Struct_1, 15>();
    let var_2 = Struct_2(vec3<bool>(all(select(!vec3<bool>(false, true, false), vec3<bool>(false, true, false), true)), !all(vec4<bool>(true, false, false, true)), (func_2(Struct_2(vec3<bool>(true, false, true))).x | !false) | !(74450u < var_1)));
    return var_2;
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    var var_0 = func_5(vec4<f32>(func_4(Struct_2(func_2(arg_0)), Struct_1(vec4<u32>(37102u, u_input.a.x, u_input.a.x, 83476u))), -ceil(exp2(512f)), -trunc(-1637f), -ceil(select(523f, 537f, arg_0.a.x))), -720f, 7801u ^ abs(u_input.a.x));
    var var_1 = func_5(vec4<f32>(((244f * -144f) / max(2058f, 1273f)) + (599f + trunc(-1152f)), step(-611f, -(-(-585f))), -(-(-595f - 118f)), -165f), -round(-749f / 1249f) * -(-trunc(1798f)), (1u | ~1u) % abs(~dot(vec2<u32>(4294967295u, u_input.a.x), vec2<u32>(25705u, u_input.a.x))));
    var_1 = arg_0;
    var var_2 = ~countOneBits(~(-(-vec2<i32>(1i, u_input.b))));
    var var_3 = func_4(func_5(vec4<f32>(max(1829f, -200f), -661f, -237f, 838f), 1727f, u_input.a.x), Struct_1(firstLeadingBit(abs(vec4<u32>(102831u, u_input.a.x, 19655u, 1u))) ^ ((vec4<u32>(u_input.a.x, 4374u, u_input.a.x, 127881u) % vec4<u32>(u_input.a.x, u_input.a.x, 1u, 32545u)) << (vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 1u) * vec4<u32>(8568u, 1u, u_input.a.x, 0u)))));
    return Struct_2(vec3<bool>(all(func_2(Struct_2(arg_0.a))), var_1.a.x, abs(select(-1201f, 1068f, var_0.a.x)) == -1333f));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 28>();
    global1 = array<Struct_1, 28>();
    var var_0 = func_1(Struct_2(select(vec3<bool>(any(vec4<bool>(false, true, false, false)), false, !true), !select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), any(vec4<bool>(true, false, true, true)))));
    var_0 = Struct_2(var_0.a);
    var var_1 = ~(~vec4<u32>(u_input.a.x, 2464u, ~u_input.a.x, 10573u >> 1u)) / countOneBits(vec4<u32>(18275u, 53986u - 4294967295u, 53895u, ~u_input.a.x) & firstTrailingBit(max(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u), vec4<u32>(u_input.a.x, 54593u, 54361u, u_input.a.x))));
    let var_2 = u_input.a.zy;
    let var_3 = global1[var_1.x];
    var var_4 = select(select(!select(select(vec4<bool>(false, true, var_0.a.x, true), vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), vec4<bool>(var_0.a.x, false, true, false)), vec4<bool>(false, var_0.a.x, true, var_0.a.x), func_3()), vec4<bool>(false, !(!var_0.a.x), var_0.a.x, true & any(var_0.a)), select(vec4<bool>(0i < -1i, false, any(var_0.a), !true), !vec4<bool>(false, var_0.a.x, var_0.a.x, false), !var_0.a.x)), vec4<bool>(!var_0.a.x, true, all(func_5(vec4<f32>(-447f, 444f, -673f, -963f), -179f, 4294967295u).a.yz), var_0.a.x), select(!(!vec4<bool>(true, true, true, true)), vec4<bool>(all(var_0.a), !false, false, ~u_input.b == -u_input.b), !select(!vec4<bool>(true, false, var_0.a.x, var_0.a.x), !vec4<bool>(false, var_0.a.x, true, var_0.a.x), var_0.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.b & u_input.b) & (firstLeadingBit(abs(u_input.b)) / firstLeadingBit(32643i)), firstLeadingBit(-vec2<i32>(u_input.b, 2147483647i)) | -(~countOneBits(vec2<i32>(u_input.b, u_input.b))), -(817f * 1048f));
}

