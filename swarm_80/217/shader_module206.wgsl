struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<u32>,
    d: u32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8>;

var<private> global1: array<u32, 1>;

var<private> global2: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(0u, true, vec3<u32>(0u, 48243u, 107179u), 26184u, vec2<i32>(1i, -46870i)), Struct_1(137960u, false, vec3<u32>(68601u, 14688u, 50761u), 1u, vec2<i32>(26191i, 3515i)), Struct_1(24270u, false, vec3<u32>(1u, 4294967295u, 1u), 1u, vec2<i32>(-10643i, -26928i)), Struct_1(11284u, false, vec3<u32>(95741u, 44122u, 47173u), 26569u, vec2<i32>(1i, 1i)), Struct_1(11169u, true, vec3<u32>(25116u, 24202u, 1u), 20279u, vec2<i32>(-44376i, -25164i)), Struct_1(45514u, false, vec3<u32>(6755u, 0u, 0u), 363u, vec2<i32>(-8324i, 2147483647i)), Struct_1(1u, true, vec3<u32>(1u, 4294967295u, 0u), 6670u, vec2<i32>(1i, 1i)), Struct_1(4294967295u, true, vec3<u32>(68447u, 13813u, 31672u), 1612u, vec2<i32>(-7406i, 26781i)), Struct_1(28438u, false, vec3<u32>(68984u, 46087u, 25979u), 0u, vec2<i32>(11524i, -1i)), Struct_1(4294967295u, true, vec3<u32>(3467u, 0u, 1u), 36897u, vec2<i32>(-14189i, 1i)), Struct_1(4294967295u, false, vec3<u32>(4294967295u, 9955u, 13540u), 53113u, vec2<i32>(40227i, -1i)), Struct_1(55760u, false, vec3<u32>(1u, 1u, 60563u), 0u, vec2<i32>(-1i, 1i)), Struct_1(0u, false, vec3<u32>(4294967295u, 0u, 1u), 4294967295u, vec2<i32>(-1i, 18396i)), Struct_1(81319u, false, vec3<u32>(1u, 4294967295u, 0u), 24924u, vec2<i32>(1191i, 2147483647i)));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_1(arg_0: i32, arg_1: vec3<u32>, arg_2: bool, arg_3: vec2<f32>) -> u32 {
    return global1[_wgslsmith_index_u32(countOneBits(23378u), 1u)];
}

fn func_3(arg_0: vec4<f32>, arg_1: i32, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(arg_0.x)), _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(round(arg_0.x)))));
    let var_1 = arg_2;
    var var_2 = var_1.e.x | abs(~(-1i) | var_1.e.x);
    var var_3 = _wgslsmith_mod_vec4_i32(u_input.b, _wgslsmith_clamp_vec4_i32(u_input.b, ~vec4<i32>(var_1.e.x, ~1i, arg_1 >> (var_1.a % 32u), abs(arg_2.e.x)), ~(vec4<i32>(arg_1, -27552i, arg_2.e.x, 34985i) >> (vec4<u32>(global1[_wgslsmith_index_u32(arg_2.c.x, 1u)], arg_2.c.x, 0u, 47994u) % vec4<u32>(32u)))));
    var var_4 = arg_2;
    return select(select(vec3<bool>(var_1.b, (var_4.e.x < 48943i) & var_1.b, false), select(!vec3<bool>(var_4.b, arg_2.b, var_1.b), vec3<bool>(any(vec2<bool>(var_4.b, arg_2.b)), var_4.b, var_1.e.x == arg_2.e.x), vec3<bool>(var_1.b, var_4.b | false, true)), select(select(!vec3<bool>(arg_2.b, false, false), select(vec3<bool>(var_1.b, var_1.b, true), vec3<bool>(var_1.b, false, true), vec3<bool>(false, var_4.b, var_1.b)), !var_4.b), !(!vec3<bool>(var_4.b, true, arg_2.b)), abs(var_4.c.x) >= abs(arg_2.d))), vec3<bool>(!arg_2.b, false, false), vec3<bool>(all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, var_4.b), var_1.b), true)), var_4.b, arg_2.b));
}

