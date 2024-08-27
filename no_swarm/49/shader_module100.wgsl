struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: bool,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: vec3<i32>,
    d: f32,
    e: vec4<bool>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: f32,
    b: vec3<bool>,
    c: vec4<f32>,
    d: vec3<f32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(-1i, 0u, false), Struct_2(-38032i, 27028u, false), Struct_2(i32(-2147483648), 52139u, false), Struct_2(2147483647i, 4294967295u, false), Struct_2(37950i, 1u, false), Struct_2(i32(-2147483648), 21994u, true), Struct_2(-38046i, 1332u, false), Struct_2(-26815i, 7926u, true), Struct_2(-29426i, 4294967295u, false), Struct_2(29096i, 4294967295u, false), Struct_2(15343i, 4294967295u, false), Struct_2(2147483647i, 7500u, false), Struct_2(i32(-2147483648), 4294967295u, false), Struct_2(2147483647i, 41834u, true), Struct_2(-1i, 11813u, true), Struct_2(23614i, 4294967295u, true), Struct_2(i32(-2147483648), 10855u, false), Struct_2(i32(-2147483648), 1u, false), Struct_2(0i, 10908u, false), Struct_2(i32(-2147483648), 6114u, true), Struct_2(-9309i, 39110u, false), Struct_2(17048i, 4294967295u, true), Struct_2(11898i, 0u, false));

var<private> global1: array<Struct_5, 4> = array<Struct_5, 4>(Struct_5(-158f, vec3<bool>(false, true, true), vec4<f32>(461f, 1000f, 1000f, -1347f), vec3<f32>(1122f, -744f, 194f), 30269u), Struct_5(-1475f, vec3<bool>(true, true, false), vec4<f32>(2720f, 736f, -1000f, -605f), vec3<f32>(175f, -785f, 726f), 1u), Struct_5(-622f, vec3<bool>(true, false, false), vec4<f32>(-292f, 1991f, -471f, 817f), vec3<f32>(218f, -2263f, -195f), 1u), Struct_5(417f, vec3<bool>(true, true, true), vec4<f32>(2248f, 2034f, -1092f, 339f), vec3<f32>(-1134f, 596f, 1543f), 2962u));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3() -> f32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-350f - _wgslsmith_div_f32(732f, 425f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1466f + _wgslsmith_f_op_f32(f32(-1f) * -808f)))));
    let var_1 = 25118u;
    let var_2 = _wgslsmith_add_u32(var_1, var_1);
    let var_3 = ~vec4<i32>(u_input.e, -1i, 27101i, 0i);
    let var_4 = select(_wgslsmith_mod_vec4_i32(vec4<i32>(4181i, var_3.x, var_3.x, select(_wgslsmith_clamp_i32(-3388i, -1i, var_3.x), 0i & var_3.x, false)), -var_3), vec4<i32>(_wgslsmith_div_i32(1i, var_3.x), -1i, -select(_wgslsmith_div_i32(11832i, var_3.x), reverseBits(-18063i), any(vec4<bool>(true, false, true, false))), countOneBits(_wgslsmith_clamp_i32(u_input.b, -1i, var_3.x)) << (var_2 % 32u)), vec4<bool>(-381f < var_0.x, true, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) < -246f));
    return _wgslsmith_f_op_f32(-var_0.x);
}

