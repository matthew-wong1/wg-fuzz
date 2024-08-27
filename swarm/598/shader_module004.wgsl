struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 28>;

var<private> global1: array<vec4<f32>, 16>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32) -> bool {
    var var_0 = vec4<i32>(firstTrailingBit(_wgslsmith_sub_i32(-42306i, _wgslsmith_mult_i32(1i, -1i))), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, _wgslsmith_mult_i32(u_input.b.x, 8664i)) >> (firstTrailingBit(select(u_input.a.xz, u_input.a.yw, vec2<bool>(true, false))) % vec2<u32>(32u)), abs(_wgslsmith_sub_vec2_i32(u_input.b.yx & vec2<i32>(u_input.b.x, 33120i), abs(vec2<i32>(-2147483647i, -1i))))), firstLeadingBit(~(~0i)), -1i);
    var var_1 = 1227i;
    var var_2 = ~var_0.zww;
    let var_3 = true;
    var var_4 = _wgslsmith_mult_vec4_u32(~u_input.a, firstTrailingBit(u_input.a) >> (u_input.a % vec4<u32>(32u)));
    return var_3;
}

fn func_2(arg_0: vec2<f32>) -> vec2<bool> {
    var var_0 = Struct_2(arg_0.x, Struct_1(vec4<bool>(true, true, true, true)), ~1u, Struct_1(!vec4<bool>(true, all(vec3<bool>(true, true, true)), 1119f == arg_0.x, true)), !(!((u_input.b.x > u_input.b.x) || true)));
    let var_1 = Struct_2(arg_0.x, var_0.d, ~u_input.a.x, Struct_1(!vec4<bool>(true, true, true, var_0.b.a.x)), false);
    let var_2 = true;
    var_0 = global0[_wgslsmith_index_u32(var_0.c, 28u)];
    global1 = array<vec4<f32>, 16>();
    return vec2<bool>(func_3(_wgslsmith_f_op_f32(252f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(369f, -1234f)), 179f)))), false);
}

fn func_1() -> vec2<bool> {
    var var_0 = Struct_1(vec4<bool>(true, (-368f >= _wgslsmith_f_op_f32(ceil(676f))) && false, all(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false))) & select(all(vec3<bool>(false, false, false)), any(vec3<bool>(false, false, false)), u_input.b.x >= u_input.b.x), true));
    var var_1 = ~(-42485i);
    let var_2 = -1i;
    let var_3 = global0[_wgslsmith_index_u32(~u_input.a.x, 28u)];
    var var_4 = -1401f;
    return select(select(var_3.b.a.xw, select(func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(199f, 1000f) + vec2<f32>(-1000f, var_3.a))), !func_2(vec2<f32>(1372f, var_3.a)), vec2<bool>(40084u < var_3.c, var_3.d.a.x)), func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_3.a, var_3.a), vec2<f32>(var_3.a, 890f)))))), var_3.b.a.yy, func_2(vec2<f32>(-719f, _wgslsmith_f_op_f32(-397f * var_3.a))));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    global0 = array<Struct_2, 28>();
    global0 = array<Struct_2, 28>();
    let var_0 = arg_3.a.wz;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_1.b.c, arg_1.b.c), 16u)], _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.a, -760f, -270f, -219f) * vec4<f32>(2337f, 236f, arg_1.b.a, arg_1.b.a)) - global1[_wgslsmith_index_u32(arg_1.b.c, 16u)]), select(!select(arg_3.a, vec4<bool>(true, arg_1.a.x, false, false), true), arg_3.a, arg_1.b.b.a))));
    let var_2 = Struct_3(!vec2<bool>(!(u_input.a.x <= 4294967295u), all(arg_1.b.d.a) | !arg_3.a.x), arg_1.b);
    return arg_1.b.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(u_input.a.x ^ ~_wgslsmith_mult_u32(u_input.a.x, 22348u), 28u)];
    var var_1 = Struct_1(var_0.d.a);
    global0 = array<Struct_2, 28>();
    var_1 = func_4(vec2<i32>(~(-2147483647i << (~u_input.a.x % 32u)), firstTrailingBit(~u_input.b.x & -14683i)), Struct_3(func_1(), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(618f, var_0.a)) + _wgslsmith_div_f32(-1442f, -1000f)), var_0.b, 1u, Struct_1(!vec4<bool>(true, false, var_1.a.x, var_1.a.x)), var_1.a.x)), func_1().x, Struct_1(!var_1.a));
    global1 = array<vec4<f32>, 16>();
    var var_2 = var_1.a.x;
    global0 = array<Struct_2, 28>();
    let var_3 = Struct_3(!func_4(~_wgslsmith_mod_vec2_i32(u_input.b.ww, vec2<i32>(21213i, u_input.b.x)), Struct_3(!vec2<bool>(var_1.a.x, var_1.a.x), Struct_2(var_0.a, Struct_1(var_0.b.a), 31037u, var_0.d, true)), true, var_0.b).a.ww, Struct_2(-1254f, var_0.b, u_input.a.x, func_4(-vec2<i32>(u_input.b.x, 0i), Struct_3(!vec2<bool>(var_0.d.a.x, false), global0[_wgslsmith_index_u32(~1u, 28u)]), false, Struct_1(!var_1.a)), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(min(global1[_wgslsmith_index_u32(~(~var_3.b.c), 16u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(-835f, 842f)), _wgslsmith_f_op_f32(var_0.a * var_0.a), -858f, -585f)))));
}

