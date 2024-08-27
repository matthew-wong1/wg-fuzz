struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: u32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: i32,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 17>;

var<private> global1: array<u32, 28>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec4<u32>) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(854f - _wgslsmith_f_op_f32(min(169f, 248f)))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-236f))))));
    var var_1 = global0[_wgslsmith_index_u32(~(~_wgslsmith_clamp_u32(0u, arg_0.x & max(u_input.a, 4536u), ~20127u | select(global1[_wgslsmith_index_u32(arg_0.x, 28u)], 0u, false))), 17u)];
    let var_2 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(793f, var_1.a.b)) - _wgslsmith_f_op_f32(min(-172f, var_0))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(758f, 156f)))), _wgslsmith_f_op_f32(-138f + _wgslsmith_f_op_f32(f32(-1f) * -538f)), false)));
    global0 = array<Struct_3, 17>();
    var_1 = Struct_3(var_1.c, vec2<u32>(34952u, ~1u), var_1.a, _wgslsmith_div_i32(_wgslsmith_sub_i32(~firstTrailingBit(40383i), _wgslsmith_div_i32(_wgslsmith_clamp_i32(-23636i, -9753i, u_input.b.x), var_1.d)), var_1.d & _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(1i, 2147483647i, u_input.b.x)), vec3<i32>(-38437i, u_input.b.x, u_input.c) >> (vec3<u32>(u_input.a, global1[_wgslsmith_index_u32(4294967295u, 28u)], 0u) % vec3<u32>(32u)))));
    return min(_wgslsmith_mod_vec4_i32(-max(vec4<i32>(var_1.d, u_input.c, 0i, u_input.b.x), vec4<i32>(-1i, 1i, -48502i, u_input.b.x) << (arg_0 % vec4<u32>(32u))), _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(-47699i, -41962i, u_input.c, u_input.b.x), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, u_input.b.x, 2143i, u_input.c), vec4<i32>(u_input.b.x, 1i, 2147483647i, var_1.d))), vec4<i32>(-1i) * -vec4<i32>(var_1.d, -80341i, var_1.d, 37484i))), max(vec4<i32>(-8612i, -25714i | var_1.d, _wgslsmith_mult_i32(u_input.c, var_1.d), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.d, u_input.c, var_1.d, 1i), vec4<i32>(41319i, -2147483647i, 34053i, 1i))), _wgslsmith_add_vec4_i32(vec4<i32>(var_1.d, u_input.c, -1i, var_1.d) & vec4<i32>(-1i, -2147483647i, u_input.c, u_input.b.x), vec4<i32>(var_1.d, var_1.d, -1i, -54151i))) << (_wgslsmith_div_vec4_u32(arg_0, ~firstTrailingBit(var_1.a.c)) % vec4<u32>(32u)));
}

