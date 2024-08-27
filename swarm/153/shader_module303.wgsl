struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: vec3<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: i32,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 23>;

var<private> global1: array<vec4<u32>, 7> = array<vec4<u32>, 7>(vec4<u32>(6591u, 58571u, 1u, 1526u), vec4<u32>(24798u, 47327u, 0u, 49072u), vec4<u32>(0u, 1u, 14172u, 852u), vec4<u32>(1u, 0u, 69850u, 0u), vec4<u32>(1u, 1u, 70639u, 1u), vec4<u32>(18385u, 40122u, 4294967295u, 4294967295u), vec4<u32>(10968u, 3342u, 73602u, 11848u));

var<private> global2: array<vec3<u32>, 17>;

var<private> global3: array<bool, 15> = array<bool, 15>(true, true, true, true, false, false, false, true, false, true, false, false, false, false, false);

var<private> global4: u32 = 10000u;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>) -> bool {
    global4 = ~u_input.c.x;
    var var_0 = u_input.c.x;
    global3 = array<bool, 15>();
    let var_1 = select(vec3<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 15u)], false, arg_1.x < arg_1.x), vec3<bool>(!(~arg_0.a > u_input.b), select(any(select(vec2<bool>(false, global3[_wgslsmith_index_u32(83286u, 15u)]), vec2<bool>(false, global3[_wgslsmith_index_u32(4294967295u, 15u)]), vec2<bool>(false, true))), !(u_input.c.x > u_input.c.x), global3[_wgslsmith_index_u32(~u_input.c.x >> (_wgslsmith_dot_vec2_u32(vec2<u32>(33017u, 0u), u_input.c) % 32u), 15u)]), true), !vec3<bool>(u_input.c.x != ~4294967295u, all(vec3<bool>(true, global3[_wgslsmith_index_u32(4080u, 15u)], false)), all(!vec4<bool>(false, true, global3[_wgslsmith_index_u32(0u, 15u)], global3[_wgslsmith_index_u32(u_input.c.x, 15u)]))));
    let var_2 = _wgslsmith_f_op_vec2_f32(arg_1.zy - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_1.yx, arg_1.zx) + vec2<f32>(arg_0.b, arg_1.x)), _wgslsmith_f_op_vec2_f32(exp2(arg_1.zy)), false)) - vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(f32(-1f) * -917f))));
    return var_1.x | (select(firstTrailingBit(0u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, 339u), vec3<u32>(u_input.c.x, 25150u, 4294967295u)) << (0u % 32u), all(select(vec3<bool>(false, global3[_wgslsmith_index_u32(u_input.c.x, 15u)], var_1.x), vec3<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 15u)], global3[_wgslsmith_index_u32(u_input.c.x, 15u)], global3[_wgslsmith_index_u32(u_input.c.x, 15u)]), vec3<bool>(var_1.x, global3[_wgslsmith_index_u32(1u, 15u)], var_1.x)))) <= u_input.c.x);
}

