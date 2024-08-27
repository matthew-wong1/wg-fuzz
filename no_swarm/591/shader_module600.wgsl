struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(1i, vec3<u32>(69551u, 56698u, 0u), false), Struct_1(0i, vec3<u32>(1u, 0u, 4294967295u), false), Struct_1(1i, vec3<u32>(1u, 27591u, 4294967295u), true), Struct_1(-1i, vec3<u32>(46766u, 1u, 48802u), false), Struct_1(35936i, vec3<u32>(0u, 59933u, 1u), false), Struct_1(1i, vec3<u32>(1u, 40704u, 7544u), true), Struct_1(10101i, vec3<u32>(83726u, 1u, 25216u), false), Struct_1(1i, vec3<u32>(42170u, 67828u, 1u), true), Struct_1(9463i, vec3<u32>(5487u, 0u, 0u), false), Struct_1(-1i, vec3<u32>(0u, 0u, 34111u), false), Struct_1(32458i, vec3<u32>(4294967295u, 32501u, 0u), false), Struct_1(-27691i, vec3<u32>(60943u, 21681u, 1u), true), Struct_1(i32(-2147483648), vec3<u32>(4294967295u, 0u, 1u), false), Struct_1(i32(-2147483648), vec3<u32>(31455u, 1u, 0u), false), Struct_1(83397i, vec3<u32>(4294967295u, 41273u, 76911u), false), Struct_1(-31252i, vec3<u32>(32266u, 0u, 0u), false), Struct_1(0i, vec3<u32>(0u, 38881u, 0u), true), Struct_1(-1i, vec3<u32>(5708u, 4294967295u, 17294u), true), Struct_1(-1i, vec3<u32>(0u, 1u, 1u), true), Struct_1(0i, vec3<u32>(8933u, 98298u, 8333u), false), Struct_1(17442i, vec3<u32>(125510u, 1u, 4294967295u), false), Struct_1(-13052i, vec3<u32>(0u, 4294967295u, 1u), true), Struct_1(-4425i, vec3<u32>(26819u, 49446u, 4474u), true), Struct_1(1i, vec3<u32>(4294967295u, 4294967295u, 107621u), true), Struct_1(2147483647i, vec3<u32>(1u, 18057u, 4294967295u), true), Struct_1(3312i, vec3<u32>(4294967295u, 1u, 53368u), false), Struct_1(i32(-2147483648), vec3<u32>(0u, 0u, 35006u), false), Struct_1(0i, vec3<u32>(35459u, 25647u, 0u), true), Struct_1(1i, vec3<u32>(13560u, 4294967295u, 4294967295u), false), Struct_1(1i, vec3<u32>(4294967295u, 12518u, 0u), false), Struct_1(38711i, vec3<u32>(52368u, 4294967295u, 29055u), true), Struct_1(i32(-2147483648), vec3<u32>(541u, 64775u, 0u), false));

var<private> global1: bool;

var<private> global2: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(-7831i, vec3<u32>(27144u, 71527u, 15663u), false), Struct_1(-10004i, vec3<u32>(4294967295u, 1u, 4294967295u), false), Struct_1(-21932i, vec3<u32>(41152u, 4294967295u, 1u), true), Struct_1(i32(-2147483648), vec3<u32>(29362u, 22772u, 27966u), false), Struct_1(2147483647i, vec3<u32>(43906u, 84218u, 1u), true), Struct_1(-45510i, vec3<u32>(4294967295u, 71445u, 1u), true), Struct_1(0i, vec3<u32>(2934u, 1u, 0u), true), Struct_1(44410i, vec3<u32>(1u, 1u, 4294967295u), false));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1) -> vec3<bool> {
    global1 = any(select(!vec4<bool>(true, true, false, !arg_0.c), vec4<bool>(true, true, false, true), !arg_0.c));
    var var_0 = global0[_wgslsmith_index_u32(arg_0.b.x, 32u)];
    var_0 = Struct_1(_wgslsmith_mod_i32(1i, max(_wgslsmith_mult_i32(7391i, 1i), var_0.a)), abs(~arg_0.b), all(!vec2<bool>(!arg_1.x, any(vec2<bool>(arg_2.c, false)))));
    var_0 = global2[_wgslsmith_index_u32(arg_0.b.x, 8u)];
    var var_1 = vec4<bool>(!var_0.c, all(vec4<bool>(true, true, all(vec4<bool>(true, true, true, true)), !(!arg_0.c))), false, var_0.c);
    return arg_1;
}

