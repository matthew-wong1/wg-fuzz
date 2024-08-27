struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: bool,
    d: vec3<f32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec4<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(587f, 1053f, -111f);

var<private> global1: vec3<bool> = vec3<bool>(false, false, false);

var<private> global2: array<f32, 20>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> bool {
    global2 = array<f32, 20>();
    let var_0 = reverseBits(~vec4<u32>(_wgslsmith_mult_u32(1u, firstTrailingBit(85492u)), _wgslsmith_dot_vec2_u32(~vec2<u32>(69282u, 74203u), vec2<u32>(1u, 1u)), ~countOneBits(25857u), 1u));
    var var_1 = abs((_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(var_0.ww, vec2<u32>(var_0.x, 4294967295u)), 45482u, ~var_0.x) >> (~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 1u, var_0.x, var_0.x), var_0) % 32u)) << (firstLeadingBit(77777u) % 32u));
    let var_2 = _wgslsmith_mod_i32(u_input.a.x, ~_wgslsmith_sub_i32(max(abs(u_input.b), -u_input.b), min(u_input.b, u_input.b)));
    var_1 = ~1u;
    return true;
}

fn func_4(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_3, arg_3: f32) -> f32 {
    var var_0 = reverseBits(arg_2.c.wyy);
    let var_1 = firstTrailingBit(arg_0.x);
    global2 = array<f32, 20>();
    var var_2 = Struct_2(_wgslsmith_mult_vec4_u32(~(~reverseBits(vec4<u32>(arg_2.d.e.x, 0u, var_0.x, var_0.x))), vec4<u32>(var_0.x, ~70891u, ~1u & ~arg_2.d.e.x, ~(~var_0.x))), reverseBits(select(~(~vec4<i32>(7161i, u_input.b, -2147483647i, arg_0.x)), vec4<i32>(countOneBits(var_1), arg_0.x, -var_1, -var_1), false)), arg_2.d);
    global0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1995f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1731f)))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_2.c.d, vec3<f32>(var_2.c.d.x, 2251f, 352f)) + arg_2.d.d)))));
    return -969f;
}

fn func_2(arg_0: vec3<i32>, arg_1: u32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(func_4(~u_input.a.yx, 1884f, Struct_3(Struct_1(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), select(vec4<bool>(global1.x, global1.x, global1.x, false), vec4<bool>(true, true, global1.x, false), vec4<bool>(true, global1.x, true, global1.x))), global1.x, global1.x, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global2[_wgslsmith_index_u32(72404u, 20u)], -1917f, 571f), vec3<f32>(2270f, -2418f, 1254f))), vec3<f32>(global0.x, 618f, 110f))), abs(~vec3<u32>(4294967295u, 95257u, arg_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.x, -1498f))), _wgslsmith_mult_vec4_u32(~abs(vec4<u32>(56051u, 63374u, arg_1, 1u)), vec4<u32>(min(arg_1, arg_1), arg_1, arg_1, arg_1)), Struct_1(!select(vec4<bool>(true, global1.x, global1.x, true), vec4<bool>(global1.x, true, global1.x, true), vec4<bool>(global1.x, true, true, global1.x)), true, func_3() == global1.x, vec3<f32>(-108f, _wgslsmith_f_op_f32(step(1282f, -1629f)), _wgslsmith_f_op_f32(step(1808f, global0.x))), _wgslsmith_mod_vec3_u32(select(vec3<u32>(9660u, 42484u, 22336u), vec3<u32>(arg_1, arg_1, arg_1), vec3<bool>(false, false, false)), vec3<u32>(arg_1, arg_1, 3057u) & vec3<u32>(arg_1, 26612u, 0u)))), global2[_wgslsmith_index_u32(select(~1u, min(abs(1u) << (1u % 32u), 72213u), global1.x), 20u)]));
    let var_1 = ~arg_1;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * 1000f) - _wgslsmith_f_op_f32(sign(-1934f)))))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1292f)), global0.x)), _wgslsmith_f_op_f32(-327f - 340f))));
    global2 = array<f32, 20>();
    global2 = array<f32, 20>();
    return (arg_1 ^ arg_1) & 42103u;
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_3(Struct_1(!vec4<bool>(global1.x, !global1.x, any(vec3<bool>(global1.x, global1.x, global1.x)), true | global1.x), any(vec2<bool>(!global1.x, any(vec4<bool>(global1.x, true, true, global1.x)))), !(!(!global1.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(4294967295u, 20u)])), 852f, _wgslsmith_f_op_f32(sign(global0.x)))), vec3<u32>(1u, 1u, 1u)), -830f, ~vec4<u32>(~1u, 1u, func_2(_wgslsmith_div_vec3_i32(u_input.a, u_input.a), 4294967295u), 1838u), Struct_1(!vec4<bool>(false, true, select(false, global1.x, false), true), global1.x && all(vec2<bool>(global1.x, false)), select(!select(global1.x, false, global1.x), false, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global2[_wgslsmith_index_u32(26048u, 20u)], -606f, 2315f))), _wgslsmith_div_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(0u, 20u)], 564f, -273f), vec3<f32>(1000f, global0.x, 1350f))))), ~select(vec3<u32>(4294967295u, 1u, 1u), reverseBits(vec3<u32>(12099u, 1u, 4294967295u)), !vec3<bool>(global1.x, true, global1.x))));
    global2 = array<f32, 20>();
    var var_1 = select(var_0.c, var_0.c, true);
    global1 = select(var_0.d.a.yyz, vec3<bool>(var_0.d.b, true, false), !vec3<bool>(false, !global1.x, global1.x));
    global1 = select(var_0.a.a.wzz, var_0.d.a.xyz, var_0.d.a.ywy);
    return Struct_2(~(~var_0.c), -firstTrailingBit(countOneBits(vec4<i32>(-1i, u_input.b, -6527i, 7384i)) | min(vec4<i32>(1i, 1i, u_input.a.x, -1i), vec4<i32>(-57996i, u_input.a.x, u_input.a.x, -22375i))), Struct_1(!vec4<bool>(true, global1.x, select(true, var_0.d.b, false), false), (_wgslsmith_dot_vec3_i32(vec3<i32>(-43345i, u_input.b, -2147483647i), vec3<i32>(u_input.a.x, 16694i, -5108i)) <= ~u_input.b) || (true | (global1.x || global1.x)), false, vec3<f32>(global0.x, 559f, 240f), ~(vec3<u32>(var_1.x, 1u, 9553u) & vec3<u32>(2493u, 4294967295u, 0u))));
}