fn func_2() -> u32 {
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1391f)), -234f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-241f - -1487f))), 182f)), _wgslsmith_f_op_f32(func_3())));
    let var_2 = Struct_1(select(select(select(!vec3<bool>(false, var_0, var_0), vec3<bool>(true, var_0, true), vec3<bool>(var_0, false, var_0)), select(select(vec3<bool>(true, false, false), vec3<bool>(var_0, true, var_0), true), !vec3<bool>(false, var_0, true), !vec3<bool>(var_0, var_0, false)), _wgslsmith_f_op_f32(-var_1) == _wgslsmith_f_op_f32(-var_1)), !(!vec3<bool>(var_0, true, var_0)), all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, var_0, var_0, var_0), vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(var_0, var_0, var_0, false)), vec4<bool>(var_0, false, true, true)))), all(!(!select(vec4<bool>(true, true, var_0, var_0), vec4<bool>(var_0, false, false, var_0), true))), _wgslsmith_add_vec4_i32(select(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, u_input.b, 74936i, u_input.e), _wgslsmith_mult_vec4_i32(vec4<i32>(22990i, -14619i, 0i, -48463i), vec4<i32>(2147483647i, 7666i, u_input.e, 25479i))), abs(vec4<i32>(-13011i, 0i, u_input.b, -1i)), var_0), vec4<i32>(_wgslsmith_mult_i32(~u_input.b, i32(-1i) * -25554i), u_input.e, 4337i, ~(16131i >> (u_input.c.x % 32u)))));
    global0 = array<Struct_2, 23>();
    var var_3 = !(!var_2.a);
    return ~19224u;
}

fn func_4(arg_0: u32, arg_1: vec4<f32>, arg_2: vec3<i32>) -> vec2<bool> {
    var var_0 = vec4<bool>(true, true, true, true);
    global0 = array<Struct_2, 23>();
    var var_1 = _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(arg_2.zy, vec2<i32>(u_input.b, u_input.b), vec2<i32>(44860i, arg_2.x)), -arg_2.xx), arg_2.yz) | ((~vec2<i32>(-1i, 2692i) ^ abs(arg_2.zz)) | (-vec2<i32>(u_input.e, arg_2.x) | _wgslsmith_div_vec2_i32(arg_2.zz, vec2<i32>(u_input.b, 53510i)))), vec2<i32>(_wgslsmith_mod_i32(u_input.b, select(abs(arg_2.x), ~arg_2.x, select(var_0.x, var_0.x, var_0.x))), -2147483647i));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x + arg_1.x), _wgslsmith_f_op_f32(arg_1.x - -2156f)))));
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-508f)) + -706f);
    return vec2<bool>(false, !(arg_1.x <= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-448f))))));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<u32>, arg_2: Struct_5) -> Struct_5 {
    var var_0 = !all(func_4(func_2() >> (arg_2.e % 32u), vec4<f32>(arg_2.d.x, arg_2.d.x, _wgslsmith_f_op_f32(-arg_2.d.x), _wgslsmith_f_op_f32(-arg_2.d.x)), ~abs(vec3<i32>(-78340i, 22138i, 2147483647i))));
    let var_1 = Struct_3(arg_2.b.x, _wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.b, (i32(-1i) * -1i) ^ u_input.e), _wgslsmith_dot_vec2_i32(~(-vec2<i32>(u_input.b, -2147483647i)), _wgslsmith_sub_vec2_i32(reverseBits(vec2<i32>(u_input.b, 1i)), vec2<i32>(0i, u_input.b)))), _wgslsmith_mult_vec3_i32(-abs(vec3<i32>(u_input.b, u_input.e, -1i)) & vec3<i32>(u_input.e, u_input.e, ~(-3552i)), vec3<i32>((-1i & u_input.e) >> ((arg_0.x << (arg_2.e % 32u)) % 32u), -1i, 0i)), _wgslsmith_f_op_f32(round(-1303f)), vec4<bool>(false, any(select(select(vec4<bool>(arg_2.b.x, arg_2.b.x, arg_2.b.x, arg_2.b.x), vec4<bool>(false, arg_2.b.x, arg_2.b.x, true), vec4<bool>(false, arg_2.b.x, arg_2.b.x, arg_2.b.x)), select(vec4<bool>(arg_2.b.x, arg_2.b.x, arg_2.b.x, arg_2.b.x), vec4<bool>(false, arg_2.b.x, false, arg_2.b.x), false), false)), any(vec2<bool>(true, any(arg_2.b))), true));
    let var_2 = Struct_3(any(vec4<bool>(var_1.a, select(select(arg_2.b.x, true, var_1.a), var_1.a, var_1.a), arg_2.e <= 87587u, var_1.a)), ~(~((-96440i & var_1.b) & u_input.e)), var_1.c, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a - arg_2.c.x)), _wgslsmith_f_op_f32(exp2(1f)))))), vec4<bool>(~2667u != arg_2.e, all(!var_1.e.zx), -(~var_1.b) == ~(i32(-1i) * -10894i), arg_2.b.x && true));
    let var_3 = ~(~1i);
    var var_4 = Struct_4(max(reverseBits(~47688u), ~1u));
    return global1[_wgslsmith_index_u32((arg_2.e >> (_wgslsmith_mod_u32(arg_0.x << (1u % 32u), arg_2.e) % 32u)) << (115468u % 32u), 4u)];
}

