struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec2<i32>, 8> = array<vec2<i32>, 8>(vec2<i32>(3618i, -2554i), vec2<i32>(-40233i, -26264i), vec2<i32>(1i, 10359i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(2147483647i, -14831i), vec2<i32>(-1i, -1i), vec2<i32>(31677i, -11858i), vec2<i32>(-1i, 1i));

var<private> global2: array<i32, 23> = array<i32, 23>(7116i, -9024i, 0i, 7632i, -1i, 1i, 43266i, 0i, 0i, -9402i, 33272i, -29043i, -41564i, 3576i, -2571i, 2147483647i, 15704i, 1i, -21707i, i32(-2147483648), 22944i, -31501i, 11147i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: i32) -> vec3<bool> {
    return vec3<bool>(!global0.a.b.x, global0.a.b.x, global0.a.b.x);
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec3<u32>) -> vec4<bool> {
    let var_0 = true;
    let var_1 = true;
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.a.a.x * arg_2.x))), arg_2.x))), global0.a.b, _wgslsmith_mult_u32(countOneBits(1u), _wgslsmith_div_u32(73213u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_1.c, arg_3.x, 0u), vec4<u32>(37842u, arg_0, arg_3.x, arg_1.c)), arg_0, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_3.x, arg_1.c), arg_3.yx)))), global0.a.d);
    var var_3 = _wgslsmith_f_op_f32(arg_1.d + var_2.a.x);
    var var_4 = firstLeadingBit(_wgslsmith_add_u32(~_wgslsmith_add_u32(~arg_0, global0.a.c), ~arg_0));
    return vec4<bool>(select(!(global0.a.b.x & !var_1), arg_1.a.x > _wgslsmith_f_op_f32(-1379f * _wgslsmith_f_op_f32(f32(-1f) * -1188f)), any(func_3(~u_input.b))), !all(select(!arg_1.b.xzw, vec3<bool>(var_2.b.x, var_2.b.x, false), false)), false, any(!vec2<bool>(false, select(var_1, true, var_0))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec4<f32>) -> vec3<u32> {
    let var_0 = vec3<bool>(global0.a.b.x, !arg_1.a.b.x, false);
    var var_1 = _wgslsmith_f_op_f32(-arg_2.x);
    let var_2 = true;
    var var_3 = firstTrailingBit(_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(min(vec2<i32>(global2[_wgslsmith_index_u32(global0.a.c, 23u)], -10795i), vec2<i32>(1i, global2[_wgslsmith_index_u32(global0.a.c, 23u)])), global1[_wgslsmith_index_u32(global0.a.c, 8u)]), _wgslsmith_add_vec2_i32(countOneBits(vec2<i32>(u_input.b, 9745i)), min(global1[_wgslsmith_index_u32(global0.a.c, 8u)], vec2<i32>(-1i, 8741i)))) >> ((_wgslsmith_mod_vec2_u32(vec2<u32>(global0.a.c, global0.a.c), select(vec2<u32>(global0.a.c, arg_1.a.c), vec2<u32>(arg_1.a.c, 6281u), vec2<bool>(false, var_0.x))) & ~_wgslsmith_add_vec2_u32(vec2<u32>(arg_1.a.c, arg_1.a.c), vec2<u32>(global0.a.c, 1u))) % vec2<u32>(32u)));
    var var_4 = vec2<u32>(_wgslsmith_div_u32(reverseBits(~arg_1.a.c), firstLeadingBit(0u) | global0.a.c) ^ global0.a.c, 1u);
    return vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_div_u32(4294967295u, arg_1.a.c), reverseBits(~arg_1.a.c), 0u), select(abs(vec3<u32>(0u, 4294967295u, global0.a.c)), ~min(vec3<u32>(0u, 47528u, global0.a.c), vec3<u32>(1u, arg_1.a.c, 4294967295u)), var_2)), ((82452u >> (1u % 32u)) ^ var_4.x) | 22382u, 1u);
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_div_vec3_u32(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(678f, -494f, 145f) * vec3<f32>(-336f, global0.a.a.x, -189f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.d, global0.a.a.x, global0.a.d))))), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.d, -644f) + vec2<f32>(global0.a.d, 216f)), func_2(23889u, Struct_1(global0.a.a, global0.a.b, global0.a.c, global0.a.d), vec3<f32>(global0.a.a.x, global0.a.a.x, 1422f), vec3<u32>(global0.a.c, 11513u, 4294967295u)), _wgslsmith_dot_vec3_u32(vec3<u32>(global0.a.c, 90455u, global0.a.c), vec3<u32>(global0.a.c, 34440u, 1u)), _wgslsmith_f_op_f32(f32(-1f) * -584f))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(800f, 519f, global0.a.a.x, global0.a.a.x)))), vec3<u32>(0u, 6032u, select(20690u, global0.a.c, !global0.a.b.x)) | (~vec3<u32>(global0.a.c, global0.a.c, global0.a.c) | _wgslsmith_clamp_vec3_u32(~vec3<u32>(24551u, global0.a.c, 25526u), vec3<u32>(0u, global0.a.c, 29030u), vec3<u32>(global0.a.c, global0.a.c, 34308u))));
    var var_1 = !global0.a.b;
    let var_2 = 572f;
    var var_3 = global0.a;
    let var_4 = Struct_2(global0.a);
    return Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(exp2(global0.a.a)), vec4<bool>(func_2(_wgslsmith_mult_u32(var_0.x, 14672u), Struct_1(vec2<f32>(-191f, global0.a.a.x), var_3.b, 1u, var_2), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, -774f, 471f)), _wgslsmith_clamp_vec3_u32(var_0, vec3<u32>(var_3.c, var_0.x, 4294967295u), vec3<u32>(1u, var_3.c, 16237u))).x, !all(var_3.b), var_3.b.x, select(false, select(global0.a.b.x, true, var_3.b.x), func_2(global0.a.c, Struct_1(vec2<f32>(172f, var_3.a.x), global0.a.b, 0u, var_3.a.x), vec3<f32>(global0.a.a.x, global0.a.a.x, -1380f), vec3<u32>(64676u, 58963u, global0.a.c)).x)), _wgslsmith_sub_u32(4294967295u, ~var_0.x), global0.a.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = ~firstLeadingBit(~(~(~vec3<u32>(112007u, global0.a.c, 18316u))));
    global1 = array<vec2<i32>, 8>();
    var_1 = vec3<u32>(firstTrailingBit(53991u), 12044u & ~var_1.x, min(var_0.a.c, ~1u)) | vec3<u32>(~(~(105597u >> (var_1.x % 32u))), _wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(var_0.a.c, 4294967295u), _wgslsmith_add_u32(var_0.a.c, 7909u)), _wgslsmith_mult_u32(_wgslsmith_mod_u32(3572u, var_0.a.c), 1u)), _wgslsmith_mult_u32(global0.a.c, _wgslsmith_add_u32(func_1().a.c, 1u)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.a.d, 2104f, _wgslsmith_f_op_f32(var_0.a.a.x * _wgslsmith_div_f32(824f, var_0.a.d))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(199f, -1583f, 661f)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~countOneBits(reverseBits(vec4<u32>(14842u, 18462u, var_0.a.c, var_1.x)))), _wgslsmith_f_op_f32(global0.a.d + var_2.x), _wgslsmith_div_vec3_u32(max(firstLeadingBit(vec3<u32>(var_0.a.c, var_1.x, 32616u)) & vec3<u32>(4294967295u, 0u, 0u), max(~vec3<u32>(18269u, 1u, global0.a.c), countOneBits(vec3<u32>(4701u, var_0.a.c, var_1.x)))), vec3<u32>(var_1.x, global0.a.c, abs(global0.a.c))));
}

