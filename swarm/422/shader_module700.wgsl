struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(1u, 26647u, 0u);

var<private> global1: array<f32, 5>;

var<private> global2: Struct_1;

var<private> global3: array<bool, 18>;

var<private> global4: array<vec4<i32>, 24>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: u32) -> vec3<u32> {
    let var_0 = abs(_wgslsmith_div_i32(9870i, -(-1i >> (min(37921u, u_input.a) % 32u))));
    let var_1 = vec2<bool>(!(_wgslsmith_f_op_f32(floor(597f)) < -1000f), global3[_wgslsmith_index_u32(~(~(~global0.x)), 18u)] & all(global2.a));
    let var_2 = ~min(_wgslsmith_mod_u32(max(4294967295u, 27423u), abs(global0.x)) << (global0.x % 32u), ~(~0u) >> ((global0.x >> ((arg_0 >> (1u % 32u)) % 32u)) % 32u));
    let var_3 = vec3<i32>(var_0, 1i, -var_0 >> ((u_input.a ^ ~(var_2 ^ 1u)) % 32u));
    global1 = array<f32, 5>();
    return firstTrailingBit(_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(var_2, 56875u, arg_0)) ^ firstLeadingBit(select(vec3<u32>(5270u, global0.x, global0.x), vec3<u32>(var_2, 4294967295u, arg_0), global2.a.x)), vec3<u32>(_wgslsmith_add_u32(~var_2, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_2, arg_0), vec3<u32>(u_input.a, arg_0, arg_0))), u_input.a, 29118u), ~(~vec3<u32>(var_2, u_input.a, u_input.a))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<u32>) -> vec4<bool> {
    let var_0 = Struct_1(global2.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.b, _wgslsmith_f_op_f32(ceil(-954f)))))));
    let var_1 = _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32((vec4<u32>(u_input.a, 1681u, 1u, u_input.a) | abs(vec4<u32>(u_input.a, global0.x, arg_1.x, 0u))) << (vec4<u32>(countOneBits(1u), _wgslsmith_mult_u32(global0.x, 1u), min(arg_1.x, global0.x), max(21924u, u_input.a)) % vec4<u32>(32u)), ~vec4<u32>(u_input.a, 1u, 23064u, u_input.a) << ((_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 47374u, 1u, 156u), vec4<u32>(0u, u_input.a, 57472u, global0.x)) >> (vec4<u32>(arg_1.x, arg_1.x, u_input.a, arg_1.x) % vec4<u32>(32u))) % vec4<u32>(32u))), select(~(vec4<u32>(arg_1.x, global0.x, arg_1.x, 13938u) | ~vec4<u32>(11167u, 111096u, arg_1.x, 84671u)), vec4<u32>(u_input.a, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 0u, 20273u), vec4<u32>(global0.x, 0u, 8460u, arg_1.x)), u_input.a, u_input.a), select(global2.a, vec4<bool>(global3[_wgslsmith_index_u32(global0.x, 18u)], 407f <= var_0.b, global2.a.x, all(vec4<bool>(true, global2.a.x, true, global2.a.x))), var_0.a.x)));
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1844f), arg_0.x));
    var var_3 = 4294967295u;
    global3 = array<bool, 18>();
    return select(vec4<bool>(var_0.a.x, !global3[_wgslsmith_index_u32(global0.x, 18u)], true, true), vec4<bool>(any(select(!var_0.a, !var_0.a, global3[_wgslsmith_index_u32(arg_1.x, 18u)] == global3[_wgslsmith_index_u32(global0.x, 18u)])), global3[_wgslsmith_index_u32(global0.x, 18u)], false, var_0.a.x), false);
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<i32>) -> bool {
    global1 = array<f32, 5>();
    var var_0 = Struct_1(func_4(vec4<f32>(-1079f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-581f * global1[_wgslsmith_index_u32(global0.x, 5u)])), -658f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(47367u, 5u)]), 601f))), func_3(11206u)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b)))), global2.b)));
    global2 = Struct_1(select(func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.b, var_0.b, var_0.b, global2.b), vec4<f32>(global2.b, -828f, 1569f, var_0.b), global2.a))), ~select(vec3<u32>(u_input.a, global0.x, 1u), vec3<u32>(u_input.a, 0u, global0.x), true)), !func_4(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(204f, var_0.b, -462f, var_0.b))), func_3(0u)), select(select(var_0.a, var_0.a, all(var_0.a.zxz)), vec4<bool>(true, true, global2.a.x, any(vec2<bool>(false, false))), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) + global2.b) * _wgslsmith_f_op_f32(abs(var_0.b)))));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -789f);
    var var_2 = Struct_1(global2.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1000f)), 1382f)));
    return global2.a.x;
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_1) -> Struct_1 {
    return Struct_1(select(global2.a, vec4<bool>(global3[_wgslsmith_index_u32(abs(global0.x), 18u)] && true, global2.a.x, any(func_4(vec4<f32>(global2.b, arg_1.b, -766f, arg_1.b), vec3<u32>(1u, 0u, u_input.a))), false), vec4<bool>(any(global2.a.xzw), all(!vec2<bool>(false, global3[_wgslsmith_index_u32(global0.x, 18u)])), !global2.a.x, true)), _wgslsmith_f_op_f32(-global2.b));
}

