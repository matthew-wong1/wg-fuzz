struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 15>;

var<private> global1: Struct_1 = Struct_1(vec4<bool>(true, true, false, true), -377f);

var<private> global2: array<u32, 11>;

var<private> global3: Struct_1 = Struct_1(vec4<bool>(true, true, true, false), -1000f);

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> f32 {
    global1 = Struct_1(select(!(!global3.a), !select(select(global3.a, vec4<bool>(global1.a.x, false, global1.a.x, true), global3.a), vec4<bool>(false, global1.a.x, global1.a.x, global1.a.x), vec4<bool>(global0[_wgslsmith_index_u32(61911u, 15u)], global3.a.x, global1.a.x, global3.a.x)), false), global3.b);
    let var_0 = ~(~vec3<u32>(_wgslsmith_mod_u32(u_input.d, u_input.d), abs(u_input.d), 1u)) >> (select(select(~(vec3<u32>(u_input.d, 48886u, 4294967295u) & vec3<u32>(u_input.d, 0u, 4294967295u)), ~(vec3<u32>(global2[_wgslsmith_index_u32(u_input.d, 11u)], global2[_wgslsmith_index_u32(1u, 11u)], 74728u) & vec3<u32>(46652u, global2[_wgslsmith_index_u32(0u, 11u)], u_input.d)), false), vec3<u32>((u_input.d >> (28589u % 32u)) | (u_input.d & 69058u), u_input.d, firstTrailingBit(1u)), global1.a.zyy) % vec3<u32>(32u));
    let var_1 = Struct_1(select(select(global3.a, global3.a, select(!vec4<bool>(global1.a.x, global0[_wgslsmith_index_u32(u_input.d, 15u)], true, true), select(global3.a, global1.a, global3.a), !global3.a.x)), global3.a, global3.a.x), _wgslsmith_f_op_f32(max(-609f, global1.b)));
    var var_2 = ~(~u_input.d);
    global3 = var_1;
    return _wgslsmith_f_op_f32(sign(global3.b));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: vec4<i32>) -> Struct_1 {
    global2 = array<u32, 11>();
    global1 = Struct_1(vec4<bool>(true, min(1i, ~u_input.b.x) <= -60157i, any(global1.a.xw), -1889f > arg_1), _wgslsmith_f_op_f32(-1178f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.b)) * 889f)));
    var var_0 = !global1.a.wzy;
    var var_1 = -1484f;
    let var_2 = select(vec3<i32>(-1i << (~_wgslsmith_div_u32(70961u, global2[_wgslsmith_index_u32(41755u, 11u)]) % 32u), 0i, 31692i), firstLeadingBit(_wgslsmith_add_vec3_i32((vec3<i32>(-23460i, -5367i, u_input.b.x) << (vec3<u32>(50259u, 83305u, 22525u) % vec3<u32>(32u))) << (vec3<u32>(1u, global2[_wgslsmith_index_u32(4294967295u, 11u)], 0u) % vec3<u32>(32u)), vec3<i32>(-u_input.a.x, arg_2.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, -1i, 27660i), arg_2.zxz)))), global0[_wgslsmith_index_u32(~u_input.d, 15u)]);
    return Struct_1(select(!vec4<bool>(all(global3.a.xw), true, true, true | var_0.x), !(!select(vec4<bool>(global1.a.x, global1.a.x, false, true), global3.a, vec4<bool>(false, false, true, true))), !vec4<bool>(any(vec4<bool>(var_0.x, false, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d, 11u)], 15u)], true)), true, all(vec2<bool>(false, var_0.x)), !global1.a.x)), arg_1);
}

