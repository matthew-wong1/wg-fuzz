struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: vec4<bool>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: i32,
    c: Struct_3,
    d: Struct_3,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: Struct_3,
    d: vec3<bool>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 3>;

var<private> global1: array<f32, 8> = array<f32, 8>(626f, -1000f, 116f, 1697f, 1063f, 2061f, -331f, 282f);

var<private> global2: Struct_5 = Struct_5(vec4<u32>(53668u, 71078u, 27817u, 4294967295u), vec3<f32>(392f, -337f, -238f), Struct_3(Struct_2(Struct_1(-100f), vec2<u32>(1u, 0u), vec2<bool>(true, true)), vec3<bool>(false, false, true), vec4<bool>(false, false, true, true)), vec3<bool>(false, false, true), vec3<i32>(29834i, i32(-2147483648), -1i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec2<bool> {
    global0 = array<vec3<u32>, 3>();
    var var_0 = global1[_wgslsmith_index_u32(global2.a.x, 8u)];
    let var_1 = global2.e.x;
    var var_2 = global2.c.a.a;
    var var_3 = global2.e.x >> (_wgslsmith_div_u32(~(~global2.c.a.b.x), 10587u) % 32u);
    return global2.c.c.yw;
}

fn func_2(arg_0: vec2<f32>) -> u32 {
    global2 = Struct_5(global2.a, global2.b, Struct_3(Struct_2(Struct_1(-387f), ~global2.a.yy ^ global2.a.zy, select(!global2.d.zz, func_3(), u_input.a.x > 38156u)), global2.d, !(!vec4<bool>(global2.c.b.x, true, global2.d.x, false))), vec3<bool>(select((0u << (global2.a.x % 32u)) < global2.c.a.b.x, global2.c.b.x, false), false, global2.c.b.x), global2.e);
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(global2.c.a.b.x, 8u)]))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f - 795f), -654f, global2.d.x)))))));
    let var_1 = -7483i;
    global1 = array<f32, 8>();
    let var_2 = 1u;
    return reverseBits(countOneBits(var_2));
}

fn func_4(arg_0: vec3<u32>, arg_1: u32, arg_2: bool, arg_3: f32) -> i32 {
    let var_0 = global2.c;
    var var_1 = vec3<bool>(!arg_2, var_0.c.x, false);
    let var_2 = 1i;
    global1 = array<f32, 8>();
    var var_3 = _wgslsmith_f_op_vec2_f32(select(global2.b.yx, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, 1000f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global2.b.zx, global2.b.xz, vec2<bool>(var_1.x, var_0.b.x))) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1754f, -872f)))) - global2.b.xy), vec2<bool>(!var_0.c.x, select(true, all(var_0.c), 639f < global1[_wgslsmith_index_u32(var_0.a.b.x, 8u)])))), var_0.b.yy));
    return global2.e.x;
}

fn func_5(arg_0: i32) -> Struct_4 {
    return Struct_4(global2.e.zy, global2.e.x, global2.c, global2.c);
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<i32>) -> Struct_2 {
    var var_0 = reverseBits(abs(~global2.a.x | _wgslsmith_sub_u32(global2.a.x, 4294967295u)) ^ _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global2.c.a.b.x, 4294967295u, global2.c.a.b.x, 4294967295u), u_input.a), u_input.a), abs(_wgslsmith_sub_u32(u_input.a.x, global2.c.a.b.x))));
    var var_1 = func_5(func_4(~(~min(global2.a.ywx, vec3<u32>(0u, u_input.a.x, global2.c.a.b.x))), ~func_2(global2.b.zy), true, 381f));
    let var_2 = min(vec4<i32>(arg_1.x, _wgslsmith_dot_vec2_i32(global2.e.yx, _wgslsmith_mod_vec2_i32(abs(arg_1), reverseBits(global2.e.xy))), arg_1.x, func_5(_wgslsmith_mult_i32(global2.e.x | -1i, -2147483647i)).b), countOneBits(max(vec4<i32>(abs(35539i), -7657i, var_1.a.x, global2.e.x), _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.x, 2648i, 17381i, arg_1.x), vec4<i32>(global2.e.x, 3854i, var_1.a.x, global2.e.x)), countOneBits(vec4<i32>(global2.e.x, 45474i, -4331i, 370i))))));
    let var_3 = func_5(-37537i).d.c;
    var var_4 = func_3().x;
    return Struct_2(func_5(-1i | _wgslsmith_div_i32(-28360i, -var_2.x)).c.a.a, global2.c.a.b, var_3.xy);
}

fn func_6(arg_0: Struct_3, arg_1: vec3<i32>) -> u32 {
    global0 = array<vec3<u32>, 3>();
    let var_0 = true;
    global1 = array<f32, 8>();
    var var_1 = global2.e.x >> (41201u % 32u);
    global0 = array<vec3<u32>, 3>();
    return select(u_input.a.x, min(1u, _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(global2.a, vec4<u32>(35767u, 1u, 1u, 1u)), _wgslsmith_dot_vec3_u32(global2.a.yzx, u_input.a.xyw), select(4294967295u, 11252u, true)), 27813u, ~(arg_0.a.b.x ^ 4294967295u))), false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(~global2.a.x, 1u, 77677u)), ~global2.a.wwx) & ~(~4294967295u);
    var var_1 = global2.b.x;
    let var_2 = vec2<u32>(func_6(Struct_3(func_1(!global2.c.b, global2.e.yx), !global2.d, select(global2.c.c, global2.c.c, all(vec2<bool>(true, true)))), vec3<i32>(~0i, global2.e.x, ~_wgslsmith_dot_vec3_i32(vec3<i32>(-21087i, -26099i, global2.e.x), vec3<i32>(global2.e.x, global2.e.x, 0i)))), _wgslsmith_clamp_u32((1u ^ global2.a.x) | _wgslsmith_mod_u32(_wgslsmith_mod_u32(global2.a.x, u_input.a.x), global2.c.a.b.x >> (var_0 % 32u)), global2.c.a.b.x, abs(u_input.a.x) << (10822u % 32u)));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, global1[_wgslsmith_index_u32(4294967295u, 8u)], -224f) + _wgslsmith_f_op_vec3_f32(global2.b - global2.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(656f, global2.b.x, 964f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 8u)], global1[_wgslsmith_index_u32(48421u, 8u)], 1567f), vec3<f32>(-1163f, -1078f, global1[_wgslsmith_index_u32(var_0, 8u)])))))) * _wgslsmith_f_op_vec3_f32(trunc(global2.b)));
    let var_4 = _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(firstTrailingBit(global2.e.xz), reverseBits(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, global2.e.x), vec2<i32>(1i, global2.e.x)))), (global2.e.x & -30347i) & func_4(u_input.a.zzw >> (vec3<u32>(0u, 1u, var_0) % vec3<u32>(32u)), 57530u, global2.e.x == global2.e.x, _wgslsmith_f_op_f32(abs(global2.b.x)))), _wgslsmith_mod_vec2_i32(global2.e.xx, ~global2.e.xy));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_3.x))), 102200u, func_6(Struct_3(func_1(global2.d, var_4), vec3<bool>(true, false, global2.c.a.c.x), !vec4<bool>(true, global2.d.x, false, global2.c.b.x)), min(_wgslsmith_clamp_vec3_i32(global2.e, global2.e, vec3<i32>(global2.e.x, var_4.x, var_4.x)), vec3<i32>(20175i, global2.e.x, 2147483647i) & global2.e)) | 1u, _wgslsmith_f_op_f32(min(global2.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-159f - -977f) - var_3.x))));
}

