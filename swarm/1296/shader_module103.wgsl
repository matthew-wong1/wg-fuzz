struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 30> = array<f32, 30>(-1815f, 547f, -1321f, -157f, -867f, -1582f, -2527f, -1022f, -455f, 452f, 321f, -299f, 1000f, 721f, 959f, 1360f, 1627f, -900f, 142f, -161f, 2014f, 780f, -1737f, -1000f, 1000f, -1000f, 1312f, 513f, -1259f, 110f);

var<private> global1: array<u32, 3>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: i32) -> i32 {
    let var_0 = abs((select(reverseBits(u_input.d.xyz), u_input.d.zzw, true) ^ (-u_input.d.yyy & vec3<i32>(-62904i, 19017i, 0i))) & _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.d.xzy, u_input.d.zwy) ^ ~vec3<i32>(u_input.c, u_input.d.x, -46072i), -(vec3<i32>(arg_0, -1i, u_input.d.x) & u_input.d.xyz)));
    var var_1 = vec3<bool>(select(false, true, true), false, all(vec2<bool>(true, false)));
    global1 = array<u32, 3>();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(68069u, 30u)] - 750f))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -183f) * 695f));
    var var_3 = u_input.d.yw;
    return var_0.x;
}

fn func_3() -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1654f) * _wgslsmith_div_f32(-1000f, -509f)) * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 30u)] - global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(48983u, 3u)] << (32237u % 32u), 30u)]))), vec4<i32>(_wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.d.x, 2147483647i, -17734i, u_input.d.x) | vec4<i32>(u_input.c, u_input.c, u_input.d.x, -61606i), u_input.d, true), vec4<i32>(max(u_input.d.x, 1i), u_input.d.x & u_input.d.x, u_input.c, u_input.c & u_input.d.x)), -9830i, _wgslsmith_add_i32(-1i, reverseBits(~u_input.d.x)), -1i), vec2<f32>(-481f, 1000f), vec4<u32>(128568u, 4313u, reverseBits(4294967295u), ~(~global1[_wgslsmith_index_u32(3541u, 3u)])) & vec4<u32>(71428u, 0u, min(~0u, select(u_input.b, u_input.b, true)), select(u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a.zy, u_input.a.zy), false)));
    let var_1 = _wgslsmith_sub_u32(abs(_wgslsmith_div_u32(~1u, ~global1[_wgslsmith_index_u32(39723u, 3u)])), firstTrailingBit(select(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(u_input.b, u_input.a.x)), u_input.a.xy), 3u)], ~firstTrailingBit(u_input.a.x), true)));
    var_0 = Struct_1(_wgslsmith_f_op_f32(513f + _wgslsmith_f_op_f32(min(408f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(723f, -978f))))), _wgslsmith_mult_vec4_i32(u_input.d, vec4<i32>(~4562i, 1i, u_input.c, -(var_0.b.x << (global1[_wgslsmith_index_u32(0u, 3u)] % 32u)))), vec2<f32>(global0[_wgslsmith_index_u32(1u, 30u)], global0[_wgslsmith_index_u32(u_input.a.x, 30u)]), ~_wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(var_1, 0u, 37853u, 70706u)), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, var_1, var_1, global1[_wgslsmith_index_u32(var_0.d.x, 3u)]), vec4<u32>(global1[_wgslsmith_index_u32(58142u, 3u)], 1u, var_0.d.x, 0u)) << (var_0.d % vec4<u32>(32u))));
    var var_2 = Struct_1(308f, firstLeadingBit(-vec4<i32>(countOneBits(var_0.b.x), abs(-64717i), reverseBits(u_input.c), var_0.b.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.x, -269f) + var_0.c)), countOneBits(~(~(vec4<u32>(60836u, 35553u, 1u, 0u) ^ var_0.d))));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -901f) + var_0.c.x))) + 1088f), ~(~(~u_input.d)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_2.c, vec2<f32>(global0[_wgslsmith_index_u32(84295u, 30u)], var_2.a), vec2<bool>(true, true))), var_0.c), _wgslsmith_f_op_vec2_f32(var_2.c * vec2<f32>(-739f, var_0.a)), vec2<bool>(false, true))))), var_2.d);
    return 72474u;
}

