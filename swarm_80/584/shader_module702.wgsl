struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 19>;

var<private> global1: vec3<bool>;

var<private> global2: Struct_3 = Struct_3(222f, false, Struct_1(true, 1108f));

var<private> global3: array<bool, 26>;

var<private> global4: Struct_1;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: Struct_2) -> vec4<u32> {
    global3 = array<bool, 26>();
    let var_0 = Struct_3(arg_1.b.x, all(select(!global1.zz, select(select(global1.xx, vec2<bool>(global0[_wgslsmith_index_u32(arg_0.x, 19u)], true), vec2<bool>(false, arg_1.c.a)), global1.yz, false), global1.zz)), Struct_1(u_input.c.x < ~1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.c.b - 893f) * _wgslsmith_div_f32(-335f, -1000f)))));
    global1 = select(vec3<bool>(!any(vec2<bool>(arg_2.c.a, true)), _wgslsmith_f_op_f32(abs(-583f)) > _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.b.x, global2.a)), all(vec2<bool>(select(global4.a, global4.a, true), all(vec4<bool>(global1.x, false, false, global4.a))))), vec3<bool>(any(vec3<bool>(arg_1.c.a, arg_2.c.a, all(vec2<bool>(true, global0[_wgslsmith_index_u32(arg_0.x, 19u)])))), true, global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c.x, ~_wgslsmith_mult_u32(u_input.c.x, 0u)), 26u)]), !any(select(vec3<bool>(global2.b, global3[_wgslsmith_index_u32(u_input.c.x, 26u)], arg_2.c.a), vec3<bool>(false, global0[_wgslsmith_index_u32(31483u, 19u)], global0[_wgslsmith_index_u32(arg_0.x, 19u)]), true)));
    global1 = !select(select(!select(vec3<bool>(global0[_wgslsmith_index_u32(18971u, 19u)], true, var_0.c.a), vec3<bool>(global1.x, global1.x, global1.x), arg_2.c.a), !select(vec3<bool>(global0[_wgslsmith_index_u32(1u, 19u)], true, global2.c.a), vec3<bool>(false, true, true), true), !(!vec3<bool>(true, global1.x, global1.x))), !select(vec3<bool>(true, true, true), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 19u)], arg_2.c.a, false), select(vec3<bool>(var_0.c.a, var_0.b, global3[_wgslsmith_index_u32(0u, 26u)]), vec3<bool>(global0[_wgslsmith_index_u32(arg_0.x, 19u)], false, arg_1.c.a), global2.c.a)), false);
    let var_1 = var_0;
    return _wgslsmith_sub_vec4_u32(abs(min(_wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(4294967295u, 1u, 25437u, 4294967295u)), ~vec4<u32>(arg_0.x, arg_0.x, 0u, arg_0.x)), ~abs(vec4<u32>(46369u, 61354u, 4294967295u, 4294967295u)))), firstLeadingBit(vec4<u32>(~arg_0.x, 28172u, 50882u, _wgslsmith_mod_u32(min(78939u, u_input.c.x), _wgslsmith_mult_u32(u_input.c.x, u_input.c.x)))));
}

