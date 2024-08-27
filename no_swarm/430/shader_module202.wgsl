struct Struct_1 {
    a: f32,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5>;

var<private> global1: f32;

var<private> global2: i32;

var<private> global3: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(-1097f, false, 0i), Struct_1(1038f, true, -18719i), Struct_1(1000f, true, 2147483647i), Struct_1(-1195f, false, 2147483647i), Struct_1(145f, true, -1i), Struct_1(2036f, true, 0i), Struct_1(610f, false, 2147483647i), Struct_1(-493f, false, 2147483647i), Struct_1(-557f, true, 2147483647i), Struct_1(320f, false, -8174i), Struct_1(-164f, false, -24709i), Struct_1(-531f, false, 0i), Struct_1(525f, false, -25699i), Struct_1(-1098f, false, -45692i), Struct_1(157f, true, 0i), Struct_1(-336f, false, 0i), Struct_1(-1627f, false, -11812i), Struct_1(-474f, true, 0i), Struct_1(-135f, true, -32411i));

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: bool) -> f32 {
    let var_0 = true;
    var var_1 = global3[_wgslsmith_index_u32(1u, 19u)];
    let var_2 = Struct_2(global3[_wgslsmith_index_u32(u_input.d.x, 19u)]);
    global2 = -_wgslsmith_dot_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(var_1.c, 1i, -1i, 31149i), firstLeadingBit(vec4<i32>(-1i, -1i, 45709i, var_1.c))), abs(abs(vec4<i32>(var_2.a.c, var_2.a.c, 15830i, -7495i)) | _wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.a.c, u_input.a.x, -2147483647i, 2147483647i), vec4<i32>(var_2.a.c, var_1.c, u_input.b.x, u_input.b.x), vec4<i32>(u_input.c, var_1.c, var_2.a.c, var_2.a.c))));
    global2 = -var_2.a.c;
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -176f) - 1658f))), var_1.a) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1547f, var_1.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_2.a.a)), _wgslsmith_f_op_f32(f32(-1f) * -955f))) * var_1.a));
}

fn func_2() -> vec4<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(false)) + -310f), _wgslsmith_f_op_f32(min(-349f, _wgslsmith_div_f32(1000f, -1907f))))), 183f <= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1372f + 2019f))))), abs(1i));
    var var_1 = select(vec3<bool>(all(select(vec3<bool>(true, true, var_0.b), !vec3<bool>(var_0.b, true, true), !vec3<bool>(var_0.b, true, false))), any(!vec3<bool>(true, var_0.b, false)), ~(~u_input.d.x) > 1u), vec3<bool>(true, any(vec2<bool>(true, true)), !any(vec2<bool>(var_0.b, var_0.b))), vec3<bool>(all(select(vec4<bool>(false, var_0.b, true, var_0.b), select(vec4<bool>(var_0.b, true, false, var_0.b), vec4<bool>(var_0.b, var_0.b, var_0.b, true), vec4<bool>(var_0.b, true, false, true)), !vec4<bool>(false, var_0.b, var_0.b, false))), var_0.b, any(!vec4<bool>(true, var_0.b, var_0.b, false)) & true));
    var_0 = Struct_1(var_0.a, false, _wgslsmith_mult_i32(~(-_wgslsmith_mod_i32(1i, u_input.c)), var_0.c));
    let var_2 = global3[_wgslsmith_index_u32(~(4294967295u & select(_wgslsmith_mult_u32(u_input.d.x >> (57666u % 32u), 0u), _wgslsmith_mult_u32(u_input.e | u_input.e, 4294967295u), var_0.b)), 19u)];
    var var_3 = Struct_1(_wgslsmith_f_op_f32(min(var_0.a, 241f)), var_2.b, _wgslsmith_sub_i32(min(select(u_input.b.x >> (u_input.e % 32u), abs(var_0.c), !var_1.x), u_input.b.x), _wgslsmith_mult_i32(_wgslsmith_mod_i32(43356i, var_2.c), var_0.c)));
    return !vec4<bool>(true, any(vec3<bool>(var_3.a == var_2.a, false, true)), false, select(_wgslsmith_div_u32(0u, 46876u), 1u, false) > 27631u);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2) -> u32 {
    global2 = ~48902i;
    global0 = array<Struct_1, 5>();
    global2 = 1i;
    let var_0 = Struct_2(Struct_1(arg_0.a, all(select(vec4<bool>(true, arg_1.a.b, arg_1.a.b, arg_1.a.b), select(vec4<bool>(arg_1.a.b, true, false, arg_0.b), vec4<bool>(arg_0.b, arg_1.a.b, false, arg_1.a.b), vec4<bool>(true, arg_1.a.b, arg_0.b, arg_1.a.b)), func_2())), _wgslsmith_dot_vec4_i32(~vec4<i32>(-1i, 0i, arg_1.a.c, arg_1.a.c), vec4<i32>(i32(-1i) * -23917i, firstTrailingBit(arg_1.a.c), -2147483647i, u_input.b.x))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-774f - -1438f), !((arg_0.c == arg_0.c) || !(1556f <= arg_1.a.a)), -_wgslsmith_dot_vec4_i32(vec4<i32>(-var_0.a.c, -2599i, arg_1.a.c, ~arg_1.a.c), vec4<i32>(_wgslsmith_add_i32(0i, -474i), _wgslsmith_sub_i32(arg_0.c, var_0.a.c), ~arg_1.a.c, ~24238i)));
    return 4641u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 5>();
    var var_0 = !vec2<bool>(any(vec4<bool>(true, true, true, true)), (true || select(false, true, true)) | (-u_input.c != ~(-2147483647i)));
    global2 = 1i;
    var_0 = vec2<bool>(true, true);
    let var_1 = Struct_1(-1000f, var_0.x, -25033i);
    let var_2 = Struct_2(Struct_1(-258f, select(false, !all(vec3<bool>(false, var_1.b, var_0.x)), u_input.a.x >= (var_1.c >> (54070u % 32u))), 58545i));
    global2 = _wgslsmith_add_i32(~reverseBits(54655i) << (1u % 32u), var_2.a.c) & 4561i;
    var var_3 = select(select(select(!select(vec2<bool>(var_1.b, var_0.x), vec2<bool>(true, var_0.x), vec2<bool>(var_2.a.b, false)), !select(vec2<bool>(var_2.a.b, true), vec2<bool>(false, var_2.a.b), vec2<bool>(true, true)), true), vec2<bool>(_wgslsmith_f_op_f32(floor(var_1.a)) <= _wgslsmith_f_op_f32(f32(-1f) * -1307f), !(!var_2.a.b)), true), !(!(!select(vec2<bool>(var_1.b, false), vec2<bool>(var_1.b, var_1.b), false))), !(1u == func_1(var_1, var_2)));
    var_3 = !(!vec2<bool>(var_0.x, var_3.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_i32(u_input.a, -vec3<i32>(u_input.c, -1i, var_2.a.c) << (vec3<u32>(max(4294967295u, u_input.d.x), u_input.d.x, u_input.d.x) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(-vec3<i32>(2147483647i, var_2.a.c, var_2.a.c), u_input.a) << (min(vec3<u32>(u_input.d.x, 0u, 17740u) | u_input.d, select(vec3<u32>(4294967295u, 13844u, u_input.d.x), u_input.d, var_2.a.b)) % vec3<u32>(32u))), vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.a.x, _wgslsmith_sub_i32(51915i, 2147483647i)), -2147483647i), -var_1.c), (i32(-1i) * -_wgslsmith_add_i32(var_2.a.c, -42345i)) >> (~min(4294967295u, u_input.e) % 32u), var_1.a);
}

