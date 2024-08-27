struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec4<u32>,
    d: bool,
}

struct Struct_3 {
    a: i32,
    b: vec2<bool>,
    c: vec3<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(true, false, false));

var<private> global1: vec3<u32>;

var<private> global2: array<f32, 10> = array<f32, 10>(1364f, 479f, -610f, 744f, -638f, 1252f, 2220f, -424f, 305f, -487f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    global0 = arg_0;
    global0 = Struct_1(vec3<bool>(true, arg_0.a.x, any(vec4<bool>(arg_0.a.x, false, true, global0.a.x)) | false));
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global2[_wgslsmith_index_u32(0u, 10u)], 1800f))), vec2<f32>(1121f, global2[_wgslsmith_index_u32(u_input.e, 10u)])))), vec2<f32>(-159f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(119f - global2[_wgslsmith_index_u32(u_input.d.x, 10u)]), global2[_wgslsmith_index_u32(firstTrailingBit(1u), 10u)])))));
    global2 = array<f32, 10>();
    global2 = array<f32, 10>();
    return u_input.d.x;
}

fn func_2(arg_0: vec2<u32>) -> f32 {
    global1 = ~vec3<u32>(~func_3(Struct_1(vec3<bool>(false, true, global0.a.x))), 0u, ~arg_0.x);
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * global2[_wgslsmith_index_u32(arg_0.x, 10u)]) * 1f) * _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u << (u_input.e % 32u), 10u)] - global2[_wgslsmith_index_u32(func_3(Struct_1(global0.a)), 10u)])) * 622f) * _wgslsmith_f_op_f32(f32(-1f) * -1117f));
    let var_1 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(~50763u, max(u_input.e, u_input.e)), _wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.e, u_input.e, u_input.e), 2867u | u_input.e)), arg_0);
    global1 = ~(vec3<u32>(u_input.d.x, _wgslsmith_mult_u32(1u, var_1 | u_input.d.x), _wgslsmith_dot_vec4_u32(~vec4<u32>(global1.x, 102125u, 4294967295u, 4294967295u), _wgslsmith_mod_vec4_u32(vec4<u32>(global1.x, 0u, arg_0.x, var_1), vec4<u32>(var_1, arg_0.x, var_1, arg_0.x)))) << (u_input.d.ywz % vec3<u32>(32u)));
    global2 = array<f32, 10>();
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(var_0)), _wgslsmith_f_op_f32(f32(-1f) * -801f)));
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(func_2(vec2<u32>(1u, global1.x)));
    let var_1 = Struct_3(-40569i, !select(vec2<bool>(true, true), vec2<bool>(global0.a.x, true), !global0.a.x), ~u_input.b, Struct_1(!global0.a));
    let var_2 = vec4<f32>(_wgslsmith_div_f32(950f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.d.x, _wgslsmith_div_u32(0u, 46884u)), 10u)] - global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global1.x, u_input.d.x), 10u)])), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1762f), 638f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 10u)]) + _wgslsmith_f_op_f32(trunc(-1606f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2[_wgslsmith_index_u32(u_input.d.x, 10u)], global2[_wgslsmith_index_u32(global1.x, 10u)])) + _wgslsmith_f_op_f32(-732f + global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.e, u_input.d.x), 10u)])))));
    var var_3 = vec2<u32>(global1.x, func_3(var_1.d) | 8500u);
    let var_4 = select(select(select(!vec3<bool>(var_1.d.a.x, true, false), select(vec3<bool>(true, true, false), vec3<bool>(global0.a.x, true, true), !global0.a.x), select(vec3<bool>(var_1.d.a.x, global0.a.x, false), !vec3<bool>(var_1.d.a.x, false, var_1.b.x), false)), var_1.d.a, all(select(!global0.a.zx, var_1.d.a.yy, true))), var_1.d.a, vec3<bool>(true, any(select(vec3<bool>(false, false, global0.a.x), !var_1.d.a, select(vec3<bool>(var_1.b.x, false, global0.a.x), var_1.d.a, vec3<bool>(true, global0.a.x, false)))), false));
    return Struct_2(Struct_1(vec3<bool>(var_1.d.a.x, true, u_input.a.x != min(var_1.a, 2147483647i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2)), abs(abs(vec4<u32>(44879u, 0u, var_3.x, global1.x))) << (min(min(vec4<u32>(0u, 1u, 4294967295u, 1u), vec4<u32>(global1.x, global1.x, 5626u, var_3.x)) >> (firstTrailingBit(u_input.d) % vec4<u32>(32u)), ~u_input.d << (u_input.d % vec4<u32>(32u))) % vec4<u32>(32u)), var_1.b.x & any(!(!vec4<bool>(false, global0.a.x, true, var_4.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = Struct_3(u_input.a.x, vec2<bool>(var_0.d, all(var_0.a.a.yx)), _wgslsmith_div_vec3_i32(vec3<i32>(-17617i, firstLeadingBit(u_input.c.x) & _wgslsmith_sub_i32(-45029i, u_input.a.x), 2147483647i), _wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.a.x, u_input.c.x, -12065i) | u_input.a, u_input.b)), var_0.a);
    var var_2 = ~firstTrailingBit(~((4294967295u >> (var_0.c.x % 32u)) >> (u_input.e % 32u)));
    global0 = var_0.a;
    var var_3 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -597f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.b.x)) - global2[_wgslsmith_index_u32(reverseBits(~0u), 10u)]), var_0.b.x, var_0.b.x)));
    let var_4 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(func_1().c.x, var_0.c.x, 4215i);
}

