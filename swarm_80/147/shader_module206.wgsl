struct Struct_1 {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: Struct_2,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 24> = array<f32, 24>(1942f, 600f, -728f, 702f, 120f, -2050f, 196f, -1681f, -659f, -226f, -1302f, -918f, 1339f, -199f, -1674f, -155f, -475f, -609f, -659f, 1000f, 685f, 1112f, 681f, 1180f);

var<private> global1: array<vec4<f32>, 22>;

var<private> global2: vec3<u32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> bool {
    global1 = array<vec4<f32>, 22>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(781f)) + -177f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(24133u, 24u)]))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u & global2.x, 24u)] * global0[_wgslsmith_index_u32(global2.x, 24u)])));
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~global2.x, 24u)] + _wgslsmith_div_f32(global0[_wgslsmith_index_u32(4294967295u, 24u)], var_0)), var_0, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0 * var_0), _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(global2.x, 24u)])), u_input.a.x == -22596i))) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(249f, _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(global2.x, 24u)], var_0)), _wgslsmith_div_f32(var_0, -275f))))), Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(1i, u_input.a.x, u_input.a.x, 1i), -vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 1i)), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x << (global2.x % 32u))), min(1u, 55526u), firstLeadingBit(u_input.a.x), (global2.xz ^ _wgslsmith_sub_vec2_u32(global2.xx, global2.zx)) ^ vec2<u32>(global2.x, 12416u), _wgslsmith_mult_vec2_u32(min(global2.xz, global2.yz), firstTrailingBit(global2.xx)) << ((_wgslsmith_div_vec2_u32(vec2<u32>(global2.x, 1u), vec2<u32>(4294967295u, 1u)) << (global2.yy % vec2<u32>(32u))) % vec2<u32>(32u))));
    var var_2 = !(!vec4<bool>(select(any(vec4<bool>(false, true, true, true)), true, true), (-2147483647i >> (var_1.b.b % 32u)) <= _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, var_1.b.a), u_input.a.yy), true, select(true, true, false)));
    var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -200f))), global0[_wgslsmith_index_u32(min(0u, global2.x) << (~global2.x % 32u), 24u)], var_1.a.x))), var_1.b);
    return !var_2.x;
}

fn func_2() -> vec3<u32> {
    var var_0 = !vec3<bool>(func_3(), global0[_wgslsmith_index_u32(global2.x, 24u)] >= _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global2.x, 1u), vec2<u32>(0u, 15926u)), 24u)]), true);
    var var_1 = _wgslsmith_sub_i32(~countOneBits(firstLeadingBit(-39747i) << (global2.x % 32u)), u_input.a.x);
    return ~_wgslsmith_mod_vec3_u32(abs(max(min(vec3<u32>(global2.x, global2.x, global2.x), vec3<u32>(4294967295u, 1u, 6155u)), ~vec3<u32>(3450u, global2.x, global2.x))), _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 20926u, 4294967295u), vec3<u32>(global2.x, 20121u, 4880u)), max(vec3<u32>(global2.x, 72572u, 0u), vec3<u32>(global2.x, global2.x, global2.x)), select(vec3<u32>(4294967295u, 47758u, global2.x), vec3<u32>(13816u, global2.x, 4661u), true)), vec3<u32>(66365u, 96503u, _wgslsmith_mod_u32(30932u, 1u))));
}

fn func_1() -> Struct_4 {
    global2 = ~min(countOneBits(abs(vec3<u32>(global2.x, 27515u, 56530u)) << (~vec3<u32>(global2.x, global2.x, 4294967295u) % vec3<u32>(32u))), vec3<u32>(_wgslsmith_mult_u32(global2.x, global2.x) >> (94225u % 32u), _wgslsmith_mult_u32(~4532u, global2.x), _wgslsmith_clamp_u32(~39566u, global2.x, _wgslsmith_dot_vec2_u32(vec2<u32>(global2.x, 67199u), global2.xy))));
    global0 = array<f32, 24>();
    global0 = array<f32, 24>();
    let var_0 = func_2();
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1187f, global0[_wgslsmith_index_u32(16657u, 24u)], global0[_wgslsmith_index_u32(global2.x, 24u)]), vec3<f32>(global0[_wgslsmith_index_u32(var_0.x, 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)], -2189f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(var_0.x, 24u)], 1141f, global0[_wgslsmith_index_u32(global2.x, 24u)])))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(71424u, 24u)], 689f, 811f) + vec3<f32>(561f, 233f, global0[_wgslsmith_index_u32(global2.x, 24u)]))))), Struct_1(countOneBits(~select(23120i, 2147483647i, false)), ~(~select(30384u, 34298u, false)), _wgslsmith_div_i32(_wgslsmith_mult_i32(_wgslsmith_mod_i32(-22953i, -69464i), -15981i), u_input.a.x), abs(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(36978u, 4833u, 1u), vec3<u32>(var_0.x, var_0.x, var_0.x)), select(11861u, 4294967295u, false))), _wgslsmith_add_vec2_u32(vec2<u32>(0u, min(44197u, 9779u)), func_2().zx)));
    return Struct_4(~firstLeadingBit(reverseBits(vec4<u32>(var_1.b.e.x, var_1.b.d.x, 9733u, var_0.x))), vec4<i32>(-1i, ~abs(_wgslsmith_mult_i32(2147483647i, 1i)), u_input.a.x, -17467i), Struct_2(_wgslsmith_div_vec4_u32(select(countOneBits(vec4<u32>(var_0.x, global2.x, 10263u, global2.x)), vec4<u32>(93992u, 1u, 2989u, var_1.b.b), true), ~(~vec4<u32>(1u, global2.x, var_0.x, global2.x)))), var_1.a.x, _wgslsmith_f_op_f32(step(var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(~0u, 24u)]))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: f32, arg_3: Struct_4) -> f32 {
    let var_0 = min(~func_1().c.a.x, ~221u);
    var var_1 = vec4<f32>(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2477f)), 379f, -1560f);
    var var_2 = arg_3.c;
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<f32>, 22>();
    global0 = array<f32, 24>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(func_4(global1[_wgslsmith_index_u32(firstTrailingBit(reverseBits(global2.x)), 22u)], Struct_2(vec4<u32>(countOneBits(900u), global2.x ^ global2.x, 23234u, select(global2.x, global2.x, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2129f - -314f) - global0[_wgslsmith_index_u32(global2.x, 24u)])), func_1())), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~countOneBits(vec3<u32>(global2.x, 0u, global2.x))), ~(~vec3<u32>(4294967295u, global2.x, 0u))), 24u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(519f)) - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global2.x, 24u)] - -482f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1090f), global0[_wgslsmith_index_u32(global2.x, 24u)])))) + global0[_wgslsmith_index_u32(global2.x, 24u)]));
    let var_1 = Struct_2(vec4<u32>(global2.x, max(global2.x | global2.x, _wgslsmith_sub_u32(22133u, 1u)) >> (_wgslsmith_div_u32(firstLeadingBit(global2.x), 117065u) % 32u), global2.x | global2.x, select(4294967295u, ~global2.x, true) << (_wgslsmith_div_u32(global2.x, 38271u) % 32u)));
    global0 = array<f32, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(~(-(-vec4<i32>(u_input.a.x, -31313i, -22780i, u_input.a.x) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 4294967295u, 4115u, 127295u), var_1.a, var_1.a) % vec4<u32>(32u)))), var_1.a, -func_1().b | -(~_wgslsmith_mod_vec4_i32(vec4<i32>(12076i, u_input.a.x, u_input.a.x, -24417i), vec4<i32>(-1i, u_input.a.x, 0i, 0i))));
}

