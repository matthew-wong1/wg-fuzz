struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: bool,
    d: vec3<u32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<bool>(true, false, false), Struct_1(vec3<u32>(15306u, 4294967295u, 66253u), i32(-2147483648), vec2<i32>(-18509i, -34129i), vec2<f32>(-885f, 856f)), true, vec3<u32>(9318u, 0u, 2251u), vec3<bool>(false, true, false));

var<private> global1: bool;

var<private> global2: array<bool, 6> = array<bool, 6>(true, true, false, true, false, true);

var<private> global3: vec2<u32> = vec2<u32>(7671u, 101775u);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> vec4<i32> {
    var var_0 = global0.e.zz;
    let var_1 = global0.b.a.yx;
    var var_2 = _wgslsmith_f_op_f32(select(1609f, -827f, global0.a.x));
    var var_3 = ~(~max(2147483647i, ~2147483647i));
    var var_4 = !select(!select(select(vec4<bool>(global0.c, global2[_wgslsmith_index_u32(1u, 6u)], true, false), vec4<bool>(global0.c, false, var_0.x, global0.c), vec4<bool>(var_0.x, var_0.x, true, global0.e.x)), select(vec4<bool>(global2[_wgslsmith_index_u32(var_1.x, 6u)], false, global2[_wgslsmith_index_u32(var_1.x, 6u)], var_0.x), vec4<bool>(true, true, global0.c, global2[_wgslsmith_index_u32(global3.x, 6u)]), true), !vec4<bool>(global2[_wgslsmith_index_u32(var_1.x, 6u)], global2[_wgslsmith_index_u32(global0.b.a.x, 6u)], var_0.x, true)), !(!vec4<bool>(true, true, var_0.x, var_0.x)), any(!vec2<bool>(true, global2[_wgslsmith_index_u32(43876u, 6u)])));
    return vec4<i32>(1i, 1i, _wgslsmith_add_i32(_wgslsmith_mod_i32(0i, u_input.c.x), select(-(u_input.c.x | 12346i), _wgslsmith_div_i32(-83188i, -6878i), true)), _wgslsmith_mod_i32(reverseBits(-select(u_input.b.x, global0.b.b, false)), (_wgslsmith_dot_vec2_i32(vec2<i32>(global0.b.b, -2147483647i), vec2<i32>(global0.b.c.x, global0.b.b)) ^ -2147483647i) & (~global0.b.c.x & firstLeadingBit(global0.b.c.x))));
}

fn func_2() -> Struct_2 {
    let var_0 = -func_3();
    let var_1 = global0.a.yz;
    let var_2 = global0.b;
    var var_3 = global0.b.c.x;
    global0 = Struct_2(vec3<bool>(var_1.x, all(vec4<bool>(any(vec3<bool>(true, global2[_wgslsmith_index_u32(var_2.a.x, 6u)], false)), global0.e.x, true, var_1.x)), ~(~u_input.a.x) <= var_2.a.x), Struct_1(reverseBits(_wgslsmith_div_vec3_u32(~global0.b.a, var_2.a)), _wgslsmith_dot_vec3_i32(var_0.zzw, _wgslsmith_mult_vec3_i32(-vec3<i32>(global0.b.c.x, var_0.x, -1i), ~vec3<i32>(23008i, var_2.b, var_2.b))), ~_wgslsmith_div_vec2_i32(global0.b.c, vec2<i32>(360i, u_input.b.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_2.d.x, 839f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.d * vec2<f32>(global0.b.d.x, var_2.d.x))))), true, reverseBits(global0.b.a) << (global0.b.a % vec3<u32>(32u)), vec3<bool>(false, all(vec4<bool>(!global2[_wgslsmith_index_u32(var_2.a.x, 6u)], true, select(global0.e.x, global0.c, true), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a.x, global3.x, 0u), 6u)])), any(select(select(vec4<bool>(global0.a.x, true, false, global0.a.x), vec4<bool>(false, var_1.x, false, true), vec4<bool>(global2[_wgslsmith_index_u32(1u, 6u)], global2[_wgslsmith_index_u32(25197u, 6u)], false, true)), !vec4<bool>(true, false, true, global0.c), all(global0.a)))));
    return Struct_2(select(vec3<bool>(global0.c, !(!global0.a.x), var_1.x), !select(global0.a, !vec3<bool>(var_1.x, var_1.x, false), global2[_wgslsmith_index_u32(~0u, 6u)]), false), global0.b, !(!global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~u_input.a.zwy, vec3<u32>(4294967295u, global0.d.x, 17202u)), 6u)]), u_input.a.xxw, global0.a);
}

