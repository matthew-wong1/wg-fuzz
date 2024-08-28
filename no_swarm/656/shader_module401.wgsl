struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
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

var<private> global0: vec4<u32>;

var<private> global1: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(vec4<u32>(46054u, 4294967295u, 174004u, 104762u), vec3<u32>(1u, 19994u, 4294967295u), Struct_1(true, vec4<i32>(-9965i, i32(-2147483648), 60439i, 29288i), 0u)), Struct_2(vec4<u32>(1u, 12643u, 81448u, 4294967295u), vec3<u32>(75651u, 77807u, 0u), Struct_1(false, vec4<i32>(34796i, 1i, 2147483647i, 0i), 62088u)), Struct_2(vec4<u32>(0u, 4294967295u, 20651u, 1u), vec3<u32>(4294967295u, 15796u, 40090u), Struct_1(false, vec4<i32>(-21342i, 57273i, i32(-2147483648), 42569i), 6210u)), Struct_2(vec4<u32>(4294967295u, 0u, 4294967295u, 1u), vec3<u32>(46965u, 75956u, 40812u), Struct_1(true, vec4<i32>(i32(-2147483648), -3184i, 1i, 2147483647i), 31242u)), Struct_2(vec4<u32>(92106u, 4218u, 22197u, 42963u), vec3<u32>(1u, 1391u, 12055u), Struct_1(true, vec4<i32>(-1i, -1i, 1i, -35165i), 6995u)), Struct_2(vec4<u32>(1u, 4294967295u, 0u, 15831u), vec3<u32>(53269u, 4294967295u, 0u), Struct_1(true, vec4<i32>(-1i, 39663i, -4997i, -28190i), 1u)), Struct_2(vec4<u32>(98016u, 4294967295u, 32197u, 6395u), vec3<u32>(62168u, 74723u, 21684u), Struct_1(false, vec4<i32>(-55341i, i32(-2147483648), 1i, 5353i), 907u)), Struct_2(vec4<u32>(4294967295u, 87254u, 54034u, 100985u), vec3<u32>(45465u, 4294967295u, 0u), Struct_1(false, vec4<i32>(-12707i, 2147483647i, 1i, -19113i), 0u)), Struct_2(vec4<u32>(3545u, 321u, 64037u, 1u), vec3<u32>(42073u, 9383u, 0u), Struct_1(false, vec4<i32>(-1i, 0i, -10060i, -8428i), 4294967295u)), Struct_2(vec4<u32>(14780u, 0u, 66336u, 4294967295u), vec3<u32>(30117u, 0u, 4294967295u), Struct_1(false, vec4<i32>(i32(-2147483648), i32(-2147483648), -20830i, -8500i), 4294967295u)), Struct_2(vec4<u32>(37812u, 0u, 4294967295u, 6213u), vec3<u32>(1u, 80480u, 0u), Struct_1(false, vec4<i32>(1i, 2147483647i, -27112i, 39885i), 79835u)), Struct_2(vec4<u32>(4294967295u, 1u, 4294967295u, 30101u), vec3<u32>(1u, 49025u, 7271u), Struct_1(false, vec4<i32>(-54253i, 2708i, 0i, -6027i), 0u)), Struct_2(vec4<u32>(179u, 4294967295u, 0u, 44640u), vec3<u32>(45864u, 0u, 50097u), Struct_1(false, vec4<i32>(24331i, i32(-2147483648), 19469i, -23611i), 50705u)), Struct_2(vec4<u32>(18241u, 1u, 65557u, 0u), vec3<u32>(0u, 19901u, 26736u), Struct_1(false, vec4<i32>(-13637i, -1i, -30302i, -1i), 0u)), Struct_2(vec4<u32>(9751u, 77754u, 4294967295u, 12479u), vec3<u32>(79939u, 17292u, 52412u), Struct_1(true, vec4<i32>(i32(-2147483648), 2147483647i, 0i, -44456i), 4294967295u)));

var<private> global2: i32;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec4<u32>(global0.x, _wgslsmith_dot_vec3_u32(u_input.b.zzw, vec3<u32>(global0.x, global0.x, _wgslsmith_add_u32(1u, global0.x))), countOneBits(u_input.a.x), 1u), _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(abs(global0.wyw), reverseBits(max(vec3<u32>(u_input.a.x, 5924u, 15902u), u_input.b.yxw))), ~u_input.b.wwy), Struct_1(true, -(~(vec4<i32>(3226i, -2147483647i, 0i, 10491i) << (vec4<u32>(40259u, 1u, 93062u, global0.x) % vec4<u32>(32u)))), firstTrailingBit(1u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(reverseBits(max(-1i, var_0.c.b.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(firstTrailingBit(-2147483647i), -var_0.c.b.x, var_0.c.b.x, firstTrailingBit(var_0.c.b.x)), var_0.c.b)));
}

