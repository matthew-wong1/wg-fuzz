struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(35280u, 31365u);

var<private> global1: f32 = -683f;

var<private> global2: array<vec4<bool>, 26>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_1) -> u32 {
    var var_0 = Struct_1(countOneBits(abs(~(~arg_2.a))));
    var var_1 = arg_2;
    var var_2 = arg_2;
    var var_3 = u_input.d.x;
    return var_0.a.x;
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> vec2<bool> {
    global0 = _wgslsmith_sub_vec2_u32(u_input.d, ~arg_0.a.zw);
    let var_0 = abs(vec4<u32>(arg_1 & ~global0.x, ~(~global0.x) << ((countOneBits(u_input.a) | min(4294967295u, arg_0.a.x)) % 32u), 11190u, abs(1u)));
    let var_1 = _wgslsmith_mod_vec4_u32(arg_0.a, vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(47870u, reverseBits(4294967295u), ~1142u), ~countOneBits(vec3<u32>(4294967295u, 0u, arg_1))), arg_0.a.x, func_3(_wgslsmith_add_vec2_u32(vec2<u32>(0u, global0.x), _wgslsmith_mod_vec2_u32(arg_0.a.wz, vec2<u32>(26224u, 1u))), -13381i > ~u_input.c.x, Struct_1(vec4<u32>(0u, 49785u, arg_0.a.x, u_input.a))), 4294967295u));
    let var_2 = select(vec2<bool>(any(select(global2[_wgslsmith_index_u32(var_1.x & 1u, 26u)], global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.x, 0u), 26u)], vec4<bool>(false, false, false, false))), any(vec4<bool>(true, true, true, true))), select(vec2<bool>(!any(vec4<bool>(true, false, false, true)), any(select(vec2<bool>(true, true), vec2<bool>(true, false), true))), select(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), true), select(true, all(vec3<bool>(true, true, true)), true != any(global2[_wgslsmith_index_u32(1u, 26u)]))), vec2<bool>((_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 1i, -45991i), vec3<i32>(18358i, u_input.c.x, u_input.c.x)) < 0i) | true, false));
    global1 = -722f;
    return !vec2<bool>((true || !var_2.x) | any(!vec3<bool>(true, var_2.x, var_2.x)), false);
}

