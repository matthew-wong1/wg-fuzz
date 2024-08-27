struct Struct_1 {
    a: i32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 29> = array<vec3<i32>, 29>(vec3<i32>(1i, i32(-2147483648), i32(-2147483648)), vec3<i32>(18663i, 55107i, 2147483647i), vec3<i32>(14963i, 0i, 0i), vec3<i32>(2147483647i, 15800i, -1i), vec3<i32>(74843i, 49154i, -24505i), vec3<i32>(-30260i, 1795i, i32(-2147483648)), vec3<i32>(-61960i, 53553i, 78571i), vec3<i32>(2147483647i, 2147483647i, 4416i), vec3<i32>(-1i, -20011i, -1i), vec3<i32>(1i, 2996i, 0i), vec3<i32>(i32(-2147483648), -57543i, -16150i), vec3<i32>(0i, 32516i, 2147483647i), vec3<i32>(1i, 0i, 1i), vec3<i32>(39067i, -1i, -1i), vec3<i32>(-72595i, 38938i, i32(-2147483648)), vec3<i32>(0i, -46371i, 7052i), vec3<i32>(-2058i, 1i, -6321i), vec3<i32>(-42571i, 14612i, 17824i), vec3<i32>(0i, 32249i, i32(-2147483648)), vec3<i32>(-29191i, i32(-2147483648), 27128i), vec3<i32>(-12293i, -23544i, -47328i), vec3<i32>(16610i, 0i, 54489i), vec3<i32>(0i, -1i, 2147483647i), vec3<i32>(1i, 2147483647i, 0i), vec3<i32>(-1i, 61733i, i32(-2147483648)), vec3<i32>(i32(-2147483648), -12308i, -55393i), vec3<i32>(-35494i, 1i, 10394i), vec3<i32>(-50266i, 2147483647i, -6022i), vec3<i32>(i32(-2147483648), -30240i, -12212i));

var<private> global1: array<f32, 19>;

var<private> global2: vec4<bool>;

var<private> global3: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(25463i, vec2<u32>(48757u, 25331u)), Struct_1(1i, vec2<u32>(0u, 0u)), Struct_1(1i, vec2<u32>(78400u, 4294967295u)), Struct_1(1i, vec2<u32>(1u, 60430u)), Struct_1(2147483647i, vec2<u32>(87457u, 58043u)), Struct_1(-1i, vec2<u32>(112101u, 102415u)), Struct_1(17068i, vec2<u32>(0u, 91148u)), Struct_1(-15672i, vec2<u32>(31972u, 19430u)), Struct_1(-1i, vec2<u32>(1u, 45703u)), Struct_1(-19410i, vec2<u32>(0u, 0u)), Struct_1(-17788i, vec2<u32>(4294967295u, 88299u)), Struct_1(6621i, vec2<u32>(45097u, 0u)), Struct_1(2147483647i, vec2<u32>(61794u, 37067u)), Struct_1(8445i, vec2<u32>(4294967295u, 35909u)), Struct_1(-1i, vec2<u32>(0u, 17653u)), Struct_1(1i, vec2<u32>(1u, 23447u)), Struct_1(1i, vec2<u32>(4294967295u, 4294967295u)), Struct_1(-23016i, vec2<u32>(16217u, 18845u)), Struct_1(-11223i, vec2<u32>(33379u, 55343u)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec2<bool> {
    global3 = array<Struct_1, 19>();
    global3 = array<Struct_1, 19>();
    var var_0 = -2147483647i;
    var_0 = min(_wgslsmith_div_i32(-2147483647i, 1i), abs(41171i));
    global1 = array<f32, 19>();
    return !(!select(select(global2.yz, vec2<bool>(true, true), global2.x | global2.x), vec2<bool>(!global2.x, select(global2.x, global2.x, global2.x)), vec2<bool>(global2.x, !global2.x)));
}

fn func_2(arg_0: i32, arg_1: f32) -> u32 {
    global2 = !select(vec4<bool>(any(func_3()), global2.x & false, all(!vec2<bool>(global2.x, false)), global2.x), !select(select(vec4<bool>(global2.x, false, global2.x, false), vec4<bool>(global2.x, global2.x, true, false), vec4<bool>(false, global2.x, global2.x, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(global2.x, global2.x, false, true), vec4<bool>(global2.x, global2.x, global2.x, false), false)), !select(vec4<bool>(global2.x, true, global2.x, global2.x), !vec4<bool>(false, true, global2.x, true), select(vec4<bool>(global2.x, global2.x, false, global2.x), vec4<bool>(global2.x, global2.x, true, false), false)));
    let var_0 = u_input.a;
    var var_1 = global3[_wgslsmith_index_u32(var_0, 19u)];
    let var_2 = Struct_1(-reverseBits(countOneBits(-33596i)), _wgslsmith_sub_vec2_u32(var_1.b, _wgslsmith_mult_vec2_u32(vec2<u32>(var_1.b.x, 4294967295u) ^ vec2<u32>(var_1.b.x, u_input.a), ~var_1.b)) >> (var_1.b % vec2<u32>(32u)));
    global3 = array<Struct_1, 19>();
    return 4294967295u;
}

fn func_1(arg_0: i32) -> Struct_1 {
    global3 = array<Struct_1, 19>();
    var var_0 = _wgslsmith_mod_vec2_u32(~(~vec2<u32>(u_input.a, u_input.a) | ~vec2<u32>(u_input.a, 1u)) | vec2<u32>(1u, _wgslsmith_add_u32(min(74691u, u_input.a), _wgslsmith_add_u32(1u, u_input.a))), vec2<u32>(max(4294967295u, _wgslsmith_clamp_u32(4294967295u, 18289u, u_input.a) >> ((4294967295u << (u_input.a % 32u)) % 32u)), ~u_input.a));
    var var_1 = false;
    global0 = array<vec3<i32>, 29>();
    let var_2 = ~vec3<u32>(9562u, ~1u, _wgslsmith_sub_u32(var_0.x, u_input.a) & ~func_2(2147483647i, 313f));
    return Struct_1(-(1i & arg_0), reverseBits(~(vec2<u32>(0u, 23630u) & vec2<u32>(34444u, u_input.a))));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    global1 = array<f32, 19>();
    var var_0 = Struct_1(arg_0.a, ~(~arg_2.b));
    global3 = array<Struct_1, 19>();
    var var_1 = ~_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(select(vec4<i32>(arg_0.a, arg_2.a, -4520i, arg_0.a), vec4<i32>(arg_2.a, 2147483647i, -2147483647i, arg_0.a), arg_3), -vec4<i32>(23663i, -6670i, -2147483647i, var_0.a)), 1i, 1i, -_wgslsmith_dot_vec2_i32(vec2<i32>(11045i, -69088i), vec2<i32>(var_0.a, 39220i))), ~((vec4<i32>(-38370i, arg_0.a, 0i, var_0.a) << (vec4<u32>(0u, 38621u, 4294967295u, 19619u) % vec4<u32>(32u))) & abs(vec4<i32>(arg_0.a, 0i, var_0.a, arg_0.a))));
    global1 = array<f32, 19>();
    return func_1(max(arg_2.a & _wgslsmith_mod_i32(_wgslsmith_sub_i32(-1i, arg_0.a), 1i), -34814i));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 19>();
    let var_0 = 1030f;
    var var_1 = ~_wgslsmith_clamp_vec2_i32(reverseBits(vec2<i32>(1i, 1i)), vec2<i32>(-1i) * -vec2<i32>(2147483647i, 2147483647i), -vec2<i32>(20320i, i32(-1i) * -2840i));
    global3 = array<Struct_1, 19>();
    var var_2 = func_4(global3[_wgslsmith_index_u32(~41272u, 19u)], -2098f, func_1(-1i), true);
    var var_3 = func_1(-reverseBits(-2147483647i ^ _wgslsmith_mult_i32(var_2.a, 2147483647i)));
    var var_4 = ~select(~reverseBits(vec3<u32>(u_input.a, u_input.a, 1u)), ~vec3<u32>(12303u, ~var_3.b.x, ~var_3.b.x), global2.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.zy);
}

