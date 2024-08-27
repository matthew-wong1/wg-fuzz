struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: f32,
    d: vec3<f32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 16>;

var<private> global1: Struct_3;

var<private> global2: vec2<f32>;

var<private> global3: array<vec3<i32>, 21>;

var<private> global4: u32 = 34831u;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: Struct_1) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(279f, arg_2.a.x, arg_1), arg_2.d)))), arg_2.d)));
    var var_1 = arg_2;
    let var_2 = -791f;
    var var_3 = arg_2;
    let var_4 = vec4<bool>(!any(vec2<bool>(true, true)), any(vec3<bool>(true, false, global1.a.x)) || all(vec4<bool>(arg_0.a.x, all(global1.a.yy), true, !arg_0.a.x)), true, (false | !(var_2 != var_0.x)) & arg_0.a.x);
    return var_1.d;
}

fn func_2() -> f32 {
    global3 = array<vec3<i32>, 21>();
    let var_0 = global1.a.yy;
    let var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1538f, global2.x, global2.x)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_3(vec4<bool>(global1.a.x, global1.a.x, var_0.x, var_0.x), global1.b), global2.x, Struct_1(vec2<f32>(157f, global2.x), vec2<i32>(-5971i, global1.b.x), global2.x, vec3<f32>(global2.x, 659f, -508f), global2.x)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-745f + -493f))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x - global2.x) + -683f), _wgslsmith_f_op_f32(sign(global2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x - global2.x) + _wgslsmith_f_op_f32(f32(-1f) * -1525f))))));
    global0 = array<vec3<u32>, 16>();
    var var_2 = vec4<f32>(_wgslsmith_f_op_vec3_f32(func_3(Struct_3(global1.a, vec2<i32>(-11027i | global1.b.x, countOneBits(2147483647i))), _wgslsmith_f_op_f32(1942f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x * 807f) - var_1.x)), Struct_1(var_1.xy, firstLeadingBit(u_input.c) ^ abs(global1.b), global2.x, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, global2.x, global2.x) * vec3<f32>(var_1.x, 777f, global2.x)))), _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_div_f32(global2.x, 1401f)))))).x, 1104f, var_1.x, _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-930f, var_1.x, false)) - _wgslsmith_f_op_f32(f32(-1f) * -359f)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(248f - global2.x))))) * _wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(-855f + _wgslsmith_f_op_f32(-var_2.x)))));
}

fn func_4(arg_0: vec2<u32>, arg_1: f32, arg_2: vec4<f32>) -> Struct_3 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, _wgslsmith_f_op_f32(-global2.x)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-446f, -1381f), arg_2.xz, true))), -countOneBits(~_wgslsmith_mult_vec2_i32(u_input.c, vec2<i32>(42765i, global1.b.x))), global2.x, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(arg_2.zww)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)));
    let var_1 = Struct_2(Struct_1(vec2<f32>(1119f, var_0.a.x), var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-959f * var_0.d.x)), _wgslsmith_f_op_vec3_f32(-arg_2.zxy), _wgslsmith_f_op_f32(select(global2.x, _wgslsmith_f_op_f32(505f + -694f), global1.a.x))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a + var_0.a) + _wgslsmith_f_op_vec2_f32(arg_2.yz * arg_2.wy))), vec2<i32>(-31305i, u_input.c.x), global2.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, global2.x)))), 1392f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-563f)) + -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) * 203f)) < 1f, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1406f, _wgslsmith_f_op_f32(-1000f * -1000f))), vec2<i32>(-countOneBits(u_input.c.x), (var_0.b.x << (arg_0.x % 32u)) ^ (i32(-1i) * -1i)), global2.x, var_0.d, global2.x), (_wgslsmith_mult_i32(~(-42655i), u_input.c.x) >> ((1u & ~u_input.a) % 32u)) | 11501i);
    return Struct_3(!select(!select(vec4<bool>(var_1.c, var_1.c, var_1.c, true), vec4<bool>(false, false, var_1.c, true), var_1.c), !global1.a, any(!global1.a)), u_input.c);
}

