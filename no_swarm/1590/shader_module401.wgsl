struct Struct_1 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_4 {
    a: u32,
    b: vec3<f32>,
    c: vec2<bool>,
    d: Struct_3,
    e: bool,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_1,
    c: Struct_4,
    d: vec2<f32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 19> = array<vec2<u32>, 19>(vec2<u32>(1u, 47935u), vec2<u32>(0u, 34961u), vec2<u32>(28046u, 71766u), vec2<u32>(23392u, 0u), vec2<u32>(31070u, 22476u), vec2<u32>(42089u, 3985u), vec2<u32>(7310u, 0u), vec2<u32>(68451u, 74846u), vec2<u32>(7226u, 0u), vec2<u32>(4294967295u, 26380u), vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(63175u, 0u), vec2<u32>(4294967295u, 36553u), vec2<u32>(11358u, 0u), vec2<u32>(4294967295u, 75082u), vec2<u32>(1u, 0u), vec2<u32>(1u, 46234u), vec2<u32>(47003u, 43362u));

var<private> global1: array<Struct_3, 12> = array<Struct_3, 12>(Struct_3(false, Struct_2(vec4<bool>(false, false, false, false)), Struct_1(true, vec2<i32>(0i, -1i)), vec3<bool>(true, true, true)), Struct_3(false, Struct_2(vec4<bool>(false, false, true, false)), Struct_1(false, vec2<i32>(-10250i, 1i)), vec3<bool>(false, true, false)), Struct_3(false, Struct_2(vec4<bool>(false, false, true, false)), Struct_1(true, vec2<i32>(-8565i, 16576i)), vec3<bool>(false, false, false)), Struct_3(false, Struct_2(vec4<bool>(true, true, true, false)), Struct_1(true, vec2<i32>(0i, 0i)), vec3<bool>(false, false, true)), Struct_3(true, Struct_2(vec4<bool>(true, false, false, false)), Struct_1(true, vec2<i32>(-1i, 9771i)), vec3<bool>(true, false, false)), Struct_3(false, Struct_2(vec4<bool>(true, false, false, true)), Struct_1(true, vec2<i32>(1i, -45407i)), vec3<bool>(false, false, false)), Struct_3(true, Struct_2(vec4<bool>(true, true, false, true)), Struct_1(false, vec2<i32>(-1i, 42493i)), vec3<bool>(true, true, true)), Struct_3(true, Struct_2(vec4<bool>(true, false, false, true)), Struct_1(false, vec2<i32>(-30877i, 1i)), vec3<bool>(true, true, false)), Struct_3(false, Struct_2(vec4<bool>(false, false, false, true)), Struct_1(false, vec2<i32>(0i, -30725i)), vec3<bool>(false, false, false)), Struct_3(true, Struct_2(vec4<bool>(false, true, true, false)), Struct_1(false, vec2<i32>(i32(-2147483648), i32(-2147483648))), vec3<bool>(true, false, false)), Struct_3(true, Struct_2(vec4<bool>(false, true, false, true)), Struct_1(true, vec2<i32>(2147483647i, -1i)), vec3<bool>(false, false, false)), Struct_3(true, Struct_2(vec4<bool>(true, true, true, true)), Struct_1(true, vec2<i32>(0i, -35913i)), vec3<bool>(true, true, false)));

var<private> global2: Struct_5 = Struct_5(Struct_4(1126u, vec3<f32>(-1260f, 727f, -475f), vec2<bool>(true, false), Struct_3(true, Struct_2(vec4<bool>(true, false, false, false)), Struct_1(true, vec2<i32>(44865i, -34831i)), vec3<bool>(true, true, true)), false), Struct_1(false, vec2<i32>(-75487i, -14376i)), Struct_4(59761u, vec3<f32>(-590f, 1259f, 452f), vec2<bool>(true, true), Struct_3(false, Struct_2(vec4<bool>(true, false, false, false)), Struct_1(false, vec2<i32>(i32(-2147483648), 0i)), vec3<bool>(false, false, true)), false), vec2<f32>(1844f, 727f), vec4<i32>(0i, 0i, -58175i, 0i));

var<private> global3: array<Struct_1, 9>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec2<bool>, arg_1: u32) -> vec2<i32> {
    let var_0 = Struct_2(global2.c.d.b.a);
    global0 = array<vec2<u32>, 19>();
    let var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(731f, global2.d.x) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global2.d.x + -171f)))) >= _wgslsmith_f_op_f32(-global2.c.b.x), global2.a.d.b, global3[_wgslsmith_index_u32(27101u, 9u)], global2.a.d.d);
    var var_2 = Struct_2(!vec4<bool>(false, all(vec2<bool>(arg_0.x, var_1.a)), any(select(arg_0, vec2<bool>(false, arg_0.x), var_0.a.x)), true));
    global2 = Struct_5(Struct_4(max(80611u, (1u >> (global2.c.a % 32u)) >> (1u % 32u)), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.a.b.x * global2.d.x), -901f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2.a.b.x - global2.d.x), _wgslsmith_f_op_f32(global2.d.x - global2.a.b.x), true)), -233f), global2.c.d.b.a.xw, Struct_3(any(!vec2<bool>(global2.a.c.x, var_2.a.x)), global2.a.d.b, Struct_1(var_2.a.x, ~vec2<i32>(2147483647i, u_input.a.x)), !(!vec3<bool>(var_1.c.a, var_0.a.x, var_0.a.x))), false & arg_0.x), Struct_1(true, -select(var_1.c.b, global2.c.d.c.b, false) << (_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(global0[_wgslsmith_index_u32(25552u, 19u)], global0[_wgslsmith_index_u32(4199u, 19u)]), global0[_wgslsmith_index_u32(93012u, 19u)]) % vec2<u32>(32u))), Struct_4(abs(global2.c.a), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(2714f, global2.d.x, global2.c.b.x), global2.a.b, var_1.a))))), select(!global2.c.c, vec2<bool>(!var_0.a.x, var_2.a.x), !global2.c.d.b.a.zw), Struct_3(any(var_2.a.zyx), var_1.b, global2.c.d.c, select(var_2.a.zxy, !vec3<bool>(var_0.a.x, true, true), select(global2.c.d.d, var_0.a.wwz, vec3<bool>(false, var_2.a.x, global2.a.d.d.x)))), true), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global2.c.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -847f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(global2.d.x))))) - _wgslsmith_f_op_vec2_f32(global2.d + _wgslsmith_f_op_vec2_f32(min(global2.d, global2.a.b.xx)))), vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_sub_i32(32574i, u_input.a.x), i32(-1i) * -13752i), global2.a.d.c.b.x, -6228i, -u_input.a.x) ^ ~(-vec4<i32>(-1i, -1i, u_input.a.x, -1i) & u_input.a));
    return abs(vec2<i32>(~0i, -12990i));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: vec2<i32>) -> vec4<f32> {
    global3 = array<Struct_1, 9>();
    global0 = array<vec2<u32>, 19>();
    var var_0 = Struct_3(false, arg_0.c.d.b, global3[_wgslsmith_index_u32(~global2.c.a ^ global2.a.a, 9u)], global2.a.d.b.a.wzz);
    var_0 = global1[_wgslsmith_index_u32(abs(global2.a.a), 12u)];
    global0 = array<vec2<u32>, 19>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(arg_2))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(263f, global2.c.b.x, arg_0.d.x, arg_2.x), vec4<f32>(global2.a.b.x, -649f, 802f, 975f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1053f, 1000f, global2.d.x, 426f) - vec4<f32>(1391f, -621f, arg_2.x, arg_2.x)), _wgslsmith_f_op_vec4_f32(arg_2 - vec4<f32>(global2.d.x, -1245f, -587f, 289f))))));
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(Struct_5(Struct_4(4294967295u, vec3<f32>(-1385f, global2.a.b.x, 881f), vec2<bool>(false, true), global2.c.d, false), Struct_1(global2.b.a, vec2<i32>(u_input.a.x, global2.c.d.c.b.x)), global2.a, global2.c.b.zz, vec4<i32>(global2.a.d.c.b.x, global2.c.d.c.b.x, u_input.a.x, -19497i)), Struct_1(global2.a.d.a, global2.a.d.c.b), _wgslsmith_div_vec4_f32(vec4<f32>(global2.a.b.x, global2.a.b.x, 262f, global2.d.x), vec4<f32>(global2.a.b.x, -1230f, 1000f, -2779f)), func_3(vec2<bool>(global2.b.a, global2.a.e), 5893u))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-448f, 381f, 299f, global2.c.b.x) + vec4<f32>(global2.d.x, global2.a.b.x, 389f, -1218f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(global2.a.b.x)), _wgslsmith_div_f32(1447f, -726f), _wgslsmith_f_op_f32(trunc(global2.d.x)), _wgslsmith_f_op_f32(-global2.d.x))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global2.a.b.x, -580f, 1167f, -134f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1560f, global2.c.b.x, global2.c.b.x, 349f) - vec4<f32>(global2.d.x, 346f, global2.a.b.x, -1000f)), vec4<f32>(global2.a.b.x, 1000f, 142f, global2.d.x)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-383f, global2.d.x, global2.d.x, global2.c.b.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1913f, global2.c.b.x, global2.d.x, 1000f))))));
    global3 = array<Struct_1, 9>();
    let var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(global2.d)) * _wgslsmith_f_op_vec2_f32(-var_0.xz)) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(global2.a.b.xz * vec2<f32>(1454f, var_0.x))))))));
    return 800f;
}

