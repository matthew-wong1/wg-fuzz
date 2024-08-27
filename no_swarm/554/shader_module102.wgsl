struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: bool,
    e: bool,
}

struct Struct_3 {
    a: i32,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: i32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 25>;

var<private> global1: vec3<i32> = vec3<i32>(24602i, -71559i, 1i);

var<private> global2: array<f32, 32>;

var<private> global3: array<i32, 3> = array<i32, 3>(65232i, 1i, 2147483647i);

var<private> global4: u32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32) -> f32 {
    var var_0 = Struct_4(select(~u_input.a.xz, u_input.a.zy, true), 0i, select(vec4<bool>(true, arg_1.b.x >= _wgslsmith_f_op_f32(-898f * arg_1.b.x), true, arg_1.a), vec4<bool>(true, true, true, true), vec4<bool>(false, any(select(vec4<bool>(false, arg_0.c, arg_0.b, true), vec4<bool>(arg_1.a, false, true, arg_1.c.x), arg_0.d)), false, all(vec3<bool>(true, true, false)) & (arg_2 >= global2[_wgslsmith_index_u32(44595u, 32u)]))));
    global2 = array<f32, 32>();
    let var_1 = _wgslsmith_mod_i32(abs(countOneBits(2147483647i)), ~(i32(-1i) * -10487i));
    let var_2 = Struct_3(global1.x ^ abs(_wgslsmith_dot_vec3_i32(u_input.c, countOneBits(u_input.d.zzy))), arg_1.b.xy, arg_1, arg_1);
    global4 = 0u;
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-902f))))));
}

fn func_2() -> vec3<u32> {
    var var_0 = Struct_2(Struct_1(true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(585f, global2[_wgslsmith_index_u32(u_input.a.x, 32u)], _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(true, vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 32u)], -756f, 591f), vec2<bool>(true, true)), true, false, false, false), Struct_1(true, vec3<f32>(global2[_wgslsmith_index_u32(0u, 32u)], global2[_wgslsmith_index_u32(40000u, 32u)], global2[_wgslsmith_index_u32(14538u, 32u)]), vec2<bool>(true, false)), global2[_wgslsmith_index_u32(0u, 32u)])))), vec2<bool>(true, true)), any(select(select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false), vec3<bool>(false, false, false), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false)), vec3<bool>(true, true, any(vec2<bool>(true, false))), true)), !select(any(vec3<bool>(true, false, false)), false, all(vec3<bool>(true, false, false))), abs(15097i) != reverseBits(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, u_input.a.x, u_input.b.x), _wgslsmith_sub_vec3_u32(u_input.e, u_input.e)), 3u)]), false);
    global4 = u_input.a.x;
    global1 = u_input.d.zzz;
    return vec3<u32>(u_input.e.x, u_input.e.x, u_input.e.x);
}

fn func_4(arg_0: vec3<u32>, arg_1: bool) -> Struct_4 {
    global1 = countOneBits(vec3<i32>(-2147483647i, -1i, global3[_wgslsmith_index_u32(select(~1u, firstTrailingBit(countOneBits(arg_0.x)), false), 3u)]));
    global1 = select(vec3<i32>(max(-1i, 0i), u_input.c.x, abs(-2147483647i)), abs(vec3<i32>(-(~u_input.c.x), -global1.x, _wgslsmith_div_i32(global3[_wgslsmith_index_u32(arg_0.x, 3u)], -global3[_wgslsmith_index_u32(52238u, 3u)]))), !arg_1);
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1059f)));
    global2 = array<f32, 32>();
    let var_1 = !select(select(select(select(vec2<bool>(true, true), vec2<bool>(arg_1, true), vec2<bool>(false, true)), select(vec2<bool>(false, arg_1), vec2<bool>(arg_1, arg_1), arg_1), vec2<bool>(true, arg_1)), select(vec2<bool>(false, false), !vec2<bool>(arg_1, false), vec2<bool>(true, true)), !vec2<bool>(false, arg_1)), vec2<bool>(any(vec3<bool>(true, true, true)), arg_1), select(firstTrailingBit(1239u) > _wgslsmith_clamp_u32(u_input.a.x, 1u, 23956u), arg_1, arg_1));
    return Struct_4(u_input.b, global1.x, vec4<bool>(false, arg_1, arg_1, true));
}

