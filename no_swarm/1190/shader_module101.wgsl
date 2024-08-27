struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec3<i32>,
    d: vec4<i32>,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, false);

var<private> global1: array<Struct_3, 17> = array<Struct_3, 17>(Struct_3(false, Struct_1(vec3<i32>(20939i, 0i, -1i), 2064f, vec3<i32>(2147483647i, -1236i, 1i), vec4<i32>(-15453i, 5746i, i32(-2147483648), 2698i), -1i), -1i, Struct_1(vec3<i32>(-1i, -27442i, -490i), 1297f, vec3<i32>(86179i, 2147483647i, 0i), vec4<i32>(56104i, 1i, i32(-2147483648), 19100i), 2147483647i)), Struct_3(false, Struct_1(vec3<i32>(i32(-2147483648), -17267i, 9845i), 684f, vec3<i32>(2147483647i, -32784i, 0i), vec4<i32>(-1i, 50580i, 28780i, 41972i), -28515i), 2147483647i, Struct_1(vec3<i32>(0i, 1i, -60533i), 270f, vec3<i32>(0i, 1i, i32(-2147483648)), vec4<i32>(0i, i32(-2147483648), 11744i, 16223i), -22881i)), Struct_3(true, Struct_1(vec3<i32>(1653i, 36701i, 1i), -1774f, vec3<i32>(1i, -1i, 364i), vec4<i32>(-4493i, 0i, 1i, 1i), 22606i), 1i, Struct_1(vec3<i32>(i32(-2147483648), 30085i, 0i), 817f, vec3<i32>(15175i, -65702i, 41669i), vec4<i32>(2147483647i, 2147483647i, 0i, 2147483647i), 45926i)), Struct_3(true, Struct_1(vec3<i32>(-1i, 29123i, -30331i), -583f, vec3<i32>(23905i, 2147483647i, -33125i), vec4<i32>(2147483647i, 57729i, 0i, 14015i), -30388i), 2147483647i, Struct_1(vec3<i32>(i32(-2147483648), 8215i, 1i), 180f, vec3<i32>(48714i, -7949i, -1i), vec4<i32>(-62940i, -38564i, 0i, 1i), -43412i)), Struct_3(false, Struct_1(vec3<i32>(-48605i, -21563i, -5195i), 779f, vec3<i32>(1i, i32(-2147483648), 1i), vec4<i32>(-47695i, -1i, i32(-2147483648), 0i), -13514i), i32(-2147483648), Struct_1(vec3<i32>(i32(-2147483648), -7844i, -1i), -331f, vec3<i32>(-43130i, -2099i, 6190i), vec4<i32>(-52566i, 1i, -1i, 1i), -12535i)), Struct_3(true, Struct_1(vec3<i32>(0i, 1565i, 64331i), 325f, vec3<i32>(51964i, -76184i, -6695i), vec4<i32>(i32(-2147483648), -22339i, 2147483647i, i32(-2147483648)), 2147483647i), 37308i, Struct_1(vec3<i32>(27395i, 1i, i32(-2147483648)), 1514f, vec3<i32>(0i, -29980i, -54295i), vec4<i32>(4289i, 1i, 0i, i32(-2147483648)), -27247i)), Struct_3(true, Struct_1(vec3<i32>(0i, 18898i, 2204i), -819f, vec3<i32>(2147483647i, 2147483647i, -1i), vec4<i32>(-24760i, 28765i, 25153i, 68209i), i32(-2147483648)), 1i, Struct_1(vec3<i32>(-1366i, 17752i, 2147483647i), 816f, vec3<i32>(2147483647i, -68001i, -29642i), vec4<i32>(0i, -15370i, i32(-2147483648), -38956i), 2147483647i)), Struct_3(false, Struct_1(vec3<i32>(1i, 2147483647i, i32(-2147483648)), -182f, vec3<i32>(-30131i, -41606i, -1879i), vec4<i32>(0i, 2147483647i, -3198i, 1i), 8865i), i32(-2147483648), Struct_1(vec3<i32>(2147483647i, -27394i, -20591i), 2221f, vec3<i32>(1i, 0i, -66336i), vec4<i32>(i32(-2147483648), 39275i, 1i, -31398i), -17946i)), Struct_3(true, Struct_1(vec3<i32>(1i, 0i, 1i), 167f, vec3<i32>(19766i, -1223i, 0i), vec4<i32>(7238i, 0i, -1i, 1i), 2147483647i), i32(-2147483648), Struct_1(vec3<i32>(0i, 2147483647i, 2147483647i), 466f, vec3<i32>(-17259i, 21259i, 1i), vec4<i32>(2147483647i, 2147483647i, -13410i, -1i), 2147483647i)), Struct_3(true, Struct_1(vec3<i32>(1i, 0i, -22728i), 412f, vec3<i32>(7369i, -1i, 1i), vec4<i32>(29798i, -1i, -8816i, 23524i), 1i), 2147483647i, Struct_1(vec3<i32>(51161i, 1i, -25200i), 590f, vec3<i32>(0i, i32(-2147483648), -3145i), vec4<i32>(2147483647i, 15593i, 1i, -20315i), 2147483647i)), Struct_3(true, Struct_1(vec3<i32>(28936i, -4558i, -36662i), 576f, vec3<i32>(2881i, 0i, 24727i), vec4<i32>(-38539i, -43043i, 2147483647i, -15314i), -9913i), -1i, Struct_1(vec3<i32>(2147483647i, 32300i, 0i), 841f, vec3<i32>(19983i, 22633i, 1i), vec4<i32>(i32(-2147483648), 74063i, 2147483647i, -50326i), 2147483647i)), Struct_3(false, Struct_1(vec3<i32>(0i, 10148i, 1i), -1831f, vec3<i32>(-1i, -23249i, 52604i), vec4<i32>(5084i, -1i, i32(-2147483648), 1i), i32(-2147483648)), -1i, Struct_1(vec3<i32>(19212i, -2101i, 1i), 516f, vec3<i32>(1i, 22077i, -7931i), vec4<i32>(19842i, 22835i, 0i, 1i), 6162i)), Struct_3(true, Struct_1(vec3<i32>(1i, 0i, -20709i), -1498f, vec3<i32>(-1i, 5371i, 1i), vec4<i32>(29414i, 0i, 54244i, -3156i), 28176i), -1i, Struct_1(vec3<i32>(-1i, -52224i, -1i), 1063f, vec3<i32>(-18134i, 10150i, 57059i), vec4<i32>(-5310i, 1i, 1i, -29654i), -22176i)), Struct_3(false, Struct_1(vec3<i32>(-68837i, -1i, i32(-2147483648)), -2323f, vec3<i32>(-32047i, 1i, 0i), vec4<i32>(0i, 1i, -1i, 1i), -1i), 0i, Struct_1(vec3<i32>(-15059i, 1i, -1i), 1529f, vec3<i32>(1i, -20891i, -1i), vec4<i32>(0i, i32(-2147483648), 43975i, 2147483647i), i32(-2147483648))), Struct_3(false, Struct_1(vec3<i32>(46086i, i32(-2147483648), 4975i), -509f, vec3<i32>(2147483647i, 1i, -13935i), vec4<i32>(0i, -15655i, 17905i, 19784i), -1i), 20304i, Struct_1(vec3<i32>(12350i, 2147483647i, -17537i), 659f, vec3<i32>(16009i, i32(-2147483648), -1i), vec4<i32>(i32(-2147483648), -21808i, i32(-2147483648), 1i), i32(-2147483648))), Struct_3(true, Struct_1(vec3<i32>(0i, -42221i, -2989i), 205f, vec3<i32>(-21442i, -12290i, 2147483647i), vec4<i32>(2147483647i, -4402i, 0i, 1i), 0i), 0i, Struct_1(vec3<i32>(18363i, i32(-2147483648), -14401i), 1026f, vec3<i32>(-39117i, 8302i, 0i), vec4<i32>(1i, i32(-2147483648), 1i, 11938i), 0i)), Struct_3(false, Struct_1(vec3<i32>(-1i, -16900i, 29776i), 1714f, vec3<i32>(-16440i, 1i, i32(-2147483648)), vec4<i32>(0i, 32452i, 1i, 1i), i32(-2147483648)), -1i, Struct_1(vec3<i32>(-20293i, 2147483647i, -13174i), -192f, vec3<i32>(30089i, -67083i, 10049i), vec4<i32>(-11631i, i32(-2147483648), i32(-2147483648), 82087i), -7679i)));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: f32) -> i32 {
    let var_0 = !arg_1;
    let var_1 = true;
    var var_2 = abs((_wgslsmith_dot_vec4_i32(vec4<i32>(22499i, arg_0.c.x, 3852i, -53220i), arg_0.d) >> ((0u << (1u % 32u)) % 32u)) | 1i) << (~(~(1792u & _wgslsmith_clamp_u32(0u, 24644u, 4294967295u))) % 32u);
    global1 = array<Struct_3, 17>();
    var var_3 = !(!(!all(!vec4<bool>(arg_1.x, var_0.x, var_1, global0.x))));
    return arg_0.a.x;
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: Struct_3) -> u32 {
    global0 = vec3<bool>(false, true, global0.x);
    let var_0 = Struct_3(true, arg_2.b, -abs(arg_2.b.a.x), Struct_1(vec3<i32>(u_input.a, ~(-1i ^ u_input.a), arg_3.b.c.x), arg_2.b.b, arg_3.d.d.xzx, arg_3.b.d, arg_3.b.e >> (min(_wgslsmith_sub_u32(arg_0.x, arg_0.x), 0u) % 32u)));
    global1 = array<Struct_3, 17>();
    let var_1 = _wgslsmith_div_f32(-240f, -904f);
    global1 = array<Struct_3, 17>();
    return abs(arg_2.a);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2) -> f32 {
    let var_0 = true;
    var var_1 = _wgslsmith_div_u32((~arg_1.a << (firstTrailingBit(1u) % 32u)) << (arg_1.a % 32u), arg_1.a) << (select(reverseBits(reverseBits(~0u)), (arg_1.a & _wgslsmith_mult_u32(70839u, arg_1.a)) & arg_1.a, !(!(var_0 && arg_0.a))) % 32u);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.b.b, _wgslsmith_f_op_f32(trunc(arg_0.d.b)), _wgslsmith_sub_i32(-1i, u_input.a) <= reverseBits(2147483647i)))));
    global1 = array<Struct_3, 17>();
    global1 = array<Struct_3, 17>();
    return _wgslsmith_f_op_f32(arg_0.b.b - arg_0.d.b);
}

