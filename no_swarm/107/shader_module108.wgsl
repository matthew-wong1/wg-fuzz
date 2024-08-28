struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 18>;

var<private> global1: vec3<u32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec3<bool> {
    let var_0 = vec4<bool>(select(true || !any(vec3<bool>(true, false, false)), false, all(vec3<bool>(select(true, false, false), true, true))), !(!(all(vec4<bool>(false, true, false, true)) || select(false, true, true))), all(!vec4<bool>(true, all(vec2<bool>(false, true)), false, true)), true);
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(global0[_wgslsmith_index_u32(1u, 18u)])), _wgslsmith_f_op_vec2_f32(vec2<f32>(-519f, 121f) - vec2<f32>(219f, 1000f)))))), !vec3<bool>(var_0.x, var_0.x | any(var_0), var_0.x), var_0.yxx);
    global0 = array<vec2<f32>, 18>();
    var var_2 = select(var_0, !var_0, !any(select(!vec3<bool>(false, var_0.x, var_1.b.x), vec3<bool>(var_0.x, false, var_1.b.x), any(var_0))));
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(var_1.a.x, _wgslsmith_f_op_f32(1233f * var_1.a.x))), _wgslsmith_f_op_f32(trunc(2163f)))), vec3<bool>(true, all(!select(vec4<bool>(false, var_1.b.x, var_1.b.x, var_1.c.x), vec4<bool>(var_0.x, var_1.b.x, var_1.c.x, true), var_1.c.x)), !any(!vec4<bool>(true, var_2.x, var_1.b.x, var_1.c.x))), var_0.yyy);
    return var_0.yyz;
}

fn func_2() -> Struct_1 {
    global0 = array<vec2<f32>, 18>();
    var var_0 = ~_wgslsmith_sub_vec2_u32(u_input.a.ww, vec2<u32>(54044u, 1u));
    var var_1 = global1.x;
    let var_2 = !(!select(func_3(), func_3(), vec3<bool>(true, true, true)));
    var_0 = u_input.a.xx;
    return Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(var_0.x, 18u)])))))), select(vec3<bool>(select(101641u, 26941u, var_2.x) > 4294967295u, any(var_2), true), vec3<bool>(false, any(!var_2), all(vec4<bool>(var_2.x, var_2.x, false, false))), !(!select(var_2, vec3<bool>(false, var_2.x, true), var_2))), var_2);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>) -> Struct_1 {
    global1 = firstTrailingBit(select(u_input.a.xzw, _wgslsmith_mod_vec3_u32(vec3<u32>(58842u & u_input.a.x, global1.x, global1.x), u_input.a.zyz), arg_0.c.x));
    global0 = array<vec2<f32>, 18>();
    global0 = array<vec2<f32>, 18>();
    let var_0 = -(~(~_wgslsmith_dot_vec3_i32(-vec3<i32>(0i, -1i, -2147483647i), ~vec3<i32>(34587i, 0i, -15422i))));
    var var_1 = arg_0;
    return Struct_1(func_2().a, vec3<bool>(true, var_1.b.x, func_3().x), func_2().c);
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: u32, arg_3: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x + func_2().a.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.a.x) * _wgslsmith_f_op_f32(arg_3.a.x - arg_1)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(1256f)), _wgslsmith_f_op_f32(-arg_3.a.x))), arg_1))));
    var var_1 = select(select(select(!vec4<bool>(arg_0.c.x, false, true, arg_0.c.x), vec4<bool>(true, arg_3.c.x, true, true), true), !(!select(vec4<bool>(arg_3.b.x, false, arg_0.c.x, true), vec4<bool>(arg_3.b.x, true, arg_0.c.x, true), arg_0.c.x)), func_3().x), vec4<bool>(~42684u > global1.x, !(arg_0.a.x > arg_1) || func_4(Struct_1(vec2<f32>(arg_3.a.x, -1850f), vec3<bool>(false, arg_0.c.x, arg_0.c.x), arg_0.b), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1118f, arg_3.a.x, arg_0.a.x)))).b.x, true, true), !(_wgslsmith_clamp_i32(-2147483647i, 13039i, 2147483647i) >= _wgslsmith_add_i32(-58168i, 1i)) | any(select(vec4<bool>(arg_0.b.x, false, arg_3.b.x, false), vec4<bool>(true, true, arg_3.c.x, true), func_4(arg_0, vec3<f32>(arg_3.a.x, 1085f, 506f)).b.x)));
    var var_2 = select(~((u_input.a.wxz | vec3<u32>(arg_2, 0u, u_input.a.x)) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(2901u, arg_2, 4294967295u), u_input.a.yzy) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_2, 38232u, 8519u), _wgslsmith_mod_vec3_u32(vec3<u32>(global1.x, arg_2, arg_2), vec3<u32>(u_input.a.x, 4294967295u, 0u)), min(vec3<u32>(4294967295u, 1u, u_input.a.x), vec3<u32>(arg_2, 605u, 5363u))) >> (vec3<u32>(_wgslsmith_div_u32(4294967295u, u_input.a.x), firstTrailingBit(global1.x), ~u_input.a.x) % vec3<u32>(32u)), true) & u_input.a.zwz;
    let var_3 = func_2();
    let var_4 = func_4(Struct_1(vec2<f32>(_wgslsmith_div_f32(var_3.a.x, _wgslsmith_f_op_f32(select(1296f, 639f, arg_3.b.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-937f, arg_0.a.x) * _wgslsmith_f_op_f32(sign(var_3.a.x)))), vec3<bool>(false, all(!var_1.ww), false), !func_4(func_4(Struct_1(global0[_wgslsmith_index_u32(u_input.a.x, 18u)], arg_0.b, vec3<bool>(var_3.b.x, arg_3.c.x, true)), vec3<f32>(-609f, arg_0.a.x, arg_1)), vec3<f32>(arg_1, 282f, var_3.a.x)).b), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-349f, var_3.a.x, var_3.a.x), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(598f, -1058f, 1731f))))))));
    return 24681u;
}

