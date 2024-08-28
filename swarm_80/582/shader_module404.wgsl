struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec2<bool>,
    d: vec2<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 2>;

var<private> global1: u32;

var<private> global2: i32;

var<private> global3: Struct_2 = Struct_2(vec3<u32>(0u, 66125u, 0u), vec3<u32>(0u, 4294967295u, 46748u), vec2<bool>(false, false), vec2<u32>(1u, 4294967295u), Struct_1(true, vec2<bool>(true, false), vec3<i32>(-64898i, -1i, 18824i)));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(floor(-710f));
    let var_1 = ~4294967295u;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-137f, 498f)))) + vec2<f32>(_wgslsmith_f_op_f32(-1240f - -677f), -1316f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(183f, -668f) + vec2<f32>(-1658f, 1182f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1240f, -708f)))), vec2<f32>(-922f, _wgslsmith_f_op_f32(f32(-1f) * -968f)), true))));
    global2 = 28284i;
    global1 = 8119u;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1385f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(200f, 2792f, true)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-3494f + var_2.x) + _wgslsmith_f_op_f32(abs(var_2.x))))));
}

fn func_3(arg_0: bool, arg_1: vec3<i32>, arg_2: bool) -> bool {
    var var_0 = global3.b.yz;
    global2 = ~global3.e.c.x;
    global1 = 32485u & _wgslsmith_clamp_u32(var_0.x, 1u, _wgslsmith_mod_u32(var_0.x, global3.a.x));
    global2 = u_input.a;
    let var_1 = Struct_1(any(vec2<bool>(global3.e.a, arg_2)), vec2<bool>(any(vec4<bool>(global3.e.b.x & false, global3.e.c.x > global0[_wgslsmith_index_u32(4294967295u, 2u)], true, 15298u > global3.a.x)), false), countOneBits(global3.e.c) << (global3.b % vec3<u32>(32u)));
    return !(arg_2 | !var_1.a);
}

fn func_4(arg_0: Struct_1) -> vec4<i32> {
    global2 = select(_wgslsmith_dot_vec2_i32(~vec2<i32>(select(arg_0.c.x, u_input.a, arg_0.a), arg_0.c.x ^ arg_0.c.x), vec2<i32>(u_input.a, global0[_wgslsmith_index_u32(~(~global3.b.x), 2u)])), -global0[_wgslsmith_index_u32(1u, 2u)], true);
    let var_0 = _wgslsmith_add_vec4_i32(vec4<i32>(0i, global3.e.c.x, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(firstLeadingBit(1u)), 64049u), 2u)], -51292i), reverseBits(~(~(-vec4<i32>(global3.e.c.x, -1i, 2147483647i, arg_0.c.x)))));
    global0 = array<i32, 2>();
    global2 = -12888i;
    global2 = _wgslsmith_dot_vec4_i32(countOneBits(var_0), _wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(arg_0.c.x, 2147483647i, 40058i, -2147483647i) >> (vec4<u32>(18013u, global3.a.x, 56978u, global3.a.x) % vec4<u32>(32u))), var_0) & _wgslsmith_add_vec4_i32(select(abs(var_0), var_0, !vec4<bool>(false, arg_0.a, false, arg_0.b.x)), _wgslsmith_mult_vec4_i32(var_0, var_0)));
    return vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 2u)], i32(-1i) * -min(-1i, u_input.a), global3.e.c.x, 2147483647i) & (_wgslsmith_add_vec4_i32(~_wgslsmith_sub_vec4_i32(var_0, var_0), ~min(vec4<i32>(0i, -52956i, -1i, -23875i), vec4<i32>(var_0.x, 1i, 52903i, 39656i))) >> (vec4<u32>(~54352u, 0u, countOneBits(global3.a.x), 4294967295u) % vec4<u32>(32u)));
}

