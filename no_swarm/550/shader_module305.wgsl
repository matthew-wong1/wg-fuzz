struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
    c: vec4<bool>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 4>;

var<private> global1: Struct_1 = Struct_1(16455i, vec2<u32>(129398u, 66058u), vec4<u32>(4294967295u, 1u, 0u, 0u));

var<private> global2: Struct_2;

var<private> global3: vec4<u32>;

var<private> global4: vec3<i32> = vec3<i32>(-1i, -4892i, i32(-2147483648));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: u32, arg_2: u32, arg_3: Struct_1) -> i32 {
    global1 = Struct_1(-37167i, max(arg_3.c.zy, select(~global1.b, vec2<u32>(~global3.x, arg_3.b.x), vec2<bool>(true, true))), _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(72915u, global3.x, arg_1, 1u), ~arg_0, vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(59503u, global3.x, u_input.a, 1148u), global2.b.c), ~arg_0.x, _wgslsmith_add_u32(u_input.a, 6761u), arg_3.c.x)), abs(_wgslsmith_add_vec4_u32(arg_0, arg_3.c | global1.c))));
    var var_0 = any(select(vec2<bool>(true, true), vec2<bool>(true, true), true));
    let var_1 = 4294967295u;
    global2 = Struct_2(_wgslsmith_add_u32(1u, ~arg_1), Struct_1(arg_3.a, global1.b, _wgslsmith_sub_vec4_u32(vec4<u32>(global1.c.x | arg_1, ~arg_0.x, arg_0.x, 72109u << (global2.a % 32u)), ~global1.c)));
    let var_2 = vec3<bool>(true, select(true, any(vec4<bool>(true, true, any(global0[_wgslsmith_index_u32(1u, 4u)]), true)), all(vec4<bool>(all(global0[_wgslsmith_index_u32(4294967295u, 4u)]), all(vec2<bool>(false, true)), true, all(vec2<bool>(false, false))))), select(select(~(-42022i), -global4.x, true) != _wgslsmith_div_i32(global1.a, 0i), _wgslsmith_div_f32(1139f, _wgslsmith_f_op_f32(ceil(-1533f))) >= _wgslsmith_f_op_f32(f32(-1f) * -843f), true));
    return select(countOneBits(arg_3.a), global4.x, false);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: Struct_1) -> bool {
    var var_0 = u_input.a;
    var var_1 = arg_2.c.x;
    var var_2 = all(select(!arg_1.c.wwx, !select(vec3<bool>(true, false, arg_1.c.x), vec3<bool>(true, arg_1.c.x, true), true), !vec3<bool>(any(arg_1.c.xyw), any(arg_1.c), arg_2.c.x != global3.x)));
    global4 = vec3<i32>(abs(global4.x >> (select(26466u, _wgslsmith_mod_u32(u_input.a, global2.a), true) % 32u)), firstLeadingBit(1i), abs(abs(~(-1i << (u_input.a % 32u)))));
    var_1 = u_input.a;
    return any(arg_1.c.xyw);
}

