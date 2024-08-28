struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool) -> bool {
    let var_0 = vec2<u32>(~(~abs(_wgslsmith_mult_u32(107735u, 23088u))), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~max(vec3<u32>(9725u, 0u, 1u), u_input.a), u_input.a), ~_wgslsmith_dot_vec3_u32(vec3<u32>(47522u, u_input.a.x, 1u), ~vec3<u32>(1u, 56458u, 0u))));
    global0 = array<Struct_1, 16>();
    var var_1 = Struct_2(global0[_wgslsmith_index_u32(0u, 16u)], _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-433f, -498f, 274f), vec3<f32>(404f, -2380f, -310f)))))), Struct_1(~firstTrailingBit(~vec4<u32>(43417u, 0u, u_input.a.x, u_input.a.x)), true, _wgslsmith_mult_vec3_i32(firstTrailingBit(vec3<i32>(0i, -29972i, 0i)), vec3<i32>(2147483647i, 11044i, -14901i)) | _wgslsmith_sub_vec3_i32(~vec3<i32>(-1i, -1i, -2147483647i), min(vec3<i32>(22402i, -9866i, 9905i), vec3<i32>(22100i, -1i, -1i)))));
    var var_2 = _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), ~countOneBits(vec2<u32>(0u, var_1.c.a.x))), min(~var_0.x, reverseBits(u_input.a.x)) & u_input.a.x, var_1.c.a.x), _wgslsmith_sub_vec3_u32(~vec3<u32>(select(var_1.a.a.x, var_1.c.a.x, true), ~0u, _wgslsmith_add_u32(u_input.a.x, 1346u)), vec3<u32>(~var_0.x >> (~u_input.a.x % 32u), _wgslsmith_sub_u32(var_1.c.a.x, ~var_0.x), countOneBits(47160u))));
    let var_3 = !vec3<bool>(var_1.a.b, select(true, all(!vec4<bool>(arg_0, true, false, true)), 1182f > _wgslsmith_f_op_f32(-var_1.b.x)), true);
    return !(!var_1.a.b);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>) -> bool {
    var var_0 = func_3(arg_0.b);
    let var_1 = arg_0.b;
    global0 = array<Struct_1, 16>();
    var var_2 = Struct_2(Struct_1(~_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a.x, 26100u, 16738u, u_input.a.x), ~arg_0.a), ((false || var_1) & true) || arg_0.b, countOneBits(-vec3<i32>(arg_0.c.x, -2147483647i, -1i))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(290f, _wgslsmith_f_op_f32(-arg_1.x), arg_1.x) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(298f, 334f, arg_1.x)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1.x, arg_1.x, 469f), vec3<f32>(arg_1.x, arg_1.x, arg_1.x))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_1.x, 1795f, 348f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, arg_1.x, 467f) - vec3<f32>(1178f, 229f, arg_1.x))))))), Struct_1(select(arg_0.a, ~(arg_0.a << (arg_0.a % vec4<u32>(32u))), var_1), true, vec3<i32>(0i, -30685i, arg_0.c.x)));
    var var_3 = Struct_2(Struct_1(var_2.c.a, false, select(_wgslsmith_mult_vec3_i32(vec3<i32>(-16843i, 32181i, -7021i), vec3<i32>(arg_0.c.x, arg_0.c.x, var_2.a.c.x)), arg_0.c, !vec3<bool>(false, var_1, false)) & ~vec3<i32>(2147483647i, arg_0.c.x, arg_0.c.x)), vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(f32(-1f) * -1454f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(176f, 937f) + arg_1.x)), var_2.c);
    return var_1 | true;
}

fn func_1(arg_0: Struct_1) -> vec4<u32> {
    global0 = array<Struct_1, 16>();
    var var_0 = !vec4<bool>(arg_0.b, !arg_0.b, arg_0.b, arg_0.b);
    var var_1 = _wgslsmith_dot_vec2_u32(arg_0.a.zw, arg_0.a.xw);
    let var_2 = Struct_1(~(~(~(vec4<u32>(30825u, 40185u, arg_0.a.x, arg_0.a.x) ^ arg_0.a))), false, arg_0.c);
    var_0 = select(vec4<bool>(arg_0.b, var_2.b, !select(var_2.c.x < arg_0.c.x, true, any(vec4<bool>(var_0.x, var_2.b, false, var_2.b))), var_0.x), select(!(!(!vec4<bool>(true, var_2.b, arg_0.b, var_0.x))), vec4<bool>(true, arg_0.b, func_2(Struct_1(arg_0.a, var_2.b, var_2.c), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1087f, 1000f) * vec2<f32>(-116f, 136f))), true), vec4<bool>(false, 4294967295u >= firstTrailingBit(var_2.a.x), func_3(true), var_2.b)), !select(!select(vec4<bool>(var_0.x, var_0.x, true, true), vec4<bool>(false, var_0.x, var_2.b, var_0.x), vec4<bool>(var_0.x, false, arg_0.b, var_2.b)), !vec4<bool>(false, var_0.x, false, true), select(!vec4<bool>(false, true, var_0.x, arg_0.b), vec4<bool>(arg_0.b, false, var_2.b, var_2.b), !vec4<bool>(var_2.b, arg_0.b, false, false))));
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_u32(~0u, 118883u, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 55827u, u_input.a.x, u_input.a.x))) ^ 24125u);
    var var_1 = Struct_1(firstTrailingBit(min(vec4<u32>(~u_input.a.x, ~u_input.a.x, 4294967295u, ~32704u), func_1(global0[_wgslsmith_index_u32(u_input.a.x, 16u)]) >> (vec4<u32>(u_input.a.x, u_input.a.x, 1u, 0u) % vec4<u32>(32u)))), all(vec2<bool>(true, true)), vec3<i32>(1i, _wgslsmith_clamp_i32(-_wgslsmith_div_i32(2147483647i, -2147483647i), _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(-4530i, -2147483647i, -33425i)), vec3<i32>(3438i, 11620i, -6043i)), ~(-2147483647i)), 1i));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(-602f)), _wgslsmith_f_op_f32(1020f * 578f), _wgslsmith_f_op_f32(max(-1424f, 958f)), _wgslsmith_f_op_f32(-1601f * -387f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, 334f, -1721f, -170f))) + vec4<f32>(1861f, 129f, -135f, -441f)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-143f, -143f, 342f, -1024f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(131f, -2685f, 251f, 1225f), vec4<f32>(1222f, 1358f, 679f, 2135f), vec4<bool>(var_1.b, var_1.b, false, var_1.b))), select(vec4<bool>(var_1.b, var_1.b, var_1.b, true), vec4<bool>(true, false, var_1.b, var_1.b), var_1.b))))));
}

