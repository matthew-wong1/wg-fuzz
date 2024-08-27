struct Struct_1 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
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

var<private> global0: array<vec3<bool>, 13> = array<vec3<bool>, 13>(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true));

var<private> global1: array<vec4<i32>, 12>;

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(-21156i, -1522f), Struct_1(2147483647i, -1484f), Struct_1(i32(-2147483648), -457f), Struct_1(2147483647i, 491f), Struct_1(i32(-2147483648), -386f), Struct_1(1i, -1128f), Struct_1(-1i, -1876f), Struct_1(i32(-2147483648), 182f), Struct_1(0i, -681f), Struct_1(7958i, 973f), Struct_1(51279i, 343f), Struct_1(1i, -242f), Struct_1(-34050i, 920f), Struct_1(-18673i, 1532f), Struct_1(22165i, 313f), Struct_1(11012i, 780f), Struct_1(i32(-2147483648), 156f), Struct_1(i32(-2147483648), -855f), Struct_1(0i, -167f), Struct_1(1i, 1833f), Struct_1(61679i, 682f), Struct_1(-1i, -2157f), Struct_1(-44630i, -1000f), Struct_1(-39962i, 1000f), Struct_1(19473i, 1000f), Struct_1(-1816i, 1878f), Struct_1(2147483647i, 219f), Struct_1(1i, 731f), Struct_1(-10252i, -340f), Struct_1(i32(-2147483648), 241f), Struct_1(-13152i, 952f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<i32>, 12>();
    let var_0 = 602f;
    global2 = Struct_1(-select(28982i, 2147483647i, select(true, true, true)), -756f);
    let var_1 = -vec2<i32>(global2.a, _wgslsmith_mult_i32(firstLeadingBit(global2.a), -1i)) & u_input.a.yz;
    global1 = array<vec4<i32>, 12>();
    global2 = global3[_wgslsmith_index_u32(70642u, 31u)];
    global3 = array<Struct_1, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x);
}

