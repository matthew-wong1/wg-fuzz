struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec2<bool>,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_2;

var<private> global2: array<vec4<bool>, 13>;

var<private> global3: vec2<u32> = vec2<u32>(32596u, 24455u);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool) -> vec3<f32> {
    global1 = Struct_2(abs(u_input.e), vec3<i32>(-reverseBits(-1i), _wgslsmith_sub_i32(0i, ~17315i), _wgslsmith_clamp_i32(u_input.c, -60372i & u_input.d.x, 4828i)) | -vec3<i32>(5216i, u_input.b.x, -1i), select(!select(vec2<bool>(arg_0, true), select(vec2<bool>(arg_0, true), vec2<bool>(arg_0, false), global1.e.b.wx), select(global1.c, global1.c, global1.c)), global1.c, select(global1.e.a, !(!global1.e.a), true)), _wgslsmith_add_vec4_u32(~(~select(vec4<u32>(global3.x, u_input.a, 0u, 0u), vec4<u32>(102282u, u_input.a, 100264u, u_input.e.x), vec4<bool>(true, arg_0, arg_0, true))), global1.d), global1.e);
    global3 = vec2<u32>(0u, abs(0u));
    global2 = array<vec4<bool>, 13>();
    return vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -597f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1336f + _wgslsmith_f_op_f32(floor(-457f)))), _wgslsmith_f_op_f32(1113f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1663f - 326f)))));
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: f32, arg_3: u32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_3(abs(-1i) == -_wgslsmith_dot_vec3_i32(vec3<i32>(29721i, -24478i, 32009i) >> (vec3<u32>(global1.a.x, global3.x, arg_0) % vec3<u32>(32u)), vec3<i32>(global1.b.x, u_input.d.x, arg_1.b.x))));
    var var_1 = Struct_5(all(arg_1.e.b.zww));
    var var_2 = Struct_5(false);
    var_1 = Struct_5(any(select(arg_1.c, !select(arg_1.c, vec2<bool>(false, false), true), true)));
    let var_3 = arg_1.e.b;
    return _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(6990u, arg_1.d.x & 0u), u_input.e.xy), _wgslsmith_clamp_vec2_u32(countOneBits(vec2<u32>(arg_0, 1u)), _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, global3.x), global1.d.yy), _wgslsmith_mod_vec2_u32(vec2<u32>(35007u, arg_1.d.x), vec2<u32>(4294967295u, 33539u))), max(abs(u_input.e.zx), vec2<u32>(4294967295u, arg_3) << (vec2<u32>(arg_0, 0u) % vec2<u32>(32u))))), arg_1.d.yz | _wgslsmith_add_vec2_u32(max(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_1.d.x, 16391u), arg_1.a.zy), vec2<u32>(arg_3, arg_1.d.x)), ~(~arg_1.a.xz)));
}

fn func_1(arg_0: f32, arg_1: vec2<f32>, arg_2: vec3<bool>) -> Struct_3 {
    global2 = array<vec4<bool>, 13>();
    let var_0 = global1.e;
    global2 = array<vec4<bool>, 13>();
    var var_1 = -1033f;
    global1 = Struct_2(~_wgslsmith_clamp_vec3_u32(vec3<u32>(func_2(73281u, Struct_2(vec3<u32>(u_input.e.x, global3.x, 1u), u_input.d, arg_2.yy, global1.d, global1.e), -156f, global1.d.x), ~10759u, ~41307u), u_input.e, vec3<u32>(~global3.x, 1u, 0u)), ~global1.b, arg_2.yy, ~_wgslsmith_clamp_vec4_u32(global1.d << (abs(vec4<u32>(global3.x, 4294967295u, global3.x, 21735u)) % vec4<u32>(32u)), global1.d << (_wgslsmith_mult_vec4_u32(vec4<u32>(global3.x, 4294967295u, u_input.e.x, u_input.a), global1.d) % vec4<u32>(32u)), ~global1.d & (global1.d | vec4<u32>(u_input.a, 46855u, 6395u, 17648u))), Struct_1(arg_2.zy, select(!(!vec4<bool>(true, false, global1.e.c, true)), select(vec4<bool>(true, false, false, global1.c.x), !var_0.b, -1i == global1.b.x), any(!vec3<bool>(false, arg_2.x, global1.e.b.x))), arg_2.x | !(global1.b.x != -36104i)));
    return Struct_3(abs(-vec4<i32>(-2147483647i, 0i, 27088i, global1.b.x) & vec4<i32>(-19823i, -13128i, -1i, u_input.c)) & -(~(-vec4<i32>(-31733i, global1.b.x, u_input.b.x, 2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(240f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1f, 1f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(964f, -2585f)))), select(!(!select(global1.e.b.yyw, global1.e.b.yxx, vec3<bool>(global1.e.b.x, true, true))), vec3<bool>(all(select(global1.e.b, global1.e.b, global1.e.b)), true, global1.e.a.x), vec3<bool>(false, false, any(vec2<bool>(global1.e.c, false)))));
    global1 = Struct_2(abs(vec3<u32>(1u, _wgslsmith_mult_u32(0u, global3.x) | select(global1.a.x, 59585u, true), firstLeadingBit(1u))), u_input.b, !global1.c, countOneBits(_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(global1.d | vec4<u32>(global1.a.x, u_input.a, 24035u, global1.d.x), ~global1.d, vec4<u32>(77669u, u_input.e.x, global1.a.x, 5615u)), vec4<u32>(1u, ~global1.a.x, ~global1.a.x, ~1u))), global1.e);
    global1 = Struct_2(vec3<u32>(_wgslsmith_dot_vec4_u32(global1.d, vec4<u32>(global1.a.x, u_input.a, _wgslsmith_add_u32(0u, 63477u), func_2(global1.d.x, Struct_2(vec3<u32>(4294967295u, global1.a.x, u_input.e.x), vec3<i32>(2147483647i, u_input.b.x, 16794i), global1.e.a, global1.d, Struct_1(vec2<bool>(global1.e.b.x, true), global2[_wgslsmith_index_u32(global1.d.x, 13u)], false)), 394f, 0u))), _wgslsmith_add_u32(0u, 47621u), ~global1.d.x | firstLeadingBit(0u)), -(reverseBits(~vec3<i32>(0i, u_input.d.x, 2147483647i)) ^ vec3<i32>(-2147483647i, global1.b.x, reverseBits(u_input.c))), vec2<bool>(true, global1.e.c | (all(vec4<bool>(global1.c.x, true, true, false)) | global1.c.x)), _wgslsmith_div_vec4_u32(global1.d, ~vec4<u32>(4294967295u, 1u, ~4294967295u, 60297u)), global1.e);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.zyx, ~(~u_input.e.x >> (1u % 32u)), var_0.a.yx, vec4<i32>(~(-(~u_input.b.x)), -(~(~25970i)), _wgslsmith_dot_vec2_i32(global1.b.yz, countOneBits(var_0.a.xx) << ((u_input.e.zz << (global1.a.yy % vec2<u32>(32u))) % vec2<u32>(32u))), u_input.b.x), ~(~global1.a.zz));
}

