struct Struct_1 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> vec4<i32> {
    let var_0 = arg_0.d.b.xwx;
    var var_1 = vec3<i32>(reverseBits(abs(arg_0.d.b.x)), -select(abs(var_0.x), 1i, false), (select(var_0.x, -72378i, true) >> (arg_0.d.c.x % 32u)) | 38071i);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c.x, -104f, arg_0.c.x))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(171f, -1151f, 1000f), vec3<f32>(arg_0.c.x, arg_1, arg_1), arg_0.d.d.x)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-528f, arg_0.c.x, arg_0.c.x), vec3<f32>(-1303f, 522f, -2293f), vec3<bool>(arg_0.b.d.x, arg_0.b.d.x, true))))))));
    var var_3 = 1u;
    var var_4 = abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, 23952u) & ~arg_0.a.c, _wgslsmith_mult_vec2_u32(select(arg_0.b.c, arg_0.a.c, true), _wgslsmith_mod_vec2_u32(arg_0.d.c, vec2<u32>(arg_0.a.c.x, 0u))), ~(~arg_0.b.c))) >> (min(countOneBits(~vec2<u32>(u_input.a, u_input.a)), vec2<u32>(_wgslsmith_div_u32(firstTrailingBit(4294967295u), 39783u), reverseBits(20023u >> (arg_0.a.c.x % 32u)))) % vec2<u32>(32u));
    return -(arg_0.b.b & arg_0.d.b);
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = Struct_1(firstLeadingBit(firstLeadingBit(~vec4<i32>(0i, arg_2.x, 32515i, 1300i))), func_3(Struct_2(Struct_1(-vec4<i32>(arg_2.x, u_input.b, -52259i, arg_2.x), vec4<i32>(arg_2.x, u_input.b, -45739i, 1i) << (vec4<u32>(33269u, 4294967295u, 0u, u_input.a) % vec4<u32>(32u)), vec2<u32>(4294967295u, 93558u), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), true)), Struct_1(vec4<i32>(u_input.c, arg_2.x, 45178i, 30402i), -vec4<i32>(arg_2.x, arg_2.x, 12015i, 19315i), vec2<u32>(61889u, 0u) ^ vec2<u32>(u_input.a, u_input.a), vec4<bool>(true, true, true, true)), vec2<f32>(1715f, arg_0), Struct_1(abs(vec4<i32>(u_input.d.x, u_input.d.x, -1i, -1i)), ~vec4<i32>(u_input.c, 22751i, 53618i, u_input.c), ~vec2<u32>(arg_1, 4294967295u), vec4<bool>(false, false, false, false))), arg_0), max(reverseBits(countOneBits(~vec2<u32>(arg_1, arg_1))), _wgslsmith_clamp_vec2_u32(~vec2<u32>(41229u, u_input.a), vec2<u32>(u_input.a, u_input.a), vec2<u32>(0u, 14637u)) | ~abs(vec2<u32>(u_input.a, arg_1))), !vec4<bool>(true, false, !any(vec2<bool>(false, true)), true));
    let var_1 = !var_0.d.x;
    var var_2 = _wgslsmith_f_op_f32(-arg_0);
    var_2 = arg_0;
    var var_3 = Struct_1(_wgslsmith_div_vec4_i32(-abs(var_0.a), var_0.b), min(-max(~vec4<i32>(-2147483647i, var_0.a.x, arg_2.x, u_input.c), ~vec4<i32>(-2070i, var_0.a.x, var_0.b.x, -28427i)), select(var_0.b, ~vec4<i32>(u_input.c, arg_2.x, u_input.c, -9821i), all(select(vec4<bool>(var_1, var_1, false, var_0.d.x), var_0.d, var_0.d.x)))), vec2<u32>(var_0.c.x, ~_wgslsmith_mod_u32(4294967295u, u_input.a) & _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(var_0.c.x, 1u)), var_0.c & vec2<u32>(1u, 58513u))), !(!vec4<bool>(select(var_1, var_1, false), var_1, var_1, !var_0.d.x)));
    return Struct_1(vec4<i32>(-(_wgslsmith_add_i32(arg_2.x, u_input.b) >> (_wgslsmith_sub_u32(4294967295u, 0u) % 32u)), -var_3.a.x, _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(2147483647i, -1i, -75813i, -1i)), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_2.x, var_0.a.x, u_input.d.x, -2147483647i), var_3.b), vec4<i32>(-2147483647i, var_3.b.x, var_0.b.x, 0i))), _wgslsmith_mult_i32(2147483647i, u_input.d.x)), vec4<i32>(-1i, ~2147483647i, 1i, -abs(1i ^ var_3.a.x)), vec2<u32>(firstTrailingBit(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(32664u, var_3.c.x, 0u), vec3<u32>(var_3.c.x, arg_1, 47917u)), firstTrailingBit(vec3<u32>(0u, var_0.c.x, var_0.c.x)))), 16021u), vec4<bool>(var_0.d.x, _wgslsmith_mod_u32(1u, 78036u) < firstLeadingBit(min(12908u, u_input.a)), var_0.d.x || !(!var_1), _wgslsmith_f_op_f32(-arg_0) < _wgslsmith_f_op_f32(round(-697f))));
}

fn func_1(arg_0: f32) -> Struct_2 {
    let var_0 = true;
    let var_1 = !vec4<bool>(false, var_0, var_0, true);
    let var_2 = -2147483647i;
    let var_3 = -(_wgslsmith_div_vec2_i32(vec2<i32>(1i, 6648i), select(vec2<i32>(u_input.d.x, 1i) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(vec2<i32>(var_2, u_input.b), vec2<i32>(0i, var_2), vec2<i32>(-1i, var_2)), !var_1.yy)) & vec2<i32>(37610i, var_2));
    let var_4 = vec4<u32>(4294967295u, _wgslsmith_mod_u32(u_input.a, u_input.a), _wgslsmith_div_u32(~16308u, u_input.a), u_input.a) & vec4<u32>(countOneBits(u_input.a), abs(~(~12519u)), 4414u, u_input.a);
    return Struct_2(func_2(_wgslsmith_f_op_f32(select(126f, _wgslsmith_f_op_f32(f32(-1f) * -710f), !var_0)), u_input.a, -abs(u_input.d & u_input.d)), func_2(arg_0, firstLeadingBit(_wgslsmith_mult_u32(~16329u, 1u & var_4.x)), u_input.d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(2504f, 287f), vec2<f32>(arg_0, 453f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-212f, -315f))))), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - -1613f))), _wgslsmith_sub_u32(u_input.a, _wgslsmith_mult_u32(~u_input.a, 1u)), abs(func_2(-1000f, 1u, u_input.d).a.wxz)));
}

fn func_4(arg_0: Struct_2, arg_1: f32) -> StorageBuffer {
    return StorageBuffer(u_input.d.xx);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-810f - -674f)) - _wgslsmith_f_op_f32(-3060f - _wgslsmith_div_f32(1087f, -138f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -435f)))));
}

