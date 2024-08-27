struct Struct_1 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: vec3<u32>;

var<private> global2: array<Struct_1, 7>;

var<private> global3: Struct_1 = Struct_1(6366u, 0u);

var<private> global4: array<vec2<u32>, 27>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    let var_0 = ~vec4<i32>(u_input.a, u_input.b, -_wgslsmith_add_i32(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.b, u_input.a), vec3<i32>(u_input.b, u_input.a, u_input.a))), min(u_input.b >> (_wgslsmith_clamp_u32(53314u, 1u, 0u) % 32u), u_input.b));
    var var_1 = Struct_1(~4294967295u, 1u);
    global2 = array<Struct_1, 7>();
    var var_2 = _wgslsmith_div_f32(1586f, 763f);
    let var_3 = Struct_1(1u, global1.x);
    return global0.x;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: Struct_1) -> vec3<bool> {
    global4 = array<vec2<u32>, 27>();
    global0 = !select(!vec3<bool>(all(vec4<bool>(global0.x, global0.x, global0.x, true)), false, false), !vec3<bool>(func_3(Struct_1(global3.a, 18936u), arg_2), true, global0.x), 649f < _wgslsmith_f_op_f32(-arg_1.x));
    global4 = array<vec2<u32>, 27>();
    let var_0 = Struct_1(_wgslsmith_sub_u32(0u, countOneBits(~global1.x)), ~((global3.b ^ 1990u) & global3.b) | global3.a);
    global4 = array<vec2<u32>, 27>();
    return vec3<bool>(false & global0.x, _wgslsmith_f_op_f32(max(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)))) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_1.x)), _wgslsmith_f_op_f32(-arg_1.x)), all(vec2<bool>(any(vec3<bool>(global0.x, global0.x, global0.x)), !global0.x || true)));
}

fn func_1(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = !(!select(global0.zz, vec2<bool>(global0.x, true), vec2<bool>(global0.x, global0.x)));
    global0 = select(select(func_2(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, 2147483647i, u_input.a, 1549i), ~vec4<i32>(0i, -2147483647i, u_input.b, 25707i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-559f, 1721f), vec2<f32>(353f, arg_0.x)) - _wgslsmith_div_vec2_f32(arg_0.zx, arg_0.xx)), global2[_wgslsmith_index_u32(~countOneBits(global3.b), 7u)]), !func_2(countOneBits(vec4<i32>(u_input.a, 13544i, 1i, u_input.b)), vec2<f32>(1000f, arg_0.x), Struct_1(global3.b, 35940u)), vec3<bool>(all(func_2(vec4<i32>(1i, u_input.a, u_input.b, 26747i), arg_0.zx, global2[_wgslsmith_index_u32(global3.b, 7u)]).xy), var_0.x, true)), func_2(-vec4<i32>(-u_input.a, 1i, u_input.b, _wgslsmith_add_i32(u_input.b, u_input.b)), _wgslsmith_div_vec2_f32(arg_0.yy, _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -2429f) + _wgslsmith_f_op_vec2_f32(step(arg_0.yy, arg_0.xy)))), global2[_wgslsmith_index_u32(1u, 7u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -308f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + -1000f))) > 342f);
    let var_1 = _wgslsmith_mod_i32(0i, 2147483647i);
    let var_2 = Struct_1(global3.b, 1u);
    global3 = Struct_1(var_2.b, global1.x);
    return Struct_1(~global3.a, 4294967295u);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    let var_0 = !select(!(!vec3<bool>(global0.x, global0.x, true)), select(vec3<bool>(!global0.x, !global0.x, global0.x), select(vec3<bool>(global0.x, global0.x, true), vec3<bool>(true, false, global0.x), !vec3<bool>(global0.x, true, global0.x)), true), vec3<bool>(false, _wgslsmith_f_op_f32(trunc(701f)) <= -921f, global0.x));
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(293f)) * _wgslsmith_f_op_f32(152f + -662f)), _wgslsmith_f_op_f32(-1f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-709f, -1000f), vec2<f32>(247f, 497f)))))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(654f, -632f)), vec2<f32>(1f, 1f)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -530f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -938f)))));
    global0 = func_2(vec4<i32>(-firstLeadingBit(u_input.b), -1i, u_input.a, _wgslsmith_add_i32(reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-5907i, 23996i, -50580i), vec3<i32>(-42472i, 34132i, -31530i))), -u_input.a)), vec2<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-851f * var_1.x))), Struct_1(abs(countOneBits(global1.x)), 0u));
    let var_2 = -1757f;
    var var_3 = !vec4<bool>(true, var_0.x, false, any(select(select(vec4<bool>(true, false, var_0.x, true), vec4<bool>(var_0.x, global0.x, true, global0.x), vec4<bool>(var_0.x, global0.x, global0.x, true)), !vec4<bool>(global0.x, false, false, var_0.x), var_0.x)));
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(52649u, _wgslsmith_add_u32(func_4(global2[_wgslsmith_index_u32(~30437u, 7u)], ~global1.xy, func_1(vec3<f32>(-3226f, 367f, 178f)), func_1(vec3<f32>(885f, -660f, 833f))), ~(global3.a << (85869u % 32u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-397f, -545f, 425f, 220f) * vec4<f32>(-133f, -213f, -1032f, 1087f)))))), _wgslsmith_add_vec3_u32(~vec3<u32>(global1.x, 42124u, global1.x) & vec3<u32>(global1.x, ~global1.x, abs(28442u)), select(~countOneBits(vec3<u32>(global3.a, 11514u, global1.x)), (vec3<u32>(4294967295u, global3.a, global1.x) | vec3<u32>(global3.a, 1u, global1.x)) >> (vec3<u32>(63924u, global3.a, global1.x) % vec3<u32>(32u)), func_2(vec4<i32>(u_input.a, -38752i, u_input.a, u_input.a), _wgslsmith_div_vec2_f32(vec2<f32>(1000f, -190f), vec2<f32>(1326f, -188f)), global2[_wgslsmith_index_u32(~global3.b, 7u)]).x)), _wgslsmith_mod_vec3_i32(vec3<i32>(0i, select(1i, u_input.a, any(vec4<bool>(true, global0.x, global0.x, true))), max(1i, u_input.b) ^ u_input.a), vec3<i32>(u_input.a, -26357i, 63427i)), vec2<i32>(~(i32(-1i) * -29381i), _wgslsmith_mod_i32(1i, u_input.a) & 2147483647i) | vec2<i32>(u_input.b, firstTrailingBit(u_input.a)));
}

