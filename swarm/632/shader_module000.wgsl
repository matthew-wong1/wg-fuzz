struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec4<bool>,
    d: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: i32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
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

var<private> global0: Struct_1 = Struct_1(1u, vec4<f32>(-1631f, 613f, -909f, -725f), vec4<bool>(false, true, true, false), 1243f);

var<private> global1: array<f32, 20> = array<f32, 20>(-123f, -526f, 1099f, 1352f, -1036f, -1533f, 683f, 167f, -1234f, 1497f, 566f, 2087f, 1000f, -1280f, 880f, -1214f, -360f, 774f, -963f, -1522f);

var<private> global2: vec4<bool> = vec4<bool>(true, false, false, false);

var<private> global3: Struct_2;

var<private> global4: vec4<u32>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: u32, arg_1: vec2<u32>) -> vec2<i32> {
    let var_0 = Struct_1(0u, _wgslsmith_f_op_vec4_f32(max(global0.b, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1981f)), _wgslsmith_f_op_f32(-global0.d), -159f, -1833f))), vec4<bool>(global0.c.x, !any(global3.b.c.xx), global2.x, global3.b.c.x), global0.b.x);
    let var_1 = 73677u;
    var var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-global0.b.wz)));
    global1 = array<f32, 20>();
    var var_3 = vec4<u32>(30532u, global0.a, global4.x, ~(~arg_1.x)) | ~vec4<u32>(_wgslsmith_dot_vec3_u32(~global4.xyy, ~vec3<u32>(arg_0, 4294967295u, 25112u)), countOneBits(~global4.x), global0.a & abs(global3.b.a), _wgslsmith_sub_u32(u_input.b, min(4294967295u, global4.x)));
    return global3.d ^ select(abs(vec2<i32>(_wgslsmith_clamp_i32(-670i, global3.c, 19613i), 1i)), firstLeadingBit(_wgslsmith_sub_vec2_i32(-global3.d, ~vec2<i32>(global3.c, u_input.a))), select(vec2<bool>(false, global0.c.x), vec2<bool>(true, all(vec3<bool>(false, false, false))), !(global2.x & global2.x)));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec2<u32>) -> vec4<bool> {
    return vec4<bool>(func_3(countOneBits(33835u), vec2<u32>(~115892u, u_input.b)).x > -(arg_0.x << (global0.a % 32u)), global2.x, global3.b.c.x, all(select(global2.zy, vec2<bool>(true, global3.b.c.x), !vec2<bool>(false, global2.x))));
}

fn func_2() -> f32 {
    global2 = func_4(~(func_3(_wgslsmith_mod_u32(global0.a, 12897u), vec2<u32>(global0.a, 33719u)) | _wgslsmith_mod_vec2_i32(func_3(global0.a, vec2<u32>(global3.b.a, 1u)), global3.d & global3.d)), global3.b, reverseBits(vec2<u32>(4294967295u, countOneBits(global4.x) ^ global3.b.a)));
    global2 = vec4<bool>(true, global2.x, false, all(!(!func_4(global3.d, Struct_1(0u, global0.b, global3.b.c, global0.b.x), global4.yx).yz)));
    let var_0 = abs(_wgslsmith_mult_vec3_i32(-_wgslsmith_mod_vec3_i32(-vec3<i32>(0i, global3.c, u_input.a), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, u_input.a, 0i), vec3<i32>(-43467i, 1871i, -14563i))), max(-vec3<i32>(-2147483647i, global3.c, u_input.a), vec3<i32>(u_input.a, 19557i, 1i))));
    var var_1 = Struct_2(-345f, Struct_1(1u << (u_input.b % 32u), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1231f)) - 816f), 1f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 20u)]), -451f), !select(vec4<bool>(true, true, global0.c.x, global0.c.x), vec4<bool>(global3.b.c.x, true, global2.x, false), select(vec4<bool>(false, global2.x, false, true), vec4<bool>(true, global0.c.x, false, global3.b.c.x), global3.b.c)), _wgslsmith_f_op_f32(global3.b.d - global3.a)), 62928i, countOneBits(global3.d));
    var var_2 = global4.zxy;
    return 306f;
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_2) -> Struct_2 {
    let var_0 = global0.a;
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(100f + _wgslsmith_f_op_f32(-829f + global0.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(956f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-422f, arg_1.a)))));
    let var_2 = arg_1.b;
    global0 = arg_1.b;
    let var_3 = var_2;
    return arg_1;
}