fn func_5(arg_0: Struct_5, arg_1: i32, arg_2: Struct_4) -> Struct_2 {
    var var_0 = func_4(~arg_2.a << (_wgslsmith_add_u32(min(_wgslsmith_div_u32(13206u, u_input.c.x), ~41929u), _wgslsmith_div_u32(arg_2.a >> (4294967295u % 32u), _wgslsmith_mod_u32(1u, u_input.a))) % 32u), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1571f, -233f, 602f, 690f))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(arg_0.c * arg_0.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, 1449f, 122f, -996f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, arg_0.d.x, arg_0.d.x, -122f)))))), vec3<i32>(-1i) * -vec3<i32>(arg_1 >> (arg_0.e % 32u), ~arg_1, arg_1 | arg_1)).x;
    let var_1 = 2147483647i;
    var var_2 = !(!(!vec3<bool>(arg_0.b.x && false, true, select(true, arg_0.b.x, true))));
    let var_3 = var_1;
    let var_4 = arg_2;
    return global0[_wgslsmith_index_u32(var_4.a, 23u)];
}

fn func_6(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_2) -> Struct_1 {
    global0 = array<Struct_2, 23>();
    global0 = array<Struct_2, 23>();
    var var_0 = 0u;
    let var_1 = global1[_wgslsmith_index_u32(u_input.c.x, 4u)];
    var var_2 = ~(_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.d, arg_2.b, var_1.e) >> (vec3<u32>(u_input.a, 33535u, arg_2.b) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d, var_1.e, arg_2.b), vec3<u32>(4294967295u, 635u, u_input.d))), vec3<u32>(arg_2.b, var_1.e, 1u) | firstLeadingBit(vec3<u32>(1u, arg_2.b, u_input.d)), ~(~vec3<u32>(1u, 1u, 35825u))) << (vec3<u32>(u_input.c.x, 11289u, func_2()) % vec3<u32>(32u)));
    return Struct_1(var_1.b, false, reverseBits(vec4<i32>(arg_2.a, 22720i, u_input.b, -1i)));
}

fn func_7(arg_0: Struct_1, arg_1: Struct_4) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(112f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-1537f))))));
    let var_1 = select(firstLeadingBit(~vec4<u32>(abs(u_input.a), arg_1.a, ~18549u, ~arg_1.a)), vec4<u32>(~u_input.d, arg_1.a, arg_1.a, arg_1.a), vec4<bool>(func_4(_wgslsmith_div_u32(4294967295u, 20940u >> (u_input.a % 32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, -779f) * vec4<f32>(var_0.x, var_0.x, var_0.x, 415f))), ~(-arg_0.c.wxy)).x, func_4(~u_input.c.x, vec4<f32>(1f, var_0.x, _wgslsmith_f_op_f32(step(var_0.x, var_0.x)), 404f), -vec3<i32>(43018i, arg_0.c.x, 2147483647i)).x, false, arg_0.a.x));
    let var_2 = u_input.e;
    let var_3 = ~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.c.x << (9942u % 32u)), vec2<u32>(37036u, var_1.x) << (~var_1.zx % vec2<u32>(32u))), _wgslsmith_mod_u32(_wgslsmith_sub_u32(arg_1.a, var_1.x) >> (~arg_1.a % 32u), ~arg_1.a));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1069f, var_0.x)) * vec2<f32>(var_0.x, var_0.x)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) - vec2<f32>(-749f, var_0.x))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.x + -1000f))), -810f)));
    return var_2;
}

