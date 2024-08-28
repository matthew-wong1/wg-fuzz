struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: vec2<u32>,
    d: u32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_2,
    c: bool,
    d: vec2<i32>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: i32,
    c: Struct_2,
    d: Struct_3,
    e: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 12>;

var<private> global3: array<Struct_1, 1>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: vec2<u32>) -> vec2<f32> {
    let var_0 = global1.c.x == 64553u;
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(global0.x, global0.x)), global0.x, -409f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 297f, global0.x) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.x, global0.x, global0.x), vec3<f32>(1286f, -341f, 419f))))))), arg_1, global3[_wgslsmith_index_u32(~43808u, 1u)], global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_1.a.x, 57792u), 12u)]);
    let var_2 = var_1.d.a.yww;
    var var_3 = vec2<bool>(!global1.b.x, !(!(!(arg_1.a.x <= arg_3.x))));
    global1 = var_1.d;
    return var_1.a.xy;
}

fn func_2(arg_0: vec2<bool>, arg_1: bool) -> Struct_2 {
    global0 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1408f - global0.x), -1000f)), 1000f);
    global3 = array<Struct_1, 1>();
    global2 = array<Struct_1, 12>();
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(~min(4294967295u, global1.d), Struct_2(global1.c ^ global1.c), _wgslsmith_sub_vec2_u32(global1.c, ~reverseBits(global1.c)), global1.c)));
    var var_0 = Struct_4(global1.c, Struct_2(global1.c), false, (vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(12270i, 14993i, -25994i), vec3<i32>(u_input.a, u_input.a, -16847i)), -1i) >> (_wgslsmith_div_vec2_u32(vec2<u32>(global1.d, 21691u), vec2<u32>(global1.d, global1.d)) % vec2<u32>(32u))) << (firstTrailingBit(~(global1.c ^ global1.c)) % vec2<u32>(32u)));
    return Struct_2(vec2<u32>(global1.d, ~_wgslsmith_add_u32(var_0.a.x & global1.c.x, _wgslsmith_mult_u32(4294967295u, global1.c.x))));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: vec2<i32>, arg_3: Struct_4) -> vec4<f32> {
    var var_0 = ~vec3<u32>(_wgslsmith_add_u32(_wgslsmith_add_u32(~64343u, 1080u), global1.d), firstTrailingBit(abs(global1.c.x & 46237u)), _wgslsmith_dot_vec2_u32(vec2<u32>(~23455u, arg_0.a.x), max(vec2<u32>(33996u, global1.c.x), arg_0.a)));
    let var_1 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-arg_1), global0.x, 1733f), arg_3.b, Struct_1(vec4<bool>(global1.a.x, all(!global1.a.xzx), !any(global1.a), true), select(vec3<bool>(var_0.x < 113703u, true, true), select(global1.a.yyz, select(global1.a.yzy, vec3<bool>(false, false, true), vec3<bool>(false, arg_3.c, true)), global1.a.yxz), any(!vec3<bool>(global1.a.x, true, global1.a.x))), vec2<u32>(arg_0.a.x, firstLeadingBit(34244u)), var_0.x), Struct_1(vec4<bool>(global1.b.x, false, true, global1.a.x), global1.b, ~(~global1.c), 12127u));
    var var_2 = abs(select(_wgslsmith_sub_vec2_i32(-_wgslsmith_clamp_vec2_i32(vec2<i32>(14316i, arg_3.d.x), vec2<i32>(arg_2.x, arg_2.x), arg_3.d), vec2<i32>(arg_3.d.x, _wgslsmith_clamp_i32(arg_3.d.x, u_input.a, -42935i))), min(vec2<i32>(-arg_2.x, -21896i), select(arg_2, arg_2, true)), select(select(!vec2<bool>(true, var_1.d.b.x), !var_1.c.a.xz, select(global1.b.yx, var_1.c.a.xy, vec2<bool>(global1.a.x, false))), vec2<bool>(global1.a.x, true), select(select(vec2<bool>(var_1.c.b.x, arg_3.c), var_1.c.a.wy, true), select(global1.a.zy, global1.a.wy, vec2<bool>(false, var_1.d.b.x)), var_1.c.b.zx))));
    let var_3 = global3[_wgslsmith_index_u32(4294967295u, 1u)];
    var var_4 = max(vec2<u32>(max(4294967295u, ~_wgslsmith_add_u32(global1.d, var_1.c.d)), 0u), vec2<u32>(arg_0.a.x, var_3.d));
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -756f) * 508f), -1896f, -772f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-1118f)))), _wgslsmith_f_op_f32(select(-1000f, global0.x, all(vec2<bool>(var_3.b.x, true)))), var_3.b.x))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(773f, global0.x, arg_1, arg_1) - vec4<f32>(-1000f, -616f, -1033f, 940f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 927f, arg_1, arg_1)) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(559f, arg_1, 678f, 903f)))))));
}

