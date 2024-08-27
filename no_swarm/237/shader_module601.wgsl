struct Struct_1 {
    a: i32,
    b: u32,
    c: f32,
    d: vec3<i32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
}

struct Struct_5 {
    a: f32,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
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

var<private> global0: array<Struct_3, 32>;

var<private> global1: array<u32, 7>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_4, arg_1: bool, arg_2: Struct_2) -> vec3<i32> {
    var var_0 = all(select(vec2<bool>(any(select(vec3<bool>(false, arg_1, arg_1), vec3<bool>(arg_2.a.e, arg_1, true), vec3<bool>(arg_2.a.e, false, true))), select(arg_2.a.e, all(vec4<bool>(arg_1, false, arg_1, arg_2.a.e)), !arg_2.c.e)), !select(vec2<bool>(false, arg_1), vec2<bool>(true, arg_1), arg_2.c.c > 994f), !vec2<bool>(true, arg_2.a.e)));
    var_0 = !(all(vec3<bool>(arg_2.c.e && arg_2.a.e, arg_1 || true, all(vec2<bool>(arg_1, arg_1)))) && arg_2.a.e);
    let var_1 = arg_1;
    global1 = array<u32, 7>();
    global0 = array<Struct_3, 32>();
    return abs(_wgslsmith_add_vec3_i32(vec3<i32>(abs(~u_input.b.x), _wgslsmith_clamp_i32(1i, ~0i, u_input.b.x), _wgslsmith_mod_i32(_wgslsmith_div_i32(arg_2.b.x, arg_2.b.x), arg_0.a.a.x)), -vec3<i32>(arg_0.a.b, -2147483647i, abs(-24048i))));
}