fn func_8(arg_0: i32, arg_1: u32) -> Struct_3 {
    global1 = array<Struct_5, 4>();
    var var_0 = ~_wgslsmith_sub_vec2_u32(max(_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, u_input.c.x)), abs(vec2<u32>(u_input.c.x, u_input.a))), vec2<u32>(_wgslsmith_div_u32(0u, u_input.d), u_input.c.x)), ~_wgslsmith_add_vec2_u32(max(u_input.c, vec2<u32>(arg_1, u_input.d)), vec2<u32>(21975u, arg_1)));
    return Struct_3(any(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true))), select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), true)), 0i, ~(-_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-53298i, u_input.e, 0i), vec3<i32>(1i, arg_0, u_input.e)), vec3<i32>(-2147483647i, -27649i, -1i) ^ vec3<i32>(arg_0, u_input.e, 1i))), _wgslsmith_f_op_f32(max(-777f, _wgslsmith_f_op_f32(-1f))), !(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), true))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 23>();
    var var_0 = func_8(func_7(func_6(~_wgslsmith_add_i32(-25214i, 2147483647i), !select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), func_5(func_1(vec4<u32>(u_input.c.x, u_input.d, u_input.c.x, 4284u), u_input.c, global1[_wgslsmith_index_u32(u_input.c.x, 4u)]), reverseBits(u_input.b), Struct_4(33638u))), Struct_4(u_input.d)), u_input.a);
    var var_1 = var_0.a;
    var_0 = Struct_3(true, u_input.b, vec3<i32>(18614i, func_8(~(-12956i) ^ func_5(Struct_5(var_0.d, var_0.e.xzz, vec4<f32>(var_0.d, -1000f, var_0.d, var_0.d), vec3<f32>(var_0.d, var_0.d, -342f), 4294967295u), -2147483647i, Struct_4(u_input.a)).a, 40550u).b, -(~49861i)), _wgslsmith_f_op_f32(var_0.d * var_0.d), vec4<bool>(func_6(_wgslsmith_sub_i32(1i, _wgslsmith_add_i32(20136i, u_input.e)), vec3<bool>(!var_0.a, var_0.e.x, var_0.a), func_5(Struct_5(var_0.d, vec3<bool>(var_0.a, var_0.e.x, var_0.e.x), vec4<f32>(var_0.d, -236f, 481f, -167f), vec3<f32>(1901f, -1000f, var_0.d), 1u), -var_0.c.x, Struct_4(u_input.d))).b, !(var_0.a || !var_0.a), var_0.a, select(var_0.a, all(var_0.e.xw), true) || var_0.e.x));
    global0 = array<Struct_2, 23>();
    var var_2 = vec3<i32>(func_7(Struct_1(!(!var_0.e.www), func_5(func_1(vec4<u32>(1u, 4294967295u, u_input.a, u_input.d), u_input.c, global1[_wgslsmith_index_u32(u_input.a, 4u)]), _wgslsmith_div_i32(0i, var_0.c.x), Struct_4(4294967295u)).c, vec4<i32>(-25516i, -8970i, var_0.c.x << (1u % 32u), -2147483647i)), Struct_4(firstTrailingBit(1u))), 0i, i32(-1i) * -22345i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d, var_0.d)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d, 1402f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1081f, -316f), vec2<f32>(1000f, var_0.d)))))));
}

