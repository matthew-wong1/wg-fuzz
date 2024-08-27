struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<bool>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec4<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 12> = array<bool, 12>(true, true, false, false, false, true, true, true, false, false, false, false);

var<private> global1: Struct_3 = Struct_3(Struct_1(730f, -662f, vec3<bool>(true, true, false), vec3<i32>(i32(-2147483648), 2147483647i, 0i)), vec4<u32>(14502u, 57981u, 33527u, 4294967295u), vec4<f32>(-764f, 216f, 1578f, -1092f), vec4<bool>(true, false, true, false), Struct_1(-360f, -1235f, vec3<bool>(true, false, true), vec3<i32>(2147483647i, -11541i, -1i)));

var<private> global2: vec3<bool>;

var<private> global3: array<Struct_1, 19>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_2) -> vec3<bool> {
    var var_0 = firstLeadingBit(vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 4294967295u, 7591u), vec3<u32>(global1.b.x, global1.b.x, u_input.a)) >> (vec3<u32>(global1.b.x, u_input.c, 1u) % vec3<u32>(32u)), vec3<u32>(global1.b.x, u_input.c, 26853u)), min(4294967295u, ~(~u_input.a)), u_input.a, ~(0u | u_input.c) | 1u));
    return vec3<bool>(arg_1.b.c.x, true, !(!(!arg_1.b.c.x)));
}

fn func_3() -> u32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1799f), Struct_1(-354f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.a.a)) * -1330f), vec3<bool>(false, true, global2.x & global0[_wgslsmith_index_u32(1u, 12u)]), (global1.e.d | abs(u_input.d.zyz)) | (vec3<i32>(-2147483647i, 1i, -1i) << (~global1.b.xxy % vec3<u32>(32u)))));
    var var_1 = Struct_3(global1.a, global1.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.c * global1.c) * vec4<f32>(379f, -662f, global1.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - global1.a.a)))), vec4<bool>(global0[_wgslsmith_index_u32(0u, 12u)], global1.d.x, global1.e.c.x, global2.x), global1.a);
    var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1423f)) * _wgslsmith_f_op_f32(var_1.e.a + var_1.c.x))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1482f), _wgslsmith_f_op_f32(f32(-1f) * -570f))), Struct_1(_wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(ceil(648f))), _wgslsmith_div_f32(874f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.c.x, 1095f)))), vec3<bool>(var_0.a == _wgslsmith_div_f32(-1167f, -936f), all(global2.zz), (u_input.d.x >> (global1.b.x % 32u)) >= _wgslsmith_dot_vec2_i32(var_1.e.d.xx, u_input.b)), vec3<i32>(-9701i, 11286i, i32(-1i) * -2147483647i) ^ var_0.b.d));
    global2 = !vec3<bool>(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.b.x, var_1.b.x, 0u, 0u), firstTrailingBit(vec4<u32>(u_input.c, u_input.c, u_input.c, global1.b.x))) >= 66108u, var_0.b.c.x, global1.d.x);
    var var_2 = Struct_3(Struct_1(var_1.e.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-426f + _wgslsmith_f_op_f32(2228f * -375f)))), global1.d.zyy, vec3<i32>((var_0.b.d.x | global1.a.d.x) << (_wgslsmith_add_u32(var_1.b.x, 0u) % 32u), var_0.b.d.x, 2147483647i)), ~vec4<u32>(1u, global1.b.x, u_input.a, ~(44702u << (1u % 32u))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(global1.c, vec4<f32>(-1944f, -1037f, -437f, var_0.b.a))))) * global1.c))), global1.d, var_0.b);
    return max(0u, ~(~min(abs(var_1.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(28729u, var_1.b.x, 11736u, 46331u), vec4<u32>(global1.b.x, global1.b.x, 12613u, 4294967295u)))));
}

fn func_2(arg_0: bool) -> Struct_3 {
    var var_0 = abs(global1.b.zz);
    var_0 = abs(~global1.b.yx);
    let var_1 = 23855u;
    var var_2 = _wgslsmith_add_i32(~0i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(1i, _wgslsmith_mod_i32(-2147483647i, 43720i), i32(-1i) * -1i), abs(max(u_input.d.yxw, vec3<i32>(-2147483647i, -2147483647i, 2147483647i)))), ~max(0i, u_input.d.x));
    var var_3 = Struct_3(global1.a, vec4<u32>(abs(_wgslsmith_mult_u32(3050u, var_0.x ^ 4294967295u)), 23868u, var_0.x, _wgslsmith_clamp_u32(~func_3(), var_1, u_input.c)), vec4<f32>(global1.a.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.a.a, _wgslsmith_div_f32(1054f, global1.c.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-577f, 1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-438f))), _wgslsmith_f_op_f32(-global1.e.a)), global1.d, Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(global1.a.b, 506f), global1.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-392f - -299f) * 1041f)), global1.d.wwz, vec3<i32>(abs(global1.e.d.x), -12154i, -(2147483647i >> (global1.b.x % 32u)))));
    return Struct_3(global3[_wgslsmith_index_u32(var_1, 19u)], select(~var_3.b, vec4<u32>(_wgslsmith_clamp_u32(55382u, ~88901u, global1.b.x), global1.b.x, _wgslsmith_sub_u32(select(42656u, 4294967295u, var_3.d.x), func_3()), ~func_3()), global0[_wgslsmith_index_u32(49948u, 12u)]), var_3.c, !vec4<bool>(var_3.e.c.x, false, global1.a.c.x, !arg_0 == arg_0), Struct_1(-1109f, var_3.a.b, !select(vec3<bool>(var_3.e.c.x, var_3.e.c.x, global1.d.x), var_3.a.c, func_1(var_3.a.d, Struct_2(var_3.e.a, global1.a)).x), global1.e.d));
}

fn func_4(arg_0: Struct_3, arg_1: i32) -> vec2<u32> {
    let var_0 = vec4<bool>(false, global2.x, global2.x, any(!(!(!vec4<bool>(global0[_wgslsmith_index_u32(1u, 12u)], global2.x, arg_0.e.c.x, global0[_wgslsmith_index_u32(0u, 12u)])))));
    var var_1 = -u_input.d.x;
    var var_2 = vec2<u32>(abs(global1.b.x), global1.b.x);
    var_1 = -33395i;
    global2 = !func_2(all(arg_0.e.c.zz)).a.c;
    return reverseBits(max(~(~arg_0.b.yx << (vec2<u32>(arg_0.b.x, var_2.x) % vec2<u32>(32u))), _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(~arg_0.b.yx, ~vec2<u32>(arg_0.b.x, 0u)), max(~vec2<u32>(var_2.x, global1.b.x), ~global1.b.zx))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 19>();
    var var_0 = -1i;
    let var_1 = ~global1.b.x << (_wgslsmith_dot_vec3_u32(global1.b.xyx, select(~global1.b.yxw, global1.b.xxx, func_1(vec3<i32>(global1.e.d.x, u_input.d.x, 1i), Struct_2(-589f, global1.e))) << (global1.b.yzw % vec3<u32>(32u))) % 32u);
    var var_2 = global1.b.x;
    let var_3 = abs(u_input.d.zyx ^ u_input.d.wwz);
    var var_4 = _wgslsmith_mod_vec2_u32(func_4(func_2(!all(vec4<bool>(true, global1.a.c.x, true, global2.x))), global1.a.d.x), (~global1.b.zy & select(countOneBits(global1.b.xy), ~global1.b.zy, global1.a.c.yz)) >> (global1.b.zx % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~(-(~(-1108i & u_input.d.x))));
}

