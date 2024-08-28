struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(42769u, 10423u, 4294967295u, 4294967295u);

var<private> global1: Struct_2 = Struct_2(true, vec2<f32>(973f, -573f));

var<private> global2: array<i32, 18> = array<i32, 18>(20009i, -9249i, 2147483647i, 1i, 39294i, 22331i, -4071i, 102412i, -13417i, i32(-2147483648), 52272i, 2147483647i, 5052i, -72476i, -40873i, 8659i, i32(-2147483648), 8510i);

var<private> global3: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: u32) -> u32 {
    let var_0 = select(vec3<bool>(global1.a, true, false), !vec3<bool>(!(!global3.c), !(!global3.b.x), !any(vec4<bool>(global1.a, false, global3.c, false))), true);
    var var_1 = firstTrailingBit(_wgslsmith_div_i32(_wgslsmith_mult_i32(abs(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, arg_0, 4294967295u), vec4<u32>(0u, 4294967295u, arg_0, 56448u)), 18u)]), min(u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(arg_0, 18u)], global2[_wgslsmith_index_u32(45104u, 18u)]), vec2<i32>(0i, 33377i)))), -38952i));
    let var_2 = 0i;
    global3 = Struct_1(0u, vec2<bool>(true, true), global1.b.x <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global3.d, global1.b.x), _wgslsmith_f_op_f32(round(-488f)))) - -1073f), 1000f);
    global0 = ~vec4<u32>((_wgslsmith_sub_u32(u_input.b, arg_0) | u_input.b) >> (_wgslsmith_clamp_u32(countOneBits(global0.x), ~0u, global3.a) % 32u), global0.x, abs(global3.a), ~u_input.b);
    return global3.a;
}

