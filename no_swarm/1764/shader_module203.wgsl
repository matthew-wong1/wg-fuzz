struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
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

var<private> global0: array<vec3<i32>, 12>;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec4<u32>(9594u, 80166u, 0u, 4923u), vec4<u32>(9406u, 1u, 26797u, 4294967295u), -326f));

var<private> global2: vec2<bool>;

var<private> global3: array<Struct_1, 21>;

var<private> global4: array<Struct_4, 20> = array<Struct_4, 20>(Struct_4(vec3<i32>(-1i, 1i, 1i), i32(-2147483648), vec4<u32>(0u, 0u, 16367u, 12538u), 86952u), Struct_4(vec3<i32>(-11304i, -47714i, 505i), -28079i, vec4<u32>(1u, 1u, 2896u, 42998u), 31370u), Struct_4(vec3<i32>(-13476i, 747i, 0i), i32(-2147483648), vec4<u32>(45917u, 50882u, 10785u, 8147u), 1u), Struct_4(vec3<i32>(2147483647i, 41852i, 0i), -61815i, vec4<u32>(4294967295u, 63400u, 1u, 4294967295u), 1u), Struct_4(vec3<i32>(20053i, i32(-2147483648), 28383i), -6290i, vec4<u32>(0u, 0u, 4294967295u, 1u), 4294967295u), Struct_4(vec3<i32>(-1i, -28836i, 0i), -39810i, vec4<u32>(4294967295u, 15853u, 4294967295u, 4294967295u), 15764u), Struct_4(vec3<i32>(-14691i, 27340i, 2147483647i), 1i, vec4<u32>(22159u, 4294967295u, 4294967295u, 4294967295u), 4294967295u), Struct_4(vec3<i32>(1i, 2147483647i, 0i), -1i, vec4<u32>(4294967295u, 1u, 1u, 1u), 0u), Struct_4(vec3<i32>(i32(-2147483648), i32(-2147483648), 0i), 0i, vec4<u32>(105169u, 14753u, 4294967295u, 81235u), 42208u), Struct_4(vec3<i32>(1i, i32(-2147483648), 1i), i32(-2147483648), vec4<u32>(9922u, 67059u, 4294967295u, 4294967295u), 4294967295u), Struct_4(vec3<i32>(1i, i32(-2147483648), 1i), 68874i, vec4<u32>(90575u, 1u, 1509u, 0u), 36768u), Struct_4(vec3<i32>(60432i, 2245i, 0i), -4985i, vec4<u32>(0u, 1u, 4294967295u, 26138u), 0u), Struct_4(vec3<i32>(1i, 2147483647i, 1i), -1i, vec4<u32>(16382u, 56421u, 47661u, 23130u), 0u), Struct_4(vec3<i32>(0i, -1i, 53603i), -16246i, vec4<u32>(34716u, 0u, 1u, 4294967295u), 4294967295u), Struct_4(vec3<i32>(15043i, 0i, -24928i), 0i, vec4<u32>(1u, 1u, 37958u, 0u), 34593u), Struct_4(vec3<i32>(6398i, -1i, 1i), i32(-2147483648), vec4<u32>(29813u, 4294967295u, 25953u, 51137u), 1u), Struct_4(vec3<i32>(8774i, -33351i, -36623i), 58078i, vec4<u32>(1u, 0u, 4294967295u, 4294967295u), 0u), Struct_4(vec3<i32>(2147483647i, i32(-2147483648), 66766i), 2262i, vec4<u32>(106810u, 16774u, 117747u, 1u), 1u), Struct_4(vec3<i32>(44353i, 1i, i32(-2147483648)), -4064i, vec4<u32>(36543u, 94797u, 1u, 30762u), 6569u), Struct_4(vec3<i32>(10091i, -22920i, 2147483647i), -12255i, vec4<u32>(24283u, 4294967295u, 10600u, 1u), 29288u));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: bool, arg_3: vec4<f32>) -> i32 {
    let var_0 = Struct_2(global1.a);
    var var_1 = Struct_3(arg_3.yx, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1516f * -643f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(arg_3.x, var_0.a.c))))), var_0, Struct_2(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_0.c.x, 45276u) << (7565u % 32u), 21u)]));
    let var_2 = arg_0;
    let var_3 = vec4<bool>(!(all(select(vec2<bool>(arg_2, false), vec2<bool>(false, global2.x), vec2<bool>(global2.x, false))) || true), u_input.a < ~u_input.a, global2.x, arg_2);
    global0 = array<vec3<i32>, 12>();
    return -75316i;
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1, arg_2: f32) -> i32 {
    var var_0 = -34411i;
    global1 = Struct_2(Struct_1(~vec4<u32>(1u, arg_0.d, ~arg_0.c.x, 0u), countOneBits(arg_0.c), arg_2));
    var var_1 = global3[_wgslsmith_index_u32(~reverseBits(arg_0.c.x), 21u)];
    let var_2 = arg_1;
    let var_3 = Struct_4(_wgslsmith_div_vec3_i32((vec3<i32>(1i, u_input.b.x, 0i) >> (vec3<u32>(29537u, 30826u, 92409u) % vec3<u32>(32u))) >> (vec3<u32>(18232u, arg_0.d, 1u) % vec3<u32>(32u)), vec3<i32>(u_input.a, 1i | arg_0.b, 3811i)) ^ ~arg_0.a, 14798i, arg_0.c, 4294967295u);
    return -8361i;
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: Struct_1) -> bool {
    let var_0 = func_3(Struct_4(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b.x, max(40307i, arg_0.x), 65185i), vec3<i32>(-u_input.a, ~(-51554i), arg_0.x), arg_0), -30233i | select(func_2(Struct_4(vec3<i32>(arg_0.x, u_input.b.x, u_input.b.x), u_input.a, vec4<u32>(0u, arg_2.b.x, 4294967295u, 4294967295u), 0u), vec2<f32>(-1146f, arg_1.c.a.c), global2.x, vec4<f32>(arg_1.b.x, global1.a.c, global1.a.c, 499f)), select(28922i, -1i, global2.x), global2.x), _wgslsmith_sub_vec4_u32(arg_1.c.a.a, arg_1.c.a.a), arg_2.a.x), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(41513u, arg_1.c.a.a.x), 21u)], 501f);
    global4 = array<Struct_4, 20>();
    global1 = arg_1.c;
    var var_1 = !(!vec2<bool>(!(!global2.x), any(!vec2<bool>(global2.x, global2.x))));
    var var_2 = Struct_3(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.c * -2480f)), -603f), _wgslsmith_f_op_f32(-global1.a.c)), vec3<f32>(310f, _wgslsmith_div_f32(arg_2.c, _wgslsmith_f_op_f32(714f * arg_1.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.a.c))), Struct_2(global1.a), Struct_2(arg_2));
    return !var_1.x || !global2.x;
}

