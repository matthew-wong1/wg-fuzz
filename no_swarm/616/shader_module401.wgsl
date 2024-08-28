struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: bool;

var<private> global2: array<vec4<i32>, 21>;

var<private> global3: Struct_1 = Struct_1(vec2<f32>(1000f, 446f), vec4<f32>(-1324f, 477f, 1699f, 769f));

var<private> global4: vec4<bool>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    global3 = arg_2;
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-1000f))))))), -2733f);
    let var_1 = u_input.b.x;
    global0 = arg_2;
    let var_2 = arg_2;
    return 1695f;
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: Struct_1) -> i32 {
    var var_0 = all(!(!select(global4.wxy, select(arg_2, global4.zxx, arg_2), !vec3<bool>(arg_2.x, true, global4.x))));
    global4 = !(!vec4<bool>(true, all(!arg_2.zy), firstTrailingBit(21950u) >= 31006u, true));
    var var_1 = _wgslsmith_f_op_f32(global3.b.x - _wgslsmith_f_op_f32(func_3(vec4<bool>(arg_2.x, true, select(true, !arg_2.x, true), true), arg_3, Struct_1(_wgslsmith_f_op_vec2_f32(step(global3.a, _wgslsmith_f_op_vec2_f32(min(arg_3.a, vec2<f32>(arg_3.b.x, -3707f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-917f, arg_1.b.x, global3.a.x, -484f))))));
    let var_2 = _wgslsmith_dot_vec4_i32(-abs(abs(global2[_wgslsmith_index_u32(4294967295u, 21u)]) << (abs(vec4<u32>(u_input.b.x, 4294967295u, 69323u, u_input.b.x)) % vec4<u32>(32u))), -vec4<i32>(-2147483647i, -7737i | firstTrailingBit(-44176i), -_wgslsmith_clamp_i32(-2147483647i, 2147483647i, -2147483647i), -2058i));
    let var_3 = countOneBits(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) | min(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, u_input.a), vec4<u32>(u_input.b.x, u_input.a, u_input.b.x, u_input.a)), ~vec4<u32>(u_input.b.x, u_input.a, 1u, u_input.b.x) | ~vec4<u32>(38926u, 1u, u_input.b.x, 4294967295u)) << (reverseBits(vec4<u32>(5055u, u_input.a, u_input.b.x, ~u_input.a)) % vec4<u32>(32u)));
    return ~(-1i << (_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.a, ~var_3.x), _wgslsmith_dot_vec3_u32(abs(var_3.zzw), vec3<u32>(var_3.x, var_3.x, u_input.b.x) ^ var_3.xzy)) % 32u));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1) -> bool {
    let var_0 = (~min(countOneBits(vec3<i32>(2147483647i, -4778i, -27696i)), vec3<i32>(1i, 1i, 1i)) >> (~arg_0 % vec3<u32>(32u))) ^ min(~vec3<i32>(1i, 15270i, -80586i) | select(vec3<i32>(1i, -30505i, 44952i), countOneBits(vec3<i32>(-4785i, 0i, -2147483647i)), global4.x), firstTrailingBit(vec3<i32>(0i, firstLeadingBit(-18093i), func_2(-447f, arg_1, vec3<bool>(global4.x, true, false), Struct_1(arg_1.a, vec4<f32>(global3.a.x, -878f, -515f, -543f))))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.a * vec2<f32>(-327f, -1000f)) + global3.b.xz) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, -172f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.a.x, global3.b.x, global0.b.x, -1000f), vec4<f32>(arg_1.b.x, -656f, 258f, 365f))))))));
    let var_2 = var_1;
    var var_3 = -var_0.zy;
    let var_4 = 1i;
    return !((_wgslsmith_f_op_f32(var_1.b.x * global3.a.x) < global3.b.x) && !global4.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(~(~10631u), 21u)];
    let var_1 = select(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~48135u), countOneBits(u_input.a)), 21u)], vec4<i32>(-(2147483647i & select(1i, 32269i, false)), var_0.x, _wgslsmith_div_i32(-585i, 1i), -_wgslsmith_add_i32(countOneBits(-534i), var_0.x)), !vec4<bool>(!all(vec2<bool>(false, false)), true, func_1(~vec3<u32>(27389u, u_input.a, u_input.b.x), Struct_1(vec2<f32>(1323f, -736f), vec4<f32>(global3.b.x, 1000f, 1792f, 1192f))), !(u_input.a >= 1u)));
    let var_2 = any(global4.xz);
    let var_3 = func_2(-961f, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(global3.a.x * global3.a.x), -1447f), global0.b), vec3<bool>(!(!var_2), true, (815f == global0.a.x) & global4.x), Struct_1(vec2<f32>(global3.b.x, _wgslsmith_f_op_f32(-1718f + global0.b.x)), vec4<f32>(_wgslsmith_div_f32(global0.b.x, 1838f), 1399f, -208f, global3.a.x))) > _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(var_1.x, var_1.x, var_0.x, var_1.x) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 6940u, 1u), vec4<u32>(1u, 1u, 0u, u_input.a), vec4<u32>(u_input.a, 1u, 1u, u_input.a)) % vec4<u32>(32u)), countOneBits(vec4<i32>(var_0.x, var_0.x, var_0.x, -7582i))), var_1.x);
    var var_4 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~abs(abs(u_input.b.x)), u_input.b.x), 21u)];
    global4 = select(select(!select(select(vec4<bool>(true, false, false, global4.x), vec4<bool>(global4.x, global4.x, false, global4.x), vec4<bool>(var_3, false, false, true)), select(vec4<bool>(var_3, global4.x, var_3, var_3), vec4<bool>(var_2, false, true, false), vec4<bool>(false, true, false, true)), select(vec4<bool>(false, var_3, false, true), vec4<bool>(true, true, true, true), vec4<bool>(var_2, global4.x, true, global4.x))), !select(select(vec4<bool>(var_3, var_2, true, false), vec4<bool>(true, false, var_3, global4.x), vec4<bool>(true, var_3, var_3, var_2)), select(vec4<bool>(false, global4.x, var_3, global4.x), vec4<bool>(var_2, false, global4.x, false), false), !vec4<bool>(false, false, var_2, false)), !(any(vec2<bool>(var_2, true)) && true)), select(select(select(select(vec4<bool>(global4.x, true, false, global4.x), vec4<bool>(true, true, var_2, false), false), vec4<bool>(true, false, global4.x, false), false && var_2), select(select(vec4<bool>(global4.x, var_3, false, false), vec4<bool>(var_2, var_3, var_3, false), var_3), vec4<bool>(true, true, false, true), select(vec4<bool>(var_2, var_2, false, var_3), vec4<bool>(var_3, false, true, true), var_3)), !(!vec4<bool>(true, var_3, true, true))), !vec4<bool>(global0.a.x != global0.b.x, any(global4.wyx), true, any(vec4<bool>(true, false, false, var_3))), select(vec4<bool>(true, false, true, func_1(vec3<u32>(u_input.a, 1u, u_input.a), Struct_1(vec2<f32>(global0.a.x, 1072f), global3.b))), select(!vec4<bool>(true, false, global4.x, var_2), !vec4<bool>(var_2, global4.x, var_2, false), global4.x), !(!vec4<bool>(false, true, var_2, true)))), select(select(!vec4<bool>(false, var_3, false, true), !(!vec4<bool>(var_3, var_3, var_3, false)), _wgslsmith_f_op_f32(select(1044f, global0.a.x, true)) < -1340f), vec4<bool>(var_3, any(vec3<bool>(true, true, var_2)), false, all(select(vec4<bool>(global4.x, true, global4.x, false), vec4<bool>(var_3, var_2, var_3, true), vec4<bool>(false, true, false, false)))), !select(select(vec4<bool>(global4.x, false, true, false), vec4<bool>(true, var_2, true, true), vec4<bool>(false, false, var_2, var_2)), select(vec4<bool>(global4.x, false, var_2, global4.x), vec4<bool>(false, global4.x, var_3, true), vec4<bool>(var_3, global4.x, var_2, var_2)), false)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.a), _wgslsmith_add_vec4_u32(min(_wgslsmith_sub_vec4_u32(vec4<u32>(9518u, 0u, u_input.a, u_input.b.x), vec4<u32>(u_input.a, 0u, u_input.b.x, 38455u)), ~vec4<u32>(0u, u_input.a, u_input.b.x, u_input.b.x)), ~(~vec4<u32>(u_input.a, 61328u, u_input.b.x, u_input.b.x))) ^ (vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 1u), vec2<u32>(u_input.a, u_input.a)), ~17963u, 4294967295u, ~81333u) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.b.x, 1u, u_input.b.x), vec4<u32>(u_input.a, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(u_input.a, 22246u, u_input.a, 1u) >> (vec4<u32>(u_input.a, u_input.a, 86246u, 29075u) % vec4<u32>(32u))) % vec4<u32>(32u))), countOneBits(-countOneBits(var_4.x) ^ var_1.x), ~u_input.b.x | select(u_input.a, 64488u, -12764i == _wgslsmith_mod_i32(var_1.x, var_1.x)), (_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(u_input.a, 52944u)) & (25193u | ~u_input.a)) | ~4294967295u);
}

