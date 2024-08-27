struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 24> = array<f32, 24>(-325f, 268f, 974f, 1000f, 1595f, 990f, -599f, 1000f, -1386f, -1020f, 1900f, 1184f, 877f, -292f, 1097f, 470f, 1000f, 1293f, -116f, 364f, 147f, 1601f, -866f, 155f);

var<private> global1: vec4<u32> = vec4<u32>(4294967295u, 13792u, 4294967295u, 0u);

var<private> global2: array<vec3<f32>, 19>;

var<private> global3: vec4<bool> = vec4<bool>(false, true, true, true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> vec3<bool> {
    global3 = !(!vec4<bool>(true, true, !(!global3.x), global3.x));
    let var_0 = Struct_1(~_wgslsmith_div_vec2_u32(countOneBits(vec2<u32>(global1.x, 1u)) ^ global1.xz, abs(global1.ww)), vec4<bool>(true || all(global3.xyw), !any(global3.xxz), _wgslsmith_mult_i32(u_input.a.x << (35726u % 32u), u_input.b.x) != countOneBits(select(u_input.b.x, u_input.b.x, true)), true | global3.x), ~(abs(vec4<u32>(global1.x, 0u, global1.x, global1.x)) | reverseBits(select(vec4<u32>(global1.x, global1.x, 17560u, global1.x), vec4<u32>(global1.x, 1u, global1.x, global1.x), vec4<bool>(global3.x, global3.x, true, true)))), u_input.b, vec3<u32>(global1.x, 1u, ~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(global1.zy, vec2<u32>(global1.x, global1.x)), abs(global1.zy))));
    let var_1 = _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.d.x, -1i), vec2<i32>(-15660i, var_0.d.x)), _wgslsmith_sub_vec2_i32(var_0.d.zy, u_input.b.yz)) ^ 1i, u_input.a.x) & countOneBits(-56983i);
    var var_2 = Struct_1(~(~var_0.e.xy), var_0.b, vec4<u32>(1u, ~0u, 4294967295u, _wgslsmith_add_u32(~var_0.e.x, var_0.e.x ^ 4294967295u) & (~global1.x >> (global1.x % 32u))), max(-abs(u_input.b), firstLeadingBit(vec3<i32>(u_input.a.x, var_0.d.x, 43275i)) >> (vec3<u32>(4294967295u, 41858u, 1u) % vec3<u32>(32u))) << (reverseBits(~max(vec3<u32>(global1.x, 26611u, var_0.e.x), vec3<u32>(global1.x, global1.x, var_0.c.x))) % vec3<u32>(32u)), vec3<u32>(min(abs(_wgslsmith_mult_u32(1u, 1u)), 34678u), 1u, ~(~_wgslsmith_clamp_u32(var_0.e.x, 69119u, 0u))));
    global1 = ~var_0.c;
    return select(var_0.b.wzz, select(!select(vec3<bool>(false, false, global3.x), !var_0.b.xxw, select(vec3<bool>(true, false, var_0.b.x), vec3<bool>(var_0.b.x, var_2.b.x, false), vec3<bool>(var_0.b.x, var_0.b.x, true))), vec3<bool>(false, any(vec2<bool>(true, true)), !select(global3.x, true, true)), !var_2.b.zyy), global3.x);
}

fn func_4(arg_0: f32, arg_1: vec3<u32>, arg_2: vec3<bool>, arg_3: vec2<u32>) -> i32 {
    var var_0 = ~vec2<u32>(4294967295u, global1.x & arg_1.x);
    global0 = array<f32, 24>();
    let var_1 = -889f;
    global1 = min(_wgslsmith_mult_vec4_u32(abs(max(vec4<u32>(18683u, 0u, arg_1.x, arg_3.x), vec4<u32>(39190u, global1.x, global1.x, global1.x))) << (select(vec4<u32>(arg_3.x, var_0.x, arg_3.x, 4294967295u), vec4<u32>(4294967295u, 1u, 1u, 0u), select(vec4<bool>(false, true, false, arg_2.x), vec4<bool>(global3.x, true, arg_2.x, true), vec4<bool>(false, global3.x, true, arg_2.x))) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_sub_u32(arg_1.x, ~global1.x), ~(~var_0.x), 33810u, arg_3.x)), firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(arg_3.x, global1.x, var_0.x, arg_3.x), _wgslsmith_div_vec4_u32(vec4<u32>(2167u, arg_3.x, 0u, 4294967295u), vec4<u32>(38014u, arg_3.x, 0u, arg_3.x)))) >> (abs(~(~vec4<u32>(arg_1.x, arg_3.x, arg_3.x, arg_1.x))) % vec4<u32>(32u)));
    var_0 = ~vec2<u32>(_wgslsmith_mod_u32(reverseBits(32719u), ~1u), abs(select(1u, _wgslsmith_clamp_u32(global1.x, arg_1.x, 4937u), global3.x)));
    return u_input.a.x;
}

