struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-885f, 1838f, 437f);

var<private> global1: i32;

var<private> global2: array<vec4<i32>, 29>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_2(arg_0: vec3<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(select(1180f, global0.x, !(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(global0.x, global0.x)))) <= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.x))))));
    let var_1 = u_input.d;
    global1 = 1i;
    global1 = u_input.b.x;
    var var_2 = Struct_4(9573u);
    return Struct_2(!all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true))), Struct_1(_wgslsmith_div_i32(-1i << (~u_input.c.x % 32u), _wgslsmith_div_i32(~var_1.x, 15626i)), global0.x), -abs(0i));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec4<i32>, arg_3: f32) -> Struct_4 {
    global0 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-273f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3 * 791f) - _wgslsmith_f_op_f32(-global0.x))), arg_3, _wgslsmith_f_op_f32(min(arg_0.b.b, global0.x)))));
    global1 = _wgslsmith_dot_vec4_i32(~global2[_wgslsmith_index_u32(abs(7955u), 29u)], global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 0u), ~vec2<u32>(36683u, u_input.c.x)), _wgslsmith_dot_vec3_u32(u_input.a, _wgslsmith_div_vec3_u32(u_input.c, u_input.c))) & 37035u, 29u)]);
    var var_0 = arg_0;
    return Struct_4(87504u);
}

fn func_1(arg_0: f32, arg_1: vec2<u32>) -> bool {
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -1629f, arg_0)))), vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_div_f32(-795f, -820f), _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-arg_0))))) * vec3<f32>(-1655f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.x, arg_0))), 1000f));
    var var_0 = func_3(func_2(~abs(u_input.a)), abs(~vec3<i32>(u_input.b.x, u_input.b.x ^ u_input.b.x, 29540i)), global2[_wgslsmith_index_u32(max(arg_1.x, 0u), 29u)], _wgslsmith_f_op_f32(step(886f, 399f)));
    let var_1 = Struct_2(all(vec2<bool>(!func_2(u_input.c).a, !func_2(vec3<u32>(4294967295u, u_input.a.x, 62382u)).a)), Struct_1(u_input.b.x | (i32(-1i) * -1i), global0.x), u_input.d.x);
    global1 = 1i;
    var_0 = func_3(var_1, -_wgslsmith_add_vec3_i32(abs(vec3<i32>(var_1.c, 16944i, 25908i)), vec3<i32>(u_input.b.x, -6980i, 9403i) << (~vec3<u32>(var_0.a, arg_1.x, var_0.a) % vec3<u32>(32u))), global2[_wgslsmith_index_u32(8096u, 29u)], global0.x);
    return any(select(!(!vec2<bool>(true, var_1.a)), !vec2<bool>(var_1.a, true), !var_1.a)) && true;
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: u32, arg_3: bool) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1032f + 817f), _wgslsmith_f_op_f32(abs(global0.x)), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(546f, -270f, 1003f, 439f))))))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1056f, global0.x, global0.x, global0.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(393f, 2192f, global0.x, global0.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(sign(global0.x)))))));
    let var_1 = _wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, 21621u), u_input.a)), select(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c.x, 0u, u_input.a.x), u_input.c), u_input.c, select(vec3<bool>(false, arg_1.x, arg_3), vec3<bool>(arg_3, true, arg_3), arg_1.x))), abs(u_input.a));
    let var_2 = _wgslsmith_div_u32(arg_2, firstTrailingBit(12543u));
    var var_3 = vec3<bool>(true, all(arg_1), arg_3);
    var var_4 = min(0u, ~_wgslsmith_dot_vec3_u32(u_input.c, min(vec3<u32>(u_input.c.x, 0u, var_2), ~u_input.a)));
    return func_2(vec3<u32>(arg_2, ~(~_wgslsmith_sub_u32(var_2, 4294967295u)), firstLeadingBit(var_2)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(min(_wgslsmith_div_u32(1u, u_input.a.x), 3026u), u_input.c.x), 29u)], vec2<bool>(any(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), 482f >= global0.x)), any(vec4<bool>(true, func_1(-641f, vec2<u32>(4294967295u, 21706u)), false, true))), ~_wgslsmith_div_u32(firstTrailingBit(u_input.a.x) >> (0u % 32u), (90714u >> (u_input.a.x % 32u)) & u_input.a.x), true);
    let var_1 = Struct_3(Struct_2((false && var_0.a) == false, func_4(select(abs(global2[_wgslsmith_index_u32(u_input.a.x, 29u)]), min(global2[_wgslsmith_index_u32(u_input.a.x, 29u)], vec4<i32>(var_0.c, u_input.b.x, u_input.b.x, u_input.d.x)), !vec4<bool>(true, var_0.a, var_0.a, false)), vec2<bool>(var_0.a, false), 0u, true).b, firstTrailingBit(-2147483647i >> (func_3(Struct_2(var_0.a, var_0.b, 2147483647i), vec3<i32>(u_input.d.x, -1i, -21410i), vec4<i32>(var_0.b.a, u_input.b.x, u_input.b.x, -2147483647i), 253f).a % 32u))), u_input.b);
    var var_2 = ~31590u;
    let var_3 = Struct_2(!any(vec4<bool>(true, var_0.a, !var_0.a, true)), Struct_1(var_0.c, global0.x), 2147483647i);
    var var_4 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1911f, var_0.b.b, -666f, -1204f) + vec4<f32>(var_1.a.b.b, 470f, 413f, var_0.b.b))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1700f, -454f, 624f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(round(global0.x)), any(vec4<bool>(false, var_0.a, var_3.a, var_3.a))))) * vec4<f32>(_wgslsmith_f_op_f32(global0.x * -578f), _wgslsmith_f_op_f32(var_1.a.b.b * var_0.b.b), _wgslsmith_f_op_f32(-var_1.a.b.b), _wgslsmith_f_op_f32(-global0.x))));
    var var_5 = func_3(Struct_2(var_3.a, func_2(u_input.c).b, 2147483647i), vec3<i32>(_wgslsmith_div_i32(5694i, var_3.c), i32(-1i) * -(69093i << (0u % 32u)), 1i), vec4<i32>(var_3.c, ~13460i, _wgslsmith_add_i32(0i, -abs(-18619i)), firstLeadingBit(74895i) | u_input.d.x), -748f);
    global1 = ~_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.c, u_input.d.x, 12123i), _wgslsmith_mult_vec3_i32(vec3<i32>(0i, 2147483647i, var_0.b.a), vec3<i32>(var_1.b.x, var_0.c, 14721i))), vec3<i32>(26815i, var_1.b.x, var_1.a.b.a)) & -(~12115i);
    var var_6 = true;
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<u32>(20357u, 0u, 6289u & var_5.a, 18517u) | ~(vec4<u32>(u_input.c.x, var_5.a, var_5.a, 47782u) >> (vec4<u32>(1u, 1u, 16115u, var_5.a) % vec4<u32>(32u)))));
}

