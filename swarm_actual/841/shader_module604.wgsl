struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 31> = array<vec4<bool>, 31>(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false));

var<private> global1: array<Struct_3, 29>;

var<private> global2: Struct_3;

var<private> global3: array<f32, 15> = array<f32, 15>(-1000f, 472f, 215f, -203f, 471f, -1000f, 561f, -743f, 707f, 104f, 443f, -449f, 828f, 414f, 318f);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1) -> vec3<i32> {
    global0 = array<vec4<bool>, 31>();
    global3 = array<f32, 15>();
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(arg_1.b)) + vec4<f32>(_wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(u_input.a.x, 15u)])), global3[_wgslsmith_index_u32(u_input.a.x, 15u)], _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -337f), _wgslsmith_f_op_f32(ceil(323f)))), _wgslsmith_f_op_f32(f32(-1f) * -143f))), u_input.a.x | _wgslsmith_div_u32(~max(89397u, 0u), 5597u));
    return vec3<i32>(_wgslsmith_mult_i32(1i, abs(min(12978i, -1i) & global2.a)), 1i, -2147483647i);
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: f32, arg_3: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_clamp_vec3_i32(vec3<i32>(~0i, countOneBits(-_wgslsmith_dot_vec4_i32(vec4<i32>(global2.a, 1i, global2.a, 21725i), vec4<i32>(global2.a, 21355i, 2277i, -1i))), 2147483647i), ~(~vec3<i32>(global2.a, 12532i, 0i)) >> (~(~vec3<u32>(36572u, 20457u, 4294967295u)) % vec3<u32>(32u)), func_3(global0[_wgslsmith_index_u32(arg_3.b & 20437u, 31u)], Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-560f, 172f, 629f, 1201f), arg_3.a, !vec4<bool>(arg_1, arg_1, false, true))), vec4<f32>(global3[_wgslsmith_index_u32(arg_3.b & arg_3.b, 15u)], arg_2, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(arg_3.b, 15u)]), arg_2), arg_3.a.ww, !vec3<bool>(false, true, arg_1))));
    global2 = Struct_3(~(~(-16092i)));
    var var_1 = select(!(!select(select(vec2<bool>(true, false), vec2<bool>(true, arg_1), vec2<bool>(arg_1, arg_1)), vec2<bool>(arg_1, true), !vec2<bool>(arg_1, arg_1))), !(!select(select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, arg_1), false), vec2<bool>(true, true), select(vec2<bool>(false, arg_1), vec2<bool>(arg_1, arg_1), arg_1))), true);
    let var_2 = arg_1;
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.a.x * -1649f)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(arg_0, 1183f, var_2))))))), -677f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-434f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.a.x, 15u)] - global3[_wgslsmith_index_u32(49350u, 15u)])), true))));
    return Struct_2(_wgslsmith_f_op_vec4_f32(-arg_3.a), arg_3.b);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: vec4<u32>) -> vec4<f32> {
    var var_0 = Struct_3(global2.a);
    var var_1 = abs(_wgslsmith_sub_vec3_u32(arg_3.wxz | vec3<u32>(u_input.a.x, ~arg_3.x, 0u), vec3<u32>(0u, arg_3.x, max(_wgslsmith_clamp_u32(4294967295u, 1u, arg_2.b), _wgslsmith_dot_vec3_u32(vec3<u32>(43738u, u_input.a.x, arg_1.x), arg_3.ywz)))));
    global3 = array<f32, 15>();
    global2 = Struct_3(global2.a);
    global1 = array<Struct_3, 29>();
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(func_2(-1575f, any(select(vec2<bool>(true, arg_0.x), arg_0, arg_0)), -518f, Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 15u)], 1251f, global3[_wgslsmith_index_u32(var_1.x, 15u)], global3[_wgslsmith_index_u32(arg_2.b, 15u)])), select(20202u, u_input.a.x, arg_0.x))).a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_2.a.x))), _wgslsmith_div_f32(_wgslsmith_div_f32(-1555f, _wgslsmith_f_op_f32(-arg_2.a.x)), func_2(_wgslsmith_f_op_f32(round(-505f)), arg_0.x, _wgslsmith_f_op_f32(round(1711f)), func_2(-577f, false, 504f, Struct_2(arg_2.a, 26634u))).a.x), _wgslsmith_f_op_f32(select(1993f, global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.x, u_input.a.x, arg_3.x), vec3<u32>(arg_1.x, 15473u, 67661u)), 15u)], min(global2.a, global2.a) == -global2.a))));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> bool {
    var var_0 = all(select(arg_1.d, vec3<bool>(arg_1.d.x, arg_1.d.x, true), vec3<bool>(true, false, arg_1.d.x)));
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(select(arg_1.d.yx, vec2<bool>(false, arg_1.d.x), vec2<bool>(true, true)), _wgslsmith_div_vec2_u32(~u_input.a, ~vec2<u32>(u_input.a.x, u_input.a.x)), func_2(-1553f, false, arg_1.b.x, Struct_2(arg_1.a, u_input.a.x)), _wgslsmith_add_vec4_u32(abs(vec4<u32>(70928u, 35517u, 20798u, u_input.a.x)), max(vec4<u32>(29375u, u_input.a.x, 47741u, 1u), vec4<u32>(u_input.a.x, 1u, 1u, 1u))))) - vec4<f32>(_wgslsmith_div_f32(arg_1.b.x, 358f), 1225f, global3[_wgslsmith_index_u32(7720u, 15u)], _wgslsmith_f_op_f32(-arg_1.a.x))), _wgslsmith_div_u32(~(~20616u) | max(u_input.a.x, ~u_input.a.x), 0u));
    let var_2 = 148f;
    var var_3 = _wgslsmith_div_u32(max(var_1.b, 13617u ^ u_input.a.x), var_1.b) | var_1.b;
    var var_4 = arg_1;
    return ~(var_1.b << (var_1.b % 32u)) > ~4294967295u;
}

