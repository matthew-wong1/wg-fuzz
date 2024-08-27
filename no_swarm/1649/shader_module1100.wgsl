struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: vec2<i32> = vec2<i32>(-10025i, 25055i);

var<private> global2: Struct_2 = Struct_2(Struct_1(false), vec2<u32>(53442u, 0u), Struct_1(false), vec3<u32>(4294967295u, 92070u, 51576u));

var<private> global3: u32 = 23853u;

var<private> global4: array<u32, 9>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: bool) -> vec2<u32> {
    let var_0 = Struct_2(global2.c, select(global2.b, ~(~u_input.a.zy), !all(select(vec2<bool>(global2.a.a, false), vec2<bool>(true, arg_0), arg_0))), Struct_1(any(!(!vec4<bool>(global2.a.a, false, global2.c.a, arg_0)))), select(~u_input.a.wxx, abs(~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 41218u, 12358u), global2.d)), arg_0));
    global2 = Struct_2(global2.c, _wgslsmith_sub_vec2_u32(min(~_wgslsmith_div_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(4294967295u, global2.b.x)), vec2<u32>(59474u, ~19642u)), ~firstTrailingBit(~vec2<u32>(global2.b.x, var_0.b.x))), Struct_1(!any(select(vec2<bool>(arg_0, true), vec2<bool>(var_0.a.a, false), vec2<bool>(true, false)))), vec3<u32>(4294967295u, ~u_input.a.x, u_input.a.x));
    var var_1 = -_wgslsmith_clamp_vec2_i32(firstTrailingBit(~u_input.b.wy), -(~vec2<i32>(1i, 1i)), _wgslsmith_mult_vec2_i32(reverseBits(u_input.b.ww), firstTrailingBit(u_input.b.xz)));
    let var_2 = Struct_1(any(select(vec2<bool>(any(vec2<bool>(arg_0, global2.a.a)), any(vec2<bool>(global2.c.a, global2.a.a))), vec2<bool>(var_0.c.a, false), !(!vec2<bool>(global2.a.a, true)))));
    var var_3 = vec2<u32>(_wgslsmith_clamp_u32(~(~global4[_wgslsmith_index_u32(select(u_input.a.x, global4[_wgslsmith_index_u32(52284u, 9u)], global2.a.a), 9u)]), ~_wgslsmith_sub_u32(global2.b.x, 0u) ^ 25255u, abs(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global4[_wgslsmith_index_u32(49776u, 9u)]), _wgslsmith_add_vec2_u32(vec2<u32>(var_0.d.x, 4294967295u), vec2<u32>(global4[_wgslsmith_index_u32(0u, 9u)], var_0.d.x))))), ~_wgslsmith_sub_u32(firstTrailingBit(_wgslsmith_mod_u32(5527u, u_input.a.x)), ~1u));
    return var_0.b;
}

