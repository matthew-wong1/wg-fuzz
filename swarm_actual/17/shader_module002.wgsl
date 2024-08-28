struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: i32,
    d: vec2<u32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: vec2<bool>,
    e: vec4<u32>,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: u32 = 30402u;

var<private> global2: vec2<u32>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_1(arg_0: vec4<f32>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1025f * arg_0.x), _wgslsmith_f_op_f32(-arg_0.x)) + -2209f), _wgslsmith_f_op_f32(f32(-1f) * -2084f), arg_0.x)));
    global2 = _wgslsmith_sub_vec2_u32(~u_input.d.zz, ~(~(~vec2<u32>(global2.x, 28835u)) ^ ~select(u_input.d.yx, u_input.d.yz, false)));
    let var_1 = Struct_3(~(~_wgslsmith_add_u32(global2.x, _wgslsmith_clamp_u32(global2.x, 4294967295u, 9541u))));
    global2 = ~(~abs(vec2<u32>(1u, min(global2.x, 28254u))));
    global2 = ~(~(u_input.d.xy << (vec2<u32>(~65928u, u_input.d.x) % vec2<u32>(32u))));
    return ~26815i;
}

fn func_3() -> vec4<u32> {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-919f, -1000f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2161f * -236f), _wgslsmith_f_op_f32(f32(-1f) * -1145f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
    let var_1 = 0u;
    var var_2 = 25654u;
    var_2 = ~(~(~0u));
    global0 = var_1;
    return ~vec4<u32>(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1, u_input.e, 4294967295u), u_input.d)), ~(~_wgslsmith_dot_vec2_u32(u_input.d.yy, vec2<u32>(global2.x, 7153u))), 89756u, var_1);
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: vec3<bool>) -> Struct_2 {
    var var_0 = 1u;
    let var_1 = false;
    var var_2 = arg_1;
    var var_3 = Struct_2(arg_1, var_2.a.x, arg_1, arg_2.xx, select(_wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.d.x, 1u, 35376u & arg_1.d.x), vec4<u32>(14827u, _wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(arg_1.d.x, arg_1.d.x, 4294967295u)), 51179u, min(64763u, 0u))), func_3(), var_1));
    let var_4 = Struct_3(55200u);
    return Struct_2(arg_1, var_2.a.x, Struct_1(max(vec2<i32>(-2147483647i, -arg_1.c), var_3.a.a), var_2.b, -var_3.a.a.x, _wgslsmith_mult_vec2_u32(var_3.a.d, _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(global2.x, 67347u)) << (~vec2<u32>(4294967295u, global2.x) % vec2<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(705f)))) * var_3.a.e)), vec2<bool>(_wgslsmith_f_op_f32(floor(var_3.a.e)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(447f - arg_1.e) * _wgslsmith_f_op_f32(var_3.c.e - 302f)), false == (var_3.d.x | var_1)), var_3.e >> (~(~(vec4<u32>(4294967295u, var_2.d.x, var_2.d.x, var_2.d.x) | var_3.e)) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c.ww;
    var var_1 = -2823f;
    var var_2 = vec4<u32>(~1u, u_input.d.x, 15231u, ~_wgslsmith_div_u32(min(4092u, firstLeadingBit(0u)), select(global2.x, ~global2.x, all(vec3<bool>(true, false, false)))));
    var var_3 = vec4<bool>(true, false, !(0u <= _wgslsmith_dot_vec2_u32(u_input.d.zx >> (vec2<u32>(0u, global2.x) % vec2<u32>(32u)), var_2.zw)), true);
    global0 = 4294967295u;
    let var_4 = 8432i >> (var_2.x % 32u);
    let var_5 = func_2(~(~_wgslsmith_mult_i32(func_1(vec4<f32>(-194f, -443f, -1229f, -1205f)), min(0i, 0i))), Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(var_4 >> (4294967295u % 32u), -49299i), vec2<i32>(44957i, -2147483647i) | _wgslsmith_div_vec2_i32(u_input.c.xz, vec2<i32>(var_0.x, -1i))), all(select(var_3.xyy, vec3<bool>(true, var_3.x, false), var_3.x)), u_input.a, countOneBits(select(vec2<u32>(1u, u_input.e), ~u_input.d.zx, true)), 322f), var_3.zyy);
    var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_5.c.e)));
    var var_6 = Struct_1(countOneBits(vec2<i32>(_wgslsmith_div_i32(u_input.b.x, 2147483647i), -u_input.c.x)), var_3.x, -1i, u_input.d.xx, 495f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(var_5.e.yzw << (select(vec3<u32>(4973u, var_5.a.d.x, 0u), var_5.e.zzw, false) % vec3<u32>(32u)), func_3().zzx), min(firstLeadingBit(u_input.d), vec3<u32>(global2.x, var_5.a.d.x, 4294967295u) << (var_5.e.wxw % vec3<u32>(32u)))), 32692i, _wgslsmith_dot_vec4_i32(u_input.b, u_input.c));
}

