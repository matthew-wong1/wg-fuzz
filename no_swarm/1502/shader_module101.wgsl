struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: u32 = 4097u;

var<private> global2: array<bool, 12>;

var<private> global3: bool;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: vec3<f32>) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1.x)))));
}

fn func_2() -> vec3<bool> {
    global0 = ~26900u;
    global2 = array<bool, 12>();
    global1 = u_input.b;
    let var_0 = ~u_input.c.wz;
    var var_1 = Struct_2(Struct_1(_wgslsmith_add_i32(-25560i, u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(891f))) <= -922f, _wgslsmith_dot_vec4_i32(min(vec4<i32>(u_input.a, u_input.a, 27743i, u_input.a), _wgslsmith_sub_vec4_i32(vec4<i32>(0i, 3847i, u_input.a, -2147483647i), vec4<i32>(u_input.d, 2147483647i, -34921i, 0i))), ~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, -10179i, 2147483647i, -1i), vec4<i32>(u_input.a, u_input.a, 58522i, 9137i))), select(select(!vec2<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 12u)], false), !vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.c.x, 12u)]), true), select(vec2<bool>(global2[_wgslsmith_index_u32(26538u, 12u)], global2[_wgslsmith_index_u32(var_0.x, 12u)]), vec2<bool>(false, global2[_wgslsmith_index_u32(var_0.x, 12u)]), !vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 12u)], global2[_wgslsmith_index_u32(var_0.x, 12u)])), global2[_wgslsmith_index_u32(~17508u, 12u)] & true)), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -578f), _wgslsmith_f_op_f32(f32(-1f) * -945f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(-660f, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(405f, 1184f, -118f), vec3<f32>(222f, 823f, -898f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-338f * -393f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(504f + -662f)))));
    return !(!(!(!vec3<bool>(false, global2[_wgslsmith_index_u32(var_0.x, 12u)], var_1.a.b))));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    let var_0 = ~_wgslsmith_dot_vec4_u32(u_input.c, countOneBits(max(u_input.c << (u_input.c % vec4<u32>(32u)), u_input.c)));
    let var_1 = select(vec3<bool>(false, arg_2.d.x, global2[_wgslsmith_index_u32(~1u, 12u)]), !(!select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.b, 12u)], true, true), !vec3<bool>(arg_1.d.x, arg_1.d.x, true), true)), select(!func_2(), !(!vec3<bool>(arg_1.b, arg_2.b, arg_2.b)), select(!(!vec3<bool>(global2[_wgslsmith_index_u32(var_0, 12u)], arg_2.d.x, false)), vec3<bool>(1i != arg_1.c, global2[_wgslsmith_index_u32(0u | u_input.b, 12u)], global2[_wgslsmith_index_u32(1u, 12u)] || arg_1.d.x), all(select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 12u)], arg_2.d.x, true, global2[_wgslsmith_index_u32(u_input.b, 12u)]), vec4<bool>(arg_1.d.x, global2[_wgslsmith_index_u32(arg_0, 12u)], arg_2.b, arg_2.d.x), vec4<bool>(global2[_wgslsmith_index_u32(16901u, 12u)], true, global2[_wgslsmith_index_u32(1u, 12u)], arg_1.b))))));
    var var_2 = arg_1.d.x;
    global0 = _wgslsmith_dot_vec4_u32(~select(~(~u_input.c), abs(u_input.c), var_1.x), u_input.c);
    let var_3 = arg_2;
    return var_1.x;
}

