struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec2<f32>,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<u32>,
    c: i32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 14>;

var<private> global1: array<Struct_1, 30>;

var<private> global2: array<u32, 30> = array<u32, 30>(36133u, 14047u, 0u, 44410u, 4500u, 22782u, 1u, 4294967295u, 0u, 17426u, 12855u, 0u, 0u, 1u, 0u, 0u, 83934u, 1u, 4294967295u, 49164u, 38384u, 7559u, 4294967295u, 33584u, 6832u, 1u, 7772u, 80531u, 50689u, 77687u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: f32, arg_3: i32) -> vec4<i32> {
    global2 = array<u32, 30>();
    var var_0 = Struct_4(Struct_2(-100f));
    global1 = array<Struct_1, 30>();
    var var_1 = vec2<bool>(true, false);
    let var_2 = arg_0.a.x ^ 2147483647i;
    return _wgslsmith_add_vec4_i32(abs(-vec4<i32>(arg_0.a.x, 2147483647i, arg_3, -2147483647i)) | vec4<i32>(abs(~arg_3), var_2, countOneBits(0i), arg_3), vec4<i32>(-2147483647i, -arg_0.a.x, -2147483647i << (arg_0.e % 32u), var_2));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: vec2<f32>) -> vec4<i32> {
    let var_0 = arg_2;
    global2 = array<u32, 30>();
    let var_1 = -830f;
    var var_2 = arg_0.x;
    let var_3 = var_0.e;
    return max(vec4<i32>(1i, ~(~0i), -u_input.c.x, ~0i), func_3(var_0, ~(~(~u_input.e)), var_0.c.x, ~(~23356i)));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: vec2<f32>) -> Struct_5 {
    let var_0 = Struct_5(Struct_3(~(~1i), -_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, arg_1.x), vec2<i32>(2147483647i, arg_2.a.x)), -594i), Struct_1(max(arg_1.wyz, vec3<i32>(arg_1.x, arg_1.x, -2147483647i) | vec3<i32>(-2147483647i, -1i, -68525i)), ~(~4294967295u), arg_3, select(global2[_wgslsmith_index_u32(arg_2.b, 30u)], ~arg_2.d, true), _wgslsmith_mult_u32(1u, 1u) | _wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 30u)], u_input.e, 1u), vec3<u32>(1u, 1u, 54550u))), arg_2), min(abs(vec3<u32>(global2[_wgslsmith_index_u32(countOneBits(global2[_wgslsmith_index_u32(5998u, 30u)]), 30u)], 32115u, ~5880u)), countOneBits(vec3<u32>(u_input.e, arg_2.d, ~u_input.e))), ~firstTrailingBit(22796i), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, _wgslsmith_f_op_f32(arg_2.c.x + 982f), _wgslsmith_f_op_f32(max(arg_2.c.x, arg_2.c.x)), -142f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(arg_3.x, arg_2.c.x, -2131f, arg_3.x), vec4<f32>(arg_2.c.x, 389f, arg_2.c.x, 800f)))), vec4<f32>(arg_2.c.x, _wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(max(arg_3.x, arg_2.c.x)), _wgslsmith_f_op_f32(1354f + arg_3.x)), any(select(arg_0.zy, vec2<bool>(arg_0.x, arg_0.x), true)))), !vec4<bool>(!arg_0.x, arg_0.x & false, any(vec3<bool>(false, arg_0.x, true)), u_input.d != -1i))));
    global0 = array<Struct_2, 14>();
    let var_1 = global2[_wgslsmith_index_u32(0u, 30u)] >> (((_wgslsmith_div_u32(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(64642u, 30u)], 30u)], arg_2.d), 30u)], firstTrailingBit(1u)) << (firstLeadingBit(~1u) % 32u)) ^ firstTrailingBit(~(global2[_wgslsmith_index_u32(arg_2.d, 30u)] | arg_2.b))) % 32u);
    let var_2 = ~(~(~(-u_input.b)));
    let var_3 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_0.d, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1385f, arg_3.x, arg_2.c.x, arg_2.c.x)))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(-198f, arg_2.c.x, arg_3.x, 1420f), var_0.d)))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(var_0.d)), vec4<f32>(arg_3.x, 2951f, _wgslsmith_f_op_f32(f32(-1f) * -163f), 182f)))), var_0.d));
    return var_0;
}

fn func_1(arg_0: i32, arg_1: u32) -> i32 {
    global1 = array<Struct_1, 30>();
    global0 = array<Struct_2, 14>();
    var var_0 = func_4(vec3<bool>(arg_0 >= arg_0, true, true | select(false, all(vec4<bool>(false, true, true, true)), any(vec4<bool>(false, false, false, true)))), select(vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.c.yx >> (vec2<u32>(1u, global2[_wgslsmith_index_u32(19636u, 30u)]) % vec2<u32>(32u)), vec2<i32>(-2147483647i, u_input.d)), 2147483647i, u_input.c.x, _wgslsmith_add_i32(min(u_input.d, -1i), -arg_0)), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0, i32(-1i) * -2147483647i, ~28399i, countOneBits(1i)), ~_wgslsmith_mod_vec4_i32(vec4<i32>(1i, 0i, u_input.d, -38267i), vec4<i32>(-1i, u_input.c.x, 27331i, arg_0)), func_2(reverseBits(vec3<u32>(global2[_wgslsmith_index_u32(arg_1, 30u)], u_input.e, 19850u)), vec3<f32>(-1000f, 196f, -772f), Struct_1(u_input.c, 4294967295u, vec2<f32>(-759f, 270f), 1u, u_input.e), vec2<f32>(-1100f, 1193f))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, any(vec2<bool>(true, true))), vec4<bool>(select(true, false, true), true, any(vec3<bool>(false, false, false)), true))), global1[_wgslsmith_index_u32(min(firstTrailingBit(u_input.e), reverseBits(45665u)), 30u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1380f, 385f)))))));
    global0 = array<Struct_2, 14>();
    global1 = array<Struct_1, 30>();
    return 2600i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = i32(-1i) * -2147483647i;
    global1 = array<Struct_1, 30>();
    global1 = array<Struct_1, 30>();
    let var_1 = u_input.b.zz;
    var_0 = _wgslsmith_clamp_i32(~(-1i), _wgslsmith_sub_i32(-16629i, func_1(10364i, 97986u)), -u_input.a);
    var var_2 = -((select(-vec3<i32>(var_1.x, u_input.c.x, 15630i), -vec3<i32>(var_1.x, var_1.x, var_1.x), true) << (abs(~vec3<u32>(45564u, global2[_wgslsmith_index_u32(47440u, 30u)], global2[_wgslsmith_index_u32(58283u, 30u)])) % vec3<u32>(32u))) >> (abs(vec3<u32>(max(u_input.e, 4294967295u), ~u_input.e, _wgslsmith_div_u32(global2[_wgslsmith_index_u32(4294967295u, 30u)], global2[_wgslsmith_index_u32(24473u, 30u)]))) % vec3<u32>(32u)));
    var var_3 = global0[_wgslsmith_index_u32(u_input.e, 14u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x);
}

