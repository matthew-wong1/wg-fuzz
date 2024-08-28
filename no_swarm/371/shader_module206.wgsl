struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_3,
    c: f32,
    d: u32,
}

struct Struct_5 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(-11294i, vec4<i32>(14943i, -44480i, -4942i, -46803i), -1i), Struct_1(i32(-2147483648), vec4<i32>(-20414i, 2147483647i, 14942i, -24365i), 2147483647i), Struct_1(3135i, vec4<i32>(1i, -32964i, -1139i, 0i), 8455i), Struct_1(-10060i, vec4<i32>(1i, 2147483647i, i32(-2147483648), -718i), -24453i), Struct_1(-1i, vec4<i32>(-23660i, -4766i, -37957i, -1i), -16986i), Struct_1(-24462i, vec4<i32>(12510i, 2147483647i, -48014i, 0i), 34710i), Struct_1(2147483647i, vec4<i32>(42075i, 0i, 1i, -1i), 2147483647i), Struct_1(39086i, vec4<i32>(1i, 21947i, i32(-2147483648), 24155i), 1i), Struct_1(-1i, vec4<i32>(-47522i, 2147483647i, 2147483647i, i32(-2147483648)), 1i), Struct_1(-1i, vec4<i32>(-1i, -1i, -21054i, 0i), i32(-2147483648)), Struct_1(-1i, vec4<i32>(-892i, 5972i, -1i, i32(-2147483648)), 1i), Struct_1(1i, vec4<i32>(-15928i, 2147483647i, -7867i, 0i), -4167i), Struct_1(-13783i, vec4<i32>(-59685i, 2147483647i, 75548i, -1i), -1i), Struct_1(1i, vec4<i32>(46389i, -73403i, i32(-2147483648), 41664i), 0i), Struct_1(1i, vec4<i32>(26651i, 2147483647i, 1i, 1i), -16486i), Struct_1(i32(-2147483648), vec4<i32>(-4338i, -14904i, 0i, 22195i), 25307i), Struct_1(i32(-2147483648), vec4<i32>(22851i, 70912i, i32(-2147483648), -1261i), -29449i));

var<private> global1: array<Struct_5, 10>;

var<private> global2: vec2<bool> = vec2<bool>(false, false);

var<private> global3: array<vec3<u32>, 27>;

var<private> global4: array<vec2<bool>, 8>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2() -> Struct_3 {
    global4 = array<vec2<bool>, 8>();
    global2 = select(select(select(vec2<bool>(true, true), global4[_wgslsmith_index_u32(7581u ^ _wgslsmith_sub_u32(u_input.c.x, 4294967295u), 8u)], true), !global4[_wgslsmith_index_u32(71527u, 8u)], global2.x), vec2<bool>(true, true), global2.x);
    var var_0 = 2147483647i;
    var var_1 = u_input.b;
    var var_2 = Struct_2(~var_1.wzz);
    return Struct_3(~u_input.a, !vec4<bool>(~u_input.d.x < ~(-1i), true, true, all(vec4<bool>(false, global2.x, global2.x, true))));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<f32>) -> f32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(step(arg_1.x, _wgslsmith_f_op_f32(trunc(arg_1.x)))), _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(583f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.x))), -276f, false)), 1167f);
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.b.xwx, u_input.c.ywx), vec3<u32>(1u, reverseBits(max(39646u, arg_0.d)), ~(~arg_0.d))), 4294967295u), 17u)];
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -210f);
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.x))) - var_2) + 524f), _wgslsmith_f_op_f32(min(-518f, arg_1.x))));
}

