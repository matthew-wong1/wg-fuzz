struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 24>;

var<private> global1: Struct_2;

var<private> global2: f32 = -1059f;

var<private> global3: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec3<i32>(5606i, 40950i, i32(-2147483648)), vec4<f32>(528f, 3094f, 652f, 270f)), Struct_1(vec3<i32>(-33841i, i32(-2147483648), -1i), vec4<f32>(907f, 1050f, -960f, 1007f)), Struct_1(vec3<i32>(0i, i32(-2147483648), 29460i), vec4<f32>(-264f, -1086f, -1000f, 1000f)), Struct_1(vec3<i32>(1i, -19530i, -1i), vec4<f32>(-1285f, 103f, 1058f, -1393f)), Struct_1(vec3<i32>(9222i, -22945i, -1i), vec4<f32>(-407f, 188f, -426f, 560f)), Struct_1(vec3<i32>(-1i, 18616i, i32(-2147483648)), vec4<f32>(401f, -344f, 1370f, -867f)), Struct_1(vec3<i32>(1i, -4594i, 48527i), vec4<f32>(440f, -403f, 359f, 617f)), Struct_1(vec3<i32>(34604i, -13107i, i32(-2147483648)), vec4<f32>(-1397f, 941f, -1060f, -405f)), Struct_1(vec3<i32>(41221i, 37966i, -1i), vec4<f32>(2339f, 926f, 2243f, 354f)), Struct_1(vec3<i32>(0i, 2147483647i, -32611i), vec4<f32>(-517f, -328f, -803f, -863f)), Struct_1(vec3<i32>(2147483647i, -1i, i32(-2147483648)), vec4<f32>(-1979f, -1109f, 952f, 1361f)), Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, 0i), vec4<f32>(1232f, -1290f, -1794f, -1146f)), Struct_1(vec3<i32>(0i, -45403i, -17608i), vec4<f32>(-409f, 2716f, 830f, 1314f)), Struct_1(vec3<i32>(0i, 63175i, 18574i), vec4<f32>(-1000f, -1721f, -584f, -519f)), Struct_1(vec3<i32>(0i, 0i, 7830i), vec4<f32>(1498f, 826f, -1089f, 211f)), Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), 0i), vec4<f32>(-1011f, 900f, -1992f, 1296f)), Struct_1(vec3<i32>(-31273i, -3198i, 22i), vec4<f32>(642f, 462f, -494f, 257f)), Struct_1(vec3<i32>(0i, 1i, 0i), vec4<f32>(-807f, 411f, 1527f, -520f)), Struct_1(vec3<i32>(-23540i, 2147483647i, 0i), vec4<f32>(1941f, 444f, -974f, -1000f)), Struct_1(vec3<i32>(0i, i32(-2147483648), 2147483647i), vec4<f32>(1634f, -1717f, -1600f, -1381f)), Struct_1(vec3<i32>(1i, 1963i, i32(-2147483648)), vec4<f32>(210f, -905f, 1381f, 293f)), Struct_1(vec3<i32>(8098i, 61523i, 2147483647i), vec4<f32>(833f, 1605f, 1774f, 717f)), Struct_1(vec3<i32>(2147483647i, 1i, 12712i), vec4<f32>(1513f, 1628f, -968f, -170f)), Struct_1(vec3<i32>(-36751i, i32(-2147483648), -20001i), vec4<f32>(1000f, 443f, 1027f, -1648f)), Struct_1(vec3<i32>(1i, -69503i, i32(-2147483648)), vec4<f32>(886f, -799f, -130f, -563f)), Struct_1(vec3<i32>(i32(-2147483648), 1i, 10311i), vec4<f32>(-1000f, -456f, 841f, 586f)), Struct_1(vec3<i32>(-112839i, 63722i, -10692i), vec4<f32>(-1000f, 1076f, 203f, 683f)), Struct_1(vec3<i32>(0i, 24223i, i32(-2147483648)), vec4<f32>(-1942f, -159f, -614f, -520f)), Struct_1(vec3<i32>(1i, 31342i, 1i), vec4<f32>(339f, -200f, 2048f, 293f)), Struct_1(vec3<i32>(-1i, 6530i, 0i), vec4<f32>(-1239f, 533f, -693f, -1095f)), Struct_1(vec3<i32>(-1i, 11184i, 0i), vec4<f32>(1225f, 610f, 1420f, 297f)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec4<u32>, arg_1: i32) -> Struct_2 {
    let var_0 = max(countOneBits(vec2<u32>(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(global1.a.x, 1u), vec2<u32>(u_input.a.x, global1.a.x)))) >> (vec2<u32>(abs(~10033u), firstTrailingBit(max(global1.a.x, arg_0.x))) % vec2<u32>(32u)), ~u_input.a.xy & (vec2<u32>(countOneBits(arg_0.x), global1.a.x) >> (vec2<u32>(_wgslsmith_mult_u32(u_input.a.x, arg_0.x), _wgslsmith_mult_u32(4294967295u, global1.a.x)) % vec2<u32>(32u))));
    global3 = array<Struct_1, 31>();
    var var_1 = firstLeadingBit(~vec4<i32>(-min(-1i, -2147483647i), -global1.b.a.x, abs(arg_1), i32(-1i) * -1i));
    global2 = _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(abs(global1.a.x), 24u)]));
    let var_2 = Struct_1(countOneBits(~(-vec3<i32>(-6753i, u_input.c.x, -2147483647i))), global1.b.b);
    return Struct_2(arg_0.zxz, Struct_1(~vec3<i32>(2147483647i, arg_1, i32(-1i) * -1i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.b.b)))));
}