fn func_1(arg_0: i32) -> u32 {
    let var_0 = vec4<bool>(true, func_2(Struct_1(-vec3<i32>(37498i, arg_0, arg_0), _wgslsmith_f_op_f32(step(1000f, 452f)), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_0, -1i, arg_0), vec3<i32>(-23411i, arg_0, arg_0)), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0, -14917i, 23251i, -2147483647i), vec4<i32>(1i, -12403i, 20356i, 2147483647i), vec4<i32>(arg_0, arg_0, arg_0, -31853i)), -arg_0), global0.xx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-438f)))) == 1i, global0.x, any(vec2<bool>(true, true)));
    global0 = select(var_0.ywz, var_0.yxx, global0.x);
    global1 = array<Struct_3, 17>();
    var var_1 = vec4<bool>(false, var_0.x, var_0.x, true);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-469f, -1805f) - _wgslsmith_f_op_f32(f32(-1f) * -989f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -294f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(global1[_wgslsmith_index_u32(func_3(vec2<u32>(1u, 0u), vec3<f32>(1014f, 364f, 1145f), Struct_2(0u, Struct_1(vec3<i32>(u_input.a, arg_0, u_input.a), -116f, vec3<i32>(arg_0, arg_0, 32335i), vec4<i32>(22191i, arg_0, u_input.a, arg_0), 11902i)), global1[_wgslsmith_index_u32(4294967295u, 17u)]), 17u)], Struct_2(37873u, Struct_1(vec3<i32>(-55950i, -8008i, -2147483647i), 476f, vec3<i32>(arg_0, u_input.a, 22479i), vec4<i32>(arg_0, -48171i, 39037i, u_input.a), 2147483647i))))) + 994f));
    return ~_wgslsmith_dot_vec4_u32(~reverseBits(vec4<u32>(0u, 9306u, 4294967295u, 49132u)) ^ firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u)), ~(~vec4<u32>(1u, 1u, 64386u, 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_u32(_wgslsmith_div_u32(abs(_wgslsmith_mod_u32(65881u, 65166u)) << (firstTrailingBit(abs(30315u)) % 32u), ~_wgslsmith_mod_u32(1u, 1u)), _wgslsmith_dot_vec2_u32(select(~vec2<u32>(1u, 0u), ~vec2<u32>(4294967295u, 0u), global0.zy), ~max(vec2<u32>(26760u, 83662u), vec2<u32>(49629u, 0u))) >> (_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(1u, 1u, 1u)), vec3<u32>(1u, 1u, 1u)) % 32u));
    var var_1 = ~vec4<u32>(func_1(u_input.a), firstTrailingBit(firstTrailingBit(_wgslsmith_sub_u32(var_0, 0u))), _wgslsmith_mod_u32(88908u, (var_0 >> (var_0 % 32u)) & ~var_0), abs(4294967295u));
    var var_2 = ~_wgslsmith_mult_u32(max(var_0, _wgslsmith_add_u32(~var_1.x, 1u)), var_0);
    var var_3 = global0.x;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(450f - 1312f) - _wgslsmith_f_op_f32(-414f - -1009f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-286f, 177f)), all(vec3<bool>(global0.x, global0.x, true)))) * 1f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(_wgslsmith_mod_u32(max(reverseBits(67193u), _wgslsmith_add_u32(var_0, var_1.x)), ~var_0), ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, 102847u, var_1.x), ~var_1.wxw)), ~var_0, -1459f);
}