fn func_2(arg_0: i32) -> Struct_3 {
    var var_0 = Struct_2(vec4<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 15u)], true, global3[_wgslsmith_index_u32(countOneBits(~4294967295u), 15u)], func_3(Struct_1(abs(-28194i), _wgslsmith_f_op_f32(-394f * -1667f)), vec4<f32>(_wgslsmith_div_f32(492f, 701f), -334f, _wgslsmith_f_op_f32(815f + 379f), _wgslsmith_f_op_f32(-539f + 1728f)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1971f, 181f)))))), ~(global2[_wgslsmith_index_u32(~firstLeadingBit(106005u), 17u)] ^ ~(~global2[_wgslsmith_index_u32(4294967295u, 17u)])));
    global4 = _wgslsmith_mult_u32(_wgslsmith_mult_u32(0u, firstTrailingBit(firstLeadingBit(1u))), min(_wgslsmith_dot_vec3_u32(vec3<u32>(20247u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 19929u, var_0.c.x), vec3<u32>(4294967295u, 4294967295u, u_input.c.x)), u_input.c.x), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 0u, var_0.c.x) ^ global2[_wgslsmith_index_u32(u_input.c.x, 17u)], vec3<u32>(0u, 0u, 27786u))), _wgslsmith_add_u32(~_wgslsmith_add_u32(0u, var_0.c.x), ~(u_input.c.x << (1u % 32u)))));
    global0 = array<vec4<i32>, 23>();
    global1 = array<vec4<u32>, 7>();
    var var_1 = Struct_2(!select(vec4<bool>(true, u_input.c.x < var_0.c.x, select(var_0.a.x, global3[_wgslsmith_index_u32(u_input.c.x, 15u)], false), !var_0.a.x), select(var_0.a, select(var_0.a, vec4<bool>(global3[_wgslsmith_index_u32(6671u, 15u)], global3[_wgslsmith_index_u32(var_0.c.x, 15u)], false, var_0.a.x), var_0.a.x), vec4<bool>(false, false, global3[_wgslsmith_index_u32(95593u, 15u)], false)), select(!var_0.a, !var_0.a, vec4<bool>(global3[_wgslsmith_index_u32(29878u, 15u)], false, global3[_wgslsmith_index_u32(u_input.c.x, 15u)], global3[_wgslsmith_index_u32(4294967295u, 15u)]))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.b.x * var_0.b.x), var_0.b.x) + var_0.b), vec2<f32>(_wgslsmith_f_op_f32(ceil(-320f)), _wgslsmith_f_op_f32(ceil(var_0.b.x))), false)), vec3<u32>((var_0.c.x & var_0.c.x) >> (u_input.c.x % 32u), _wgslsmith_div_u32(abs(4294967295u), firstLeadingBit(var_0.c.x)), _wgslsmith_sub_u32(u_input.c.x, abs(1u))) >> (~(~vec3<u32>(4294967295u, var_0.c.x, 4294967295u)) % vec3<u32>(32u)));
    return Struct_3(select(all(!var_0.a.zww), !select(var_1.a.x, false, global3[_wgslsmith_index_u32(var_1.c.x, 15u)] != false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x * var_1.b.x)) < _wgslsmith_f_op_f32(-var_0.b.x)), Struct_2(!var_1.a, var_0.b, _wgslsmith_add_vec3_u32(countOneBits(~vec3<u32>(u_input.c.x, 43640u, var_1.c.x)), vec3<u32>(_wgslsmith_div_u32(var_1.c.x, var_1.c.x), u_input.c.x, 1u))), _wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(~var_0.c.yz, ~vec2<u32>(67098u, var_0.c.x)), 23u)], ~vec4<i32>(u_input.b, 1i, _wgslsmith_sub_i32(-2147483647i, 1i), 850i)), Struct_1(abs(2147483647i), _wgslsmith_f_op_f32(f32(-1f) * -504f)), Struct_2(!vec4<bool>(1u != var_0.c.x, true, global3[_wgslsmith_index_u32(var_0.c.x, 15u)], select(true, false, var_1.a.x)), vec2<f32>(-731f, _wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_mod_vec3_u32(var_0.c, countOneBits(~global2[_wgslsmith_index_u32(0u, 17u)]))));
}

fn func_1() -> Struct_3 {
    global2 = array<vec3<u32>, 17>();
    global0 = array<vec4<i32>, 23>();
    global0 = array<vec4<i32>, 23>();
    global2 = array<vec3<u32>, 17>();
    let var_0 = func_2(_wgslsmith_clamp_i32(13724i, u_input.a >> (_wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.c.x, u_input.c.x), ~u_input.c.x) % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, ~3915i, min(u_input.b, -1i), -40958i), vec4<i32>(u_input.b, -2147483647i, u_input.b, ~2147483647i))));
    return Struct_3(func_2(var_0.c).b.a.x, func_2(var_0.d.a).b, ~(~(~1i)), var_0.d, func_2(var_0.c).b);
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: u32, arg_3: Struct_3) -> Struct_1 {
    var var_0 = Struct_3(false, Struct_2(!func_2(-2147483647i).e.a, _wgslsmith_f_op_vec2_f32(-func_1().b.b), global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(arg_2, arg_3.b.c.x), 17u)]), (i32(-1i) * -(u_input.b & arg_3.d.a)) ^ arg_1, Struct_1(u_input.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.e.b.x) - _wgslsmith_f_op_f32(-1256f * -1010f)), _wgslsmith_f_op_f32(trunc(238f)))), arg_3.e);
    var var_1 = func_1().e;
    return Struct_1(var_0.d.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2013f), arg_3.e.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<u32>, 17>();
    global3 = array<bool, 15>();
    let var_0 = Struct_3(false, Struct_2(select(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, global3[_wgslsmith_index_u32(1u, 15u)], global3[_wgslsmith_index_u32(5614u, 15u)], true), vec4<bool>(false, false, global3[_wgslsmith_index_u32(u_input.c.x, 15u)], global3[_wgslsmith_index_u32(50558u, 15u)])), vec4<bool>(true, true, true, true), !vec4<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 15u)], false, false, false)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1370f - -1806f), _wgslsmith_div_f32(-1633f, -468f)) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-676f, -1251f))))), select(global2[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(0u, 7u)], global1[_wgslsmith_index_u32(4294967295u, 7u)])), 17u)], global2[_wgslsmith_index_u32(u_input.c.x, 17u)], vec3<bool>(u_input.c.x >= u_input.c.x, global3[_wgslsmith_index_u32(16375u, 15u)], true))), 31447i, func_4(u_input.c.x, -34854i, ~(~59684u), func_1()), func_1().e);
    global1 = array<vec4<u32>, 7>();
    let var_1 = ~2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_div_f32(-1190f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -230f))), var_0.b.b.x), reverseBits(func_1().b.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.d.b)))) + 3075f), vec3<i32>(var_1, -_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(u_input.c.x, 23u)], global0[_wgslsmith_index_u32(var_0.b.c.x, 23u)]), var_1), var_0.c));
}