fn func_2() -> Struct_1 {
    global1 = array<u32, 28>();
    global1 = array<u32, 28>();
    var var_0 = Struct_3(Struct_1(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 28u)], 28u)], _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(952f, 416f)) * _wgslsmith_div_f32(103f, 1000f)))), ~countOneBits(~vec4<u32>(global1[_wgslsmith_index_u32(48701u, 28u)], 19221u, 0u, u_input.a)), ~u_input.a), ~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 1u, 1434u) | vec4<u32>(151455u, 39519u, 1003u, global1[_wgslsmith_index_u32(0u, 28u)]), ~vec4<u32>(u_input.a, u_input.a, 25188u, 4294967295u)), u_input.a), Struct_1(~u_input.a, 974f, _wgslsmith_add_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(4492u, 28u)], global1[_wgslsmith_index_u32(u_input.a, 28u)], 29530u, u_input.a), vec4<u32>(0u, 21891u, 0u, 46391u)), _wgslsmith_mult_vec4_u32(~vec4<u32>(global1[_wgslsmith_index_u32(u_input.a, 28u)], u_input.a, 0u, 0u), vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a))), _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(global1[_wgslsmith_index_u32(11724u, 28u)], global1[_wgslsmith_index_u32(u_input.a, 28u)])), vec2<u32>(1u, u_input.a)) | 4294967295u), _wgslsmith_clamp_i32(-_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, -31871i, -49254i, -1i), vec4<i32>(u_input.b.x, u_input.c, u_input.c, -19357i)), func_3(vec4<u32>(42992u, 1u, global1[_wgslsmith_index_u32(0u, 28u)], 9035u))), u_input.c, ~_wgslsmith_mod_i32(firstTrailingBit(2147483647i), _wgslsmith_clamp_i32(-1i, 2147483647i, u_input.b.x))));
    global0 = array<Struct_3, 17>();
    let var_1 = vec2<bool>(all(vec2<bool>(true, true)), any(!select(vec2<bool>(true, true), vec2<bool>(true, false), true)));
    return Struct_1(~(~(~18787u)), _wgslsmith_f_op_f32(abs(var_0.a.b)), ~vec4<u32>(var_0.b.x, ~1u, global1[_wgslsmith_index_u32(min(~var_0.a.c.x, ~0u), 28u)], ~var_0.c.a), ~1u << (_wgslsmith_dot_vec2_u32(var_0.c.c.yz, ~var_0.c.c.xz) % 32u));
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = func_2();
    var var_1 = vec3<u32>(var_0.a, 4294967295u, 33605u ^ (_wgslsmith_dot_vec4_u32(var_0.c, vec4<u32>(u_input.a, u_input.a, 39187u, 4294967295u)) ^ ~u_input.a)) >> (var_0.c.yyz % vec3<u32>(32u));
    let var_2 = 1i >> ((var_0.c.x >> (~1u % 32u)) % 32u);
    let var_3 = vec3<i32>(~_wgslsmith_sub_i32(u_input.c, -2147483647i << (var_0.c.x % 32u)), -35631i, u_input.c);
    let var_4 = 236f;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 17>();
    var var_0 = Struct_3(func_1(false & any(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), true))), vec2<u32>(abs(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 28u)] ^ global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(20582u, 28u)], 28u)], 28u)]), 11478u) & select(~vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(56113u, 28u)]), select(vec2<u32>(43119u, global1[_wgslsmith_index_u32(u_input.a, 28u)]), vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 28u)], global1[_wgslsmith_index_u32(u_input.a, 28u)]), false) | ~vec2<u32>(u_input.a, u_input.a), vec2<bool>(true, select(false, true, true))), func_2(), -14662i);
    let var_1 = Struct_4(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(~_wgslsmith_div_vec2_u32(var_0.a.c.zy, vec2<u32>(46975u, global1[_wgslsmith_index_u32(u_input.a, 28u)])), ~var_0.c.c.yw, _wgslsmith_sub_vec2_u32(~vec2<u32>(113149u, 4294967295u), vec2<u32>(4294967295u, var_0.a.a) & vec2<u32>(30532u, var_0.b.x))), vec2<u32>(var_0.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(15474u, 9583u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.a.a, 28u)], 28u)]), vec3<u32>(global1[_wgslsmith_index_u32(var_0.a.c.x, 28u)], 18497u, 4294967295u)) | countOneBits(4294967295u))), global0[_wgslsmith_index_u32(12746u, 17u)], ~(~(~(~54829u))));
    let var_2 = -(vec3<i32>(-1i) * -(~(-vec3<i32>(0i, u_input.b.x, -15843i))));
    var_0 = Struct_3(var_1.b.c, reverseBits(var_0.b), var_1.b.c, var_1.b.d);
    var var_3 = true;
    let var_4 = ~select(var_1.b.b, var_1.b.c.c.xz, !(abs(var_1.a) <= _wgslsmith_dot_vec2_u32(vec2<u32>(53784u, 1u), var_0.a.c.xw)));
    global1 = array<u32, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(func_1(any(vec2<bool>(true, true))).c.xxz, var_2.yz << (select(func_1(select(false, false, true)).c.xx, _wgslsmith_mod_vec2_u32(~var_0.a.c.zx, vec2<u32>(0u, u_input.a)), true) % vec2<u32>(32u)));
}

