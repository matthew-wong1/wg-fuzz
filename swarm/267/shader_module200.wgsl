struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<f32>,
    d: i32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
    c: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 11>;

var<private> global1: vec3<u32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec2<bool>) -> f32 {
    global0 = array<i32, 11>();
    global1 = _wgslsmith_sub_vec3_u32(~vec3<u32>(firstTrailingBit(~global1.x), ~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(63989u, arg_0.b, global1.x), ~vec3<u32>(arg_0.b, 1u, 76961u))), ~(~(~vec3<u32>(global1.x, 1u, arg_0.b) ^ abs(vec3<u32>(8649u, global1.x, 46552u)))));
    global1 = vec3<u32>(firstLeadingBit(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(81119u, arg_0.b, 0u), vec3<u32>(48342u, 26514u, arg_0.b)), 4294967295u)) >> (((global1.x ^ max(global1.x, 1u)) & ~(arg_0.b >> (29464u % 32u))) % 32u), firstLeadingBit(global1.x), firstTrailingBit(min(arg_0.b, countOneBits(global1.x)) | abs(~32323u)));
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1676f + 429f) * -708f), i32(-1i) * -_wgslsmith_add_i32(global0[_wgslsmith_index_u32(4294967295u, 11u)], -1i), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-1380f, 1000f), -1274f), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(535f, -679f))))), _wgslsmith_dot_vec4_i32(-vec4<i32>(global0[_wgslsmith_index_u32(arg_0.b, 11u)], global0[_wgslsmith_index_u32(18488u, 11u)], u_input.a, -1i), vec4<i32>(global0[_wgslsmith_index_u32(arg_0.b, 11u)], -29920i, arg_0.c.x, 2147483647i)) & u_input.a, (_wgslsmith_sub_vec3_u32(vec3<u32>(global1.x, arg_0.b, arg_0.b), vec3<u32>(4294967295u, arg_0.b, 0u)) ^ _wgslsmith_div_vec3_u32(vec3<u32>(0u, global1.x, 1u), vec3<u32>(global1.x, 30671u, 93351u))) >> (vec3<u32>(42110u, 35092u, global1.x) % vec3<u32>(32u))), Struct_2(vec3<bool>((arg_2.x & arg_0.a.x) == (arg_0.b > 4294967295u), arg_2.x, true), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(1u, arg_0.b, global1.x, global1.x), vec4<u32>(global1.x, global1.x, 0u, 59662u) ^ vec4<u32>(global1.x, 4294967295u, 66296u, arg_0.b)), ~countOneBits(vec4<u32>(0u, 1u, 0u, 37449u))), reverseBits((vec3<i32>(arg_0.c.x, 24076i, -1i) & arg_0.c) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(23093u, 0u, 0u), vec3<u32>(4294967295u, global1.x, 60764u)) % vec3<u32>(32u)))), max(arg_0.c.x, _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(arg_0.b, 11u)], global0[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_0.b, ~arg_0.b), 11u)])));
    global1 = vec3<u32>(14097u, 19949u, arg_0.b);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-337f, _wgslsmith_f_op_f32(f32(-1f) * -1660f))));
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: bool, arg_3: vec3<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(func_3(Struct_2(vec3<bool>(!arg_0 | true, select(u_input.a > 0i, arg_2, arg_3.x), true), min(1u, global1.x), -abs(-vec3<i32>(global0[_wgslsmith_index_u32(global1.x, 11u)], arg_1, 4518i))), vec2<bool>(any(arg_3), !select(!arg_0, arg_2, arg_2)), !(!select(vec2<bool>(true, arg_0), select(vec2<bool>(false, false), arg_3.yz, true), select(vec2<bool>(arg_3.x, arg_2), vec2<bool>(false, true), arg_3.yz)))));
    let var_1 = min(_wgslsmith_add_i32(arg_1, i32(-1i) * -42323i), _wgslsmith_clamp_i32(-33929i, countOneBits(1i), 1i));
    let var_2 = ~vec2<i32>(global0[_wgslsmith_index_u32(1u, 11u)], _wgslsmith_dot_vec2_i32(select(abs(vec2<i32>(var_1, -31121i)), ~vec2<i32>(u_input.a, var_1), true), vec2<i32>(global0[_wgslsmith_index_u32(global1.x, 11u)], 1i) << (_wgslsmith_mod_vec2_u32(global1.yx, global1.zz) % vec2<u32>(32u))));
    global1 = ~(countOneBits(abs(vec3<u32>(global1.x, 26037u, global1.x) << (vec3<u32>(global1.x, global1.x, global1.x) % vec3<u32>(32u)))) >> (_wgslsmith_mult_vec3_u32(countOneBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(global1.x, 1u, global1.x), vec3<u32>(4294967295u, 0u, global1.x), vec3<u32>(0u, global1.x, global1.x))), _wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(4294967295u, 0u, 4294967295u)), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, global1.x, global1.x), vec3<u32>(6556u, 0u, global1.x)), vec3<u32>(global1.x, global1.x, 4294967295u))) % vec3<u32>(32u)));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(select(1164f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(1011f))))), false)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(910f, -235f, arg_3.x)))))), -952f);
    return _wgslsmith_f_op_f32(var_3.x - -2079f);
}

