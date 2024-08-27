struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec4<f32>,
    d: bool,
    e: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: f32,
}

struct Struct_3 {
    a: i32,
    b: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: vec2<i32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
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

var<private> global0: vec3<f32> = vec3<f32>(462f, -1760f, 448f);

var<private> global1: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(false, true, 855f), Struct_2(false, true, 1501f), Struct_2(false, true, -1791f), Struct_2(false, true, -415f), Struct_2(true, false, -227f), Struct_2(false, false, -1000f), Struct_2(false, false, -786f));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> bool {
    var var_0 = global0.x;
    global1 = array<Struct_2, 7>();
    var_0 = -1906f;
    let var_1 = Struct_2(true, false, -404f);
    var var_2 = var_1;
    return !var_2.a;
}

fn func_3(arg_0: Struct_5, arg_1: i32, arg_2: vec4<i32>) -> vec4<bool> {
    var var_0 = u_input.b;
    var var_1 = -reverseBits(firstLeadingBit(-2147483647i));
    let var_2 = Struct_5(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(u_input.c.x, 24751u, 4294967295u, 9515u)) >> (firstLeadingBit(~u_input.c) % vec4<u32>(32u)), u_input.c), countOneBits(abs(abs(arg_0.b))), Struct_3(-arg_2.x, global0.x));
    let var_3 = arg_0.c;
    var var_4 = _wgslsmith_f_op_f32(-arg_0.c.b);
    return select(vec4<bool>(true, any(vec3<bool>(true, true, true)), !(all(vec2<bool>(false, false)) & true), true || all(vec2<bool>(false, false))), !(!(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), true))), 1i != ~arg_2.x);
}

fn func_1() -> StorageBuffer {
    var var_0 = (_wgslsmith_mult_i32(~_wgslsmith_clamp_i32(2147483647i, u_input.b, u_input.a), -(~(-38185i))) == 1i) | func_2();
    var_0 = select(true, true, true);
    var var_1 = Struct_2(all(func_3(Struct_5(_wgslsmith_mult_u32(4221u, u_input.c.x), -vec2<i32>(u_input.a, u_input.b), Struct_3(43146i, 494f)), 18832i, -(vec4<i32>(u_input.a, u_input.b, 50768i, 35954i) | vec4<i32>(25252i, 1i, u_input.a, u_input.b)))), !(!(_wgslsmith_add_i32(1i, 1i) < _wgslsmith_add_i32(22561i, u_input.b))), _wgslsmith_f_op_f32(415f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(global0.x + -2340f))))));
    var var_2 = Struct_2(any(vec4<bool>(any(vec3<bool>(false, false, var_1.a)), func_2(), select(false, false, var_1.a), !var_1.b)) && true, var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-576f + -668f))))));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0.x), var_2.c, var_2.c))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1123f, var_2.c, _wgslsmith_f_op_f32(f32(-1f) * -1604f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 2144f, 1804f) + vec3<f32>(-672f, var_1.c, global0.x))), vec3<bool>(var_2.b, var_1.b, false && var_1.b))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_2.c, var_1.c, var_2.c))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c, global0.x, -1899f) - vec3<f32>(var_2.c, -2444f, var_2.c))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-505f, -2014f, global0.x))))))));
    return StorageBuffer(-503f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 7>();
    let x = u_input.a;
    s_output = func_1();
}

