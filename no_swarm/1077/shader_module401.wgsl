struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec4<i32>,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<i32, 9>;

var<private> global2: bool = true;

var<private> global3: array<f32, 3> = array<f32, 3>(366f, -341f, -465f);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> vec4<u32> {
    let var_0 = vec4<bool>(true, _wgslsmith_f_op_f32(ceil(1000f)) != _wgslsmith_f_op_f32(sign(1546f)), true, true);
    var var_1 = max(u_input.a, u_input.a);
    global2 = global0.b.x;
    let var_2 = Struct_1(-2147483647i, vec4<bool>(!(!var_0.x) | all(var_0.yzy), global0.b.x, false, any(!global0.b)), _wgslsmith_clamp_vec4_i32(global0.c, vec4<i32>(u_input.e.x, -1i, u_input.c, _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(~4294967295u, 9u)], -55825i)), select(vec4<i32>(global1[_wgslsmith_index_u32(29856u, 9u)], 2147483647i, global0.c.x, 11324i), ~vec4<i32>(global0.c.x, -32606i, -26316i, 5554i), true) >> (_wgslsmith_clamp_vec4_u32(select(u_input.a, u_input.a, true), ~vec4<u32>(4294967295u, u_input.a.x, 20380u, 4294967295u), _wgslsmith_add_vec4_u32(vec4<u32>(3452u, 118u, var_1.x, u_input.b), u_input.a)) % vec4<u32>(32u))), ~global0.d ^ var_1.x);
    var var_3 = var_2;
    return u_input.a;
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: vec4<i32>, arg_3: Struct_1) -> u32 {
    global3 = array<f32, 3>();
    let var_0 = -157f;
    global3 = array<f32, 3>();
    let var_1 = _wgslsmith_mod_vec4_u32(func_3(), min(vec4<u32>(arg_3.d, ~7036u, ~(global0.d & u_input.b), ~_wgslsmith_mod_u32(68489u, 21316u)), u_input.a));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2064f * global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_1, 8238u), 3u)])) + 579f) + -1789f);
    return ~(~arg_3.d);
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<u32>) -> Struct_1 {
    var var_0 = vec2<i32>(countOneBits(max(~(-20912i), u_input.d >> (_wgslsmith_dot_vec2_u32(vec2<u32>(56636u, 60148u), u_input.a.yw) % 32u))), -1i);
    global0 = Struct_1(2147483647i, global0.b, _wgslsmith_sub_vec4_i32(vec4<i32>(abs(global1[_wgslsmith_index_u32(~arg_1.x, 9u)]), var_0.x, _wgslsmith_dot_vec3_i32(~vec3<i32>(30019i, u_input.c, 44948i), max(arg_0, arg_0)), abs(_wgslsmith_mult_i32(global0.a, -1i))), global0.c), _wgslsmith_dot_vec3_u32(arg_1.zyy, ~u_input.a.www));
    let var_1 = Struct_1(_wgslsmith_dot_vec2_i32(max(vec2<i32>(global0.c.x, u_input.e.x), vec2<i32>(1303i, -14640i)), _wgslsmith_sub_vec2_i32(select(u_input.e.zz, u_input.e.yx, global0.b.yz), ~u_input.e.yy)) >> (~global0.d % 32u), vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(686f + -302f)) >= _wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(~global0.d, 3u)], _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global0.d, 3u)]))), true, all(vec2<bool>(any(global0.b.yw), any(global0.b.wxz))), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(func_3().x, 3u)] * 580f) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(83477u, 3u)] + 2304f))), global0.c ^ vec4<i32>(select(_wgslsmith_div_i32(var_0.x, u_input.d), firstLeadingBit(-2147483647i), global0.b.x), ~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, arg_1.x), vec3<u32>(1u, u_input.b, global0.d)), 9u)], ~global0.c.x, 15072i), ~min(max(arg_1.x, global0.d), 4294967295u));
    let var_2 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(min(22367u, ~(u_input.a.x << (1u % 32u)) >> (4294967295u % 32u)), arg_1.x), 3u)];
    var_0 = -max(u_input.e.xy, ~vec2<i32>(abs(var_1.c.x), global1[_wgslsmith_index_u32(4294967295u, 9u)]));
    return var_1;
}