fn func_1() -> Struct_3 {
    var var_0 = func_4(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, u_input.a), firstTrailingBit(vec2<u32>(1u, 1u)) & _wgslsmith_add_vec2_u32(firstLeadingBit(vec2<u32>(u_input.a, 0u)), ~vec2<u32>(47159u, u_input.a))), 591f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(543f)), global2.x, _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(911f * global2.x)))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global2.x, global2.x))))), (~global1.b & ~vec2<i32>(0i, u_input.c.x)) & abs(~vec2<i32>(global1.b.x, -2147483647i)), 1554f, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-840f, _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(361f - global2.x)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(993f, global2.x, global2.x), vec3<f32>(global2.x, 1116f, global2.x)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global2.x, -1143f, global2.x))))), ~0i > u_input.b)), 878f), Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, -975f) * _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global2.x, global2.x)))))), vec2<i32>(~(var_0.b.x ^ 341i), -12125i), _wgslsmith_f_op_f32(trunc(global2.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(100f, 381f, 620f) - vec3<f32>(global2.x, 989f, global2.x)))), vec3<f32>(-1714f, 1441f, _wgslsmith_f_op_f32(trunc(global2.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(f32(-1f) * -971f)))), any(vec3<bool>(true, global1.a.x, true)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), global2.x), ~global1.b, -1000f, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(457f, 214f)) - 1037f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) + _wgslsmith_f_op_f32(global2.x * 1000f)), _wgslsmith_f_op_f32(-global2.x)), 1239f), -1i << (u_input.a % 32u));
    let var_2 = global1.a.x;
    var var_3 = select(-firstLeadingBit(~vec3<i32>(u_input.c.x, -5309i, 76417i)), _wgslsmith_div_vec3_i32(firstLeadingBit(global3[_wgslsmith_index_u32(~(~u_input.a), 21u)]), global3[_wgslsmith_index_u32(abs(~u_input.a), 21u)]), func_4(reverseBits(~vec2<u32>(u_input.a, u_input.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.c) - -1000f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1073f, 166f, 233f, var_1.b.e)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(948f, -128f, 380f, -321f)))).a.x && true);
    let var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(-var_1.b.d.xy), vec2<i32>(_wgslsmith_sub_i32(var_1.a.b.x, 1i) ^ 1i, -24330i), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-964f, _wgslsmith_div_f32(var_1.a.c, var_1.d.d.x)) * _wgslsmith_f_op_f32(f32(-1f) * -140f)))), _wgslsmith_f_op_vec3_f32(func_3(func_4(firstLeadingBit(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.a, u_input.a))), global2.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.c, -416f, 1100f, global2.x)))), global2.x, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(406f * global2.x), _wgslsmith_f_op_f32(var_1.b.e + -868f)), -reverseBits(vec2<i32>(var_3.x, 2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), vec3<f32>(_wgslsmith_f_op_f32(-global2.x), 341f, _wgslsmith_f_op_f32(floor(236f))), 583f))), _wgslsmith_f_op_f32(sign(-1237f)));
    return Struct_3(var_0.a, vec2<i32>(-1i) * -var_4.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 16>();
    var var_0 = func_1();
    global1 = func_4(firstTrailingBit(vec2<u32>(u_input.a, countOneBits(~1u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global2.x + -363f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-317f - 274f) - _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_div_f32(-284f, _wgslsmith_f_op_f32(f32(-1f) * -824f)), global2.x, _wgslsmith_f_op_f32(-global2.x))));
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(265f, -1079f) * vec2<f32>(1605f, 845f))))) * _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(global2.x, 1653f)), _wgslsmith_f_op_f32(f32(-1f) * -633f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-364f, 2078f) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global2.x, 595f), vec2<f32>(global2.x, 1484f)))))));
    let var_1 = vec3<i32>(2147483647i, select(global1.b.x, u_input.b, select(!all(var_0.a.xzz), true, var_0.a.x)), u_input.c.x);
    global4 = ~37988u;
    var_0 = Struct_3(!var_0.a, vec2<i32>(-(~(-13250i)), 0i));
    var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(min(1u, ~u_input.a), _wgslsmith_clamp_u32(u_input.a, 3364u, u_input.a)) ^ 1u, var_1.x, -251f);
}

