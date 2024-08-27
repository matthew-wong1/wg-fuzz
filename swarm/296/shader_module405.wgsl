struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec2<u32>,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 15>;

var<private> global1: vec4<bool> = vec4<bool>(true, true, false, false);

var<private> global2: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec3<u32>(4294967295u, 1u, 1u), vec2<bool>(true, true)), Struct_1(vec3<u32>(1u, 1u, 99160u), vec2<bool>(false, false)));

var<private> global3: vec4<f32> = vec4<f32>(1085f, -978f, -2372f, 310f);

var<private> global4: array<i32, 16>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> u32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1323f * _wgslsmith_f_op_f32(global3.x - global3.x)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-800f + global3.x)))), -1128f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(736f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-979f)))))), _wgslsmith_f_op_f32(min(439f, _wgslsmith_f_op_f32(-global3.x))));
    return ~(~max(61530u, 45170u));
}

fn func_3() -> u32 {
    var var_0 = global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32((~37126u << (func_1() % 32u)) >> (_wgslsmith_mod_u32(10095u, ~0u) % 32u), _wgslsmith_mult_u32(~21512u, select(29492u, _wgslsmith_mod_u32(35363u, 110736u), true))), 2u)];
    let var_1 = _wgslsmith_mod_vec3_i32(min(_wgslsmith_sub_vec3_i32(vec3<i32>(21240i, -2147483647i, -34371i), countOneBits(-vec3<i32>(u_input.a.x, -1i, 0i))), vec3<i32>(select(1i, u_input.a.x, false) | ~global4[_wgslsmith_index_u32(var_0.a.x, 16u)], u_input.a.x | ~u_input.a.x, _wgslsmith_clamp_i32(~12791i, -2147483647i, 1i))), firstTrailingBit(vec3<i32>(-33401i, abs(i32(-1i) * -62044i), _wgslsmith_mod_i32(i32(-1i) * -37570i, 2147483647i))));
    let var_2 = _wgslsmith_f_op_f32(-global3.x);
    let var_3 = Struct_1(vec3<u32>(~var_0.a.x, select(4294967295u, 1u, global1.x), 51948u), select(vec2<bool>(var_0.b.x, global1.x), select(!var_0.b, !vec2<bool>(false, var_0.b.x), select(vec2<bool>(true, true), global1.xw, var_0.b.x)), true));
    let var_4 = abs(_wgslsmith_clamp_vec3_i32(var_1, var_1, var_1 << (~min(var_0.a, vec3<u32>(1u, var_0.a.x, var_0.a.x)) % vec3<u32>(32u))));
    return 48568u;
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: vec4<f32>, arg_3: f32) -> f32 {
    global1 = !vec4<bool>(false, arg_1, _wgslsmith_div_u32(50918u, func_3()) == 19056u, any(global1.wxz));
    global2 = array<Struct_1, 2>();
    global2 = array<Struct_1, 2>();
    var var_0 = abs(vec4<i32>(-(1i & _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, global4[_wgslsmith_index_u32(2350u, 16u)], global4[_wgslsmith_index_u32(1u, 16u)]), vec3<i32>(52557i, 2147483647i, 1i))), _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(u_input.a.x, 32082i, 11954i)), firstTrailingBit(vec3<i32>(global4[_wgslsmith_index_u32(19942u, 16u)], 976i, u_input.a.x))), global4[_wgslsmith_index_u32(1u, 16u)], ~u_input.a.x), ~(-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, global4[_wgslsmith_index_u32(34472u, 16u)]), u_input.a)), -select(_wgslsmith_div_i32(-35612i, u_input.a.x), -1173i, all(vec4<bool>(arg_1, true, arg_1, true)))));
    global2 = array<Struct_1, 2>();
    return -443f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec4<bool>(global1.x, any(global1.yx), false, true | select(!global1.x | global1.x, !all(global1.yww), true));
    global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, global3.x, 1000f, global3.x) + vec4<f32>(global3.x, 619f, global3.x, global3.x)), vec4<f32>(global3.x, 137f, global3.x, global3.x))))));
    let var_0 = _wgslsmith_mod_vec2_u32(vec2<u32>(select(~25230u, 48263u, global1.x), 1u), ~vec2<u32>(_wgslsmith_clamp_u32(~4294967295u, ~0u, _wgslsmith_mod_u32(0u, 36832u)), ~(~6663u)));
    var var_1 = vec4<u32>(func_1(), var_0.x, 1u, 40082u);
    global3 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1061f, _wgslsmith_f_op_f32(global3.x * -1000f), 1047f, _wgslsmith_f_op_f32(-464f * _wgslsmith_f_op_f32(func_2(-1508f, global1.x, vec4<f32>(global3.x, 1576f, 2121f, global3.x), global3.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-707f, global3.x, 1696f, -215f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, -478f, -336f, global3.x))))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(606f - _wgslsmith_f_op_f32(step(global3.x, global3.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x + global3.x) - global3.x), _wgslsmith_div_f32(global3.x, 455f), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(-580f - global3.x), true, vec4<f32>(global3.x, -897f, global3.x, global3.x), _wgslsmith_f_op_f32(885f - -2327f))))))));
    let var_2 = select(!(!vec2<bool>(any(vec2<bool>(global1.x, false)), global1.x)), global1.xy, false);
    let var_3 = global3.x <= 807f;
    let var_4 = global2[_wgslsmith_index_u32(var_0.x, 2u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-min(u_input.a.x, -45263i), i32(-1i) * -countOneBits(u_input.a.x), 21164i, ~(u_input.a.x >> (1u % 32u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global3.zxx + global3.zwz)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global3.wzx + global3.yzx) + _wgslsmith_f_op_vec3_f32(exp2(global3.wxz)))) - global3.zzw), var_0, abs(2147483647i), select(vec3<i32>(u_input.a.x, -15411i, ~(-global4[_wgslsmith_index_u32(var_1.x, 16u)])), vec3<i32>(abs(-1i >> (var_4.a.x % 32u)), _wgslsmith_div_i32(global4[_wgslsmith_index_u32(min(4294967295u, 3820u), 16u)], 0i), countOneBits(-2147483647i)), global1.zwz));
}

