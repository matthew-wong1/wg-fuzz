struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<f32>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: vec2<i32> = vec2<i32>(2147483647i, -1i);

var<private> global2: vec3<bool> = vec3<bool>(true, true, true);

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> f32 {
    global0 = vec2<i32>(-(~(~u_input.c.x)), u_input.c.x >> (~(~(~4294967295u)) % 32u));
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-216f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1681f, -242f)), -666f));
    let var_1 = Struct_1(~u_input.a, ~firstTrailingBit(~vec4<u32>(u_input.a.x, 43703u, 1u, u_input.a.x)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-646f, 976f, 1033f))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-518f, 1920f, 723f), vec3<f32>(-269f, -276f, -1140f), global2.x)), _wgslsmith_div_vec3_f32(vec3<f32>(1691f, 3371f, -1000f), vec3<f32>(-150f, 838f, 590f))))))), true, _wgslsmith_mod_i32(6786i, 2147483647i));
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(107f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(1052f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(419f - -158f) + _wgslsmith_f_op_f32(-var_1.c.x))))))));
    var var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-997f)), _wgslsmith_f_op_f32(ceil(-144f)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-652f, -879f))) - _wgslsmith_f_op_f32(select(2532f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)), global2.x))) * var_1.c.x);
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: vec2<i32>) -> i32 {
    var var_0 = true;
    let var_1 = Struct_1(~(~_wgslsmith_add_vec3_u32(select(vec3<u32>(u_input.a.x, arg_0.b.b.x, 36156u), vec3<u32>(arg_0.b.b.x, u_input.b, 4294967295u), global2.x), ~arg_0.a.b.xwy)), (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, u_input.a.x, 4294967295u, 36364u) & arg_0.b.b, arg_0.a.b) << (arg_0.b.b % vec4<u32>(32u))) ^ abs(_wgslsmith_mod_vec4_u32(arg_0.b.b >> (arg_0.b.b % vec4<u32>(32u)), reverseBits(vec4<u32>(arg_0.a.a.x, 30508u, u_input.a.x, 0u)))), vec3<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(trunc(450f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1864f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-740f)), _wgslsmith_div_f32(arg_0.a.c.x, 155f), true))))), all(select(select(select(vec4<bool>(global2.x, arg_0.a.d, arg_0.b.d, global2.x), vec4<bool>(global2.x, true, true, false), vec4<bool>(arg_0.b.d, false, arg_0.a.d, false)), !vec4<bool>(global2.x, false, true, arg_0.b.d), true), select(select(vec4<bool>(true, true, false, arg_0.b.d), vec4<bool>(arg_0.a.d, global2.x, true, global2.x), arg_0.a.d), vec4<bool>(arg_0.b.d, arg_0.a.d, arg_0.a.d, false), all(vec2<bool>(true, arg_0.a.d))), all(!vec4<bool>(global2.x, arg_0.a.d, global2.x, global2.x)))), arg_0.b.e & -firstTrailingBit(arg_0.b.e));
    global1 = _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(-abs(0i), abs(arg_2.x) | abs(global1.x), abs(~u_input.c.x)), -min(u_input.c.x, _wgslsmith_mult_i32(global1.x, 22385i))), abs(arg_2) & abs(u_input.c.xz));
    let var_2 = select(vec3<bool>(true, var_1.d, arg_0.a.d), select(!select(!vec3<bool>(false, arg_0.a.d, true), !vec3<bool>(arg_0.a.d, true, arg_0.a.d), false), select(vec3<bool>(true, true, all(vec3<bool>(false, false, true))), !select(vec3<bool>(false, global2.x, false), vec3<bool>(arg_0.a.d, false, global2.x), false), !(!arg_0.b.d)), select(vec3<bool>(true, true || global2.x, !arg_0.a.d), select(!vec3<bool>(true, var_1.d, arg_0.b.d), vec3<bool>(arg_0.a.d, var_1.d, false), true), global2.x)), select(!(!(!vec3<bool>(var_1.d, true, true))), !vec3<bool>(global2.x, true, true), arg_0.b.d));
    var var_3 = arg_0.a.a.x;
    return ~(-arg_0.b.e);
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    global0 = u_input.c.xz;
    global0 = vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.c.x, -1i), _wgslsmith_add_i32(~_wgslsmith_clamp_i32(1i, u_input.c.x, u_input.c.x), _wgslsmith_div_i32(u_input.c.x, 1i))), countOneBits(reverseBits(-func_2(Struct_2(Struct_1(u_input.a, vec4<u32>(4294967295u, u_input.b, 18783u, u_input.a.x), vec3<f32>(-431f, 490f, -355f), false, global0.x), Struct_1(u_input.a, vec4<u32>(75254u, 41285u, 3874u, u_input.a.x), vec3<f32>(123f, -801f, -487f), false, global1.x)), 1913f, vec2<i32>(49112i, -46107i)))));
    var var_0 = 4294967295u;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))), _wgslsmith_f_op_f32(round(1236f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1109f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-1000f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2283f, -1301f) + -1220f)))));
    return Struct_1(~u_input.a, countOneBits(vec4<u32>(u_input.b, ~(~u_input.b), u_input.a.x, u_input.b)), vec3<f32>(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(-2373f - _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-128f - _wgslsmith_f_op_f32(f32(-1f) * -1334f))), !all(!vec4<bool>(true, arg_0.x, true, arg_0.x)), _wgslsmith_mod_i32(global1.x ^ _wgslsmith_clamp_i32(u_input.c.x, ~global1.x, global0.x), -25891i));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global0 = -select(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, firstLeadingBit(2147483647i)), u_input.c.ww, u_input.c.yy), -u_input.c.yw & min(select(u_input.c.yx, vec2<i32>(u_input.c.x, u_input.c.x), arg_0.d), u_input.c.wz), !global2.zz);
    global0 = select(vec2<i32>(~arg_0.e, 2147483647i), -firstTrailingBit(_wgslsmith_div_vec2_i32(u_input.c.xy, countOneBits(u_input.c.xz))), func_1(global2.zy).d);
    global2 = !vec3<bool>(global2.x, reverseBits(_wgslsmith_div_u32(u_input.a.x, 32626u)) >= _wgslsmith_mod_u32(40092u | u_input.a.x, 1u), true);
    let var_0 = Struct_2(Struct_1(firstTrailingBit(firstTrailingBit(vec3<u32>(u_input.a.x, arg_0.a.x, u_input.a.x) >> (vec3<u32>(0u, 5256u, 4294967295u) % vec3<u32>(32u)))), arg_0.b, func_1(!(!vec2<bool>(arg_0.d, true))).c, global2.x, 15033i), arg_0);
    global2 = vec3<bool>(var_0.b.d, any(!select(!vec3<bool>(false, arg_0.d, global2.x), vec3<bool>(true, true, true), select(vec3<bool>(arg_0.d, arg_0.d, arg_0.d), vec3<bool>(arg_0.d, global2.x, arg_0.d), vec3<bool>(false, true, arg_0.d)))), !all(vec4<bool>(global2.x, true, !global2.x, true)));
    return func_1(global2.zz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(global2.xy));
    global1 = -abs(select(u_input.c.xw, u_input.c.yz, var_0.d));
    var var_1 = Struct_2(func_1(!(!(!global2.zy))), Struct_1(countOneBits(~vec3<u32>(var_0.b.x, 1u, 3569u)), abs(func_1(vec2<bool>(true, global2.x)).b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1600f, -1553f, -261f))), true, global1.x));
    var_0 = var_1.a;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.c.x) + _wgslsmith_f_op_f32(868f * _wgslsmith_f_op_f32(min(var_0.c.x, _wgslsmith_f_op_f32(ceil(var_1.b.c.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(1117f, 54249u, vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(68262i, u_input.c.x, var_1.a.e, -22929i), u_input.c), select(u_input.c, vec4<i32>(-7118i, var_1.b.e, 1i, 1i), vec4<bool>(global2.x, false, var_1.b.d, false))) ^ _wgslsmith_dot_vec3_i32(-u_input.c.zzz, u_input.c.zyy), global1.x, 1i, abs(-_wgslsmith_mod_i32(global1.x, 1i))), 0u);
}