fn func_2() -> vec2<u32> {
    var var_0 = select(((u_input.a >> (reverseBits(global0.zx) % vec2<u32>(32u))) << (~_wgslsmith_add_vec2_u32(vec2<u32>(1u, 15212u), global0.wx) % vec2<u32>(32u))) >> (~firstTrailingBit(global0.zz) % vec2<u32>(32u)), abs(-min(u_input.a, vec2<i32>(global2[_wgslsmith_index_u32(global0.x, 18u)], global2[_wgslsmith_index_u32(global0.x, 18u)])) << (abs(vec2<u32>(4294967295u, 1u)) % vec2<u32>(32u))), any(!vec2<bool>(global1.a, global3.c)));
    global1 = Struct_2(false, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.b) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global3.d), _wgslsmith_f_op_f32(f32(-1f) * -472f)) + global1.b)));
    global3 = Struct_1(func_3(4294967295u), select(!global3.b, global3.b, global3.b), !all(vec4<bool>(true, global3.b.x, global1.a, 949f > global3.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global3.d)) + global3.d) + _wgslsmith_f_op_f32(ceil(global3.d))));
    global3 = Struct_1(_wgslsmith_add_u32(global3.a, u_input.b), global3.b, all(!global3.b), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global3.d), _wgslsmith_f_op_f32(669f * global3.d), false)))));
    return ~global0.zz ^ abs(vec2<u32>(~(~u_input.b), _wgslsmith_div_u32(12778u, 4294967295u)));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec2<i32>) -> Struct_2 {
    global2 = array<i32, 18>();
    let var_0 = Struct_1(1u, vec2<bool>(false, false), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.x)));
    var var_1 = -1000f;
    let var_2 = var_0;
    let var_3 = ~_wgslsmith_clamp_u32(_wgslsmith_div_u32(~81015u, ~(var_0.a << (30102u % 32u))), global0.x, ~(~var_0.a ^ 4294967295u));
    return Struct_2(_wgslsmith_f_op_f32(var_0.d * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -914f)))) > arg_1.x, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(473f, _wgslsmith_f_op_f32(-var_0.d)), _wgslsmith_f_op_f32(step(arg_0.d, global1.b.x))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.d, arg_0.d), arg_1.xz))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.yx)))));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: i32) -> u32 {
    global1 = Struct_2(!arg_1.c, vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(121f, _wgslsmith_f_op_f32(global1.b.x * -957f)))), global3.d));
    var var_0 = Struct_1(global0.x, !arg_1.b, select(arg_1.a >= 16696u, any(arg_1.b), arg_1.c), _wgslsmith_f_op_f32(max(global3.d, global3.d)));
    global2 = array<i32, 18>();
    global1 = func_4(Struct_1(_wgslsmith_dot_vec3_u32(countOneBits(global0.zxx), vec3<u32>(64718u, arg_1.a >> (arg_0 % 32u), arg_0)), vec2<bool>(false, !select(global1.a, global3.c, global1.a)), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -571f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.d, global1.b.x, 1178f, 1105f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global3.d, arg_1.d, -1264f, 1000f), vec4<f32>(global1.b.x, 912f, global3.d, global1.b.x)))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.d, global3.d, 1000f, -956f), vec4<f32>(global3.d, global3.d, -689f, 1797f)) + _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.d, 1600f, -483f, global1.b.x), vec4<f32>(856f, 791f, 970f, 898f))))), select(!(!vec4<bool>(var_0.c, true, global3.c, var_0.b.x)), select(vec4<bool>(true, arg_1.b.x, true, true), !vec4<bool>(true, global1.a, true, global1.a), all(vec3<bool>(false, var_0.b.x, global1.a))), true))), _wgslsmith_mod_vec2_i32(vec2<i32>(~global2[_wgslsmith_index_u32(global3.a, 18u)], u_input.a.x), _wgslsmith_mod_vec2_i32(reverseBits(u_input.a) >> (func_2() % vec2<u32>(32u)), vec2<i32>(-13345i, global2[_wgslsmith_index_u32(1u, 18u)]))));
    global3 = Struct_1(~(~(~arg_0 << (arg_1.a % 32u))), arg_1.b, all(select(vec3<bool>(arg_1.c, false, true), vec3<bool>(true, false, arg_1.b.x && false), !vec3<bool>(true, false, global3.b.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1350f) + -519f)), _wgslsmith_f_op_f32(f32(-1f) * -158f))));
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~firstTrailingBit(~(~vec4<u32>(4294967295u, global0.x, 15493u, global3.a)));
    var var_0 = _wgslsmith_f_op_vec2_f32(-global1.b);
    var var_1 = global1.b.x;
    var var_2 = 0u;
    var var_3 = func_1(8005u, Struct_1(u_input.b, global3.b, all(vec4<bool>(!global1.a, true, false, true)), _wgslsmith_f_op_f32(ceil(616f))), ((_wgslsmith_mod_i32(u_input.a.x, global2[_wgslsmith_index_u32(u_input.b, 18u)]) ^ -5131i) >> (global3.a % 32u)) | (global2[_wgslsmith_index_u32(global0.x, 18u)] ^ _wgslsmith_sub_i32(u_input.a.x, _wgslsmith_add_i32(27801i, global2[_wgslsmith_index_u32(61787u, 18u)]))));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.x)), global3.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_i32((vec3<i32>(-28943i, global2[_wgslsmith_index_u32(u_input.b, 18u)], 81889i) ^ -vec3<i32>(global2[_wgslsmith_index_u32(17837u, 18u)], u_input.a.x, -2147483647i)) | vec3<i32>(abs(-2147483647i), -1i, -8155i), reverseBits(vec3<i32>(16457i, min(u_input.a.x, -15627i), _wgslsmith_sub_i32(global2[_wgslsmith_index_u32(global3.a, 18u)], u_input.a.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 2152f, global1.b.x, -402f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.x, 2332f, 671f, 1373f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.x, -1000f, 877f, 396f)), !global1.a)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, var_0.x, -381f, 389f)))))), func_1(~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(4294967295u, 35682u, global3.a, 19054u)), max(vec4<u32>(global0.x, global3.a, 4294967295u, global3.a), vec4<u32>(global0.x, global0.x, 1u, 4294967295u))), Struct_1(~(~0u), select(select(vec2<bool>(false, true), vec2<bool>(global3.c, true), global3.b), vec2<bool>(true, true), false), global3.b.x, -452f), firstTrailingBit(_wgslsmith_sub_i32(24837i, 0i) >> (select(0u, u_input.b, false) % 32u))), u_input.b, firstTrailingBit(~(-min(vec3<i32>(18391i, global2[_wgslsmith_index_u32(u_input.b, 18u)], 39996i), vec3<i32>(u_input.a.x, -1i, u_input.a.x)))));
}

