struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: f32,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32>;

var<private> global1: array<Struct_1, 19>;

var<private> global2: array<f32, 25>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: vec3<f32>) -> f32 {
    let var_0 = arg_2;
    var var_1 = _wgslsmith_add_i32(var_0.x >> (firstTrailingBit(_wgslsmith_dot_vec2_u32(arg_1.d.zz, arg_1.d.zy)) % 32u), ~firstLeadingBit(~arg_2.x)) << (_wgslsmith_clamp_u32(~u_input.a, select(0u, ~1u, _wgslsmith_div_i32(var_0.x, 30256i) < (arg_2.x >> (15910u % 32u))), abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(13700u, arg_1.e.x, 4294967295u, u_input.b), ~vec4<u32>(62173u, 4294967295u, 0u, arg_1.d.x)))) % 32u);
    var_1 = _wgslsmith_div_i32(_wgslsmith_mod_i32(_wgslsmith_mult_i32(i32(-1i) * -38014i, var_0.x), firstLeadingBit(_wgslsmith_mod_i32(-arg_2.x, var_0.x))), -(-2147483647i ^ arg_2.x));
    var var_2 = arg_3.zz;
    var var_3 = arg_1.e;
    return _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-172f + _wgslsmith_f_op_f32(-arg_3.x))));
}