fn func_2(arg_0: vec3<bool>, arg_1: u32) -> vec2<bool> {
    let var_0 = 10799u;
    global1 = arg_0.x;
    var var_1 = Struct_1(-u_input.a.x, min(_wgslsmith_div_vec3_u32(min(~vec3<u32>(var_0, 24316u, var_0), vec3<u32>(6998u, arg_1, var_0)), min(vec3<u32>(1u, arg_1, 4294967295u), _wgslsmith_add_vec3_u32(vec3<u32>(12626u, 0u, var_0), vec3<u32>(15821u, var_0, var_0)))), min(vec3<u32>(~0u, 1u, ~var_0), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_1, 23269u, 34098u), ~vec3<u32>(40235u, 1u, 54687u)))), all(arg_0));
    let var_2 = Struct_1(2147483647i, select(select(var_1.b, vec3<u32>(arg_1, 40035u, var_0), func_3(Struct_1(1i, vec3<u32>(1u, 4294967295u, 1u), false), select(vec3<bool>(true, var_1.c, arg_0.x), arg_0, var_1.c), Struct_1(33481i, vec3<u32>(var_1.b.x, arg_1, 0u), false))), max(countOneBits(~vec3<u32>(var_0, arg_1, var_0)), vec3<u32>(arg_1, 46031u, 4294967295u)), true), false);
    var var_3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1398f, 1414f, 1000f, 1304f)))))), vec4<f32>(1f, -137f, _wgslsmith_f_op_f32(f32(-1f) * -384f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -920f) * _wgslsmith_div_f32(814f, -380f))))));
    return vec2<bool>(var_2.c, true);
}

fn func_1(arg_0: vec3<f32>) -> Struct_1 {
    let var_0 = global2[_wgslsmith_index_u32(4294967295u, 8u)];
    global2 = array<Struct_1, 8>();
    global2 = array<Struct_1, 8>();
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1065f, 1f), _wgslsmith_f_op_vec2_f32(arg_0.xz - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.x, -834f), vec2<f32>(arg_0.x, -1363f), var_0.c)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.yy + vec2<f32>(492f, arg_0.x)) * _wgslsmith_f_op_vec2_f32(step(arg_0.xx, arg_0.zy))) * arg_0.xx)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.yx) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1279f, 652f))), _wgslsmith_f_op_vec2_f32(-arg_0.xy), select(func_2(vec3<bool>(true, var_0.c, false), 5400u), vec2<bool>(false, var_0.c), !var_0.c))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-300f, arg_0.x)))))), vec2<bool>(!all(vec3<bool>(var_0.c, var_0.c, var_0.c)), true)));
    let var_2 = Struct_1(u_input.a.x, firstTrailingBit(~(~var_0.b)), var_0.c);
    return Struct_1(max(countOneBits(abs(0i)), -((i32(-1i) * -46084i) >> (_wgslsmith_clamp_u32(var_0.b.x, 0u, var_0.b.x) % 32u))), var_0.b & _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(var_2.b.x, 497u, var_0.b.x), ~var_2.b), countOneBits(var_2.b)), false);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_f32(1765f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_1 = select(18075u, ~(~_wgslsmith_mod_u32(max(arg_0.b.x, arg_0.b.x), 4294967295u)), !all(!select(vec4<bool>(arg_1.c, true, true, false), vec4<bool>(arg_0.c, false, false, arg_0.c), vec4<bool>(arg_0.c, true, arg_1.c, arg_1.c))));
    let var_2 = Struct_1(~(~_wgslsmith_mult_i32(arg_0.a << (var_1 % 32u), 1i)), vec3<u32>(arg_1.b.x, _wgslsmith_mult_u32(~abs(42028u), arg_1.b.x), arg_0.b.x), all(!(!(!vec3<bool>(false, arg_0.c, arg_0.c)))));
    let var_3 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(2492f + var_0), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-1999f * var_0))))));
    let var_4 = var_3;
    return arg_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(1i, ~vec3<u32>(~4294967295u, 1u, ~1u), func_4(func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(716f, 569f, 1007f), vec3<f32>(770f, -1574f, -1210f))))), Struct_1(-firstLeadingBit(u_input.b), min(vec3<u32>(22199u, 9270u, 78261u), countOneBits(vec3<u32>(58545u, 16037u, 0u))), !any(vec3<bool>(true, false, true)))));
    global0 = array<Struct_1, 32>();
    global1 = true;
    var var_1 = ~firstLeadingBit(~(~_wgslsmith_mod_u32(4294967295u, 28763u)));
    var var_2 = Struct_1(u_input.b, ~min(vec3<u32>(_wgslsmith_clamp_u32(var_0.b.x, 39268u, var_0.b.x), _wgslsmith_dot_vec3_u32(var_0.b, vec3<u32>(var_0.b.x, 72799u, var_0.b.x)), var_0.b.x), vec3<u32>(~var_0.b.x, _wgslsmith_mod_u32(0u, var_0.b.x), ~4294967295u)), var_0.c && false);
    let var_3 = !(!(!vec3<bool>(true, true, var_0.c & true)));
    global0 = array<Struct_1, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(-2050f, _wgslsmith_mod_vec3_i32((_wgslsmith_clamp_vec3_i32(vec3<i32>(var_2.a, 26008i, -1i), vec3<i32>(var_0.a, 21671i, -6645i), vec3<i32>(var_2.a, var_2.a, var_0.a)) | vec3<i32>(var_2.a, -14097i, var_0.a)) << (_wgslsmith_add_vec3_u32(vec3<u32>(var_0.b.x, var_0.b.x, 1u), firstTrailingBit(vec3<u32>(4294967295u, var_2.b.x, 13069u))) % vec3<u32>(32u)), -_wgslsmith_mod_vec3_i32(vec3<i32>(55290i, -3706i, var_2.a), ~vec3<i32>(u_input.b, var_0.a, u_input.b))));
}

