struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 25> = array<vec3<i32>, 25>(vec3<i32>(2147483647i, i32(-2147483648), i32(-2147483648)), vec3<i32>(i32(-2147483648), -1i, 28882i), vec3<i32>(33588i, 57012i, 2147483647i), vec3<i32>(-1i, -1i, -1i), vec3<i32>(15942i, -42655i, -13350i), vec3<i32>(-1i, 1i, 0i), vec3<i32>(-1i, i32(-2147483648), i32(-2147483648)), vec3<i32>(-6900i, 2147483647i, 1i), vec3<i32>(0i, 20701i, 2074i), vec3<i32>(43128i, 2147483647i, -11765i), vec3<i32>(-7449i, -51987i, 35301i), vec3<i32>(22765i, 0i, 11329i), vec3<i32>(1i, i32(-2147483648), -60830i), vec3<i32>(i32(-2147483648), 27684i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 2147483647i, 8559i), vec3<i32>(14910i, 26520i, 28382i), vec3<i32>(-1i, 24307i, 2147483647i), vec3<i32>(-28468i, i32(-2147483648), i32(-2147483648)), vec3<i32>(44263i, 36380i, 0i), vec3<i32>(i32(-2147483648), -28030i, -1i), vec3<i32>(-52515i, i32(-2147483648), -1799i), vec3<i32>(-1i, 2147483647i, -49329i), vec3<i32>(2147483647i, -1i, 0i), vec3<i32>(i32(-2147483648), -51164i, -5285i), vec3<i32>(-27377i, 1i, i32(-2147483648)));

var<private> global1: array<Struct_3, 19>;

var<private> global2: array<Struct_3, 1> = array<Struct_3, 1>(Struct_3(vec4<i32>(-25973i, 2147483647i, 15703i, 2147483647i), i32(-2147483648)));

var<private> global3: array<Struct_4, 8> = array<Struct_4, 8>(Struct_4(18007u, Struct_3(vec4<i32>(-11747i, 2147483647i, -19235i, -8422i), 0i)), Struct_4(0u, Struct_3(vec4<i32>(i32(-2147483648), 1i, -34423i, 1i), -1i)), Struct_4(11132u, Struct_3(vec4<i32>(2147483647i, -17694i, 1i, 52904i), -14885i)), Struct_4(13729u, Struct_3(vec4<i32>(i32(-2147483648), -19016i, 69314i, -1i), 0i)), Struct_4(0u, Struct_3(vec4<i32>(i32(-2147483648), 1i, -423i, 1i), 9430i)), Struct_4(0u, Struct_3(vec4<i32>(-42857i, -1i, 2147483647i, 1i), 15690i)), Struct_4(15885u, Struct_3(vec4<i32>(-1i, -12818i, -24532i, -10248i), 2147483647i)), Struct_4(71737u, Struct_3(vec4<i32>(-56518i, 0i, 65693i, -1i), i32(-2147483648))));

var<private> global4: vec3<u32>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: Struct_2) -> u32 {
    global1 = array<Struct_3, 19>();
    let var_0 = arg_0;
    return global4.x;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(~max(49078u, ~(~1u)), 25u)], ~_wgslsmith_mod_vec4_u32(vec4<u32>(global4.x, global4.x, global4.x, 4294967295u), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, global4.x, 0u, global4.x), vec4<u32>(12555u, 4294967295u, 0u, 14885u))) | ~(~(vec4<u32>(global4.x, global4.x, global4.x, global4.x) | vec4<u32>(global4.x, global4.x, global4.x, global4.x))), max(vec3<u32>(~global4.x, func_1(Struct_2(Struct_1(4294967295u, 4294967295u, vec3<bool>(true, false, true)), -1147f, Struct_1(0u, 0u, vec3<bool>(true, false, false)), Struct_1(43325u, 24624u, vec3<bool>(false, true, false)))), firstLeadingBit(global4.x)), vec3<u32>(~global4.x, global4.x, global4.x)));
}

