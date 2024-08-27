struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
    d: i32,
    e: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: vec3<u32>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec3<bool>(true, true, true)));

var<private> global2: array<i32, 16>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: f32) -> i32 {
    var var_0 = u_input.c;
    global1 = arg_1.a;
    global0 = ~(arg_1.c.zy & ~vec2<u32>(u_input.c, global0.x >> (global0.x % 32u)));
    var var_1 = Struct_3(arg_1.a, Struct_1(!vec3<bool>(global1.a.a.x, true, arg_1.a.a.a.x)), 2158i, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_1.c.xx, vec2<u32>(arg_1.c.x, ~(arg_1.c.x ^ global0.x))), 16u)], _wgslsmith_clamp_i32(firstLeadingBit(~(-2147483647i)), -1i, i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 57268i, -1i, -21468i), vec4<i32>(1i, arg_0.x, -2147483647i, global2[_wgslsmith_index_u32(4294967295u, 16u)]))));
    global1 = var_1.a;
    return -(arg_0.x << (~1u % 32u));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_1) -> u32 {
    var var_0 = Struct_3(Struct_2(Struct_1(!select(arg_1.a.a.a, vec3<bool>(false, arg_2.a.x, global1.a.a.x), vec3<bool>(false, true, false)))), Struct_1(arg_2.a), -(abs(abs(global2[_wgslsmith_index_u32(436u, 16u)])) & -48786i), func_3(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, u_input.b.x, global2[_wgslsmith_index_u32(4294967295u, 16u)], global2[_wgslsmith_index_u32(14783u, 16u)]), vec4<i32>(0i, 1i, global2[_wgslsmith_index_u32(1u, 16u)], global2[_wgslsmith_index_u32(40367u, 16u)])), vec4<i32>(438i, -1i, u_input.a.x, 1i)), Struct_4(Struct_2(Struct_1(vec3<bool>(true, true, arg_0.a.a.x))), 1f, ~arg_1.c, any(vec3<bool>(true, arg_1.a.a.a.x, false))), -555f) & _wgslsmith_mult_i32(func_3(-vec4<i32>(u_input.b.x, 47170i, 16885i, global2[_wgslsmith_index_u32(64442u, 16u)]), arg_1, _wgslsmith_f_op_f32(f32(-1f) * -1094f)), 1i), _wgslsmith_clamp_i32(u_input.a.x >> (~(~global0.x) % 32u), ~firstLeadingBit(_wgslsmith_add_i32(2147483647i, -1i)), global2[_wgslsmith_index_u32(global0.x, 16u)]));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1f + 2458f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b))), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-308f - -672f))), -1000f)));
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-604f, var_1.x, 2772f, arg_1.b))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1155f, var_1.x, arg_1.b, 2186f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x))))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(422f + -1397f), 652f, -1002f, var_1.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-618f, -448f, var_1.x, 1000f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b, var_1.x, arg_1.b, 885f) * vec4<f32>(1000f, var_1.x, -2189f, arg_1.b)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.x, var_1.x, 963f, arg_1.b)))) + vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_div_f32(-250f, var_1.x), _wgslsmith_f_op_f32(-795f - 1000f), _wgslsmith_div_f32(-809f, arg_1.b)))), select(select(vec4<bool>(!arg_1.a.a.a.x, global1.a.a.x, arg_1.d, arg_1.d), !select(vec4<bool>(global1.a.a.x, true, false, arg_0.a.a.x), vec4<bool>(arg_0.a.a.x, true, true, true), vec4<bool>(false, true, true, false)), true), vec4<bool>(arg_0.a.a.x, arg_2.a.x, arg_1.a.a.a.x, all(arg_2.a)), true)));
    var var_3 = Struct_1(select(vec3<bool>(true, select(true, true, arg_2.a.x & global1.a.a.x), var_0.a.a.a.x), vec3<bool>(any(select(arg_2.a, arg_2.a, var_0.a.a.a)), global1.a.a.x && select(arg_1.d, false, arg_2.a.x), true), arg_0.a.a.x));
    global2 = array<i32, 16>();
    return 1u;
}

