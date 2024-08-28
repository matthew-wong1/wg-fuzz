struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec3<bool>,
    d: vec4<i32>,
    e: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: i32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 9>;

var<private> global1: array<u32, 5> = array<u32, 5>(25304u, 4371u, 0u, 4294967295u, 23501u);

var<private> global2: Struct_1 = Struct_1(1u, vec4<i32>(i32(-2147483648), -1i, 4734i, 2147483647i), vec3<bool>(false, true, false), vec4<i32>(28518i, 16236i, 0i, -36415i), 6397u);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1) -> bool {
    global0 = array<vec2<u32>, 9>();
    global2 = Struct_1(2065u, vec4<i32>(-1i) * -max(vec4<i32>(global2.d.x, global2.b.x, 6312i, global2.b.x), vec4<i32>(19222i, global2.b.x, arg_0.d.x, global2.b.x)), select(vec3<bool>(select(true, true, true), !all(vec2<bool>(arg_0.c.x, arg_0.c.x)), false), !(!arg_0.c), false), -global2.b, ~(~_wgslsmith_mult_u32(33556u, global2.e)));
    let var_0 = arg_0.c.x;
    let var_1 = Struct_2(_wgslsmith_clamp_vec4_i32(global2.d, -select(arg_0.d >> (vec4<u32>(1u, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0.e, 5u)], 5u)], arg_0.e) % vec4<u32>(32u)), ~vec4<i32>(-14004i, arg_0.d.x, -19903i, u_input.c.x), any(global2.c.yx)), global2.b), countOneBits(global1[_wgslsmith_index_u32(arg_0.e, 5u)]), arg_0);
    var var_2 = Struct_1(_wgslsmith_add_u32(~8595u, firstLeadingBit(arg_0.a | 6221u)), vec4<i32>(-_wgslsmith_dot_vec2_i32(var_1.c.b.xy, var_1.c.b.yx), i32(-1i) * -(~0i), -26594i, countOneBits(var_1.a.x)), vec3<bool>(all(select(vec4<bool>(arg_0.c.x, global2.c.x, false, var_0), select(vec4<bool>(global2.c.x, var_1.c.c.x, false, false), vec4<bool>(var_0, true, var_0, false), vec4<bool>(var_0, true, arg_0.c.x, global2.c.x)), select(vec4<bool>(var_0, global2.c.x, false, false), vec4<bool>(var_0, true, false, false), vec4<bool>(true, var_0, var_0, true)))), any(select(vec3<bool>(arg_0.c.x, arg_0.c.x, true), select(var_1.c.c, arg_0.c, arg_0.c.x), arg_0.c)), var_1.c.c.x), global2.d, ~_wgslsmith_div_u32(_wgslsmith_mult_u32(~4294967295u, 69394u >> (global2.a % 32u)), ~1u));
    return true;
}

fn func_2(arg_0: vec3<bool>, arg_1: f32, arg_2: bool, arg_3: vec3<i32>) -> vec2<bool> {
    let var_0 = arg_2;
    var var_1 = select(vec3<bool>(all(select(select(vec4<bool>(var_0, global2.c.x, true, var_0), vec4<bool>(var_0, true, arg_2, false), arg_0.x), !vec4<bool>(true, false, arg_2, false), select(vec4<bool>(var_0, arg_2, false, global2.c.x), vec4<bool>(true, false, var_0, arg_2), arg_2))), select(~42916u <= global1[_wgslsmith_index_u32(firstLeadingBit(global2.a), 5u)], func_3(Struct_1(global1[_wgslsmith_index_u32(36049u, 5u)], global2.b, arg_0, vec4<i32>(44101i, -1i, 46342i, arg_3.x), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(33089u, 5u)], 5u)], 5u)])), func_3(Struct_1(global2.e, vec4<i32>(1i, global2.b.x, -2147483647i, arg_3.x), arg_0, vec4<i32>(global2.d.x, 1i, global2.b.x, 1i), 59280u)) & arg_0.x), arg_0.x), select(arg_0, select(vec3<bool>(arg_0.x, true, true), arg_0, arg_0), true), !(!(!func_3(Struct_1(global1[_wgslsmith_index_u32(100663u, 5u)], u_input.b, vec3<bool>(global2.c.x, arg_0.x, arg_0.x), vec4<i32>(0i, arg_3.x, u_input.a, global2.b.x), global2.a)))));
    let var_2 = _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~(~_wgslsmith_clamp_u32(1u, 101160u, global2.a) << ((0u << (_wgslsmith_sub_u32(1u, global2.a) % 32u)) % 32u)), 5u)], 5u)], 4087u);
    let var_3 = ~(~countOneBits(countOneBits(abs(vec4<u32>(var_2, global2.e, var_2, 8096u)))));
    let var_4 = Struct_1(var_2, _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(-global2.b, global2.d, vec4<i32>(1i, global2.d.x, 18912i, 2147483647i)), ~(~vec4<i32>(global2.d.x, 37924i, -40115i, global2.d.x))) << (select(vec4<u32>(1u, _wgslsmith_add_u32(1u, global1[_wgslsmith_index_u32(34094u, 5u)]), var_2, 1u), ~countOneBits(vec4<u32>(var_3.x, var_3.x, 82606u, var_2)), arg_1 >= -1660f) % vec4<u32>(32u)), select(arg_0, global2.c, vec3<bool>(all(vec3<bool>(false, false, global2.c.x)), 4294967295u >= _wgslsmith_div_u32(global1[_wgslsmith_index_u32(var_2, 5u)], var_2), arg_0.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 1i, u_input.c.x, -31851i), _wgslsmith_mod_vec4_i32(countOneBits(reverseBits(vec4<i32>(arg_3.x, -5489i, 1i, -1i))), vec4<i32>(_wgslsmith_mod_i32(arg_3.x, -14578i), abs(u_input.a), ~0i, 55300i))), ~_wgslsmith_dot_vec3_u32(vec3<u32>(44223u, var_2, ~global2.a), ~_wgslsmith_add_vec3_u32(var_3.yww, vec3<u32>(var_3.x, var_2, 4294967295u))));
    return arg_0.yy;
}

