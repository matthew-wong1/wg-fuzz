struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: i32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2() -> Struct_1 {
    let var_0 = ~u_input.a.x;
    var var_1 = Struct_1(var_0 | _wgslsmith_dot_vec3_i32(-vec3<i32>(var_0, -17096i, u_input.a.x), vec3<i32>(~u_input.a.x, abs(var_0), var_0)));
    var var_2 = Struct_1(countOneBits(u_input.a.x));
    let var_3 = ~var_2.a;
    let var_4 = Struct_1(abs(~u_input.a.x));
    return Struct_1(~var_2.a);
}

fn func_3() -> vec2<f32> {
    var var_0 = Struct_2(func_2(), -_wgslsmith_add_vec2_i32(u_input.a.zy, -_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.wx)), func_2(), func_2().a, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(151f, -504f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-942f, 1889f), vec2<f32>(172f, 842f))) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-520f, -1000f)))))))));
    let var_1 = func_2();
    var_0 = Struct_2(var_0.c, _wgslsmith_mod_vec2_i32(u_input.a.wz, var_0.b), var_1, u_input.a.x, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1717f, var_0.e.x))))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(222f, 140f))));
    let var_2 = abs(2104u);
    var var_3 = func_2();
    return _wgslsmith_f_op_vec2_f32(abs(var_0.e));
}

fn func_1(arg_0: f32) -> f32 {
    var var_0 = u_input.a.x;
    var var_1 = Struct_2(func_2(), min(vec2<i32>(~2147483647i, 2147483647i), -(~vec2<i32>(u_input.a.x, u_input.a.x))) | firstLeadingBit(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, -1i), -vec2<i32>(-1i, u_input.a.x))), Struct_1(~(-83758i)), u_input.a.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3())));
    var_0 = _wgslsmith_div_i32(-16766i, _wgslsmith_dot_vec3_i32(select(vec3<i32>(20263i, -u_input.a.x, reverseBits(-2147483647i)), firstTrailingBit(min(u_input.a.zzx, vec3<i32>(var_1.a.a, 54743i, -1i))), !all(vec2<bool>(true, false))), -_wgslsmith_div_vec3_i32(~vec3<i32>(7470i, var_1.c.a, var_1.a.a), vec3<i32>(var_1.d, 2147483647i, -1i))));
    var var_2 = ~(~(vec4<u32>(24279u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 20906u), vec2<u32>(4294967295u, 18639u)), firstTrailingBit(50284u), 1u) << ((vec4<u32>(23349u, 23219u, 4294967295u, 1u) ^ firstTrailingBit(vec4<u32>(0u, 4294967295u, 0u, 1u))) % vec4<u32>(32u))));
    var_1 = Struct_2(var_1.a, _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(var_1.b & var_1.b, vec2<i32>(var_1.b.x, u_input.a.x)), reverseBits(~vec2<i32>(u_input.a.x, 1i))), -vec2<i32>(_wgslsmith_dot_vec2_i32(var_1.b, vec2<i32>(u_input.a.x, var_1.b.x)), ~var_1.a.a), ~_wgslsmith_mult_vec2_i32(select(var_1.b, vec2<i32>(u_input.a.x, var_1.d), true), -vec2<i32>(-2147483647i, -2165i))), func_2(), _wgslsmith_clamp_i32(-2147483647i, var_1.a.a, abs(u_input.a.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_1.e.x) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.e + vec2<f32>(arg_0, arg_0)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(518f, var_1.e.x))))));
    return _wgslsmith_f_op_f32(-var_1.e.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-507f - 757f), _wgslsmith_f_op_f32(func_1(1344f)), _wgslsmith_f_op_f32(f32(-1f) * -861f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1410f, 1000f, 666f)))));
    let var_2 = Struct_1(~func_2().a);
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(round(1323f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-2017f, var_1.x)), var_1.x)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1724f), -521f)), _wgslsmith_f_op_f32(-var_1.x), var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(~87911u), var_1.x, -492f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1424f)) + _wgslsmith_f_op_f32(floor(-492f)))), abs(abs(vec4<u32>(29992u, 0u, 4294967295u, 29060u)) >> (vec4<u32>(firstTrailingBit(1u), ~0u, 152241u, 0u) % vec4<u32>(32u))));
}

