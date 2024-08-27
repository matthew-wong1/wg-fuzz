struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16>;

var<private> global1: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(458i), Struct_1(2147483647i), Struct_1(1i), Struct_1(46795i), Struct_1(0i), Struct_1(68160i), Struct_1(35534i), Struct_1(1i), Struct_1(1i), Struct_1(13756i), Struct_1(-27244i), Struct_1(-566i), Struct_1(i32(-2147483648)), Struct_1(-1i), Struct_1(56908i), Struct_1(9646i), Struct_1(36546i), Struct_1(i32(-2147483648)), Struct_1(-62368i), Struct_1(27124i), Struct_1(-19680i), Struct_1(42788i), Struct_1(38498i), Struct_1(2147483647i), Struct_1(0i), Struct_1(50942i), Struct_1(25241i), Struct_1(32324i), Struct_1(1i));

var<private> global2: Struct_2 = Struct_2(379f);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_2) -> vec4<i32> {
    var var_0 = Struct_2(arg_0.a);
    var var_1 = u_input.a | ~u_input.e.x;
    let var_2 = !all(vec4<bool>(firstTrailingBit(global0[_wgslsmith_index_u32(15703u, 16u)]) > _wgslsmith_sub_u32(51883u, u_input.c.x), true, any(vec4<bool>(true, true, true, true)), all(vec4<bool>(true, false, false, false))));
    return vec4<i32>(countOneBits(u_input.a), _wgslsmith_mult_i32(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(u_input.b, -1i), abs(u_input.a), reverseBits(u_input.e.x), 17021i), select(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.e.x, 2147483647i, -52061i, u_input.b), u_input.e), ~vec4<i32>(1i, u_input.e.x, u_input.a, u_input.b), vec4<bool>(true, var_2, true, var_2)))), -u_input.b, -_wgslsmith_mult_i32(53590i, 1i | u_input.e.x));
}

fn func_4(arg_0: bool, arg_1: vec4<i32>, arg_2: f32) -> i32 {
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.a), _wgslsmith_f_op_f32(1778f + 1898f)) * _wgslsmith_f_op_f32(global2.a + _wgslsmith_f_op_f32(f32(-1f) * -1100f))), 884f, -1000f, _wgslsmith_f_op_f32(arg_2 * 101f)));
    var var_2 = arg_1.x;
    return _wgslsmith_mult_i32(-1i, -(~(_wgslsmith_dot_vec4_i32(arg_1, vec4<i32>(661i, 2147483647i, u_input.a, 44123i)) ^ -1i)));
}

fn func_5(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: Struct_2) -> i32 {
    var var_0 = vec3<bool>(all(vec4<bool>(false, true, true, true)), any(!select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false)))), true);
    global0 = array<u32, 16>();
    var var_1 = select(!any(!vec3<bool>(var_0.x, var_0.x, true)), all(var_0.yz) && true, var_0.x) && true;
    let var_2 = Struct_1(_wgslsmith_add_i32(0i, ~53229i));
    global0 = array<u32, 16>();
    return var_2.a;
}

fn func_2() -> bool {
    let var_0 = func_5(u_input.e.yy, vec4<i32>(func_4(true, func_3(Struct_2(-1055f)), -1354f), ~_wgslsmith_mult_i32(abs(1i), min(987i, u_input.e.x)), ~abs(i32(-1i) * -1i), firstLeadingBit(_wgslsmith_dot_vec2_i32(u_input.e.ww, vec2<i32>(u_input.a, u_input.b)))), Struct_2(1000f));
    global2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(465f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2.a, global2.a)))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(global2.a, 579f, true)), _wgslsmith_f_op_f32(round(global2.a)))), global2.a))));
    var var_1 = select(vec3<bool>(true, !any(vec2<bool>(true, true)), true), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true)), vec3<bool>(true, all(vec2<bool>(true, true)), any(vec3<bool>(true, true, true))), vec3<bool>(_wgslsmith_dot_vec3_i32(u_input.e.wzw, u_input.e.wwx) >= -2147483647i, true, any(vec3<bool>(true, true, true)))), !vec3<bool>(!(var_0 > -1i), true, select(false, false, true)));
    let var_2 = (~u_input.e ^ _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, u_input.b, -u_input.a, max(-1i, u_input.a)), _wgslsmith_mod_vec4_i32(u_input.e, u_input.e | vec4<i32>(-1i, 2147483647i, 2147483647i, var_0)))) & _wgslsmith_div_vec4_i32(u_input.e, (u_input.e << ((u_input.d >> (u_input.d % vec4<u32>(32u))) % vec4<u32>(32u))) ^ vec4<i32>(_wgslsmith_mod_i32(var_0, var_0), var_0, select(-1i, -8690i, true), u_input.a));
    var var_3 = Struct_3(_wgslsmith_mult_u32(firstLeadingBit(global0[_wgslsmith_index_u32(~u_input.c.x, 16u)]), u_input.c.x), Struct_1(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0, var_0), vec2<i32>(var_2.x, var_0)), -u_input.e.x)));
    return var_1.x;
}

fn func_1() -> Struct_2 {
    var var_0 = vec2<i32>(min(u_input.b, -u_input.e.x), select(39053i, abs(-1785i), func_2()));
    global0 = array<u32, 16>();
    var var_1 = -_wgslsmith_add_vec2_i32(firstTrailingBit(vec2<i32>(max(-37070i, var_0.x), 0i)), u_input.e.zy);
    let var_2 = u_input.e.yw;
    global0 = array<u32, 16>();
    return Struct_2(242f);
}

fn func_6(arg_0: Struct_2, arg_1: i32, arg_2: vec4<u32>, arg_3: i32) -> u32 {
    var var_0 = Struct_3(u_input.c.x, global1[_wgslsmith_index_u32(~firstLeadingBit(abs(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(74030u, 16u)], arg_2.x))), 29u)]);
    global0 = array<u32, 16>();
    let var_1 = select(~(~_wgslsmith_add_vec4_u32(u_input.d << (vec4<u32>(36827u, 1u, 0u, u_input.d.x) % vec4<u32>(32u)), vec4<u32>(arg_2.x, var_0.a, 4294967295u, 14258u))), u_input.d, true);
    var var_2 = vec3<bool>(any(vec2<bool>(select(all(vec3<bool>(false, true, true)), true, true), true)), reverseBits(var_0.a) < var_0.a, func_2() & !(-606f > func_1().a));
    var var_3 = arg_0;
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(-558f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(298f, -1000f)) * 413f)), -1681f);
    var var_1 = vec2<i32>(u_input.e.x, 0i);
    var var_2 = u_input.d.yxx << (vec3<u32>(reverseBits(func_6(func_1(), var_1.x, vec4<u32>(5554u, 37549u, 3144u, 64618u), ~0i)), abs(~82190u), 1u) % vec3<u32>(32u));
    let var_3 = vec3<i32>(abs(-73954i), 63429i, u_input.a);
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, 886f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_sub_i32(1i, -31145i), var_3.x), ~(~(-u_input.b))));
}

