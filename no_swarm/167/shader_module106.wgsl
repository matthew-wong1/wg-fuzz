struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8> = array<u32, 8>(35002u, 1u, 4294967295u, 1u, 41989u, 1u, 55183u, 8102u);

var<private> global1: Struct_1;

var<private> global2: vec4<f32> = vec4<f32>(-572f, 645f, 735f, -1000f);

var<private> global3: u32 = 51554u;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i) ^ select(-vec4<i32>(1i, -21102i, -27750i, 2147483647i), countOneBits(vec4<i32>(0i, 32958i, 2147483647i, 2147483647i)), any(vec3<bool>(false, true, true))), vec4<i32>(1i, 1i, 1i, 1i)), 33304i);
    let var_1 = Struct_1(global1.a);
    let var_2 = global2.x;
    var var_3 = var_1;
    let var_4 = !(!vec2<bool>(!all(vec3<bool>(false, false, true)), any(select(vec2<bool>(false, true), vec2<bool>(false, true), true))));
    return -1288f;
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: Struct_2) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(ceil(arg_1.b.a)));
    var var_1 = max(~_wgslsmith_dot_vec3_u32(~vec3<u32>(7919u, global0[_wgslsmith_index_u32(96431u, 8u)], 7210u), abs(u_input.a.zwy >> (vec3<u32>(1u, 39870u, arg_0.x) % vec3<u32>(32u)))), global0[_wgslsmith_index_u32(~(~75025u), 8u)]);
    global1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + arg_3.b.a));
    let var_2 = Struct_2(firstTrailingBit(~_wgslsmith_div_u32(global0[_wgslsmith_index_u32(1u, 8u)], 11047u)) >= ~_wgslsmith_div_u32(4294967295u, _wgslsmith_div_u32(arg_2.x, arg_0.x)), arg_1.b);
    let var_3 = vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>((i32(-1i) * -31433i) >> (firstTrailingBit(4294967295u) % 32u), 0i, -2147483647i, ~(~27569i)), firstTrailingBit(firstTrailingBit(vec4<i32>(-6286i, 0i, -2147483647i, 1i) >> (u_input.a % vec4<u32>(32u))))), _wgslsmith_mod_i32(0i | _wgslsmith_clamp_i32(-1i, select(-69411i, -48086i, arg_3.a), -1i), 1i));
    return _wgslsmith_sub_u32(1u, ~(~1u));
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    global1 = arg_2;
    let var_0 = global2.zz;
    var var_1 = abs(vec4<i32>(-14639i, _wgslsmith_mult_i32(~(~0i), -25790i), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 2147483647i, -2147483647i), firstLeadingBit(vec3<i32>(-1i, -5830i, 39112i)), -vec3<i32>(32507i, 0i, -5243i)), select(-vec3<i32>(0i, 0i, 0i), vec3<i32>(1i, 1i, 1i), arg_0)), ~(_wgslsmith_dot_vec2_i32(vec2<i32>(-68803i, 2147483647i), vec2<i32>(22464i, -1984i)) & -1i)));
    var var_2 = any(select(vec4<bool>(true, false, arg_0, any(select(vec2<bool>(arg_0, true), vec2<bool>(true, false), arg_0))), !vec4<bool>(arg_0 & arg_0, true, !arg_0, true), vec4<bool>(all(!vec4<bool>(arg_0, false, arg_0, arg_0)), false, arg_0, true)));
    var_1 = abs(_wgslsmith_clamp_vec4_i32(~(-vec4<i32>(8971i, var_1.x, 1i, var_1.x)), vec4<i32>(firstTrailingBit(55540i), var_1.x, 1i, var_1.x), ~vec4<i32>(var_1.x, 1i, var_1.x, 15728i))) & firstTrailingBit(~vec4<i32>(_wgslsmith_add_i32(var_1.x, 12869i), var_1.x, -var_1.x, -1i));
    return arg_2;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: f32) -> bool {
    global1 = Struct_1(1000f);
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(226f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(831f))), arg_2, 1232f)));
    var var_0 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_2 + -2043f))));
    var var_1 = arg_2;
    var_0 = func_4(_wgslsmith_dot_vec4_u32(vec4<u32>(select(arg_0.x, global0[_wgslsmith_index_u32(71028u, 8u)], true), 1u, global0[_wgslsmith_index_u32(func_2(u_input.a.wwy, Struct_2(false, Struct_1(347f)), vec3<u32>(4819u, u_input.a.x, 20920u), Struct_2(false, Struct_1(global2.x))), 8u)], 1u), u_input.a) < min(0u, _wgslsmith_mult_u32(u_input.b, 34567u) ^ _wgslsmith_dot_vec2_u32(arg_0.xz, arg_0.zz)), ~5970u, Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.a)) + _wgslsmith_f_op_f32(-arg_2))))));
    return true;
}

fn func_5(arg_0: vec2<f32>, arg_1: vec2<bool>, arg_2: f32) -> Struct_2 {
    var var_0 = !(!select(vec2<bool>(any(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)), true), !(!arg_1), arg_1));
    global2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(630f, global1.a, global1.a, _wgslsmith_f_op_f32(ceil(arg_2))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(771f, arg_2, 656f, arg_2)))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-754f, 707f, 1557f, 1050f) * vec4<f32>(-139f, 646f, 268f, global2.x)) * vec4<f32>(1233f, 159f, 404f, global2.x))))));
    var var_1 = Struct_2(var_0.x, Struct_1(_wgslsmith_f_op_f32(floor(-1766f))));
    let var_2 = func_4(!any(select(!vec4<bool>(true, arg_1.x, arg_1.x, true), !vec4<bool>(true, var_0.x, true, false), arg_1.x)), u_input.b, var_1.b);
    global3 = ~global0[_wgslsmith_index_u32(0u, 8u)];
    return Struct_2(false, func_4(true, _wgslsmith_mult_u32(firstLeadingBit(u_input.b >> (92187u % 32u)), reverseBits(u_input.a.x)), func_4(any(select(vec4<bool>(arg_1.x, arg_1.x, false, var_1.a), vec4<bool>(false, var_0.x, false, true), vec4<bool>(var_1.a, true, false, false))), _wgslsmith_mult_u32(u_input.a.x, u_input.b) >> (u_input.b % 32u), var_2)));
}

