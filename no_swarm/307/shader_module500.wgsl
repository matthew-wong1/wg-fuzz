struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: u32,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: vec3<bool>,
    c: u32,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(-41816i, 0i), vec3<bool>(true, true, false), 0u);

var<private> global1: vec2<bool> = vec2<bool>(false, true);

var<private> global2: array<Struct_1, 11>;

var<private> global3: vec2<u32>;

var<private> global4: Struct_1 = Struct_1(vec2<i32>(25164i, 54893i), vec3<bool>(false, false, true), 1u);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: vec2<bool>, arg_1: u32, arg_2: f32, arg_3: i32) -> vec2<u32> {
    var var_0 = Struct_3(global2[_wgslsmith_index_u32(global4.c, 11u)], arg_0.x);
    let var_1 = u_input.b.zzy;
    let var_2 = vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global3.x, 2980u, 3890u), vec3<u32>(33528u, 19762u, var_0.a.c)), ~arg_1), vec2<u32>(~global0.c, 9386u >> (~var_0.a.c % 32u))), _wgslsmith_div_u32(arg_1 | (global0.c | global3.x), ~(global0.c & var_0.a.c)), global3.x);
    let var_3 = 51106i;
    let var_4 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -534f)), -1333f), _wgslsmith_f_op_f32(select(arg_2, 1f, global4.b.x))));
    return ~vec2<u32>(_wgslsmith_mult_u32(global0.c, _wgslsmith_mult_u32(var_0.a.c, u_input.e)), reverseBits(u_input.e));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_5) -> i32 {
    var var_0 = 0u;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1726f)) + _wgslsmith_f_op_f32(abs(-2379f)))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -262f), _wgslsmith_f_op_f32(trunc(-1000f))))));
    global0 = Struct_1(vec2<i32>(-_wgslsmith_mod_i32(firstLeadingBit(0i), -16934i), arg_1.a.x), arg_1.b, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_mult_vec4_u32(vec4<u32>(42268u, 4294967295u, 1u, 56421u), ~vec4<u32>(arg_2.d.c, 0u, global3.x, arg_0))) << (~max(_wgslsmith_clamp_u32(arg_0, 31753u, arg_2.d.c), 0u) % 32u));
    var_0 = countOneBits(~global0.c);
    var var_2 = !(!global0.b.x);
    return firstLeadingBit(_wgslsmith_mult_i32(-1i, countOneBits(arg_2.d.a.x))) ^ arg_2.a;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec4<bool>) -> i32 {
    var var_0 = Struct_3(global2[_wgslsmith_index_u32(0u, 11u)], _wgslsmith_dot_vec4_i32(-u_input.b, min(~vec4<i32>(-28658i, -16178i, u_input.d.x, arg_0.a.x), -vec4<i32>(global4.a.x, -1081i, 26898i, 2147483647i))) <= (_wgslsmith_mult_i32(-1i, abs(1i)) & (global0.a.x ^ global0.a.x)));
    global1 = !var_0.a.b.zy;
    global4 = Struct_1(reverseBits(_wgslsmith_clamp_vec2_i32(u_input.d.zx >> (func_2(vec2<bool>(true, global4.b.x), global4.c, -122f, -2147483647i) % vec2<u32>(32u)), global0.a, arg_0.a)), vec3<bool>(global0.b.x, global0.b.x, !(!all(arg_0.b.xz))), global0.c);
    var var_1 = _wgslsmith_dot_vec2_i32(select(arg_0.a, reverseBits(vec2<i32>(u_input.d.x, func_3(69493u, Struct_1(u_input.c.zy, arg_0.b, arg_0.c), Struct_5(var_0.a.a.x, var_0.a.b, global4.c, Struct_1(vec2<i32>(1i, var_0.a.a.x), arg_2.wwz, 4294967295u), global0.b.x)))), vec2<bool>(!select(true, global4.b.x, global0.b.x), global4.b.x)), countOneBits((reverseBits(var_0.a.a) ^ (vec2<i32>(13287i, 0i) << (vec2<u32>(132589u, arg_0.c) % vec2<u32>(32u)))) ^ -arg_0.a));
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1017f)), _wgslsmith_f_op_f32(arg_1.x + 444f))), _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(f32(-1f) * -815f)), arg_1.x));
    return u_input.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1000f;
    global4 = Struct_1(_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(u_input.c.xx, global0.a), ~vec2<i32>(global4.a.x, global4.a.x)), vec2<i32>(func_1(global2[_wgslsmith_index_u32(global0.c, 11u)], vec3<f32>(719f, -1556f, 1352f), vec4<bool>(true, true, false, false)), _wgslsmith_mult_i32(33131i, 1i))) << (~_wgslsmith_mod_vec2_u32(abs(vec2<u32>(45400u, global3.x)), vec2<u32>(4294967295u, 4294967295u)) % vec2<u32>(32u)), global4.b, global0.c);
    let var_1 = global4.b.zz;
    var var_2 = _wgslsmith_f_op_f32(-var_0);
    var var_3 = Struct_5(-28584i, select(vec3<bool>(_wgslsmith_f_op_f32(-1006f * var_0) >= _wgslsmith_f_op_f32(round(-1076f)), true, false), global4.b, select(vec3<bool>(true, true, true), !global4.b, false)), _wgslsmith_dot_vec4_u32(select(_wgslsmith_clamp_vec4_u32(vec4<u32>(global4.c, global3.x, global4.c, u_input.e), vec4<u32>(0u, global4.c, u_input.e, 30289u), vec4<u32>(u_input.e, 1u, 38326u, 0u)), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 26375u, 4294967295u, u_input.e), vec4<u32>(global4.c, u_input.e, global4.c, 1u)), !vec4<bool>(global4.b.x, false, var_1.x, global0.b.x)) & vec4<u32>(6272u, 74580u, _wgslsmith_mod_u32(global4.c, u_input.e), ~global0.c), reverseBits(~(~vec4<u32>(35361u, 22823u, global0.c, global0.c)))), global2[_wgslsmith_index_u32(~global3.x, 11u)], all(!vec3<bool>(!global1.x, true, var_1.x)));
    let var_4 = 0u >> (0u % 32u);
    let var_5 = !(!(!vec3<bool>(global0.b.x & false, any(vec3<bool>(true, false, global0.b.x)), false)));
    var var_6 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-var_0), 1303f, _wgslsmith_f_op_f32(297f + 2952f))) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-916f, 1594f, var_0, _wgslsmith_div_f32(584f, 702f)))))));
    let var_7 = Struct_1(max(~vec2<i32>(global4.a.x, ~global4.a.x), vec2<i32>(_wgslsmith_add_i32(firstLeadingBit(3318i), ~(-65309i)), var_3.d.a.x)), !global4.b, var_3.c << (_wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(var_3.c, var_4), ~global4.c), global4.c ^ u_input.e) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(max(40714u, _wgslsmith_sub_u32(var_4, var_3.c)), global4.c) & ~_wgslsmith_mod_vec2_u32(firstTrailingBit(vec2<u32>(0u, 1u)), ~vec2<u32>(global0.c, var_3.c)), select(var_3.d.a, global4.a, !select(select(var_3.d.b.yz, var_3.b.zy, vec2<bool>(global0.b.x, false)), vec2<bool>(true, true), vec2<bool>(global0.b.x, true))));
}

