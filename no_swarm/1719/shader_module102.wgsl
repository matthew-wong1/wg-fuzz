struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 29>;

var<private> global1: array<vec4<u32>, 3>;

var<private> global2: array<vec2<bool>, 31> = array<vec2<bool>, 31>(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec4<bool> {
    let var_0 = vec3<bool>(abs(u_input.b.x) == 0u, (55770u > u_input.b.x) || true, global0[_wgslsmith_index_u32(4294967295u, 29u)]);
    var var_1 = countOneBits(vec2<i32>(u_input.a.x, -_wgslsmith_mult_i32(u_input.a.x, 2147483647i)) ^ ~u_input.a);
    var var_2 = Struct_1(global1[_wgslsmith_index_u32(~(~19880u), 3u)] >> (vec4<u32>(4294967295u, u_input.b.x, ~u_input.b.x, _wgslsmith_dot_vec4_u32(~global1[_wgslsmith_index_u32(u_input.b.x, 3u)], ~global1[_wgslsmith_index_u32(u_input.b.x, 3u)])) % vec4<u32>(32u)), vec4<bool>(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(406f)) * -966f) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-700f * -340f) + -132f), global0[_wgslsmith_index_u32(u_input.b.x, 29u)], all(!global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(36137u, 0u, 4294967295u)), 31u)])), -u_input.a);
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-151f)) + _wgslsmith_div_f32(-1075f, -778f)), -414f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-842f, -365f, true & var_2.b.x)))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-977f - 1012f), -128f))));
    var_2 = Struct_1(~reverseBits(var_2.a), var_2.b, var_2.c);
    return select(vec4<bool>(false, !select(!var_2.b.x, true, u_input.b.x >= 56449u), false, false), !var_2.b, true);
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<bool>) -> Struct_1 {
    global2 = array<vec2<bool>, 31>();
    global1 = array<vec4<u32>, 3>();
    global2 = array<vec2<bool>, 31>();
    var var_0 = u_input.a;
    let var_1 = abs(vec4<u32>(_wgslsmith_mod_u32(u_input.b.x, 4294967295u), u_input.b.x, u_input.b.x, 0u | _wgslsmith_sub_u32(u_input.b.x, firstLeadingBit(u_input.b.x))));
    return Struct_1(vec4<u32>(0u, var_1.x, var_1.x, _wgslsmith_sub_u32(5524u, u_input.b.x) & 0u), func_3(), countOneBits(u_input.a << (reverseBits(u_input.b.zz) % vec2<u32>(32u))));
}

fn func_1() -> Struct_1 {
    var var_0 = func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1541f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1396f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -599f)))), vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 29u)]));
    let var_1 = Struct_1(func_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(314f, 709f, -1000f))), vec3<f32>(-172f, _wgslsmith_div_f32(1331f, -378f), _wgslsmith_f_op_f32(450f - -959f)))), func_3().wx).a, vec4<bool>(true, false, global0[_wgslsmith_index_u32(0u, 29u)], !(!(!var_0.b.x))), vec2<i32>(-(~reverseBits(var_0.c.x)), _wgslsmith_sub_i32(firstLeadingBit(-var_0.c.x), _wgslsmith_mod_i32(~u_input.a.x, var_0.c.x << (105683u % 32u)))));
    var var_2 = var_1.c.x;
    global1 = array<vec4<u32>, 3>();
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_f32(-327f - -777f))));
    return func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(-1901f)), -939f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(719f, -144f)))))), func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-794f, 1530f, 609f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(466f, -840f, -124f) - vec3<f32>(-412f, -682f, 1140f)))), vec2<bool>(false, !var_0.b.x)).b.xz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~countOneBits(u_input.b);
    let var_1 = 571f;
    let var_2 = func_1();
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1, -214f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + var_1))), _wgslsmith_f_op_f32(min(139f, -1000f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(564f)), _wgslsmith_f_op_f32(floor(-931f)), true))))));
    var var_4 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(218f, _wgslsmith_f_op_f32(sign(var_1))))))), var_1));
    var var_5 = max(max(-vec4<i32>(max(-13203i, 1i), 32588i, _wgslsmith_clamp_i32(-45102i, u_input.a.x, 2147483647i), var_2.c.x), abs(abs(~vec4<i32>(-2147483647i, 2147483647i, var_2.c.x, u_input.a.x)))), vec4<i32>(countOneBits(-firstLeadingBit(u_input.a.x)), var_2.c.x << ((50349u >> (select(1u, var_2.a.x, true) % 32u)) % 32u), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, var_2.c.x, u_input.a.x), vec3<i32>(47369i, var_2.c.x, var_2.c.x)), -vec3<i32>(u_input.a.x, 2147483647i, var_2.c.x), abs(vec3<i32>(-29138i, var_2.c.x, u_input.a.x))), select(select(vec3<i32>(var_2.c.x, var_2.c.x, u_input.a.x), vec3<i32>(2147483647i, -43610i, -1i), vec3<bool>(true, global0[_wgslsmith_index_u32(var_0.x, 29u)], global0[_wgslsmith_index_u32(4294967295u, 29u)])), ~vec3<i32>(-18035i, -22127i, 1i), var_2.b.yzy)), func_1().c.x));
    global1 = array<vec4<u32>, 3>();
    var var_6 = vec3<bool>(true, all(!vec4<bool>(false | global0[_wgslsmith_index_u32(var_0.x, 29u)], false, var_2.b.x, true)), var_2.b.x);
    var var_7 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.zy, ~var_0.x, vec2<i32>(-19982i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(var_2.c.x, var_5.x, var_2.c.x, -15970i), vec4<i32>(-u_input.a.x, _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, var_7.c.x), 18897i, countOneBits(0i)))), func_2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-224f, var_3.x, -1000f) * vec3<f32>(-349f, var_1, -676f))))), global2[_wgslsmith_index_u32(~var_7.a.x, 31u)]).a.wz);
}