fn func_1(arg_0: bool, arg_1: f32) -> Struct_2 {
    let var_0 = select(vec2<bool>(arg_1 >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1813f, arg_1))), !any(vec2<bool>(false, false))), vec2<bool>(!global2.c.x, !((-1i >= global2.b.x) | true)), func_2(global2.c, _wgslsmith_f_op_f32(f32(-1f) * -261f), arg_0, global2.b.xwx));
    let var_1 = Struct_3(Struct_2(reverseBits(global2.d), abs(~countOneBits(1u)), Struct_1(48673u, max(~vec4<i32>(14312i, 0i, 25888i, 0i), global2.b), select(select(global2.c, vec3<bool>(false, arg_0, var_0.x), vec3<bool>(false, false, var_0.x)), select(vec3<bool>(false, global2.c.x, false), vec3<bool>(arg_0, false, true), global2.c), false), u_input.b, _wgslsmith_add_u32(global1[_wgslsmith_index_u32(global2.a | 0u, 5u)], reverseBits(global2.a)))), select(func_2(global2.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 - arg_1) * _wgslsmith_f_op_f32(select(arg_1, -128f, global2.c.x))), global2.c.x, min(~vec3<i32>(global2.b.x, global2.b.x, -1i), vec3<i32>(2147483647i, u_input.a, u_input.a))), !(!global2.c.zx), vec2<bool>(select(true, true, false), false)), countOneBits(abs(~u_input.c.x)), _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_div_i32(36457i, _wgslsmith_add_i32(u_input.b.x, 17044i)), 1i), -u_input.b.xx | vec2<i32>(u_input.c.x, 1i), global2.b.zy));
    var var_2 = var_1.a.c;
    global2 = var_1.a.c;
    let var_3 = var_0.x;
    return Struct_2(abs(_wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(0i, 1i, global2.d.x, -22372i)), global2.d) & (_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, 40315i, -24926i, 1i), vec4<i32>(var_1.a.c.d.x, -1479i, -1991i, 1i)) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(global2.b.x, 50898i, var_1.a.c.d.x, 2147483647i), u_input.b))), abs(min(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(global2.e, 9u)], max(global0[_wgslsmith_index_u32(15207u, 9u)], vec2<u32>(1u, 0u))), 5u)], abs(_wgslsmith_div_u32(var_2.a, var_1.a.c.e)))), Struct_1(~(abs(70506u) | var_1.a.c.a), vec4<i32>(_wgslsmith_mult_i32(countOneBits(u_input.a), _wgslsmith_div_i32(var_2.b.x, global2.d.x)), 1i, ~min(-33103i, -2147483647i), u_input.c.x), !vec3<bool>(var_1.a.c.c.x, var_0.x, true), vec4<i32>(-1i) * -abs(var_2.b), 1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-326f - _wgslsmith_f_op_f32(-759f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1115f))));
    global0 = array<vec2<u32>, 9>();
    let var_1 = Struct_3(func_1(false, 507f), func_1(_wgslsmith_f_op_f32(f32(-1f) * -1030f) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(727f)) * -874f), _wgslsmith_f_op_f32(f32(-1f) * -971f)).c.c.xx, u_input.b.x, -(vec2<i32>(-1i) * -(vec2<i32>(3391i, global2.b.x) ^ u_input.c)));
    let var_2 = select(vec4<bool>(select(var_1.b.x, var_1.b.x, global2.c.x), true, func_1(func_2(func_1(var_1.b.x, 258f).c.c, 1323f, select(global2.c.x, global2.c.x, var_1.a.c.c.x), vec3<i32>(u_input.c.x, u_input.c.x, global2.d.x)).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1714f, -1832f)) * _wgslsmith_f_op_f32(abs(-995f)))).c.c.x, false), vec4<bool>(global2.c.x, all(select(vec4<bool>(false, false, global2.c.x, false), vec4<bool>(global2.c.x, var_1.a.c.c.x, false, global2.c.x), vec4<bool>(false, global2.c.x, var_1.b.x, var_1.b.x))), var_1.b.x, !(true == all(vec2<bool>(var_1.a.c.c.x, var_1.b.x)))), true);
    global1 = array<u32, 5>();
    let var_3 = _wgslsmith_div_f32(-1284f, _wgslsmith_f_op_f32(exp2(1f)));
    let var_4 = ~max(select(vec4<u32>(10200u, global2.a, global1[_wgslsmith_index_u32(global2.a, 5u)], global2.a), vec4<u32>(1u, 13869u, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 5u)], 5u)]), var_2) >> (_wgslsmith_add_vec4_u32(vec4<u32>(65264u, global1[_wgslsmith_index_u32(global2.a, 5u)], 0u, 41940u), vec4<u32>(0u, var_1.a.c.a, var_1.a.c.a, 8309u)) % vec4<u32>(32u)), ~vec4<u32>(73323u, global2.e, global1[_wgslsmith_index_u32(var_1.a.b, 5u)], var_1.a.c.a)) >> (vec4<u32>(0u, 1u, select(var_1.a.b, global2.e, true), ~global2.a) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_3), 226f, -201f) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2379f), _wgslsmith_f_op_f32(round(1313f)), 856f)))));
}

