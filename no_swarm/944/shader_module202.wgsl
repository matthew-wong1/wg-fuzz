struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec4<i32>,
    d: bool,
    e: vec2<u32>,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: f32,
    d: i32,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_3,
    c: vec2<bool>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: array<i32, 11>;

var<private> global2: array<vec4<f32>, 24>;

var<private> global3: Struct_1;

var<private> global4: array<Struct_5, 26>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec2<i32> {
    return vec2<i32>(2147483647i, -13523i >> (~countOneBits(~global0.d.x) % 32u));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: vec4<i32>, arg_3: Struct_3) -> vec3<bool> {
    let var_0 = Struct_2(Struct_1(min(reverseBits(func_3()), u_input.b.xx), ~global3.b, false), u_input.e, u_input.e, global3.c, select(_wgslsmith_clamp_vec2_u32(global3.b, vec2<u32>(global0.d.x, _wgslsmith_mod_u32(global3.b.x, global3.b.x)), ~global3.b), vec2<u32>(global3.b.x, abs(abs(65779u))), select(arg_1.xx, vec2<bool>(arg_1.x || global3.c, any(vec2<bool>(false, true))), arg_0.x)));
    var var_1 = Struct_4(_wgslsmith_f_op_f32(min(-276f, -464f)));
    var_1 = Struct_4(global0.a.x);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-510f - -842f) + -519f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.a.x)) + _wgslsmith_f_op_f32(max(1158f, -518f)))))));
    var var_3 = ~(vec3<u32>(_wgslsmith_mod_u32(global0.d.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, global0.d.x, var_0.a.b.x), vec3<u32>(29940u, 39078u, global0.d.x))), 7796u, _wgslsmith_div_u32(var_0.a.b.x, global3.b.x) >> (firstLeadingBit(1u) % 32u)) << ((_wgslsmith_add_vec3_u32(~vec3<u32>(var_0.e.x, 13640u, var_0.e.x), vec3<u32>(4294967295u, 0u, global3.b.x) >> (vec3<u32>(50702u, 16767u, 4294967295u) % vec3<u32>(32u))) ^ ~abs(vec3<u32>(global3.b.x, 1u, global0.d.x))) % vec3<u32>(32u)));
    return arg_0;
}

fn func_4(arg_0: bool, arg_1: vec4<i32>) -> f32 {
    let var_0 = !global0.c;
    var var_1 = false;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-822f)))));
}

fn func_1(arg_0: Struct_5, arg_1: vec2<i32>, arg_2: i32) -> Struct_2 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_4(all(func_2(vec3<bool>(global0.c.x, global3.c, true), vec4<bool>(arg_0.c.x, false, true, true), u_input.e, Struct_3(-245f, -571f, -458f, global3.a.x))), select(u_input.e << (vec4<u32>(3301u, 4294967295u, 38875u, global0.d.x) % vec4<u32>(32u)), vec4<i32>(arg_2, arg_2, arg_1.x, arg_2), select(vec4<bool>(global0.c.x, true, false, global3.c), vec4<bool>(false, true, global0.c.x, true), false)))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_4(!all(global0.c), vec4<i32>(0i, 21302i, arg_1.x, -13115i) & -vec4<i32>(1i, -5191i, -2147483647i, -16877i))))));
    global0 = Struct_5(vec2<f32>(-181f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -681f) * -601f)), arg_0.b, select(vec2<bool>(!(!global3.c), _wgslsmith_f_op_f32(arg_0.a.x * var_0.x) != _wgslsmith_f_op_f32(f32(-1f) * -341f)), select(!vec2<bool>(true, arg_0.c.x), vec2<bool>(global3.c, global3.c), !(!arg_0.c.x)), global0.c), ~global0.d);
    let var_1 = Struct_5(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(arg_0.a.x, _wgslsmith_f_op_f32(func_4(false, vec4<i32>(29016i, -70846i, 0i, global0.b.d))))), global0.b.b), _wgslsmith_f_op_vec2_f32(select(global0.a, _wgslsmith_f_op_vec2_f32(arg_0.a - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.a.x, var_0.x)))), vec2<bool>(true, all(vec4<bool>(global0.c.x, true, false, true)))))), arg_0.b, vec2<bool>(all(global0.c), arg_0.c.x && true), _wgslsmith_mod_vec2_u32(arg_0.d, global0.d << (vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.d.x, global0.d.x, 1u), vec3<u32>(20550u, 45710u, global0.d.x)), _wgslsmith_div_u32(0u, 1u)) % vec2<u32>(32u))));
    global3 = Struct_1(vec2<i32>(-2147483647i, -_wgslsmith_mod_i32(1i & arg_2, i32(-1i) * -3487i)), abs(var_1.d), func_2(vec3<bool>(true, true, true), vec4<bool>(_wgslsmith_f_op_f32(step(1226f, 370f)) == _wgslsmith_f_op_f32(-arg_0.a.x), true, all(vec2<bool>(true, true)), false), vec4<i32>(9558i, countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 8271i, global3.a.x, global0.b.d), vec4<i32>(arg_2, u_input.c, u_input.e.x, global1[_wgslsmith_index_u32(global0.d.x, 11u)]))), -11050i, 1i), Struct_3(805f, -476f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(2300f, var_1.b.a), _wgslsmith_f_op_f32(-var_0.x), global3.c)), -reverseBits(-23055i))).x);
    let var_2 = -31889i;
    return Struct_2(Struct_1(vec2<i32>(arg_0.b.d, 2147483647i), _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(max(vec2<u32>(global0.d.x, global3.b.x), arg_0.d), _wgslsmith_mod_vec2_u32(arg_0.d, vec2<u32>(1u, global0.d.x))), ~_wgslsmith_mult_vec2_u32(arg_0.d, arg_0.d)), true), ~(~u_input.e), vec4<i32>(4996i, _wgslsmith_mod_i32(~min(global1[_wgslsmith_index_u32(global3.b.x, 11u)], var_2), -11940i), arg_1.x, -19557i), true, arg_0.d);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_4, arg_2: vec2<f32>, arg_3: Struct_3) -> Struct_4 {
    let var_0 = ~_wgslsmith_div_vec2_i32((u_input.e.zz | arg_0.b.xz) | firstTrailingBit(vec2<i32>(25816i, u_input.b.x)), -(global3.a | arg_0.b.zz)) ^ vec2<i32>(26747i, _wgslsmith_sub_i32(~(~arg_3.d), arg_0.c.x));
    global1 = array<i32, 11>();
    var var_1 = ~reverseBits(~arg_0.e.x);
    global0 = Struct_5(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(arg_2)) * _wgslsmith_div_vec2_f32(arg_2, vec2<f32>(-766f, 1150f))))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-830f, 606f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a, -128f) * vec2<f32>(1153f, 1345f))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(arg_2, arg_2, global3.c)))))), Struct_3(_wgslsmith_f_op_f32(min(1466f, _wgslsmith_f_op_f32(func_4(global0.c.x, max(u_input.e, vec4<i32>(global1[_wgslsmith_index_u32(global3.b.x, 11u)], var_0.x, -1i, -2147483647i)))))), 607f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f * 1175f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(290f, arg_1.a)))), select(_wgslsmith_add_i32(u_input.a ^ global1[_wgslsmith_index_u32(global0.d.x, 11u)], 1i), -1i, abs(0u) > _wgslsmith_dot_vec2_u32(global0.d, vec2<u32>(global3.b.x, 4032u)))), !vec2<bool>(global0.c.x, select(global3.c, global0.c.x, all(vec4<bool>(true, global3.c, true, arg_0.a.c)))), _wgslsmith_mod_vec2_u32(arg_0.a.b, countOneBits(abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, arg_0.e.x), vec2<u32>(arg_0.a.b.x, 1u), arg_0.a.b)))));
    var var_2 = global1[_wgslsmith_index_u32(1u, 11u)];
    return arg_1;
}

