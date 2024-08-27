struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: u32,
}

struct Struct_3 {
    a: f32,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<vec3<u32>, 20> = array<vec3<u32>, 20>(vec3<u32>(1u, 17808u, 1u), vec3<u32>(0u, 36646u, 4294967295u), vec3<u32>(0u, 3717u, 4294967295u), vec3<u32>(63073u, 4294967295u, 10288u), vec3<u32>(4294967295u, 55297u, 32091u), vec3<u32>(8627u, 57939u, 1u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(1u, 62457u, 0u), vec3<u32>(4085u, 0u, 0u), vec3<u32>(20376u, 8595u, 6757u), vec3<u32>(53201u, 4294967295u, 0u), vec3<u32>(1u, 0u, 1u), vec3<u32>(53994u, 23354u, 0u), vec3<u32>(0u, 1u, 0u), vec3<u32>(1u, 101537u, 4294967295u), vec3<u32>(64823u, 59842u, 1u), vec3<u32>(1u, 21480u, 69964u), vec3<u32>(99273u, 3550u, 22724u), vec3<u32>(0u, 28596u, 4294967295u), vec3<u32>(582u, 75101u, 4294967295u));

var<private> global2: Struct_2 = Struct_2(7161u, 1u);

var<private> global3: array<bool, 18>;

var<private> global4: f32 = -687f;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1402f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(618f)), _wgslsmith_f_op_f32(f32(-1f) * -1102f)) * _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1380f, -1929f)))), 2223f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-376f, 1000f)))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(1859f, 1000f)), _wgslsmith_f_op_f32(782f - 2666f))))));
    var var_1 = ~(~2147483647i);
    let var_2 = var_0;
    var var_3 = _wgslsmith_mult_i32(u_input.a.x, _wgslsmith_div_i32(u_input.a.x, u_input.a.x));
    var var_4 = vec2<bool>(any(select(!vec4<bool>(global0.x, false, false, global0.x), select(vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.e.x, 18u)], global3[_wgslsmith_index_u32(4294967295u, 18u)], global3[_wgslsmith_index_u32(0u, 18u)]), !vec4<bool>(true, global3[_wgslsmith_index_u32(global2.a, 18u)], global3[_wgslsmith_index_u32(31054u, 18u)], true), select(vec4<bool>(true, false, global0.x, global3[_wgslsmith_index_u32(global2.a, 18u)]), vec4<bool>(global0.x, true, false, true), global0.x)), global0.x)), global3[_wgslsmith_index_u32(global2.b, 18u)]);
    return vec3<bool>(all(select(select(vec2<bool>(true, global0.x), select(vec2<bool>(true, false), vec2<bool>(var_4.x, global0.x), var_4.x), vec2<bool>(global0.x, false)), !(!vec2<bool>(global3[_wgslsmith_index_u32(101795u, 18u)], global0.x)), vec2<bool>(select(true, global3[_wgslsmith_index_u32(global2.a, 18u)], global3[_wgslsmith_index_u32(4294967295u, 18u)]), all(vec4<bool>(global3[_wgslsmith_index_u32(0u, 18u)], global3[_wgslsmith_index_u32(1u, 18u)], global3[_wgslsmith_index_u32(global2.b, 18u)], global3[_wgslsmith_index_u32(u_input.e.x, 18u)]))))), select(!global0.x, (1i | _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.d.x, u_input.d.x), vec3<i32>(u_input.d.x, -2147483647i, -9457i))) <= u_input.d.x, var_4.x), all(!select(vec2<bool>(true, global3[_wgslsmith_index_u32(global2.b, 18u)]), select(vec2<bool>(global0.x, var_4.x), vec2<bool>(true, global3[_wgslsmith_index_u32(1u, 18u)]), vec2<bool>(false, false)), true)));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: vec2<u32>) -> f32 {
    let var_0 = u_input.a;
    global2 = arg_2;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-171f, _wgslsmith_f_op_f32(-arg_0.a.a), _wgslsmith_f_op_f32(select(arg_0.a.a, arg_0.a.b.x, true)), -360f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(800f + arg_0.a.b.x), -792f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.a.a), arg_0.a.b.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(arg_0.a.b.x)), -2239f))) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(select(arg_0.a.a, -138f, true)), arg_0.a.a, -1032f, _wgslsmith_f_op_f32(sign(-1787f))), vec4<f32>(_wgslsmith_f_op_f32(ceil(-984f)), arg_0.a.b.x, 495f, _wgslsmith_div_f32(-483f, 208f))))));
    var var_2 = vec4<bool>(true, global0.x, _wgslsmith_mult_u32(4294967295u, arg_2.a) > _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c.x, arg_2.a, arg_0.a.c.c), vec3<u32>(_wgslsmith_clamp_u32(16169u, u_input.e.x, 106779u), 68277u, arg_2.b)), any(vec2<bool>(arg_0.a.c.e.x, func_3().x && all(arg_0.a.c.e))));
    let var_3 = vec3<u32>(u_input.e.x, arg_2.b, 94585u);
    return var_1.x;
}

