struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_3 {
    a: f32,
    b: vec4<i32>,
    c: Struct_2,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 26> = array<bool, 26>(true, false, true, false, false, true, true, true, false, true, false, false, true, true, false, true, true, false, false, false, true, true, true, true, true, true);

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2(arg_0: Struct_3) -> vec2<bool> {
    let var_0 = Struct_3(arg_0.e.a, vec4<i32>(~(-2147483647i), abs(-u_input.d), -2476i, abs(_wgslsmith_div_i32(~1i, 61111i))), Struct_2(arg_0.a, arg_0.c.b), arg_0.d, Struct_2(253f, arg_0.e.b));
    return vec2<bool>(true, true);
}

fn func_3(arg_0: vec2<bool>, arg_1: i32) -> u32 {
    global0 = array<bool, 26>();
    let var_0 = Struct_1(u_input.a.x, min(arg_1, _wgslsmith_mult_i32(-1i, u_input.d | firstTrailingBit(u_input.d))), _wgslsmith_clamp_vec4_i32(vec4<i32>(select(arg_1, arg_1, false) | ~16495i, arg_1, 1i, 22615i), ~min(vec4<i32>(arg_1, u_input.c, -1i, -7030i), ~vec4<i32>(u_input.d, u_input.c, u_input.c, -1i)), vec4<i32>(~arg_1, ~firstLeadingBit(-17848i), ~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, u_input.c, -43215i), vec3<i32>(14576i, 15703i, -1i)), ~u_input.d << (min(0u, 25357u) % 32u))), abs(u_input.d ^ arg_1));
    let var_1 = Struct_2(-998f, select(select(select(select(vec4<bool>(false, global0[_wgslsmith_index_u32(5541u, 26u)], false, global0[_wgslsmith_index_u32(var_0.a, 26u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], arg_0.x, arg_0.x, global0[_wgslsmith_index_u32(var_0.a, 26u)]), vec4<bool>(true, arg_0.x, true, global0[_wgslsmith_index_u32(1u, 26u)])), select(vec4<bool>(arg_0.x, false, true, global0[_wgslsmith_index_u32(131217u, 26u)]), vec4<bool>(arg_0.x, false, true, global0[_wgslsmith_index_u32(0u, 26u)]), vec4<bool>(true, false, arg_0.x, true)), vec4<bool>(global0[_wgslsmith_index_u32(67901u, 26u)], global0[_wgslsmith_index_u32(var_0.a, 26u)], global0[_wgslsmith_index_u32(0u, 26u)], global0[_wgslsmith_index_u32(u_input.a.x, 26u)])), vec4<bool>(false, any(vec2<bool>(true, true)), any(arg_0), true), vec4<bool>(u_input.a.x <= 11321u, any(arg_0), true, all(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], false)))), select(vec4<bool>(true, true, true, true), vec4<bool>(!arg_0.x, false || global0[_wgslsmith_index_u32(var_0.a, 26u)], global0[_wgslsmith_index_u32(var_0.a, 26u)], any(vec4<bool>(true, true, arg_0.x, global0[_wgslsmith_index_u32(44350u, 26u)]))), vec4<bool>(true, any(vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x)), !arg_0.x, !global0[_wgslsmith_index_u32(58474u, 26u)])), select(!(!vec4<bool>(arg_0.x, global0[_wgslsmith_index_u32(u_input.a.x, 26u)], global0[_wgslsmith_index_u32(25630u, 26u)], false)), select(vec4<bool>(true, true, global0[_wgslsmith_index_u32(65858u, 26u)], false), vec4<bool>(true, true, true, true), !vec4<bool>(false, false, global0[_wgslsmith_index_u32(var_0.a, 26u)], global0[_wgslsmith_index_u32(42232u, 26u)])), select(!vec4<bool>(global0[_wgslsmith_index_u32(106561u, 26u)], global0[_wgslsmith_index_u32(9178u, 26u)], false, true), !vec4<bool>(arg_0.x, global0[_wgslsmith_index_u32(63916u, 26u)], true, arg_0.x), -29953i < var_0.b))));
    global0 = array<bool, 26>();
    let var_2 = Struct_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-243f - var_1.a))))), max(countOneBits(vec4<i32>(-u_input.c, _wgslsmith_mod_i32(0i, u_input.b.x), max(arg_1, u_input.d), -1i)), vec4<i32>(select(_wgslsmith_div_i32(25494i, var_0.b), 0i, false), 2147483647i, -2147483647i, arg_1)), var_1, var_0, var_1);
    return _wgslsmith_clamp_u32(31543u, abs(u_input.a.x), min(_wgslsmith_div_u32(~(33551u << (var_0.a % 32u)), _wgslsmith_mult_u32(u_input.a.x, 7675u)), ~var_2.d.a));
}