fn func_1(arg_0: vec2<i32>) -> Struct_2 {
    global2 = vec2<bool>(!all(vec3<bool>(u_input.c.x == u_input.c.x, true, any(vec4<bool>(global2.x, true, global2.x, true)))), _wgslsmith_f_op_f32(func_3(Struct_4(_wgslsmith_div_vec3_f32(vec3<f32>(-815f, -162f, 1788f), vec3<f32>(975f, 1101f, -1955f)), func_2(), -1144f, select(u_input.b.x, u_input.b.x, false)), vec4<f32>(_wgslsmith_f_op_f32(round(406f)), _wgslsmith_f_op_f32(-2254f - 212f), -1652f, -1866f))) != -2057f);
    let var_0 = global0[_wgslsmith_index_u32(~countOneBits(_wgslsmith_add_u32(u_input.b.x, ~(~4294967295u))), 17u)];
    var var_1 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_4(vec3<f32>(1000f, 1033f, -2316f), Struct_3(var_0.a, vec4<bool>(true, true, global2.x, global2.x)), 1348f, u_input.b.x), vec4<f32>(-776f, 725f, 450f, -1098f))))), 1602f, _wgslsmith_f_op_f32(func_3(Struct_4(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1040f, -383f, -1000f))), Struct_3(0i, vec4<bool>(false, false, global2.x, global2.x)), -453f, ~4294967295u), vec4<f32>(-848f, -459f, _wgslsmith_f_op_f32(ceil(-364f)), -1000f)))), func_2(), 333f, ~(~u_input.c.x));
    var var_2 = u_input.c.x;
    var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(floor(2049f)), _wgslsmith_div_f32(_wgslsmith_div_f32(var_1.c, -926f), _wgslsmith_div_f32(-1196f, 1258f)), var_1.a.x))), Struct_3(var_1.b.a, vec4<bool>(countOneBits(72721u) < (var_1.d << (4294967295u % 32u)), any(var_1.b.b.yyx), !global2.x, !(u_input.b.x <= 0u))), _wgslsmith_div_f32(var_1.c, _wgslsmith_div_f32(var_1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -736f))), 48595u);
    return Struct_2(vec3<u32>(_wgslsmith_mod_u32(var_1.d, ~u_input.c.x), select(u_input.c.x, reverseBits(var_1.d), global2.x), ~0u) ^ (select(u_input.b.xzx >> (global3[_wgslsmith_index_u32(4294967295u, 27u)] % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(u_input.c.wzw, vec3<u32>(var_1.d, u_input.b.x, var_1.d)), var_1.b.b.www) << (_wgslsmith_clamp_vec3_u32(~vec3<u32>(var_1.d, var_1.d, u_input.c.x), vec3<u32>(u_input.c.x, 2883u, u_input.c.x) << (vec3<u32>(var_1.d, u_input.b.x, var_1.d) % vec3<u32>(32u)), global3[_wgslsmith_index_u32(u_input.c.x, 27u)]) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<u32>, 27>();
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(963f))))));
    let var_1 = func_1(-(~(-vec2<i32>(0i, -2147483647i))));
    var var_2 = Struct_1(0i << (_wgslsmith_dot_vec2_u32(var_1.a.yx, vec2<u32>(u_input.b.x, var_1.a.x)) % 32u), -abs(countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(1111i, -2147483647i, -2128i, -46039i), vec4<i32>(u_input.d.x, 0i, -2147483647i, -3097i)))), u_input.d.x);
    var var_3 = func_1(u_input.d << ((((u_input.c.yw | vec2<u32>(u_input.c.x, 68298u)) & u_input.c.yx) | vec2<u32>(29879u, abs(78364u))) % vec2<u32>(32u)));
    var var_4 = select(func_2().b.zw, !select(global4[_wgslsmith_index_u32(4294967295u, 8u)], global4[_wgslsmith_index_u32(16174u, 8u)], true), global2.x);
    let var_5 = func_1(~(~(var_2.b.yy << (var_3.a.xz % vec2<u32>(32u)))));
    var var_6 = Struct_3(_wgslsmith_add_i32(_wgslsmith_sub_i32(abs(var_2.c), 2147483647i), 1i), vec4<bool>(any(!(!vec3<bool>(true, global2.x, global2.x))), false, !(-600f >= _wgslsmith_f_op_f32(round(-784f))), true));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, var_5.a.x, countOneBits(var_2.b.yxx) >> (global3[_wgslsmith_index_u32(70900u, 27u)] % vec3<u32>(32u)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1049f, -1203f))))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -130f), _wgslsmith_f_op_f32(-2291f - 1129f)), false)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1f, 1f))) * vec2<f32>(1f, 1f))));
}