fn func_3() -> Struct_1 {
    global2 = global1.b.b.x;
    var var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(789f - -665f), _wgslsmith_f_op_f32(f32(-1f) * -845f), func_2(vec4<u32>(global1.a.x, 71458u, 4294967295u, 0u), u_input.b).b.b.x) * vec3<f32>(-475f, global1.b.b.x, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 24u)]))))));
    var var_1 = Struct_2(_wgslsmith_mult_vec3_u32(~vec3<u32>(4294967295u ^ global1.a.x, ~global1.a.x, 4294967295u & global1.a.x), vec3<u32>(1u, 0u, global1.a.x)), Struct_1(reverseBits(abs(vec3<i32>(global1.b.a.x, u_input.b, global1.b.a.x)) | ~vec3<i32>(u_input.d, u_input.c.x, -2147483647i)), global1.b.b));
    var var_2 = var_1.b;
    var var_3 = _wgslsmith_f_op_vec4_f32(ceil(global1.b.b));
    return global3[_wgslsmith_index_u32(abs(46902u >> ((_wgslsmith_mod_u32(~var_1.a.x, global1.a.x) & (4294967295u >> (_wgslsmith_div_u32(u_input.a.x, 73263u) % 32u))) % 32u)), 31u)];
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1) -> i32 {
    global3 = array<Struct_1, 31>();
    let var_0 = _wgslsmith_div_f32(-646f, -301f);
    var var_1 = -1271i;
    var_1 = func_3().a.x;
    var var_2 = _wgslsmith_f_op_f32(step(arg_0.b.b.x, 436f));
    return firstLeadingBit(arg_2.a.x);
}

fn func_1(arg_0: bool, arg_1: vec2<f32>, arg_2: bool) -> Struct_2 {
    var var_0 = Struct_2(~(~vec3<u32>(~3944u, _wgslsmith_mult_u32(global1.a.x, global1.a.x), u_input.a.x)), global1.b);
    global1 = func_2(u_input.a, u_input.c.x);
    var var_1 = _wgslsmith_sub_vec3_u32(global1.a, global1.a);
    var var_2 = vec4<i32>(~var_0.b.a.x, 2147483647i, u_input.c.x, -func_4(Struct_2(~var_0.a, func_3()), Struct_2(~vec3<u32>(1u, var_1.x, var_0.a.x), func_2(vec4<u32>(44106u, 34589u, 33373u, 4294967295u), -4073i).b), Struct_1(func_3().a, _wgslsmith_f_op_vec4_f32(-var_0.b.b))));
    let var_3 = arg_1.x;
    return func_2(u_input.a, var_0.b.a.x << (var_0.a.x % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 24>();
    let var_0 = vec2<f32>(global0[_wgslsmith_index_u32(global1.a.x, 24u)], -360f);
    global1 = func_1(false, global1.b.b.zx, any(vec3<bool>(true, true, true)));
    var var_1 = u_input.c;
    let var_2 = func_2(vec4<u32>(global1.a.x, global1.a.x, abs(global1.a.x) >> (38911u % 32u), 0u), _wgslsmith_mod_i32(abs(u_input.d), -var_1.x << (firstTrailingBit(0u) % 32u)) >> (global1.a.x % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(-23986i, ~39576i, _wgslsmith_div_f32(func_2(_wgslsmith_clamp_vec4_u32(u_input.a, _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 24573u, global1.a.x, global1.a.x), u_input.a), u_input.a), var_1.x).b.b.x, -826f));
}

