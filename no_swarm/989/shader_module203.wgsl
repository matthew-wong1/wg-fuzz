struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_4 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 5> = array<Struct_4, 5>(Struct_4(10324i, -18729i), Struct_4(1i, 2147483647i), Struct_4(0i, 1i), Struct_4(-13676i, i32(-2147483648)), Struct_4(-11330i, -43066i));

var<private> global1: array<vec3<i32>, 1>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: i32, arg_1: u32) -> f32 {
    let var_0 = vec3<bool>(true, all(select(vec2<bool>(false, all(vec3<bool>(false, true, false))), vec2<bool>(true, true), false)), _wgslsmith_sub_u32(~_wgslsmith_mult_u32(4294967295u, arg_1), _wgslsmith_mult_u32(u_input.a.x, 1u)) == _wgslsmith_add_u32(60546u, 44177u << (arg_1 % 32u)));
    var var_1 = var_0.x;
    global1 = array<vec3<i32>, 1>();
    global1 = array<vec3<i32>, 1>();
    var_1 = var_0.x;
    return 1f;
}

fn func_2(arg_0: bool, arg_1: Struct_4, arg_2: u32, arg_3: Struct_1) -> i32 {
    global0 = array<Struct_4, 5>();
    var var_0 = -1796f;
    let var_1 = all(!(!select(vec2<bool>(arg_0, arg_0), !vec2<bool>(false, arg_3.d), vec2<bool>(true, false))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -874f), -949f)) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-677f, -542f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(-261f - 243f)))));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-441f + _wgslsmith_f_op_f32(func_3(47616i, 156818u))))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1176f + _wgslsmith_f_op_f32(-var_2.x))));
    return countOneBits(~_wgslsmith_mult_i32(~(-arg_3.a), arg_1.a));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_2(!(!(27393u <= _wgslsmith_add_u32(4294967295u, u_input.c.x))));
    var var_1 = vec2<i32>(-9244i, u_input.b.x);
    var var_2 = select(select(!vec3<bool>(var_0.a, true, true), vec3<bool>(u_input.c.x != ~u_input.a.x, 0u < (u_input.c.x >> (26842u % 32u)), false), vec3<bool>(~0u >= _wgslsmith_sub_u32(27806u, u_input.a.x), true, all(!vec4<bool>(true, true, var_0.a, var_0.a)))), select(!vec3<bool>(all(vec3<bool>(false, var_0.a, false)), true, var_0.a), !select(vec3<bool>(true, true, var_0.a), select(vec3<bool>(var_0.a, var_0.a, false), vec3<bool>(true, var_0.a, var_0.a), vec3<bool>(true, false, var_0.a)), any(vec2<bool>(false, false))), !vec3<bool>(true, all(vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a)), !var_0.a)), firstTrailingBit(_wgslsmith_add_i32(var_1.x, -1i)) > _wgslsmith_sub_i32(-1i, -func_2(true, Struct_4(u_input.b.x, 54515i), 4294967295u, Struct_1(1i, u_input.a.x, u_input.c.x, var_0.a))));
    var_0 = Struct_2(all(select(select(select(var_2.xy, vec2<bool>(var_2.x, false), var_2.xy), select(vec2<bool>(var_0.a, var_0.a), var_2.yx, vec2<bool>(true, true)), select(var_2.xy, var_2.xx, vec2<bool>(var_2.x, var_2.x))), vec2<bool>(all(var_2.xx), true), var_2.zy)));
    var_2 = select(!(!vec3<bool>(var_0.a, !var_0.a, false)), vec3<bool>(all(select(!vec4<bool>(var_0.a, var_0.a, false, true), !vec4<bool>(false, var_0.a, var_0.a, false), select(vec4<bool>(var_0.a, var_2.x, var_2.x, var_0.a), vec4<bool>(var_2.x, true, var_2.x, true), vec4<bool>(false, false, var_2.x, var_0.a)))), !var_0.a, !all(vec3<bool>(true, true, true))), select(!select(!vec3<bool>(var_0.a, false, true), select(vec3<bool>(true, false, var_0.a), vec3<bool>(false, true, var_0.a), vec3<bool>(false, true, false)), select(vec3<bool>(var_2.x, var_2.x, true), vec3<bool>(true, true, true), vec3<bool>(var_0.a, false, var_2.x))), !(!(!vec3<bool>(true, true, var_2.x))), vec3<bool>(true, select(false, var_2.x, !var_2.x), false)));
    return Struct_1(75968i, _wgslsmith_dot_vec4_u32(~(~abs(vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.c.x))), _wgslsmith_sub_vec4_u32(select(vec4<u32>(0u, u_input.a.x, u_input.c.x, 85697u), reverseBits(vec4<u32>(4294967295u, u_input.c.x, 21803u, u_input.a.x)), select(vec4<bool>(var_2.x, var_2.x, var_0.a, var_0.a), vec4<bool>(var_2.x, var_0.a, var_2.x, var_0.a), var_2.x)), ~vec4<u32>(0u, 1u, 4294967295u, u_input.a.x))), u_input.a.x, select(_wgslsmith_f_op_f32(select(916f, 734f, var_2.x)) != -768f, var_2.x, var_2.x) && all(select(select(vec4<bool>(var_2.x, var_2.x, false, false), vec4<bool>(true, var_2.x, var_0.a, true), vec4<bool>(var_2.x, false, true, false)), select(vec4<bool>(var_2.x, false, true, var_0.a), vec4<bool>(true, var_0.a, true, var_2.x), true), all(vec2<bool>(false, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = _wgslsmith_dot_vec3_u32(u_input.c, ~u_input.c);
    let var_2 = true & var_0.d;
    var var_3 = vec2<bool>(false, select(var_0.a, u_input.b.x, !var_0.d) == (u_input.b.x << (4294967295u % 32u)));
    global0 = array<Struct_4, 5>();
    global1 = array<vec3<i32>, 1>();
    var var_4 = Struct_4(-_wgslsmith_dot_vec2_i32(select(reverseBits(u_input.b.zy), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b.x, -14588i), vec2<i32>(1714i, var_0.a)), !vec2<bool>(false, var_0.d)), u_input.b.yx), _wgslsmith_mult_i32(18640i, 0i) & var_0.a);
    let var_5 = func_1().d;
    var var_6 = var_3.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1512f)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(885f)), _wgslsmith_f_op_f32(f32(-1f) * -425f)))))), _wgslsmith_add_i32(~var_4.b, 1i), u_input.b);
}