fn func_2(arg_0: i32) -> Struct_4 {
    var var_0 = Struct_3(-366f, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-485f, 719f), vec2<f32>(-259f, 1058f))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1989f, -424f))))), Struct_1(_wgslsmith_sub_i32(~(i32(-1i) * -11911i), -26089i), abs(1u), ~max(~global2.a, ~global2.b), select(_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1u, u_input.e.x), u_input.e.zz), _wgslsmith_add_vec2_u32(u_input.c, vec2<u32>(10521u, u_input.e.x))), vec2<u32>(u_input.c.x, ~1u), min(u_input.a.x, arg_0) < ~arg_0), select(select(select(vec4<bool>(global0.x, true, true, global0.x), vec4<bool>(true, false, global0.x, global3[_wgslsmith_index_u32(u_input.c.x, 18u)]), vec4<bool>(global0.x, false, true, true)), vec4<bool>(global0.x, false, true, true), !vec4<bool>(false, true, global0.x, false)), vec4<bool>(false || global3[_wgslsmith_index_u32(u_input.b, 18u)], true, true, true), select(vec4<bool>(global3[_wgslsmith_index_u32(global2.b, 18u)], true, true, global0.x), !vec4<bool>(true, true, false, global3[_wgslsmith_index_u32(1u, 18u)]), select(vec4<bool>(true, global0.x, true, true), vec4<bool>(global0.x, true, global3[_wgslsmith_index_u32(global2.a, 18u)], global0.x), vec4<bool>(global0.x, global0.x, true, global3[_wgslsmith_index_u32(u_input.c.x, 18u)]))))));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_4(Struct_3(-404f, vec2<f32>(var_0.b.x, var_0.a), var_0.c)), func_3(), Struct_2(4294967295u << (global2.b % 32u), ~u_input.b), (vec2<u32>(u_input.e.x, global2.b) >> (u_input.e.xy % vec2<u32>(32u))) & vec2<u32>(var_0.c.d.x, global2.a))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) - _wgslsmith_f_op_f32(max(2003f, 107f))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.b.x))))), vec2<f32>(-660f, _wgslsmith_f_op_f32(-var_0.b.x)), var_0.c);
    var var_2 = false;
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-551f, 119f, 1953f, var_0.a), vec4<f32>(1959f, var_1.a, 496f, var_1.b.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, -1016f, var_1.a, var_0.b.x) + vec4<f32>(var_1.a, var_1.b.x, var_1.b.x, var_1.a))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, 1000f, -116f, 575f) * vec4<f32>(-1356f, 225f, -181f, var_0.a)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1581f, -664f, var_1.b.x, 388f), vec4<f32>(190f, var_0.a, var_0.b.x, var_1.a))) * vec4<f32>(var_0.b.x, var_1.a, var_1.a, -742f)))));
    global4 = 729f;
    return Struct_4(Struct_3(_wgslsmith_f_op_f32(round(var_0.a)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(var_0.b)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.b) + vec2<f32>(var_1.b.x, var_3.x))), var_0.c));
}

fn func_1(arg_0: vec4<i32>) -> u32 {
    let var_0 = _wgslsmith_mult_u32(~max(1u, _wgslsmith_add_u32(0u, 4294967295u)) | ~(u_input.b & 40241u), _wgslsmith_mult_u32(u_input.c.x, 42615u));
    var var_1 = func_2(~abs(~1314i));
    var var_2 = func_2(abs(var_1.a.c.a | 0i)).a.c;
    global3 = array<bool, 18>();
    var var_3 = !vec3<bool>(any(!(!vec3<bool>(global0.x, global0.x, true))), true, false);
    return 12161u;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_2(func_1(reverseBits(-vec4<i32>(2147483647i, u_input.a.x, -18366i, 0i))) << (107346u % 32u), ~abs(93319u) >> (~firstTrailingBit(_wgslsmith_mult_u32(4294967295u, u_input.c.x)) % 32u));
    var var_0 = global2.b & countOneBits(u_input.b);
    let var_1 = Struct_4(func_2(~(~(-1i >> (u_input.c.x % 32u)))).a);
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a.b.x), _wgslsmith_f_op_f32(exp2(var_1.a.a))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1438f), _wgslsmith_f_op_f32(var_1.a.b.x - var_1.a.a)), var_1.a.b.x)), any(func_3()))), var_1.a.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_2, _wgslsmith_f_op_f32(1681f - _wgslsmith_f_op_f32(abs(func_2(u_input.a.x).a.a))), select(_wgslsmith_mod_u32(global2.b, u_input.c.x << (4294967295u % 32u)) >> (u_input.c.x % 32u), var_1.a.c.d.x | _wgslsmith_sub_u32(~0u, reverseBits(u_input.e.x)), false), firstLeadingBit(vec3<i32>(var_1.a.c.a, -2147483647i, -2147483647i)));
}