fn func_1(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = func_5(select(vec2<bool>(func_2(~global4[_wgslsmith_index_u32(u_input.a, 24u)], vec2<i32>(-1i, -2147483647i)), true), vec2<bool>(all(!vec2<bool>(global2.a.x, arg_0.a.x)), select(global3[_wgslsmith_index_u32(1u, 18u)], any(vec4<bool>(false, arg_0.a.x, global2.a.x, global2.a.x)), true)), !global2.a.yx), Struct_1(!vec4<bool>(true, true, true, func_4(vec4<f32>(867f, -1679f, global1[_wgslsmith_index_u32(u_input.a, 5u)], -611f), vec3<u32>(u_input.a, u_input.a, 0u)).x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2.b)))));
    let var_1 = _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-1100f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(func_5(vec2<bool>(global2.a.x, var_0.a.x), arg_0).b, _wgslsmith_f_op_f32(select(-2279f, 1385f, global3[_wgslsmith_index_u32(0u, 18u)]))))));
    var var_2 = vec3<f32>(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(~u_input.a, 5u)], global2.b), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1361f)) * var_1) * var_0.b), global3[_wgslsmith_index_u32(global0.x, 18u)])), _wgslsmith_f_op_f32(-global2.b));
    var var_3 = func_5(arg_0.a.xx, arg_0).a.x;
    let var_4 = _wgslsmith_div_i32(_wgslsmith_div_i32(-abs(14236i), reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 1i, 7916i), vec3<i32>(29958i, -2147483647i, 0i))) << (~global0.x % 32u)), -(i32(-1i) * -63829i));
    return select(var_0.a, select(global2.a, global2.a, func_2(global4[_wgslsmith_index_u32(_wgslsmith_add_u32(global0.x, 1u), 24u)], _wgslsmith_mult_vec2_i32(vec2<i32>(var_4, var_4) << (vec2<u32>(0u, global0.x) % vec2<u32>(32u)), vec2<i32>(-1i, -22248i)))), !(!arg_0.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(select(select(select(func_1(Struct_1(vec4<bool>(true, global2.a.x, true, false), global2.b)), vec4<bool>(global3[_wgslsmith_index_u32(u_input.a, 18u)], false, global3[_wgslsmith_index_u32(u_input.a, 18u)], global2.a.x), global2.a), !func_1(Struct_1(global2.a, global1[_wgslsmith_index_u32(10280u, 5u)])), vec4<bool>(any(global2.a.yzx), global2.a.x, any(vec3<bool>(global2.a.x, false, global3[_wgslsmith_index_u32(global0.x, 18u)])), global3[_wgslsmith_index_u32(~57840u, 18u)])), global2.a, select(func_5(vec2<bool>(global3[_wgslsmith_index_u32(u_input.a, 18u)], false), func_5(global2.a.yz, Struct_1(vec4<bool>(false, global2.a.x, true, global2.a.x), -1853f))).a, !global2.a, global2.a)), global1[_wgslsmith_index_u32(abs(~(~global0.x ^ _wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, u_input.a, global0.x), vec3<u32>(global0.x, 32153u, u_input.a)))), 5u)]);
    var var_1 = _wgslsmith_dot_vec3_i32(-(_wgslsmith_sub_vec3_i32(max(vec3<i32>(-2147483647i, 56297i, 19541i), vec3<i32>(2952i, -1i, -9984i)), vec3<i32>(0i, -648i, -1730i)) & (vec3<i32>(1i, 1i, 1i) << (max(vec3<u32>(4294967295u, u_input.a, 48731u), vec3<u32>(0u, 54867u, global0.x)) % vec3<u32>(32u)))), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(max(-32028i, 0i), -23595i), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(31886i, 5381i, 1i, -17160i), vec4<i32>(10215i, 4629i, 6048i, 42717i)), i32(-1i) * -1i)), 10448i << ((firstTrailingBit(global0.x) & abs(1u)) % 32u), ~0i));
    let var_2 = abs(abs(_wgslsmith_dot_vec2_i32(-vec2<i32>(1i, 1i), _wgslsmith_mult_vec2_i32(vec2<i32>(11112i, 14489i), vec2<i32>(13107i, 39569i)) & (vec2<i32>(0i, 35454i) << (global0.zz % vec2<u32>(32u))))));
    let var_3 = func_5(select(vec2<bool>(false, true), global2.a.yw, global2.a.xx), Struct_1(select(var_0.a, global2.a, !vec4<bool>(var_0.a.x, true, var_0.a.x, true)), var_0.b));
    let var_4 = var_3;
    var var_5 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(abs(56242u), 5u)], 655f), -686f, var_4.b), vec3<f32>(575f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1000f, global2.b), _wgslsmith_f_op_f32(f32(-1f) * -335f), global2.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.b))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, -1964f, global1[_wgslsmith_index_u32(11581u, 5u)]) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.b, global2.b, var_0.b))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(global0.x, ~(global0.x << (1u % 32u)), global0.x) ^ _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 1u, 0u), ~vec3<u32>(40375u, u_input.a, 8022u)), (vec3<u32>(0u, u_input.a, 4294967295u) | vec3<u32>(4294967295u, 4294967295u, global0.x)) | vec3<u32>(4294967295u, 64450u, global0.x)), ~(~u_input.a));
}

