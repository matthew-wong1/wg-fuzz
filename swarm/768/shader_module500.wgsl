struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<f32>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec2<f32> = vec2<f32>(661f, -431f);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: Struct_1) -> vec2<f32> {
    global0 = Struct_2(vec3<i32>(-1i) * -vec3<i32>(-arg_0.d, firstTrailingBit(2147483647i), 17952i ^ global0.a.x), (global0.b | global0.b) ^ min(~global0.b, vec3<u32>(4294967295u, abs(79160u), abs(53008u))), global0.c, arg_0);
    global1 = vec2<f32>(global1.x, global0.d.c.x);
    global1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a, -1428f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global0.d.c, global0.d.c) - vec2<f32>(arg_0.c.x, global0.c)));
    global0 = Struct_2(min(~min(select(vec3<i32>(-2147483647i, arg_0.d, 0i), global0.a, vec3<bool>(arg_0.b, false, false)), global0.a), vec3<i32>(arg_0.e, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.e, 20186i, -43904i), global0.a), global0.a.x), ~1i)), global0.b, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -167f)) - arg_0.a))), arg_0);
    let var_0 = _wgslsmith_mod_u32(1u, u_input.a);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(global1.x, -264f), -236f)), arg_0.c, vec2<bool>(arg_0.b, false))));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: vec3<u32>, arg_3: vec4<f32>) -> u32 {
    global0 = Struct_2(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_1.x, ~(-global0.a.x), 0i), -arg_0.a), arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.d.a + global0.c) * global1.x), arg_0.d);
    let var_0 = Struct_1(_wgslsmith_f_op_f32(min(182f, -806f)), arg_0.d.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_1(-1512f, global0.d.b, vec2<f32>(-580f, global1.x), arg_0.d.e, -21516i)))), ~(-1i), abs(global0.a.x));
    global0 = Struct_2(-(~(~_wgslsmith_mult_vec3_i32(vec3<i32>(arg_1.x, 2410i, global0.a.x), global0.a))), arg_2, var_0.a, var_0);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(arg_0.c * _wgslsmith_f_op_f32(global1.x * -144f)), -492f, -387f, global1.x), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, arg_0.c, global0.c, -868f) - _wgslsmith_f_op_vec4_f32(-arg_3)))), vec4<bool>(_wgslsmith_f_op_f32(sign(1000f)) <= _wgslsmith_f_op_f32(select(global0.d.c.x, 1318f, var_0.b)), all(select(vec4<bool>(false, arg_0.d.b, false, true), vec4<bool>(false, arg_0.d.b, var_0.b, false), vec4<bool>(global0.d.b, false, arg_0.d.b, global0.d.b))), true, any(vec2<bool>(var_0.b, var_0.b))))));
    global0 = arg_0;
    return 82645u;
}