fn func_1() -> Struct_1 {
    global1 = abs(global3.b.x);
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -137f)));
    var var_1 = func_4(Struct_1(true, !vec2<bool>(any(vec2<bool>(global3.e.b.x, false)), func_3(global3.c.x, global3.e.c, true)), global3.e.c));
    var var_2 = ~vec4<u32>(global3.a.x, 1u, _wgslsmith_add_u32(18641u, global3.a.x), reverseBits(~(~global3.a.x)));
    var_2 = _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(abs(~(~vec4<u32>(var_2.x, 52637u, 0u, global3.b.x))), ~(~(~vec4<u32>(21464u, var_2.x, global3.b.x, global3.d.x)))), vec4<u32>(_wgslsmith_div_u32(_wgslsmith_add_u32(~global3.d.x, var_2.x), max(abs(global3.a.x), global3.d.x << (4294967295u % 32u))), global3.d.x | _wgslsmith_add_u32(min(var_2.x, 20819u), var_2.x), ~(0u << (max(var_2.x, 1u) % 32u)), global3.a.x));
    return Struct_1(any(global3.e.b), vec2<bool>(select(true, global3.e.a, !global3.c.x), global3.e.a | true), ~vec3<i32>(41416i, ~global3.e.c.x, _wgslsmith_div_i32(global0[_wgslsmith_index_u32(var_2.x, 2u)], -2147483647i >> (var_2.x % 32u))));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_1) -> Struct_2 {
    var var_0 = vec3<bool>(any(func_1().b), true, func_3(all(vec4<bool>(!global3.c.x, global3.c.x, arg_1.a, false)), -(global3.e.c & -vec3<i32>(global0[_wgslsmith_index_u32(global3.b.x, 2u)], -2147483647i, global0[_wgslsmith_index_u32(global3.b.x, 2u)])), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(439f, -216f)))) <= _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(448f * -1516f))));
    global1 = _wgslsmith_clamp_u32(_wgslsmith_mod_u32(~(~(~arg_0.x)), global3.b.x), ~4889u | _wgslsmith_dot_vec3_u32(min(vec3<u32>(global3.d.x, 1u, 66399u), _wgslsmith_mod_vec3_u32(arg_0, global3.b)), ~arg_0 ^ arg_0), 58033u);
    let var_1 = 32280u;
    return Struct_2(vec3<u32>(global3.b.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(arg_0.zz, vec2<u32>(arg_0.x, 4294967295u)), vec2<u32>(var_1, 1u)), 1u), arg_0.x), global3.b, global3.e.b, _wgslsmith_clamp_vec2_u32(vec2<u32>(~4294967295u, ~0u) >> (global3.d % vec2<u32>(32u)), min(vec2<u32>(_wgslsmith_mod_u32(4294967295u, 41621u), 0u >> (1u % 32u)), vec2<u32>(global3.b.x, ~arg_0.x)), vec2<u32>(~firstTrailingBit(27825u), _wgslsmith_dot_vec3_u32(global3.a, global3.a | vec3<u32>(1u, 133180u, var_1)))), arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(vec3<u32>(global3.d.x, ~global3.b.x, ~36229u), func_1());
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1032f), _wgslsmith_div_f32(-1220f, 497f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-787f))))))));
    let var_2 = _wgslsmith_div_f32(1089f, _wgslsmith_div_f32(1351f, _wgslsmith_f_op_f32(-var_1.x)));
    let var_3 = var_0;
    let var_4 = min(~vec2<u32>(1u, 1u), _wgslsmith_mult_vec2_u32(~var_0.a.zy, var_0.d)) >> (select(vec2<u32>(min(var_0.b.x, ~9844u), 4294967295u), ~countOneBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(66868u, var_3.d.x), var_0.a.zz, var_3.b.xz)), var_3.c) % vec2<u32>(32u));
    let var_5 = vec4<u32>(_wgslsmith_clamp_u32(~min(0u, var_4.x), 1u, abs(_wgslsmith_dot_vec2_u32(vec2<u32>(18483u, 39649u), vec2<u32>(var_3.b.x, 1u))) >> (11074u % 32u)), 46182u, firstTrailingBit(1u), var_0.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(firstLeadingBit(-14721i), global3.e.c.x), var_4.x, _wgslsmith_dot_vec4_i32(abs(~vec4<i32>(global3.e.c.x, u_input.a, 0i, u_input.a)), firstLeadingBit(~(vec4<i32>(var_0.e.c.x, global0[_wgslsmith_index_u32(global3.a.x, 2u)], global0[_wgslsmith_index_u32(var_0.d.x, 2u)], 1i) | vec4<i32>(var_3.e.c.x, var_0.e.c.x, 2147483647i, u_input.a)))), -select(~global0[_wgslsmith_index_u32(34974u, 2u)], -37619i, all(vec4<bool>(var_3.e.a, var_0.e.a, false, var_3.e.a))) << ((_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(37567u, 35081u, var_4.x), var_5.zyz), var_0.d.x, ~global3.a.x) | _wgslsmith_dot_vec3_u32(select(var_0.a, global3.a, true), min(vec3<u32>(var_4.x, var_0.d.x, global3.b.x), vec3<u32>(4294967295u, var_4.x, 4294967295u)))) % 32u), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(5601u, 2u)], global0[_wgslsmith_index_u32(var_0.d.x, 2u)], global0[_wgslsmith_index_u32(global3.b.x, 2u)]), vec3<i32>(var_3.e.c.x, -47271i, var_3.e.c.x)) | abs(_wgslsmith_div_vec3_i32(vec3<i32>(54238i, var_0.e.c.x, u_input.a), global3.e.c)), abs(var_0.e.c)));
}

