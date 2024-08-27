struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec4<bool>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec2<i32>;

var<private> global2: f32 = 401f;

var<private> global3: u32;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2() -> Struct_1 {
    let var_0 = abs(~(~(~vec2<u32>(92469u, global0.b))) >> (select(abs(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 17720u), vec2<u32>(global0.b, u_input.c))), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(36727u, 63134u), vec2<u32>(4294967295u, u_input.c), vec2<u32>(23927u, 0u)), !global0.c.xx) % vec2<u32>(32u)));
    let var_1 = 30917u;
    return Struct_1(!global0.a, ~((u_input.c | 4294967295u) & 42261u), global0.c, !(global0.d == false));
}

fn func_3(arg_0: f32) -> bool {
    var var_0 = 296f;
    let var_1 = func_2();
    global0 = var_1;
    let var_2 = false;
    var var_3 = select(func_2().a, var_1.a, var_2);
    return true;
}

fn func_1(arg_0: f32) -> vec4<bool> {
    var var_0 = u_input.d.zx;
    var var_1 = func_2();
    let var_2 = var_1.b;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, 1300f)))) - _wgslsmith_div_f32(1931f, _wgslsmith_f_op_f32(arg_0 + arg_0)));
    var var_4 = var_1.d;
    return vec4<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(false, global0.d, true), var_1.d || (var_1.c.x || true))), all(vec4<bool>(true, false, true, func_3(_wgslsmith_f_op_f32(arg_0 - -217f)))), !(!(!func_2().d)), !var_1.a.x);
}

fn func_4(arg_0: vec4<bool>, arg_1: i32, arg_2: vec2<i32>) -> Struct_1 {
    var var_0 = Struct_1(vec2<bool>(reverseBits(_wgslsmith_mult_u32(global0.b, 14050u)) < (0u ^ ~global0.b), !arg_0.x), reverseBits(abs(~17226u) & global0.b), func_1(_wgslsmith_f_op_f32(min(653f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1469f)))))), true);
    let var_1 = Struct_1(vec2<bool>(true, !var_0.a.x), ~76239u >> (_wgslsmith_sub_u32(89248u & ~u_input.c, var_0.b) % 32u), !select(!arg_0, global0.c, var_0.c), var_0.a.x);
    global3 = select(14909u, ~4294967295u, select(arg_0.x, true, !(547u >= var_0.b)) || func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1282f, -2441f, arg_0.x)) * -1000f)).x);
    var var_2 = func_2();
    var var_3 = true;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1413f;
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 * var_0) * var_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(var_0))))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)));
    global0 = func_4(!func_1(_wgslsmith_f_op_f32(abs(var_0))), -_wgslsmith_clamp_i32((global1.x ^ -1i) << ((global0.b & 14317u) % 32u), -36934i, -20195i), _wgslsmith_div_vec2_i32(select(u_input.d.yy, vec2<i32>(-global1.x, reverseBits(u_input.a)), select(any(vec3<bool>(true, false, false)), any(vec2<bool>(global0.c.x, true)), global0.a.x)), u_input.d.yy));
    global0 = func_4(func_4(func_4(vec4<bool>(global0.d, global0.c.x && false, func_2().d, all(vec3<bool>(global0.d, true, global0.c.x))), -u_input.d.x, -(~vec2<i32>(global1.x, -2147483647i))).c, min(~u_input.d.x ^ (21851i & u_input.d.x), 0i >> (firstTrailingBit(u_input.c) % 32u)), ~(-u_input.d.yx) << ((min(vec2<u32>(global0.b, global0.b), vec2<u32>(4294967295u, u_input.b)) & vec2<u32>(1u, 4294967295u)) % vec2<u32>(32u))).c, ~(~(-global1.x)), _wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, global1.x), select(abs(u_input.d.yy), -u_input.d.zz, true)));
    let var_1 = global1.x;
    var var_2 = ~min(vec4<u32>(~u_input.b, 1u, global0.b, 9522u), countOneBits(vec4<u32>(global0.b, 8455u, u_input.c, global0.b) >> (vec4<u32>(u_input.c, 58202u, 5814u, u_input.b) % vec4<u32>(32u))) >> (_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b), vec4<u32>(u_input.c, 34039u, 0u, 4294967295u)), abs(vec4<u32>(global0.b, 1u, global0.b, global0.b)), ~vec4<u32>(4294967295u, global0.b, global0.b, u_input.b)) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_i32(select(u_input.d, u_input.d, !func_1(1361f).wyw), vec3<i32>(u_input.a, _wgslsmith_dot_vec2_i32(-vec2<i32>(-33016i, u_input.d.x), ~vec2<i32>(-62005i, global1.x)), global1.x), vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_mult_i32(global1.x, -2147483647i), u_input.a << (0u % 32u)), global1.x, ~(global1.x | 0i))), var_2.zyz, min((vec3<i32>(-1i) * -vec3<i32>(global1.x, 6708i, 0i)) | vec3<i32>(countOneBits(global1.x), global1.x << (72597u % 32u), ~u_input.a), _wgslsmith_mod_vec3_i32(~u_input.d, min(u_input.d, vec3<i32>(1i, global1.x, 0i))) & min(-u_input.d, vec3<i32>(-1i, -27375i, 40525i))));
}