fn func_6(arg_0: Struct_3, arg_1: Struct_4, arg_2: vec4<u32>, arg_3: vec2<bool>) -> Struct_3 {
    let var_0 = !global0.c.x;
    global1 = array<i32, 11>();
    let var_1 = !(!vec3<bool>(false, false, global0.c.x));
    global3 = func_1(Struct_5(vec2<f32>(_wgslsmith_div_f32(arg_1.a, _wgslsmith_f_op_f32(f32(-1f) * -996f)), _wgslsmith_f_op_f32(floor(arg_1.a))), arg_0, arg_3, (~global3.b >> (_wgslsmith_add_vec2_u32(arg_2.wz, vec2<u32>(global0.d.x, global3.b.x)) % vec2<u32>(32u))) | ~vec2<u32>(global0.d.x, 7254u)), -select(global3.a, -global3.a, arg_3), ~global3.a.x).a;
    var var_2 = !(!func_2(var_1, !(!vec4<bool>(false, true, global3.c, var_1.x)), u_input.e, arg_0));
    return Struct_3(global0.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(arg_0.a)), -457f))), -818f, ~(-firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.b.d, 91265i, -90710i), u_input.e.zyz))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~4294967295u, ~global0.d.x), 24u)] - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 328f, _wgslsmith_f_op_f32(step(global0.b.a, global0.b.b)), _wgslsmith_div_f32(global0.a.x, 791f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(global0.d.x, 24u)]) * global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.d.x, global3.b.x, 4839u), vec3<u32>(4294967295u, 44309u, global0.d.x)), 24u)]), firstTrailingBit(4294967295u) == max(global0.d.x, global3.b.x)))));
    var var_1 = Struct_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)) * vec2<f32>(var_0.x, global0.a.x)) * global0.a), func_6(global0.b, func_5(func_1(global4[_wgslsmith_index_u32(select(global3.b.x, global3.b.x, true), 26u)], u_input.b.yx, 0i), Struct_4(var_0.x), _wgslsmith_f_op_vec2_f32(-global0.a), Struct_3(_wgslsmith_f_op_f32(trunc(global0.b.a)), _wgslsmith_f_op_f32(abs(global0.a.x)), _wgslsmith_f_op_f32(max(785f, global0.a.x)), 25552i)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(global3.b.x, global0.d.x, 4294967295u, 1u), vec4<u32>(global3.b.x, global0.d.x, global0.d.x, 20258u) >> (vec4<u32>(global3.b.x, 24898u, global3.b.x, 4294967295u) % vec4<u32>(32u))), func_2(!(!vec3<bool>(global3.c, global3.c, false)), vec4<bool>(true, global0.c.x, global3.c, !global3.c), _wgslsmith_clamp_vec4_i32(vec4<i32>(global3.a.x, 2147483647i, 1i, -15366i), abs(u_input.e), ~vec4<i32>(-45145i, global0.b.d, u_input.e.x, -17565i)), global0.b).xy), global0.c, _wgslsmith_mod_vec2_u32(vec2<u32>(global0.d.x, global3.b.x), ~(global3.b & ~vec2<u32>(1u, 0u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~global3.b.x, _wgslsmith_clamp_u32(~(~21480u), global3.b.x, 0u)), global0.b.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.x, var_0.x))), _wgslsmith_f_op_vec2_f32(-var_0.xw))) + _wgslsmith_f_op_vec2_f32(ceil(global0.a))));
}

