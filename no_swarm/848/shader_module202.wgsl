struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_3 {
    a: bool,
    b: vec2<u32>,
    c: Struct_2,
    d: bool,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec3<i32>;

var<private> global2: array<i32, 20> = array<i32, 20>(2147483647i, 2147483647i, 2147483647i, 2147483647i, 1i, -22374i, 40522i, 55498i, -24749i, i32(-2147483648), -31874i, 629i, 2147483647i, -1i, 0i, -29177i, 1969i, 2147483647i, -15938i, -9161i);

var<private> global3: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(45588u, 1i, -399f, true), Struct_1(67308u, -1i, -862f, false), Struct_1(89308u, -10431i, -1000f, true), Struct_1(3512u, -4482i, -1000f, true), Struct_1(1u, -16210i, 939f, false), Struct_1(19579u, 19774i, 627f, false), Struct_1(11479u, 1i, -362f, false), Struct_1(31402u, 0i, -1000f, true), Struct_1(115923u, 0i, 180f, true), Struct_1(4294967295u, i32(-2147483648), -1000f, true), Struct_1(40328u, -1i, -208f, false), Struct_1(5903u, -510i, 120f, false), Struct_1(0u, 2147483647i, -1030f, true), Struct_1(4294967295u, 100867i, -1616f, false), Struct_1(47327u, i32(-2147483648), 761f, false), Struct_1(8224u, -20732i, 1851f, false), Struct_1(68754u, i32(-2147483648), -835f, true), Struct_1(4294967295u, -4228i, -193f, true), Struct_1(39102u, -24598i, -797f, false), Struct_1(2680u, 1i, -305f, true), Struct_1(2369u, 0i, 315f, false), Struct_1(74410u, -3578i, -953f, true), Struct_1(5606u, 14581i, -712f, false), Struct_1(4294967295u, -1i, -286f, true), Struct_1(23925u, 239i, -432f, false), Struct_1(4294967295u, 66894i, 947f, false), Struct_1(63688u, -20483i, 1065f, true));

var<private> global4: array<bool, 11> = array<bool, 11>(true, true, false, true, true, true, false, false, true, false, true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(max(49802i, select(1249i, _wgslsmith_div_i32(_wgslsmith_clamp_i32(4313i, 17696i, 1i), ~global1.x), global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(24434u, 18183u, 4294967295u, u_input.b.x), vec4<u32>(96454u, 4294967295u, 58219u, 19422u)), _wgslsmith_sub_u32(u_input.b.x, 83142u)), 11u)])), _wgslsmith_div_i32(2147483647i, u_input.c.x & -2676i), _wgslsmith_sub_i32(global1.x, -(select(4321i, u_input.c.x, global4[_wgslsmith_index_u32(u_input.a.x, 11u)]) & -11603i)));
    var var_1 = Struct_1(7691u, abs(-_wgslsmith_mod_i32(u_input.c.x, global2[_wgslsmith_index_u32(0u, 20u)])) >> (countOneBits(~_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(u_input.b.x, 64304u))) % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-601f + 129f) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1734f)))), global4[_wgslsmith_index_u32(~1u, 11u)]);
    global2 = array<i32, 20>();
    let var_2 = true;
    var var_3 = -(-8586i & _wgslsmith_sub_i32(-u_input.c.x, select(global1.x, ~13028i, true)));
    var_3 = ~var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(abs(countOneBits(u_input.c.zyw))), vec2<u32>(u_input.b.x, 4294967295u), _wgslsmith_mod_u32(var_1.a, ~4294967295u));
}

