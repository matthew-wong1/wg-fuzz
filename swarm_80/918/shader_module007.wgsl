struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28>;

var<private> global1: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(Struct_1(vec3<i32>(0i, -4309i, -69649i)), Struct_1(vec3<i32>(-79474i, -63551i, -1i)), Struct_1(vec3<i32>(782i, -15838i, 49389i))), Struct_2(Struct_1(vec3<i32>(2147483647i, -628i, 27216i)), Struct_1(vec3<i32>(12645i, 18512i, 27330i)), Struct_1(vec3<i32>(0i, 0i, 10901i))), Struct_2(Struct_1(vec3<i32>(-1i, 27588i, -1i)), Struct_1(vec3<i32>(22132i, 16911i, -73740i)), Struct_1(vec3<i32>(30895i, 13764i, -511i))), Struct_2(Struct_1(vec3<i32>(2147483647i, 27605i, 10025i)), Struct_1(vec3<i32>(1i, -71819i, 1012i)), Struct_1(vec3<i32>(2147483647i, -26640i, -36229i))), Struct_2(Struct_1(vec3<i32>(-43552i, -28774i, 23127i)), Struct_1(vec3<i32>(0i, 2147483647i, -1114i)), Struct_1(vec3<i32>(-1i, -41180i, 2147483647i))), Struct_2(Struct_1(vec3<i32>(2147483647i, -59679i, -13420i)), Struct_1(vec3<i32>(16895i, i32(-2147483648), i32(-2147483648))), Struct_1(vec3<i32>(-38974i, -17105i, 2147483647i))), Struct_2(Struct_1(vec3<i32>(1i, -1i, i32(-2147483648))), Struct_1(vec3<i32>(25726i, -1i, 1i)), Struct_1(vec3<i32>(-1i, -18326i, 1i))), Struct_2(Struct_1(vec3<i32>(81874i, 35921i, 2147483647i)), Struct_1(vec3<i32>(-40220i, 0i, -1i)), Struct_1(vec3<i32>(-43739i, -37080i, -1i))), Struct_2(Struct_1(vec3<i32>(2147483647i, 51014i, i32(-2147483648))), Struct_1(vec3<i32>(11303i, 0i, 18727i)), Struct_1(vec3<i32>(-20131i, -33181i, 0i))), Struct_2(Struct_1(vec3<i32>(19329i, 0i, 0i)), Struct_1(vec3<i32>(-26079i, -1i, -11780i)), Struct_1(vec3<i32>(2147483647i, i32(-2147483648), 25275i))), Struct_2(Struct_1(vec3<i32>(-1i, 6845i, 0i)), Struct_1(vec3<i32>(0i, 0i, 1i)), Struct_1(vec3<i32>(30124i, -29848i, 50527i))), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), -20520i, 1i)), Struct_1(vec3<i32>(-45186i, i32(-2147483648), -17238i)), Struct_1(vec3<i32>(2147483647i, -29270i, i32(-2147483648)))));

var<private> global2: array<vec2<u32>, 9>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> i32 {
    global2 = array<vec2<u32>, 9>();
    var var_0 = global1[_wgslsmith_index_u32(1u, 12u)];
    let var_1 = var_0.c.a.x;
    var var_2 = u_input.b.x;
    var var_3 = 103f;
    return firstLeadingBit(u_input.a);
}

fn func_2(arg_0: u32, arg_1: vec3<u32>, arg_2: i32) -> Struct_1 {
    global0 = array<Struct_1, 28>();
    global1 = array<Struct_2, 12>();
    global1 = array<Struct_2, 12>();
    global0 = array<Struct_1, 28>();
    let var_0 = Struct_1(vec3<i32>(select(func_3(), ~_wgslsmith_mult_i32(arg_2, 40543i), (-1i <= u_input.a) || false), _wgslsmith_dot_vec4_i32(~min(vec4<i32>(u_input.a, arg_2, arg_2, arg_2), vec4<i32>(-11746i, 0i, 16886i, u_input.a)), abs(vec4<i32>(1i, u_input.a, 19143i, -37414i))), ~_wgslsmith_mod_i32(21340i, -arg_2)));
    return Struct_1(firstTrailingBit(~var_0.a));
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: vec2<u32>, arg_3: i32) -> vec4<bool> {
    global2 = array<vec2<u32>, 9>();
    var var_0 = func_2(~(_wgslsmith_sub_u32(arg_1, arg_2.x & u_input.b.x) & arg_2.x), ~((~vec3<u32>(62361u, 32650u, 4294967295u) >> (firstTrailingBit(vec3<u32>(arg_2.x, arg_2.x, u_input.b.x)) % vec3<u32>(32u))) ^ (countOneBits(vec3<u32>(0u, u_input.b.x, 4294967295u)) & max(vec3<u32>(37980u, 14743u, arg_1), vec3<u32>(0u, u_input.b.x, u_input.b.x)))), _wgslsmith_dot_vec2_i32(~arg_0.b.a.yx << (_wgslsmith_mod_vec2_u32(vec2<u32>(27901u, u_input.b.x), vec2<u32>(74322u, arg_2.x)) % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(-arg_0.b.a.zz, vec2<i32>(arg_0.b.a.x, 3410i))) ^ _wgslsmith_mult_i32(7756i, _wgslsmith_mult_i32(arg_3, 1i)));
    var_0 = func_2(u_input.b.x, ~max(_wgslsmith_clamp_vec3_u32(vec3<u32>(58345u, 10737u, 1u), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_1, 4294967295u, 55418u), vec3<u32>(17524u, 4817u, u_input.b.x)), vec3<u32>(arg_1, arg_1, 1u)), abs(vec3<u32>(4294967295u, arg_2.x, arg_1))), arg_0.c.a.x);
    let var_1 = Struct_1(func_2(1u, _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(59519u, 30488u), abs(4294967295u), arg_2.x), vec3<u32>(_wgslsmith_mod_u32(arg_2.x, arg_1), ~arg_2.x, _wgslsmith_add_u32(16901u, 25563u))), 31577i).a);
    var var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(1844f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-653f + 2171f)))), _wgslsmith_f_op_f32(sign(1364f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-591f, -611f, -733f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-292f, 283f, 1000f))), vec3<f32>(-504f, _wgslsmith_div_f32(192f, -507f), _wgslsmith_f_op_f32(trunc(1233f))), !select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false)))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(892f, -2453f, 235f))), _wgslsmith_div_vec3_f32(vec3<f32>(560f, -137f, 278f), vec3<f32>(-142f, -180f, 1371f)), true)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -299f, -1685f)))), vec3<bool>(true, true, true)))));
    return vec4<bool>(!(arg_1 != _wgslsmith_dot_vec2_u32(arg_2, vec2<u32>(arg_2.x, 4294967295u))) && (~arg_2.x < ~_wgslsmith_sub_u32(u_input.b.x, u_input.b.x)), true, _wgslsmith_f_op_f32(-var_2.x) == 2240f, false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(0u, 28u)];
    global1 = array<Struct_2, 12>();
    global1 = array<Struct_2, 12>();
    var var_1 = true;
    let var_2 = vec4<bool>(any(func_1(global1[_wgslsmith_index_u32(~64u, 12u)], ~countOneBits(21258u), u_input.b, u_input.a)), false, true, false);
    global1 = array<Struct_2, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(-280f);
}

