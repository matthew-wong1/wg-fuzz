struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: vec3<i32>,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: f32,
    d: i32,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
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

var<private> global0: array<vec2<i32>, 1> = array<vec2<i32>, 1>(vec2<i32>(0i, -1i));

var<private> global1: bool;

var<private> global2: array<vec3<bool>, 14>;

var<private> global3: u32;

var<private> global4: u32;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3() -> vec4<f32> {
    let var_0 = u_input.b;
    let var_1 = Struct_2(u_input.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-665f, 1285f))))))), min(vec3<i32>(-1i, u_input.c, select(0i, 34332i, false)), firstLeadingBit(vec3<i32>(u_input.a, reverseBits(11178i), -u_input.c))), !(!vec4<bool>(any(vec4<bool>(true, true, true, false)), true, true, true)), Struct_1(firstLeadingBit(~(vec3<i32>(u_input.c, u_input.a, 4776i) >> (vec3<u32>(var_0, 32823u, var_0) % vec3<u32>(32u))))));
    let var_2 = false;
    let var_3 = _wgslsmith_f_op_f32(select(var_1.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-2704f)) + var_1.b))), any(select(global2[_wgslsmith_index_u32(1u & _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 61376u), vec2<u32>(0u, u_input.b)), 14u)], !var_1.d.wzw, var_2))));
    global0 = array<vec2<i32>, 1>();
    return _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_3, var_3, -770f, var_1.b)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, var_3, 1000f, 1414f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_3, 1848f, 666f, 409f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_3, var_3, var_3, -1584f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1337f, 302f, -386f, -1197f))))))));
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: vec3<bool>) -> u32 {
    let var_0 = Struct_1(~(~vec3<i32>(u_input.a, u_input.c, u_input.a)) >> (_wgslsmith_add_vec3_u32(~min(vec3<u32>(1353u, 14528u, u_input.b), vec3<u32>(u_input.b, 0u, 0u)), abs(~vec3<u32>(52420u, arg_1, u_input.b))) % vec3<u32>(32u)));
    var var_1 = Struct_4(1u, ~u_input.b, var_0, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, arg_1), _wgslsmith_mod_vec2_u32(vec2<u32>(firstTrailingBit(33255u), abs(23837u)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(0u, 59080u)) ^ abs(vec2<u32>(4294967295u, u_input.b)))), Struct_1(var_0.a));
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_3()), vec4<f32>(-950f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(1000f, -560f)), _wgslsmith_f_op_f32(select(306f, 1402f, arg_2.x)), all(vec4<bool>(true, true, arg_0, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1151f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1306f + -390f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-198f, 1905f))))))), !(!select(!vec4<bool>(false, arg_0, arg_2.x, arg_2.x), !vec4<bool>(false, true, arg_0, arg_2.x), vec4<bool>(false, false, true, arg_0)))));
    global1 = !all(vec3<bool>(var_2.x == 365f, arg_2.x, !(!arg_2.x)));
    var var_3 = Struct_3(vec2<f32>(-1556f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2.x)) * _wgslsmith_f_op_f32(-var_2.x)), -2192f)), Struct_2(~max(_wgslsmith_clamp_u32(u_input.b, 62038u, var_1.b), _wgslsmith_mod_u32(u_input.b, u_input.b)), var_2.x, max(_wgslsmith_mod_vec3_i32(~vec3<i32>(0i, u_input.c, 2147483647i), vec3<i32>(var_0.a.x, 0i, 21247i)), firstLeadingBit(vec3<i32>(var_0.a.x, 1i, 11543i))), select(select(!vec4<bool>(arg_0, arg_0, arg_0, true), vec4<bool>(false, arg_0, false, arg_0), vec4<bool>(false, arg_0, false, arg_2.x)), !vec4<bool>(arg_2.x, arg_2.x, arg_0, arg_2.x), !(!vec4<bool>(arg_2.x, arg_2.x, arg_0, true))), var_0), -372f, -15872i);
    return 4294967295u;
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = u_input.b;
    global4 = ~((4294967295u | func_2(true, var_0, vec3<bool>(false, true, arg_0))) << (u_input.b % 32u));
    var var_1 = u_input.c ^ u_input.c;
    var var_2 = Struct_2(4294967295u, -381f, _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c, u_input.a, u_input.c) & vec3<i32>(u_input.c, -23480i, 1i), min(vec3<i32>(2147483647i, -633i, 2147483647i), vec3<i32>(1i, 6947i, u_input.c)), vec3<i32>(1i, u_input.c, -2468i)), max(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(-4666i, -1i, u_input.a)), countOneBits(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.c), vec3<i32>(19686i, u_input.c, -16660i)))) >> (countOneBits(~_wgslsmith_mod_vec3_u32(vec3<u32>(var_0, 114746u, 5151u), vec3<u32>(4294967295u, 25718u, var_0))) % vec3<u32>(32u)), select(!select(vec4<bool>(true, arg_0, arg_0, true), select(vec4<bool>(true, true, true, arg_0), vec4<bool>(true, false, true, arg_0), arg_0), true), vec4<bool>(true, true, arg_0, !arg_0), vec4<bool>(true, true, false, arg_0)), Struct_1(select(~vec3<i32>(11180i, u_input.c, u_input.c), vec3<i32>(u_input.a, u_input.c, 0i) >> (vec3<u32>(28180u, var_0, var_0) % vec3<u32>(32u)), arg_0) & _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, -2147483647i, u_input.a), vec3<i32>(2147483647i, 15325i, -6656i)), firstLeadingBit(vec3<i32>(u_input.c, u_input.a, -2147483647i)))));
    let var_3 = var_2.e;
    return Struct_1(vec3<i32>(_wgslsmith_sub_i32(-52862i, ~var_3.a.x), u_input.c | 1i, _wgslsmith_sub_i32(-2147483647i, _wgslsmith_add_i32(-26019i, u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<bool>, 14>();
    global1 = _wgslsmith_f_op_f32(trunc(-1000f)) <= _wgslsmith_f_op_f32(f32(-1f) * -333f);
    global0 = array<vec2<i32>, 1>();
    var var_0 = func_1(!select(select(true, true, true), true, select(all(vec2<bool>(true, false)), true, all(global2[_wgslsmith_index_u32(u_input.b, 14u)]))));
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-775f, _wgslsmith_div_f32(177f, 108f)), -1136f)))));
    var_0 = Struct_1(_wgslsmith_add_vec3_i32(var_0.a, var_0.a));
    var var_2 = -(~(-countOneBits(i32(-1i) * -45243i)));
    var_0 = func_1(select(any(vec4<bool>(true, true, true, true)) || true, true, true));
    let var_3 = -310f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(var_3)));
}

