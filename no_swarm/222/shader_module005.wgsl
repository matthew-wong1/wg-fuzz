struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec4<f32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 7>;

var<private> global1: array<f32, 26>;

var<private> global2: array<vec3<f32>, 2> = array<vec3<f32>, 2>(vec3<f32>(-1256f, 1508f, -104f), vec3<f32>(397f, -1181f, -283f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: Struct_2, arg_1: vec2<i32>) -> vec2<u32> {
    global0 = array<Struct_2, 7>();
    global2 = array<vec3<f32>, 2>();
    let var_0 = ~arg_0.a.x;
    return ~countOneBits(vec2<u32>(u_input.a, 0u));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec3<bool>) -> u32 {
    let var_0 = !arg_2;
    return u_input.a;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<u32>, arg_2: vec3<f32>, arg_3: Struct_2) -> vec2<bool> {
    let var_0 = global1[_wgslsmith_index_u32(~func_3(vec4<bool>(true, arg_0.x, all(arg_0.wwz) != true, true | all(arg_0.xy)), Struct_2(-vec3<i32>(u_input.c.x, u_input.c.x, 0i), true), select(arg_0.ywy, vec3<bool>(all(arg_0.yw), arg_1.x != 4294967295u, arg_3.b & arg_0.x), arg_0.x)), 26u)];
    var var_1 = select(select(select(arg_0.yw, vec2<bool>(arg_0.x, all(vec3<bool>(arg_3.b, arg_0.x, arg_0.x))), arg_0.x), vec2<bool>(false, true), all(select(!arg_0.xy, !arg_0.xx, arg_0.x))), vec2<bool>(select(!all(vec4<bool>(false, arg_3.b, arg_3.b, arg_0.x)), !all(vec2<bool>(false, true)), true), (select(0u, u_input.a, arg_3.b) >> (~4294967295u % 32u)) > _wgslsmith_sub_u32(u_input.d, reverseBits(34108u))), any(!vec3<bool>(arg_3.b, arg_0.x, true)) == !(!arg_0.x));
    let var_2 = global0[_wgslsmith_index_u32(abs(29231u), 7u)];
    var var_3 = Struct_2(arg_3.a | ~vec3<i32>(countOneBits(var_2.a.x), 0i, -1i), all(!vec3<bool>(false, !arg_3.b, any(vec2<bool>(true, var_2.b)))));
    let var_4 = vec2<u32>(~(~(~(~78711u))), u_input.a);
    return !arg_0.xz;
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: Struct_1, arg_3: u32) -> vec2<u32> {
    let var_0 = -u_input.c;
    global2 = array<vec3<f32>, 2>();
    var var_1 = global0[_wgslsmith_index_u32(u_input.a ^ _wgslsmith_div_u32(~u_input.a, _wgslsmith_sub_u32(28441u, arg_3)), 7u)];
    var var_2 = _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, arg_3, ~4294967295u), min(~_wgslsmith_div_vec3_u32(vec3<u32>(arg_0, 44459u, 1u) >> (vec3<u32>(4294967295u, 67756u, arg_3) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.d, 75871u, arg_0), vec3<u32>(arg_3, arg_0, 35993u))), ~vec3<u32>(~4294967295u, arg_3, 36961u >> (arg_3 % 32u))));
    var var_3 = global0[_wgslsmith_index_u32(u_input.d, 7u)];
    return countOneBits(~vec2<u32>(1u, func_3(!vec4<bool>(arg_2.a.x, arg_2.a.x, true, var_1.b), Struct_2(vec3<i32>(var_3.a.x, var_1.a.x, var_3.a.x), var_3.b), select(vec3<bool>(var_3.b, var_1.b, false), vec3<bool>(true, true, arg_2.a.x), vec3<bool>(true, var_1.b, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~select(func_4(_wgslsmith_dot_vec2_u32(func_1(global0[_wgslsmith_index_u32(73646u, 7u)], u_input.c), ~vec2<u32>(888u, 1u)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.d, 32819u), 26u)] + _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(20692u, 26u)], 1453f, false))), Struct_1(func_2(vec4<bool>(false, true, true, false), vec4<u32>(10089u, 1u, u_input.d, 21291u), global2[_wgslsmith_index_u32(4294967295u, 2u)], global0[_wgslsmith_index_u32(u_input.d, 7u)]), 1123f, _wgslsmith_f_op_vec4_f32(vec4<f32>(298f, 641f, 1609f, -660f) + vec4<f32>(862f, 1000f, global1[_wgslsmith_index_u32(u_input.d, 26u)], 503f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1152f, global1[_wgslsmith_index_u32(1u, 26u)], global1[_wgslsmith_index_u32(56942u, 26u)], global1[_wgslsmith_index_u32(u_input.d, 26u)]))), u_input.a), _wgslsmith_mult_vec2_u32(~(vec2<u32>(1u, 0u) ^ vec2<u32>(u_input.d, 12400u)), ~_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(u_input.d, 53435u))), func_2(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true)), vec4<u32>(24152u, 91128u, u_input.d, u_input.a) >> (vec4<u32>(u_input.d, 114692u, u_input.a, u_input.d) % vec4<u32>(32u)), global2[_wgslsmith_index_u32(u_input.a, 2u)], global0[_wgslsmith_index_u32(~u_input.a, 7u)]).x && true);
    global2 = array<vec3<f32>, 2>();
    let var_1 = global0[_wgslsmith_index_u32(16488u, 7u)];
    var var_2 = Struct_1(func_2(select(select(vec4<bool>(false, var_1.b, true, true), !vec4<bool>(true, var_1.b, true, var_1.b), 1i != var_1.a.x), !(!vec4<bool>(var_1.b, true, var_1.b, false)), select(vec4<bool>(var_1.b, var_1.b, true, false), vec4<bool>(var_1.b, var_1.b, var_1.b, var_1.b), false)), ~vec4<u32>(u_input.d, firstLeadingBit(0u), _wgslsmith_clamp_u32(1u, 0u, var_0.x), var_0.x), vec3<f32>(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(~108510u, 26u)])), _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(18016u, 0u), vec2<u32>(u_input.a, var_0.x)), 26u)])), global1[_wgslsmith_index_u32(86567u, 26u)]), Struct_2(vec3<i32>(-1i, var_1.a.x, -var_1.a.x), select(false, any(vec4<bool>(var_1.b, var_1.b, var_1.b, var_1.b)), true))), _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(~abs(var_0.x), 26u)], global1[_wgslsmith_index_u32(~firstLeadingBit(u_input.a), 26u)])), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-345f, -392f, -1535f, global1[_wgslsmith_index_u32(u_input.a, 26u)]) * vec4<f32>(global1[_wgslsmith_index_u32(var_0.x, 26u)], 1370f, global1[_wgslsmith_index_u32(11991u, 26u)], 552f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1[_wgslsmith_index_u32(var_0.x, 26u)], 724f, 791f, -1313f), vec4<f32>(1173f, global1[_wgslsmith_index_u32(var_0.x, 26u)], global1[_wgslsmith_index_u32(var_0.x, 26u)], 385f), vec4<bool>(var_1.b, var_1.b, var_1.b, var_1.b))), vec4<bool>(true, var_1.b, var_1.b, false))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-182f, global1[_wgslsmith_index_u32(u_input.d, 26u)], 979f, -1125f), vec4<f32>(global1[_wgslsmith_index_u32(u_input.a, 26u)], global1[_wgslsmith_index_u32(var_0.x, 26u)], -220f, global1[_wgslsmith_index_u32(u_input.a, 26u)])) * vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 26u)], global1[_wgslsmith_index_u32(1u, 26u)], global1[_wgslsmith_index_u32(var_0.x, 26u)], 1022f)), vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0.x, 26u)]), _wgslsmith_f_op_f32(f32(-1f) * -1375f), _wgslsmith_div_f32(-467f, global1[_wgslsmith_index_u32(var_0.x, 26u)]), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(4294967295u, 26u)], 470f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u) << (_wgslsmith_add_vec2_u32(vec2<u32>(1u, 3528u), vec2<u32>(var_0.x, var_0.x)) % vec2<u32>(32u)), vec2<u32>(~var_0.x, _wgslsmith_mod_u32(u_input.d, var_0.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 26u)]) * 717f), _wgslsmith_f_op_f32(-var_2.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2.c.x))), -533f) - var_2.d), _wgslsmith_clamp_vec4_u32(reverseBits(_wgslsmith_clamp_vec4_u32(select(vec4<u32>(u_input.d, 1u, 27621u, 28620u), vec4<u32>(4294967295u, 4294967295u, var_0.x, u_input.d), false), vec4<u32>(84678u, 37643u, u_input.d, 1u) | vec4<u32>(1u, 0u, 1u, var_0.x), vec4<u32>(u_input.d, 1u, u_input.d, 9959u))), ~_wgslsmith_mod_vec4_u32(~vec4<u32>(61179u, 1u, 11490u, u_input.a), _wgslsmith_sub_vec4_u32(vec4<u32>(30594u, 55455u, u_input.a, u_input.d), vec4<u32>(51250u, 59329u, var_0.x, var_0.x))), abs(firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, 23275u, u_input.a, 22880u), vec4<u32>(1u, var_0.x, 86724u, 26570u))))), (u_input.d | _wgslsmith_add_u32(41076u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 16565u), vec3<u32>(var_0.x, 15567u, 0u)))) | 33065u);
}

