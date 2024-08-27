struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: u32,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<f32>,
    c: bool,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 19>;

var<private> global1: array<Struct_3, 19>;

var<private> global2: Struct_1 = Struct_1(vec2<f32>(250f, 454f), vec3<i32>(1i, -38647i, 1i), i32(-2147483648), vec4<i32>(2147483647i, i32(-2147483648), -7597i, i32(-2147483648)));

var<private> global3: u32 = 4294967295u;

var<private> global4: vec2<f32> = vec2<f32>(1579f, -577f);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_1, arg_3: bool) -> f32 {
    let var_0 = u_input.a.x > ~_wgslsmith_mod_u32(0u, max(_wgslsmith_mod_u32(4294967295u, arg_0.c), ~8678u));
    global3 = reverseBits(~u_input.a.x ^ 0u);
    var var_1 = arg_2.c;
    let var_2 = Struct_4(Struct_3(-vec3<i32>(global2.b.x, _wgslsmith_dot_vec4_i32(arg_2.d, vec4<i32>(2147483647i, arg_2.c, 19815i, arg_0.a.x)), -arg_1.a.x), Struct_2(~(-arg_2.b.xz)), arg_0.c, arg_0.d), vec3<f32>(143f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -650f)), _wgslsmith_f_op_f32(select(global4.x, _wgslsmith_f_op_f32(-global4.x), all(vec3<bool>(arg_3, false, false)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-818f, global0[_wgslsmith_index_u32(u_input.a.x, 19u)])))), all(!select(vec3<bool>(true, false, var_0), vec3<bool>(false, false, true), false)) || !var_0, ~_wgslsmith_sub_vec3_i32(-reverseBits(arg_2.d.xwz), _wgslsmith_clamp_vec3_i32(~arg_2.d.xzw, global2.b, arg_2.d.yxz)), countOneBits(global2.d.ywy));
    var_1 = _wgslsmith_dot_vec4_i32(arg_2.d, global2.d);
    return _wgslsmith_div_f32(-2109f, _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.a, u_input.a | vec2<u32>(arg_0.c, var_2.a.c)), ~(~arg_0.c)), 19u)])));
}

fn func_3(arg_0: i32, arg_1: vec3<f32>, arg_2: f32, arg_3: vec4<f32>) -> Struct_2 {
    let var_0 = 25418u;
    var var_1 = vec4<u32>(_wgslsmith_clamp_u32(1u, u_input.a.x, 4294967295u), var_0, ~(4294967295u << (u_input.a.x % 32u)), ~25705u);
    var var_2 = vec4<f32>(arg_2, _wgslsmith_f_op_f32(trunc(2777f)), -1166f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.x)));
    global1 = array<Struct_3, 19>();
    global2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * 1289f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_3(global2.d.zzz, Struct_2(global2.b.xy), var_1.x, Struct_2(global2.d.xz)), Struct_2(vec2<i32>(arg_0, global2.d.x)), Struct_1(vec2<f32>(105f, -1706f), vec3<i32>(23790i, 0i, global2.c), arg_0, global2.d), any(vec3<bool>(true, false, true)))))), global2.d.yzx, abs(global2.c ^ ~(~global2.d.x)), vec4<i32>(arg_0, -(global2.c ^ abs(-1815i)), abs(_wgslsmith_sub_i32(~16568i, -51521i >> (u_input.a.x % 32u))), arg_0));
    return Struct_2(~vec2<i32>(_wgslsmith_mult_i32(global2.b.x & 7596i, _wgslsmith_mod_i32(arg_0, -6489i)), ~global2.b.x));
}

fn func_1(arg_0: f32) -> u32 {
    global3 = 0u;
    var var_0 = func_3(1263i, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(398f, global4.x, 936f), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-318f, arg_0, global2.a.x)))))), vec3<f32>(-1482f, arg_0, _wgslsmith_f_op_f32(min(global2.a.x, _wgslsmith_f_op_f32(global4.x * arg_0))))), 315f, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(686f, arg_0, -198f, _wgslsmith_f_op_f32(global4.x - global2.a.x)) + vec4<f32>(1245f, -378f, _wgslsmith_f_op_f32(-1768f * 770f), _wgslsmith_f_op_f32(func_2(global1[_wgslsmith_index_u32(u_input.a.x, 19u)], Struct_2(global2.b.xz), Struct_1(vec2<f32>(298f, global0[_wgslsmith_index_u32(4294967295u, 19u)]), global2.d.zzz, global2.d.x, vec4<i32>(global2.d.x, 1i, global2.d.x, global2.c)), false)))))));
    var var_1 = select(true, any(select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), true)) | all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false)), true)), true);
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(2180f))));
    global4 = _wgslsmith_f_op_vec2_f32(floor(global2.a));
    return 4294967295u ^ (u_input.a.x >> (~(_wgslsmith_add_u32(u_input.a.x, 0u) >> (abs(83167u) % 32u)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = u_input.a.x;
    var var_0 = vec4<i32>(select(reverseBits(-abs(-4160i)), global2.d.x, false), ~global2.c, ~(-1i), abs(_wgslsmith_dot_vec2_i32(global2.d.zw, -_wgslsmith_add_vec2_i32(vec2<i32>(global2.d.x, -72183i), global2.d.wz))));
    var_0 = reverseBits(vec4<i32>(abs(-5797i), var_0.x, _wgslsmith_dot_vec2_i32((vec2<i32>(global2.c, var_0.x) & vec2<i32>(-8998i, -23701i)) | select(vec2<i32>(global2.b.x, 1i), vec2<i32>(-27085i, global2.b.x), vec2<bool>(true, false)), _wgslsmith_mod_vec2_i32(global2.b.zx, ~vec2<i32>(0i, -1i))), 1i));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.a)))), var_0.yzy, firstTrailingBit(var_0.x), ~max(vec4<i32>(1i, var_0.x, -22017i, -5362i) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 7796u, 9312u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 17620u, u_input.a.x)) % vec4<u32>(32u)), abs(vec4<i32>(var_0.x, global2.c, 0i, global2.c))));
    var var_2 = Struct_4(global1[_wgslsmith_index_u32(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x))) >> (func_1(global2.a.x) % 32u), 19u)], _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 922f, -1328f) - vec3<f32>(416f, var_1.a.x, 875f)))))), all(vec3<bool>(any(vec2<bool>(true, true)), true, true)), countOneBits(global2.d.zyx), vec3<i32>(2147483647i, _wgslsmith_mult_i32(_wgslsmith_div_i32(~1i, var_0.x), var_0.x), countOneBits(_wgslsmith_dot_vec3_i32(var_0.zyy & vec3<i32>(var_1.b.x, var_0.x, var_1.b.x), _wgslsmith_clamp_vec3_i32(vec3<i32>(global2.c, global2.c, 0i), var_0.yzy, var_0.xzw)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_1.a.x), vec2<i32>(1i, 83248i), countOneBits(vec3<u32>(60651u, 4294967295u, 1u)), countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(max(var_2.a.c, u_input.a.x), abs(0u), 1u), vec3<u32>(33887u & u_input.a.x, ~0u, var_2.a.c))), var_2.a.c);
}

