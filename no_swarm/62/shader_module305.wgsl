struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: u32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: Struct_2,
    d: i32,
}

struct Struct_4 {
    a: f32,
    b: vec3<bool>,
    c: Struct_3,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 20> = array<i32, 20>(-11457i, 14454i, -1i, -1i, 2147483647i, -1i, 60589i, 0i, -32499i, 2147483647i, -24677i, i32(-2147483648), 45805i, 18249i, -3295i, 0i, 38191i, 1i, 2147483647i, -1i);

var<private> global1: vec2<f32> = vec2<f32>(506f, 1000f);

var<private> global2: array<Struct_3, 18>;

var<private> global3: i32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<u32>, arg_1: u32, arg_2: bool) -> f32 {
    let var_0 = select(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(arg_0.x, u_input.d, u_input.c.x, arg_0.x)), reverseBits(vec4<u32>(50652u, u_input.c.x, u_input.d, u_input.c.x)), ~(vec4<u32>(arg_1, arg_0.x, u_input.d, u_input.c.x) & vec4<u32>(arg_1, 0u, arg_1, u_input.c.x))), vec4<u32>(abs(~0u), 5115u, _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, u_input.d), select(vec2<u32>(0u, 1u), vec2<u32>(11739u, u_input.d), vec2<bool>(false, false))), ~23312u)), arg_0.x, !arg_2);
    var var_1 = Struct_4(-179f, select(!vec3<bool>(false, arg_2, arg_2 == arg_2), !select(!vec3<bool>(arg_2, arg_2, arg_2), !vec3<bool>(false, arg_2, true), arg_2), vec3<bool>(arg_2, any(!vec3<bool>(false, arg_2, true)), arg_2)), global2[_wgslsmith_index_u32(4294967295u, 18u)], Struct_1(any(vec2<bool>(true, any(vec4<bool>(arg_2, arg_2, true, arg_2)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1520f), _wgslsmith_f_op_f32(f32(-1f) * -2656f)), _wgslsmith_dot_vec2_u32(u_input.c.xy, _wgslsmith_add_vec2_u32(arg_0, abs(u_input.c.xy)))));
    var var_2 = max(55195u << ((select(1u, _wgslsmith_mod_u32(1u, arg_1), !var_1.b.x) | _wgslsmith_dot_vec3_u32(~vec3<u32>(18437u, u_input.d, 38412u), u_input.c)) % 32u), 9978u);
    var var_3 = arg_0;
    var var_4 = vec2<u32>(var_0, var_1.c.a.a.x);
    return _wgslsmith_f_op_f32(f32(-1f) * -1455f);
}

fn func_2(arg_0: u32) -> u32 {
    let var_0 = vec4<u32>(~(~(_wgslsmith_sub_u32(31007u, arg_0) | max(4294967295u, u_input.c.x))), ~1u & ~(arg_0 | 67648u), 4497u, arg_0);
    let var_1 = var_0.xzx;
    var var_2 = vec2<i32>(2147483647i, _wgslsmith_div_i32(~56864i, 24096i));
    global1 = vec2<f32>(_wgslsmith_f_op_f32(select(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(u_input.c.yy, arg_0, false))))), true)), global1.x);
    let var_3 = select(select(select(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(true, true), vec2<bool>(true, true)), global0[_wgslsmith_index_u32(var_0.x, 20u)] <= ~1i), vec2<bool>(true, true), true), select(select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(true, true), true), false && all(vec3<bool>(true, true, true))), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true)), !select(vec2<bool>(true, true), vec2<bool>(true, true), true));
    return ~29013u;
}

fn func_4(arg_0: vec3<i32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1096f, global1.x, global1.x) - vec3<f32>(global1.x, 540f, -1088f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(597f, -335f, -250f) - vec3<f32>(global1.x, -1504f, global1.x)), true))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, global1.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(731f, global1.x, 1203f) - vec3<f32>(global1.x, -1000f, global1.x))))))));
    var var_1 = false;
    global1 = var_0.xx;
    global3 = 2147483647i;
    global0 = array<i32, 20>();
    return global2[_wgslsmith_index_u32(u_input.d, 18u)];
}