fn func_1(arg_0: i32) -> bool {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(261f + global2.c.b.x), _wgslsmith_f_op_f32(-global2.a.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.d.x))), 1000f, _wgslsmith_f_op_f32(func_2())) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_4(Struct_5(Struct_4(global2.c.a, global2.a.b, vec2<bool>(global2.a.e, true), global1[_wgslsmith_index_u32(global2.c.a, 12u)], false), global3[_wgslsmith_index_u32(global2.c.a, 9u)], Struct_4(global2.a.a, vec3<f32>(global2.a.b.x, 394f, global2.d.x), vec2<bool>(global2.b.a, global2.a.c.x), Struct_3(true, Struct_2(vec4<bool>(global2.b.a, true, global2.b.a, global2.c.e)), global2.b, global2.c.d.b.a.zzx), true), vec2<f32>(1954f, global2.d.x), ~vec4<i32>(1i, u_input.a.x, 40603i, -4918i)), global3[_wgslsmith_index_u32(global2.a.a, 9u)], _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global2.a.b.x, global2.d.x, global2.a.b.x, global2.d.x), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-311f, -135f, 611f, -1397f), vec4<f32>(-3548f, -781f, 373f, -383f))))), vec2<i32>(global2.b.b.x, _wgslsmith_dot_vec2_i32(global2.b.b, global2.e.xx)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.b.x, global2.c.b.x, global2.c.b.x, 1629f) - vec4<f32>(-519f, global2.c.b.x, global2.d.x, -1910f)))), select(global2.c.d.b.a, !select(vec4<bool>(true, global2.c.c.x, global2.b.a, true), global2.c.d.b.a, global2.c.d.b.a), false))));
    var var_2 = !(!global2.a.c);
    let var_3 = vec4<i32>(0i, firstTrailingBit(-1i), 21883i, 2147483647i & global2.e.x);
    global3 = array<Struct_1, 9>();
    return 26667i <= (_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(1i, -44518i, -1i, 37582i), vec4<i32>(global2.a.d.c.b.x, 36949i, u_input.a.x, 2147483647i)), -vec4<i32>(2683i, u_input.a.x, -2147483647i, u_input.a.x)), ~(arg_0 & 12434i)) & 0i);
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: vec2<bool>) -> StorageBuffer {
    global3 = array<Struct_1, 9>();
    var var_0 = !select(vec2<bool>(!(!arg_2.x), true), global2.c.c, all(vec4<bool>(true, true, true, true)) && false);
    var_0 = vec2<bool>(any(!vec3<bool>(false, select(arg_2.x, true, arg_2.x), false)), true);
    var var_1 = arg_0.x;
    var var_2 = Struct_5(Struct_4(abs(1u), global2.c.b, vec2<bool>(true, true), global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(38714u, ~global2.c.a), 12u)], true & !func_1(arg_1.c.b.x)), global3[_wgslsmith_index_u32(global2.a.a, 9u)], Struct_4(_wgslsmith_sub_u32(global2.c.a >> (68162u % 32u), 0u), global2.c.b, global2.a.c, global2.c.d, true), _wgslsmith_f_op_vec2_f32(global2.c.b.yy - vec2<f32>(global2.a.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -975f)))), u_input.a);
    return StorageBuffer(abs(vec3<i32>(firstTrailingBit(var_2.a.d.c.b.x), select(-8295i, u_input.a.x, false), u_input.a.x) & (vec3<i32>(var_2.c.d.c.b.x, global2.e.x, arg_0.x) << (firstLeadingBit(vec3<u32>(global2.c.a, global2.a.a, 72155u)) % vec3<u32>(32u)))), countOneBits(firstLeadingBit(~firstLeadingBit(1i))), 244f, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global2.a.b.x, -920f, global2.d.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.a.b) * _wgslsmith_div_vec3_f32(var_2.a.b, var_2.c.b)))), var_2.a.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -_wgslsmith_mult_i32(firstLeadingBit(~u_input.a.x), -2147483647i);
    let x = u_input.a;
    s_output = func_5((min(u_input.a.yzy, global2.e.zzx << (vec3<u32>(4294967295u, global2.c.a, global2.a.a) % vec3<u32>(32u))) ^ -(~global2.e.yxy)) & firstLeadingBit(select(_wgslsmith_mod_vec3_i32(vec3<i32>(global2.e.x, u_input.a.x, global2.a.d.c.b.x), u_input.a.wyz), vec3<i32>(-13827i, var_0, -1i) & vec3<i32>(-40484i, u_input.a.x, 76478i), func_1(-2147483647i))), Struct_3(!all(select(global2.c.c, global2.a.d.b.a.zx, global2.c.c.x)), Struct_2(global2.a.d.b.a), global2.b, select(!(!global2.a.d.b.a.wyz), global2.a.d.b.a.xxx, !func_1(u_input.a.x))), global2.c.d.d.zz);
}