fn func_2() -> Struct_3 {
    global2 = Struct_2(6429u, Struct_1(global1.a, _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(global2.b.c.zw, ~global1.b), ~global3.xw), global1.c));
    var var_0 = vec3<bool>(true, func_4(vec3<i32>(countOneBits(global1.a), func_3(~vec4<u32>(0u, 1u, global2.a, global2.a), ~u_input.a, u_input.a, Struct_1(global1.a, vec2<u32>(global1.b.x, 50982u), vec4<u32>(global3.x, global3.x, global2.a, global3.x))), global4.x), Struct_3(~(vec4<i32>(global1.a, 1i, global2.b.a, -2147483647i) ^ vec4<i32>(-23226i, global1.a, -1i, -1i)), false, vec4<bool>(true, true, false, true), true), Struct_1(countOneBits(2147483647i >> (global1.b.x % 32u)), reverseBits(vec2<u32>(u_input.a, global2.a)), ~reverseBits(global2.b.c))), !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -518f), _wgslsmith_f_op_f32(284f - 984f)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f)))));
    global0 = array<vec4<bool>, 4>();
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -2547f)), -190f, -633f, 248f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(504f, 345f, -395f, -858f))))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-465f, 672f, -417f, -718f) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1152f, -1605f, -368f, 199f), vec4<f32>(787f, 1106f, -1602f, -217f), global0[_wgslsmith_index_u32(39597u, 4u)])))))));
    let var_2 = -abs(max(global4.x, -1i));
    return Struct_3(~(vec4<i32>(-1i) * -(vec4<i32>(0i, 2147483647i, 4891i, -24617i) >> (global1.c % vec4<u32>(32u)))), false, vec4<bool>(false, (var_2 <= 1i) || any(select(global0[_wgslsmith_index_u32(global3.x, 4u)], global0[_wgslsmith_index_u32(global3.x, 4u)], true)), any(!(!var_0.xx)), true), var_0.x);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_3) -> vec4<i32> {
    var var_0 = func_2();
    global0 = array<vec4<bool>, 4>();
    global2 = Struct_2(global3.x, global2.b);
    var_0 = func_2();
    let var_1 = 25158u;
    return _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(arg_2.a.zz, vec2<i32>(2147483647i, arg_2.a.x)), reverseBits(arg_1.a.x)) | min(_wgslsmith_dot_vec3_i32(var_0.a.wyw, var_0.a.xxx), arg_2.a.x), 2147483647i, _wgslsmith_dot_vec2_i32(~(~vec2<i32>(-48358i, global2.b.a)), vec2<i32>(_wgslsmith_dot_vec2_i32(arg_1.a.zz, vec2<i32>(global4.x, var_0.a.x)), func_3(vec4<u32>(4294967295u, 3899u, 3085u, var_1), global3.x, 37092u, Struct_1(0i, arg_0.c.yw, global2.b.c)))), _wgslsmith_mult_i32(global2.b.a, _wgslsmith_mod_i32(-2147483647i, arg_2.a.x))), _wgslsmith_sub_vec4_i32(vec4<i32>(i32(-1i) * -arg_1.a.x, _wgslsmith_mod_i32(-20027i, ~arg_2.a.x), 1i, func_2().a.x | reverseBits(-2147483647i)), -(~select(vec4<i32>(-1277i, global1.a, global4.x, -12782i), vec4<i32>(global4.x, 2147483647i, -5054i, -12942i), vec4<bool>(true, arg_2.d, true, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(~vec4<i32>(~global1.a << (global2.b.c.x % 32u), global2.b.a, _wgslsmith_sub_i32(global4.x, -10676i), global4.x), _wgslsmith_div_vec4_i32(-(func_1(global2.b, Struct_3(vec4<i32>(global4.x, global4.x, global4.x, global2.b.a), false, global0[_wgslsmith_index_u32(global1.c.x, 4u)], false), Struct_3(vec4<i32>(-2147483647i, global1.a, -2147483647i, 2147483647i), true, global0[_wgslsmith_index_u32(63020u, 4u)], false)) << (~vec4<u32>(4294967295u, 1246u, 1u, u_input.a) % vec4<u32>(32u))), abs(~vec4<i32>(-1i, global1.a, global2.b.a, -4940i) >> (firstTrailingBit(global1.c) % vec4<u32>(32u)))), vec4<bool>(true, !all(vec3<bool>(true, true, true)), true, true));
    let var_1 = vec2<f32>(701f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(220f, -1359f)), _wgslsmith_f_op_f32(147f - 1000f)) - 366f)));
    var var_2 = global2.b;
    let var_3 = Struct_3(func_1(Struct_1(abs(global1.a), ~vec2<u32>(51955u, u_input.a) << (abs(var_2.c.yy) % vec2<u32>(32u)), select(~vec4<u32>(global3.x, global2.a, global1.c.x, 36852u), vec4<u32>(4294967295u, 4294967295u, global1.b.x, 0u), select(vec4<bool>(true, false, false, false), global0[_wgslsmith_index_u32(var_2.c.x, 4u)], true))), Struct_3(_wgslsmith_div_vec4_i32(vec4<i32>(16970i, -28119i, var_2.a, -11493i), select(vec4<i32>(var_2.a, 2147483647i, global4.x, -2147483647i), vec4<i32>(global2.b.a, var_0.x, -1i, global4.x), vec4<bool>(false, false, true, false))), false, global0[_wgslsmith_index_u32(u_input.a, 4u)], true), Struct_3(vec4<i32>(global4.x ^ global2.b.a, global4.x, -2147483647i, i32(-1i) * -2147483647i), _wgslsmith_mod_u32(global2.a, 4294967295u) > _wgslsmith_mult_u32(1u, global2.a), select(func_2().c, vec4<bool>(false, false, true, false), !global0[_wgslsmith_index_u32(2548u, 4u)]), false)), !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-876f, var_1.x)) * 976f) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))), select(select(global0[_wgslsmith_index_u32(global3.x, 4u)], select(global0[_wgslsmith_index_u32(global1.c.x, 4u)], func_2().c, select(vec4<bool>(false, false, false, false), global0[_wgslsmith_index_u32(4294967295u, 4u)], true)), func_2().c), vec4<bool>(true, true, all(vec2<bool>(false, true)), true), vec4<bool>(true, true, true, true)), select((-532i >> (global2.b.c.x % 32u)) != func_1(Struct_1(var_0.x, vec2<u32>(30171u, var_2.b.x), vec4<u32>(global3.x, var_2.b.x, 0u, 1u)), Struct_3(vec4<i32>(var_2.a, global2.b.a, global2.b.a, global4.x), true, global0[_wgslsmith_index_u32(global1.b.x, 4u)], false), Struct_3(vec4<i32>(var_2.a, global4.x, -17462i, global2.b.a), false, global0[_wgslsmith_index_u32(u_input.a, 4u)], false)).x, -global2.b.a >= 47518i, 1i >= global4.x) | !(all(global0[_wgslsmith_index_u32(37426u, 4u)]) | true));
    var var_4 = vec4<i32>(24297i, global1.a, global2.b.a, _wgslsmith_add_i32(~_wgslsmith_mod_i32(var_2.a, 1669i), _wgslsmith_mult_i32(-62153i, var_0.x)));
    let var_5 = vec4<u32>(1u, global2.b.b.x, 1u, 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(vec2<u32>(1u, _wgslsmith_clamp_u32(0u, global1.c.x, 0u))), var_0.x, ~(-66131i), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(var_1.x, var_1.x), _wgslsmith_f_op_f32(sign(1024f)))))), select(abs(1u), global3.x, _wgslsmith_f_op_f32(-1049f - _wgslsmith_f_op_f32(sign(var_1.x))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1497f)))));
}