fn func_2(arg_0: f32, arg_1: vec3<f32>) -> Struct_2 {
    global4 = array<u32, 9>();
    global0 = _wgslsmith_f_op_f32(step(arg_1.x, arg_1.x)) == _wgslsmith_f_op_f32(select(1475f, arg_1.x, true));
    let var_0 = Struct_2(global2.c, select(vec2<u32>(global2.d.x, ~_wgslsmith_dot_vec3_u32(global2.d, vec3<u32>(global2.b.x, 1u, 11226u))), select(_wgslsmith_div_vec2_u32(global2.d.zx, func_3(global2.a.a)), select(firstTrailingBit(global2.d.zy), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), vec2<u32>(0u, 4294967295u)), arg_0 >= 1000f), global2.a.a), any(select(select(vec2<bool>(false, global2.c.a), vec2<bool>(global2.a.a, true), vec2<bool>(false, true)), !vec2<bool>(false, global2.c.a), arg_0 == 136f))), global2.a, select(global2.d & min(reverseBits(global2.d), max(vec3<u32>(global4[_wgslsmith_index_u32(u_input.a.x, 9u)], 1u, 9343u), vec3<u32>(global4[_wgslsmith_index_u32(33119u, 9u)], 1995u, 0u))), ~vec3<u32>(1u, ~global4[_wgslsmith_index_u32(58996u, 9u)], abs(global2.d.x)), vec3<bool>(false != all(vec4<bool>(true, global2.a.a, global2.a.a, global2.c.a)), true, global2.a.a)));
    global0 = all(vec4<bool>(false, false, var_0.c.a, select(var_0.c.a, var_0.a.a == all(vec3<bool>(true, true, global2.c.a)), any(vec3<bool>(var_0.c.a, global2.a.a, true)) & any(vec4<bool>(var_0.a.a, false, false, var_0.a.a)))));
    let var_1 = firstTrailingBit(firstLeadingBit(var_0.d.x));
    return Struct_2(Struct_1(all(select(vec3<bool>(true, true, var_0.a.a), !vec3<bool>(true, global2.a.a, var_0.a.a), select(false, false, false)))), vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.a.xw, vec2<u32>(0u, 5420u)), 1u) ^ _wgslsmith_mod_vec2_u32(~u_input.a.xz | firstLeadingBit(u_input.a.zz), ~func_3(false)), Struct_1(global2.c.a), _wgslsmith_div_vec3_u32(~vec3<u32>(4294967295u, global4[_wgslsmith_index_u32(var_0.d.x, 9u)], var_0.b.x) >> ((u_input.a.xzz ^ ~vec3<u32>(1u, 26182u, 21064u)) % vec3<u32>(32u)), vec3<u32>(~_wgslsmith_mod_u32(global4[_wgslsmith_index_u32(4294967295u, 9u)], 1u), 31479u, ~(~62520u))));
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> Struct_1 {
    global3 = global2.b.x | (min(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(101407u, 9u)], arg_0.b.x, global4[_wgslsmith_index_u32(0u, 9u)], arg_0.d.x), u_input.a, vec4<u32>(u_input.a.x, global4[_wgslsmith_index_u32(global2.b.x, 9u)], 4294967295u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], 9u)])), ~u_input.a), (4294967295u & global2.d.x) ^ global4[_wgslsmith_index_u32(max(u_input.a.x, 77369u), 9u)]) ^ _wgslsmith_sub_u32(1u, _wgslsmith_mult_u32(u_input.a.x, ~43613u)));
    global4 = array<u32, 9>();
    global0 = any(select(!(!vec3<bool>(global2.a.a, global2.c.a, global2.a.a)), vec3<bool>(select(true, any(vec2<bool>(false, false)), all(vec3<bool>(arg_0.c.a, arg_0.c.a, true))), arg_0.c.a, true), select(select(select(vec3<bool>(global2.c.a, arg_0.a.a, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), !vec3<bool>(true, arg_0.a.a, arg_0.a.a)), !select(vec3<bool>(arg_0.a.a, arg_0.c.a, true), vec3<bool>(true, true, global2.c.a), vec3<bool>(global2.c.a, arg_0.a.a, global2.c.a)), vec3<bool>(false | arg_0.c.a, true, false))));
    return Struct_1(global2.a.a);
}