fn func_1(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: Struct_2) -> Struct_1 {
    global0 = arg_2;
    global0 = Struct_2(countOneBits(global0.a), vec3<u32>(~(firstTrailingBit(0u) & ~0u), ~func_2(arg_0, arg_3.a.yy, firstTrailingBit(arg_3.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(209f, arg_2.c, global0.d.a, -473f) + vec4<f32>(-313f, 227f, 274f, 1410f))), ~firstTrailingBit(global0.b.x)), global0.c, global0.d);
    var var_0 = arg_3.d;
    let var_1 = _wgslsmith_f_op_f32(floor(-197f));
    var var_2 = firstLeadingBit(vec2<i32>(firstTrailingBit(arg_0.a.x), 40396i));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(409f, global1.x)))) - global0.d.a), all(select(select(!vec3<bool>(arg_0.d.b, false, arg_0.d.b), vec3<bool>(arg_3.d.b, arg_2.d.b, arg_2.d.b), arg_2.d.b), !select(vec3<bool>(var_0.b, arg_3.d.b, global0.d.b), vec3<bool>(false, false, true), arg_0.d.b), var_0.b)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1210f, -196f))) + _wgslsmith_f_op_vec2_f32(-global0.d.c)))), global0.d.c), ~(var_0.d << (~1u % 32u)), _wgslsmith_div_i32(_wgslsmith_sub_i32(0i, 48740i), _wgslsmith_dot_vec2_i32(countOneBits(_wgslsmith_add_vec2_i32(vec2<i32>(var_0.e, arg_0.d.d), vec2<i32>(var_2.x, 14936i))), arg_1.zx)));
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> vec4<f32> {
    var var_0 = i32(-1i) * -1i;
    global0 = Struct_2((vec3<i32>(arg_0.d, global0.a.x, global0.a.x & global0.d.e) >> (vec3<u32>(u_input.a >> (19224u % 32u), global0.b.x, 4294967295u | arg_1) % vec3<u32>(32u))) << (select(abs(vec3<u32>(1u, 4294967295u, 4294967295u)), max(global0.b, vec3<u32>(u_input.a, 4294967295u, arg_1)), global0.d.b) % vec3<u32>(32u)), global0.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(global1.x, 746f)))))), func_1(Struct_2(abs(vec3<i32>(arg_0.e, -2147483647i, arg_0.d)), global0.b, _wgslsmith_div_f32(867f, -237f), Struct_1(-738f, arg_0.b, vec2<f32>(1f, 1f), 20607i, 0i)), global0.a, Struct_2(_wgslsmith_add_vec3_i32(global0.a, global0.a) ^ global0.a, ~global0.b, 462f, global0.d), Struct_2(abs(global0.a), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1, global0.b.x, global0.b.x) << (vec3<u32>(arg_1, 101427u, u_input.a) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1, 4294967295u, 0u), global0.b, global0.b), vec3<u32>(u_input.a, 51134u, 0u) | vec3<u32>(17075u, 4294967295u, arg_1)), -1637f, func_1(Struct_2(vec3<i32>(-45554i, arg_0.d, global0.d.e), global0.b, global0.c, Struct_1(-457f, global0.d.b, vec2<f32>(global0.d.c.x, 364f), 7224i, 2147483647i)), vec3<i32>(-6759i, -2147483647i, arg_0.d), Struct_2(global0.a, vec3<u32>(global0.b.x, u_input.a, 46599u), global0.c, arg_0), Struct_2(vec3<i32>(global0.d.d, arg_0.d, 35552i), vec3<u32>(59u, 0u, 1u), -184f, Struct_1(151f, false, vec2<f32>(-423f, global1.x), 0i, arg_0.e))))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * -318f)), 481f, !(global0.a.x < (global0.d.d >> (arg_1 % 32u))))), true, vec2<f32>(_wgslsmith_div_f32(-763f, -1376f), -945f), 69270i, ~_wgslsmith_mod_i32(arg_0.d, min(global0.d.d, global0.d.e) & global0.d.e));
    let var_2 = Struct_2(firstLeadingBit(vec3<i32>(abs(var_1.e), firstLeadingBit(28268i), var_1.d)) << (~(~vec3<u32>(global0.b.x, global0.b.x, global0.b.x)) % vec3<u32>(32u)), countOneBits(abs(vec3<u32>(global0.b.x, arg_1, arg_1) << (~global0.b % vec3<u32>(32u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c)) * 118f), Struct_1(arg_0.c.x, !arg_0.b, vec2<f32>(global1.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.a + arg_0.a)))), -var_1.e, _wgslsmith_mult_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.e, global0.a.x, 2147483647i, var_1.e), vec4<i32>(arg_0.e, -23102i, 14255i, var_1.d)), _wgslsmith_mod_i32(arg_0.d, -25837i) << (firstLeadingBit(91248u) % 32u))));
    var var_3 = 17507u;
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1274f * arg_0.a))), var_1.a, global1.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_1.c.x, 883f))), _wgslsmith_f_op_f32(min(924f, func_1(Struct_2(vec3<i32>(-25870i, var_1.e, -2147483647i), vec3<u32>(arg_1, global0.b.x, arg_1), -138f, var_2.d), var_2.a, var_2, var_2).c.x)), _wgslsmith_div_f32(-307f, _wgslsmith_f_op_f32(arg_0.a * -494f)), _wgslsmith_div_f32(1017f, _wgslsmith_f_op_f32(-var_1.c.x)))));
}

