struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<bool>,
    d: vec4<i32>,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: vec3<f32>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<u32>,
    c: vec3<bool>,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 30>;

var<private> global1: vec2<u32> = vec2<u32>(1u, 65321u);

var<private> global2: vec4<bool> = vec4<bool>(true, true, false, false);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec3<u32>) -> i32 {
    global1 = min(reverseBits(min(arg_0.xy, (vec2<u32>(25067u, u_input.a.x) | vec2<u32>(arg_0.x, 55774u)) | (vec2<u32>(global1.x, 65141u) << (u_input.a.yy % vec2<u32>(32u))))), _wgslsmith_div_vec2_u32(arg_0.yy, ~u_input.a.yz));
    global0 = array<bool, 30>();
    global2 = vec4<bool>(~4294967295u >= _wgslsmith_dot_vec2_u32(min(arg_0.zz >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)), ~arg_0.zz), ~vec2<u32>(u_input.a.x, 30137u)), all(vec3<bool>(true, global2.x, global2.x & true)), ~3136u == global1.x, any(!(!global2.zzw)) & select(!(global0[_wgslsmith_index_u32(4294967295u, 30u)] || global0[_wgslsmith_index_u32(1u, 30u)]), false, global2.x));
    var var_0 = Struct_4(Struct_3(Struct_1(vec4<u32>(38167u, 51856u, u_input.a.x, 4294967295u) & _wgslsmith_mod_vec4_u32(vec4<u32>(global1.x, 12366u, 45360u, 4294967295u), vec4<u32>(18260u, 1u, 0u, 1u)), ~(~arg_0.x), min(vec3<u32>(arg_0.x, global1.x, arg_0.x), vec3<u32>(arg_0.x, 1u, 2640u)), arg_0.xx, _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.x, 1u, 4294967295u, u_input.a.x), vec4<u32>(1u, u_input.a.x, arg_0.x, arg_0.x)), ~vec4<u32>(global1.x, 44643u, global1.x, global1.x))), global2.x, Struct_1(vec4<u32>(~u_input.a.x, ~u_input.a.x, 4294967295u, global1.x), ~3010u, ~(vec3<u32>(u_input.a.x, 13962u, global1.x) | u_input.a), ~min(arg_0.yx, vec2<u32>(arg_0.x, global1.x)), ~vec4<u32>(u_input.a.x, arg_0.x, 1u, 36987u)), ~vec2<i32>(1i, 1i)), _wgslsmith_mult_u32(abs(~_wgslsmith_sub_u32(arg_0.x, 8337u)), (_wgslsmith_dot_vec2_u32(arg_0.yx, u_input.a.yy) ^ arg_0.x) | ~(~80059u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1286f, -1282f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-973f))), _wgslsmith_f_op_f32(-1109f * _wgslsmith_f_op_f32(max(321f, 1364f))))));
    let var_1 = Struct_2(u_input.a.x, var_0.a.a, !global2.zy, ~(-(vec4<i32>(var_0.a.d.x, 1i, -28347i, 0i) | -vec4<i32>(-68477i, var_0.a.d.x, var_0.a.d.x, 49690i))), _wgslsmith_mod_u32(arg_0.x, _wgslsmith_dot_vec2_u32(~arg_0.xz, ~vec2<u32>(4294967295u, u_input.a.x))));
    return _wgslsmith_sub_i32(~(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, -24973i, var_1.d.x, var_1.d.x), vec4<i32>(17179i, var_0.a.d.x, -30799i, var_0.a.d.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, var_0.a.d.x, var_0.a.d.x, 1i), var_1.d)) ^ select(var_0.a.d.x, min(var_0.a.d.x, 2147483647i), true)), _wgslsmith_dot_vec4_i32(var_1.d, var_1.d));
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: u32) -> f32 {
    global2 = !(!vec4<bool>(false, global0[_wgslsmith_index_u32(~52862u, 30u)], false && select(false, global0[_wgslsmith_index_u32(4294967295u, 30u)], false), _wgslsmith_sub_i32(-1i, arg_0) < arg_0));
    var var_0 = Struct_2(~71168u, Struct_1(abs(_wgslsmith_mult_vec4_u32(~vec4<u32>(9130u, u_input.a.x, 73356u, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(68097u, 55194u, 24970u, u_input.a.x), vec4<u32>(arg_1, arg_1, arg_1, arg_2)))), 1u, u_input.a, vec2<u32>(u_input.a.x, ~6407u), _wgslsmith_add_vec4_u32(vec4<u32>(global1.x, 4294967295u, arg_1, arg_2) >> (vec4<u32>(u_input.a.x, arg_1, arg_2, 13041u) % vec4<u32>(32u)), vec4<u32>(global1.x, arg_1, u_input.a.x, arg_2) | vec4<u32>(1u, 26921u, 256u, 9036u)) & firstTrailingBit(~vec4<u32>(0u, global1.x, arg_2, arg_2))), global2.zw, countOneBits(vec4<i32>(func_3(vec3<u32>(45309u, arg_2, arg_1)), arg_0 ^ _wgslsmith_add_i32(22985i, arg_0), -51564i ^ select(-3065i, -2147483647i, global2.x), 14689i)), _wgslsmith_div_u32(_wgslsmith_sub_u32(~22981u, _wgslsmith_mult_u32(~23961u, global1.x)), 4294967295u));
    let var_1 = var_0.b.e.x;
    let var_2 = Struct_3(var_0.b, true, var_0.b, ~(~(-countOneBits(var_0.d.zx))));
    global0 = array<bool, 30>();
    return 1f;
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_div_f32(-743f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(624f * -1140f) - _wgslsmith_div_f32(363f, 441f)), _wgslsmith_f_op_f32(func_2(0i >> (global1.x % 32u), 42327u, 1u)))) - _wgslsmith_f_op_f32(f32(-1f) * -331f)));
    global0 = array<bool, 30>();
    let var_1 = Struct_3(Struct_1(~_wgslsmith_clamp_vec4_u32(vec4<u32>(11723u, u_input.a.x, 5667u, 1u), vec4<u32>(u_input.a.x, 4294967295u, global1.x, 0u), vec4<u32>(12800u, u_input.a.x, 1u, global1.x)) ^ ~vec4<u32>(4294967295u, 0u, 63738u, 1u), _wgslsmith_div_u32(9269u, 4294967295u), _wgslsmith_mult_vec3_u32(vec3<u32>(34539u, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x), 0u & u_input.a.x), abs(~vec3<u32>(1u, global1.x, 1u))), _wgslsmith_sub_vec2_u32(reverseBits(select(vec2<u32>(global1.x, u_input.a.x), u_input.a.zy, vec2<bool>(true, global0[_wgslsmith_index_u32(global1.x, 30u)]))), u_input.a.zx), _wgslsmith_mod_vec4_u32(max(vec4<u32>(u_input.a.x, global1.x, 24354u, 8833u), vec4<u32>(global1.x, 69449u, 52768u, 4294967295u) << (vec4<u32>(u_input.a.x, 3621u, 4616u, 0u) % vec4<u32>(32u))), vec4<u32>(u_input.a.x & u_input.a.x, 0u, 0u, _wgslsmith_mod_u32(global1.x, u_input.a.x)))), global2.x, Struct_1(_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x) << (vec4<u32>(0u, u_input.a.x, global1.x, u_input.a.x) % vec4<u32>(32u)), ~vec4<u32>(u_input.a.x, 1u, global1.x, u_input.a.x), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 72570u, global1.x, u_input.a.x), vec4<u32>(4294967295u, 0u, 22291u, 1u))), ~vec4<u32>(34982u, 49130u, global1.x, 1u) | ~vec4<u32>(14829u, u_input.a.x, u_input.a.x, 0u)), 12375u, abs(u_input.a) ^ u_input.a, _wgslsmith_clamp_vec2_u32(u_input.a.xz ^ vec2<u32>(1u, global1.x), ~_wgslsmith_mult_vec2_u32(u_input.a.xz, u_input.a.yx), _wgslsmith_add_vec2_u32(max(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(u_input.a.x, 1u)), select(u_input.a.zy, u_input.a.xy, global0[_wgslsmith_index_u32(u_input.a.x, 30u)]))), select(vec4<u32>(~u_input.a.x, global1.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 6970u, 4294967295u) & vec4<u32>(u_input.a.x, u_input.a.x, 50626u, global1.x), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, 4294967295u), 30u)])), firstTrailingBit(select(vec2<i32>(-417i, -3042i) >> (u_input.a.yx % vec2<u32>(32u)), -vec2<i32>(-47094i, 6997i), vec2<bool>(true, true))) >> ((vec2<u32>(select(u_input.a.x, u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 30u)]), ~global1.x) >> (vec2<u32>(global1.x, 84473u ^ u_input.a.x) % vec2<u32>(32u))) % vec2<u32>(32u)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-1542f, 1000f)), 1000f))), _wgslsmith_f_op_f32(f32(-1f) * -739f))));
    var var_3 = Struct_2(17595u, var_1.c, select(select(!select(global2.yz, vec2<bool>(var_1.b, true), true), vec2<bool>(var_1.b, true), select(vec2<bool>(global0[_wgslsmith_index_u32(0u, 30u)], global0[_wgslsmith_index_u32(4294967295u, 30u)]), global2.zx, true)), global2.zz, !select(global2.wy, global2.yy, select(vec2<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 30u)]), global2.yz, false))), vec4<i32>(var_1.d.x | (~(-2147483647i) & _wgslsmith_sub_i32(45924i, var_1.d.x)), i32(-1i) * -16284i, ~var_1.d.x, var_1.d.x), _wgslsmith_clamp_u32(u_input.a.x, ~(0u << (u_input.a.x % 32u)) << (_wgslsmith_mult_u32(abs(u_input.a.x), _wgslsmith_sub_u32(global1.x, global1.x)) % 32u), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(~u_input.a.xy, _wgslsmith_sub_vec2_u32(vec2<u32>(global1.x, var_1.c.d.x), u_input.a.xz)), abs(1u), 7209u)));
    return var_3.b;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec3<bool>) -> vec2<f32> {
    var var_0 = ~(arg_1.e | reverseBits(~arg_1.e));
    let var_1 = Struct_2(func_1().a.x, Struct_1(select(~arg_1.e, _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.e.x, global1.x, u_input.a.x, arg_1.e.x), arg_1.e, vec4<u32>(var_0.x, 4294967295u, global1.x, u_input.a.x)), global2.x), 15106u, ~(~vec3<u32>(arg_1.b, global1.x, 4294967295u)), var_0.yy, _wgslsmith_mult_vec4_u32(vec4<u32>(global1.x, var_0.x, ~arg_1.d.x, _wgslsmith_add_u32(arg_1.d.x, arg_1.d.x)), _wgslsmith_add_vec4_u32(arg_1.a, vec4<u32>(arg_1.c.x, 1u, 0u, 36541u) ^ vec4<u32>(0u, arg_1.e.x, 1u, u_input.a.x)))), vec2<bool>(-(~(-1i)) < abs(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -65963i, 21926i), vec3<i32>(2147483647i, 0i, 26491i))), arg_2.x), vec4<i32>(~(-2147483647i), _wgslsmith_add_i32(firstTrailingBit(-1i), 1i), countOneBits(10904i), i32(-1i) * -1i), ~arg_1.d.x >> (arg_1.c.x % 32u));
    global0 = array<bool, 30>();
    global0 = array<bool, 30>();
    let var_2 = _wgslsmith_f_op_vec3_f32(select(arg_0.wxz, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(arg_0.x - arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(-33407i, global1.x, 4294967295u))), 1000f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(arg_0.zzx + arg_0.zwy))))), global0[_wgslsmith_index_u32(4294967295u, 30u)]));
    return arg_0.xz;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 30>();
    var var_0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-205f, 1f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(742f, -2824f, 293f, 1659f)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1358f, 492f, 1215f, -1009f), vec4<f32>(-328f, -1157f, 1990f, 1296f), vec4<bool>(global2.x, false, global0[_wgslsmith_index_u32(global1.x, 30u)], global2.x)))), func_1(), vec3<bool>(global0[_wgslsmith_index_u32(155838u, 30u)], true, any(global2.zz))))), false));
    var var_1 = -1i;
    global1 = u_input.a.xz;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(var_0.x, 631f)), var_0.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(618f * 1785f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1224f * var_0.x) + _wgslsmith_f_op_f32(round(1170f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x) - _wgslsmith_f_op_f32(-1788f + -719f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1782f, 1364f, 244f, -609f))) + vec4<f32>(-767f, 227f, var_0.x, 1091f)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(731f, var_0.x, var_0.x, var_0.x)))), vec4<bool>(all(vec4<bool>(global2.x, false, false, false)), false, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, global1.x << (48765u % 32u)), 30u)], false))));
    let x = u_input.a;
    s_output = StorageBuffer(21785i, _wgslsmith_div_vec3_u32(reverseBits((u_input.a & vec3<u32>(u_input.a.x, global1.x, global1.x)) >> (u_input.a % vec3<u32>(32u))), u_input.a), ~(~((vec4<u32>(global1.x, 23862u, u_input.a.x, 4294967295u) | vec4<u32>(4294967295u, u_input.a.x, global1.x, global1.x)) & select(vec4<u32>(48773u, u_input.a.x, 96551u, 0u), vec4<u32>(global1.x, 0u, u_input.a.x, 0u), vec4<bool>(global2.x, false, global0[_wgslsmith_index_u32(global1.x, 30u)], true)))));
}

