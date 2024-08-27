struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: bool,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<bool>(false, true, false, true), vec2<bool>(false, false), false, 0u, 538f);

var<private> global1: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec4<bool>(false, false, true, true), vec2<bool>(false, false), true, 90960u, 522f), Struct_1(vec4<bool>(true, true, false, false), vec2<bool>(false, false), true, 9998u, 319f), Struct_1(vec4<bool>(false, false, false, true), vec2<bool>(false, false), false, 27288u, -421f), Struct_1(vec4<bool>(false, true, false, false), vec2<bool>(false, true), true, 1u, 1236f), Struct_1(vec4<bool>(false, true, false, false), vec2<bool>(true, false), false, 34920u, -682f), Struct_1(vec4<bool>(false, false, true, false), vec2<bool>(false, false), false, 0u, 394f));

var<private> global2: array<Struct_1, 6>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec4<u32>, arg_1: u32) -> vec4<bool> {
    global0 = Struct_1(vec4<bool>(((global0.e <= -290f) || (global0.c || true)) && !any(global0.b), u_input.c.x <= u_input.b, all(global0.a) && global0.a.x, global0.c), !vec2<bool>(all(select(global0.a.wwy, vec3<bool>(false, false, global0.b.x), global0.a.xwy)), any(!global0.a.wy)), -1i <= _wgslsmith_mod_i32(-2869i, _wgslsmith_dot_vec4_i32(-u_input.c, vec4<i32>(u_input.b, u_input.c.x, -2147483647i, u_input.c.x))), 54787u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-102f))));
    let var_0 = -616f;
    global1 = array<Struct_1, 6>();
    global1 = array<Struct_1, 6>();
    return global0.a;
}

fn func_2() -> i32 {
    let var_0 = u_input.a;
    let var_1 = Struct_1(vec4<bool>(true || global0.b.x, (_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, u_input.b), u_input.c.wxz) <= reverseBits(u_input.b)) & any(func_3(u_input.a, global0.d)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.e))) <= -421f, global0.c), global0.a.zy, any(global0.a.yy), _wgslsmith_sub_u32(u_input.a.x, u_input.a.x), global0.e);
    var var_2 = _wgslsmith_dot_vec3_i32(-(vec3<i32>(u_input.c.x, u_input.c.x >> (37817u % 32u), -22022i & u_input.b) & vec3<i32>(u_input.b, u_input.b, u_input.b)), vec3<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(u_input.c >> (u_input.a % vec4<u32>(32u)), ~vec4<i32>(u_input.c.x, 2147483647i, 2147483647i, -35559i)), u_input.c.x), abs(u_input.c.x), 43904i));
    var var_3 = vec4<i32>(_wgslsmith_mod_i32(abs(-18765i), -firstTrailingBit(u_input.c.x)), abs(u_input.b) | -u_input.c.x, i32(-1i) * -abs(0i), ~(-1i));
    let var_4 = global2[_wgslsmith_index_u32(~firstTrailingBit(_wgslsmith_dot_vec3_u32(select(vec3<u32>(var_0.x, var_0.x, u_input.a.x), vec3<u32>(var_0.x, 46429u, global0.d), select(global0.a.yyx, global0.a.wyw, vec3<bool>(var_1.b.x, true, true))), vec3<u32>(_wgslsmith_dot_vec2_u32(var_0.zw, vec2<u32>(39594u, 4294967295u)), 45753u, abs(10556u)))), 6u)];
    return -55037i;
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: i32) -> vec2<u32> {
    var var_0 = vec2<bool>(arg_1.c, !arg_1.c);
    let var_1 = ~_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~u_input.a.xxz, u_input.a.wxz), ~1u);
    global1 = array<Struct_1, 6>();
    global1 = array<Struct_1, 6>();
    let var_2 = _wgslsmith_dot_vec3_i32(-vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(u_input.c.zyw, u_input.c.wyz), ~41978i), 1874i, -9711i), ~vec3<i32>(2147483647i, func_2(), countOneBits(arg_3) & 54997i));
    return u_input.a.wx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(firstLeadingBit(_wgslsmith_div_i32(reverseBits(0i), u_input.b)) >> ((max(0u << (u_input.a.x % 32u), global0.d) | u_input.a.x) % 32u));
    global2 = array<Struct_1, 6>();
    global2 = array<Struct_1, 6>();
    global2 = array<Struct_1, 6>();
    var var_1 = vec2<f32>(global0.e, global0.e);
    var var_2 = select(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 7755i, var_0) | u_input.c.yyy, u_input.c.ywy ^ ~u_input.c.yxx), u_input.c.x), max(abs(countOneBits(abs(vec2<i32>(u_input.c.x, -1i)))), max(_wgslsmith_mod_vec2_i32(vec2<i32>(var_0, u_input.c.x), -u_input.c.zx), vec2<i32>(u_input.c.x, -37027i))), !(_wgslsmith_dot_vec2_u32(max(u_input.a.xz, vec2<u32>(global0.d, u_input.a.x)), func_1(global0.e, Struct_1(global0.a, global0.a.wx, global0.c, 0u, global0.e), vec2<f32>(global0.e, -888f), u_input.c.x)) < _wgslsmith_div_u32(_wgslsmith_sub_u32(global0.d, 0u), global0.d & u_input.a.x)));
    global1 = array<Struct_1, 6>();
    let var_3 = firstLeadingBit(-1i);
    let var_4 = global1[_wgslsmith_index_u32(1u, 6u)];
    let x = u_input.a;
    s_output = StorageBuffer(min(~(~(~vec2<u32>(var_4.d, u_input.a.x))), vec2<u32>(56738u, countOneBits(var_4.d)) & ~u_input.a.zx), _wgslsmith_div_vec3_u32(u_input.a.wwx << (_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(global0.d, 4294967295u, 19048u), vec3<u32>(var_4.d, 12551u, u_input.a.x)), u_input.a.wzw) % vec3<u32>(32u)), vec3<u32>(func_1(global0.e, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_4.d), u_input.a.zx), 6u)], _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_4.e, 334f))), -53500i).x, ~var_4.d, var_4.d)), 16755u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -524f), 1138f));
}