fn func_1() -> vec2<i32> {
    global0 = array<vec2<f32>, 18>();
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(347f, 744f)) - vec2<f32>(_wgslsmith_f_op_f32(select(-1246f, 1000f, false)), -1269f))) - _wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(select(23119u, select(36893u, ~0u, select(true, true, false)), _wgslsmith_dot_vec4_i32(vec4<i32>(68796i, 17353i, -2147483647i, 1i), vec4<i32>(12861i, -55677i, 1i, -2147483647i)) <= firstLeadingBit(-36747i)), 18u)]));
    global1 = min(u_input.a.zyx & u_input.a.yyx, countOneBits(firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(15948u, 22609u, 4294967295u), vec3<u32>(4294967295u, global1.x, 4294967295u)) << (vec3<u32>(u_input.a.x, 91596u, 73273u) % vec3<u32>(32u)))));
    var var_1 = ~countOneBits(vec4<u32>(global1.x | ~1u, max(_wgslsmith_dot_vec2_u32(global1.xx, global1.xz), _wgslsmith_sub_u32(global1.x, 0u)), u_input.a.x, ~42544u));
    var_1 = vec4<u32>(1u, _wgslsmith_sub_u32(func_5(Struct_1(vec2<f32>(var_0.x, var_0.x), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + 1151f) + -1579f), abs(u_input.a.x) | global1.x, func_4(func_2(), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1956f, -898f, -274f), vec3<f32>(-413f, 485f, -320f), false)))), ~(~u_input.a.x)), ~0u, 1u);
    return countOneBits(min(vec2<i32>(1i, 1i), -vec2<i32>(-2932i, _wgslsmith_dot_vec4_i32(vec4<i32>(-29087i, 2147483647i, -1i, -25925i), vec4<i32>(-1i, -5571i, 2147483647i, 0i)))));
}

fn func_6(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: vec3<f32>, arg_3: bool) -> Struct_1 {
    let var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(exp2(arg_2.x)), -1000f), !(!func_2().b), vec3<bool>(true, true, true));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(arg_2.x, arg_2.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1000f, 678f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(func_2().a)) - _wgslsmith_f_op_vec2_f32(-func_4(Struct_1(var_0.a, var_0.b, var_0.b), arg_2).a)))));
    var var_2 = firstLeadingBit(~_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.x ^ arg_0.x, arg_1.x, -28231i, arg_0.x ^ arg_0.x), select(vec4<i32>(2147483647i, 1i, arg_0.x, arg_1.x), min(vec4<i32>(-1i, arg_1.x, arg_0.x, arg_0.x), vec4<i32>(-47933i, arg_0.x, arg_0.x, arg_0.x)), !var_0.b.x)));
    let var_3 = func_2();
    var_2 = ~(~vec4<i32>(-36398i, -46527i, abs(select(var_2.x, 1i, true)), -1i));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(-31882i);
    var var_1 = func_6(func_1(), _wgslsmith_add_vec2_i32(reverseBits(abs(_wgslsmith_sub_vec2_i32(vec2<i32>(var_0, var_0), vec2<i32>(var_0, 40356i)))), vec2<i32>(_wgslsmith_div_i32(var_0 >> (global1.x % 32u), countOneBits(var_0)), 55606i)), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(-591f * 294f)))), _wgslsmith_f_op_f32(max(-186f, _wgslsmith_f_op_f32(f32(-1f) * -861f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-917f, -344f)))) * _wgslsmith_f_op_f32(sign(-580f)))), any(!func_3().xy) | false);
    let var_2 = func_2();
    var_1 = var_2;
    var var_3 = var_2;
    global0 = array<vec2<f32>, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(~(-1i) >> (0u % 32u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_3.a.x, -721f, _wgslsmith_f_op_f32(floor(1484f)), -425f)))), select(u_input.a.wx, vec2<u32>(4294967295u, 39502u), vec2<bool>(10331i >= var_0, any(vec4<bool>(false, var_3.b.x, true, true)))), u_input.a.x);
}

