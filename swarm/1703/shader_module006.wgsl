struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: f32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<f32>,
    d: i32,
    e: vec3<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: i32,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 3>;

var<private> global1: u32;

var<private> global2: array<Struct_1, 11>;

var<private> global3: array<Struct_1, 6>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<u32>) -> vec4<i32> {
    let var_0 = u_input.a << (~_wgslsmith_mod_u32(~40109u, arg_0.x) % 32u);
    var var_1 = Struct_1(_wgslsmith_clamp_i32(u_input.b.x, reverseBits(1i), firstLeadingBit(u_input.b.x)), vec2<f32>(1122f, 296f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-295f)))), _wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(-37941i, 2147483647i, -84900i, u_input.b.x)), vec4<i32>(u_input.b.x, u_input.b.x, 30348i, u_input.b.x ^ u_input.b.x)) >> (~arg_0 % vec4<u32>(32u)));
    return firstLeadingBit(~vec4<i32>(var_1.d.x, _wgslsmith_mult_i32(1i, u_input.b.x), u_input.b.x, -firstTrailingBit(u_input.b.x)));
}

fn func_2() -> vec3<i32> {
    var var_0 = _wgslsmith_mult_u32(7172u, firstTrailingBit(~u_input.a) ^ 52153u) ^ u_input.a;
    var var_1 = Struct_1(_wgslsmith_dot_vec2_i32(u_input.b.zx, vec2<i32>(min(abs(u_input.b.x), select(-8451i, 1i, true)), -_wgslsmith_div_i32(-1i, u_input.b.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 501f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-341f, 475f), -867f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -370f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1114f), -440f)))), abs(vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(-1i, u_input.b.x), ~u_input.b.x), ~u_input.b.x | _wgslsmith_div_i32(u_input.b.x, u_input.b.x), -u_input.b.x, 2147483647i)));
    let var_2 = Struct_3((reverseBits(vec2<u32>(u_input.a, u_input.a) ^ vec2<u32>(u_input.a, 43977u)) >> (~(~vec2<u32>(54646u, 0u)) % vec2<u32>(32u))) | min(_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.a, 22634u), ~vec2<u32>(u_input.a, 54917u)), abs(vec2<u32>(1u, 16987u))), global3[_wgslsmith_index_u32(firstLeadingBit(~(~(~u_input.a))), 6u)], u_input.b.x, Struct_2(Struct_1(max(86083i, var_1.d.x) | countOneBits(-47442i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-815f, var_1.b.x) + var_1.b) + vec2<f32>(var_1.c, -710f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.c)) - -1410f), func_3(vec4<u32>(48176u, 6793u, 4294967295u, u_input.a))), !all(select(global0[_wgslsmith_index_u32(19630u, 3u)], vec2<bool>(true, false), true)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -365f), -1017f), _wgslsmith_sub_i32(firstTrailingBit(u_input.b.x), -1i), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true)), Struct_2(Struct_1(1i, vec2<f32>(var_1.c, var_1.c), 593f, -func_3(vec4<u32>(1u, u_input.a, u_input.a, u_input.a))), true, var_1.b, 12767i, !select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)))));
    global2 = array<Struct_1, 11>();
    var var_3 = -2147483647i;
    return vec3<i32>(7752i, -1i, _wgslsmith_add_i32(2147483647i >> (abs(1u) % 32u), _wgslsmith_add_i32(_wgslsmith_mult_i32(var_2.c & 6147i, abs(14637i)), firstLeadingBit(1i))));
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> Struct_3 {
    global1 = arg_1;
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.b.x, 1000f, -185f, -1416f), vec4<f32>(arg_0.c, arg_0.b.x, -1295f, 792f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-257f, arg_0.c, arg_0.c, 1000f) * vec4<f32>(-526f, -1669f, -1445f, -265f)))))))));
    let var_1 = max(arg_0.d.wxw, ~(~func_2()));
    var var_2 = !global0[_wgslsmith_index_u32(~u_input.a, 3u)];
    return Struct_3(firstLeadingBit(_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(arg_1, u_input.a), ~0u), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, arg_1), vec2<u32>(u_input.a, 37071u), vec2<u32>(u_input.a, 4294967295u)))), global3[_wgslsmith_index_u32(arg_1, 6u)], ~_wgslsmith_div_i32(max(arg_0.d.x, ~2734i), _wgslsmith_mod_i32(func_3(vec4<u32>(u_input.a, 1u, arg_1, u_input.a)).x, max(2147483647i, 19318i))), Struct_2(global3[_wgslsmith_index_u32(4294967295u, 6u)], var_2.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 606f)) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(arg_0.b, arg_0.b)))), arg_0.a, !select(select(vec3<bool>(false, var_2.x, true), vec3<bool>(var_2.x, var_2.x, var_2.x), var_2.x), vec3<bool>(false, var_2.x, false), vec3<bool>(false, false, true))), Struct_2(global3[_wgslsmith_index_u32((abs(51488u) | max(arg_1, 4294967295u)) & 1u, 6u)], var_2.x, arg_0.b, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(arg_0.d, vec4<i32>(arg_0.a, var_1.x, 36713i, 1i)), ~(-7674i)) >> (_wgslsmith_div_u32(u_input.a, _wgslsmith_mult_u32(u_input.a, u_input.a)) % 32u), vec3<bool>(var_2.x, !(-652f <= arg_0.c), true)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3) -> f32 {
    var var_0 = -(-_wgslsmith_mult_i32(_wgslsmith_add_i32(0i, arg_0.d.x), 1i) | u_input.b.x);
    let var_1 = Struct_2(Struct_1(u_input.b.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.b.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -995f))), ~(arg_1.b.d << (vec4<u32>(u_input.a, arg_1.a.x, 26901u, u_input.a) % vec4<u32>(32u))) << (vec4<u32>(arg_1.a.x, abs(0u), ~75376u, 29089u) % vec4<u32>(32u))), any(vec2<bool>(false, false)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-arg_0.b))), countOneBits(abs(-arg_0.a)) >> (u_input.a % 32u), arg_1.d.e);
    var var_2 = var_1.d;
    let var_3 = -335f;
    let var_4 = ~(-select(-1i, -6325i, !all(vec2<bool>(true, arg_1.e.b))));
    return var_1.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 6>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_4(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, 18431u), 11u)], func_1(Struct_1(-1i, vec2<f32>(-669f, 1219f), 864f, vec4<i32>(1i, u_input.b.x, u_input.b.x, u_input.b.x)), u_input.a))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2248f * -1065f) - _wgslsmith_f_op_f32(f32(-1f) * -184f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-294f, 1610f)))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1508f, 1389f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -544f)))) - func_1(func_1(Struct_1(1i, vec2<f32>(-1068f, -1666f), -531f, vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), 4294967295u).d.a, 1u & u_input.a).d.c.x));
    var var_1 = _wgslsmith_f_op_f32(abs(1293f));
    global1 = u_input.a;
    var var_2 = 4294967295u | _wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 8124u, u_input.a), vec3<u32>(53769u, 10897u, u_input.a) & vec3<u32>(0u, 0u, u_input.a)), _wgslsmith_mult_vec3_u32(~(vec3<u32>(1u, u_input.a, 27017u) & vec3<u32>(1u, u_input.a, 62700u)), vec3<u32>(abs(u_input.a), _wgslsmith_div_u32(u_input.a, u_input.a), u_input.a)));
    var_0 = _wgslsmith_f_op_f32(-1308f - -587f);
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -950f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -495f)));
    let var_3 = !select(func_1(func_1(func_1(global2[_wgslsmith_index_u32(31828u, 11u)], u_input.a).b, ~u_input.a).d.a, abs(~1u)).d.e.x, !(any(vec4<bool>(false, false, true, true)) & true), false);
    let var_4 = func_1(func_1(global2[_wgslsmith_index_u32(abs(11253u), 11u)], 0u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(43841u, u_input.a, u_input.a, u_input.a), vec4<u32>(16113u, 46721u, 1u, 0u)) % 32u)).d.a, max(u_input.a, u_input.a)).d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -477f) + var_4.a.b.x), var_4.a.b.x, ~_wgslsmith_div_i32(-3702i, (28842i | u_input.b.x) & -u_input.b.x), _wgslsmith_f_op_f32(-2419f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_4.c.x), _wgslsmith_f_op_f32(-666f * _wgslsmith_f_op_f32(ceil(var_4.c.x))), any(!vec3<bool>(var_4.b, var_4.b, false))))));
}

