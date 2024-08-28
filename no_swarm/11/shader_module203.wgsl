struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<bool>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec4<u32>,
    d: bool,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<u32>,
    c: Struct_2,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_4) -> bool {
    let var_0 = !arg_0.a;
    return !select(3108u > _wgslsmith_mult_u32(12473u, arg_1.b.x), ~arg_1.a.c.x == 1u, !select(arg_1.d.d.x, var_0.x, arg_1.d.d.x)) || true;
}

fn func_2() -> Struct_5 {
    global0 = vec4<bool>(!global0.x, !select(abs(28751u) >= _wgslsmith_dot_vec2_u32(vec2<u32>(31764u, 0u), vec2<u32>(53867u, 4294967295u)), any(global0.ww), false), false, func_3(Struct_5(!(!vec4<bool>(global0.x, global0.x, false, global0.x)), Struct_2(select(global0.zyz, vec3<bool>(global0.x, global0.x, false), true), u_input.a << (vec3<u32>(4294967295u, 98339u, 4294967295u) % vec3<u32>(32u)), Struct_1(-1000f, global0.x, global0.wyz, global0.yzw)), true), Struct_4(Struct_3(all(global0.yz), Struct_1(887f, true, vec3<bool>(global0.x, true, true), vec3<bool>(true, global0.x, true)), vec4<u32>(1u, 1u, 1u, 1u), global0.x, Struct_1(-860f, global0.x, vec3<bool>(global0.x, global0.x, false), vec3<bool>(true, global0.x, false))), ~(~vec3<u32>(10274u, 10143u, 16130u)), Struct_2(select(global0.xyy, global0.xxz, global0.x), u_input.a, Struct_1(-1443f, false, vec3<bool>(global0.x, global0.x, false), vec3<bool>(global0.x, global0.x, global0.x))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1677f), true, !vec3<bool>(global0.x, true, global0.x), select(vec3<bool>(true, false, false), vec3<bool>(global0.x, false, global0.x), global0.x)), Struct_1(_wgslsmith_f_op_f32(max(891f, -1174f)), all(vec3<bool>(true, false, false)), !vec3<bool>(global0.x, global0.x, false), vec3<bool>(true, true, global0.x)))));
    global0 = vec4<bool>(global0.x, all(vec2<bool>(false, !global0.x)), !global0.x, global0.x);
    global0 = !(!select(select(vec4<bool>(true, true, true, true), !vec4<bool>(global0.x, true, true, false), true), select(!vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(global0.x, false, global0.x, true), false), !all(vec2<bool>(true, global0.x))));
    let var_0 = Struct_1(-1012f, !global0.x, vec3<bool>(!(firstTrailingBit(56564u) != _wgslsmith_clamp_u32(716u, 34951u, 1u)), (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 89396u, 1u), vec3<u32>(4294967295u, 1u, 6673u)) >> (2123u % 32u)) < ~_wgslsmith_clamp_u32(20300u, 110634u, 28932u), ~1u <= ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(35590u, 1u))), vec3<bool>(!(!(!global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1392f * -629f)) >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-950f)))), u_input.a.x <= (i32(-1i) * -2147483647i)));
    global0 = select(!select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(var_0.b, global0.x, true, global0.x), vec4<bool>(global0.x, global0.x, false, global0.x), vec4<bool>(false, true, true, global0.x)), !vec4<bool>(true, var_0.d.x, global0.x, true), u_input.a.x > 0i), !vec4<bool>(global0.x, var_0.d.x, global0.x, global0.x)), !select(select(vec4<bool>(var_0.b, global0.x, false, global0.x), select(vec4<bool>(var_0.c.x, false, global0.x, global0.x), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, global0.x)), vec4<bool>(global0.x, false, global0.x, true)), !vec4<bool>(false, false, var_0.c.x, false), !select(vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(var_0.d.x, var_0.c.x, var_0.d.x, false), vec4<bool>(true, global0.x, false, true))), !select(select(select(vec4<bool>(false, global0.x, global0.x, var_0.c.x), vec4<bool>(false, false, global0.x, false), false), vec4<bool>(false, false, true, var_0.c.x), vec4<bool>(true, false, var_0.c.x, true)), !vec4<bool>(global0.x, true, global0.x, true), true));
    return Struct_5(!select(select(vec4<bool>(var_0.c.x, false, true, global0.x), !vec4<bool>(true, var_0.b, global0.x, var_0.b), var_0.b), select(!vec4<bool>(true, global0.x, var_0.c.x, global0.x), !vec4<bool>(var_0.b, true, true, false), true), global0.x), Struct_2(select(!global0.zzy, var_0.c, !(!vec3<bool>(true, true, global0.x))), u_input.a ^ u_input.a, var_0), !(global0.x || !var_0.c.x));
}