fn func_6(arg_0: i32, arg_1: Struct_2, arg_2: u32) -> vec4<u32> {
    global3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - -538f)), func_5(vec4<bool>(any(vec2<bool>(arg_1.b.c.x, false)) || global3.b.c.x, global0.c.x, arg_1.b.d == _wgslsmith_f_op_f32(global3.a + 106f), false), Struct_2(_wgslsmith_f_op_f32(-1114f * global3.a), Struct_1(4294967295u, vec4<f32>(657f, 1433f, global0.b.x, 1542f), !global3.b.c, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), countOneBits(firstLeadingBit(arg_0)), arg_1.d)).b, arg_0, -(func_3(~1u, _wgslsmith_mod_vec2_u32(vec2<u32>(0u, arg_1.b.a), vec2<u32>(56133u, global4.x))) << (_wgslsmith_mult_vec2_u32(~vec2<u32>(94673u, arg_2), ~vec2<u32>(global3.b.a, 28407u)) % vec2<u32>(32u))));
    let var_0 = select(min(~24815u, countOneBits(_wgslsmith_mod_u32(u_input.b, ~26155u))), 4294967295u, false);
    var var_1 = func_5(func_4(firstTrailingBit(vec2<i32>(-arg_1.c, abs(0i))), global3.b, global4.zz), arg_1);
    var var_2 = Struct_2(1000f, Struct_1(global3.b.a, _wgslsmith_f_op_vec4_f32(var_1.b.b + arg_1.b.b), global3.b.c, global1[_wgslsmith_index_u32(~func_5(func_5(vec4<bool>(global0.c.x, false, arg_1.b.c.x, true), arg_1).b.c, func_5(global0.c, Struct_2(var_1.a, Struct_1(var_1.b.a, var_1.b.b, vec4<bool>(global3.b.c.x, true, var_1.b.c.x, false), arg_1.a), arg_0, vec2<i32>(0i, -1i)))).b.a, 20u)]), -func_3(_wgslsmith_mult_u32(~3314u, func_5(arg_1.b.c, arg_1).b.a), countOneBits(_wgslsmith_div_vec2_u32(vec2<u32>(7023u, 121092u), global4.zy))).x, arg_1.d);
    global4 = vec4<u32>(52588u, 4294967295u, countOneBits(arg_1.b.a & ~8600u), _wgslsmith_dot_vec2_u32(~max(vec2<u32>(global3.b.a, var_1.b.a), vec2<u32>(var_1.b.a, 49571u)), select(vec2<u32>(68353u, arg_2), global4.xz, false) & select(vec2<u32>(21262u, arg_2), global4.yw, var_2.b.c.zy)) << (abs(~_wgslsmith_mod_u32(var_1.b.a, 4294967295u)) % 32u));
    return _wgslsmith_mod_vec4_u32((~(~vec4<u32>(1u, var_2.b.a, u_input.b, u_input.b)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(43362u, global0.a, var_2.b.a, global0.a) >> (vec4<u32>(4294967295u, global4.x, global3.b.a, 47456u) % vec4<u32>(32u)), ~vec4<u32>(global4.x, 4294967295u, 12673u, 0u)) % vec4<u32>(32u))) | ((~vec4<u32>(var_1.b.a, var_0, 1u, var_2.b.a) << (~vec4<u32>(global0.a, var_0, var_2.b.a, 1u) % vec4<u32>(32u))) ^ ~select(vec4<u32>(1u, var_0, 0u, 20374u), vec4<u32>(global3.b.a, 62390u, arg_1.b.a, 4294967295u), arg_1.b.c)), abs(vec4<u32>(11018u, global3.b.a, reverseBits(56426u), u_input.b)));
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(15864u, 20u)], 743f)), Struct_1(20275u, global0.b, select(vec4<bool>(true, all(vec3<bool>(global3.b.c.x, false, false)), select(global0.c.x, global0.c.x, false), true), select(select(global3.b.c, vec4<bool>(true, true, global0.c.x, false), vec4<bool>(true, global2.x, global0.c.x, true)), select(vec4<bool>(global2.x, false, true, global3.b.c.x), global3.b.c, false), any(vec4<bool>(false, true, true, global0.c.x))), all(select(global0.c, global3.b.c, vec4<bool>(true, false, global3.b.c.x, global2.x)))), 1031f), global3.c, global3.d);
    global4 = func_6(var_0.d.x, func_5(vec4<bool>(false, !(global3.c < global3.c), false, global2.x), Struct_2(_wgslsmith_f_op_f32(func_2()), global3.b, i32(-1i) * -2147483647i, -(~vec2<i32>(u_input.a, var_0.c)))), global3.b.a);
    let var_1 = -1752f;
    let var_2 = -1i;
    let var_3 = _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(global4.x, global4.x) & u_input.b, _wgslsmith_div_u32(global0.a, countOneBits(4294967295u))), firstLeadingBit(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(global4.wwy, global4.zzx), 5642u | global3.b.a, global4.x << (3414u % 32u))), global0.a), vec3<u32>(0u, var_0.b.a, 2352u));
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global3.a)))), Struct_1(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(global4.xwy, var_3), ~global4.wzx), _wgslsmith_f_op_vec4_f32(-vec4<f32>(609f, _wgslsmith_f_op_f32(trunc(global0.d)), _wgslsmith_f_op_f32(-var_1), global3.b.b.x)), select(!select(var_0.b.c, vec4<bool>(global0.c.x, false, global0.c.x, var_0.b.c.x), global0.c), vec4<bool>(global0.a <= 89693u, var_2 >= var_2, true, var_0.b.c.x & global0.c.x), true), var_1), global3.c, var_0.d);
}

