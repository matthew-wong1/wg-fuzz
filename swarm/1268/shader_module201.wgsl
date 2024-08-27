struct Struct_1 {
    a: bool,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: vec3<f32>;

var<private> global2: array<vec3<u32>, 11> = array<vec3<u32>, 11>(vec3<u32>(40943u, 15105u, 67597u), vec3<u32>(1u, 17595u, 36680u), vec3<u32>(29185u, 4294967295u, 4500u), vec3<u32>(15375u, 20426u, 1u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(0u, 60419u, 0u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(0u, 34331u, 17362u), vec3<u32>(33359u, 25108u, 1u), vec3<u32>(16932u, 4294967295u, 0u), vec3<u32>(80810u, 91994u, 0u));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: vec2<bool>) -> f32 {
    global2 = array<vec3<u32>, 11>();
    let var_0 = !(!vec4<bool>(arg_1, -1i != (u_input.a | 2147483647i), (global1.x >= -1000f) & true, true));
    let var_1 = vec2<bool>(!all(!select(vec2<bool>(arg_2.x, var_0.x), vec2<bool>(true, false), arg_1)), !arg_2.x);
    var var_2 = u_input.b.yx;
    let var_3 = 29980u;
    return 581f;
}

fn func_2() -> vec3<f32> {
    let var_0 = true;
    global1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(611f, -634f, global0.x)))) + vec3<f32>(_wgslsmith_f_op_f32(ceil(global0.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(394f * 629f), _wgslsmith_f_op_f32(func_3(391f, true, vec2<bool>(false, false))))), global1.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1762f, global1.x, _wgslsmith_f_op_f32(abs(global0.x)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, global1.x, 1071f), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1672f, 820f, -385f), vec3<f32>(global0.x, 1348f, -1344f))), any(vec3<bool>(var_0, var_0, true))))))), var_0 || (!(1000f == global0.x) && (1i < _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(-2147483647i, 40121i, 1i))))));
    var var_1 = Struct_1(all(vec3<bool>(true, var_0, !all(vec3<bool>(false, var_0, false)))), vec4<bool>(true, var_0, true, u_input.b.x == u_input.b.x));
    global0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global1.zy), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.xy)), !(select(-20377i | u_input.a, u_input.a, var_0 | false) >= 0i)));
    let var_2 = ~(_wgslsmith_dot_vec3_i32(-abs(vec3<i32>(u_input.a, u_input.a, u_input.a)), countOneBits(vec3<i32>(u_input.a, u_input.a, u_input.a))) >> (u_input.b.x % 32u));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(global1.x + 994f), global1.x, _wgslsmith_f_op_f32(1404f - global1.x)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(279f, global1.x, 193f)))), false)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global1.x, global0.x) - vec3<f32>(global0.x, global0.x, 639f)), vec3<f32>(-339f, global0.x, -479f)) * vec3<f32>(global1.x, _wgslsmith_f_op_f32(-global1.x), 602f))));
}

fn func_1(arg_0: bool) -> Struct_1 {
    global0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-820f, -278f), vec2<f32>(global1.x, global1.x))), vec2<f32>(global1.x, _wgslsmith_f_op_f32(-860f + global1.x))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-global1.xx), global1.yy)), global1.zy)))));
    let var_0 = !vec3<bool>(arg_0, false, _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, 0u, 4294967295u)) != ~(~u_input.b.x));
    var var_1 = 0i;
    global0 = global1.xx;
    global1 = _wgslsmith_f_op_vec3_f32(func_2());
    return Struct_1(true, vec4<bool>(select(_wgslsmith_f_op_vec3_f32(func_2()).x != _wgslsmith_f_op_f32(-global1.x), false, true), var_0.x, var_0.x, any(vec4<bool>(arg_0, all(vec2<bool>(var_0.x, true)), u_input.a == -2147483647i, arg_0))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 10371u;
    var var_1 = vec4<bool>((u_input.a ^ select(~359i, -498i, false)) >= 0i, true, _wgslsmith_dot_vec4_u32(min(~vec4<u32>(24412u, 4294967295u, 8096u, u_input.b.x), vec4<u32>(0u, u_input.b.x, 11936u, 91883u) & vec4<u32>(u_input.b.x, u_input.b.x, 58700u, u_input.b.x)), reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, 0u, 7224u, 4294967295u), vec4<u32>(26603u, u_input.b.x, 10806u, 0u)))) <= _wgslsmith_dot_vec4_u32(vec4<u32>(~13777u, u_input.b.x, countOneBits(u_input.b.x), ~129567u), firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, 55043u, 16305u, 0u), vec4<u32>(u_input.b.x, u_input.b.x, 1u, 1u)))), all(select(vec2<bool>(false, false), vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(false, false), true))) | true);
    var var_2 = func_1(var_1.x);
    var_1 = var_2.b;
    var var_3 = Struct_1(select(false, var_2.a, true), var_2.b);
    var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-822f, global1.x)) * global1.x) != _wgslsmith_f_op_f32(-global0.x), select(var_2.b, var_2.b, !vec4<bool>(!var_1.x, true, !var_2.b.x, all(vec2<bool>(var_2.b.x, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(u_input.a, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 1i), max(vec2<i32>(u_input.a, 4153i), vec2<i32>(u_input.a, 1i))), 0i)), vec2<i32>(~u_input.a, ~(~max(9101i, u_input.a))), max(_wgslsmith_mult_vec3_i32(select(vec3<i32>(u_input.a, u_input.a, 63864i) >> (vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x) % vec3<u32>(32u)), vec3<i32>(u_input.a, 0i, -1i), !var_3.b.xzz), _wgslsmith_sub_vec3_i32(select(vec3<i32>(u_input.a, 2147483647i, -26416i), vec3<i32>(33209i, -22453i, u_input.a), var_1.yzw), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, -2147483647i, u_input.a), vec3<i32>(u_input.a, -1i, u_input.a)))), -min(countOneBits(vec3<i32>(u_input.a, u_input.a, u_input.a)), -vec3<i32>(u_input.a, u_input.a, 0i))));
}

