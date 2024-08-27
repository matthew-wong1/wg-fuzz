struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: vec3<u32>) -> i32 {
    var var_0 = 14648i;
    var var_1 = Struct_3(arg_1, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2061f, arg_2.x, arg_2.x, _wgslsmith_f_op_f32(global0.x + global0.x)) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, arg_2.x, arg_2.x, global0.x) + vec4<f32>(arg_2.x, arg_2.x, global0.x, arg_2.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, 2616f, arg_2.x, arg_2.x)), arg_1.b <= 2147483647i)))));
    return ~(-31597i ^ -(~arg_1.a.x));
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1013f, _wgslsmith_f_op_f32(-global0.x), global0.x, global0.x)))) * vec4<f32>(_wgslsmith_f_op_f32(-1126f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(global0.x)), global0.x))), 293f, -267f, _wgslsmith_f_op_f32(141f - _wgslsmith_f_op_f32(-global0.x))));
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-536f, var_0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.x, var_0.x)) * _wgslsmith_f_op_f32(max(908f, global0.x))))), _wgslsmith_f_op_f32(trunc(var_0.x))));
    let var_1 = _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(select(min(vec3<i32>(-4644i, -18015i, 2147483647i) ^ vec3<i32>(13381i, u_input.a.x, -15124i), vec3<i32>(u_input.b, -6052i, -23149i) | vec3<i32>(u_input.b, u_input.b, u_input.a.x)), vec3<i32>(func_3(vec4<u32>(4294967295u, u_input.c, 62009u, u_input.c), Struct_2(vec2<i32>(-2147483647i, -748i), 1i), var_0.ww, vec3<u32>(10797u, 4294967295u, u_input.c)), u_input.b >> (u_input.c % 32u), -16449i), vec3<bool>(true, true, true)), vec3<i32>(_wgslsmith_mod_i32(2568i, 1i), _wgslsmith_clamp_i32(max(u_input.a.x, -5696i), ~(-16963i), u_input.b), u_input.b), abs(vec3<i32>(36767i, 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 3517i), vec2<i32>(0i, u_input.a.x))))), ~vec3<i32>(u_input.a.x, _wgslsmith_clamp_i32(2147483647i, ~u_input.b, u_input.b), u_input.b));
    var var_2 = any(select(vec3<bool>(all(vec4<bool>(true, true, true, true)), true, any(vec2<bool>(false, true)) | true), !select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), ~reverseBits(u_input.c) != (76131u & max(u_input.c, 17483u))));
    var var_3 = !(!vec3<bool>(true, !select(true, true, true), true));
    return Struct_2(_wgslsmith_div_vec2_i32(u_input.a, u_input.a) | _wgslsmith_mod_vec2_i32(~vec2<i32>(var_1.x, var_1.x), countOneBits(~vec2<i32>(u_input.b, u_input.a.x))), ~42124i);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<u32>) -> vec2<bool> {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(1f, 160f, arg_1.c.x)), _wgslsmith_f_op_f32(-arg_1.b), global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1003f)) * global0.x))) - vec4<f32>(_wgslsmith_f_op_f32(global0.x * -324f), arg_1.b, arg_1.b, arg_1.b));
    var var_0 = arg_1.c.x;
    var var_1 = vec3<f32>(global0.x, 543f, 1000f);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(var_1.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -442f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b)))));
    let var_3 = Struct_1(i32(-1i) * -u_input.a.x, global0.x, !select(arg_1.c, arg_1.c, true));
    return !arg_1.c.zy;
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: u32, arg_3: i32) -> vec4<f32> {
    let var_0 = !select(!select(!vec2<bool>(false, arg_0), select(vec2<bool>(arg_0, true), vec2<bool>(true, true), vec2<bool>(true, arg_0)), !vec2<bool>(true, arg_0)), func_4(func_2(), Struct_1(_wgslsmith_mod_i32(u_input.b, -17541i), -1358f, !vec4<bool>(true, arg_0, arg_0, true)), firstLeadingBit(~vec2<u32>(arg_2, arg_2))), all(vec4<bool>(arg_0 != arg_0, arg_0, arg_0, true)));
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-599f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1127f, arg_1) - _wgslsmith_f_op_f32(abs(1945f))) - _wgslsmith_f_op_f32(abs(-234f))), global0.x, 1511f));
    let var_1 = _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(select(-vec3<i32>(-23808i, 43037i, -30694i), ~vec3<i32>(u_input.a.x, 0i, -48117i), vec3<bool>(true, false, false)), -(~vec3<i32>(21056i, u_input.a.x, arg_3))), vec3<i32>(arg_3, countOneBits(u_input.a.x), u_input.b)) << (~(~vec3<u32>(~arg_2, _wgslsmith_mod_u32(16114u, 54879u), _wgslsmith_clamp_u32(arg_2, 0u, arg_2))) % vec3<u32>(32u));
    let var_2 = Struct_1(func_3(abs(firstLeadingBit(abs(vec4<u32>(43599u, 26085u, u_input.c, 0u)))), Struct_2(var_1.xz, var_1.x), _wgslsmith_f_op_vec2_f32(-global0.xz), reverseBits(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_2, u_input.c, u_input.c) >> (vec3<u32>(arg_2, u_input.c, 0u) % vec3<u32>(32u)), vec3<u32>(arg_2, 4294967295u, u_input.c)))), global0.x, vec4<bool>(all(vec4<bool>(true, true, false, true)) & arg_0, false, var_0.x, !all(!vec3<bool>(var_0.x, var_0.x, arg_0))));
    var var_3 = func_2();
    return vec4<f32>(_wgslsmith_f_op_f32(select(global0.x, arg_1, (-1i & _wgslsmith_clamp_i32(arg_3, var_3.b, arg_3)) < _wgslsmith_sub_i32(-1i, var_3.a.x))), -126f, var_2.b, _wgslsmith_div_f32(1f, var_2.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(Struct_2(vec2<i32>(u_input.a.x, u_input.a.x), _wgslsmith_clamp_i32(u_input.a.x, _wgslsmith_clamp_i32(u_input.b, u_input.a.x, u_input.a.x), abs(-31571i)) << (4294967295u % 32u)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(548f, 105f, global0.x, global0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(true, global0.x, 1u, 24859i))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-1000f - global0.x), _wgslsmith_f_op_f32(-1892f + -1249f), _wgslsmith_f_op_f32(-global0.x)))));
    global0 = var_0.b;
    let var_1 = vec2<bool>(true, true);
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.x, var_0.b.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(448f - var_0.b.x))), _wgslsmith_f_op_f32(min(-252f, -1112f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.x, 420f, -1455f, -735f)))) * vec4<f32>(_wgslsmith_f_op_f32(floor(global0.x)), 1952f, _wgslsmith_f_op_f32(step(736f, var_0.b.x)), _wgslsmith_f_op_f32(sign(758f)))) * var_0.b));
    var var_2 = ~(~min(max(~0u, u_input.c), 53906u));
    let var_3 = !any(!select(vec2<bool>(var_1.x, true), var_1, var_1.x));
    var var_4 = ~(abs(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.c, u_input.c), vec3<u32>(38194u, 53925u, 1u)), ~u_input.c, 44539u)) << (select(abs(reverseBits(vec3<u32>(u_input.c, u_input.c, 4294967295u))), ~vec3<u32>(u_input.c, 0u, u_input.c), vec3<bool>(false, !var_1.x, all(vec3<bool>(true, var_1.x, var_3)))) % vec3<u32>(32u)));
    let var_5 = abs(var_4.yx);
    let x = u_input.a;
    s_output = StorageBuffer(min(1u, firstTrailingBit(select(80984u, firstTrailingBit(1u), all(vec4<bool>(var_3, false, var_3, var_3))))), select(func_3(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(35436u, 0u, 4294967295u, var_5.x), vec4<u32>(0u, 1u, 42102u, 4294967295u)), _wgslsmith_add_u32(75845u, 0u), var_5.x, 27005u), var_0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_0.b.xx, var_0.b.xy) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.x, var_0.b.x)))), firstLeadingBit(abs(vec3<u32>(u_input.c, var_4.x, var_5.x)))), firstTrailingBit(u_input.b), true));
}

