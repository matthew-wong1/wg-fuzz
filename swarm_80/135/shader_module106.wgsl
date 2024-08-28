struct Struct_1 {
    a: vec3<i32>,
    b: bool,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18>;

var<private> global1: array<bool, 32> = array<bool, 32>(false, true, false, true, true, true, true, false, false, false, false, false, false, false, true, false, true, false, true, true, false, true, false, true, false, true, false, false, false, true, true, true);

var<private> global2: array<bool, 2>;

var<private> global3: array<f32, 28>;

var<private> global4: array<bool, 21>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec3<bool> {
    global3 = array<f32, 28>();
    var var_0 = Struct_2(vec3<i32>(_wgslsmith_div_i32(~(-u_input.c.x), -1i), ~(~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.b.x, 1i), vec3<i32>(u_input.b.x, -2147483647i, -1i))), u_input.c.x));
    global1 = array<bool, 32>();
    global4 = array<bool, 21>();
    return vec3<bool>(false, true, !any(!(!vec3<bool>(true, true, global2[_wgslsmith_index_u32(u_input.a.x, 2u)]))));
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    let var_0 = func_3();
    let var_1 = vec2<u32>(_wgslsmith_mod_u32(firstLeadingBit(17640u), 9607u), 1u);
    global0 = array<Struct_2, 18>();
    var var_2 = var_0.yx;
    let var_3 = any(func_3().zx);
    return global0[_wgslsmith_index_u32(1u, 18u)];
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> vec2<u32> {
    var var_0 = func_2(global0[_wgslsmith_index_u32(4294967295u, 18u)]);
    let var_1 = vec4<i32>(var_0.a.x, reverseBits(~2147483647i), (reverseBits(u_input.c.x) | select(var_0.a.x, arg_0, false)) ^ _wgslsmith_mod_i32(55902i, -33800i), min(arg_1.a.x ^ 36491i, _wgslsmith_add_i32(u_input.b.x, 2147483647i))) >> (vec4<u32>(64893u & _wgslsmith_div_u32(u_input.a.x & u_input.a.x, 46930u), ~(~1u), 92753u, u_input.a.x) % vec4<u32>(32u));
    var var_2 = _wgslsmith_mod_u32(~(~_wgslsmith_mult_u32(u_input.a.x ^ 109109u, firstLeadingBit(u_input.a.x))), u_input.a.x | _wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.a.yx), select(u_input.a.wz, u_input.a.zx & vec2<u32>(93704u, 1u), func_3().xz)));
    let var_3 = !vec4<bool>(all(vec2<bool>(global1[_wgslsmith_index_u32(9771u, 32u)] | false, false)), true, select(global4[_wgslsmith_index_u32(~_wgslsmith_add_u32(23602u, u_input.a.x), 21u)], any(select(vec3<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 21u)], global4[_wgslsmith_index_u32(16636u, 21u)], false), vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.a.x, 2u)], true), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 32u)], global2[_wgslsmith_index_u32(2774u, 2u)], false))), true), global1[_wgslsmith_index_u32(u_input.a.x, 32u)]);
    var var_4 = global0[_wgslsmith_index_u32(4294967295u, 18u)];
    return u_input.a.xy;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: Struct_1, arg_3: i32) -> vec4<bool> {
    let var_0 = _wgslsmith_mult_vec3_u32(vec3<u32>(max(_wgslsmith_add_u32(abs(0u), ~21843u), u_input.a.x), 4294967295u, u_input.a.x), u_input.a.xzx);
    let var_1 = var_0.x;
    var var_2 = Struct_2(arg_1.a);
    var var_3 = Struct_1(-vec3<i32>(-48184i, var_2.a.x, firstLeadingBit(var_2.a.x)), !select(arg_2.b, 2284f > _wgslsmith_f_op_f32(abs(global3[_wgslsmith_index_u32(var_1, 28u)])), true));
    var var_4 = arg_0;
    return !vec4<bool>((_wgslsmith_mult_u32(var_1, var_1) << (~var_1 % 32u)) < min(var_1, var_1), true, any(vec2<bool>(true, !var_3.b)), false);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 32>();
    var var_0 = vec3<u32>(~4294967295u, ~_wgslsmith_div_u32(u_input.a.x, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(0u, u_input.a.x), 1u, 51871u)), 1u);
    let var_1 = func_4(vec3<bool>(select(global4[_wgslsmith_index_u32(~35867u, 21u)], true, !global2[_wgslsmith_index_u32(1u, 2u)]) | true, false, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a.x, _wgslsmith_dot_vec2_u32(func_1(u_input.c.x, Struct_1(vec3<i32>(u_input.c.x, u_input.b.x, 1i), global2[_wgslsmith_index_u32(1u, 2u)])), u_input.a.zw), 1u), 32u)]), global0[_wgslsmith_index_u32(0u, 18u)], Struct_1(select(~u_input.b, _wgslsmith_clamp_vec3_i32(u_input.b << (u_input.a.xyy % vec3<u32>(32u)), func_2(global0[_wgslsmith_index_u32(1u, 18u)]).a, vec3<i32>(u_input.b.x, u_input.b.x, 0i)), !(!vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 2u)], true, global1[_wgslsmith_index_u32(4782u, 32u)]))), global4[_wgslsmith_index_u32(var_0.x, 21u)]), u_input.b.x);
    global4 = array<bool, 21>();
    var_0 = _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(select(abs(vec3<u32>(u_input.a.x, 4294967295u, 93466u)), vec3<u32>(1u, 17813u, var_0.x) << (reverseBits(u_input.a.ywy) % vec3<u32>(32u)), var_1.xww), ~min(u_input.a.wyx, u_input.a.xwy) | ~(~vec3<u32>(var_0.x, 75698u, var_0.x))), select(u_input.a.yyy, _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(37607u, var_0.x, u_input.a.x), abs(u_input.a.yzy), firstLeadingBit(vec3<u32>(51615u, var_0.x, u_input.a.x))), ~u_input.a.zzz), select(var_1.xyx, func_3(), func_4(var_1.xzy, global0[_wgslsmith_index_u32(~var_0.x, 18u)], Struct_1(u_input.b, global1[_wgslsmith_index_u32(u_input.a.x, 32u)]), u_input.b.x).x)));
    var_0 = vec3<u32>(53632u, ~((var_0.x >> (u_input.a.x % 32u)) | func_1(u_input.c.x, Struct_1(vec3<i32>(u_input.c.x, -2147483647i, u_input.b.x), var_1.x)).x), _wgslsmith_sub_u32(~4294967295u, var_0.x) << ((~u_input.a.x << (reverseBits(u_input.a.x) % 32u)) % 32u)) & max(u_input.a.wyy, abs(firstTrailingBit(u_input.a.wzw)));
    let var_2 = true;
    global0 = array<Struct_2, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(abs(~u_input.a.x)), ~4294967295u, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(var_0.x, 28u)] * 1000f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.a.x, 28u)])))), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(60027u, ~var_0.x), 28u)]), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(u_input.a.x, 28u)])), _wgslsmith_f_op_f32(select(-711f, _wgslsmith_div_f32(339f, -1000f), all(var_1))))), _wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(~var_0.x, 28u)], 703f))));
}

