struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-1827f);

var<private> global1: vec4<u32> = vec4<u32>(23701u, 1u, 2598u, 1u);

var<private> global2: i32;

var<private> global3: vec4<bool>;

var<private> global4: array<vec3<f32>, 18>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec2<i32>) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-772f, arg_0.c.a, -1258f, global0.a) * vec4<f32>(-1030f, 281f, 1913f, global0.a))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1.x, -158f, 2063f, 1049f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(217f, 2159f, global0.a, -242f))) * vec4<f32>(_wgslsmith_div_f32(global0.a, global0.a), _wgslsmith_f_op_f32(round(global0.a)), _wgslsmith_f_op_f32(-arg_0.c.a), _wgslsmith_f_op_f32(arg_0.a.a - 468f)))) + vec4<f32>(_wgslsmith_f_op_f32(select(arg_0.a.a, global0.a, 3040u < global1.x)), 487f, _wgslsmith_f_op_f32(max(1048f, -1113f)), arg_1.x));
    var var_1 = arg_2;
    let var_2 = Struct_1(global0.a);
    global2 = var_1.x;
    var var_3 = _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(reverseBits(u_input.a), 0u), global1.x) >> (vec2<u32>(abs(1u), 0u) % vec2<u32>(32u)), global1.yw);
    return ~(_wgslsmith_div_vec4_u32(~max(vec4<u32>(42777u, u_input.d, var_3.x, 0u), vec4<u32>(0u, 82323u, global1.x, u_input.a)), _wgslsmith_mult_vec4_u32(vec4<u32>(global1.x, 55659u, arg_0.b.x, 1u), vec4<u32>(1u, 4294967295u, 12106u, 1u)) | reverseBits(vec4<u32>(u_input.e, 1u, var_3.x, u_input.a))) ^ vec4<u32>(~22194u, arg_0.b.x, 1u, u_input.d));
}

