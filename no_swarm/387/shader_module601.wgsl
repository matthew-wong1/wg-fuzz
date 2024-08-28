struct Struct_1 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: i32;

var<private> global2: bool;

var<private> global3: array<bool, 6> = array<bool, 6>(true, true, false, true, false, true);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: u32, arg_2: vec2<bool>) -> f32 {
    let var_0 = 4294967295u;
    global0 = 1f < _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-112f, 2106f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-572f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1883f, _wgslsmith_f_op_f32(max(-1099f, -1044f)))))));
    var var_1 = ~39196u;
    global1 = -3311i;
    let var_2 = Struct_3(u_input.e.yy, false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-239f, 430f)) + _wgslsmith_f_op_f32(-168f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-342f + 557f) * _wgslsmith_f_op_f32(select(1000f, 717f, false))))));
    return _wgslsmith_f_op_f32(var_2.c + 1477f);
}

fn func_2(arg_0: Struct_2) -> vec2<f32> {
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(894f, -381f), vec2<f32>(318f, arg_0.a.d), true)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-910f, 303f)))))), vec2<f32>(_wgslsmith_f_op_f32(func_3(u_input.b, ~u_input.b.x, vec2<bool>(true, 2147483647i > arg_0.a.b.x))), 1000f));
}

fn func_1() -> vec2<f32> {
    let var_0 = Struct_3(_wgslsmith_add_vec2_u32(vec2<u32>(~_wgslsmith_sub_u32(0u, 0u), u_input.c.x), vec2<u32>(0u, _wgslsmith_add_u32(countOneBits(1u), ~1u))), false, -471f);
    let var_1 = var_0.a.x;
    let var_2 = vec3<i32>(~(-16248i), max(max(firstTrailingBit(1i), min(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 0i), vec2<i32>(-1i, 16582i)), _wgslsmith_mult_i32(-9307i, 0i))), 1i), _wgslsmith_sub_i32(i32(-1i) * -firstTrailingBit(-50745i), -2147483647i));
    let var_3 = 1u > ~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(abs(u_input.b.wzx), vec3<u32>(1u, var_0.a.x, u_input.b.x)), var_1);
    let var_4 = 13447i;
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(var_0.c, 1000f)), _wgslsmith_f_op_f32(step(var_0.c, var_0.c))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(func_2(Struct_2(Struct_1(vec2<u32>(13390u, 0u), vec4<i32>(1i, var_4, 0i, var_4), -2147483647i, var_0.c)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(197f, 989f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(253f, 465f))) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1161f, -685f), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1832f, 435f), vec2<f32>(334f, 911f)))))), _wgslsmith_f_op_vec2_f32(func_1()))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(817f, -515f))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(690f, -227f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 243f)))))));
    let var_1 = Struct_1(_wgslsmith_add_vec2_u32(u_input.e.wz >> (u_input.b.xx % vec2<u32>(32u)), countOneBits(vec2<u32>(~u_input.a, max(76079u, 8268u)))), vec4<i32>(~1i, reverseBits(reverseBits(2147483647i)), 1i, -(~(-14416i))) >> (vec4<u32>(min(u_input.a, ~1u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 35939u), u_input.c.zz), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(43485u, 8327u), u_input.b.wx), u_input.e.x), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.b.xx, u_input.c.zw), ~vec2<u32>(u_input.d, u_input.b.x))) % vec4<u32>(32u)), 1i, _wgslsmith_f_op_vec2_f32(func_1()).x);
    let x = u_input.a;
    s_output = StorageBuffer(max(40259i, ~_wgslsmith_mult_i32(var_1.b.x, 0i) ^ firstTrailingBit(var_1.b.x & -10793i)), _wgslsmith_mult_i32(_wgslsmith_add_i32(45913i, var_1.c ^ -2147483647i), _wgslsmith_sub_i32(1i, ~var_1.c)) << (101629u % 32u), 0i, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_vec2_f32(func_1()).x, _wgslsmith_f_op_f32(1256f - _wgslsmith_f_op_f32(max(-293f, var_0.x)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1000f + -483f), var_1.d))));
}

