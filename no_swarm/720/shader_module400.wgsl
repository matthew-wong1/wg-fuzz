struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec4<u32>, 2>;

var<private> global2: u32;

var<private> global3: u32;

var<private> global4: array<Struct_3, 21> = array<Struct_3, 21>(Struct_3(Struct_1(44673u, 34288u), vec2<i32>(-42638i, -46243i), Struct_2(true)), Struct_3(Struct_1(13588u, 0u), vec2<i32>(-34454i, -27936i), Struct_2(false)), Struct_3(Struct_1(0u, 0u), vec2<i32>(-6713i, 34152i), Struct_2(false)), Struct_3(Struct_1(14968u, 0u), vec2<i32>(0i, 1i), Struct_2(true)), Struct_3(Struct_1(32313u, 0u), vec2<i32>(28584i, -33766i), Struct_2(false)), Struct_3(Struct_1(35419u, 24380u), vec2<i32>(0i, 0i), Struct_2(false)), Struct_3(Struct_1(0u, 0u), vec2<i32>(0i, 2147483647i), Struct_2(false)), Struct_3(Struct_1(0u, 37682u), vec2<i32>(1i, 50931i), Struct_2(false)), Struct_3(Struct_1(0u, 0u), vec2<i32>(-1i, -48867i), Struct_2(true)), Struct_3(Struct_1(1u, 33691u), vec2<i32>(77095i, -1i), Struct_2(true)), Struct_3(Struct_1(4294967295u, 26753u), vec2<i32>(-1i, -24678i), Struct_2(true)), Struct_3(Struct_1(10165u, 0u), vec2<i32>(-84093i, 1i), Struct_2(true)), Struct_3(Struct_1(20706u, 16046u), vec2<i32>(5295i, 0i), Struct_2(false)), Struct_3(Struct_1(53608u, 4294967295u), vec2<i32>(-1i, 36983i), Struct_2(false)), Struct_3(Struct_1(4294967295u, 62u), vec2<i32>(2147483647i, -23649i), Struct_2(false)), Struct_3(Struct_1(0u, 1u), vec2<i32>(1i, -7517i), Struct_2(false)), Struct_3(Struct_1(0u, 0u), vec2<i32>(1i, -1i), Struct_2(true)), Struct_3(Struct_1(78672u, 16399u), vec2<i32>(57072i, 10035i), Struct_2(true)), Struct_3(Struct_1(46743u, 0u), vec2<i32>(1057i, -5541i), Struct_2(false)), Struct_3(Struct_1(1u, 15814u), vec2<i32>(0i, -1i), Struct_2(false)), Struct_3(Struct_1(28325u, 43134u), vec2<i32>(-1i, 1i), Struct_2(false)));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, u_input.b.xx, firstTrailingBit(-42862i), _wgslsmith_div_vec3_i32(-(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d.x, -20427i, 13256i), vec3<i32>(u_input.d.x, u_input.d.x, 0i)) | -vec3<i32>(158i, u_input.d.x, u_input.d.x)), ~vec3<i32>(50027i, -9783i, u_input.d.x) & (~vec3<i32>(-60842i, -1i, -1i) ^ ~vec3<i32>(u_input.d.x, 14921i, 0i))), reverseBits(_wgslsmith_clamp_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 24123u), u_input.c) >> (u_input.c.x % 32u), select(_wgslsmith_sub_u32(1u, u_input.a.x), _wgslsmith_mod_u32(u_input.a.x, 56233u), true))));
}

