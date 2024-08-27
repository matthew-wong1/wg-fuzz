struct Struct_1 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: i32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> u32 {
    let var_0 = -max(vec2<i32>(-1i, _wgslsmith_mod_i32(-u_input.b, u_input.b)), countOneBits(min(_wgslsmith_sub_vec2_i32(vec2<i32>(23050i, -1i), vec2<i32>(u_input.b, u_input.b)), select(vec2<i32>(11147i, -61082i), vec2<i32>(u_input.b, -5718i), vec2<bool>(false, false)))));
    global0 = -48442i;
    let var_1 = Struct_2(true, Struct_1(~firstTrailingBit(vec2<u32>(u_input.a, 1u) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))), 964f), _wgslsmith_mult_i32(_wgslsmith_mod_i32(-_wgslsmith_mod_i32(33405i, var_0.x), var_0.x), ~(-1i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1000f, 177f, 279f)))))))));
    var var_2 = vec4<i32>(-931i, _wgslsmith_dot_vec3_i32(-min(vec3<i32>(1i, 1i, 1i), ~vec3<i32>(var_0.x, var_0.x, 7804i)), vec3<i32>(~(-2147483647i << (u_input.a % 32u)), _wgslsmith_dot_vec4_i32(-vec4<i32>(var_0.x, -2147483647i, var_0.x, u_input.b), abs(vec4<i32>(var_0.x, u_input.b, 12079i, u_input.b))), ~(~var_1.c))), -288i, ~(-26681i));
    global0 = select(var_0.x, -((var_1.c ^ 11853i) >> (5564u % 32u)), select(true, var_1.a, !all(vec2<bool>(var_1.a, var_1.a))) & var_1.a);
    return ~0u;
}