fn func_2() -> Struct_2 {
    let var_0 = 0i;
    var var_1 = u_input.a;
    global1 = !vec3<bool>(any(vec3<bool>(false, true, var_0 == -37361i)), true, !(global3[_wgslsmith_index_u32(62099u, 26u)] | (true & global3[_wgslsmith_index_u32(7402u, 26u)])));
    var var_2 = -29640i;
    let var_3 = Struct_2(-(((vec4<i32>(var_0, 0i, u_input.b.x, var_0) >> (vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x) % vec4<u32>(32u))) << (func_3(u_input.c.yz, Struct_2(vec4<i32>(0i, -1i, 99461i, -1i), vec2<f32>(global2.c.b, global4.b), Struct_1(true, global4.b), vec4<f32>(global2.a, global4.b, global4.b, 683f)), Struct_2(vec4<i32>(u_input.b.x, var_0, var_0, 2147483647i), vec2<f32>(global2.a, global2.a), global2.c, vec4<f32>(global2.a, global2.c.b, global4.b, -523f))) % vec4<u32>(32u))) & select(vec4<i32>(0i, 1i, -1i, u_input.a), vec4<i32>(var_0, 40976i, -2147483647i, u_input.a), select(vec4<bool>(global2.c.a, global3[_wgslsmith_index_u32(1u, 26u)], true, true), vec4<bool>(global4.a, true, global0[_wgslsmith_index_u32(4294967295u, 19u)], global3[_wgslsmith_index_u32(2736u, 26u)]), false))), vec2<f32>(global4.b, _wgslsmith_f_op_f32(min(-420f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2.c.b)) * 472f)))), global2.c, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global4.b, 681f, global4.b, global4.b), vec4<f32>(global4.b, global4.b, global4.b, 762f))) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global2.a, -487f, global2.c.b, -978f), vec4<f32>(global2.a, global4.b, global4.b, global2.a)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c.b, 110f, global4.b, global4.b)))))));
    return Struct_2(_wgslsmith_add_vec4_i32(min(firstTrailingBit(vec4<i32>(u_input.a, 51963i, -2147483647i, -1i) ^ vec4<i32>(var_3.a.x, var_3.a.x, 32442i, 29205i)), vec4<i32>(var_0, ~var_3.a.x, var_3.a.x & var_0, i32(-1i) * -17535i)), vec4<i32>(~u_input.a, _wgslsmith_dot_vec2_i32(u_input.b.xy, u_input.b.xy), (var_0 ^ -33683i) << (116901u % 32u), var_3.a.x >> (u_input.c.x % 32u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(var_3.d.x, global4.b), -872f)), Struct_1(var_3.c.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.b.x) * _wgslsmith_div_f32(-277f, global2.a)), -2615f)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global4.b + global2.a), _wgslsmith_f_op_f32(exp2(var_3.c.b)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1026f), 131f), _wgslsmith_f_op_f32(sign(var_3.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.c.b * global2.c.b) * global4.b) * 1000f)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = true;
    var var_1 = func_2().c;
    let var_2 = Struct_4(arg_1, false, _wgslsmith_div_f32(func_2().b.x, -1012f));
    let var_3 = reverseBits(u_input.c.x);
    let var_4 = select(vec3<bool>(var_2.b, _wgslsmith_f_op_f32(-arg_2.b) == _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(162f, global2.c.b)), _wgslsmith_f_op_f32(global2.a * -354f))), any(!vec3<bool>(arg_1.b, var_1.a, true))), !select(!vec3<bool>(true, true, arg_0.c.a), vec3<bool>(arg_0.c.a, any(vec3<bool>(var_0, true, true)), false), select(select(vec3<bool>(global1.x, global2.c.a, var_0), vec3<bool>(false, true, true), global3[_wgslsmith_index_u32(1u, 26u)]), vec3<bool>(false, var_2.b, true), vec3<bool>(false, false, false))), any(select(select(global1.xy, global1.xz, vec2<bool>(false, arg_1.b)), vec2<bool>(global0[_wgslsmith_index_u32(56977u, 19u)], false), !arg_2.a)));
    return var_2.a.c;
}