fn func_1() -> i32 {
    global0 = func_4(~select(-vec3<i32>(u_input.e.x, 1i, 1i), vec3<i32>(abs(u_input.c), -u_input.c, select(global1[_wgslsmith_index_u32(global0.d, 9u)], 5241i, global0.b.x)), true), _wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, abs(global0.d), 37832u, _wgslsmith_clamp_u32(0u, u_input.a.x, global0.d) & func_2(-1i, 48519u, global0.c, Struct_1(global1[_wgslsmith_index_u32(u_input.a.x, 9u)], global0.b, global0.c, 1u)))));
    var var_0 = 1i;
    var var_1 = Struct_1(-(~(-13523i)), func_4(firstLeadingBit(firstTrailingBit(vec3<i32>(-40769i, u_input.e.x, u_input.d) & vec3<i32>(-28130i, -1i, -1i))), min(countOneBits(u_input.a), ~u_input.a << (u_input.a % vec4<u32>(32u)))).b, (global0.c ^ firstLeadingBit(global0.c ^ global0.c)) >> (vec4<u32>(32661u, u_input.a.x, firstTrailingBit(u_input.a.x | 4294967295u), _wgslsmith_mod_u32(global0.d, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.d, 0u, 18391u), vec3<u32>(global0.d, 21687u, u_input.a.x)))) % vec4<u32>(32u)), 18278u);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(414f, global3[_wgslsmith_index_u32(u_input.b, 3u)], global3[_wgslsmith_index_u32(global0.d, 3u)]) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(0u, 3u)], global3[_wgslsmith_index_u32(15422u, 3u)], global3[_wgslsmith_index_u32(global0.d, 3u)])))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 3u)], global3[_wgslsmith_index_u32(global0.d, 3u)], global3[_wgslsmith_index_u32(4294967295u, 3u)])))));
    let var_3 = ~(~vec2<u32>(_wgslsmith_sub_u32(4294967295u, global0.d), var_1.d));
    return global1[_wgslsmith_index_u32(func_2(_wgslsmith_add_i32(_wgslsmith_mod_i32(_wgslsmith_sub_i32(global0.c.x, var_1.c.x), 31498i ^ global0.c.x) << (~var_3.x % 32u), _wgslsmith_mult_i32(-abs(-2147483647i), -u_input.e.x)), 4294967295u, abs(_wgslsmith_div_vec4_i32(vec4<i32>(i32(-1i) * -3923i, abs(14973i), 2147483647i, global1[_wgslsmith_index_u32(var_3.x, 9u)]), abs(vec4<i32>(-46769i, 2026i, u_input.e.x, u_input.e.x)))), Struct_1(-global1[_wgslsmith_index_u32(4294967295u, 9u)], vec4<bool>(!all(var_1.b.xx), min(3463i, 1i) <= -global0.a, global0.b.x, global0.b.x), vec4<i32>(reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 33939i, global1[_wgslsmith_index_u32(13071u, 9u)]), global0.c.zww)), min(u_input.c, global0.c.x) | ~var_1.c.x, _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.c, 14086i, -23673i), ~vec3<i32>(-27998i, -2147483647i, -11724i)), -var_1.c.x), firstTrailingBit(u_input.a.x))), 9u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(1i, vec4<bool>(any(vec3<bool>(global0.b.x & false, false, -1i > u_input.c)), true, all(global0.b.wxx) == true, !global0.b.x), _wgslsmith_div_vec4_i32(global0.c, vec4<i32>(abs(~global1[_wgslsmith_index_u32(u_input.a.x, 9u)]), _wgslsmith_dot_vec3_i32(global0.c.zxz, u_input.e), func_1(), u_input.c)), firstTrailingBit(~(~4294967295u)) >> (abs(_wgslsmith_mult_u32(firstLeadingBit(u_input.b), ~global0.d)) % 32u));
    var var_1 = Struct_1(~abs(var_0.a), !var_0.b, global0.c, _wgslsmith_clamp_u32(var_0.d, ~(~var_0.d), ~var_0.d | _wgslsmith_dot_vec4_u32(u_input.a, u_input.a)) & 66609u);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global3[_wgslsmith_index_u32(global0.d, 3u)], -205f, -379f, global3[_wgslsmith_index_u32(1u, 3u)]))))));
    var var_3 = countOneBits(func_2(~10945i, 31199u, var_0.c, Struct_1(30884i, select(select(vec4<bool>(global0.b.x, var_1.b.x, false, var_1.b.x), vec4<bool>(false, global0.b.x, false, var_1.b.x), vec4<bool>(var_0.b.x, false, false, true)), vec4<bool>(var_0.b.x, true, var_1.b.x, var_0.b.x), false), reverseBits(var_1.c), ~1u)));
    let var_4 = select(select(vec4<bool>(all(var_0.b), global0.d > firstLeadingBit(73010u), var_1.b.x, any(vec3<bool>(global0.b.x, global0.b.x, var_0.b.x))), vec4<bool>(true, !var_1.b.x, true, !all(var_0.b)), all(global0.b.wx)), func_4(func_4(vec3<i32>(global0.a | 38447i, abs(2147483647i), var_0.c.x & -1i), ~vec4<u32>(4294967295u, 91894u, global0.d, u_input.a.x)).c.zxx, ~(~u_input.a) & (u_input.a >> (u_input.a % vec4<u32>(32u)))).b, (_wgslsmith_dot_vec3_u32(vec3<u32>(87601u, var_1.d, global0.d), u_input.a.yxy) & ~_wgslsmith_clamp_u32(global0.d, 1u, var_0.d)) != _wgslsmith_dot_vec2_u32(~select(vec2<u32>(4294967295u, var_1.d), u_input.a.zx, global0.b.xx), u_input.a.xz));
    let var_5 = global3[_wgslsmith_index_u32(~var_1.d, 3u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a, -19952i);
}

