struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: f32,
    d: vec2<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(i32(-2147483648), 0i, -9940i, -1i);

var<private> global1: i32 = 29692i;

var<private> global2: array<vec4<i32>, 18>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: f32, arg_1: bool) -> Struct_1 {
    return Struct_1(vec2<i32>(1i, ~(~countOneBits(u_input.e.x))));
}

fn func_3(arg_0: f32, arg_1: vec2<f32>, arg_2: vec4<bool>, arg_3: vec3<bool>) -> u32 {
    global0 = -vec4<i32>(1i, ~_wgslsmith_add_i32(-1i, 1i) ^ firstTrailingBit(~(-37168i)), u_input.e.x, u_input.a);
    let var_0 = ~(-select(vec3<i32>(1i, u_input.b.x, _wgslsmith_div_i32(global0.x, global0.x)), ~reverseBits(vec3<i32>(2147483647i, global0.x, global0.x)), arg_2.yyy));
    global0 = vec4<i32>(countOneBits(-1i), u_input.e.x, i32(-1i) * -_wgslsmith_clamp_i32(_wgslsmith_mult_i32(-1i, u_input.e.x), ~var_0.x, var_0.x), -27319i);
    var var_1 = Struct_3(_wgslsmith_div_f32(1612f, 1103f), u_input.d, -u_input.e, vec3<u32>(u_input.c >> (_wgslsmith_dot_vec2_u32(u_input.d.yx, vec2<u32>(u_input.c, 1u)) % 32u), _wgslsmith_dot_vec4_u32(~vec4<u32>(71162u, u_input.c, 20226u, 12647u), ~vec4<u32>(37201u, u_input.c, 4294967295u, u_input.c) & min(vec4<u32>(u_input.d.x, u_input.c, u_input.c, u_input.d.x), vec4<u32>(u_input.d.x, 22101u, u_input.d.x, u_input.c))), u_input.d.x));
    var var_2 = arg_2.x;
    return u_input.c;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: u32) -> Struct_2 {
    global2 = array<vec4<i32>, 18>();
    global2 = array<vec4<i32>, 18>();
    let var_0 = arg_1;
    global1 = min(u_input.e.x, func_2(_wgslsmith_f_op_f32(floor(310f)), -153f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -637f) - _wgslsmith_f_op_f32(select(155f, 500f, false)))).a.x);
    let var_1 = var_0;
    return Struct_2(Struct_1(global0.yz), Struct_1(~vec2<i32>(firstLeadingBit(-2877i), u_input.b.x | 2147483647i)), Struct_1(abs(-(~vec2<i32>(var_1.a.x, -27681i)))));
}

fn func_1(arg_0: i32) -> Struct_2 {
    var var_0 = u_input.d.zy;
    let var_1 = _wgslsmith_f_op_f32(1120f + _wgslsmith_f_op_f32(f32(-1f) * -626f));
    var var_2 = func_4(var_0.x, func_2(_wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 + var_1))), _wgslsmith_mod_i32(-73250i, arg_0) >= _wgslsmith_add_i32(arg_0, reverseBits(global0.x))), _wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.c, _wgslsmith_sub_u32(u_input.d.x, var_0.x), 1u), vec3<u32>(52629u, ~func_3(var_1, vec2<f32>(-1644f, 447f), vec4<bool>(true, true, false, false), vec3<bool>(true, false, true)), min(~4294967295u, u_input.c))));
    var var_3 = true;
    let var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(var_1)), _wgslsmith_f_op_f32(-var_1), -1000f, var_1));
    return func_4(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(var_0.x, 42311u) >> (vec2<u32>(90576u, 0u) % vec2<u32>(32u))), u_input.d.xx), func_4(86897u, func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.x) - _wgslsmith_f_op_f32(ceil(var_4.x))), any(vec4<bool>(true, true, true, true))), 1u).c, countOneBits(firstLeadingBit(~u_input.d.x)));
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1) -> f32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-405f)))) * _wgslsmith_f_op_f32(f32(-1f) * -551f)), -1033f);
    var var_1 = true;
    global1 = arg_2.a.x;
    let var_2 = ~u_input.e.x;
    var var_3 = -reverseBits(countOneBits(_wgslsmith_mod_i32(65276i, min(0i, arg_2.a.x))));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-472f)), var_0));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-234f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(func_1(-global0.x), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, global0.x, global0.x, 21281i), vec4<i32>(global0.x, 1i, -294i, 47248i))), func_1(2147483647i).b))));
    var var_1 = vec3<bool>(true | any(vec3<bool>(true, u_input.a < u_input.b.x, true)), select((-1i & ~u_input.b.x) <= ~(~global0.x), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec3<bool>(true, true, false)))), false), !all(vec3<bool>(true, true, false)));
    let var_2 = true;
    let var_3 = _wgslsmith_f_op_f32(-1264f - 472f);
    let var_4 = u_input.b.xyw;
    let x = u_input.a;
    s_output = StorageBuffer(var_4, u_input.c, var_3, -vec2<i32>(var_4.x, -(u_input.b.x ^ -10603i)), -firstTrailingBit((global2[_wgslsmith_index_u32(u_input.d.x, 18u)] << (vec4<u32>(49113u, u_input.d.x, 0u, 4294967295u) % vec4<u32>(32u))) << (~vec4<u32>(u_input.c, u_input.c, u_input.c, 29111u) % vec4<u32>(32u))));
}