fn func_1() -> Struct_1 {
    let var_0 = ~(_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(~vec2<i32>(-39105i, u_input.d.x), select(vec2<i32>(-15366i, -13110i), vec2<i32>(1i, 0i), vec2<bool>(false, true))), abs(vec2<i32>(-2147483647i, 1i))) << (~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, global1[_wgslsmith_index_u32(0u, 3u)]), vec2<u32>(u_input.b, u_input.a.x) & u_input.a.zy) % vec2<u32>(32u)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-797f)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(4294967295u, 30u)], 441f))) - _wgslsmith_f_op_f32(exp2(1f)));
    global1 = array<u32, 3>();
    var var_2 = -func_2(min(1i, -var_0.x) & ~1i);
    var var_3 = _wgslsmith_sub_vec4_i32(vec4<i32>(0i, 12533i, var_0.x, min(-3883i, var_0.x)), _wgslsmith_div_vec4_i32(-(vec4<i32>(var_0.x, 0i, 44544i, 1i) | vec4<i32>(-26878i, var_0.x, 7839i, -47079i)), vec4<i32>(-13286i, 2344i & u_input.c, countOneBits(var_0.x), u_input.d.x))) >> (~vec4<u32>(_wgslsmith_div_u32(min(global1[_wgslsmith_index_u32(89501u, 3u)], 52978u), func_3()), _wgslsmith_add_u32(global1[_wgslsmith_index_u32(1u, 3u)], 1u), 69245u, 0u) % vec4<u32>(32u));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(809f * var_1)))), vec4<i32>(max(~1i, _wgslsmith_mod_i32(-2147483647i, _wgslsmith_dot_vec2_i32(u_input.d.xw, u_input.d.zx))), ~30426i, min(firstTrailingBit(_wgslsmith_clamp_i32(25813i, 2147483647i, var_3.x)), -2147483647i), _wgslsmith_add_i32(min(firstLeadingBit(-1i), 0i), _wgslsmith_sub_i32(_wgslsmith_sub_i32(var_3.x, var_3.x), -var_0.x))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-100f, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(15044u, 3u)], 30u)]) - vec2<f32>(var_1, 247f))))), ~min(~(vec4<u32>(global1[_wgslsmith_index_u32(1u, 3u)], 4294967295u, global1[_wgslsmith_index_u32(0u, 3u)], 1u) & vec4<u32>(u_input.b, global1[_wgslsmith_index_u32(0u, 3u)], 9038u, 18514u)), ~(~vec4<u32>(u_input.a.x, 1u, global1[_wgslsmith_index_u32(0u, 3u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(16916u, 3u)], 3u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 3>();
    var var_0 = func_1();
    let var_1 = _wgslsmith_f_op_vec2_f32(var_0.c - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.a, func_1().c.x))));
    global0 = array<f32, 30>();
    var var_2 = func_1();
    let var_3 = Struct_1(742f, firstTrailingBit(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.d, vec4<i32>(-2147483647i, var_0.b.x, var_2.b.x, var_2.b.x)), countOneBits(~vec4<i32>(u_input.c, -51963i, -53205i, u_input.c)))), var_1, ~(~func_1().d));
    var var_4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(~var_2.d.x, 30u)], _wgslsmith_f_op_f32(round(1380f)))))), var_3.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1572f, _wgslsmith_div_f32(2079f, -1000f)) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_0.c + vec2<f32>(var_3.c.x, 968f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(20780u, 3u)], 30u)], var_1.x)), true)))), ~countOneBits(var_2.d));
    var var_5 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(523f, -972f, var_3.a, var_1.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_0.d.x, _wgslsmith_mult_u32(53503u, 0u), _wgslsmith_mult_u32(countOneBits(min(34886u, var_0.d.x)), abs(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, var_4.d.x), vec2<u32>(24372u, var_4.d.x))))));
}