fn func_1(arg_0: bool) -> u32 {
    var var_0 = func_4(countOneBits(vec3<i32>(~global0[_wgslsmith_index_u32(func_2(u_input.c.x), 20u)], 30441i, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(global0[_wgslsmith_index_u32(u_input.d, 20u)], -47510i, u_input.b.x, 19457i)), countOneBits(u_input.a)))));
    global2 = array<Struct_3, 18>();
    global2 = array<Struct_3, 18>();
    var var_1 = Struct_2(vec2<u32>(u_input.c.x, 41297u));
    var var_2 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.b.x)))) > _wgslsmith_f_op_f32(trunc(var_0.b.x)));
    return var_1.a.x;
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: f32) -> i32 {
    let var_0 = -1607f;
    var var_1 = Struct_3(func_4(abs(firstLeadingBit(vec3<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 20u)], -5034i, global0[_wgslsmith_index_u32(u_input.c.x, 20u)])))).a, vec2<f32>(-1262f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.x)))), Struct_2(vec2<u32>(u_input.c.x << (arg_1.a.x % 32u), ~12086u) << (~(~vec2<u32>(u_input.d, u_input.c.x)) % vec2<u32>(32u))), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(-20868i, arg_0.x, 2147483647i) ^ -vec3<i32>(-1i, 1i, 2725i), countOneBits(arg_0 | arg_0)), arg_0.x));
    var var_2 = !select(select(select(vec3<bool>(true, true, false), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), true), select(vec3<bool>(false, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true)), select(true, true, all(vec3<bool>(false, true, false)))), !select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), vec3<bool>(true, false, true), true), vec3<bool>(all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true))), -2147483647i > _wgslsmith_div_i32(arg_0.x, u_input.a), true));
    let var_3 = ~(-firstTrailingBit(_wgslsmith_clamp_vec3_i32(countOneBits(u_input.b.ywx), vec3<i32>(-2147483647i, 23337i, 0i), -vec3<i32>(var_1.d, global0[_wgslsmith_index_u32(u_input.d, 20u)], arg_0.x))));
    global3 = -(_wgslsmith_mod_i32(-arg_0.x, func_4(arg_0).d) >> (arg_1.a.x % 32u)) ^ _wgslsmith_clamp_i32(var_1.d, -1i ^ (u_input.a ^ var_1.d), -1i);
    return 18087i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(vec3<i32>(global0[_wgslsmith_index_u32(u_input.d, 20u)], -2147483647i, ~countOneBits(1i)), Struct_2(vec2<u32>(max(func_1(true), ~48674u), 0u)), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-global1.x)));
    var var_1 = -2077f;
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1303f, -1933f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(688f, global1.x)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1112f, -420f))))));
    global0 = array<i32, 20>();
    let var_2 = !vec2<bool>(any(vec4<bool>(true, true, true, true)), any(vec2<bool>(false, true)));
    var var_3 = func_4(abs(_wgslsmith_clamp_vec3_i32(-vec3<i32>(11319i, var_0, var_0), u_input.b.wzw, vec3<i32>(var_0, _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(u_input.d, 20u)], var_0), ~global0[_wgslsmith_index_u32(u_input.c.x, 20u)]))));
    let var_4 = Struct_1(var_3.b.x >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global1.x, global1.x)), var_3.b.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.b.x, -139f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, -752f))))), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c.x, u_input.c.x, var_3.c.a.x, var_3.c.a.x), select(vec4<u32>(1u, var_3.c.a.x, 27969u, var_3.a.a.x), vec4<u32>(0u, var_3.c.a.x, 4858u, var_3.c.a.x), var_2.x)) >> (reverseBits(_wgslsmith_mod_u32(1u, u_input.d)) % 32u), 12367u, _wgslsmith_div_u32(~4294967295u, var_3.c.a.x << (11405u % 32u))));
    global2 = array<Struct_3, 18>();
    var var_5 = !var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_u32(~select(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 82365u, var_3.a.a.x, var_4.c), vec4<u32>(var_3.a.a.x, 1u, 34679u, var_4.c)), select(vec4<u32>(51300u, u_input.d, u_input.d, 1u), vec4<u32>(var_3.c.a.x, u_input.d, 36792u, 1u), var_2.x), all(vec4<bool>(var_4.a, false, var_4.a, false))), min(vec4<u32>(~var_4.c, ~4294967295u, ~u_input.c.x, select(var_4.c, 0u, false)), vec4<u32>(var_3.c.a.x, var_3.c.a.x, 45207u & var_3.c.a.x, var_4.c))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_4.b.x), -939f), -2187f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -833f)) + -2057f) - _wgslsmith_f_op_f32(-302f + var_3.b.x)));
}

