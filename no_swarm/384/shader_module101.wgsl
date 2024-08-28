struct Struct_1 {
    a: vec2<bool>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 27>;

var<private> global1: f32 = -255f;

var<private> global2: i32 = 0i;

var<private> global3: vec2<i32> = vec2<i32>(1i, -55207i);

var<private> global4: Struct_1 = Struct_1(vec2<bool>(true, true), 1u);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec2<i32> {
    return vec2<i32>(~24513i, -39606i);
}

fn func_2() -> Struct_1 {
    global0 = array<i32, 27>();
    global4 = Struct_1(!global4.a, countOneBits(1u));
    let var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(-194f)), _wgslsmith_f_op_f32(-556f + 537f))))));
    global3 = abs(~(vec2<i32>(-2147483647i, 0i) << (countOneBits(_wgslsmith_sub_vec2_u32(u_input.c, u_input.a.zz)) % vec2<u32>(32u))));
    let var_1 = ~func_3();
    return Struct_1(!select(global4.a, select(!global4.a, !vec2<bool>(global4.a.x, global4.a.x), vec2<bool>(global4.a.x, global4.a.x)), global4.a.x), abs(1u));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>) -> bool {
    var var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(~(~(~28887u)), 4294967295u), u_input.a.wy);
    let var_1 = _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(~(min(vec3<i32>(global0[_wgslsmith_index_u32(arg_0.b, 27u)], -1i, arg_1.x), vec3<i32>(arg_1.x, 17663i, global3.x)) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(global4.b, 21468u, 0u), vec3<u32>(global4.b, arg_0.b, arg_0.b), u_input.a.wwy) % vec3<u32>(32u))), vec3<i32>(-(~global3.x), 31122i, ~(~2147483647i))), vec3<i32>((~global3.x >> (global4.b % 32u)) >> (~1u % 32u), -global3.x, _wgslsmith_mod_i32(~(-5891i) ^ ~global0[_wgslsmith_index_u32(u_input.a.x, 27u)], global3.x)));
    let var_2 = Struct_1(select(func_2().a, vec2<bool>(true, true), arg_0.a.x), 0u);
    var_0 = 0u;
    var var_3 = select(_wgslsmith_dot_vec4_u32(~max(~vec4<u32>(0u, global4.b, 23232u, global4.b), ~u_input.a), select(vec4<u32>(_wgslsmith_mult_u32(u_input.c.x, arg_0.b), ~u_input.c.x, 27766u ^ global4.b, global4.b), ~(~u_input.a), var_2.a.x)), 25937u << (arg_0.b % 32u), global4.a.x);
    return all(global4.a);
}

fn func_1(arg_0: u32, arg_1: vec4<u32>) -> i32 {
    var var_0 = vec4<bool>(global4.a.x, true, any(vec4<bool>(global4.a.x, all(vec2<bool>(true, true)), func_4(func_2(), vec2<i32>(-33542i, global3.x) & vec2<i32>(global0[_wgslsmith_index_u32(34286u, 27u)], 1i)), global4.a.x)), any(vec3<bool>(any(!vec3<bool>(global4.a.x, global4.a.x, global4.a.x)), global4.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-16852i, -15715i), vec2<i32>(-2147483647i, global3.x)) != global0[_wgslsmith_index_u32(firstLeadingBit(1u), 27u)])));
    global2 = -48216i;
    global3 = vec2<i32>(~(-12575i), min(min(global0[_wgslsmith_index_u32(0u, 27u)], min(1i, 1i)), _wgslsmith_dot_vec2_i32(min(_wgslsmith_clamp_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 27u)], global0[_wgslsmith_index_u32(arg_0, 27u)]), vec2<i32>(global3.x, global0[_wgslsmith_index_u32(40841u, 27u)]), vec2<i32>(global0[_wgslsmith_index_u32(70341u, 27u)], 0i)), ~vec2<i32>(5084i, global3.x)), -vec2<i32>(16959i, global0[_wgslsmith_index_u32(0u, 27u)]))));
    var var_1 = Struct_1(global4.a, _wgslsmith_div_u32(min(u_input.a.x, (global4.b << (arg_1.x % 32u)) ^ ~arg_1.x), 0u));
    var var_2 = -1495f;
    return global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~arg_0, var_1.b), 27u)];
}

