struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true));

var<private> global1: array<i32, 25> = array<i32, 25>(0i, 0i, -27661i, i32(-2147483648), -1i, 33367i, 7701i, 2147483647i, 10760i, 0i, 0i, 8151i, 23101i, 21729i, 0i, -1i, 22912i, 4201i, -18021i, 2147483647i, -1i, 13004i, 32937i, 25280i, i32(-2147483648));

var<private> global2: array<Struct_2, 20>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_div_vec2_i32(vec2<i32>(countOneBits(global1[_wgslsmith_index_u32(44453u, 25u)]), -u_input.b | -global1[_wgslsmith_index_u32(u_input.d, 25u)]), select(u_input.c.xz, firstLeadingBit(vec2<i32>(1i, u_input.c.x)), !select(vec2<bool>(true, true), vec2<bool>(true, true), false))) & _wgslsmith_clamp_vec2_i32(reverseBits(~u_input.c.xw), u_input.c.xw, _wgslsmith_mod_vec2_i32(~(u_input.c.zw >> (vec2<u32>(95325u, u_input.a) % vec2<u32>(32u))), vec2<i32>(countOneBits(-1091i), global1[_wgslsmith_index_u32(u_input.d, 25u)])));
    global2 = array<Struct_2, 20>();
    global0 = array<Struct_1, 19>();
    global0 = array<Struct_1, 19>();
    var var_1 = u_input.d;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1223f, 1f))), 2516f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -585f))), 819f));
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(round(1107f)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())) - _wgslsmith_f_op_f32(ceil(1f))));
    var var_1 = vec3<i32>(52777i ^ select(u_input.c.x & ~5280i, -_wgslsmith_mod_i32(-10009i, u_input.c.x), true), -firstLeadingBit(u_input.c.x), u_input.c.x & _wgslsmith_mult_i32(-5212i, _wgslsmith_sub_i32(0i, -18858i)));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1f)) * _wgslsmith_f_op_f32(f32(-1f) * -902f)) != -2081f;
    var_1 = -firstLeadingBit(vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(u_input.c.zwy, u_input.c.www), 0i), global1[_wgslsmith_index_u32(u_input.a, 25u)], _wgslsmith_add_i32(global1[_wgslsmith_index_u32(u_input.a ^ 0u, 25u)], ~0i)));
    var var_2 = _wgslsmith_div_f32(383f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1540f)) - 1161f), 196f)));
    return Struct_2(Struct_1(!all(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), false))));
}

fn func_1(arg_0: Struct_1) -> vec2<u32> {
    var var_0 = func_2();
    var var_1 = ~(~countOneBits(countOneBits(u_input.d)) & _wgslsmith_mod_u32(u_input.a, max(110130u & u_input.d, ~4294967295u)));
    return max(~vec2<u32>(firstTrailingBit(~u_input.d), ~countOneBits(4294967295u)), vec2<u32>(~reverseBits(98278u ^ u_input.d), ~(u_input.d << (u_input.d % 32u)) & firstLeadingBit(max(u_input.d, 95969u))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 20>();
    let var_0 = vec2<bool>(true, true);
    var var_1 = _wgslsmith_mod_vec2_u32(reverseBits(func_1(global0[_wgslsmith_index_u32(abs(~u_input.d), 19u)])), countOneBits(func_1(func_2().a)));
    var var_2 = Struct_2(Struct_1(true));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x >> (_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(9901u, 17259u, 1u)) | _wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.x, 6721u, u_input.a), vec3<u32>(1u, 18343u, 4294967295u), vec3<u32>(u_input.d, 0u, var_1.x)), ~vec3<u32>(u_input.d, var_1.x, var_1.x)) % 32u), 0u, ~(~(vec2<u32>(var_1.x, 77053u) | vec2<u32>(u_input.a, var_1.x))), -7104i, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(abs(vec2<u32>(var_1.x, 0u)), vec2<u32>(var_1.x, u_input.a) & vec2<u32>(5206u, 0u)), vec2<u32>(var_1.x, 1u)), ~vec2<u32>(u_input.d, select(var_1.x, var_1.x, var_2.a.a))));
}