fn func_4(arg_0: vec3<bool>, arg_1: u32, arg_2: Struct_1, arg_3: vec4<f32>) -> u32 {
    global3 = !all(!func_2().xy);
    let var_0 = arg_3.x;
    var var_1 = Struct_2(arg_2, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(arg_3.xzw, arg_3.zzy))));
    var var_2 = func_1(_wgslsmith_div_u32(abs(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(u_input.c.x, u_input.b, 36398u, 46279u)), u_input.c.x | arg_1)), arg_1), Struct_1(var_1.a.a & abs(1i), any(vec2<bool>(any(arg_2.d), true)), -14691i, select(arg_0.yx, !(!arg_2.d), any(select(vec4<bool>(arg_0.x, false, var_1.a.b, arg_2.b), vec4<bool>(arg_0.x, false, true, arg_2.b), true)))), Struct_1(arg_2.c & ~(42284i ^ var_1.a.c), any(select(!vec4<bool>(true, arg_0.x, true, true), vec4<bool>(false, arg_0.x, var_1.a.d.x, arg_2.b), 53193i == var_1.a.c)), _wgslsmith_dot_vec2_i32(vec2<i32>(-arg_2.c, -44432i), vec2<i32>(1i, 1i) ^ vec2<i32>(arg_2.a, 0i)), !func_2().yz));
    var var_3 = Struct_2(Struct_1(var_1.a.c, true, _wgslsmith_div_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 39909i, 2147483647i), vec3<i32>(arg_2.c, arg_2.c, -28586i)), firstLeadingBit(46768i)), _wgslsmith_mod_i32(arg_2.a, max(arg_2.c, u_input.a))), !arg_0.zx), var_1.b);
    return _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(~u_input.b, u_input.b)), ~vec2<u32>(u_input.c.x, _wgslsmith_dot_vec4_u32(u_input.c, u_input.c & vec4<u32>(u_input.c.x, 18588u, 24821u, arg_1))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_4(!select(!vec3<bool>(true, global2[_wgslsmith_index_u32(11562u, 12u)], global2[_wgslsmith_index_u32(u_input.c.x, 12u)]), select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.b, 12u)], global2[_wgslsmith_index_u32(1u, 12u)], global2[_wgslsmith_index_u32(1u, 12u)]), vec3<bool>(false, global2[_wgslsmith_index_u32(70865u, 12u)], true), vec3<bool>(global2[_wgslsmith_index_u32(79618u, 12u)], global2[_wgslsmith_index_u32(6030u, 12u)], true)), vec3<bool>(global2[_wgslsmith_index_u32(16089u, 12u)], global2[_wgslsmith_index_u32(18067u, 12u)], false)), max(1u, _wgslsmith_mult_u32(1u, 13182u)), Struct_1(17659i, true, _wgslsmith_clamp_i32(min(2147483647i, 12641i), 2147483647i, 1i), vec2<bool>(true, func_1(u_input.c.x, Struct_1(5078i, global2[_wgslsmith_index_u32(u_input.c.x, 12u)], u_input.a, vec2<bool>(global2[_wgslsmith_index_u32(0u, 12u)], global2[_wgslsmith_index_u32(u_input.c.x, 12u)])), Struct_1(u_input.d, false, 2147483647i, vec2<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 12u)]))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-689f, 793f, 191f, 1000f) - vec4<f32>(-214f, 294f, -1350f, -1144f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(448f, -862f, 1000f, 738f)), select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 12u)], true, global2[_wgslsmith_index_u32(1u, 12u)], global2[_wgslsmith_index_u32(u_input.b, 12u)]), vec4<bool>(false, false, false, global2[_wgslsmith_index_u32(u_input.b, 12u)]), vec4<bool>(global2[_wgslsmith_index_u32(0u, 12u)], false, true, global2[_wgslsmith_index_u32(1047u, 12u)]))))) > u_input.b;
    var var_0 = Struct_1(_wgslsmith_mod_i32(_wgslsmith_mult_i32(-firstLeadingBit(-1i), u_input.a), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, u_input.a) << (u_input.c.wy % vec2<u32>(32u)), vec2<i32>(u_input.d, 1i)), u_input.d >> (~u_input.b % 32u))), any(vec2<bool>(global2[_wgslsmith_index_u32(countOneBits(firstTrailingBit(u_input.b)), 12u)], true == (u_input.d >= 2147483647i))), u_input.a, vec2<bool>(any(!func_2()), false));
    let var_1 = Struct_2(Struct_1(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, var_0.c), max(vec2<i32>(var_0.a, u_input.a), vec2<i32>(var_0.c, -2147483647i))), var_0.c, var_0.a), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, _wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, 80700u) | ~u_input.c.x), 12u)], min(_wgslsmith_mod_i32(var_0.c >> (u_input.c.x % 32u), ~1i), _wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.d, 10195i, -2147483647i), vec3<i32>(u_input.a, u_input.d, 2147483647i), var_0.b), select(vec3<i32>(u_input.d, var_0.a, u_input.a), vec3<i32>(var_0.c, 1i, 0i), false))), !func_2().xz), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1553f, -1149f)), _wgslsmith_f_op_f32(trunc(-1000f))) - _wgslsmith_div_vec3_f32(vec3<f32>(864f, _wgslsmith_f_op_f32(f32(-1f) * -2118f), _wgslsmith_f_op_f32(f32(-1f) * -1042f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-296f, 457f, 541f))))));
    let var_2 = Struct_1(5194i, var_1.b.x > 477f, 2147483647i, !select(vec2<bool>(!var_1.a.b, all(vec3<bool>(true, true, global2[_wgslsmith_index_u32(u_input.b, 12u)]))), var_0.d, false));
    let var_3 = _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.c.xx, reverseBits(_wgslsmith_mult_vec2_u32(max(u_input.c.wy, u_input.c.yw), _wgslsmith_add_vec2_u32(vec2<u32>(1u, u_input.b), u_input.c.yw)))), 4294967295u);
    var var_4 = any(vec4<bool>(any(var_1.a.d), true, _wgslsmith_f_op_f32(682f * _wgslsmith_f_op_f32(f32(-1f) * -585f)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.x * var_1.b.x) + _wgslsmith_f_op_f32(floor(var_1.b.x))), ~41037u != _wgslsmith_clamp_u32(firstTrailingBit(1u), 29882u, _wgslsmith_div_u32(u_input.c.x, 39680u))));
    let var_5 = var_3;
    var var_6 = select(!select(vec4<bool>(var_5 != 0u, true, !var_1.a.b, true), select(select(vec4<bool>(var_2.d.x, false, var_2.b, global2[_wgslsmith_index_u32(u_input.b, 12u)]), vec4<bool>(false, var_1.a.b, var_0.b, true), var_1.a.d.x), vec4<bool>(global2[_wgslsmith_index_u32(1u, 12u)], var_0.b, false, var_0.d.x), !vec4<bool>(false, false, var_1.a.b, var_2.d.x)), false), vec4<bool>(any(vec3<bool>(var_2.b | true, false, !var_1.a.b)), true, var_2.d.x, all(select(vec3<bool>(global2[_wgslsmith_index_u32(1u, 12u)], var_0.b, var_2.b), !vec3<bool>(var_2.b, true, false), select(vec3<bool>(var_0.d.x, var_0.d.x, var_1.a.b), vec3<bool>(true, var_1.a.d.x, true), true)))), vec4<bool>(var_2.b, true, true, true));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_vec4_u32(select(abs(vec4<u32>(26354u, var_3, 15402u, u_input.b)), u_input.c, any(vec2<bool>(false, true))), abs(~u_input.c)), ~(~vec3<u32>(0u, 1u, 84493u)), _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, var_2.a), ~vec2<i32>(var_1.a.a, 55584i)), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, var_1.a.c), vec2<i32>(-18990i, u_input.a)), select(vec2<i32>(u_input.a, -2147483647i), max(vec2<i32>(0i, var_1.a.c), vec2<i32>(19589i, var_2.a)), any(vec3<bool>(false, false, var_2.b)))) ^ _wgslsmith_sub_vec2_i32(~vec2<i32>(1i, var_1.a.c), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.d), vec2<i32>(45226i, var_2.c)) << (vec2<u32>(0u, 1u) % vec2<u32>(32u))), select(~firstLeadingBit(vec3<u32>(var_3, var_3, var_3)), vec3<u32>(_wgslsmith_mult_u32(abs(4294967295u), 1u), 11280u, _wgslsmith_dot_vec3_u32(select(u_input.c.wzy, u_input.c.xyx, false), ~u_input.c.zxz)), !select(select(var_6.zxw, vec3<bool>(var_0.b, var_1.a.d.x, false), var_6.wxw), select(var_6.zxy, vec3<bool>(true, var_1.a.b, false), vec3<bool>(false, global2[_wgslsmith_index_u32(52386u, 12u)], false)), vec3<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 12u)], true, var_2.d.x))), abs(2147483647i));
}

