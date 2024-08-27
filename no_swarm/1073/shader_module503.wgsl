struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: i32,
    b: vec3<bool>,
    c: u32,
    d: vec2<u32>,
    e: vec4<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<bool>,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(738f, 1000f, 1532f);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec4<bool> {
    let var_0 = Struct_1(true);
    let var_1 = vec2<u32>(5309u, _wgslsmith_div_u32(9363u, 4294967295u));
    global0 = vec3<f32>(global0.x, global0.x, global0.x);
    let var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(469f, global0.x, 1000f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -1976f, global0.x) * vec3<f32>(-116f, global0.x, global0.x))), vec3<bool>(var_0.a, any(vec4<bool>(var_0.a, true, var_0.a, false)), var_0.a)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-286f, global0.x, -557f))))))))));
    let var_3 = var_0;
    return select(vec4<bool>(!(true & (var_0.a & false)), true, true, true), vec4<bool>(abs(var_1.x) <= firstTrailingBit(4294967295u), var_3.a, false, true), false);
}

fn func_2() -> u32 {
    var var_0 = Struct_2(i32(-1i) * -u_input.a);
    global0 = vec3<f32>(226f, _wgslsmith_div_f32(-361f, global0.x), global0.x);
    let var_1 = !(!func_3());
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(244f, 1529f, 573f), vec3<f32>(-553f, -539f, -1000f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(512f, global0.x, global0.x)) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-421f, 714f, global0.x), vec3<f32>(-448f, global0.x, global0.x)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, 1134f) * vec3<f32>(1000f, -1018f, global0.x)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(248f, global0.x, 145f)))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x) + vec3<f32>(global0.x, -296f, global0.x)))))));
    var var_2 = Struct_1(all(vec3<bool>(var_1.x && false, _wgslsmith_mult_i32(u_input.b, 42289i) != _wgslsmith_mod_i32(var_0.a, u_input.b), !var_1.x & var_1.x)));
    return countOneBits(~min(~_wgslsmith_dot_vec2_u32(vec2<u32>(36765u, 50170u), vec2<u32>(25079u, 30333u)), 57548u));
}

fn func_1() -> vec3<f32> {
    let var_0 = true;
    var var_1 = min(1u, ~func_2() << (1u % 32u)) >> (~(~(~(~1u))) % 32u);
    let var_2 = vec4<i32>(u_input.b, _wgslsmith_add_i32(_wgslsmith_mult_i32(i32(-1i) * -u_input.c.x, -2147483647i), 2147483647i), ~44437i, _wgslsmith_dot_vec4_i32(~u_input.c, -(~u_input.c)));
    let var_3 = Struct_5(Struct_2(u_input.a), !select(!(!vec2<bool>(false, var_0)), !(!vec2<bool>(var_0, var_0)), all(select(vec2<bool>(var_0, false), vec2<bool>(var_0, false), var_0))), ~firstTrailingBit(13081u), -2147483647i);
    let var_4 = -(~select(abs(vec2<i32>(-1i, var_3.d)) >> (vec2<u32>(var_3.c, 16165u) % vec2<u32>(32u)), abs(_wgslsmith_sub_vec2_i32(vec2<i32>(0i, -1i), u_input.c.wy)), true));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1306f, -2574f, global0.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, 649f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -353f, global0.x) - vec3<f32>(1304f, global0.x, 1018f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(ceil(-2216f)), _wgslsmith_f_op_f32(global0.x + 1000f)) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.x, global0.x, global0.x), vec3<f32>(212f, 460f, -778f)))))), _wgslsmith_f_op_vec3_f32(func_1())), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1153f, global0.x, true)), _wgslsmith_f_op_f32(select(global0.x, 1761f, true))), -655f, -1172f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_1()), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, global0.x, 399f) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.x, global0.x, global0.x)))), vec3<bool>(true, false, true)))))));
    let var_0 = !(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))));
    let var_1 = _wgslsmith_sub_u32(firstTrailingBit(~1u), 1u);
    var var_2 = 68219u;
    let var_3 = Struct_4(u_input.b, vec3<bool>(-647f >= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-640f)))), true, var_0.x), var_1, vec2<u32>(~var_1, ~var_1), !(!(!vec4<bool>(true, var_0.x, true, true))));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1())) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(349f, global0.x, 1289f) + vec3<f32>(326f, global0.x, -1410f))), vec3<f32>(106f, global0.x, _wgslsmith_f_op_f32(global0.x * global0.x)))) + vec3<f32>(_wgslsmith_f_op_f32(sign(-444f)), _wgslsmith_f_op_f32(global0.x * -935f), 196f));
    var var_4 = Struct_1(!(!all(vec3<bool>(false, var_3.b.x, true))));
    var_2 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x + 2002f), 915f))), var_1, _wgslsmith_add_i32(var_3.a, ~(-6415i)), vec3<i32>(abs(_wgslsmith_sub_i32(_wgslsmith_mult_i32(var_3.a, var_3.a), -var_3.a)), -u_input.c.x, min(var_3.a, var_3.a)));
}

