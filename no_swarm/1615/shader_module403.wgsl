struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: Struct_2,
    d: Struct_1,
    e: f32,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: f32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(5722i);

var<private> global1: f32;

var<private> global2: f32;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2) -> bool {
    let var_0 = ~(~(-(~(u_input.e << (vec4<u32>(51155u, 1u, 5896u, 0u) % vec4<u32>(32u))))));
    var var_1 = true;
    global1 = -2308f;
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a.x, 1000f))));
    let var_2 = vec2<bool>(true, false);
    return var_2.x;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_4, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = Struct_4(!func_3(Struct_2(arg_0.a)), Struct_1(_wgslsmith_mod_i32(u_input.e.x, 2147483647i)), arg_1.c, ~min(arg_1.d, arg_1.d));
    var_0 = arg_1;
    let var_1 = u_input.e;
    global1 = arg_1.c;
    var var_2 = ~(reverseBits(vec2<u32>(arg_1.d.x, arg_2) | var_0.d) & _wgslsmith_mult_vec2_u32(var_0.d | ~vec2<u32>(1u, 4294967295u), ~vec2<u32>(var_0.d.x, arg_1.d.x)));
    return Struct_1(-arg_1.b.a);
}

fn func_1(arg_0: vec2<i32>) -> StorageBuffer {
    global0 = func_2(Struct_2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1161f, 375f, -352f)) - _wgslsmith_div_vec3_f32(vec3<f32>(2303f, -888f, 885f), vec3<f32>(-1354f, 1073f, 235f)))))), Struct_4(true, Struct_1(1i), _wgslsmith_f_op_f32(-1065f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1105f, -693f, true)) * _wgslsmith_div_f32(2541f, 1508f))), vec2<u32>(1u, 1u)), abs(~(~1u)), Struct_1(_wgslsmith_mod_i32(-34409i, _wgslsmith_mult_i32(u_input.c, ~global0.a))));
    let var_0 = true;
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(645f, -264f, 1029f)))))));
    var var_2 = any(vec4<bool>(true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_1.a.x)), _wgslsmith_f_op_f32(abs(var_1.a.x))) == _wgslsmith_div_f32(var_1.a.x, var_1.a.x), var_0, (select(true, var_0, var_0) || (var_0 && var_0)) & all(!vec4<bool>(var_0, var_0, var_0, var_0))));
    var_1 = Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.a), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)), _wgslsmith_f_op_f32(var_1.a.x - _wgslsmith_f_op_f32(-var_1.a.x)), -1178f)));
    return StorageBuffer(~vec2<i32>(28697i, 1i), -2228f, var_1.a.x, _wgslsmith_div_vec3_i32(~((u_input.e.zxx << (vec3<u32>(49711u, 11045u, 66066u) % vec3<u32>(32u))) >> (vec3<u32>(1u, 1u, 0u) % vec3<u32>(32u))), _wgslsmith_mult_vec3_i32(-vec3<i32>(-1i, 0i, global0.a), (vec3<i32>(arg_0.x, 1i, arg_0.x) & u_input.e.wwy) & vec3<i32>(-1i, global0.a, 51886i))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = 1000f;
    global0 = Struct_1(~global0.a);
    global2 = 880f;
    let var_0 = 69378u;
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1761f + 197f));
    let x = u_input.a;
    s_output = func_1(~((vec2<i32>(-1i) * -vec2<i32>(global0.a, global0.a)) << (firstTrailingBit(~vec2<u32>(var_0, 1u)) % vec2<u32>(32u))));
}