fn func_1(arg_0: vec3<i32>) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1411f, 1000f, -536f) + vec3<f32>(-322f, 219f, -1321f)) + vec3<f32>(975f, -1000f, 563f)))))));
    var var_1 = u_input.a;
    var var_2 = min(func_3(!select(select(vec2<bool>(global0[_wgslsmith_index_u32(var_1.x, 26u)], false), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], global0[_wgslsmith_index_u32(var_1.x, 26u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 26u)])), func_2(Struct_3(633f, vec4<i32>(arg_0.x, arg_0.x, 0i, u_input.c), Struct_2(var_0.x, vec4<bool>(true, false, false, true)), Struct_1(35116u, 1i, vec4<i32>(-56594i, -2147483647i, u_input.b.x, u_input.d), u_input.b.x), Struct_2(1325f, vec4<bool>(true, global0[_wgslsmith_index_u32(19026u, 26u)], true, false)))), vec2<bool>(false, false)), u_input.b.x), 23756u);
    let var_3 = var_0.xz;
    var var_4 = -vec2<i32>(u_input.b.x, 2147483647i);
    return !vec2<bool>(func_2(Struct_3(570f, vec4<i32>(u_input.c, -34074i, 2147483647i, -54859i), Struct_2(-1000f, vec4<bool>(false, false, false, true)), Struct_1(15730u, var_4.x, vec4<i32>(2147483647i, var_4.x, 1i, arg_0.x), arg_0.x), Struct_2(var_3.x, vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], true, true, true)))).x & (global0[_wgslsmith_index_u32(u_input.a.x, 26u)] || true), all(!vec2<bool>(global0[_wgslsmith_index_u32(5522u, 26u)], true)));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>) -> Struct_2 {
    var var_0 = Struct_3(973f, -_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, arg_0.b, u_input.d, arg_0.c.x), ~vec4<i32>(arg_0.c.x, -7817i, u_input.d, arg_0.b), arg_0.c) ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(i32(-1i) * -1i, -u_input.c, -24700i, reverseBits(1i)), -select(arg_0.c, arg_0.c, false), _wgslsmith_mult_vec4_i32(arg_0.c, arg_0.c)), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-881f, _wgslsmith_f_op_f32(abs(-689f))))), vec4<bool>(false, true, false, true)), arg_0, Struct_2(_wgslsmith_f_op_f32(floor(1f)), vec4<bool>(any(vec3<bool>(arg_1.x, global0[_wgslsmith_index_u32(29269u, 26u)], false)), true, arg_1.x, arg_1.x)));
    var var_1 = !func_1(firstLeadingBit(vec3<i32>(_wgslsmith_dot_vec3_i32(arg_0.c.zzx, vec3<i32>(39045i, 47735i, 0i)), abs(44563i), -19942i)));
    return Struct_2(var_0.a, vec4<bool>(var_0.c.b.x, func_2(Struct_3(_wgslsmith_f_op_f32(1961f - var_0.c.a), -var_0.d.c, var_0.e, Struct_1(0u, 30793i, arg_0.c, -1i), Struct_2(-1588f, vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 26u)], var_1.x, true)))).x, true, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    let var_1 = func_4(Struct_1(0u, abs(select(_wgslsmith_div_i32(u_input.d, -2147483647i), i32(-1i) * -25047i, select(global0[_wgslsmith_index_u32(4294967295u, 26u)], true, global0[_wgslsmith_index_u32(var_0, 26u)]))), vec4<i32>(u_input.b.x, 0i, reverseBits(u_input.b.x), -_wgslsmith_add_i32(u_input.d, u_input.d)), -1i), select(!func_1(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, u_input.b.x, 27004i), vec3<i32>(1i, u_input.b.x, u_input.b.x))), vec2<bool>(!(!global0[_wgslsmith_index_u32(113300u, 26u)]), false), func_1(select(~vec3<i32>(u_input.b.x, 0i, u_input.d), vec3<i32>(u_input.d, 2147483647i, u_input.b.x), global0[_wgslsmith_index_u32(20502u, 26u)] != true))));
    let var_2 = -47537i;
    let var_3 = true;
    global0 = array<bool, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(abs(vec4<u32>(var_0, u_input.a.x, 27382u, var_0) | vec4<u32>(0u, u_input.a.x, 1u, var_0)), abs(vec4<u32>(4294967295u, 16279u, u_input.a.x, var_0))), ~(~vec4<u32>(var_0, u_input.a.x, 37739u, 69732u) & abs(vec4<u32>(var_0, var_0, u_input.a.x, 43540u)))), -1183f);
}

