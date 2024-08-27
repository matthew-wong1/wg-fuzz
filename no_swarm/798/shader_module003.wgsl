struct Struct_1 {
    a: vec4<bool>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<u32>,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: bool,
    b: vec3<i32>,
    c: Struct_3,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec2<u32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: f32, arg_3: vec3<u32>) -> bool {
    var var_0 = arg_1.x;
    let var_1 = Struct_3(vec4<bool>(true, any(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true))), all(vec4<bool>(true, true, true, true)), false));
    let var_2 = u_input.b.x;
    return false;
}

fn func_2() -> Struct_1 {
    global1 = _wgslsmith_sub_vec2_u32(u_input.a.xx, ~(~u_input.a.zy));
    global0 = _wgslsmith_f_op_f32(240f * -331f);
    let var_0 = ~1u;
    let var_1 = !all(vec3<bool>(func_3(vec4<u32>(global1.x, global1.x, global1.x, 38011u), countOneBits(vec2<i32>(2147483647i, u_input.b.x)), 644f, _wgslsmith_mult_vec3_u32(u_input.a.zzy, u_input.a.www)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false))), func_3(u_input.a, u_input.b, 796f, u_input.a.zxw) | (u_input.b.x > u_input.b.x)));
    var var_2 = Struct_3(!vec4<bool>(any(select(vec3<bool>(var_1, false, var_1), vec3<bool>(var_1, var_1, true), vec3<bool>(var_1, var_1, false))), true, any(select(vec2<bool>(false, false), vec2<bool>(var_1, var_1), vec2<bool>(true, var_1))), false));
    return Struct_1(var_2.a, u_input.a);
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: i32, arg_3: i32) -> vec2<u32> {
    let var_0 = Struct_2(abs(-4692i), func_2(), func_2().b.yw, -(-countOneBits(vec2<i32>(arg_3, arg_3)) & vec2<i32>(~arg_2, -u_input.b.x)), func_2());
    var var_1 = reverseBits(var_0.b.b.xz);
    let var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-1762f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(961f * -730f)))))));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-562f - _wgslsmith_f_op_f32(-var_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2))))));
    global1 = u_input.a.zz;
    return arg_0.yy;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_add_vec2_u32(u_input.a.zx, func_1(~_wgslsmith_add_vec3_u32(max(u_input.a.xzw, vec3<u32>(u_input.a.x, 0u, u_input.a.x)), vec3<u32>(u_input.a.x, 0u, 16943u)), Struct_3(vec4<bool>(any(vec3<bool>(true, false, true)), true, true, any(vec4<bool>(false, true, false, false)))), _wgslsmith_sub_i32(u_input.b.x, 62766i), u_input.b.x));
    var var_0 = Struct_4(true, abs(vec3<i32>(1i, u_input.b.x, -6234i)), Struct_3(func_2().a), func_2());
    let var_1 = Struct_4(!(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -502f), _wgslsmith_f_op_f32(trunc(276f))) <= _wgslsmith_f_op_f32(-623f - -778f)), abs(var_0.b), Struct_3(vec4<bool>(func_3(vec4<u32>(u_input.a.x, u_input.a.x, 1u, var_0.d.b.x), var_0.b.yx & vec2<i32>(var_0.b.x, 25966i), 1f, min(u_input.a.yzw, u_input.a.wwx)), true, all(vec4<bool>(false, true, var_0.d.a.x, true)), var_0.c.a.x)), func_2());
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(395f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-245f * 1417f), -841f)))) * _wgslsmith_f_op_f32(953f + -1487f));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1000f)))) - _wgslsmith_div_vec2_f32(vec2<f32>(-530f, -625f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1094f, -109f))))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2447f, -131f)))) - vec2<f32>(-214f, _wgslsmith_f_op_f32(f32(-1f) * -354f))))));
    let var_4 = Struct_2(-1i, var_0.d, ~func_1(var_0.d.b.zxx, Struct_3(var_0.d.a), -var_0.b.x << ((global1.x >> (u_input.a.x % 32u)) % 32u), ~min(var_0.b.x, 2147483647i)), ~var_0.b.zx, var_1.d);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1155f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x - 143f)))));
    var var_5 = var_4.b;
    let var_6 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, var_3.x, 2100f, -470f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, var_3.x, -198f, 529f)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(u_input.a.zzw, Struct_3(!var_5.a), 26073i, -2147483647i).x, _wgslsmith_add_i32(var_4.a, u_input.b.x), 0u, global1.x, reverseBits(_wgslsmith_add_vec4_i32(~vec4<i32>(0i, -1843i, 7512i, 1i) >> (select(var_4.b.b, vec4<u32>(3323u, var_0.d.b.x, 0u, var_5.b.x), vec4<bool>(true, false, false, true)) % vec4<u32>(32u)), ~(vec4<i32>(-1i, var_1.b.x, -6995i, u_input.b.x) << (vec4<u32>(44781u, var_1.d.b.x, var_4.b.b.x, var_0.d.b.x) % vec4<u32>(32u))))));
}