fn func_2() -> vec2<bool> {
    let var_0 = Struct_2(Struct_1(66136i, 4294967295u, _wgslsmith_f_op_f32(f32(-1f) * -1031f), _wgslsmith_sub_vec3_i32(select(select(vec3<i32>(u_input.b.x, 2147483647i, u_input.b.x), u_input.b.wzy, vec3<bool>(false, false, false)), u_input.b.zwz, vec3<bool>(false, true, false)), func_3(Struct_4(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 7u)], 7u)], 32u)], 2898i), true, Struct_2(Struct_1(57949i, 80265u, -100f, vec3<i32>(7147i, u_input.b.x, 2147483647i), true), u_input.b.wxx, Struct_1(u_input.b.x, global1[_wgslsmith_index_u32(17671u, 7u)], -1000f, vec3<i32>(2147483647i, u_input.b.x, u_input.b.x), true), u_input.a))), any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true))) && (0u <= u_input.a.x)), -_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(abs(u_input.b.yzy), vec3<i32>(-23402i, u_input.b.x, -1i)), min(u_input.b.wxx, u_input.b.xww)), Struct_1(u_input.b.x, global1[_wgslsmith_index_u32(u_input.a.x, 7u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(716f, _wgslsmith_f_op_f32(1481f * 1012f)))), abs(vec3<i32>(u_input.b.x, firstTrailingBit(53535i), u_input.b.x | u_input.b.x)), true), u_input.a);
    let var_1 = select(!vec2<bool>(true && (-26044i <= u_input.b.x), var_0.a.e), select(select(select(vec2<bool>(true, false), vec2<bool>(true, false), any(vec3<bool>(var_0.c.e, var_0.c.e, false))), vec2<bool>(var_0.c.a <= 59871i, false), _wgslsmith_f_op_f32(exp2(var_0.a.c)) == _wgslsmith_f_op_f32(abs(1887f))), !(!vec2<bool>(false, var_0.c.e)), true), select(vec2<bool>(!var_0.a.e, true), vec2<bool>(false, any(vec3<bool>(true, false, false)) | any(vec2<bool>(var_0.a.e, false))), !var_0.c.e));
    let var_2 = !var_1.x;
    let var_3 = Struct_5(var_0.a.c, (!(true & var_2) == var_2) || any(vec2<bool>(true, false)), Struct_1(u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, abs(4294967295u), 0u, ~0u), ~(vec4<u32>(global1[_wgslsmith_index_u32(5436u, 7u)], global1[_wgslsmith_index_u32(u_input.a.x, 7u)], 18557u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 7u)], 7u)]) << (vec4<u32>(4294967295u, 24302u, u_input.a.x, global1[_wgslsmith_index_u32(34441u, 7u)]) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.a.c - _wgslsmith_f_op_f32(var_0.c.c + var_0.a.c)), var_0.c.c)), select(vec3<i32>(13542i << (u_input.a.x % 32u), var_0.c.d.x, reverseBits(10209i)), var_0.a.d, ~var_0.d.x >= ~u_input.a.x), var_1.x));
    var var_4 = Struct_2(var_3.c, vec3<i32>(var_3.c.a, ~_wgslsmith_dot_vec2_i32(var_0.c.d.xx, var_0.a.d.zx), abs(func_3(Struct_4(global0[_wgslsmith_index_u32(19971u, 32u)], var_3.c.d.x), false, Struct_2(var_0.c, vec3<i32>(-2147483647i, -1480i, var_0.a.d.x), Struct_1(-1i, 0u, var_0.a.c, var_0.a.d, false), var_0.d)).x)) >> (~(~vec3<u32>(u_input.a.x, var_0.d.x, u_input.a.x)) % vec3<u32>(32u)), var_3.c, _wgslsmith_mult_vec3_u32(u_input.a, u_input.a));
    return select(!(!var_1), vec2<bool>(select((global1[_wgslsmith_index_u32(u_input.a.x, 7u)] != 0u) | false, any(!vec4<bool>(true, false, false, var_0.a.e)), var_1.x), var_1.x), !(_wgslsmith_mult_i32(-var_4.a.a, ~2427i) == 1i));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1) -> Struct_2 {
    var var_0 = Struct_3(max(vec2<i32>(_wgslsmith_sub_i32(u_input.b.x, ~arg_1.d.x), _wgslsmith_mod_i32(-arg_1.d.x, arg_1.a)), (firstLeadingBit(vec2<i32>(u_input.b.x, -1i)) & ~arg_1.d.xx) ^ u_input.b.yz), _wgslsmith_dot_vec2_i32(~u_input.b.yy, ~arg_1.d.xy));
    global1 = array<u32, 7>();
    var var_1 = arg_1;
    return Struct_2(arg_1, vec3<i32>(-(0i & -var_0.a.x), _wgslsmith_div_i32(-17763i, -u_input.b.x | ~1i), reverseBits(6902i)), Struct_1(~(-10923i), var_1.b, _wgslsmith_f_op_f32(-arg_1.c), vec3<i32>(-firstTrailingBit(arg_1.d.x), u_input.b.x, arg_1.d.x), !arg_1.e), vec3<u32>(~u_input.a.x, arg_1.b, ~47754u));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<u32>) -> i32 {
    global1 = array<u32, 7>();
    global0 = array<Struct_3, 32>();
    var var_0 = func_4(vec4<bool>(any(func_2()), any(vec4<bool>(true, true, true, all(vec4<bool>(true, true, true, true)))), false, true), Struct_1(_wgslsmith_sub_i32(-72730i, _wgslsmith_mod_i32(~0i, u_input.b.x)), u_input.a.x, -1218f, -(~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, 39040i, 1222i), vec3<i32>(u_input.b.x, -2147483647i, u_input.b.x))), 1023f < _wgslsmith_f_op_f32(-946f - _wgslsmith_f_op_f32(step(922f, arg_0.x)))));
    let var_1 = min(firstLeadingBit(u_input.b.x), 0i ^ firstTrailingBit(0i));
    var var_2 = global0[_wgslsmith_index_u32(arg_1.x, 32u)];
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(func_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(648f, -1562f, -570f, -235f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-213f, -424f, 452f, 1177f))), vec4<f32>(1f, 1f, 1f, 1f), vec4<bool>(-45825i >= u_input.b.x, u_input.b.x >= u_input.b.x, true, true))), _wgslsmith_div_vec2_u32(vec2<u32>(~0u, 0u), _wgslsmith_mult_vec2_u32(vec2<u32>(52538u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 7u)], 7u)]), u_input.a.zx) ^ ~u_input.a.yz)), -firstLeadingBit(u_input.b.x) ^ ~_wgslsmith_mult_i32(1i, 0i));
    let var_1 = u_input.a;
    var_0 = ~(vec2<i32>(firstLeadingBit(_wgslsmith_dot_vec3_i32(u_input.b.xwy, u_input.b.yyy)), var_0.x) << ((vec2<u32>(_wgslsmith_div_u32(u_input.a.x, global1[_wgslsmith_index_u32(1u, 7u)]), 1u) >> (~(~vec2<u32>(var_1.x, global1[_wgslsmith_index_u32(u_input.a.x, 7u)])) % vec2<u32>(32u))) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-500f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2507f, 133f)))));
}