fn func_1() -> vec3<u32> {
    var var_0 = abs(~(_wgslsmith_sub_u32(func_2(Struct_2(global1.a), Struct_4(Struct_2(global1.a), -1277f, vec3<u32>(u_input.c, 39161u, 10753u), global1.a.a.x), global1.a), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 17512u, 60860u), vec3<u32>(1u, 1u, 1u))) >> (_wgslsmith_sub_u32(~global0.x, global0.x) % 32u)));
    let var_1 = ~(-vec4<i32>(2147483647i, global2[_wgslsmith_index_u32(u_input.c ^ 0u, 16u)], 56343i, 0i)) & ~(select(vec4<i32>(39349i, -2147483647i, u_input.a.x, -47119i) | vec4<i32>(global2[_wgslsmith_index_u32(u_input.c, 16u)], u_input.a.x, u_input.b.x, global2[_wgslsmith_index_u32(12084u, 16u)]), vec4<i32>(u_input.a.x, u_input.b.x, u_input.a.x, global2[_wgslsmith_index_u32(global0.x, 16u)]) << (vec4<u32>(u_input.c, global0.x, 2717u, 0u) % vec4<u32>(32u)), !vec4<bool>(global1.a.a.x, true, global1.a.a.x, global1.a.a.x)) & -vec4<i32>(-32119i, 2147483647i, -1458i, u_input.a.x));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(sign(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + -117f) - -351f)), -115f);
    var_0 = min(4294967295u, u_input.c);
    var_0 = 0u;
    return max(firstTrailingBit(~vec3<u32>(4294967295u, ~11725u, ~u_input.c)), ~vec3<u32>(37749u, countOneBits(select(4294967295u, 36320u, true)), _wgslsmith_div_u32(_wgslsmith_mod_u32(1u, u_input.c), ~4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -global2[_wgslsmith_index_u32(select(u_input.c, ~global0.x, !global1.a.a.x), 16u)];
    var var_1 = Struct_4(Struct_2(global1.a), 306f, vec3<u32>(_wgslsmith_dot_vec3_u32(func_1(), vec3<u32>(~global0.x, u_input.c, 21302u)), global0.x, 4294967295u), global1.a.a.x);
    var var_2 = Struct_3(var_1.a, var_1.a.a, _wgslsmith_sub_i32((u_input.a.x ^ -35911i) | (u_input.b.x ^ _wgslsmith_clamp_i32(-26830i, 145i, global2[_wgslsmith_index_u32(11080u, 16u)])), firstLeadingBit(abs(0i))), global2[_wgslsmith_index_u32(global0.x, 16u)], ~global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(~50631u, 4294967295u), 16u)]);
    let var_3 = vec4<i32>(_wgslsmith_mod_i32(global2[_wgslsmith_index_u32(0u, 16u)], firstTrailingBit(-24571i)), 4213i, _wgslsmith_dot_vec4_i32(select(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, u_input.b.x, var_2.c, 17345i), vec4<i32>(-1i, u_input.b.x, -20643i, global2[_wgslsmith_index_u32(11653u, 16u)])), vec4<i32>(0i, -1i, 2120i, global2[_wgslsmith_index_u32(var_1.c.x, 16u)]), !vec4<bool>(var_1.d, var_1.a.a.a.x, var_2.a.a.a.x, false)), -vec4<i32>(var_2.c, var_2.e, var_2.d, -7553i)) ^ var_2.e, 1i);
    var var_4 = var_3.x;
    global2 = array<i32, 16>();
    var_1 = Struct_4(var_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), ~_wgslsmith_clamp_vec3_u32(var_1.c, _wgslsmith_sub_vec3_u32(~var_1.c, firstTrailingBit(vec3<u32>(u_input.c, 1u, 0u))), ~vec3<u32>(0u, 4294967295u, u_input.c)), all(vec3<bool>(!all(var_2.b.a), false, true)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~(~firstLeadingBit(0u)), _wgslsmith_dot_vec3_u32(vec3<u32>(8555u, u_input.c, firstTrailingBit(0u)), select(~var_1.c, ~var_1.c, !var_2.a.a.a.x)), 4294967295u, ~_wgslsmith_mult_u32(30080u, var_1.c.x) | 40645u), global0.x, var_3.xy ^ vec2<i32>(7248i, ~1i), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b))));
}

