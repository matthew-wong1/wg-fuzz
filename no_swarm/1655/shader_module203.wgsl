struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec3<f32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_2,
    c: vec4<f32>,
    d: vec3<bool>,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, false, false);

var<private> global1: array<bool, 11>;

var<private> global2: array<vec4<f32>, 26>;

var<private> global3: Struct_1;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> i32 {
    global0 = vec4<bool>(false, !(!all(global0.yw)), !select(all(!vec3<bool>(global1[_wgslsmith_index_u32(31046u, 11u)], false, false)), all(global0.xz), global1[_wgslsmith_index_u32(~1u, 11u)]), all(global0.zyx));
    let var_0 = Struct_2(Struct_1(_wgslsmith_div_u32(1u, ~firstLeadingBit(72773u)), reverseBits(-global3.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.c.x, global3.c.x, global3.c.x) - global3.c)), global3.b.x), select(min(~u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global3.a, 33588u, 83435u), vec4<u32>(62456u, global3.a, global3.a, global3.a))) | 1u, u_input.a.x, select(!global0.x, !global0.x, any(vec2<bool>(true, global0.x))) && true), -((global3.b << (u_input.a.zy % vec2<u32>(32u))) | -global3.b) ^ abs(~_wgslsmith_mult_vec2_i32(global3.b, vec2<i32>(global3.d, 0i))));
    let var_1 = _wgslsmith_sub_vec4_i32(reverseBits(-vec4<i32>(10477i, 1i, u_input.b, var_0.a.d)) ^ (countOneBits(vec4<i32>(u_input.b, global3.b.x, var_0.c.x, -2147483647i)) & min(vec4<i32>(-7654i, global3.d, u_input.b, -2147483647i), vec4<i32>(-2147483647i, var_0.c.x, 1i, 0i))), -vec4<i32>(u_input.b, global3.d & 0i, select(-19031i, var_0.c.x, global1[_wgslsmith_index_u32(4294967295u, 11u)]), global3.b.x | -23507i)) | -vec4<i32>(_wgslsmith_mod_i32(-3626i, -37333i), select(i32(-1i) * -20702i, _wgslsmith_div_i32(u_input.b, 0i), global3.c.x < global3.c.x), _wgslsmith_clamp_i32(~(-2147483647i), global3.d ^ 2147483647i, 2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 0i), var_0.c));
    var var_2 = ~20222i;
    var var_3 = global3.c.zy;
    return reverseBits(-(i32(-1i) * -18293i));
}

fn func_2() -> i32 {
    var var_0 = Struct_1(~min(global3.a, 65451u), vec2<i32>(global3.d, _wgslsmith_mult_i32(global3.b.x, func_3()) >> (_wgslsmith_div_u32(88392u, firstTrailingBit(global3.a)) % 32u)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global3.c, global3.c) * global3.c))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(global3.c, global3.c, false)))))), true)), ~(-_wgslsmith_clamp_i32(select(-23799i, u_input.b, true), reverseBits(60043i), u_input.b)));
    let var_1 = var_0.c.x;
    let var_2 = !(!select(vec2<bool>(true, global1[_wgslsmith_index_u32(~64106u, 11u)]), global0.zz, global0.x));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1346f, var_0.c.x, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(307f, var_0.c.x), -1447f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(global3.c, global3.c))));
    global0 = vec4<bool>(all(var_2), (any(vec3<bool>(true, true, true)) == (_wgslsmith_mod_i32(35028i, u_input.b) < -8787i)) || true, countOneBits(0i) <= firstTrailingBit(_wgslsmith_sub_i32(_wgslsmith_add_i32(2147483647i, -2147483647i), u_input.b)), !var_2.x);
    return u_input.b;
}

fn func_1() -> Struct_3 {
    global3 = Struct_1(~4294967295u | ~u_input.a.x, -vec2<i32>(func_2(), -(u_input.b ^ 0i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-384f, -383f, -1116f), global3.c)))) + vec3<f32>(global3.c.x, global3.c.x, -990f)), _wgslsmith_clamp_i32(abs(_wgslsmith_sub_i32(global3.b.x, u_input.b) << (min(25979u, 54557u) % 32u)), -26076i, ~_wgslsmith_sub_i32(_wgslsmith_mod_i32(-13478i, 25493i), ~u_input.b)));
    global2 = array<vec4<f32>, 26>();
    global2 = array<vec4<f32>, 26>();
    var var_0 = global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(7590u, 0u, 2604u, u_input.a.x), abs(vec4<u32>(u_input.a.x, global3.a, u_input.a.x, u_input.a.x))), u_input.a.x, countOneBits(94365u)), ~reverseBits(vec4<u32>(u_input.a.x, 42769u, u_input.a.x, u_input.a.x) | vec4<u32>(u_input.a.x, global3.a, global3.a, 86180u))), 26u)];
    let var_1 = Struct_3(Struct_1(_wgslsmith_dot_vec2_u32(u_input.a.zz ^ vec2<u32>(53859u, 1u), abs(u_input.a.zz)) << (firstLeadingBit(u_input.a.x) % 32u), vec2<i32>(2147483647i << (u_input.a.x % 32u), 43648i & select(0i, global3.d, false)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3.c.x, -1192f, _wgslsmith_f_op_f32(f32(-1f) * -1119f)), _wgslsmith_f_op_vec3_f32(-global3.c), !(!global0.zwz))), -(~2147483647i)));
    return Struct_3(var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_1(u_input.a.x, global3.b, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-954f, global3.c.x, -800f) * global3.c), global3.c)), _wgslsmith_mod_i32(2147483647i, -global3.b.x)));
    var var_1 = Struct_3(var_0.a);
    var_1 = func_1();
    var var_2 = var_0.a;
    global1 = array<bool, 11>();
    var var_3 = global1[_wgslsmith_index_u32(var_1.a.a, 11u)];
    var_0 = Struct_3(var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-1307i, -1i | var_1.a.d), _wgslsmith_f_op_f32(round(var_1.a.c.x)), _wgslsmith_mod_vec3_i32(select(firstLeadingBit(vec3<i32>(-1i, 1i, 64874i)), select(vec3<i32>(var_2.b.x, var_0.a.d, 1i), vec3<i32>(-2147483647i, u_input.b, var_0.a.b.x) | vec3<i32>(1i, var_1.a.b.x, var_2.b.x), !global0.yxz), !vec3<bool>(global0.x, false, false)), vec3<i32>(u_input.b, ~(~2972i), _wgslsmith_sub_i32(abs(var_0.a.d), select(var_0.a.d, -17413i, false)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1135f + 359f) - var_2.c.x), -277f)), -921f)));
}

