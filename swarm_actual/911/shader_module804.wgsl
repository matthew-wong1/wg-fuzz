struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 8>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<f32>) -> u32 {
    global0 = array<vec4<i32>, 8>();
    let var_0 = reverseBits(-1i);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(1f)));
    var var_2 = Struct_2(1u, _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(-40659i, var_0, var_0), abs(vec3<i32>(var_0, -2557i, 2147483647i) & vec3<i32>(-14800i, -5142i, -2147483647i))), select(select(~vec3<i32>(var_0, var_0, 57937i), ~vec3<i32>(var_0, var_0, 0i), vec3<bool>(false, false, true)), countOneBits(-vec3<i32>(var_0, var_0, var_0)), vec3<bool>(true, true, true))), Struct_1(u_input.a.x, 2147483647i, arg_0.x));
    var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(arg_0.x))));
    return _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~u_input.a >> (~vec3<u32>(u_input.b, 15529u, 69669u) % vec3<u32>(32u)), u_input.a), u_input.a & vec3<u32>(select(var_2.a, var_2.a, true), u_input.c.x, ~35046u)), max(max(var_2.c.a, var_2.c.a), _wgslsmith_mult_u32(min(u_input.b, u_input.c.x), u_input.a.x)));
}

fn func_2(arg_0: i32) -> Struct_2 {
    var var_0 = Struct_2(~(~select(u_input.b, 5591u, true)) >> (~33096u % 32u), vec3<i32>(arg_0, reverseBits(arg_0), -13484i), Struct_1(_wgslsmith_add_u32(0u, ~u_input.c.x), 20620i, 1147f));
    var_0 = Struct_2(var_0.c.a, ~vec3<i32>(40277i, 1i, select(~29190i, 0i, any(vec4<bool>(false, true, true, true)))), Struct_1(u_input.c.x, countOneBits(23698i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.c.c)))));
    var var_1 = Struct_2(func_3(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.c, 269f, 1459f))))), vec3<i32>(min(countOneBits(arg_0) ^ var_0.b.x, _wgslsmith_mult_i32(2147483647i, arg_0)), 34574i, 0i >> (_wgslsmith_mod_u32(4294967295u, countOneBits(var_0.c.a)) % 32u)), Struct_1(u_input.b, _wgslsmith_sub_i32(min(var_0.c.b & arg_0, var_0.b.x), 2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.c.c))))));
    return Struct_2(~u_input.b, var_1.b, Struct_1(0u, max(var_1.b.x ^ _wgslsmith_div_i32(27328i, -27410i), firstTrailingBit(-2147483647i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1508f * var_0.c.c) * var_0.c.c) * _wgslsmith_f_op_f32(f32(-1f) * -177f))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: bool) -> vec3<i32> {
    var var_0 = 1u;
    var var_1 = select(vec2<bool>(any(select(vec3<bool>(true, arg_3, arg_3), !vec3<bool>(true, true, arg_3), vec3<bool>(arg_3, false, arg_3))), true), vec2<bool>(arg_3, !arg_3), false | arg_3);
    var var_2 = Struct_2(37717u, arg_0.b, func_2(~(-1i)).c);
    let var_3 = all(vec3<bool>(!var_1.x, true, _wgslsmith_dot_vec3_u32(select(u_input.c.wxz, u_input.c.zxw, vec3<bool>(arg_3, arg_3, true)), vec3<u32>(arg_0.c.a, var_2.c.a, var_2.c.a)) >= countOneBits(abs(1u))));
    let var_4 = false;
    return arg_2;
}

fn func_1() -> vec2<bool> {
    var var_0 = Struct_2(u_input.b, func_4(func_2(min(54654i, 1i)), func_2(-(~22011i)).c, abs(vec3<i32>(1i, 1i, 1i)), !any(vec3<bool>(false, false, false))), func_2(_wgslsmith_mod_i32(func_2(i32(-1i) * -24956i).c.b, reverseBits(69181i))).c);
    var_0 = Struct_2(var_0.c.a, var_0.b, var_0.c);
    var_0 = func_2(~var_0.c.b);
    global0 = array<vec4<i32>, 8>();
    var var_1 = var_0.c.c;
    return !vec2<bool>(any(vec2<bool>(273f >= var_0.c.c, true)), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false)))));
}

fn func_5(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: vec4<f32>, arg_3: Struct_1) -> StorageBuffer {
    let var_0 = -489f;
    var var_1 = firstLeadingBit(19379u | ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 0u), ~vec2<u32>(31608u, 61873u)));
    var var_2 = func_2(func_4(func_2(_wgslsmith_clamp_i32(_wgslsmith_add_i32(arg_3.b, 10412i), select(-9199i, 0i, true), ~arg_1.x)), Struct_1(~48759u, arg_3.b, -1795f), -(_wgslsmith_sub_vec3_i32(vec3<i32>(3517i, arg_1.x, 6478i), vec3<i32>(arg_3.b, -2147483647i, -7428i)) << (vec3<u32>(u_input.a.x, 54523u, u_input.a.x) % vec3<u32>(32u))), true).x).c;
    var_1 = 4294967295u >> ((abs(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(1u, u_input.a.x), _wgslsmith_add_u32(arg_3.a, u_input.c.x), abs(u_input.a.x))) & u_input.a.x) % 32u);
    global0 = array<vec4<i32>, 8>();
    return StorageBuffer(_wgslsmith_div_vec3_i32(vec3<i32>(~(arg_1.x | 2147483647i), ~(var_2.b >> (0u % 32u)), _wgslsmith_mod_i32(arg_3.b, var_2.b)), vec3<i32>(arg_1.x, _wgslsmith_clamp_i32(54640i, i32(-1i) * -1i, arg_3.b), var_2.b)), abs(_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(0i, arg_3.b), vec2<i32>(-2147483647i, 0i)), select(vec2<i32>(var_2.b, 1i), vec2<i32>(var_2.b, arg_3.b), true))) ^ func_2(~func_2(2147483647i).b.x).b.zx, vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, 1u, 0u, 11319u), ~vec4<u32>(var_2.a, 0u, 1u, u_input.a.x)), ~vec4<u32>(arg_3.a, arg_3.a, 12904u, 18400u)), 38537u, 1u, abs(_wgslsmith_mod_u32(_wgslsmith_div_u32(var_2.a, 4294967295u), 0u))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(select(select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), func_1(), true), !select(vec2<bool>(false, false), vec2<bool>(false, false), false), !any(vec2<bool>(false, false))), func_1(), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), vec2<i32>(select(14832i, -2147483647i, true), -2147483647i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1253f, 399f, -118f, 181f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(664f, 247f, 368f, 282f)))))))), func_2(_wgslsmith_dot_vec4_i32(~max(vec4<i32>(-2147483647i, -2147483647i, -1i, 17663i), global0[_wgslsmith_index_u32(u_input.b, 8u)]), vec4<i32>(1i, _wgslsmith_sub_i32(-31717i, -20669i), -1i, firstLeadingBit(22782i)))).c);
}