fn func_1(arg_0: bool, arg_1: u32) -> bool {
    global3 = func_3(global3.b, _wgslsmith_f_op_f32(func_2()), (_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 29411i, 0i), vec4<i32>(u_input.a.x, u_input.b.x, u_input.b.x, u_input.b.x)) << (~vec4<u32>(0u, u_input.d, 14315u, global2[_wgslsmith_index_u32(29969u, 11u)]) % vec4<u32>(32u))) | ~(-abs(vec4<i32>(u_input.b.x, -28727i, 1i, u_input.c))));
    global0 = array<bool, 15>();
    global2 = array<u32, 11>();
    let var_0 = min(select(max(abs(vec2<i32>(u_input.b.x, 13960i)), u_input.b.yz & u_input.b.yy) >> (min(~vec2<u32>(0u, arg_1), vec2<u32>(0u, 33287u)) % vec2<u32>(32u)), u_input.a.zx, func_3(_wgslsmith_f_op_f32(floor(1142f)), _wgslsmith_f_op_f32(global3.b * global1.b), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, -1i, -79528i, -2147483647i), vec4<i32>(u_input.a.x, 8194i, -2147483647i, u_input.c))).a.ww), u_input.b.xy);
    var var_1 = func_3(_wgslsmith_f_op_f32(-1909f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-511f + -575f)) - _wgslsmith_f_op_f32(sign(global1.b)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.b, _wgslsmith_f_op_f32(round(global1.b)))), -572f)), (~select(vec4<i32>(1i, var_0.x, -41092i, -27697i), vec4<i32>(-2147483647i, 7099i, u_input.b.x, 1i), vec4<bool>(false, global1.a.x, true, global0[_wgslsmith_index_u32(u_input.d, 15u)])) >> (vec4<u32>(global2[_wgslsmith_index_u32(56295u, 11u)] & arg_1, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, global2[_wgslsmith_index_u32(4294967295u, 11u)], 0u, 1u), vec4<u32>(4294967295u, u_input.d, 91039u, 0u)), 1u) % vec4<u32>(32u))) | firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, u_input.c, -2147483647i, u_input.a.x), vec4<i32>(-23515i, 1i, u_input.b.x, -38850i)) | vec4<i32>(var_0.x, -28514i, var_0.x, 2021i)));
    return all(!(!var_1.a.www));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.b)) - -586f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.b * global3.b)), global1.b, -1000f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1738f + _wgslsmith_f_op_f32(-586f + global3.b))), _wgslsmith_f_op_f32(-global3.b), -239f, _wgslsmith_f_op_f32(global1.b - global3.b))));
    global3 = Struct_1(select(select(vec4<bool>(func_1(false, global2[_wgslsmith_index_u32(28461u, 11u)]), global0[_wgslsmith_index_u32(~92458u, 15u)], global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, u_input.d), 15u)], all(global1.a)), global3.a, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.a.x, 1i, u_input.b.x), vec4<i32>(u_input.b.x, 1662i, u_input.a.x, u_input.a.x)) == (0i ^ u_input.c)), global1.a, !global3.a), -429f);
    let var_1 = Struct_1(global1.a, _wgslsmith_f_op_f32(-global3.b));
    var var_2 = var_0.zw;
    let var_3 = 0u;
    var var_4 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(u_input.d, ~13149u) | _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(66849u, var_3, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d, 11u)], 11u)]), vec3<u32>(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d, 11u)], 11u)], var_3)), select(vec3<u32>(11727u, global2[_wgslsmith_index_u32(u_input.d, 11u)], u_input.d), vec3<u32>(global2[_wgslsmith_index_u32(0u, 11u)], global2[_wgslsmith_index_u32(1u, 11u)], u_input.d), global3.a.x)), ~(~u_input.d) ^ 1u, u_input.d, u_input.d), vec4<u32>(4294967295u, ~_wgslsmith_add_u32(u_input.d, ~var_3), _wgslsmith_mult_u32(firstLeadingBit(41905u) | abs(var_3), _wgslsmith_sub_u32(~global2[_wgslsmith_index_u32(u_input.d, 11u)], _wgslsmith_dot_vec3_u32(vec3<u32>(var_3, u_input.d, var_3), vec3<u32>(47240u, var_3, 14763u)))), _wgslsmith_add_u32(select(2400u, var_3, false), select(u_input.d, 0u, true) ^ _wgslsmith_sub_u32(var_3, u_input.d))));
    let var_5 = vec2<bool>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 65920u), vec2<u32>(4294967295u, var_3))), firstTrailingBit(~15388u)), _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d, 11u)], 11u)], 43182u), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.d, global2[_wgslsmith_index_u32(0u, 11u)]), 11u)]), min(vec2<u32>(18145u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(16185u, 11u)], 11u)], 11u)], 11u)]) >> (vec2<u32>(57455u, 7517u) % vec2<u32>(32u)), abs(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 11u)], 11u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d, 11u)], 11u)]))))), 15u)], all(global3.a));
    let var_6 = var_1;
    global0 = array<bool, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(abs(abs(vec3<u32>(41830u, 69517u, 15350u))), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, global2[_wgslsmith_index_u32(6091u, 11u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(41695u, 11u)], 11u)]), vec3<u32>(u_input.d, global2[_wgslsmith_index_u32(var_3, 11u)], var_3), vec3<u32>(22542u, var_3, var_3))) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), var_3, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(var_0.xyz, vec3<f32>(-372f, -1793f, var_2.x), vec3<bool>(true, global3.a.x, true))))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2091f, 372f, var_6.b) + vec3<f32>(var_6.b, 716f, -237f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-454f, var_1.b, global1.b))))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-var_0)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(var_0))) * vec4<f32>(_wgslsmith_f_op_f32(select(var_6.b, 134f, false)), -1545f, _wgslsmith_f_op_f32(1067f - 1159f), _wgslsmith_f_op_f32(step(var_6.b, -453f)))), true)));
}