fn func_2(arg_0: vec2<bool>, arg_1: f32, arg_2: Struct_1) -> vec4<u32> {
    global0 = select(_wgslsmith_div_vec2_u32(min(vec2<u32>(63423u, u_input.a), u_input.d) | vec2<u32>(abs(arg_2.a.x), 4294967295u >> (u_input.a % 32u)), abs(select(arg_2.a.xy, vec2<u32>(u_input.a, 16547u), vec2<bool>(arg_0.x, arg_0.x))) << (~arg_2.a.wy % vec2<u32>(32u))), ~u_input.d, func_4(Struct_1(select(~vec4<u32>(u_input.d.x, u_input.d.x, u_input.a, 16668u), ~arg_2.a, global2[_wgslsmith_index_u32(func_3(vec2<u32>(1u, 4294967295u), false, arg_2), 26u)])), 1u));
    var var_0 = ~(~_wgslsmith_div_u32(countOneBits(abs(arg_2.a.x)), u_input.d.x));
    let var_1 = ~(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(-u_input.c, select(vec3<i32>(-2147483647i, u_input.c.x, u_input.c.x), u_input.c, vec3<bool>(false, arg_0.x, true)), max(u_input.c, u_input.c)), _wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, 1i), vec3<i32>(u_input.b, u_input.c.x, 0i)) ^ reverseBits(vec3<i32>(2147483647i, u_input.b, 2147483647i))) ^ u_input.b);
    let var_2 = arg_2;
    global0 = reverseBits(u_input.d) ^ firstLeadingBit(var_2.a.ww);
    return ~_wgslsmith_mult_vec4_u32(arg_2.a, _wgslsmith_clamp_vec4_u32(countOneBits(arg_2.a) << (~vec4<u32>(0u, 0u, 0u, 0u) % vec4<u32>(32u)), ~firstTrailingBit(vec4<u32>(u_input.a, 0u, 3393u, 4294967295u)), arg_2.a));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<f32>, arg_2: vec4<i32>) -> vec4<u32> {
    global1 = _wgslsmith_f_op_f32(abs(-1000f));
    let var_0 = Struct_1(func_2(arg_0, -1271f, Struct_1(~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 0u), vec4<u32>(global0.x, u_input.a, u_input.a, 0u)))));
    var var_1 = var_0;
    global2 = array<vec4<bool>, 26>();
    var_1 = Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, ~_wgslsmith_mult_u32(var_0.a.x, var_1.a.x), 1u & var_1.a.x, 4294967295u), var_0.a));
    return ~(~var_1.a);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec4<u32> {
    global2 = array<vec4<bool>, 26>();
    var var_0 = max(~(-43537i), _wgslsmith_mod_i32(u_input.c.x, u_input.c.x) & u_input.c.x);
    var var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(~u_input.c.x, -2796i), _wgslsmith_add_vec2_i32(u_input.c.xx, vec2<i32>(-2147483647i, 20963i)));
    let var_2 = Struct_1(vec4<u32>(min(~arg_0.a.x, arg_2.a.x & global0.x) | ~firstTrailingBit(24312u), 0u << (~_wgslsmith_sub_u32(8863u, u_input.a) % 32u), func_2(vec2<bool>(true, true), _wgslsmith_f_op_f32(min(130f, -1594f)), arg_1).x, min(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.a.x, arg_1.a.x, u_input.d.x, 1u), arg_0.a), _wgslsmith_dot_vec2_u32(func_2(vec2<bool>(false, true), 997f, arg_0).yw, vec2<u32>(0u, 4294967295u) & vec2<u32>(22733u, arg_3.a.x)))));
    var var_3 = (u_input.c.x < u_input.c.x) & true;
    return _wgslsmith_clamp_vec4_u32(arg_3.a, ~arg_1.a & ~vec4<u32>(global0.x, ~1u, 4294967295u << (global0.x % 32u), 0u), arg_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<bool>, 26>();
    var var_0 = func_5(Struct_1(vec4<u32>(~abs(4294967295u), ~79717u, 1u, ~(~u_input.d.x))), Struct_1(func_1(vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(671f, 973f), vec2<f32>(942f, 1126f)))), ~vec4<i32>(u_input.c.x, u_input.c.x, 1i, u_input.b) >> ((vec4<u32>(global0.x, u_input.a, u_input.a, global0.x) >> (vec4<u32>(4294967295u, u_input.a, global0.x, 92279u) % vec4<u32>(32u))) % vec4<u32>(32u)))), Struct_1(vec4<u32>(~u_input.d.x, reverseBits(4294967295u), ~u_input.d.x, 20453u)), Struct_1(reverseBits(~(vec4<u32>(u_input.d.x, u_input.a, global0.x, 44112u) << (vec4<u32>(70219u, global0.x, 80266u, 4294967295u) % vec4<u32>(32u))))));
    let var_1 = Struct_1(vec4<u32>(_wgslsmith_sub_u32(~1u, 5918u), _wgslsmith_dot_vec2_u32(var_0.xw, vec2<u32>(~global0.x, 10325u)), _wgslsmith_sub_u32(func_1(vec2<bool>(true, true), vec2<f32>(-2113f, 1414f), firstTrailingBit(vec4<i32>(u_input.b, -31i, 1i, u_input.c.x))).x, firstLeadingBit(global0.x) ^ ~u_input.d.x), _wgslsmith_mult_u32(1u, ~global0.x)));
    let var_2 = firstLeadingBit(u_input.c.yx << ((vec2<u32>(34494u, ~4294967295u) >> (_wgslsmith_mult_vec2_u32(var_0.zw, var_1.a.yy) % vec2<u32>(32u))) % vec2<u32>(32u)));
    var var_3 = 1000f;
    global0 = max(~(~vec2<u32>(~24798u, 64785u)), u_input.d);
    let x = u_input.a;
    s_output = StorageBuffer(min(~_wgslsmith_sub_u32(~u_input.d.x, 3784u), var_0.x), _wgslsmith_clamp_vec2_i32(var_2 ^ _wgslsmith_add_vec2_i32(~u_input.c.zy, ~var_2), ~max(_wgslsmith_mod_vec2_i32(var_2, vec2<i32>(u_input.c.x, u_input.b)), vec2<i32>(u_input.c.x, var_2.x)), u_input.c.xz), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(492f))), _wgslsmith_add_i32(abs(abs(var_2.x)) | -36184i, ~abs(u_input.b)));
}