fn func_7(arg_0: u32, arg_1: bool, arg_2: Struct_2) -> Struct_2 {
    var var_0 = vec4<i32>(abs(global3.c), u_input.a, -_wgslsmith_mult_i32(min(-31217i, reverseBits(u_input.a)), global3.c), u_input.a);
    var var_1 = func_1().b;
    return arg_2;
}

fn func_8(arg_0: Struct_2, arg_1: vec4<f32>) -> Struct_1 {
    var var_0 = !global3.b.c.x;
    var var_1 = _wgslsmith_f_op_f32(sign(-601f));
    global4 = ~vec4<u32>(~33432u, ~global3.b.a, ~func_1().b.a, func_1().b.a) >> (vec4<u32>(func_7(_wgslsmith_add_u32(global3.b.a, 41416u), func_5(select(vec4<bool>(global0.c.x, true, arg_0.b.c.x, arg_0.b.c.x), global3.b.c, vec4<bool>(false, false, global0.c.x, global2.x)), Struct_2(global3.b.d, arg_0.b, global3.d.x, global3.d)).b.c.x, arg_0).b.a, u_input.b, _wgslsmith_div_u32(global4.x << ((arg_0.b.a << (4294967295u % 32u)) % 32u), ~17310u), 1916u) % vec4<u32>(32u));
    var var_2 = true;
    global4 = _wgslsmith_add_vec4_u32(~(vec4<u32>(global3.b.a, 4294967295u, global4.x, u_input.b) ^ ~vec4<u32>(7280u, u_input.b, 34261u, arg_0.b.a)) << (max(vec4<u32>(_wgslsmith_mult_u32(75743u, u_input.b), global3.b.a >> (global0.a % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(98046u, global3.b.a, global4.x), global4.zww), ~4294967295u), vec4<u32>(89900u, 3058u, ~22265u, func_5(arg_0.b.c, Struct_2(945f, Struct_1(0u, vec4<f32>(global1[_wgslsmith_index_u32(global0.a, 20u)], arg_0.b.d, 1047f, global3.a), vec4<bool>(true, arg_0.b.c.x, global2.x, true), global3.a), -27619i, vec2<i32>(arg_0.c, global3.c))).b.a)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(select(reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 0u, global3.b.a, arg_0.b.a), vec4<u32>(global3.b.a, global0.a, u_input.b, u_input.b))), select(firstTrailingBit(vec4<u32>(0u, 7483u, 1u, global3.b.a)), ~vec4<u32>(global0.a, global4.x, 1u, 4294967295u), global3.b.c), !arg_0.b.c), ~select(abs(vec4<u32>(40232u, global4.x, arg_0.b.a, global3.b.a)), vec4<u32>(arg_0.b.a, 21799u, 0u, 4294967295u), func_4(vec2<i32>(global3.d.x, 0i), Struct_1(global3.b.a, arg_1, global3.b.c, arg_1.x), global4.wy).x)));
    return func_7(_wgslsmith_div_u32(4294967295u, ~reverseBits(firstLeadingBit(8889u))), arg_1.x < -1000f, func_5(vec4<bool>(func_7(~global0.a, func_4(arg_0.d, global3.b, global4.yw).x, Struct_2(global0.d, Struct_1(39027u, vec4<f32>(-2351f, 1525f, global1[_wgslsmith_index_u32(global4.x, 20u)], global1[_wgslsmith_index_u32(u_input.b, 20u)]), vec4<bool>(arg_0.b.c.x, global0.c.x, global3.b.c.x, global3.b.c.x), arg_1.x), -19291i, vec2<i32>(u_input.a, arg_0.d.x))).b.c.x, true, any(arg_0.b.c), func_1().b.c.x), func_5(global0.c, func_1()))).b;
}

