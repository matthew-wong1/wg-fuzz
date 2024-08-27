struct Struct_1 {
    a: i32,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5> = array<u32, 5>(0u, 8088u, 4294967295u, 88661u, 0u);

var<private> global1: vec4<bool> = vec4<bool>(false, false, true, false);

var<private> global2: vec2<f32> = vec2<f32>(-2198f, -1989f);

var<private> global3: Struct_1 = Struct_1(32599i, 29382i, false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec2<f32> {
    var var_0 = Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -_wgslsmith_clamp_vec4_i32(vec4<i32>(global3.a, u_input.c, global3.a, u_input.c), vec4<i32>(global3.b, u_input.d, global3.a, u_input.b.x), vec4<i32>(u_input.d, 0i, -2147483647i, -2028i)), firstTrailingBit(~vec4<i32>(global3.b, global3.b, 0i, 1i)) ^ firstLeadingBit(vec4<i32>(u_input.c, global3.b, global3.a, u_input.b.x))), -1i, all(vec3<bool>(global1.x, any(vec2<bool>(true, true)) != (true | global1.x), !any(global1.wyw))));
    var var_1 = global1.xw;
    global0 = array<u32, 5>();
    var_0 = Struct_1(2147483647i, u_input.b.x, var_1.x);
    let var_2 = Struct_1(-u_input.d, global3.a, all(global1.yzw));
    return _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1305f * _wgslsmith_f_op_f32(abs(327f))), global2.x))));
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(select(global2.x, global2.x, global3.c)), _wgslsmith_div_f32(1317f, 154f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -336f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, global2.x) * vec2<f32>(-468f, global2.x)))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, -1499f)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(func_3())))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(861f, -163f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1000f, -270f))) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global2.x, global2.x)))))), false))));
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(var_0.x, 1766f), _wgslsmith_f_op_f32(round(209f)))))) * vec2<f32>(_wgslsmith_f_op_vec2_f32(func_3()).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * -696f))));
    let var_1 = Struct_2(u_input.a);
    var var_2 = Struct_3(Struct_2(abs(vec4<u32>(52749u | u_input.a.x, ~global0[_wgslsmith_index_u32(var_1.a.x, 5u)], var_1.a.x, _wgslsmith_add_u32(52093u, global0[_wgslsmith_index_u32(u_input.e.x, 5u)])))), Struct_2(vec4<u32>(~_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(0u, 5u)], 0u), ~var_1.a.x << (_wgslsmith_clamp_u32(var_1.a.x, var_1.a.x, u_input.a.x) % 32u), ~5412u, firstTrailingBit(4294967295u))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1100f, -255f))));
    return Struct_2(~(~(~(~vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.a.x, 5u)], 5u)], 1u, var_1.a.x)))));
}

fn func_1(arg_0: bool) -> vec4<bool> {
    let var_0 = any(select(global1.zxx, vec3<bool>((1u & global0[_wgslsmith_index_u32(4294967295u, 5u)]) != (global0[_wgslsmith_index_u32(1u, 5u)] << (4294967295u % 32u)), !arg_0, global1.x), !select(global1.yyy, global1.yzy, select(global1.yyw, global1.xzw, false))));
    var var_1 = func_2();
    global3 = Struct_1(reverseBits(global3.b), ~_wgslsmith_mod_i32(0i, _wgslsmith_add_i32(global3.a, u_input.d) | 33123i), true && !global3.c);
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global2.x, global2.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, 393f) - vec2<f32>(1878f, -1754f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global2.x))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global2.x)) - vec2<f32>(198f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -396f), -1204f)))));
    global3 = Struct_1(~abs(u_input.c), 1i, true);
    return vec4<bool>(!(_wgslsmith_sub_i32(0i, u_input.d) != -2147483647i), (false && !(!global1.x)) != any(select(vec2<bool>(true, var_0), vec2<bool>(arg_0, false), !global1.xz)), global1.x && !global3.c, arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(all(func_1(global3.c | false)) && global3.c, global3.c, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) <= -1000f, !all(select(!vec4<bool>(false, global3.c, true, true), vec4<bool>(global1.x, global3.c, global3.c, global1.x), select(vec4<bool>(global3.c, global3.c, false, true), vec4<bool>(false, true, global1.x, true), global1.x))));
    global0 = array<u32, 5>();
    var var_1 = ~vec4<i32>(~(-firstLeadingBit(global3.a)), _wgslsmith_clamp_i32(u_input.d, global3.a, 14746i), _wgslsmith_clamp_i32(_wgslsmith_add_i32(~global3.b, _wgslsmith_mod_i32(global3.b, 1i)), -1766i, global3.a), global3.b);
    let var_2 = _wgslsmith_sub_u32(u_input.e.x, ~select(1u >> (global0[_wgslsmith_index_u32(1u, 5u)] % 32u), 0u, !(global3.b == global3.b)));
    global1 = vec4<bool>(any(global1.xy), func_1(4294967295u < u_input.e.x).x, true, _wgslsmith_f_op_f32(floor(-917f)) == 1000f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(u_input.b.x, 1i, 0i, -1i)), vec4<i32>(u_input.d, var_1.x, u_input.d | global3.a, u_input.b.x)) ^ _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(abs(var_1.zz), firstLeadingBit(vec2<i32>(global3.b, -1i))), global3.a), _wgslsmith_f_op_vec2_f32(func_3()).x, global0[_wgslsmith_index_u32(~u_input.a.x, 5u)]);
}