@compute
@workgroup_size(1)
fn main() {
    global4 = Struct_1(!vec2<bool>(!all(vec4<bool>(false, false, global4.a.x, true)), false), ~(abs(0u) << (_wgslsmith_div_u32(16985u, 13597u) % 32u)));
    global3 = vec2<i32>(-1i << (_wgslsmith_div_u32(32934u, _wgslsmith_add_u32(32312u, global4.b)) % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(func_1(38995u, vec4<u32>(global4.b, global4.b, u_input.a.x, 62809u)), 7590i & global0[_wgslsmith_index_u32(11703u, 27u)]) & abs(reverseBits(vec2<i32>(global3.x, global0[_wgslsmith_index_u32(u_input.a.x, 27u)]))), func_3()));
    global0 = array<i32, 27>();
    var var_0 = select(!vec4<bool>(any(!vec2<bool>(global4.a.x, global4.a.x)), any(vec4<bool>(false, global4.a.x, true, true)), true, global4.a.x), select(!(!(!vec4<bool>(global4.a.x, false, global4.a.x, global4.a.x))), select(select(!vec4<bool>(global4.a.x, global4.a.x, global4.a.x, false), select(vec4<bool>(global4.a.x, global4.a.x, true, true), vec4<bool>(global4.a.x, false, false, true), vec4<bool>(false, true, true, true)), global4.a.x), select(select(vec4<bool>(false, true, global4.a.x, false), vec4<bool>(true, global4.a.x, false, global4.a.x), false), !vec4<bool>(global4.a.x, true, false, global4.a.x), global4.a.x), -744f < _wgslsmith_f_op_f32(ceil(-1862f))), global4.a.x), select(vec4<bool>(all(!vec4<bool>(global4.a.x, global4.a.x, global4.a.x, global4.a.x)), global4.a.x, !(global3.x != global3.x), false), select(!(!vec4<bool>(global4.a.x, global4.a.x, global4.a.x, global4.a.x)), select(vec4<bool>(true, true, true, global4.a.x), !vec4<bool>(true, false, true, global4.a.x), select(vec4<bool>(global4.a.x, global4.a.x, global4.a.x, true), vec4<bool>(global4.a.x, false, true, global4.a.x), global4.a.x)), !vec4<bool>(global4.a.x, true, global4.a.x, global4.a.x)), select(select(!vec4<bool>(global4.a.x, global4.a.x, global4.a.x, true), select(vec4<bool>(false, global4.a.x, true, false), vec4<bool>(true, global4.a.x, global4.a.x, global4.a.x), global4.a.x), true), !vec4<bool>(global4.a.x, false, global4.a.x, true), select(select(vec4<bool>(global4.a.x, global4.a.x, global4.a.x, global4.a.x), vec4<bool>(false, false, global4.a.x, global4.a.x), false), select(vec4<bool>(global4.a.x, false, true, global4.a.x), vec4<bool>(false, global4.a.x, true, false), vec4<bool>(global4.a.x, global4.a.x, true, global4.a.x)), select(vec4<bool>(false, false, global4.a.x, true), vec4<bool>(true, global4.a.x, true, true), global4.a.x)))));
    var var_1 = func_2();
    var var_2 = u_input.c.x;
    var var_3 = Struct_1(!(!(!var_1.a)), 1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-358f, 1482f)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(740f, -1000f)), vec2<f32>(-797f, 1785f))) - vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(618f, 1136f, 1281f, 1137f), vec4<f32>(-2290f, -963f, 150f, -2123f)) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(824f, 1000f, -835f, -577f)))))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-867f, 397f, -719f, -1727f) * vec4<f32>(2073f, 153f, 1184f, 605f)))))));
}