fn func_1() -> Struct_1 {
    var var_0 = global0.b.d.x;
    var var_1 = func_2();
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -149f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(228f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -499f), global0.b.d.x)), _wgslsmith_f_op_f32(f32(-1f) * -269f))), _wgslsmith_f_op_f32(min(1705f, global0.b.d.x))));
    var_1 = func_2();
    global1 = 264f != _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-367f * 1199f) + _wgslsmith_f_op_f32(var_2.x * var_1.b.d.x)) + -1173f));
    return func_2().b;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec2<f32>, arg_3: Struct_2) -> vec3<f32> {
    var var_0 = Struct_2(vec3<bool>(true, select(all(select(arg_1.wzx, vec3<bool>(false, arg_1.x, true), vec3<bool>(false, global0.c, global2[_wgslsmith_index_u32(41953u, 6u)]))), false, func_2().e.x), any(select(vec2<bool>(global2[_wgslsmith_index_u32(20129u, 6u)], true), !vec2<bool>(false, global2[_wgslsmith_index_u32(0u, 6u)]), vec2<bool>(arg_1.x, true)))), arg_3.b, global2[_wgslsmith_index_u32(28415u, 6u)] == (~max(4294967295u, 72677u) != global0.d.x), ~arg_0.a, vec3<bool>(false, _wgslsmith_div_i32(global0.b.c.x, arg_0.c.x & u_input.b.x) >= (-arg_0.b ^ u_input.b.x), true));
    global0 = func_2();
    var var_1 = global0.b.d;
    var var_2 = func_2();
    global0 = Struct_2(select(func_2().a, !func_2().a, arg_1.x || global2[_wgslsmith_index_u32(~u_input.a.x, 6u)]), arg_0, !select(var_0.e.x, all(vec4<bool>(true, var_2.e.x, global0.c, true)), false), ~(firstTrailingBit(vec3<u32>(40029u, 4294967295u, global0.d.x)) | (_wgslsmith_sub_vec3_u32(vec3<u32>(global3.x, var_2.b.a.x, 96376u), vec3<u32>(arg_0.a.x, 118526u, global0.d.x)) & select(vec3<u32>(global0.d.x, var_0.b.a.x, global0.b.a.x), var_2.b.a, arg_3.e))), vec3<bool>((_wgslsmith_dot_vec4_i32(vec4<i32>(-25634i, 22142i, 31349i, 2147483647i), vec4<i32>(global0.b.c.x, arg_0.c.x, var_2.b.c.x, arg_0.c.x)) <= var_0.b.c.x) | false, var_2.e.x, true));
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, _wgslsmith_f_op_f32(step(1202f, -1000f)), -508f) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(237f, arg_2.x, -1000f) * vec3<f32>(-739f, var_2.b.d.x, arg_3.b.d.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d.x, -104f, arg_3.b.d.x)))), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.b.d.x - -949f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)), 575f), vec3<bool>(true, all(vec2<bool>(arg_3.e.x, false)), !(!arg_1.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.b.d.x;
    global3 = vec2<u32>(select(87368u | (select(4294967295u, u_input.a.x, global0.e.x) >> (_wgslsmith_mult_u32(global0.b.a.x, u_input.a.x) % 32u)), 0u, false), ~global0.b.a.x);
    global2 = array<bool, 6>();
    let var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(global0.b.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.b.d.x - global0.b.d.x), _wgslsmith_f_op_f32(global0.b.d.x * -631f))) - _wgslsmith_f_op_f32(sign(1043f))), global0.b.d.x), _wgslsmith_f_op_vec3_f32(func_4(func_1(), !select(!vec4<bool>(false, true, false, global2[_wgslsmith_index_u32(u_input.a.x, 6u)]), vec4<bool>(global0.a.x, global2[_wgslsmith_index_u32(global0.d.x, 6u)], false, false), !global0.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.d.x, global0.b.d.x))), func_2())));
    let var_2 = !select(global0.e, select(!global0.e, select(vec3<bool>(global0.a.x, global2[_wgslsmith_index_u32(u_input.a.x, 6u)], global2[_wgslsmith_index_u32(u_input.a.x, 6u)]), global0.e, vec3<bool>(global0.e.x, true, global0.e.x)), any(select(vec3<bool>(global2[_wgslsmith_index_u32(1u, 6u)], true, global2[_wgslsmith_index_u32(4294967295u, 6u)]), global0.a, global0.e))), all(vec4<bool>(false, any(vec2<bool>(false, global0.c)), 34024u == global3.x, false)));
    let var_3 = _wgslsmith_add_i32(_wgslsmith_mult_i32(func_3().x, _wgslsmith_div_i32(~global0.b.c.x, _wgslsmith_dot_vec2_i32(~vec2<i32>(37192i, -10621i), vec2<i32>(global0.b.c.x, 0i)))), u_input.c.x);
    let var_4 = Struct_2(select(!(!vec3<bool>(true, true, var_2.x)), !func_2().a, select(!select(vec3<bool>(global0.e.x, global2[_wgslsmith_index_u32(global0.d.x, 6u)], global2[_wgslsmith_index_u32(u_input.a.x, 6u)]), vec3<bool>(global2[_wgslsmith_index_u32(0u, 6u)], true, var_2.x), var_2.x), var_2, !func_2().a)), Struct_1(_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.a.x, u_input.a.x, 0u) ^ (vec3<u32>(67344u, global0.b.a.x, global0.d.x) ^ vec3<u32>(global0.d.x, global3.x, 4294967295u)), vec3<u32>(1u, ~0u, global0.d.x ^ global0.b.a.x)), -min(i32(-1i) * -2147483647i, func_3().x), func_3().yx, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), 620f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1326f, global0.b.d.x)))))), !(!(!var_2.x)), vec3<u32>(30431u, abs(reverseBits(~u_input.a.x)), abs(global3.x)), select(!global0.a, !vec3<bool>(var_1.x < -475f, var_1.x >= -932f, var_3 <= u_input.b.x), true));
    global0 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.wz);
}