fn func_2(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_1) -> vec3<i32> {
    var var_0 = func_4(972f, ~(~_wgslsmith_sub_vec3_u32(vec3<u32>(global1.x, 4294967295u, 40250u), arg_2.e)), select(arg_2.b.xxx, !(!func_3()), global3.x), arg_2.c.wz);
    let var_1 = Struct_1(global1.ww, select(vec4<bool>(all(vec2<bool>(false, arg_2.b.x)) || all(vec3<bool>(global3.x, global3.x, arg_2.b.x)), true, false, any(arg_2.b.xy)), vec4<bool>(true, (i32(-1i) * -1i) >= arg_1.x, global3.x, arg_2.b.x), select(!vec4<bool>(false, true, true, global3.x), arg_2.b, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, 21997u, 1u), 24u)] >= 1f)), arg_2.c & arg_2.c, _wgslsmith_clamp_vec3_i32(~arg_2.d, arg_2.d, abs(_wgslsmith_add_vec3_i32(arg_2.d, arg_2.d)) >> (_wgslsmith_add_vec3_u32(firstLeadingBit(arg_2.e), vec3<u32>(global1.x, 60404u, 37416u) | global1.yzz) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(arg_2.c.zwx, countOneBits(vec3<u32>(43316u, global1.x, 77856u)) >> (firstLeadingBit(global1.xzz) % vec3<u32>(32u))), arg_2.e, firstTrailingBit(vec3<u32>(~global1.x, _wgslsmith_sub_u32(4294967295u, global1.x), global1.x))));
    var var_2 = any(vec4<bool>(1u <= global1.x, global3.x, var_1.b.x, !all(vec4<bool>(true, var_1.b.x, false, global3.x)) && all(!vec3<bool>(true, false, global3.x))));
    return vec3<i32>(arg_1.x, _wgslsmith_div_i32(-16860i, ~func_4(global0[_wgslsmith_index_u32(~arg_2.a.x, 24u)], ~var_1.c.wzy, vec3<bool>(true, true, true), arg_2.e.zy)), ~_wgslsmith_mod_i32(arg_1.x, _wgslsmith_add_i32(-891i, _wgslsmith_div_i32(1i, -2147483647i))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    global0 = array<f32, 24>();
    global3 = !(!vec4<bool>(all(arg_3.b.yw), arg_3.b.x, all(select(arg_0.b.wy, arg_1.b.wx, arg_1.b.x)), all(select(vec4<bool>(false, arg_1.b.x, false, arg_1.b.x), arg_3.b, arg_0.b))));
    var var_0 = Struct_1(firstTrailingBit(vec2<u32>(16972u, arg_2)), !arg_3.b, arg_3.c, select(vec3<i32>(~(-2147483647i) | _wgslsmith_mult_i32(-44581i, arg_3.d.x), 8075i ^ (u_input.b.x ^ u_input.a.x), -5974i), vec3<i32>(arg_1.d.x, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-20844i, arg_1.d.x, -1i), arg_3.d, vec3<i32>(2147483647i, u_input.b.x, -2147483647i)), func_2(arg_3.d.x, vec2<i32>(-4184i, -1i), arg_1)), -arg_3.d.x), arg_1.b.x), vec3<u32>(max(arg_2, 1u), ~(~global1.x), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 1u, arg_1.c.x, global1.x), vec4<u32>(1u, 62298u, 1u, arg_0.a.x))));
    var var_1 = firstLeadingBit(~vec3<u32>(~firstTrailingBit(0u), ~arg_2, arg_0.e.x));
    var var_2 = vec2<bool>(true, !(var_0.b.x != !all(arg_0.b.ywy)));
    return arg_1;
}

fn func_5(arg_0: i32, arg_1: vec3<f32>, arg_2: bool, arg_3: Struct_1) -> vec2<bool> {
    global1 = reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(~1u, 0u, global1.x, _wgslsmith_dot_vec4_u32(arg_3.c, abs(vec4<u32>(1u, arg_3.e.x, global1.x, arg_3.a.x)))), func_1(arg_3, arg_3, 29285u, Struct_1(~vec2<u32>(1u, global1.x), vec4<bool>(true, false, false, global3.x), ~arg_3.c, _wgslsmith_sub_vec3_i32(arg_3.d, arg_3.d), vec3<u32>(1u, 1u, 4294967295u))).c));
    let var_0 = 1u < ~(~reverseBits(max(global1.x, 20670u)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-515f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(global1.x, 24u)]))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_1.x, 691f))), all(arg_3.b)))));
    global0 = array<f32, 24>();
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -967f);
    return func_3().xx;
}