fn func_5(arg_0: vec3<bool>, arg_1: vec2<bool>) -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(u_input.a.x ^ 19930u, 29u)];
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(global3[_wgslsmith_index_u32(u_input.a.x, 15u)], -995f)), global3[_wgslsmith_index_u32(u_input.a.x, 15u)], 684f, _wgslsmith_f_op_f32(step(global3[_wgslsmith_index_u32(u_input.a.x, 15u)], global3[_wgslsmith_index_u32(u_input.a.x, 15u)]))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1174f, global3[_wgslsmith_index_u32(1u, 15u)], global3[_wgslsmith_index_u32(u_input.a.x, 15u)], global3[_wgslsmith_index_u32(92935u, 15u)]))))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.a.x, 1u, 4294967295u | u_input.a.x, ~u_input.a.x), select(abs(vec4<u32>(48936u, 32379u, u_input.a.x, 2384u)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 1u, u_input.a.x, 1u), vec4<u32>(u_input.a.x, 44826u, 4294967295u, u_input.a.x)), true)));
    global2 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(4294967295u, 0u), 69936u), firstTrailingBit(firstTrailingBit(_wgslsmith_sub_u32(u_input.a.x, var_1.b & 1u)))), 29u)];
    let var_2 = Struct_1(var_1.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-1146f * var_1.a.x), var_1.a.x, var_1.a.x, _wgslsmith_f_op_f32(-var_1.a.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.a), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.a.x, var_1.a.x, global3[_wgslsmith_index_u32(u_input.a.x, 15u)], 323f)))))), var_1.a.wz, !(!(!select(vec3<bool>(arg_0.x, true, arg_1.x), arg_0, true))));
    var var_3 = vec3<u32>(u_input.a.x, u_input.a.x, ~u_input.a.x | u_input.a.x);
    return var_2;
}

