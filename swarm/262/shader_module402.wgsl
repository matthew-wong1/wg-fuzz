struct Struct_1 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: i32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_1,
    c: f32,
    d: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(Struct_1(vec3<u32>(1u, 4294967295u, 4294967295u), vec2<i32>(118581i, -1i), -1i)), Struct_2(Struct_1(vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec2<i32>(i32(-2147483648), -1i), 58966i)), Struct_2(Struct_1(vec3<u32>(4294967295u, 48504u, 0u), vec2<i32>(-24853i, 0i), -16434i)), Struct_2(Struct_1(vec3<u32>(0u, 4294967295u, 1u), vec2<i32>(0i, -1i), -37644i)), Struct_2(Struct_1(vec3<u32>(0u, 0u, 1u), vec2<i32>(i32(-2147483648), -1i), -37223i)), Struct_2(Struct_1(vec3<u32>(1u, 0u, 7743u), vec2<i32>(i32(-2147483648), -19659i), i32(-2147483648))), Struct_2(Struct_1(vec3<u32>(79757u, 1u, 1u), vec2<i32>(i32(-2147483648), 1i), -31623i)), Struct_2(Struct_1(vec3<u32>(4294967295u, 4294967295u, 59965u), vec2<i32>(-1i, 0i), 1i)), Struct_2(Struct_1(vec3<u32>(0u, 0u, 4294967295u), vec2<i32>(0i, -11663i), 57285i)), Struct_2(Struct_1(vec3<u32>(0u, 6556u, 9414u), vec2<i32>(i32(-2147483648), -1i), 1i)), Struct_2(Struct_1(vec3<u32>(54128u, 1u, 1u), vec2<i32>(-1i, 22734i), -1i)), Struct_2(Struct_1(vec3<u32>(4294967295u, 1u, 1u), vec2<i32>(1i, -69453i), -5726i)), Struct_2(Struct_1(vec3<u32>(4294967295u, 1u, 20549u), vec2<i32>(-4034i, 1i), 1i)), Struct_2(Struct_1(vec3<u32>(36032u, 4294967295u, 33132u), vec2<i32>(1i, 19073i), 2147483647i)), Struct_2(Struct_1(vec3<u32>(10793u, 1u, 15878u), vec2<i32>(-69917i, -70515i), i32(-2147483648))), Struct_2(Struct_1(vec3<u32>(0u, 18327u, 56101u), vec2<i32>(2147483647i, 11533i), 62963i)), Struct_2(Struct_1(vec3<u32>(1u, 1u, 10970u), vec2<i32>(1i, 1i), 1i)), Struct_2(Struct_1(vec3<u32>(0u, 1u, 0u), vec2<i32>(0i, i32(-2147483648)), 17306i)), Struct_2(Struct_1(vec3<u32>(1u, 4294967295u, 1u), vec2<i32>(1i, -30106i), -50733i)), Struct_2(Struct_1(vec3<u32>(0u, 24856u, 1u), vec2<i32>(2147483647i, 1i), i32(-2147483648))), Struct_2(Struct_1(vec3<u32>(4294967295u, 4294967295u, 65394u), vec2<i32>(-1i, -46756i), 69557i)), Struct_2(Struct_1(vec3<u32>(57383u, 0u, 2949u), vec2<i32>(2147483647i, -3391i), -21897i)), Struct_2(Struct_1(vec3<u32>(38596u, 1u, 4294967295u), vec2<i32>(-1i, 0i), 33923i)), Struct_2(Struct_1(vec3<u32>(4294967295u, 44143u, 0u), vec2<i32>(i32(-2147483648), -21746i), 1i)), Struct_2(Struct_1(vec3<u32>(40910u, 15026u, 1u), vec2<i32>(0i, 39401i), 25217i)), Struct_2(Struct_1(vec3<u32>(1882u, 0u, 0u), vec2<i32>(1i, -2083i), 51456i)));

var<private> global1: Struct_4 = Struct_4(vec3<u32>(4294967295u, 115978u, 35622u), Struct_1(vec3<u32>(54214u, 1u, 4294967295u), vec2<i32>(28170i, 15717i), 1i), -751f, true);

var<private> global2: array<bool, 31>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~countOneBits(~u_input.c), min(_wgslsmith_div_u32(u_input.c, reverseBits(4294967295u)), ~_wgslsmith_mult_u32(global1.a.x, 0u)), 0u, abs(_wgslsmith_clamp_u32(u_input.c, u_input.b, ~0u))), ~_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_div_u32(0u, u_input.b), _wgslsmith_dot_vec4_u32(vec4<u32>(global1.a.x, u_input.c, global1.b.a.x, global1.b.a.x), vec4<u32>(61177u, global1.b.a.x, global1.b.a.x, 0u)), ~1u), global1.b.a), ~1i);
}

