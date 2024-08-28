struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: f32,
    d: bool,
    e: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_5 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 5> = array<vec2<i32>, 5>(vec2<i32>(1i, 1i), vec2<i32>(0i, 2904i), vec2<i32>(-37909i, 16443i), vec2<i32>(0i, -5958i), vec2<i32>(0i, -28579i));

var<private> global1: array<i32, 8>;

var<private> global2: f32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<u32>) -> bool {
    let var_0 = Struct_2(!all(vec3<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 8u)] <= -6593i, true)), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(729f, 1055f))), all(vec2<bool>(true, true)), ~vec3<i32>(1i, 1i, 1i));
    var var_1 = Struct_3(Struct_2(any(select(vec2<bool>(true, true), !vec2<bool>(var_0.b, true), !var_0.a)), var_0.b, 888f, -_wgslsmith_add_i32(-1i, u_input.a.x) == 1i, select(u_input.a.yxw, select(-vec3<i32>(var_0.e.x, -2147483647i, -1i), ~u_input.a.xwz, select(vec3<bool>(var_0.d, var_0.d, false), vec3<bool>(true, var_0.a, var_0.d), var_0.b)), !(!vec3<bool>(false, var_0.d, false)))));
    global1 = array<i32, 8>();
    let var_2 = 785f;
    global2 = var_1.a.c;
    return any(!(!vec4<bool>(true, true, !var_1.a.d, true)));
}

fn func_2() -> Struct_4 {
    let var_0 = ~(~u_input.c.wy) << (u_input.c.zz % vec2<u32>(32u));
    let var_1 = Struct_1(~(_wgslsmith_add_vec3_i32(u_input.a.zyw, _wgslsmith_add_vec3_i32(u_input.a.wxw, vec3<i32>(12924i, global1[_wgslsmith_index_u32(4294967295u, 8u)], u_input.b.x))) | -(~vec3<i32>(26249i, u_input.b.x, u_input.b.x))), !vec3<bool>(0u <= var_0.x, true, func_3(u_input.c.zyx)), _wgslsmith_f_op_f32(950f + _wgslsmith_f_op_f32(f32(-1f) * -902f)), true || any(vec4<bool>(any(vec2<bool>(false, true)), any(vec2<bool>(true, false)), select(false, false, true), false)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.c, -1324f, 490f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.c, var_1.c, var_1.c))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1260f, 521f, var_1.c))))))));
    var var_3 = Struct_1(vec3<i32>(_wgslsmith_div_i32(_wgslsmith_clamp_i32(var_1.a.x, firstLeadingBit(68131i), u_input.a.x | 17793i), var_1.a.x), var_1.a.x, reverseBits(~11356i)), select(select(select(var_1.b, var_1.b, select(vec3<bool>(var_1.d, var_1.b.x, false), var_1.b, var_1.b.x)), select(select(var_1.b, vec3<bool>(true, true, false), var_1.b), var_1.b, select(true, var_1.b.x, var_1.b.x)), true), var_1.b, var_1.b), -507f, var_1.b.x);
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(934f)) * 2339f) + var_3.c)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -546f))));
    return Struct_4(Struct_1(var_1.a, select(select(vec3<bool>(false, var_3.b.x, var_3.d), vec3<bool>(var_1.d, false, false), false), select(vec3<bool>(var_3.d, true, var_3.d), select(vec3<bool>(false, var_3.b.x, var_3.d), vec3<bool>(var_3.d, false, true), var_1.d), var_3.b), all(select(vec4<bool>(false, var_3.b.x, var_3.d, false), vec4<bool>(false, false, false, false), vec4<bool>(var_3.b.x, var_1.d, true, var_3.d)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(114f + 466f))), select(var_3.d, true, true)), u_input.c);
}

fn func_1(arg_0: u32) -> i32 {
    var var_0 = vec2<i32>(-2147483647i, u_input.a.x);
    var var_1 = func_2();
    var_1 = func_2();
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-194f * var_1.a.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2751f, _wgslsmith_f_op_f32(-var_1.a.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-700f + var_1.a.c) * _wgslsmith_f_op_f32(ceil(284f))))), -824f);
    let var_3 = var_1.a.b.yy;
    return _wgslsmith_clamp_i32(-2147483647i, 56787i, i32(-1i) * -1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -func_1(_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(u_input.c.x | 1u, 4294967295u, 4294967295u, 4294967295u)));
    global0 = array<vec2<i32>, 5>();
    let var_1 = true;
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-479f))))));
    var var_2 = u_input.c.wyz;
    var_0 = -1i;
    var_0 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(-u_input.a.wxw), vec3<f32>(_wgslsmith_f_op_f32(-func_2().a.c), _wgslsmith_f_op_f32(1806f + -1789f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1616f * 454f) - -404f)));
}