fn func_1(arg_0: Struct_1) -> u32 {
    let var_0 = Struct_2(func_4(func_2(-852f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(717f, 1957f, 738f) + vec3<f32>(-976f, -716f, -644f)))), _wgslsmith_mult_i32(~(~(-1i)), firstLeadingBit(1i))), vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.a.xzx, min(~u_input.a.zzz, abs(global2.d))), _wgslsmith_add_u32(~global4[_wgslsmith_index_u32(5796u, 9u)] | (global2.b.x ^ 3908u), _wgslsmith_mod_u32(78823u, ~u_input.a.x))), func_4(Struct_2(func_2(_wgslsmith_f_op_f32(-1981f - -464f), _wgslsmith_f_op_vec3_f32(vec3<f32>(353f, -1460f, -373f) * vec3<f32>(1000f, 479f, -243f))).c, ~vec2<u32>(20200u, global2.b.x), arg_0, _wgslsmith_mod_vec3_u32(u_input.a.wxz, u_input.a.zyw)), global1.x), global2.d);
    global0 = global2.a.a != arg_0.a;
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(637f + 1f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1177f * 583f))))), -911f));
    var var_2 = 70785u;
    var var_3 = all(select(select(select(select(vec3<bool>(var_0.a.a, true, false), vec3<bool>(global2.a.a, false, var_0.c.a), vec3<bool>(true, global2.c.a, true)), vec3<bool>(true, true, true), vec3<bool>(var_0.c.a, true, false)), select(!vec3<bool>(var_0.c.a, false, true), select(vec3<bool>(false, true, var_0.c.a), vec3<bool>(false, false, true), vec3<bool>(global2.c.a, false, global2.c.a)), select(vec3<bool>(true, var_0.a.a, true), vec3<bool>(false, var_0.a.a, false), vec3<bool>(false, arg_0.a, global2.c.a))), !var_0.c.a), !(!select(vec3<bool>(false, global2.a.a, arg_0.a), vec3<bool>(global2.c.a, false, var_0.c.a), true)), select(vec3<bool>(!global2.a.a, func_2(-852f, vec3<f32>(1374f, var_1.x, -626f)).a.a, arg_0.a), select(select(vec3<bool>(false, true, var_0.a.a), vec3<bool>(true, arg_0.a, arg_0.a), vec3<bool>(global2.c.a, false, false)), vec3<bool>(true, global2.c.a, global2.a.a), !vec3<bool>(false, true, global2.a.a)), select(select(vec3<bool>(global2.a.a, arg_0.a, arg_0.a), vec3<bool>(false, true, true), true), select(vec3<bool>(arg_0.a, false, true), vec3<bool>(true, global2.a.a, false), vec3<bool>(true, false, arg_0.a)), global2.a.a))));
    return global2.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_2(global2.a, u_input.a.xy, Struct_1(_wgslsmith_f_op_f32(1078f - _wgslsmith_f_op_f32(1958f - 1016f)) != _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1003f, 171f)))), firstTrailingBit(vec3<u32>(~func_1(Struct_1(false)), ~abs(global2.b.x), _wgslsmith_div_u32(global2.d.x, 43437u))));
    let var_0 = func_2(-1054f, vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-935f - _wgslsmith_f_op_f32(309f * 218f)), _wgslsmith_f_op_f32(f32(-1f) * -1871f))), 1f, -720f)).c;
    let var_1 = ~(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(-u_input.b, -vec4<i32>(20816i, global1.x, u_input.b.x, u_input.b.x)), u_input.b) >> (global2.d.x % 32u));
    let var_2 = !select(select(vec4<bool>(!global2.a.a, true, global2.a.a, select(global2.a.a, var_0.a, false)), select(!vec4<bool>(true, var_0.a, global2.c.a, true), vec4<bool>(var_0.a, true, true, true), any(vec3<bool>(true, var_0.a, global2.a.a))), global2.a.a), vec4<bool>(!(false == global2.a.a), var_0.a, !global2.c.a, global2.c.a), select(vec4<bool>(false, true, global2.c.a, !var_0.a), !select(vec4<bool>(var_0.a, false, true, var_0.a), vec4<bool>(var_0.a, true, true, false), vec4<bool>(false, var_0.a, global2.c.a, var_0.a)), select(select(vec4<bool>(true, global2.a.a, false, var_0.a), vec4<bool>(var_0.a, false, global2.a.a, true), vec4<bool>(true, var_0.a, global2.c.a, var_0.a)), !vec4<bool>(global2.a.a, global2.a.a, var_0.a, false), vec4<bool>(var_0.a, global2.a.a, false, var_0.a))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-958f * _wgslsmith_f_op_f32(f32(-1f) * -213f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -711f))), -2413f));
    var var_4 = Struct_2(func_2(1f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-334f + var_3.x), 467f, _wgslsmith_f_op_f32(-var_3.x)))).a, abs(vec2<u32>(~global2.d.x, u_input.a.x)), Struct_1(true), firstTrailingBit(~global2.d));
    let var_5 = func_2(var_3.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1080f - _wgslsmith_f_op_f32(trunc(var_3.x))), var_3.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_3.x))))));
    var var_6 = u_input.b;
    let var_7 = func_2(var_3.x, vec3<f32>(166f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(-112f - var_3.x)))), 1f)).c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(var_3.zx + _wgslsmith_f_op_vec2_f32(-var_3.zx)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(var_3.x, var_3.x, 1170f, -1101f), vec4<f32>(-1513f, var_3.x, -320f, 1317f))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(-975f, var_3.x, var_0.a)), _wgslsmith_f_op_f32(floor(-1241f)), _wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(var_3.x * 1545f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_3.x, -2716f, var_3.x, var_3.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(669f, 445f, 1099f, var_3.x) * vec4<f32>(-184f, var_3.x, var_3.x, -1000f)) * vec4<f32>(-561f, var_3.x, 931f, -1000f)))));
}