fn func_6(arg_0: Struct_2) -> f32 {
    let var_0 = 1112f;
    let var_1 = select(select(vec4<bool>(_wgslsmith_div_f32(var_0, 283f) <= _wgslsmith_f_op_f32(floor(global2.x)), true, arg_0.a, false), vec4<bool>(true, -1000f < _wgslsmith_f_op_f32(global1.a + global2.x), false, true), !arg_0.a), select(vec4<bool>((arg_0.a && arg_0.a) & true, all(!vec3<bool>(arg_0.a, arg_0.a, false)), false, func_5(_wgslsmith_f_op_vec2_f32(global2.yx * vec2<f32>(arg_0.b.a, -804f)), vec2<bool>(arg_0.a, arg_0.a), _wgslsmith_f_op_f32(-var_0)).a), vec4<bool>(any(select(vec4<bool>(arg_0.a, true, arg_0.a, arg_0.a), vec4<bool>(false, false, arg_0.a, true), arg_0.a)), false, false, any(vec2<bool>(arg_0.a, arg_0.a)) | !arg_0.a), true || arg_0.a), select(vec4<bool>(all(select(vec4<bool>(false, true, arg_0.a, arg_0.a), vec4<bool>(arg_0.a, true, arg_0.a, arg_0.a), vec4<bool>(arg_0.a, arg_0.a, false, arg_0.a))), !(arg_0.a & arg_0.a), true, false), select(!(!vec4<bool>(false, arg_0.a, false, false)), !(!vec4<bool>(arg_0.a, false, arg_0.a, false)), vec4<bool>(func_1(u_input.a.xyx, vec4<i32>(-3634i, -33525i, -2147483647i, -35121i), -364f), true, true, arg_0.a)), vec4<bool>(all(vec2<bool>(true, false)), arg_0.a, 1050f >= _wgslsmith_f_op_f32(-global2.x), arg_0.a)));
    let var_2 = ~(~u_input.a.x);
    let var_3 = func_4(arg_0.a, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(u_input.a.zzy << (vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], 30333u, u_input.a.x) % vec3<u32>(32u)), select(vec3<u32>(global0[_wgslsmith_index_u32(0u, 8u)], var_2, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 8u)], 8u)]), u_input.a.yxx, var_1.zwz)) | abs(global0[_wgslsmith_index_u32(4294967295u, 8u)]), 19133u), func_4(false, ~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.a.x, 1u), ~var_2, 1u), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(-var_0)))));
    var var_4 = Struct_1(_wgslsmith_f_op_f32(-global2.x));
    return _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_0.b.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_3.a)) * global2.x)), _wgslsmith_f_op_f32(trunc(global2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(global2.x);
    global2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-1084f, _wgslsmith_f_op_f32(-global2.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(-global2.x))), _wgslsmith_f_op_f32(func_6(func_5(vec2<f32>(var_0.a, _wgslsmith_div_f32(var_0.a, global2.x)), vec2<bool>(any(vec2<bool>(false, true)), func_1(vec3<u32>(u_input.a.x, global0[_wgslsmith_index_u32(u_input.b, 8u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 8u)], 8u)]), vec4<i32>(2147483647i, 1i, 8797i, 29149i), 571f)), _wgslsmith_f_op_f32(-1446f - _wgslsmith_f_op_f32(f32(-1f) * -992f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -605f), _wgslsmith_f_op_f32(-global2.x))));
    var var_1 = func_4(all(vec3<bool>(true, true, any(select(vec2<bool>(false, true), vec2<bool>(false, false), false)))), 39061u, func_5(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(var_0.a, -1985f)), var_0.a), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(global2.ww))))), select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(false, false), false), any(vec2<bool>(false, true))), vec2<bool>(true, true), _wgslsmith_dot_vec2_u32(u_input.a.yw, vec2<u32>(global0[_wgslsmith_index_u32(30474u, 8u)], 4294967295u)) <= min(global0[_wgslsmith_index_u32(u_input.b, 8u)], u_input.b)), _wgslsmith_f_op_f32(f32(-1f) * -876f)).b);
    global0 = array<u32, 8>();
    let var_2 = Struct_2(false, Struct_1(global2.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(reverseBits(101580u), _wgslsmith_mod_u32(11672u, _wgslsmith_add_u32(max(global0[_wgslsmith_index_u32(4294967295u, 8u)], global0[_wgslsmith_index_u32(u_input.a.x, 8u)]), _wgslsmith_mod_u32(1u, u_input.b))), _wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], u_input.a.x, u_input.a.x), ~u_input.a.xzy) | ~1u), _wgslsmith_div_i32(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-45271i, -44567i, -2147483647i), select(0i, 1i, false), 1i), -1i) | -_wgslsmith_dot_vec2_i32(select(vec2<i32>(11489i, 32257i), vec2<i32>(2147483647i, 21554i), true), vec2<i32>(-59876i, 2147483647i)), 0i);
}

