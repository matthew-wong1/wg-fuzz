struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<i32>(-1i, 0i, 0i, 5860i));

var<private> global1: array<Struct_3, 4>;

var<private> global2: Struct_2 = Struct_2(vec4<i32>(-83676i, 13360i, -1i, 2147483647i));

var<private> global3: array<f32, 10>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: bool) -> u32 {
    var var_0 = ~(~0u);
    global2 = Struct_2(select(vec4<i32>(~global2.a.x, _wgslsmith_sub_i32(global2.a.x, ~global0.a.x), 1i, global2.a.x), global2.a, arg_0));
    let var_1 = Struct_1(global0.a, _wgslsmith_dot_vec4_i32(global0.a, vec4<i32>(-global2.a.x, i32(-1i) * -5985i, 1i, global0.a.x)), global2.a, firstTrailingBit(vec2<u32>(0u, 1u)), !(!vec4<bool>(arg_0 || arg_0, true, arg_0, false)));
    let var_2 = Struct_1(vec4<i32>(reverseBits(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(var_1.a.zwy, vec3<i32>(-12124i, 2147483647i, var_1.c.x)), _wgslsmith_div_vec3_i32(vec3<i32>(global2.a.x, -2147483647i, var_1.c.x), vec3<i32>(global0.a.x, global2.a.x, global0.a.x)))), abs(abs(2147483647i)) | ~(~global0.a.x), i32(-1i) * -2147483647i, ~global2.a.x), -9755i, global0.a, countOneBits(var_1.d), !select(!vec4<bool>(var_1.e.x, arg_0, false, var_1.e.x), select(vec4<bool>(var_1.e.x, arg_0, true, var_1.e.x), select(vec4<bool>(arg_0, arg_0, var_1.e.x, false), vec4<bool>(false, arg_0, false, true), var_1.e.x), false), var_1.e));
    global1 = array<Struct_3, 4>();
    return 1u;
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: i32) -> i32 {
    global0 = Struct_2(_wgslsmith_add_vec4_i32(global0.a, vec4<i32>(arg_1.b.c.x, global0.a.x, -_wgslsmith_dot_vec2_i32(global2.a.yz, global2.a.xx), arg_2)));
    return -14705i;
}

fn func_2(arg_0: u32) -> Struct_3 {
    global3 = array<f32, 10>();
    var var_0 = global1[_wgslsmith_index_u32(4294967295u, 4u)];
    let var_1 = Struct_3(~4294967295u, Struct_1(vec4<i32>(func_3(true, global1[_wgslsmith_index_u32(firstLeadingBit(arg_0), 4u)], 3615i), -(var_0.b.c.x ^ var_0.b.c.x), var_0.b.c.x, global2.a.x), i32(-1i) * -(global2.a.x >> (59942u % 32u)), vec4<i32>(-8478i, firstLeadingBit(global2.a.x), ~_wgslsmith_add_i32(global0.a.x, -1i), 5237i), ~(~(~vec2<u32>(1u, 22773u))), var_0.b.e));
    let var_2 = Struct_1((vec4<i32>(firstLeadingBit(-2147483647i), var_0.b.c.x, select(global0.a.x, var_1.b.b, false), 1i) & vec4<i32>(reverseBits(-6295i), global0.a.x, -1i, var_1.b.b)) << (vec4<u32>(4294967295u, ~(~arg_0), ~(arg_0 >> (41049u % 32u)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(19917u, var_0.a, u_input.a, arg_0), vec4<u32>(var_1.b.d.x, var_0.b.d.x, u_input.a, u_input.a))) % vec4<u32>(32u)), -(~(-(-2147483647i << (0u % 32u)))), abs(_wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -var_1.b.c, ~(~vec4<i32>(11107i, 2147483647i, var_1.b.b, var_0.b.c.x)))), vec2<u32>(~func_1(all(vec2<bool>(true, var_1.b.e.x))), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 37710u, 4294967295u), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.a, var_1.b.d.x, 1u), vec3<u32>(arg_0, var_0.b.d.x, arg_0), vec3<u32>(u_input.a, arg_0, 13767u))), var_1.b.d.x)), !(!(!(!vec4<bool>(true, true, var_1.b.e.x, var_0.b.e.x)))));
    var var_3 = vec3<bool>(!var_1.b.e.x, var_0.b.e.x, true);
    return Struct_3(5780u, var_1.b);
}