fn func_1(arg_0: f32) -> Struct_4 {
    return func_4(func_2(), !all(vec3<bool>(true, true, true)));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_1) -> vec3<u32> {
    var var_0 = ~vec3<u32>(func_2().x, _wgslsmith_sub_u32(func_1(945f).a.x ^ func_2().x, u_input.e.x), 25835u);
    global0 = array<vec2<f32>, 25>();
    var var_1 = _wgslsmith_dot_vec2_u32(u_input.a.xy, ~(~vec2<u32>(u_input.a.x, 57811u)) | (~var_0.yy & ~arg_0.a));
    var_1 = arg_0.a.x;
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -2204f);
    return vec3<u32>(_wgslsmith_mult_u32(u_input.a.x, arg_0.a.x), firstLeadingBit(u_input.b.x), ~select(~u_input.e.x, arg_0.a.x ^ 4294967295u, all(vec2<bool>(arg_2.e, false)))) << (_wgslsmith_mult_vec3_u32(select(~vec3<u32>(var_0.x, arg_0.a.x, 4294967295u), u_input.a, arg_3.a), vec3<u32>(~u_input.a.x << (u_input.e.x % 32u), (arg_0.a.x >> (var_0.x % 32u)) << (~u_input.a.x % 32u), 4294967295u)) % vec3<u32>(32u));
}

fn func_6(arg_0: vec3<u32>) -> StorageBuffer {
    let var_0 = vec2<i32>(reverseBits(abs(global3[_wgslsmith_index_u32(46824u | u_input.a.x, 3u)] >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, u_input.a.x, 15520u), vec4<u32>(u_input.b.x, u_input.e.x, u_input.e.x, u_input.a.x)) % 32u))), 37569i & global3[_wgslsmith_index_u32(max(_wgslsmith_mult_u32(20905u, ~arg_0.x), func_2().x), 3u)]);
    global1 = ~max(~(-_wgslsmith_div_vec3_i32(u_input.c, u_input.c)), _wgslsmith_div_vec3_i32(vec3<i32>(27319i, u_input.d.x, 1238i), vec3<i32>(-4446i, -12694i ^ var_0.x, -var_0.x)));
    var var_1 = true;
    let var_2 = ~0i;
    var var_3 = var_2;
    return StorageBuffer(global3[_wgslsmith_index_u32(max(func_5(Struct_4(arg_0.zx, 4890i, vec4<bool>(false, true, false, true)), Struct_1(false, vec3<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 32u)], -1000f, global2[_wgslsmith_index_u32(arg_0.x, 32u)]), vec2<bool>(true, false)), Struct_2(Struct_1(true, vec3<f32>(595f, 2022f, global2[_wgslsmith_index_u32(4294967295u, 32u)]), vec2<bool>(false, false)), true, true, false, true), Struct_1(false, vec3<f32>(global2[_wgslsmith_index_u32(39170u, 32u)], global2[_wgslsmith_index_u32(arg_0.x, 32u)], global2[_wgslsmith_index_u32(u_input.a.x, 32u)]), vec2<bool>(false, true))).x & arg_0.x, _wgslsmith_add_u32(~8426u, ~arg_0.x)) ^ u_input.e.x, 3u)], _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(12100u, 32u)] + 1000f) * _wgslsmith_f_op_f32(f32(-1f) * -1103f))), global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(arg_0, vec3<u32>(u_input.e.x, 25610u, u_input.b.x)), 32u)])));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = Struct_1(true, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 32u)], global2[_wgslsmith_index_u32(u_input.e.x, 32u)], global2[_wgslsmith_index_u32(27735u, 32u)]) + vec3<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 32u)], -148f, global2[_wgslsmith_index_u32(u_input.b.x, 32u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(303f, 933f, 2036f))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-133f, -1000f, -1512f)))))))), vec2<bool>(true, true));
    let x = u_input.a;
    s_output = func_6(func_5(func_1(1404f), Struct_1(false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_1.b, var_1.b)), !var_1.c), Struct_2(var_1, any(!var_1.c), var_1.a, var_1.a, true), Struct_1(true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(var_1.b, vec3<f32>(-1830f, -236f, var_1.b.x))) - vec3<f32>(var_1.b.x, 1000f, var_1.b.x)), var_1.c)));
}