fn func_6(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_3) -> u32 {
    let var_0 = !arg_1.x;
    let var_1 = ~(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(-vec3<i32>(arg_2.a, global2.a, global2.a), _wgslsmith_add_vec3_i32(vec3<i32>(-40727i, global2.a, 1i), vec3<i32>(0i, 0i, global2.a))), vec3<i32>(global2.a, _wgslsmith_div_i32(20105i, global2.a), arg_2.a)) & reverseBits(firstLeadingBit(global2.a)));
    let var_2 = Struct_3(i32(-1i) * -global2.a);
    let var_3 = -1i;
    let var_4 = func_1(reverseBits(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(28235i, var_3, global2.a), _wgslsmith_mod_i32(-2220i, -4031i))), func_5(select(!arg_0.d, vec3<bool>(arg_0.d.x, true, arg_1.x), false), func_5(vec3<bool>(arg_1.x, false, false), !arg_0.d.yx).d.yx)) | true;
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(func_6(func_5(select(vec3<bool>(select(false, false, false), func_1(global2.a, Struct_1(vec4<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 15u)], global3[_wgslsmith_index_u32(u_input.a.x, 15u)], 743f, -144f), vec4<f32>(global3[_wgslsmith_index_u32(139540u, 15u)], 1054f, global3[_wgslsmith_index_u32(u_input.a.x, 15u)], global3[_wgslsmith_index_u32(0u, 15u)]), vec2<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 15u)], global3[_wgslsmith_index_u32(0u, 15u)]), vec3<bool>(true, true, false))), all(global0[_wgslsmith_index_u32(u_input.a.x, 31u)])), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), any(vec2<bool>(true, true))), any(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)))), select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(true, true), true))), !(!vec2<bool>(select(false, false, false), true)), Struct_3(global2.a)), 29u)];
    global0 = array<vec4<bool>, 31>();
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(873f, global3[_wgslsmith_index_u32(4294967295u, 15u)], global3[_wgslsmith_index_u32(24468u, 15u)], 1000f) + vec4<f32>(global3[_wgslsmith_index_u32(4419u, 15u)], 794f, 2261f, 930f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(58374u, 15u)], global3[_wgslsmith_index_u32(34418u, 15u)], -1081f, -851f) - vec4<f32>(-643f, global3[_wgslsmith_index_u32(0u, 15u)], global3[_wgslsmith_index_u32(u_input.a.x, 15u)], global3[_wgslsmith_index_u32(0u, 15u)])) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(63023u, 15u)], global3[_wgslsmith_index_u32(u_input.a.x, 15u)], -504f, global3[_wgslsmith_index_u32(u_input.a.x, 15u)])))) + _wgslsmith_div_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 15u)], -2809f, global3[_wgslsmith_index_u32(u_input.a.x, 15u)], global3[_wgslsmith_index_u32(~32124u, 15u)]), vec4<f32>(-793f, func_2(global3[_wgslsmith_index_u32(10991u, 15u)], true, global3[_wgslsmith_index_u32(19193u, 15u)], Struct_2(vec4<f32>(global3[_wgslsmith_index_u32(38970u, 15u)], -795f, global3[_wgslsmith_index_u32(8631u, 15u)], global3[_wgslsmith_index_u32(u_input.a.x, 15u)]), u_input.a.x)).a.x, -988f, _wgslsmith_f_op_f32(-132f - global3[_wgslsmith_index_u32(10672u, 15u)])))), u_input.a.x << (4294967295u % 32u));
    let var_2 = Struct_3(82846i);
    let var_3 = ~(~firstLeadingBit(vec4<u32>(var_1.b, 4294967295u, 0u, 20438u)) & vec4<u32>(~(~u_input.a.x), var_1.b, 1u >> (~u_input.a.x % 32u), 31591u));
    global3 = array<f32, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(-1738f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-131f * var_1.a.x)), -1235f, _wgslsmith_div_f32(-402f, _wgslsmith_f_op_f32(var_1.a.x + global3[_wgslsmith_index_u32(0u, 15u)])))), _wgslsmith_add_i32(~((2147483647i ^ var_0.a) | (i32(-1i) * -2147483647i)), min(4926i, firstLeadingBit(26864i))), ~abs(var_1.b));
}