fn func_1() -> u32 {
    global0 = array<bool, 19>();
    global4 = Struct_1(1000f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(global4.b)))) + global2.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(round(global4.b)))) * -402f) + _wgslsmith_div_f32(global4.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-297f, global4.b)) + _wgslsmith_f_op_f32(min(427f, global2.c.b))))));
    let var_0 = u_input.b.xx;
    var var_1 = Struct_3(570f, -2147483647i <= _wgslsmith_add_i32(_wgslsmith_add_i32(_wgslsmith_add_i32(1i, 30442i), ~u_input.a), countOneBits(1i)), func_4(func_2(), Struct_3(_wgslsmith_f_op_f32(-global4.b), global2.c.a, Struct_1(global2.b, _wgslsmith_f_op_f32(-global4.b))), Struct_1(~u_input.c.x >= ~u_input.c.x, 1000f), func_2().a.wyy));
    var var_2 = Struct_3(-1397f, var_1.c.a, func_4(func_2(), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c.b)), global2.c.a, global2.c), func_4(func_2(), Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -343f), true, Struct_1(global3[_wgslsmith_index_u32(1u, 26u)], global2.c.b)), func_4(func_2(), Struct_3(global2.c.b, false, Struct_1(global2.b, var_1.c.b)), global2.c, vec3<i32>(var_0.x, -40781i, -2147483647i)), -_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, -2065i, u_input.b.x), u_input.b)), u_input.b));
    return firstLeadingBit(u_input.c.x);
}

fn func_5(arg_0: i32, arg_1: u32) -> f32 {
    var var_0 = Struct_3(global2.c.b, any(select(vec2<bool>(true, global2.c.a), global1.xz, true)), global2.c);
    let var_1 = _wgslsmith_add_vec4_u32(vec4<u32>(~(~3745u), countOneBits(u_input.c.x), 0u, ~97705u), abs(~vec4<u32>(4294967295u, 14700u & u_input.c.x, 0u, ~u_input.c.x)));
    global1 = !select(vec3<bool>(true, all(vec3<bool>(true, false, global1.x)), 1i > arg_0), !vec3<bool>(global0[_wgslsmith_index_u32(40602u, 19u)] != true, !global1.x, true), true);
    let var_2 = Struct_4(Struct_3(214f, false, global2.c), all(vec2<bool>(true, true)), -720f);
    let var_3 = -(~(-(min(vec4<i32>(54348i, 2147483647i, u_input.a, 2147483647i), vec4<i32>(u_input.b.x, -1i, arg_0, -1i)) << (reverseBits(vec4<u32>(u_input.c.x, u_input.c.x, 23850u, 54273u)) % vec4<u32>(32u)))));
    return _wgslsmith_f_op_f32(step(global2.a, -437f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-684f + 1445f) - 1f) - _wgslsmith_f_op_f32(func_5(_wgslsmith_dot_vec4_i32(vec4<i32>(-32265i, 5116i, u_input.b.x, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.b.x, u_input.a)) ^ 13456i, func_1()))), false != all(select(vec4<bool>(false, false, global0[_wgslsmith_index_u32(u_input.c.x, 19u)], false), select(vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 26u)], false, global3[_wgslsmith_index_u32(u_input.c.x, 26u)], false), vec4<bool>(global2.c.a, true, global3[_wgslsmith_index_u32(4294967295u, 26u)], true), vec4<bool>(global2.b, global0[_wgslsmith_index_u32(0u, 19u)], true, false)), select(vec4<bool>(false, true, false, global0[_wgslsmith_index_u32(23105u, 19u)]), vec4<bool>(global1.x, global2.b, true, global2.b), global1.x))), Struct_1(false, global4.b));
    let var_1 = 34254i;
    var_0 = Struct_3(_wgslsmith_f_op_f32(-135f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.b)) - global4.b)), func_2().c.a, global2.c);
    var var_2 = u_input.c;
    global4 = Struct_1(!any(!select(vec4<bool>(true, var_0.b, global3[_wgslsmith_index_u32(4295u, 26u)], true), vec4<bool>(true, global3[_wgslsmith_index_u32(var_2.x, 26u)], global4.a, global1.x), false)), global4.b);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(u_input.c.x), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 240f, -573f, 496f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(724f, 624f, -652f, 505f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.b, var_0.c.b, global2.a, global2.c.b)), true)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-686f, global4.b, -490f, -2416f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1559f, -229f, global2.c.b, 1357f)), -991f == var_0.c.b))))), ~(~u_input.a));
}

