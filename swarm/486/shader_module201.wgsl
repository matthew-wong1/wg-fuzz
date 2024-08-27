struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
    c: Struct_4,
    d: vec4<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 31>;

var<private> global1: Struct_2;

var<private> global2: Struct_4 = Struct_4(40700i);

var<private> global3: Struct_5;

var<private> global4: array<bool, 1>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<f32>, arg_2: vec2<u32>, arg_3: Struct_5) -> i32 {
    let var_0 = -5835i;
    global3 = arg_3;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1319f));
    global1 = Struct_2(global3.b.a, vec2<i32>(~(-global1.b.x), 3343i));
    var var_2 = vec3<bool>(!all(vec3<bool>(false, true, global1.a.x)) == true, select(any(select(select(vec3<bool>(true, arg_0.x, arg_3.a), vec3<bool>(global1.a.x, arg_0.x, arg_3.b.a.x), global3.b.a.x), !vec3<bool>(arg_0.x, true, true), global1.a.x)), any(vec4<bool>(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, 0u, global3.e.c.x, u_input.e.x), vec4<u32>(1u, 0u, 86346u, u_input.e.x)), 1u)], all(vec3<bool>(true, true, true)), global1.a.x, false)), true), false);
    return _wgslsmith_clamp_i32((_wgslsmith_sub_i32(-2147483647i, var_0 ^ var_0) >> ((_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.c, u_input.e.x)) ^ arg_2.x) % 32u)) >> ((global3.e.c.x & arg_3.e.c.x) % 32u), -max(~(i32(-1i) * -23008i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0, 24733i, -13158i) & u_input.d.zwx, u_input.d.zxx)), _wgslsmith_mult_i32(-global2.a, select(-2147483647i, global2.a, global1.a.x) & _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 0i), vec2<i32>(-40405i, -1i))) << (_wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(arg_3.e.c.yxy, vec3<u32>(global3.e.c.x, 58117u, u_input.e.x)), u_input.c) % 32u));
}

fn func_2(arg_0: f32) -> Struct_4 {
    var var_0 = 2147483647i ^ (-55719i | ((func_3(global1.a, vec4<f32>(-1642f, 525f, arg_0, 261f), u_input.e.yz, Struct_5(global3.b.a.x, Struct_2(global3.b.a, vec2<i32>(1i, -8616i)), global3.c, u_input.d, global3.e)) >> ((u_input.e.x | 4294967295u) % 32u)) | global3.b.b.x));
    var var_1 = ~select(global2.a, 41594i >> (_wgslsmith_clamp_u32(u_input.c, firstLeadingBit(u_input.c), ~44622u) % 32u), global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, ~(u_input.e.x & u_input.c), _wgslsmith_dot_vec2_u32(~u_input.e.xz, _wgslsmith_mult_vec2_u32(global3.e.c.zw, vec2<u32>(u_input.e.x, u_input.c)))), 1u)]);
    var var_2 = 2095i;
    var_0 = 0i;
    var var_3 = 72266u;
    return Struct_4(func_3(!global3.b.a, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, 821f, -130f, arg_0) - vec4<f32>(-571f, -304f, -1000f, global3.e.b))))), ~_wgslsmith_mult_vec2_u32(firstLeadingBit(vec2<u32>(0u, 100072u)), select(vec2<u32>(75819u, 99137u), vec2<u32>(2229u, 98037u), true)), Struct_5(global3.a, Struct_2(select(vec2<bool>(global4[_wgslsmith_index_u32(4294967295u, 1u)], true), vec2<bool>(false, false), true), global3.d.wx), global3.c, vec4<i32>(-1i) * -vec4<i32>(2147483647i, u_input.a.x, global3.c.a, 10312i), Struct_1(max(global2.a, 1i), _wgslsmith_f_op_f32(step(-1984f, arg_0)), abs(u_input.e)))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2) -> Struct_4 {
    let var_0 = Struct_5(global4[_wgslsmith_index_u32(global3.e.c.x, 1u)], Struct_2(global3.b.a, min(global3.d.yz, max(vec2<i32>(arg_1.b.x, arg_0.a), ~u_input.a))), func_2(312f), countOneBits(vec4<i32>(_wgslsmith_add_i32(-27633i, 15922i), 0i, global1.b.x, 8668i) << (_wgslsmith_mult_vec4_u32(global3.e.c ^ global3.e.c, abs(global3.e.c)) % vec4<u32>(32u))), Struct_1(~(-1i), _wgslsmith_f_op_f32(-global3.e.b), u_input.e));
    var var_1 = var_0.b;
    global2 = Struct_4(~arg_1.b.x);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(584f, 1492f, 712f, -174f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.e.b, var_0.e.b, var_0.e.b, var_0.e.b))) * vec4<f32>(global3.e.b, 588f, -445f, _wgslsmith_f_op_f32(ceil(365f)))) + vec4<f32>(var_0.e.b, global3.e.b, 723f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global3.e.b), 313f)))));
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-524f, global3.e.b, var_2.x, 962f), vec4<f32>(global3.e.b, 351f, var_2.x, -280f), vec4<bool>(true, global4[_wgslsmith_index_u32(u_input.c, 1u)], global3.a, false)))))));
    return global3.c;
}

fn func_1(arg_0: u32, arg_1: vec2<u32>, arg_2: bool) -> i32 {
    var var_0 = func_4(func_2(1093f), Struct_2(global3.b.a, -vec2<i32>(max(u_input.d.x, u_input.a.x), _wgslsmith_mult_i32(global3.d.x, global2.a))));
    let var_1 = Struct_3(global3.b, countOneBits(0u), Struct_1(_wgslsmith_sub_i32(global2.a, var_0.a), global3.e.b, vec4<u32>(_wgslsmith_div_u32(max(4294967295u, arg_0), 45222u), arg_0, 66896u, global3.e.c.x)), global3.b);
    let var_2 = ~(~u_input.b);
    var var_3 = Struct_5(firstLeadingBit(abs(arg_1.x)) > 1u, Struct_2(vec2<bool>(!global1.a.x, all(select(vec2<bool>(global3.a, false), vec2<bool>(global3.a, global3.b.a.x), vec2<bool>(var_1.d.a.x, global4[_wgslsmith_index_u32(arg_0, 1u)])))), -(vec2<i32>(-1i) * -vec2<i32>(2147483647i, global2.a))), Struct_4(-u_input.a.x), abs(firstTrailingBit(-u_input.d)), Struct_1(_wgslsmith_mod_i32(global3.e.a << (~arg_0 % 32u), -22211i), _wgslsmith_f_op_f32(-838f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(520f * global3.e.b) * _wgslsmith_f_op_f32(step(-992f, 160f)))), ~u_input.e));
    global4 = array<bool, 1>();
    return _wgslsmith_mod_i32(-5349i, _wgslsmith_dot_vec4_i32(-var_3.d, ~vec4<i32>(-1i, -1i, 1i, var_1.c.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.e;
    var var_1 = global3.e;
    let x = u_input.a;
    s_output = StorageBuffer(~global3.d.zyy, vec3<i32>(22515i, _wgslsmith_sub_i32(-31621i ^ max(global3.d.x, 85505i), u_input.b), func_1(1u, vec2<u32>(var_0.c.x, 1u), false)));
}