fn func_5(arg_0: Struct_2) -> vec2<bool> {
    var var_0 = firstLeadingBit(arg_0.a.xww);
    let var_1 = Struct_3(Struct_1(func_1().c.a, true, arg_0.c.a.x, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.x, -1494f, -1456f))), _wgslsmith_f_op_vec3_f32(-arg_0.c.d)))), _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(arg_0.c.e, arg_0.a.zxw), arg_0.c.e << (vec3<u32>(4181u, 0u, 43542u) % vec3<u32>(32u))), arg_0.c.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.c.d.x))), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(18409u, ~8862u, arg_0.c.e.x, 1u), vec4<u32>(0u, var_0.x, abs(36978u), var_0.x), select(func_1().a, arg_0.a, arg_0.c.a)), func_1().c);
    global2 = array<f32, 20>();
    let var_2 = func_1();
    let var_3 = arg_0.b.yx;
    return !func_1().c.a.zx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1());
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1116f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1704f)), global2[_wgslsmith_index_u32(50671u, 20u)]), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, global2[_wgslsmith_index_u32(4294967295u, 20u)], global2[_wgslsmith_index_u32(0u, 20u)]) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1000f, 2060f, global0.x))))), vec3<bool>(any(select(global1.yy, global1.zx, true)), !global1.x, false))));
    global2 = array<f32, 20>();
    var var_1 = Struct_3(func_1().c, 202f, _wgslsmith_clamp_vec4_u32(firstTrailingBit(~vec4<u32>(35906u, 30820u, 4294967295u, 22658u)) << (~countOneBits(vec4<u32>(1u, 4294967295u, 0u, 0u)) % vec4<u32>(32u)), ~(~(~vec4<u32>(4294967295u, 1u, 119275u, 30930u))), vec4<u32>(1u, 1u, 1u, 1u)), Struct_1(!(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, global1.x), vec4<bool>(global1.x, true, var_0.x, global1.x))), _wgslsmith_mod_i32(u_input.b ^ 1i, -u_input.a.x) != func_1().b.x, true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1227f, -631f, -551f) * vec3<f32>(global0.x, global0.x, global0.x)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.x, -1023f, -984f))))), ~vec3<u32>(1u, 1u, func_2(vec3<i32>(u_input.a.x, u_input.a.x, 57388i), 4294967295u))));
    var var_2 = Struct_1(func_1().c.a, true, true, var_1.a.d, var_1.c.ywz);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.e.x & var_2.e.x, u_input.a, global0.x);
}

