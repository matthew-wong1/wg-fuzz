struct Struct_1 {
    a: u32,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 11> = array<i32, 11>(2147483647i, -1i, i32(-2147483648), 24288i, i32(-2147483648), -68787i, -39700i, 1i, -25588i, 0i, 41584i);

var<private> global1: vec3<i32> = vec3<i32>(0i, 1i, 1i);

var<private> global2: Struct_1 = Struct_1(1478u, false, 4294967295u);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2() -> vec4<bool> {
    var var_0 = Struct_1(65450u, !select(any(select(vec4<bool>(global2.b, global2.b, global2.b, global2.b), vec4<bool>(true, global2.b, global2.b, false), vec4<bool>(global2.b, global2.b, global2.b, global2.b))), false, global2.b), ~1u);
    global2 = Struct_1(0u, !select(!(!global2.b), true, any(!vec2<bool>(var_0.b, false))), abs(~1u));
    let var_1 = firstTrailingBit(~27782u);
    var var_2 = 4294967295u;
    let var_3 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(trunc(-703f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1000f, -156f), -689f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(939f, 1215f)), -328f))), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(208f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-481f))))));
    return select(!(!vec4<bool>(global2.b && false, !global2.b, var_3.x > var_3.x, true)), !vec4<bool>(select(all(vec4<bool>(false, global2.b, true, global2.b)), global2.b, !global2.b), all(select(vec3<bool>(global2.b, true, var_0.b), vec3<bool>(global2.b, true, var_0.b), global2.b)), false, global2.b), !any(vec2<bool>(!global2.b, var_1 < u_input.a)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec4<bool>) -> i32 {
    var var_0 = 34920i;
    global2 = Struct_1(_wgslsmith_dot_vec4_u32(u_input.d, ~(countOneBits(u_input.d) << (~vec4<u32>(global2.a, 1u, arg_1.a, 1u) % vec4<u32>(32u)))), true, arg_1.c);
    var var_1 = ~global2.a;
    let var_2 = ~u_input.b.zww;
    var var_3 = arg_1;
    return -(~(~_wgslsmith_add_i32(abs(20494i), 0i)));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> vec3<i32> {
    global1 = vec3<i32>(_wgslsmith_mod_i32(0i, _wgslsmith_add_i32(-4220i, 2147483647i)), -10897i, func_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1193f)), _wgslsmith_f_op_f32(f32(-1f) * -293f), all(!vec4<bool>(true, arg_1.b, arg_1.b, global2.b)))), Struct_1(global2.a, any(vec3<bool>(true, true, true)), ~(~4294967295u)), select(vec4<bool>(arg_1.b, true, all(vec3<bool>(false, true, global2.b)), 40491u == u_input.b.x), !func_2(), !vec4<bool>(global2.b, global2.b, true, arg_1.b))));
    var var_0 = arg_1;
    var var_1 = _wgslsmith_dot_vec3_u32(u_input.b.zww, u_input.d.yxy);
    global1 = ~select(u_input.c.wzw, max(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, global1.x, u_input.c.x, 15840i), vec4<i32>(-1i, 44012i, -2147483647i, 58771i)), global0[_wgslsmith_index_u32(var_0.a, 11u)], 51306i), select(u_input.c.zxw, u_input.c.yzw, vec3<bool>(var_0.b, true, true)) | vec3<i32>(2147483647i, global1.x, 2147483647i)), func_2().xzw);
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1409f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(368f + 1972f)))))));
    return _wgslsmith_mod_vec3_i32(abs(select(vec3<i32>(_wgslsmith_div_i32(global0[_wgslsmith_index_u32(global2.c, 11u)], u_input.c.x), _wgslsmith_dot_vec4_i32(u_input.c, u_input.c), global1.x), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c.x, 14242i, global1.x), vec3<i32>(arg_0, 2147483647i, u_input.c.x)), !(var_0.b && arg_1.b))), u_input.c.yww);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(_wgslsmith_div_i32(_wgslsmith_mod_i32(reverseBits(-9659i | u_input.c.x), ~global0[_wgslsmith_index_u32(1u, 11u)] ^ abs(-93685i)), 2295i), Struct_1(4294967295u, _wgslsmith_sub_u32(~global2.c, 4294967295u ^ u_input.d.x) == _wgslsmith_add_u32(u_input.b.x << (69076u % 32u), abs(29564u)), ~1u >> (1u % 32u)));
    let var_0 = Struct_2(_wgslsmith_div_vec2_i32(max(vec2<i32>(u_input.c.x, 2147483647i), ~u_input.c.yx) | _wgslsmith_mult_vec2_i32(min(global1.yy, global1.xz), ~u_input.c.yz), (_wgslsmith_mult_vec2_i32(vec2<i32>(global1.x, -21412i), u_input.c.xx) << (vec2<u32>(u_input.b.x, 1u) % vec2<u32>(32u))) >> (vec2<u32>(1u ^ u_input.d.x, 85620u) % vec2<u32>(32u))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(-707f)), 594f, _wgslsmith_f_op_f32(trunc(1155f)))));
    var var_2 = global2.b;
    let var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-var_1.zx), var_1.x, u_input.b.wz);
}