fn func_4(arg_0: vec4<bool>, arg_1: f32) -> bool {
    global3 = array<Struct_1, 21>();
    let var_0 = reverseBits(vec2<i32>(max(max(~(-18539i), -46059i), u_input.a), 1i | u_input.a));
    global0 = array<vec3<i32>, 12>();
    var var_1 = _wgslsmith_sub_vec3_u32(vec3<u32>(~(~4294967295u), global1.a.b.x | 42658u, global1.a.b.x) | vec3<u32>(global1.a.a.x, 35451u, global1.a.a.x), global1.a.a.wzy);
    var var_2 = _wgslsmith_mod_vec4_i32(vec4<i32>(func_2(Struct_4(vec3<i32>(u_input.b.x, -37737i, -2147483647i), var_0.x, vec4<u32>(var_1.x, var_1.x, global1.a.b.x, global1.a.a.x), ~10204u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, -215f)) + vec2<f32>(-219f, -920f)), true, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.c, global1.a.c, global1.a.c, arg_1) - vec4<f32>(-188f, arg_1, -1903f, arg_1)), vec4<f32>(arg_1, arg_1, arg_1, 1054f))), u_input.a, -9683i, -2147483647i), -firstLeadingBit(_wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.b.x, 43536i, var_0.x, -2147483647i), countOneBits(vec4<i32>(u_input.a, u_input.b.x, -35824i, var_0.x)))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(global2.x, func_4(!select(select(vec4<bool>(false, true, true, global2.x), vec4<bool>(global2.x, global2.x, global2.x, true), global2.x), vec4<bool>(true, true, false, global2.x), func_1(global0[_wgslsmith_index_u32(global1.a.a.x, 12u)], Struct_3(vec2<f32>(117f, global1.a.c), vec3<f32>(global1.a.c, global1.a.c, global1.a.c), Struct_2(global1.a), Struct_2(Struct_1(vec4<u32>(global1.a.b.x, global1.a.a.x, 8471u, 41545u), vec4<u32>(4294967295u, global1.a.a.x, 0u, 1u), global1.a.c))), Struct_1(vec4<u32>(global1.a.b.x, global1.a.a.x, 4294967295u, 92412u), vec4<u32>(global1.a.b.x, 25037u, global1.a.b.x, global1.a.b.x), 1000f))), -524f));
    var var_1 = global1.a.b.yw >> (vec2<u32>(firstLeadingBit(21769u) >> (~global1.a.a.x % 32u), global1.a.b.x) % vec2<u32>(32u));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-701f, global1.a.c))) * -981f)), -903f);
    global2 = vec2<bool>(true, false | (!global2.x | global2.x));
    global4 = array<Struct_4, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(~0u, 0i);
}