fn func_2() -> i32 {
    global1 = select(vec4<u32>(~u_input.e, global1.x, u_input.d, ~0u & global1.x), func_3(Struct_2(Struct_1(-746f), ~global1.yxx, Struct_1(-2045f)), _wgslsmith_f_op_vec3_f32(-global4[_wgslsmith_index_u32(global1.x, 18u)]), vec2<i32>(-2147483647i, -25785i)) | vec4<u32>(_wgslsmith_mod_u32(1u, 16225u), _wgslsmith_mod_u32(~u_input.d, 17555u), firstLeadingBit(1u), 1u), select(select(select(select(vec4<bool>(true, global3.x, global3.x, global3.x), vec4<bool>(global3.x, false, true, false), global3.x), !vec4<bool>(false, false, false, global3.x), select(true, global3.x, true)), !(!vec4<bool>(global3.x, false, global3.x, global3.x)), !vec4<bool>(global3.x, global3.x, global3.x, false)), vec4<bool>(any(global3.zzw), !global3.x, global3.x, ~0u >= (0u | global1.x)), global3.x || ((u_input.b.x >> (0u % 32u)) >= -2147483647i)));
    global0 = Struct_1(global0.a);
    let var_0 = Struct_2(Struct_1(1095f), vec3<u32>(global1.x, _wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, 71435u, 1u << (1u % 32u)), ~vec3<u32>(57799u, u_input.a, 6040u) & vec3<u32>(global1.x, 0u, u_input.d)), 0u), Struct_1(global0.a));
    return _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(-3990i, u_input.b.x, u_input.b.x, 9557i)), u_input.b);
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: Struct_1, arg_3: vec4<i32>) -> f32 {
    var var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(~1u | (arg_0 & arg_0), 53926u, _wgslsmith_mult_u32(_wgslsmith_mult_u32(global1.x, 4294967295u), 1062u), 24833u) >> (_wgslsmith_add_vec4_u32((vec4<u32>(4294967295u, 58165u, arg_0, 1u) & vec4<u32>(u_input.e, 6096u, global1.x, 2104u)) ^ ~vec4<u32>(1u, 26639u, arg_0, u_input.c.x), vec4<u32>(171u, 0u, arg_0, 111315u)) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32((max(vec4<u32>(global1.x, global1.x, 1u, u_input.d), vec4<u32>(0u, 1u, global1.x, 4294967295u)) << ((vec4<u32>(0u, 23095u, global1.x, 4294967295u) | vec4<u32>(arg_0, global1.x, 5073u, u_input.e)) % vec4<u32>(32u))) << (reverseBits(vec4<u32>(1u, 17342u, 5598u, arg_0)) % vec4<u32>(32u)), ~abs(func_3(Struct_2(Struct_1(global0.a), vec3<u32>(1u, global1.x, 16645u), Struct_1(global0.a)), vec3<f32>(arg_2.a, -143f, 1036f), u_input.b.wz))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2.a), _wgslsmith_f_op_f32(step(arg_2.a, global0.a)))), -225f)), vec3<u32>(_wgslsmith_div_u32(global1.x, 41198u), _wgslsmith_clamp_u32(45009u, 4294967295u, arg_0), 90827u) | (vec3<u32>(max(75794u, arg_0), global1.x, ~39142u) & abs(_wgslsmith_clamp_vec3_u32(u_input.c, vec3<u32>(arg_0, u_input.e, 0u), u_input.c))), arg_2);
    var var_2 = global3.ww;
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.a.a - global0.a)));
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    global0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(_wgslsmith_mult_u32(firstTrailingBit(25484u), global1.x), func_2(), Struct_1(-925f), vec4<i32>(abs(1i), -1i, -1i, u_input.b.x >> (4294967295u % 32u)))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(-global0.a)))));
    var var_0 = u_input.b.ww & vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, 2147483647i), _wgslsmith_add_i32(u_input.b.x, u_input.b.x)) | -(~u_input.b.x), (u_input.b.x << (47197u % 32u)) & 12333i);
    global2 = abs(var_0.x);
    let var_1 = _wgslsmith_mod_i32(u_input.b.x, _wgslsmith_mult_i32(-2147483647i, 1i));
    var var_2 = Struct_2(Struct_1(global0.a), _wgslsmith_add_vec3_u32(vec3<u32>(max(3244u >> (0u % 32u), 1u), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(18604u, 96098u, 32402u, global1.x), vec4<u32>(global1.x, u_input.e, global1.x, 27546u)), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 54496u, 4294967295u), vec4<u32>(u_input.c.x, 1u, 0u, 4294967295u))), select(4294967295u, 0u, !global3.x)), u_input.c), Struct_1(-938f));
    return Struct_1(_wgslsmith_f_op_f32(abs(global0.a)));
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec4<i32>) -> vec4<u32> {
    return vec4<u32>(92498u, ~1u, countOneBits(_wgslsmith_clamp_u32(~global1.x, global1.x, 0u)), global1.x) << ((~_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.e, global1.x, global1.x, 4294967295u), vec4<u32>(2967u, global1.x, global1.x, u_input.a) ^ vec4<u32>(26104u, global1.x, global1.x, global1.x)) >> (~select(vec4<u32>(u_input.a, u_input.e, 2676u, 0u) ^ vec4<u32>(u_input.e, 4294967295u, global1.x, u_input.a), vec4<u32>(u_input.c.x, global1.x, global1.x, 0u), !vec4<bool>(false, true, global3.x, true)) % vec4<u32>(32u))) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(global0.a);
    global1 = _wgslsmith_clamp_vec4_u32(abs(reverseBits(select(select(vec4<u32>(1u, 4294967295u, global1.x, u_input.a), vec4<u32>(0u, 4294967295u, 69u, 58669u), global3.x), ~vec4<u32>(global1.x, global1.x, 29893u, 38885u), select(vec4<bool>(false, true, false, true), vec4<bool>(global3.x, false, false, global3.x), true)))), func_5(vec2<i32>(-1i) * -vec2<i32>(u_input.b.x, u_input.b.x), func_1(!select(vec2<bool>(global3.x, global3.x), global3.zw, global3.x)), ~vec4<i32>(31121i, _wgslsmith_sub_i32(u_input.b.x, u_input.b.x), 55136i << (u_input.c.x % 32u), _wgslsmith_mod_i32(u_input.b.x, u_input.b.x))), _wgslsmith_div_vec4_u32(~func_5(vec2<i32>(-1i, -2147483647i), Struct_1(-1103f), vec4<i32>(1i, -5527i, u_input.b.x, 2147483647i)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, 63969u, 6901u, u_input.a) << (vec4<u32>(global1.x, 40481u, u_input.a, 56162u) % vec4<u32>(32u)), vec4<u32>(4294967295u, u_input.a, 1u, global1.x)) % vec4<u32>(32u)), func_5(~u_input.b.zz, Struct_1(-543f), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 28058i), u_input.b, abs(u_input.b)))));
    global3 = select(vec4<bool>(false, global3.x, _wgslsmith_f_op_f32(-2279f + global0.a) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a * 360f)), any(select(!vec4<bool>(true, global3.x, global3.x, global3.x), select(vec4<bool>(global3.x, true, global3.x, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, global3.x, global3.x)), !global3.x))), !vec4<bool>(all(global3.yyy), global3.x, true == (global1.x < 1u), true != (global3.x != false)), vec4<bool>(any(select(select(vec2<bool>(true, global3.x), global3.xy, false), vec2<bool>(global3.x, true), true)), false, any(select(select(vec2<bool>(false, global3.x), global3.wz, global3.x), select(vec2<bool>(true, false), global3.wy, vec2<bool>(false, global3.x)), global3.x != false)), !any(!vec3<bool>(true, global3.x, false))));
    let var_0 = _wgslsmith_mod_u32(4294967295u, ~(~1u) << ((_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, global1.x), u_input.c.xy) | (select(93846u, global1.x, true) ^ 1u)) % 32u));
    let var_1 = func_1(vec2<bool>(any(select(vec2<bool>(false, true), global3.wz, vec2<bool>(global3.x, global3.x))), false));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_u32(global1.zy, (_wgslsmith_div_vec2_u32(u_input.c.yx, global1.ww) & select(vec2<u32>(u_input.c.x, global1.x), vec2<u32>(global1.x, global1.x), vec2<bool>(global3.x, global3.x))) | u_input.c.yy), ~62470u, ((vec4<i32>(-21971i, 0i, -1i, u_input.b.x) | firstLeadingBit(vec4<i32>(0i, 0i, 2147483647i, u_input.b.x))) & abs(u_input.b)) | vec4<i32>(reverseBits(-u_input.b.x), -(u_input.b.x ^ u_input.b.x), -u_input.b.x, ~u_input.b.x));
}