fn func_4(arg_0: Struct_3, arg_1: f32) -> u32 {
    let var_0 = func_1(any(arg_0.b.e));
    let var_1 = false & arg_0.b.e.x;
    let var_2 = -_wgslsmith_add_vec3_i32(arg_0.b.c.yyy, vec3<i32>(firstTrailingBit(global2.a.x) & global0.a.x, _wgslsmith_sub_i32(select(2147483647i, 35626i, true), 57234i), _wgslsmith_dot_vec3_i32(global2.a.zxx, -global2.a.xzz)));
    let var_3 = arg_0.b.e.xy;
    let var_4 = func_2(var_0).b;
    return ~(~_wgslsmith_mod_u32(var_4.d.x, 4294967295u) ^ ~select(max(u_input.a, u_input.a), var_4.d.x & arg_0.a, true));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_2(vec4<i32>(max(-37632i, _wgslsmith_clamp_i32(1i, global0.a.x, global2.a.x)) ^ reverseBits(_wgslsmith_sub_i32(global2.a.x, -30659i)), _wgslsmith_dot_vec4_i32(vec4<i32>(global2.a.x, global2.a.x, -global0.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(30450i, 15446i, global2.a.x), global0.a.xyy)), global2.a), (_wgslsmith_add_i32(global2.a.x, 2147483647i) >> (abs(99340u) % 32u)) | _wgslsmith_div_i32(global2.a.x, select(21333i, -37699i, false)), _wgslsmith_mod_i32(countOneBits(2147483647i), -(global0.a.x | global2.a.x))));
    var var_0 = abs(vec2<u32>(func_4(func_2(func_1(false)), -1252f), ~1u));
    let var_1 = func_2(u_input.a).b.e.xx;
    var var_2 = Struct_2(vec4<i32>(18040i, -1i, _wgslsmith_div_i32(~_wgslsmith_div_i32(-2147483647i, 34375i), _wgslsmith_mult_i32(0i, _wgslsmith_clamp_i32(2147483647i, 0i, global2.a.x))), ~abs(-global2.a.x)));
    var var_3 = _wgslsmith_dot_vec3_i32(select(-func_2(1u).b.c.ywy, _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, var_2.a.x, -26607i) | vec3<i32>(var_2.a.x, -31866i, 75813i), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, global0.a.x, -2147483647i), global0.a.wxx)), select(!vec3<bool>(var_1.x, var_1.x, false), select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(true, true, var_1.x)), !vec3<bool>(var_1.x, true, true))), var_2.a.zzx) == (0i ^ _wgslsmith_div_i32(~0i, countOneBits(_wgslsmith_sub_i32(global0.a.x, -1i))));
    let var_4 = _wgslsmith_f_op_f32(step(global3[_wgslsmith_index_u32(~(~_wgslsmith_sub_u32(1u, ~u_input.a)), 10u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-828f)))))));
    let var_5 = func_2(var_0.x);
    var var_6 = global1[_wgslsmith_index_u32(~func_4(func_2(u_input.a), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-1000f, 236f, true))))), 4u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-810f, 269f, -2294f, 1610f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(u_input.a, 10u)], global3[_wgslsmith_index_u32(6445u, 10u)], var_4, 1000f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(272f, global3[_wgslsmith_index_u32(0u, 10u)], var_4, 378f))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-530f, 312f))), var_4, global3[_wgslsmith_index_u32(4294967295u, 10u)], var_4)), i32(-1i) * -min(var_6.b.a.x, _wgslsmith_div_i32(global2.a.x, var_5.b.c.x)), reverseBits(_wgslsmith_sub_vec4_i32(~(~vec4<i32>(global0.a.x, global0.a.x, -34478i, -82122i)), _wgslsmith_sub_vec4_i32(vec4<i32>(43789i, var_6.b.c.x, global2.a.x, 3454i), -global2.a))), var_5.b.c.yyz);
}