fn func_1(arg_0: i32, arg_1: vec2<f32>, arg_2: u32, arg_3: u32) -> Struct_2 {
    let var_0 = select(vec4<bool>(!any(vec2<bool>(false, false)) && true, all(vec4<bool>(u_input.a > u_input.a, any(vec2<bool>(true, false)), true, false)), _wgslsmith_f_op_f32(func_2(false, 8111i ^ global0[_wgslsmith_index_u32(4294967295u, 11u)], any(vec2<bool>(true, true)), vec3<bool>(true, true, true))) != _wgslsmith_f_op_f32(round(-1844f)), !select(true, true, true)), vec4<bool>(true, true, true, true), all(select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), all(vec2<bool>(true, false)))) && (990f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x * arg_1.x) + arg_1.x)));
    var var_1 = !(!vec3<bool>(select(all(var_0), true, arg_0 >= 6243i), !all(var_0.wxw), false));
    let var_2 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -534f), _wgslsmith_f_op_f32(-arg_1.x)))), global0[_wgslsmith_index_u32(firstTrailingBit(~0u), 11u)] | 31350i, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-411f, -556f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(263f, -1707f)) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-597f, arg_1.x), vec2<f32>(1446f, 956f)))), select(select(var_0.yx, vec2<bool>(var_0.x, false), var_1.x), vec2<bool>(var_0.x, var_1.x), vec2<bool>(var_1.x, var_0.x)))), 1i, ~(vec3<u32>(arg_2, 0u, arg_2) >> (~vec3<u32>(arg_2, 36544u, 68162u) % vec3<u32>(32u)))), Struct_2(vec3<bool>(false, any(vec3<bool>(var_1.x, var_1.x, var_0.x)), var_0.x), arg_2, vec3<i32>(_wgslsmith_mod_i32(16952i, reverseBits(u_input.a)), -27477i, 1i)), 2147483647i);
    let var_3 = any(var_0);
    let var_4 = !vec4<bool>(false, min(0u, arg_2) <= arg_2, true, !any(!var_0));
    return Struct_2(vec3<bool>(!var_3, true, (all(vec3<bool>(false, var_0.x, var_0.x)) & (arg_1.x < -1575f)) && var_1.x), 1u ^ (_wgslsmith_mult_u32(100591u, 1u) << (select(var_2.b.b, ~78961u, var_4.x) % 32u)), vec3<i32>(var_2.a.b, -arg_0, _wgslsmith_div_i32(2147483647i ^ ~u_input.a, 0i << (0u % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 11>();
    global1 = reverseBits(~(~((vec3<u32>(4294967295u, 1u, 4294967295u) << (vec3<u32>(global1.x, global1.x, global1.x) % vec3<u32>(32u))) >> (~vec3<u32>(19626u, 4294967295u, 0u) % vec3<u32>(32u)))));
    let var_0 = 138086u;
    global0 = array<i32, 11>();
    global0 = array<i32, 11>();
    global0 = array<i32, 11>();
    var var_1 = func_1(_wgslsmith_mult_i32(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(-43479i, 66904i), abs(vec2<i32>(1i, -27070i)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(529f)), -146f))), global1.x, 1u);
    var_1 = Struct_2(var_1.a, 0u, abs(vec3<i32>(select(i32(-1i) * -20257i, var_1.c.x, var_1.a.x), u_input.a, ~(~var_1.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~(var_0 >> (20977u % 32u)), (-vec4<i32>(28529i, u_input.a, -3825i, var_1.c.x) ^ ((vec4<i32>(global0[_wgslsmith_index_u32(0u, 11u)], global0[_wgslsmith_index_u32(global1.x, 11u)], -6424i, -1069i) ^ vec4<i32>(-2147483647i, -2147483647i, 1i, var_1.c.x)) << (select(vec4<u32>(global1.x, var_0, var_1.b, global1.x), vec4<u32>(global1.x, 1u, 37457u, var_1.b), true) % vec4<u32>(32u)))) & _wgslsmith_mult_vec4_i32(firstLeadingBit(~vec4<i32>(-1i, global0[_wgslsmith_index_u32(global1.x, 11u)], var_1.c.x, global0[_wgslsmith_index_u32(6003u, 11u)])), vec4<i32>(-var_1.c.x, 0i << (var_1.b % 32u), abs(u_input.a), var_1.c.x)), 38377i);
}