fn func_2() -> i32 {
    let var_0 = Struct_1(~firstLeadingBit(_wgslsmith_sub_u32(3455u, _wgslsmith_div_u32(global1[_wgslsmith_index_u32(4294967295u, 1u)], 1u))), u_input.b.x < 22949i, ~_wgslsmith_clamp_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(u_input.c.x & 1u, 1u)], global1[_wgslsmith_index_u32(max(1u, 12009u), 1u)], countOneBits(6336u)), firstTrailingBit(vec3<u32>(1u, u_input.c.x, global1[_wgslsmith_index_u32(u_input.d, 1u)]) | vec3<u32>(u_input.c.x, global1[_wgslsmith_index_u32(0u, 1u)], 25300u)), ~vec3<u32>(4294967295u, 6504u, global1[_wgslsmith_index_u32(u_input.c.x, 1u)]) << (~vec3<u32>(0u, global1[_wgslsmith_index_u32(u_input.d, 1u)], 70422u) % vec3<u32>(32u))), u_input.c.x & 8720u, u_input.b.yw);
    var var_1 = abs(i32(-1i) * -1i);
    var var_2 = Struct_1(global1[_wgslsmith_index_u32(var_0.c.x, 1u)] >> (firstTrailingBit(_wgslsmith_clamp_u32(34541u, firstLeadingBit(0u), global1[_wgslsmith_index_u32(firstLeadingBit(39963u), 1u)])) % 32u), var_0.b, countOneBits(select(var_0.c, ~_wgslsmith_clamp_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(var_0.d, 1u)], 1375u, var_0.a), var_0.c, var_0.c), func_3(_wgslsmith_div_vec4_f32(vec4<f32>(1359f, 1799f, -304f, 1458f), vec4<f32>(1689f, 579f, 216f, -1412f)), _wgslsmith_dot_vec2_i32(u_input.b.zz, vec2<i32>(var_0.e.x, u_input.b.x)), global0[_wgslsmith_index_u32(u_input.c.x, 8u)]))), firstTrailingBit(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(var_0.a, 1u)), ~vec2<u32>(u_input.d, global1[_wgslsmith_index_u32(0u, 1u)]))), u_input.b.xw);
    let var_3 = u_input.b;
    var var_4 = Struct_1(select(28134u, ~(~18434u) & _wgslsmith_sub_u32(4294967295u << (0u % 32u), _wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(global1[_wgslsmith_index_u32(62685u, 1u)], 0u))), var_2.b), var_2.b, var_0.c, var_0.a, -(~vec2<i32>(var_3.x, -1i)) | countOneBits(select(u_input.b.wy, vec2<i32>(u_input.a, var_2.e.x), var_2.b) << (var_0.c.xx % vec2<u32>(32u))));
    return 11876i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 8>();
    global1 = array<u32, 1>();
    let var_0 = _wgslsmith_mult_vec3_i32(-abs(min(~u_input.b.yzy, -u_input.b.xzz)), u_input.b.wxy | vec3<i32>(-66107i << (global1[_wgslsmith_index_u32(func_1(-2147483647i, vec3<u32>(0u, u_input.d, 4294967295u), false, vec2<f32>(-455f, -1908f)), 1u)] % 32u), ~(-16275i), _wgslsmith_sub_i32(u_input.b.x, func_2())));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b ^ _wgslsmith_mult_vec4_i32(vec4<i32>(~1i, ~(-50446i), -u_input.b.x, ~var_0.x), vec4<i32>(u_input.b.x, reverseBits(1i), var_0.x ^ 13474i, 0i)), vec4<f32>(-206f, 375f, _wgslsmith_div_f32(-324f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(710f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -757f))))), ~vec3<u32>(19786u, ~u_input.d, reverseBits(4294967295u)), select(reverseBits(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(select(4294967295u, 0u, true), 1u)], 1u)]), u_input.c.x, true));
}