fn func_6(arg_0: vec2<bool>, arg_1: i32, arg_2: bool) -> i32 {
    var var_0 = Struct_1(~vec2<u32>(~_wgslsmith_add_u32(1u, 59293u), abs(4294967295u)), !(!vec4<bool>(arg_0.x, any(vec4<bool>(arg_0.x, false, arg_0.x, global3.x)), arg_0.x, true)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(3614u, global1.x, global1.x, global1.x) << (countOneBits(vec4<u32>(8459u, global1.x, 3799u, global1.x)) % vec4<u32>(32u)), abs(vec4<u32>(global1.x, global1.x, global1.x, global1.x) ^ vec4<u32>(12615u, 1u, 50419u, global1.x))), u_input.b, global1.yyy);
    var var_1 = 556f;
    let var_2 = var_0.b.zz;
    let var_3 = func_1(func_1(Struct_1(vec2<u32>(var_0.e.x, 1u), var_0.b, ~func_1(Struct_1(vec2<u32>(61197u, global1.x), var_0.b, var_0.c, var_0.d, vec3<u32>(global1.x, global1.x, 4294967295u)), Struct_1(vec2<u32>(global1.x, global1.x), vec4<bool>(arg_0.x, var_2.x, arg_0.x, true), var_0.c, u_input.b, var_0.c.yxx), global1.x, Struct_1(vec2<u32>(var_0.a.x, 66765u), var_0.b, var_0.c, vec3<i32>(-37025i, 23184i, 22166i), var_0.e)).c, -_wgslsmith_mod_vec3_i32(var_0.d, u_input.b), vec3<u32>(firstTrailingBit(4294967295u), _wgslsmith_mult_u32(global1.x, var_0.a.x), ~1u)), func_1(Struct_1(global1.yz >> (global1.yx % vec2<u32>(32u)), !vec4<bool>(false, global3.x, false, true), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 46775u, 4294967295u, global1.x), var_0.c), vec3<i32>(arg_1, var_0.d.x, u_input.b.x), vec3<u32>(global1.x, var_0.c.x, 8968u)), Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(36864u, 8762u), vec2<u32>(78935u, global1.x)), var_0.b, vec4<u32>(6752u, global1.x, 4294967295u, 16931u), vec3<i32>(24468i, u_input.b.x, arg_1), _wgslsmith_mult_vec3_u32(global1.xww, var_0.e)), 5869u, func_1(Struct_1(vec2<u32>(77256u, 1u), vec4<bool>(true, true, var_2.x, false), vec4<u32>(global1.x, global1.x, var_0.c.x, var_0.a.x), vec3<i32>(66224i, 26697i, u_input.b.x), global1.xyw), func_1(Struct_1(global1.xy, vec4<bool>(arg_2, false, arg_2, true), var_0.c, vec3<i32>(6485i, u_input.a.x, 0i), vec3<u32>(4294967295u, 0u, 0u)), Struct_1(vec2<u32>(9116u, global1.x), var_0.b, var_0.c, var_0.d, global1.xyx), 43790u, Struct_1(vec2<u32>(global1.x, var_0.a.x), var_0.b, var_0.c, vec3<i32>(-2147483647i, u_input.b.x, 6383i), var_0.c.wxy)), firstTrailingBit(global1.x), Struct_1(vec2<u32>(global1.x, 20725u), vec4<bool>(arg_0.x, global3.x, false, true), vec4<u32>(0u, 6826u, 1u, 83305u), vec3<i32>(-2147483647i, arg_1, u_input.b.x), vec3<u32>(22591u, var_0.a.x, 4294967295u)))), firstTrailingBit(abs(_wgslsmith_mod_u32(4294967295u, 4294967295u))), func_1(func_1(Struct_1(vec2<u32>(global1.x, var_0.a.x), var_0.b, vec4<u32>(var_0.c.x, 1u, global1.x, 1u), var_0.d, vec3<u32>(global1.x, global1.x, global1.x)), Struct_1(global1.zz, var_0.b, vec4<u32>(global1.x, var_0.a.x, var_0.c.x, 40465u), u_input.b, var_0.e), global1.x, func_1(Struct_1(var_0.a, var_0.b, var_0.c, vec3<i32>(var_0.d.x, var_0.d.x, arg_1), vec3<u32>(global1.x, var_0.a.x, global1.x)), Struct_1(vec2<u32>(66477u, 44270u), var_0.b, var_0.c, var_0.d, vec3<u32>(global1.x, global1.x, 1u)), global1.x, Struct_1(vec2<u32>(var_0.a.x, 4690u), var_0.b, vec4<u32>(var_0.c.x, 12520u, var_0.c.x, 63228u), u_input.b, vec3<u32>(0u, 19973u, global1.x)))), func_1(func_1(Struct_1(var_0.e.yy, var_0.b, vec4<u32>(var_0.a.x, var_0.c.x, var_0.e.x, 0u), var_0.d, vec3<u32>(55617u, var_0.c.x, 1u)), Struct_1(vec2<u32>(var_0.c.x, var_0.c.x), var_0.b, vec4<u32>(28365u, 3230u, 3117u, var_0.c.x), vec3<i32>(-1i, 25382i, 16082i), vec3<u32>(26664u, global1.x, var_0.a.x)), var_0.e.x, Struct_1(vec2<u32>(var_0.a.x, global1.x), vec4<bool>(arg_0.x, false, true, arg_0.x), var_0.c, u_input.b, var_0.e)), Struct_1(vec2<u32>(var_0.e.x, 50468u), vec4<bool>(var_2.x, arg_0.x, true, var_2.x), vec4<u32>(global1.x, var_0.e.x, 4294967295u, global1.x), u_input.b, vec3<u32>(global1.x, var_0.c.x, global1.x)), ~50787u, func_1(Struct_1(global1.yy, var_0.b, vec4<u32>(var_0.a.x, global1.x, 0u, 70564u), u_input.b, global1.yyy), Struct_1(global1.wz, var_0.b, vec4<u32>(0u, 21102u, 4294967295u, global1.x), u_input.b, vec3<u32>(0u, 48831u, var_0.a.x)), var_0.c.x, Struct_1(vec2<u32>(global1.x, 4294967295u), var_0.b, vec4<u32>(4294967295u, global1.x, 0u, 1u), u_input.b, vec3<u32>(23931u, 1u, 4294967295u)))), 11471u << (1u % 32u), Struct_1(~global1.ww, vec4<bool>(arg_0.x, false, var_2.x, true), var_0.c, -var_0.d, vec3<u32>(var_0.a.x, 14662u, 1u) >> (global1.ywy % vec3<u32>(32u))))), Struct_1(countOneBits(vec2<u32>(~1u, _wgslsmith_add_u32(37635u, 21569u))), !func_1(Struct_1(vec2<u32>(0u, global1.x), vec4<bool>(arg_0.x, arg_2, false, arg_0.x), var_0.c, var_0.d, vec3<u32>(var_0.e.x, var_0.e.x, 4948u)), Struct_1(vec2<u32>(1u, var_0.e.x), var_0.b, vec4<u32>(1u, var_0.a.x, 52711u, 36921u), var_0.d, var_0.e), 123732u, func_1(Struct_1(vec2<u32>(33949u, global1.x), vec4<bool>(false, global3.x, true, true), vec4<u32>(var_0.e.x, var_0.a.x, global1.x, global1.x), var_0.d, var_0.e), Struct_1(vec2<u32>(global1.x, 1u), vec4<bool>(arg_2, var_0.b.x, true, var_2.x), vec4<u32>(global1.x, 1u, var_0.c.x, global1.x), vec3<i32>(1335i, u_input.a.x, 2147483647i), vec3<u32>(var_0.c.x, 30159u, var_0.a.x)), 4294967295u, Struct_1(var_0.e.xx, var_0.b, var_0.c, vec3<i32>(u_input.a.x, 66039i, -1i), global1.wxy))).b, select(~(~vec4<u32>(global1.x, var_0.e.x, 4294967295u, global1.x)), vec4<u32>(~60464u, var_0.c.x, var_0.a.x, ~20335u), !(true || var_2.x)), vec3<i32>(firstLeadingBit(_wgslsmith_dot_vec2_i32(var_0.d.yx, vec2<i32>(arg_1, arg_1))), 2147483647i, arg_1), ~_wgslsmith_mod_vec3_u32(reverseBits(global1.yyx), _wgslsmith_mod_vec3_u32(var_0.e, vec3<u32>(0u, var_0.c.x, var_0.c.x)))), 1u, Struct_1(~(~countOneBits(var_0.a)), var_0.b, var_0.c, -_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.b, var_0.d), vec3<i32>(u_input.a.x, arg_1, 1i) ^ u_input.b), vec3<u32>(var_0.e.x, global1.x << (0u % 32u), func_1(func_1(Struct_1(var_0.a, var_0.b, vec4<u32>(global1.x, var_0.a.x, 4294967295u, global1.x), vec3<i32>(arg_1, arg_1, -59521i), var_0.e), Struct_1(vec2<u32>(global1.x, 17942u), var_0.b, vec4<u32>(0u, global1.x, 155456u, 43395u), var_0.d, var_0.e), var_0.c.x, Struct_1(var_0.a, vec4<bool>(arg_2, false, arg_2, true), var_0.c, vec3<i32>(0i, -72964i, var_0.d.x), vec3<u32>(var_0.e.x, 4294967295u, var_0.c.x))), Struct_1(vec2<u32>(0u, var_0.a.x), var_0.b, var_0.c, var_0.d, vec3<u32>(1u, 33239u, 22723u)), ~0u, func_1(Struct_1(var_0.a, vec4<bool>(true, arg_0.x, false, arg_2), vec4<u32>(4294967295u, 0u, var_0.c.x, var_0.a.x), var_0.d, global1.wwx), Struct_1(vec2<u32>(global1.x, var_0.a.x), vec4<bool>(arg_2, arg_2, global3.x, arg_2), var_0.c, u_input.b, vec3<u32>(1u, global1.x, 4294967295u)), 68506u, Struct_1(global1.wy, vec4<bool>(var_2.x, arg_0.x, false, true), vec4<u32>(0u, global1.x, var_0.c.x, var_0.e.x), u_input.b, vec3<u32>(var_0.c.x, 4294967295u, 20651u)))).a.x))).b;
    let var_4 = any(!func_1(func_1(Struct_1(vec2<u32>(var_0.e.x, 0u), vec4<bool>(false, false, true, arg_2), var_0.c, var_0.d, vec3<u32>(var_0.e.x, 52685u, var_0.e.x)), func_1(Struct_1(vec2<u32>(44084u, 72029u), vec4<bool>(true, false, arg_0.x, false), var_0.c, u_input.b, var_0.c.wzw), Struct_1(global1.zx, var_0.b, var_0.c, vec3<i32>(67891i, u_input.b.x, var_0.d.x), vec3<u32>(global1.x, 0u, 17095u)), 1u, Struct_1(var_0.e.zx, var_0.b, vec4<u32>(global1.x, 25751u, var_0.e.x, global1.x), vec3<i32>(arg_1, -1i, u_input.b.x), vec3<u32>(8915u, 5598u, 0u))), _wgslsmith_sub_u32(24306u, 15076u), Struct_1(var_0.c.xw, var_3, vec4<u32>(94302u, 102968u, var_0.e.x, var_0.a.x), vec3<i32>(var_0.d.x, arg_1, var_0.d.x), global1.zxw)), Struct_1(global1.ww, var_0.b, ~var_0.c, u_input.b, ~vec3<u32>(var_0.a.x, 1234u, 0u)), ~0u, func_1(Struct_1(var_0.a, vec4<bool>(var_0.b.x, arg_0.x, false, var_2.x), vec4<u32>(var_0.e.x, var_0.c.x, global1.x, global1.x), u_input.b, vec3<u32>(var_0.a.x, var_0.a.x, 31105u)), Struct_1(global1.yz, vec4<bool>(var_3.x, var_3.x, true, false), var_0.c, var_0.d, var_0.c.zzw), ~4294967295u, Struct_1(vec2<u32>(var_0.e.x, global1.x), var_3, vec4<u32>(4004u, global1.x, var_0.e.x, var_0.c.x), u_input.b, var_0.e))).b.yx);
    return i32(-1i) * -23688i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(firstTrailingBit(countOneBits(u_input.b)), vec3<i32>(-16056i, -48308i, func_6(func_5(abs(u_input.a.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(global1.x, 24u)], global0[_wgslsmith_index_u32(51924u, 24u)]) + global2[_wgslsmith_index_u32(57572u, 19u)]), false, func_1(Struct_1(vec2<u32>(global1.x, global1.x), vec4<bool>(global3.x, true, global3.x, global3.x), vec4<u32>(global1.x, 4294967295u, 4294967295u, 54804u), vec3<i32>(-35750i, u_input.b.x, u_input.b.x), vec3<u32>(global1.x, global1.x, global1.x)), Struct_1(vec2<u32>(1u, global1.x), vec4<bool>(global3.x, global3.x, global3.x, global3.x), vec4<u32>(4294967295u, 4294967295u, global1.x, global1.x), vec3<i32>(u_input.b.x, -1i, -21201i), global1.wxz), 4294967295u, Struct_1(global1.yy, vec4<bool>(global3.x, false, global3.x, global3.x), vec4<u32>(41464u, global1.x, 36372u, 45415u), u_input.b, vec3<u32>(59073u, global1.x, 1u)))), countOneBits(u_input.a.x), !(!global3.x))), any(vec2<bool>(!global3.x, func_5(~u_input.a.x, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, global1.x), 19u)], true, func_1(Struct_1(global1.zw, vec4<bool>(true, true, true, true), vec4<u32>(global1.x, global1.x, global1.x, 101808u), u_input.b, vec3<u32>(global1.x, 0u, global1.x)), Struct_1(global1.yx, vec4<bool>(true, false, global3.x, global3.x), vec4<u32>(31741u, 1u, global1.x, global1.x), u_input.b, global1.ywx), 1u, Struct_1(global1.yw, vec4<bool>(true, false, global3.x, false), vec4<u32>(global1.x, global1.x, 7002u, 4294967295u), u_input.b, vec3<u32>(0u, global1.x, 4294967295u)))).x)));
    let var_1 = global3.wwy;
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-121f, _wgslsmith_f_op_f32(824f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(4294967295u, 24u)]))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(54751u, 24u)], 300f) + vec2<f32>(global0[_wgslsmith_index_u32(global1.x, 24u)], global0[_wgslsmith_index_u32(global1.x, 24u)])), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-451f, global0[_wgslsmith_index_u32(9908u, 24u)])))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1258f, global0[_wgslsmith_index_u32(global1.x, 24u)])))))));
    let var_3 = func_1(func_1(func_1(func_1(Struct_1(global1.zw, vec4<bool>(var_1.x, true, false, global3.x), vec4<u32>(22733u, 4294967295u, global1.x, global1.x), u_input.b, global1.yyz), func_1(Struct_1(vec2<u32>(global1.x, 11788u), vec4<bool>(global3.x, global3.x, var_1.x, true), vec4<u32>(0u, global1.x, global1.x, 0u), vec3<i32>(-3834i, 1i, u_input.a.x), vec3<u32>(global1.x, global1.x, 6513u)), Struct_1(global1.xy, vec4<bool>(global3.x, global3.x, var_1.x, global3.x), vec4<u32>(27222u, 0u, global1.x, 43625u), vec3<i32>(-1i, 2147483647i, 0i), global1.xww), 4294967295u, Struct_1(vec2<u32>(global1.x, global1.x), vec4<bool>(var_1.x, global3.x, true, global3.x), vec4<u32>(global1.x, global1.x, global1.x, 1u), u_input.b, vec3<u32>(global1.x, 0u, global1.x))), 4294967295u, func_1(Struct_1(global1.zw, vec4<bool>(false, true, var_1.x, true), vec4<u32>(global1.x, global1.x, 0u, global1.x), u_input.b, vec3<u32>(global1.x, global1.x, global1.x)), Struct_1(vec2<u32>(global1.x, 8766u), vec4<bool>(var_1.x, var_1.x, false, var_1.x), vec4<u32>(55393u, global1.x, 80602u, global1.x), vec3<i32>(-1471i, -1i, -15280i), vec3<u32>(4294967295u, global1.x, 31579u)), 6502u, Struct_1(vec2<u32>(global1.x, 1u), vec4<bool>(true, false, false, true), vec4<u32>(global1.x, 1u, global1.x, 4294967295u), vec3<i32>(u_input.a.x, var_0.x, var_0.x), vec3<u32>(global1.x, 1u, global1.x)))), Struct_1(~vec2<u32>(7942u, global1.x), vec4<bool>(global3.x, true, global3.x, false), vec4<u32>(global1.x, 22477u, global1.x, 1u) ^ vec4<u32>(global1.x, 1u, 1u, global1.x), u_input.b, global1.wzw), global1.x, func_1(func_1(Struct_1(global1.wx, vec4<bool>(false, true, var_1.x, false), vec4<u32>(48563u, 1150u, 1u, global1.x), u_input.b, global1.yzx), Struct_1(global1.yx, vec4<bool>(true, var_1.x, false, false), vec4<u32>(global1.x, 1u, global1.x, global1.x), u_input.b, vec3<u32>(4294967295u, global1.x, 227u)), 0u, Struct_1(vec2<u32>(0u, global1.x), vec4<bool>(global3.x, global3.x, global3.x, true), vec4<u32>(global1.x, 111891u, 25850u, global1.x), vec3<i32>(2147483647i, u_input.b.x, -32621i), global1.zxz)), func_1(Struct_1(vec2<u32>(global1.x, global1.x), vec4<bool>(global3.x, true, var_1.x, global3.x), vec4<u32>(global1.x, global1.x, 4294967295u, 4294967295u), u_input.b, global1.ywx), Struct_1(vec2<u32>(global1.x, global1.x), vec4<bool>(var_1.x, global3.x, true, global3.x), vec4<u32>(0u, 0u, global1.x, 4294967295u), u_input.b, global1.zxx), global1.x, Struct_1(vec2<u32>(4294967295u, 0u), vec4<bool>(true, var_1.x, global3.x, var_1.x), vec4<u32>(global1.x, global1.x, global1.x, global1.x), u_input.b, vec3<u32>(global1.x, 1u, global1.x))), global1.x, func_1(Struct_1(global1.xw, vec4<bool>(var_1.x, true, global3.x, var_1.x), vec4<u32>(60596u, 5122u, 19928u, 14298u), vec3<i32>(0i, var_0.x, u_input.b.x), vec3<u32>(4294967295u, 34746u, global1.x)), Struct_1(global1.xy, vec4<bool>(true, var_1.x, true, global3.x), vec4<u32>(11986u, global1.x, global1.x, 1556u), u_input.b, vec3<u32>(global1.x, global1.x, 49300u)), global1.x, Struct_1(vec2<u32>(42129u, 92124u), vec4<bool>(true, true, true, var_1.x), vec4<u32>(4294967295u, 24077u, 0u, 1u), vec3<i32>(-25834i, var_0.x, 9632i), vec3<u32>(global1.x, 4294967295u, global1.x))))), func_1(func_1(func_1(Struct_1(vec2<u32>(global1.x, global1.x), vec4<bool>(true, false, true, false), vec4<u32>(42887u, 0u, 59211u, global1.x), u_input.b, vec3<u32>(global1.x, global1.x, global1.x)), Struct_1(global1.wy, vec4<bool>(true, var_1.x, global3.x, var_1.x), vec4<u32>(1u, global1.x, 0u, 1u), u_input.b, global1.wyy), global1.x, Struct_1(global1.xz, vec4<bool>(var_1.x, true, var_1.x, var_1.x), vec4<u32>(1u, global1.x, global1.x, 10665u), vec3<i32>(1i, var_0.x, -8345i), vec3<u32>(global1.x, 4386u, 4294967295u))), func_1(Struct_1(vec2<u32>(4294967295u, 5942u), vec4<bool>(global3.x, global3.x, var_1.x, true), vec4<u32>(global1.x, global1.x, global1.x, global1.x), vec3<i32>(16752i, -41761i, var_0.x), global1.zwy), Struct_1(global1.xy, vec4<bool>(var_1.x, var_1.x, var_1.x, global3.x), vec4<u32>(8954u, global1.x, 25515u, 0u), u_input.b, global1.zxx), 45140u, Struct_1(vec2<u32>(65106u, global1.x), vec4<bool>(global3.x, true, true, false), vec4<u32>(global1.x, global1.x, 0u, global1.x), vec3<i32>(u_input.b.x, var_0.x, var_0.x), vec3<u32>(global1.x, 53801u, 49616u))), min(48286u, global1.x), Struct_1(global1.yw, vec4<bool>(var_1.x, var_1.x, global3.x, false), vec4<u32>(1u, 0u, 10351u, global1.x), vec3<i32>(var_0.x, u_input.b.x, u_input.a.x), vec3<u32>(4294967295u, global1.x, 43758u))), Struct_1(~vec2<u32>(0u, global1.x), select(vec4<bool>(true, global3.x, var_1.x, var_1.x), vec4<bool>(true, true, false, true), global3.x), _wgslsmith_sub_vec4_u32(vec4<u32>(global1.x, 1u, 49350u, 21266u), vec4<u32>(22994u, 29199u, 1u, global1.x)), vec3<i32>(var_0.x, -4307i, var_0.x), global1.wxy), select(global1.x, global1.x, any(var_1.zz)), func_1(Struct_1(vec2<u32>(global1.x, global1.x), vec4<bool>(false, false, true, true), vec4<u32>(global1.x, global1.x, 1u, 5336u), u_input.b, global1.zxy), Struct_1(global1.zz, vec4<bool>(true, true, true, var_1.x), vec4<u32>(global1.x, 8987u, global1.x, global1.x), u_input.b, global1.zwx), firstLeadingBit(1u), Struct_1(global1.yw, vec4<bool>(true, true, global3.x, global3.x), vec4<u32>(global1.x, 4294967295u, global1.x, global1.x), vec3<i32>(u_input.b.x, u_input.a.x, u_input.a.x), vec3<u32>(40877u, global1.x, 4294967295u)))), ~global1.x, Struct_1(global1.zy, func_1(Struct_1(global1.yy, vec4<bool>(var_1.x, true, true, true), vec4<u32>(global1.x, global1.x, global1.x, 1u), u_input.b, vec3<u32>(34238u, global1.x, global1.x)), func_1(Struct_1(vec2<u32>(global1.x, global1.x), vec4<bool>(var_1.x, false, global3.x, var_1.x), vec4<u32>(10889u, global1.x, global1.x, 71401u), u_input.b, vec3<u32>(1u, 0u, 1u)), Struct_1(vec2<u32>(50413u, global1.x), vec4<bool>(var_1.x, global3.x, global3.x, false), vec4<u32>(4294967295u, global1.x, 32613u, 0u), vec3<i32>(u_input.a.x, var_0.x, 2147483647i), global1.wyz), 1u, Struct_1(vec2<u32>(46598u, global1.x), vec4<bool>(false, var_1.x, false, var_1.x), vec4<u32>(4294967295u, global1.x, 0u, 25686u), u_input.b, global1.wyx)), _wgslsmith_clamp_u32(4294967295u, 4294967295u, global1.x), Struct_1(global1.wy, vec4<bool>(global3.x, var_1.x, true, false), vec4<u32>(global1.x, 4294967295u, 9532u, 0u), vec3<i32>(-27003i, -2147483647i, u_input.a.x), vec3<u32>(global1.x, global1.x, global1.x))).b, ~_wgslsmith_clamp_vec4_u32(vec4<u32>(global1.x, 1u, 58642u, 0u), vec4<u32>(global1.x, global1.x, 6385u, 0u), vec4<u32>(global1.x, 4294967295u, 14526u, 4294967295u)), select(firstTrailingBit(vec3<i32>(1i, -1i, 2147483647i)), max(vec3<i32>(u_input.a.x, 16363i, -1i), vec3<i32>(2147483647i, -51358i, 6810i)), var_1.x), abs(abs(vec3<u32>(2899u, global1.x, 40380u))))), func_1(func_1(func_1(func_1(Struct_1(global1.zw, vec4<bool>(global3.x, true, true, false), vec4<u32>(global1.x, 84234u, 1216u, 13589u), vec3<i32>(2147483647i, u_input.a.x, u_input.b.x), global1.yyx), Struct_1(vec2<u32>(4294967295u, global1.x), vec4<bool>(var_1.x, false, true, global3.x), vec4<u32>(global1.x, 1u, 4294967295u, global1.x), vec3<i32>(u_input.b.x, u_input.b.x, var_0.x), vec3<u32>(1u, global1.x, 11437u)), global1.x, Struct_1(global1.ww, vec4<bool>(true, var_1.x, var_1.x, false), vec4<u32>(global1.x, global1.x, 9850u, 41938u), vec3<i32>(-49987i, 1i, -14666i), global1.xwy)), func_1(Struct_1(vec2<u32>(global1.x, global1.x), vec4<bool>(var_1.x, false, global3.x, global3.x), vec4<u32>(global1.x, global1.x, 0u, 4294967295u), vec3<i32>(u_input.a.x, var_0.x, -1i), vec3<u32>(4294967295u, global1.x, global1.x)), Struct_1(vec2<u32>(22113u, global1.x), vec4<bool>(var_1.x, global3.x, true, var_1.x), vec4<u32>(global1.x, global1.x, global1.x, 0u), vec3<i32>(var_0.x, u_input.b.x, 13839i), vec3<u32>(global1.x, 4386u, 5083u)), global1.x, Struct_1(global1.yy, vec4<bool>(global3.x, true, var_1.x, false), vec4<u32>(1u, 15060u, global1.x, global1.x), vec3<i32>(-2147483647i, var_0.x, u_input.b.x), global1.zyx)), 24554u, Struct_1(vec2<u32>(0u, 29483u), vec4<bool>(global3.x, true, true, false), vec4<u32>(15077u, global1.x, global1.x, global1.x), u_input.b, vec3<u32>(59690u, global1.x, 17209u))), Struct_1(~global1.zx, vec4<bool>(global3.x, false, true, global3.x), min(vec4<u32>(31023u, global1.x, 1u, 23361u), vec4<u32>(global1.x, 9574u, global1.x, global1.x)), vec3<i32>(6066i, var_0.x, -56502i), ~vec3<u32>(global1.x, global1.x, global1.x)), _wgslsmith_div_u32(global1.x, global1.x), Struct_1(~global1.yw, select(vec4<bool>(true, true, global3.x, true), vec4<bool>(true, true, false, global3.x), var_1.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, global1.x, global1.x, global1.x), vec4<u32>(global1.x, global1.x, global1.x, 0u), vec4<u32>(global1.x, global1.x, global1.x, 1u)), u_input.b ^ vec3<i32>(var_0.x, u_input.a.x, -1i), ~vec3<u32>(global1.x, 46514u, global1.x))), Struct_1(_wgslsmith_div_vec2_u32(vec2<u32>(global1.x, global1.x) | global1.zw, vec2<u32>(1716u, global1.x)), select(!vec4<bool>(global3.x, true, global3.x, true), vec4<bool>(true, global3.x, false, true), !var_1.x), abs(vec4<u32>(global1.x, 22101u, 1u, global1.x)), -_wgslsmith_div_vec3_i32(u_input.b, vec3<i32>(var_0.x, var_0.x, u_input.b.x)), _wgslsmith_add_vec3_u32(~global1.zwz, _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, global1.x, global1.x), vec3<u32>(global1.x, global1.x, 8349u)))), global1.x, Struct_1(global1.yz, vec4<bool>(all(vec4<bool>(false, var_1.x, true, false)), var_0.x < 30065i, false, global3.x), ~reverseBits(vec4<u32>(0u, global1.x, global1.x, 15058u)), u_input.b, _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global1.x, 10486u, 1u), global1.wyz), vec3<u32>(24495u, global1.x, global1.x)))), ~_wgslsmith_dot_vec2_u32(global1.zx, global1.yy), Struct_1(~vec2<u32>(4294967295u, global1.x) | ~vec2<u32>(57009u, global1.x), !(!(!vec4<bool>(global3.x, global3.x, true, global3.x))), (_wgslsmith_div_vec4_u32(vec4<u32>(0u, global1.x, 1u, 1u), vec4<u32>(1u, global1.x, global1.x, global1.x)) >> (~vec4<u32>(global1.x, global1.x, 4294967295u, global1.x) % vec4<u32>(32u))) ^ ~_wgslsmith_div_vec4_u32(vec4<u32>(global1.x, 68763u, global1.x, global1.x), vec4<u32>(1u, global1.x, global1.x, 11809u)), vec3<i32>(_wgslsmith_sub_i32(func_1(Struct_1(global1.xw, vec4<bool>(global3.x, true, global3.x, true), vec4<u32>(global1.x, 1u, 0u, 1u), vec3<i32>(u_input.a.x, 27615i, u_input.b.x), vec3<u32>(41080u, 3356u, 15971u)), Struct_1(global1.ww, vec4<bool>(false, false, true, true), vec4<u32>(global1.x, 41031u, global1.x, global1.x), vec3<i32>(var_0.x, 1i, -1i), vec3<u32>(global1.x, global1.x, 42673u)), global1.x, Struct_1(vec2<u32>(global1.x, global1.x), vec4<bool>(true, global3.x, var_1.x, false), vec4<u32>(global1.x, 24083u, global1.x, global1.x), u_input.b, global1.zxy)).d.x, u_input.b.x >> (global1.x % 32u)), 42521i, ~func_2(var_0.x, vec2<i32>(0i, -5514i), Struct_1(global1.xy, vec4<bool>(false, global3.x, var_1.x, false), vec4<u32>(global1.x, global1.x, 12671u, global1.x), u_input.b, global1.yyw)).x), abs(vec3<u32>(_wgslsmith_mult_u32(0u, global1.x), global1.x, global1.x))));
    let var_4 = _wgslsmith_mod_vec4_u32(func_1(func_1(Struct_1(_wgslsmith_div_vec2_u32(global1.yy, vec2<u32>(global1.x, 1u)), func_1(var_3, var_3, var_3.e.x, var_3).b, _wgslsmith_mod_vec4_u32(vec4<u32>(40779u, 0u, 9852u, global1.x), vec4<u32>(var_3.a.x, 9924u, var_3.a.x, 0u)), -var_3.d, vec3<u32>(0u, var_3.c.x, 0u)), func_1(var_3, var_3, global1.x, func_1(var_3, Struct_1(global1.yz, vec4<bool>(false, false, true, var_1.x), var_3.c, vec3<i32>(6038i, -1i, var_0.x), global1.zzw), global1.x, var_3)), ~var_3.a.x | _wgslsmith_clamp_u32(1044u, 35592u, global1.x), func_1(Struct_1(vec2<u32>(global1.x, global1.x), vec4<bool>(global3.x, true, true, var_3.b.x), vec4<u32>(var_3.a.x, 114854u, var_3.a.x, global1.x), vec3<i32>(0i, var_3.d.x, 18657i), var_3.e), func_1(Struct_1(vec2<u32>(global1.x, 4294967295u), var_3.b, vec4<u32>(global1.x, 45415u, var_3.a.x, 19495u), u_input.b, vec3<u32>(var_3.c.x, var_3.c.x, var_3.c.x)), var_3, var_3.e.x, var_3), 1u, func_1(Struct_1(vec2<u32>(4294967295u, var_3.a.x), vec4<bool>(true, global3.x, var_1.x, false), vec4<u32>(36595u, global1.x, 4294967295u, 1u), vec3<i32>(21410i, var_0.x, u_input.b.x), global1.wxw), Struct_1(global1.yy, vec4<bool>(false, false, true, global3.x), vec4<u32>(var_3.e.x, global1.x, 44519u, 0u), vec3<i32>(var_3.d.x, var_0.x, var_3.d.x), vec3<u32>(33421u, 53956u, global1.x)), global1.x, Struct_1(vec2<u32>(var_3.c.x, 4294967295u), var_3.b, var_3.c, vec3<i32>(var_3.d.x, -27645i, var_3.d.x), var_3.e)))), func_1(var_3, func_1(Struct_1(var_3.a, vec4<bool>(true, var_3.b.x, true, false), var_3.c, u_input.b, var_3.e), Struct_1(var_3.a, vec4<bool>(true, false, true, var_3.b.x), var_3.c, var_3.d, vec3<u32>(99274u, global1.x, var_3.c.x)), var_3.c.x << (92058u % 32u), var_3), _wgslsmith_add_u32(~global1.x, ~var_3.a.x), var_3), min(1u, ~var_3.e.x), func_1(func_1(func_1(Struct_1(var_3.a, vec4<bool>(true, var_3.b.x, true, var_1.x), vec4<u32>(global1.x, 1u, global1.x, global1.x), u_input.b, vec3<u32>(4294967295u, var_3.a.x, global1.x)), Struct_1(vec2<u32>(global1.x, global1.x), var_3.b, var_3.c, vec3<i32>(var_0.x, var_3.d.x, u_input.b.x), var_3.c.xxw), 43198u, Struct_1(global1.zy, var_3.b, vec4<u32>(46872u, 4294967295u, 4294967295u, 1u), u_input.b, vec3<u32>(var_3.a.x, var_3.a.x, global1.x))), var_3, ~1u, var_3), Struct_1(vec2<u32>(global1.x, 107504u), !vec4<bool>(var_3.b.x, false, true, var_3.b.x), min(var_3.c, vec4<u32>(global1.x, global1.x, global1.x, 1818u)), -u_input.b, global1.zxw), global1.x, var_3)).c, select(vec4<u32>(~71910u, global1.x >> (4294967295u % 32u), ~(~global1.x), ~(global1.x & 9281u)), var_3.c, vec4<bool>(false, func_1(Struct_1(var_3.c.wx, var_3.b, var_3.c, u_input.b, vec3<u32>(global1.x, 33963u, 0u)), func_1(Struct_1(vec2<u32>(4294967295u, var_3.e.x), var_3.b, vec4<u32>(1u, 11602u, 2715u, 0u), vec3<i32>(var_0.x, 35096i, u_input.a.x), vec3<u32>(4294967295u, 4294967295u, var_3.a.x)), Struct_1(vec2<u32>(var_3.c.x, 1u), vec4<bool>(false, var_3.b.x, true, global3.x), var_3.c, vec3<i32>(-1i, u_input.a.x, 0i), global1.xyz), 1u, var_3), 13398u, var_3).b.x, global3.x, func_5(-29794i, _wgslsmith_f_op_vec3_f32(max(global2[_wgslsmith_index_u32(0u, 19u)], vec3<f32>(206f, global0[_wgslsmith_index_u32(var_3.a.x, 24u)], var_2.x))), true, func_1(var_3, var_3, global1.x, Struct_1(vec2<u32>(var_3.a.x, var_3.a.x), var_3.b, var_3.c, vec3<i32>(var_0.x, u_input.b.x, var_0.x), var_3.c.wxy))).x)));
    var var_5 = func_1(var_3, var_3, _wgslsmith_mod_u32(57406u, global1.x) | ~var_3.e.x, var_3);
    let var_6 = abs(abs(vec2<u32>(0u, firstLeadingBit(4166u))));
    var var_7 = !func_5(12949i >> (select(reverseBits(0u), var_5.c.x, true) % 32u), global2[_wgslsmith_index_u32(max(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_3.c.x, 26640u, 1u), var_4), var_6.x), 19u)], (all(var_5.b.xzy) & true) && (var_2.x != _wgslsmith_div_f32(global0[_wgslsmith_index_u32(20008u, 24u)], 1000f)), Struct_1(vec2<u32>(~var_3.a.x, _wgslsmith_add_u32(0u, var_3.a.x)), vec4<bool>(func_3().x, global0[_wgslsmith_index_u32(var_3.c.x, 24u)] < var_2.x, !var_3.b.x, func_5(var_3.d.x, vec3<f32>(global0[_wgslsmith_index_u32(0u, 24u)], var_2.x, 347f), var_1.x, var_3).x), _wgslsmith_clamp_vec4_u32(vec4<u32>(8613u, var_6.x, var_5.a.x, 1u), ~vec4<u32>(36670u, 4294967295u, var_6.x, 0u), ~vec4<u32>(var_6.x, 101932u, 4294967295u, var_5.c.x)), vec3<i32>(~(-34388i), abs(2147483647i), -1i), vec3<u32>(4294967295u, 0u ^ global1.x, 0u))).x;
    global0 = array<f32, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, -14902i, vec2<u32>(61088u, var_6.x), ~_wgslsmith_sub_i32(abs(-11997i), func_4(-1872f, vec3<u32>(13151u, var_3.a.x, global1.x), func_3(), countOneBits(var_5.e.yx))), var_4.x);
}

