struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec2<i32>(-1i, 1i), -17675i, false), Struct_1(vec2<i32>(8177i, 3595i), 3924i, false), Struct_1(vec2<i32>(2147483647i, 1i), -108271i, true));

var<private> global2: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(Struct_1(vec2<i32>(-74097i, 30325i), 1i, false), false, Struct_1(vec2<i32>(16110i, 0i), -18199i, true)), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 0i), -1346i, true), false, Struct_1(vec2<i32>(-22527i, 49376i), i32(-2147483648), false)), Struct_2(Struct_1(vec2<i32>(0i, -5817i), 0i, false), false, Struct_1(vec2<i32>(33781i, i32(-2147483648)), 26572i, true)), Struct_2(Struct_1(vec2<i32>(-1i, 33194i), 0i, true), true, Struct_1(vec2<i32>(2147483647i, -1i), 8270i, false)), Struct_2(Struct_1(vec2<i32>(17629i, -1i), -1i, true), true, Struct_1(vec2<i32>(-1i, -4675i), -1i, true)), Struct_2(Struct_1(vec2<i32>(-3755i, -26346i), -18781i, true), false, Struct_1(vec2<i32>(-1i, -27181i), -1i, true)), Struct_2(Struct_1(vec2<i32>(-31113i, -605i), 3950i, true), true, Struct_1(vec2<i32>(-50152i, 2147483647i), 4465i, false)), Struct_2(Struct_1(vec2<i32>(0i, 0i), 2630i, true), false, Struct_1(vec2<i32>(i32(-2147483648), -7488i), -1i, true)), Struct_2(Struct_1(vec2<i32>(-17597i, 1i), 2147483647i, true), true, Struct_1(vec2<i32>(-1i, 1i), 0i, true)), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), -1i), -40169i, true), true, Struct_1(vec2<i32>(-11781i, 2147483647i), 19067i, true)), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 17222i), 0i, true), false, Struct_1(vec2<i32>(1i, 2147483647i), 2147483647i, true)), Struct_2(Struct_1(vec2<i32>(19008i, 1i), 0i, true), true, Struct_1(vec2<i32>(-1i, -63974i), -2954i, false)), Struct_2(Struct_1(vec2<i32>(32453i, -10991i), 2147483647i, true), true, Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), -1i, false)), Struct_2(Struct_1(vec2<i32>(-3836i, 66420i), -31751i, true), true, Struct_1(vec2<i32>(-40684i, -1i), -61624i, false)), Struct_2(Struct_1(vec2<i32>(1i, 36762i), 2147483647i, true), true, Struct_1(vec2<i32>(i32(-2147483648), 1i), -1i, false)), Struct_2(Struct_1(vec2<i32>(-1i, -1i), 0i, false), true, Struct_1(vec2<i32>(1i, -13257i), 1i, true)), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), -37623i), 41459i, true), true, Struct_1(vec2<i32>(-3195i, 1i), 76512i, false)), Struct_2(Struct_1(vec2<i32>(-12484i, 2516i), -12331i, true), true, Struct_1(vec2<i32>(0i, i32(-2147483648)), 1i, true)), Struct_2(Struct_1(vec2<i32>(35473i, -1265i), i32(-2147483648), false), true, Struct_1(vec2<i32>(i32(-2147483648), 19313i), -1i, true)), Struct_2(Struct_1(vec2<i32>(11515i, 10463i), 25278i, true), false, Struct_1(vec2<i32>(-20054i, 34185i), -38185i, true)), Struct_2(Struct_1(vec2<i32>(23044i, -28153i), 7175i, false), true, Struct_1(vec2<i32>(20407i, -54090i), 0i, false)), Struct_2(Struct_1(vec2<i32>(15331i, 1i), -8539i, false), true, Struct_1(vec2<i32>(2147483647i, 1i), -41943i, false)), Struct_2(Struct_1(vec2<i32>(1i, -6498i), 0i, true), false, Struct_1(vec2<i32>(-7925i, 30943i), -1i, false)), Struct_2(Struct_1(vec2<i32>(0i, 15324i), 17535i, true), true, Struct_1(vec2<i32>(i32(-2147483648), -2243i), -32063i, true)), Struct_2(Struct_1(vec2<i32>(1i, -56620i), 1i, true), false, Struct_1(vec2<i32>(12766i, -1i), i32(-2147483648), true)), Struct_2(Struct_1(vec2<i32>(-1i, -38613i), 1i, true), false, Struct_1(vec2<i32>(6177i, 59499i), 33387i, true)), Struct_2(Struct_1(vec2<i32>(104944i, 0i), -1i, false), true, Struct_1(vec2<i32>(i32(-2147483648), 37532i), 25677i, false)), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), -1i), 12582i, false), true, Struct_1(vec2<i32>(32203i, 0i), 42601i, true)), Struct_2(Struct_1(vec2<i32>(-7339i, 72914i), -9321i, false), true, Struct_1(vec2<i32>(30044i, -1i), -55894i, true)), Struct_2(Struct_1(vec2<i32>(0i, i32(-2147483648)), -20688i, true), false, Struct_1(vec2<i32>(0i, -41178i), 14123i, true)), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), 1i, true), false, Struct_1(vec2<i32>(16083i, -22992i), 24631i, false)), Struct_2(Struct_1(vec2<i32>(1i, 10015i), 6951i, false), false, Struct_1(vec2<i32>(-41828i, 0i), 0i, false)));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~((vec4<i32>(1i, _wgslsmith_sub_i32(u_input.d, u_input.d), u_input.d, u_input.d) ^ (-vec4<i32>(u_input.d, 30249i, -3129i, u_input.d) >> (reverseBits(vec4<u32>(0u, 1310u, u_input.a.x, u_input.c.x)) % vec4<u32>(32u)))) ^ vec4<i32>(u_input.d, _wgslsmith_div_i32(u_input.d, u_input.d), reverseBits(4645i), select(_wgslsmith_mod_i32(u_input.d, u_input.d), u_input.d, true)));
    var var_1 = vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(firstTrailingBit(reverseBits(1i)), -10112i, var_0.x), var_0.x), ~(-7591i));
    let var_2 = abs(_wgslsmith_mod_u32(54238u, u_input.c.x));
    var_1 = -(~(var_0.yz << ((u_input.b.yx >> (vec2<u32>(var_2, 19124u) % vec2<u32>(32u))) % vec2<u32>(32u))));
    var var_3 = Struct_3(global1[_wgslsmith_index_u32(~85659u, 3u)]);
    global2 = array<Struct_2, 32>();
    global1 = array<Struct_1, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(1i >> (u_input.a.x % 32u), vec2<u32>(0u, ~24808u), countOneBits(countOneBits(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(var_3.a.b, 2147483647i)), min(var_0.x, -2147483647i)))));
}