fn func_3() -> u32 {
    var var_0 = vec2<bool>((~u_input.a & 9742u) >= u_input.b, false);
    var_0 = vec2<bool>(!(_wgslsmith_div_u32(u_input.a, ~u_input.a) > ~u_input.a), var_0.x);
    var_0 = !vec2<bool>(var_0.x, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, u_input.b), vec2<u32>(u_input.b, 1u), vec2<u32>(u_input.b, 4294967295u)), vec2<u32>(30535u, u_input.a) & vec2<u32>(u_input.a, u_input.a)), 25u)] == -1605f);
    global1 = array<Struct_1, 19>();
    let var_1 = Struct_1(global2[_wgslsmith_index_u32(4294967295u, 25u)], select(!(!select(vec3<bool>(false, false, true), vec3<bool>(var_0.x, true, true), true)), !vec3<bool>(any(vec3<bool>(var_0.x, var_0.x, true)), var_0.x, all(vec2<bool>(false, var_0.x))), vec3<bool>(var_0.x, true || !var_0.x, select(var_0.x | false, all(vec4<bool>(false, var_0.x, var_0.x, false)), true))), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~32992u, 25u)] * _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 25u)])), ~vec3<u32>(1u, u_input.a, firstTrailingBit(4294967295u)), ~vec3<u32>(reverseBits(min(4294967295u, 54244u)), 32240u, ~_wgslsmith_mult_u32(u_input.a, u_input.b)));
    return _wgslsmith_mod_u32(~(~1u), var_1.e.x);
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: bool) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_f32(func_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 327f, 827f) * vec3<f32>(arg_0.c, arg_0.c, -245f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-555f, -675f, 380f), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, -347f, global2[_wgslsmith_index_u32(0u, 25u)]) + vec3<f32>(global2[_wgslsmith_index_u32(40664u, 25u)], -616f, -1000f)))))), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~_wgslsmith_mult_u32(3649u, 22953u), _wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.b, 4294967295u), countOneBits(15713u)), arg_0.d.x)), 19u)], ~(~_wgslsmith_mult_vec3_i32(~vec3<i32>(-1i, -6045i, -2147483647i), firstTrailingBit(vec3<i32>(0i, arg_1, -10956i)))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(247f + arg_0.c), _wgslsmith_f_op_f32(trunc(2408f)), -1413f)))));
    global1 = array<Struct_1, 19>();
    var var_1 = Struct_1(-372f, vec3<bool>(arg_0.b.x, any(vec3<bool>(true, true, true)), !arg_0.b.x), arg_0.a, firstTrailingBit(~arg_0.e), vec3<u32>(4294967295u, _wgslsmith_mult_u32(u_input.b, arg_0.e.x), _wgslsmith_mod_u32(func_3(), ~34551u)));
    let var_2 = Struct_1(arg_0.c, var_1.b, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) - 276f) * var_0))), vec3<u32>(abs(u_input.b), ~92853u, ~_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.d.x, u_input.a, var_1.e.x, var_1.e.x), vec4<u32>(1u, var_1.d.x, 58275u, arg_0.d.x)), countOneBits(7089u))), ~(~max(vec3<u32>(3796u, var_1.d.x, var_1.e.x), vec3<u32>(arg_0.d.x, arg_0.e.x, arg_0.d.x))));
    var_1 = var_2;
    return vec3<u32>(~abs(22935u), ~arg_0.d.x, arg_0.d.x);
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> vec3<f32> {
    global2 = array<f32, 25>();
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a))));
    global0 = array<Struct_1, 32>();
    global1 = array<Struct_1, 19>();
    let var_1 = true;
    return vec3<f32>(362f, _wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(-arg_2.a));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 19>();
    var var_0 = global0[_wgslsmith_index_u32(~(~u_input.a), 32u)];
    global2 = array<f32, 25>();
    var_0 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(0u, u_input.b, 4294967295u, 1u) & _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.e.x, 1u, 1u, var_0.d.x), vec4<u32>(u_input.b, 59u, u_input.a, 1u)), max(~vec4<u32>(4294967295u, 1u, var_0.e.x, 11353u), vec4<u32>(u_input.b, var_0.e.x, u_input.a, u_input.a))), ~countOneBits(vec4<u32>(4294967295u, var_0.d.x, u_input.b, 0u))), 19u)];
    let var_1 = var_0.b.zx;
    var var_2 = !any(!select(!vec3<bool>(var_1.x, true, false), var_0.b, any(vec2<bool>(var_1.x, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(Struct_1(global2[_wgslsmith_index_u32(~u_input.a, 25u)], select(vec3<bool>(var_0.b.x, false, false), vec3<bool>(var_1.x, true, true), var_0.b.x), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_0.e.x, 25u)] * global2[_wgslsmith_index_u32(1u, 25u)]), _wgslsmith_div_vec3_u32(vec3<u32>(var_0.d.x, 4294967295u, u_input.a), vec3<u32>(2828u, 1u, 0u)), func_1(global0[_wgslsmith_index_u32(u_input.a, 32u)], 0i, true)), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 25u)]), Struct_1(global2[_wgslsmith_index_u32(1u ^ var_0.e.x, 25u)], select(vec3<bool>(false, false, var_0.b.x), vec3<bool>(false, false, var_0.b.x), vec3<bool>(true, var_0.b.x, false)), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.b, 25u)] - var_0.a), ~vec3<u32>(u_input.b, 1u, var_0.e.x), var_0.e))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(u_input.b, 25u)])) * _wgslsmith_f_op_f32(var_0.c * 1631f)), _wgslsmith_f_op_vec3_f32(func_4(global0[_wgslsmith_index_u32(~var_0.d.x, 32u)], _wgslsmith_div_f32(-1328f, global2[_wgslsmith_index_u32(1u, 25u)]), Struct_1(global2[_wgslsmith_index_u32(u_input.a, 25u)], var_0.b, -971f, vec3<u32>(1u, u_input.a, 18846u), vec3<u32>(u_input.b, var_0.e.x, var_0.d.x)))).x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(vec3<f32>(global2[_wgslsmith_index_u32(0u, 25u)], 1718f, var_0.a), global1[_wgslsmith_index_u32(1u, 19u)], vec3<i32>(2147483647i, -18678i, -26792i), vec3<f32>(var_0.a, global2[_wgslsmith_index_u32(var_0.d.x, 25u)], var_0.a))))))), vec2<f32>(114f, -1271f), _wgslsmith_add_vec2_u32(var_0.d.yx, abs(~var_0.d.yx) ^ vec2<u32>(~4799u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.d.x, u_input.b, 1u, var_0.d.x), vec4<u32>(u_input.b, u_input.a, u_input.a, 1u)))));
}