fn func_9(arg_0: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-func_7(~_wgslsmith_mod_u32(~arg_0.a, abs(4294967295u)), !global3.b.c.x, Struct_2(global3.a, func_8(Struct_2(664f, Struct_1(global3.b.a, vec4<f32>(-2152f, global0.b.x, global0.b.x, -747f), vec4<bool>(global3.b.c.x, true, false, arg_0.c.x), global0.d), u_input.a, global3.d), arg_0.b), ~global3.d.x, global3.d)).b.b);
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -566f))), global3.b, -_wgslsmith_mod_i32(~(u_input.a >> (4294967295u % 32u)), _wgslsmith_mod_i32(1i, global3.d.x)), min(~(~global3.d << (abs(vec2<u32>(0u, global0.a)) % vec2<u32>(32u))), _wgslsmith_add_vec2_i32(countOneBits(vec2<i32>(u_input.a, u_input.a)), _wgslsmith_div_vec2_i32(-vec2<i32>(global3.c, 42136i), ~vec2<i32>(global3.c, u_input.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_9(func_8(func_7(global4.x, false && global2.x, func_1()), global0.b));
    global2 = func_9(global3.b).b.c;
    var var_0 = global3.b;
    var_0 = Struct_1(abs(_wgslsmith_mult_u32(736u, ~(~var_0.a))), var_0.b, func_9(func_1().b).b.c, 1740f);
    var_0 = func_7(1u, true, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -495f)), func_7(firstLeadingBit(u_input.b) << (1u % 32u), any(vec3<bool>(true, true, true)), Struct_2(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b, 20u)] + 737f), func_7(global0.a, false, Struct_2(-1422f, Struct_1(4294967295u, vec4<f32>(899f, var_0.b.x, -1250f, global0.d), global0.c, global3.a), u_input.a, global3.d)).b, func_3(1u, vec2<u32>(global0.a, global4.x)).x, select(vec2<i32>(59895i, 1i), global3.d, vec2<bool>(var_0.c.x, true)))).b, global3.d.x, func_3(1u, _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(global4.wz, vec2<u32>(global0.a, u_input.b)), global4.zw)))).b;
    let x = u_input.a;
    s_output = StorageBuffer(func_6(func_9(Struct_1(global4.x, var_0.b, var_0.c, -1994f)).c >> (_wgslsmith_div_u32(~4294967295u, u_input.b) % 32u), Struct_2(func_1().b.d, func_5(vec4<bool>(true, true, true, false), func_7(0u, true, Struct_2(global0.d, Struct_1(global0.a, vec4<f32>(global3.b.d, var_0.d, global0.d, -450f), vec4<bool>(global3.b.c.x, global3.b.c.x, var_0.c.x, false), global0.b.x), u_input.a, vec2<i32>(u_input.a, 1i)))).b, 21760i, _wgslsmith_sub_vec2_i32(global3.d, vec2<i32>(1i, u_input.a))), 2869u).x, vec4<f32>(global1[_wgslsmith_index_u32(global0.a, 20u)], _wgslsmith_f_op_f32(-1000f + -253f), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_0.b.x, _wgslsmith_div_f32(-739f, -1921f)), -317f)), _wgslsmith_f_op_f32(-var_0.d)), 46549i);
}