fn func_5(arg_0: vec4<f32>) -> bool {
    let var_0 = 1000f;
    var var_1 = global0.d;
    var var_2 = ~u_input.a;
    var_2 = _wgslsmith_mult_u32(4294967295u, ~global0.b.x);
    let var_3 = global0.d.c;
    return any(!select(vec2<bool>(4294967295u == global0.b.x, all(vec2<bool>(global0.d.b, true))), select(!vec2<bool>(false, var_1.b), select(vec2<bool>(global0.d.b, true), vec2<bool>(true, var_1.b), global0.d.b), false), select(true, var_1.b, var_1.b) && all(vec4<bool>(false, false, var_1.b, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(!func_5(_wgslsmith_f_op_vec4_f32(func_4(func_1(Struct_2(global0.a, vec3<u32>(4294967295u, 0u, global0.b.x), -464f, global0.d), vec3<i32>(global0.a.x, global0.d.d, global0.a.x), Struct_2(vec3<i32>(2147483647i, global0.a.x, -2147483647i), global0.b, 900f, Struct_1(2304f, global0.d.b, vec2<f32>(1926f, 1000f), global0.a.x, global0.d.e)), Struct_2(global0.a, vec3<u32>(1u, 73611u, 4294967295u), global1.x, global0.d)), 86248u))), !global0.d.b, !all(select(select(vec4<bool>(global0.d.b, false, false, global0.d.b), vec4<bool>(true, false, global0.d.b, true), vec4<bool>(true, true, global0.d.b, true)), select(vec4<bool>(global0.d.b, true, global0.d.b, false), vec4<bool>(global0.d.b, true, false, global0.d.b), vec4<bool>(true, true, true, global0.d.b)), vec4<bool>(true, true, true, global0.d.b))));
    global0 = Struct_2(vec3<i32>(-2147483647i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(47266u, 4294967295u, 19978u, u_input.a) << (vec4<u32>(6482u, 5069u, 88085u, 102270u) % vec4<u32>(32u)), vec4<u32>(global0.b.x, u_input.a, u_input.a, 21417u) & vec4<u32>(u_input.a, u_input.a, 1u, u_input.a)) % 32u), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-38216i, 6848i, global0.d.e, global0.d.d), vec4<i32>(global0.d.d, global0.a.x, -1i, -2147483647i)) & ~vec4<i32>(global0.a.x, -42463i, global0.a.x, global0.d.d), vec4<i32>(-2147483647i, global0.a.x, 657i, global0.d.e) | vec4<i32>(1i, 21194i, global0.a.x, 1i)), 1i), vec3<u32>(_wgslsmith_mult_u32(4294967295u, ~u_input.a), 0u, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 12879u, 1u, u_input.a), vec4<u32>(1u, u_input.a, global0.b.x, 21418u)), ~vec4<u32>(u_input.a, global0.b.x, 0u, u_input.a))) | global0.b, _wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(global0.d.a - -625f))), func_1(Struct_2(global0.a, reverseBits(abs(vec3<u32>(0u, 69585u, 6583u))), _wgslsmith_f_op_vec4_f32(func_4(global0.d, _wgslsmith_dot_vec3_u32(global0.b, global0.b))).x, global0.d), _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(~global0.a, _wgslsmith_mult_vec3_i32(global0.a, vec3<i32>(0i, -1i, -1i)), global0.a), vec3<i32>(abs(global0.a.x), global0.a.x, _wgslsmith_mult_i32(global0.a.x, 0i))), Struct_2(vec3<i32>(-23318i, ~global0.a.x, 0i), _wgslsmith_add_vec3_u32(global0.b, reverseBits(global0.b)), global1.x, global0.d), Struct_2(vec3<i32>(_wgslsmith_div_i32(1i, global0.d.e), ~global0.d.e, 0i), ~global0.b, 1293f, global0.d)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(284f, 940f, global1.x, 275f)))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1241f, global1.x, _wgslsmith_f_op_f32(global1.x + 594f), 1f)))));
}

