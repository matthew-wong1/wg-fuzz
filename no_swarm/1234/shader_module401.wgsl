struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 20>;

var<private> global1: vec4<f32> = vec4<f32>(549f, 1206f, -1100f, 1805f);

var<private> global2: i32 = -15073i;

var<private> global3: array<vec3<bool>, 14> = array<vec3<bool>, 14>(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false));

var<private> global4: u32 = 84350u;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2() -> Struct_1 {
    let var_0 = true;
    let var_1 = !var_0;
    let var_2 = vec3<i32>(_wgslsmith_div_i32(global0[_wgslsmith_index_u32(1u, 20u)], _wgslsmith_div_i32(global0[_wgslsmith_index_u32(37690u, 20u)], -1i) ^ ~(-36446i)) >> (_wgslsmith_div_u32(~13693u, 10067u) % 32u), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(u_input.a, 8129i, -22147i)), ~vec3<i32>(global0[_wgslsmith_index_u32(9171u, 20u)], -1i, 0i), _wgslsmith_div_vec3_i32(vec3<i32>(1i, u_input.a, 0i), vec3<i32>(global0[_wgslsmith_index_u32(0u, 20u)], u_input.b, -43871i))), ~(-vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(1u, 20u)], -2147483647i))), vec3<i32>(-u_input.a, firstTrailingBit(_wgslsmith_mult_i32(u_input.a, u_input.b)), (u_input.b << (4294967295u % 32u)) ^ ~u_input.a)), 1i);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(max(-1732f, _wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(486f - _wgslsmith_f_op_f32(abs(152f))), _wgslsmith_f_op_f32(f32(-1f) * -1157f), _wgslsmith_f_op_f32(global1.x * global1.x)))));
    global4 = ~1u;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1356f) - _wgslsmith_f_op_f32(trunc(-678f)))) >= _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -621f), -318f) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(625f, 496f))))));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: vec4<i32>) -> vec4<bool> {
    return !select(!(!select(vec4<bool>(false, false, arg_0.b, true), vec4<bool>(true, arg_0.b, arg_0.a.a, arg_0.a.a), vec4<bool>(arg_0.b, false, false, arg_0.a.a))), !select(vec4<bool>(false, arg_0.a.a, arg_0.b, true), !vec4<bool>(arg_0.a.a, false, arg_0.a.a, false), select(vec4<bool>(arg_0.b, true, arg_0.b, arg_0.a.a), vec4<bool>(true, arg_0.a.a, true, arg_0.a.a), vec4<bool>(arg_0.a.a, arg_0.b, arg_0.a.a, arg_0.a.a))), !(!arg_0.a.a & arg_0.b));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>) -> vec4<f32> {
    global4 = ~(~4294967295u);
    let var_0 = -vec4<i32>(min(-1i, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(30257u, 1u), 20u)]), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~2742u, 1u) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(41682u, 22455u), ~vec2<u32>(0u, 0u)) % 32u), 20u)], global0[_wgslsmith_index_u32(1u, 20u)], -1i);
    global3 = array<vec3<bool>, 14>();
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 2159f, 1628f, global1.x) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1.x, global1.x, global1.x, global1.x)))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1f), -852f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.x, 1536f, arg_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.x, global1.x)) + _wgslsmith_f_op_f32(1771f - global1.x)))));
    global3 = array<vec3<bool>, 14>();
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(-733f)), global1.x, -184f, global1.x) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, global1.x))), vec4<f32>(_wgslsmith_f_op_f32(step(global1.x, 616f)), _wgslsmith_f_op_f32(global1.x * 421f), _wgslsmith_f_op_f32(global1.x * global1.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), arg_1))) + vec4<f32>(_wgslsmith_f_op_f32(-744f * -139f), -812f, -1000f, global1.x));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<f32>) -> Struct_1 {
    let var_0 = 60203u;
    var var_1 = 0u;
    var var_2 = 51583u;
    var_1 = ~4294967295u;
    let var_3 = false || arg_1.a.a;
    return func_2();
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = ~(-(max(vec3<i32>(u_input.b, -2147483647i, u_input.a), vec3<i32>(global0[_wgslsmith_index_u32(arg_0, 20u)], -7444i, 70365i) & vec3<i32>(global0[_wgslsmith_index_u32(arg_0, 20u)], -40408i, global0[_wgslsmith_index_u32(arg_0, 20u)])) << ((vec3<u32>(arg_0, arg_0, arg_0) | firstLeadingBit(vec3<u32>(86776u, arg_0, 17586u))) % vec3<u32>(32u))));
    let var_1 = Struct_2(func_5(Struct_2(func_2(), func_2().a), Struct_2(Struct_1(arg_0 >= 4294967295u), true), _wgslsmith_f_op_vec4_f32(func_4(Struct_1(true), func_3(Struct_2(Struct_1(false), true), vec4<i32>(var_0.x, 56714i, -26688i, global0[_wgslsmith_index_u32(arg_0, 20u)]), countOneBits(vec4<i32>(global0[_wgslsmith_index_u32(arg_0, 20u)], u_input.a, global0[_wgslsmith_index_u32(4294967295u, 20u)], 65299i)))))), true);
    return var_1.a;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: u32) -> bool {
    var var_0 = arg_0.a;
    let var_1 = 0i;
    var var_2 = func_3(Struct_2(Struct_1(arg_0.a), arg_2.x), ~_wgslsmith_div_vec4_i32(abs(-vec4<i32>(-1i, 1i, 1i, global0[_wgslsmith_index_u32(60050u, 20u)])), firstTrailingBit(abs(vec4<i32>(var_1, global0[_wgslsmith_index_u32(arg_3, 20u)], u_input.a, -1i)))), vec4<i32>(_wgslsmith_dot_vec3_i32(-_wgslsmith_mult_vec3_i32(vec3<i32>(0i, u_input.b, -1i), vec3<i32>(global0[_wgslsmith_index_u32(0u, 20u)], 1i, var_1)), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(arg_3, 20u)], var_1, -1i), vec3<i32>(37753i, 1i, u_input.a), vec3<i32>(1i, var_1, 1i))), -select(0i, var_1 << (arg_3 % 32u), arg_0.a & false), 1i, countOneBits(~var_1)));
    var_2 = !select(vec4<bool>(true, false, any(vec4<bool>(arg_1.a, true, false, true)), !all(var_2.ww)), !(!vec4<bool>(false, true, var_2.x, false)), false);
    let var_3 = var_2.zz;
    return all(arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = Struct_1(true & func_6(func_1(~4294967295u), Struct_1(func_3(Struct_2(Struct_1(true), false), vec4<i32>(60572i, u_input.a, 31903i, 0i), vec4<i32>(-9902i, global0[_wgslsmith_index_u32(82903u, 20u)], 23651i, -37963i)).x), select(vec3<bool>(false, true, true), global3[_wgslsmith_index_u32(~4294967295u, 14u)], false), 14324u));
    let var_2 = vec2<u32>(reverseBits(1u), ~(~countOneBits(60322u)));
    global1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1089f, -716f, global1.x, global1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 1004f, -1129f, global1.x) - vec4<f32>(global1.x, global1.x, -1238f, 145f)), !vec4<bool>(true, var_1.a, var_1.a, var_1.a)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-267f, 1000f, global1.x, 1000f) + vec4<f32>(global1.x, _wgslsmith_f_op_f32(floor(1073f)), -2012f, -1000f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-211f))), _wgslsmith_dot_vec2_i32(vec2<i32>(-global0[_wgslsmith_index_u32(48597u, 20u)] >> (~var_2.x % 32u), u_input.b), -vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -2147483647i, 43407i), vec3<i32>(28138i, 0i, 522i)), reverseBits(global0[_wgslsmith_index_u32(0u, 20u)]))), _wgslsmith_div_vec2_i32(~reverseBits(vec2<i32>(global0[_wgslsmith_index_u32(var_2.x, 20u)], u_input.b)), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, global0[_wgslsmith_index_u32(var_2.x, 20u)]), vec2<i32>(-21407i, 61332i)) & ~vec2<i32>(u_input.a, 2147483647i)) & max(reverseBits(countOneBits(vec2<i32>(1i, 18566i))), -(~vec2<i32>(-9808i, -2147483647i))), _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, _wgslsmith_div_i32(~32768i, abs(2147483647i))), -select(_wgslsmith_div_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(75827u, 20u)], u_input.a), vec2<i32>(global0[_wgslsmith_index_u32(var_2.x, 20u)], 18177i)), select(vec2<i32>(u_input.a, 1i), vec2<i32>(global0[_wgslsmith_index_u32(var_2.x, 20u)], 39747i), vec2<bool>(true, false)), vec2<bool>(var_1.a, var_1.a))));
}