fn func_2(arg_0: i32) -> u32 {
    global0 = u_input.b;
    var var_0 = Struct_1(abs(vec2<u32>(select(u_input.a, u_input.a, false) | min(u_input.a, 1u), _wgslsmith_sub_u32(~u_input.a, func_3()))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(780f + _wgslsmith_f_op_f32(sign(1565f)))));
    let var_1 = select(_wgslsmith_mult_vec4_i32(select(vec4<i32>(-1i) * -vec4<i32>(-25467i, u_input.b, 28012i, u_input.b), vec4<i32>(arg_0 >> (u_input.a % 32u), ~(-1i), countOneBits(-2147483647i), u_input.b), vec4<bool>(true, true, true, false)), ~select(-vec4<i32>(6388i, u_input.b, arg_0, -17087i), -vec4<i32>(0i, arg_0, arg_0, -1i), true)), vec4<i32>(_wgslsmith_div_i32(firstTrailingBit(~2147483647i), _wgslsmith_add_i32(abs(u_input.b), 66681i)), 25273i, arg_0, _wgslsmith_div_i32(1i, u_input.b)), vec4<bool>(true, !(!(var_0.b <= 959f)), all(vec2<bool>(true, false)), true));
    global0 = ~_wgslsmith_dot_vec4_i32(-var_1, var_1);
    var var_2 = Struct_2((_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b * var_0.b)) < _wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(-var_0.b))) && !(-u_input.b == _wgslsmith_mod_i32(2147483647i, arg_0)), Struct_1(~_wgslsmith_clamp_vec2_u32(var_0.a, select(var_0.a, var_0.a, vec2<bool>(true, false)), _wgslsmith_mult_vec2_u32(var_0.a, vec2<u32>(u_input.a, u_input.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1054f, 612f))))), ~_wgslsmith_dot_vec3_i32(select(vec3<i32>(arg_0, 24422i, 0i), vec3<i32>(-47146i, arg_0, 11374i), false), var_1.wyw) | (i32(-1i) * -2147483647i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.b), var_0.b, -1529f))));
    return 105669u;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: f32, arg_3: Struct_2) -> f32 {
    var var_0 = select(select(vec4<bool>(any(select(vec4<bool>(false, true, arg_3.a, true), vec4<bool>(false, arg_3.a, arg_3.a, arg_3.a), arg_3.a)), !(arg_3.a & arg_3.a), true, true & (34241u == arg_0.a.x)), select(vec4<bool>(arg_3.c != 1i, true, true, arg_3.a), !select(vec4<bool>(arg_3.a, arg_3.a, arg_3.a, arg_3.a), vec4<bool>(arg_3.a, arg_3.a, true, arg_3.a), vec4<bool>(true, arg_3.a, arg_3.a, false)), !select(vec4<bool>(true, true, false, arg_3.a), vec4<bool>(true, false, false, arg_3.a), vec4<bool>(arg_3.a, false, arg_3.a, false))), !(func_2(761i) == arg_3.b.a.x)), select(select(select(select(vec4<bool>(true, true, true, arg_3.a), vec4<bool>(false, arg_3.a, arg_3.a, arg_3.a), false), !vec4<bool>(false, true, arg_3.a, false), !vec4<bool>(arg_3.a, arg_3.a, arg_3.a, arg_3.a)), select(!vec4<bool>(false, arg_3.a, arg_3.a, false), vec4<bool>(true, arg_3.a, arg_3.a, true), true), !(!vec4<bool>(arg_3.a, true, arg_3.a, arg_3.a))), vec4<bool>(any(select(vec2<bool>(true, arg_3.a), vec2<bool>(arg_3.a, arg_3.a), vec2<bool>(true, false))), !(!arg_3.a), ~arg_3.b.a.x != _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 86170u), arg_3.b.a), false), !vec4<bool>(20030u <= u_input.a, false, all(vec2<bool>(arg_3.a, true)), arg_3.b.a.x <= 64466u)), select(select(!(!vec4<bool>(false, true, false, arg_3.a)), select(!vec4<bool>(true, arg_3.a, true, false), vec4<bool>(false, arg_3.a, arg_3.a, false), select(vec4<bool>(true, false, true, arg_3.a), vec4<bool>(arg_3.a, arg_3.a, arg_3.a, arg_3.a), arg_3.a)), select(vec4<bool>(arg_3.a, false, true, arg_3.a), !vec4<bool>(arg_3.a, false, arg_3.a, arg_3.a), select(vec4<bool>(arg_3.a, arg_3.a, arg_3.a, false), vec4<bool>(arg_3.a, true, arg_3.a, false), vec4<bool>(true, arg_3.a, false, false)))), vec4<bool>(any(select(vec4<bool>(true, arg_3.a, false, false), vec4<bool>(arg_3.a, true, true, arg_3.a), arg_3.a)), !(arg_0.b != 1015f), true, arg_3.a), any(!vec3<bool>(false, false, arg_3.a))));
    var_0 = vec4<bool>(false, (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(142f - arg_3.b.b) + _wgslsmith_f_op_f32(round(arg_0.b))) == -656f) & (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -775f) - arg_0.b) > _wgslsmith_f_op_f32(ceil(arg_2))), _wgslsmith_sub_i32(~_wgslsmith_div_i32(arg_3.c, 3201i), abs(~u_input.b)) > firstTrailingBit(arg_1.x), u_input.b == reverseBits(_wgslsmith_mult_i32(0i, ~0i)));
    let var_1 = arg_0;
    var_0 = vec4<bool>(!any(!vec3<bool>(var_0.x, false, true)), select(false, true, all(var_0.xwz)), !var_0.x, arg_3.a);
    var var_2 = Struct_1(_wgslsmith_mult_vec2_u32(reverseBits(select(arg_0.a, vec2<u32>(0u, 8805u), var_0.x)), vec2<u32>(_wgslsmith_div_u32(47215u, 10883u), 1u)) & ~arg_0.a, 878f);
    return 1000f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(vec2<u32>(42053u, u_input.a), -408f), vec4<i32>(1i, u_input.b, 8571i, u_input.b), 878f, Struct_2(true, Struct_1(vec2<u32>(1u, u_input.a), 105f), u_input.b, vec3<f32>(501f, -487f, -1176f))))) + 1f))));
    var var_1 = Struct_2(all(select(vec2<bool>(false, all(vec3<bool>(false, false, true))), select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(false, false), vec2<bool>(true, true)), select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(false, true)))), Struct_1(_wgslsmith_sub_vec2_u32(select(~vec2<u32>(48120u, u_input.a), vec2<u32>(u_input.a, 1u), any(vec3<bool>(true, false, true))), reverseBits(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 67629u), vec2<u32>(1u, u_input.a)))), 842f), -abs(u_input.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1354f, 149f, -1000f))) * vec3<f32>(1f, 1f, 1f))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.d.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-1000f))))))));
    global0 = var_1.c;
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.x)))), 813f, any(select(vec3<bool>(false, any(vec4<bool>(var_1.a, var_1.a, var_1.a, false)), !var_1.a), select(!vec3<bool>(var_1.a, var_1.a, var_1.a), vec3<bool>(false, false, false), select(var_1.a, true, false)), var_1.a))));
    let var_3 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-604f + _wgslsmith_f_op_f32(var_2 + 748f))), var_1.b.b)), -1057f, 52763i);
}