fn func_1() -> f32 {
    global2 = array<Struct_1, 12>();
    let var_0 = u_input.a >> (_wgslsmith_dot_vec4_u32(~abs(vec4<u32>(global1.d, 0u, global1.d, global1.d)) << (~(~vec4<u32>(26221u, global1.c.x, global1.d, 11889u)) % vec4<u32>(32u)), vec4<u32>(global1.c.x, 0u, ~_wgslsmith_div_u32(global1.d, 4294967295u), ~global1.c.x)) % 32u);
    let var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1014f, global0.x, 1963f, 1285f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global0.x, global0.x, -648f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(2543f, global0.x, -906f, global0.x))), _wgslsmith_f_op_vec4_f32(func_4(func_2(global1.b.yy, true), _wgslsmith_f_op_f32(min(1153f, _wgslsmith_f_op_f32(f32(-1f) * -321f))), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(53485i, -29398i), vec2<i32>(27475i, -2147483647i), vec2<i32>(var_0, u_input.a)), Struct_4(vec2<u32>(1u, global1.d), Struct_2(vec2<u32>(global1.c.x, 20560u)), true, vec2<i32>(var_0, -25144i)))), all(!select(vec4<bool>(false, global1.b.x, false, false), vec4<bool>(true, global1.b.x, global1.a.x, global1.b.x), false)))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(157f, -316f) * _wgslsmith_f_op_f32(abs(1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.x))), -1203f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.x))))))));
    var var_2 = vec4<i32>(u_input.a, 0i, 0i, var_0 << (~global1.d % 32u));
    var var_3 = global2[_wgslsmith_index_u32(global1.d, 12u)];
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_4(Struct_2(var_3.c & global1.c), global0.x, vec2<i32>(-1i) * -vec2<i32>(1i, -1i), Struct_4(reverseBits(var_3.c), func_2(vec2<bool>(false, global1.a.x), global1.a.x), global1.b.x, var_2.yy))).x + -489f));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 1>();
    let var_0 = _wgslsmith_div_u32(4294967295u, global1.d);
    let var_1 = Struct_3(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(exp2(global0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1098f))))), Struct_2(global1.c), Struct_1(global1.a, global1.a.xxw, global1.c, firstTrailingBit(func_2(!vec2<bool>(global1.a.x, false), true).a.x)), global2[_wgslsmith_index_u32(~(~4294967295u), 12u)]);
    var var_2 = firstTrailingBit(~(firstTrailingBit(countOneBits(u_input.a)) ^ ((i32(-1i) * -1i) ^ -u_input.a)));
    let var_3 = var_1.b;
    var var_4 = all(vec2<bool>(!var_1.c.a.x, false));
    var var_5 = 4815i;
    let x = u_input.a;
    s_output = StorageBuffer(1i, vec3<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.x, -1362f, all(vec4<bool>(var_1.d.b.x, true, var_1.c.b.x, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x))), ~(reverseBits(~vec3<i32>(2147483647i, 0i, u_input.a)) & select(vec3<i32>(u_input.a, 1i, u_input.a) ^ vec3<i32>(-22293i, 1i, u_input.a), ~vec3<i32>(u_input.a, 2147483647i, u_input.a), vec3<bool>(true, false, var_1.c.a.x))), firstLeadingBit(abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, global1.c.x, 47873u, var_3.a.x), vec4<u32>(var_3.a.x, var_0, var_0, 0u), vec4<u32>(0u, var_3.a.x, var_0, var_0)) << ((vec4<u32>(global1.c.x, global1.c.x, 1u, 5576u) ^ vec4<u32>(24326u, var_0, 4294967295u, var_3.a.x)) % vec4<u32>(32u)))));
}