fn func_1(arg_0: vec4<f32>) -> bool {
    let var_0 = func_2();
    global0 = !select(!(!select(vec4<bool>(var_0.b.a.x, var_0.a.x, global0.x, true), vec4<bool>(global0.x, global0.x, var_0.a.x, true), global0.x)), select(!select(vec4<bool>(global0.x, var_0.c, false, true), vec4<bool>(global0.x, global0.x, global0.x, false), var_0.a), var_0.a, vec4<bool>(true, true, false, false)), _wgslsmith_sub_i32(~u_input.a.x, var_0.b.b.x) >= ~(-1i));
    global0 = vec4<bool>(var_0.a.x, var_0.a.x, -(_wgslsmith_dot_vec3_i32(var_0.b.b, var_0.b.b) & _wgslsmith_dot_vec2_i32(var_0.b.b.xz, var_0.b.b.zz)) < 4604i, !all(vec3<bool>(true, true, true)));
    let var_1 = _wgslsmith_f_op_f32(-var_0.b.c.a);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.wyw + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, var_1, 493f) - _wgslsmith_f_op_vec3_f32(-arg_0.wwz))), _wgslsmith_div_vec3_f32(vec3<f32>(-1851f, _wgslsmith_f_op_f32(833f - arg_0.x), var_1), arg_0.zxz)));
    return !global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(select(!(!select(vec4<bool>(global0.x, false, global0.x, true), vec4<bool>(false, global0.x, true, true), global0.x)), select(select(vec4<bool>(false, false, global0.x, global0.x), !vec4<bool>(global0.x, false, false, global0.x), select(vec4<bool>(true, global0.x, global0.x, true), vec4<bool>(true, true, true, true), global0.x)), !select(vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(false, true, global0.x, global0.x), vec4<bool>(global0.x, true, global0.x, false)), true), select(vec4<bool>(func_1(vec4<f32>(-979f, -607f, 205f, 489f)), !global0.x, false, global0.x), func_2().a, !global0.x)), vec4<bool>(false, func_2().c, false, global0.x), any(vec2<bool>(true, true)));
    var var_0 = 47289i;
    var var_1 = Struct_2(!func_2().b.c.c, -vec3<i32>(max(i32(-1i) * -1i, u_input.a.x), u_input.a.x, min(_wgslsmith_div_i32(u_input.a.x, u_input.a.x), -87493i)), Struct_1(-188f, false, vec3<bool>(global0.x, true, !global0.x), !func_2().a.wyz));
    var_0 = countOneBits(1i);
    var var_2 = _wgslsmith_f_op_f32(-var_1.c.a);
    var_0 = ~func_2().b.b.x;
    var var_3 = func_2().b;
    var_1 = Struct_2(vec3<bool>(select(true, !global0.x, var_1.a.x), any(!(!vec4<bool>(global0.x, true, true, false))), false), vec3<i32>(func_2().b.b.x, u_input.a.x, ~var_1.b.x), var_1.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(min(~(~vec4<u32>(0u, 39243u, 4294967295u, 4294967295u)), ~(~vec4<u32>(1u, 0u, 0u, 4294967295u))), vec4<u32>(26449u, _wgslsmith_dot_vec4_u32(~vec4<u32>(34037u, 0u, 1u, 1u), ~vec4<u32>(0u, 0u, 50533u, 9623u)), min(1u, ~4294967295u), min(reverseBits(0u), 4294967295u))), vec4<u32>(1u, abs(~3418u), ~reverseBits(select(13830u, 0u, false)), 4294967295u));
}

