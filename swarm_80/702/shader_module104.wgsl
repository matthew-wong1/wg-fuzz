struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec3<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8>;

var<private> global1: Struct_4;

var<private> global2: Struct_1 = Struct_1(i32(-2147483648), vec4<u32>(4294967295u, 10895u, 0u, 1u), vec3<i32>(1i, -31911i, -16837i), vec4<i32>(0i, 85779i, 1i, 2147483647i));

var<private> global3: Struct_2;

var<private> global4: vec4<bool> = vec4<bool>(true, true, false, true);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> u32 {
    var var_0 = !(!(!(!select(vec4<bool>(false, global4.x, true, global1.a.x), vec4<bool>(global4.x, false, false, global4.x), vec4<bool>(false, global1.a.x, global1.a.x, true)))));
    let var_1 = ~_wgslsmith_div_u32(~29870u, 957u);
    global0 = array<u32, 8>();
    global2 = Struct_1(global3.a.d.x, abs(vec4<u32>(~_wgslsmith_sub_u32(77896u, global0[_wgslsmith_index_u32(global1.b.a.b.x, 8u)]), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, var_1), vec2<u32>(0u, 23512u)) | global3.a.b.x, ~(global2.b.x << (32924u % 32u)), 1u)), select(-vec3<i32>(abs(-56450i), -2147483647i, _wgslsmith_mult_i32(global3.a.d.x, global3.a.c.x)), min(global1.b.a.d.xwz, vec3<i32>(-1i, global1.b.a.d.x, 1212i)) >> ((global1.b.a.b.zzz << (global1.b.a.b.xww % vec3<u32>(32u))) % vec3<u32>(32u)), global1.a), -(~vec4<i32>(firstLeadingBit(global1.b.a.c.x), -2147483647i, ~global1.b.a.d.x, _wgslsmith_add_i32(global3.a.d.x, global1.b.a.c.x))));
    global3 = Struct_2(global1.b.a, _wgslsmith_mult_vec2_u32(~max(global2.b.yz, global1.b.a.b.xx >> (vec2<u32>(var_1, 0u) % vec2<u32>(32u))), vec2<u32>(_wgslsmith_div_u32(~109133u, ~5137u), _wgslsmith_div_u32(1u, global1.b.a.b.x))));
    return ~4294967295u;
}

fn func_4(arg_0: u32) -> vec4<bool> {
    let var_0 = Struct_3(_wgslsmith_add_vec4_i32(vec4<i32>(global1.b.a.d.x & 1i, -u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(global3.a.a, global1.b.a.d.x, 34807i), _wgslsmith_mult_vec3_i32(vec3<i32>(0i, global3.a.d.x, -66873i), vec3<i32>(38776i, -2147483647i, 8936i))), -38605i), global3.a.d), false);
    global1 = Struct_4(global1.a, Struct_2(Struct_1(var_0.a.x, global3.a.b, ~global3.a.c | var_0.a.zww, -(~global1.b.a.d)), ~select(_wgslsmith_mod_vec2_u32(vec2<u32>(916u, u_input.c), vec2<u32>(62425u, global0[_wgslsmith_index_u32(arg_0, 8u)])), global2.b.zy ^ global1.b.b, vec2<bool>(true, true))));
    global1 = Struct_4(select(global1.a, vec3<bool>(all(vec4<bool>(false, false, global1.a.x, global1.a.x)), true, _wgslsmith_mod_i32(-13304i, -24707i) != u_input.b), vec3<bool>(global1.a.x, all(!vec4<bool>(global1.a.x, false, false, var_0.b)), true)), Struct_2(Struct_1(global1.b.a.c.x, ~global2.b, global2.d.yyw, ~global3.a.d), _wgslsmith_clamp_vec2_u32(~(~vec2<u32>(global3.b.x, global3.b.x)), global2.b.xy, vec2<u32>(_wgslsmith_mod_u32(u_input.a, global2.b.x), 1u | arg_0))));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(456f, 585f) - _wgslsmith_f_op_f32(f32(-1f) * -557f))), _wgslsmith_f_op_f32(180f + _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(-512f + -579f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1556f, -1646f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1158f))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-782f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(1067f, 1377f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(680f + -405f) + _wgslsmith_div_f32(680f, 2295f)), -1000f)));
    global4 = select(!(!select(vec4<bool>(var_0.b, false, false, true), vec4<bool>(true, global4.x, true, true), false || global4.x)), select(vec4<bool>(all(vec2<bool>(global1.a.x, false)), !all(vec2<bool>(true, false)), all(vec4<bool>(true, true, true, global1.a.x)), false), select(select(vec4<bool>(global4.x, var_0.b, true, var_0.b), vec4<bool>(var_0.b, true, false, true), all(vec3<bool>(global4.x, global4.x, true))), vec4<bool>(var_1.x > -1000f, var_0.b == false, any(global1.a.zy), true), true), select(vec4<bool>(global4.x, true, !global1.a.x, any(vec4<bool>(global1.a.x, true, true, false))), !select(vec4<bool>(false, false, var_0.b, true), vec4<bool>(var_0.b, true, true, false), global4.x), any(vec4<bool>(global1.a.x, true, true, true)))), !any(!vec4<bool>(false, true, false, global4.x)));
    return select(!select(select(vec4<bool>(var_0.b, true, false, false), !vec4<bool>(var_0.b, false, var_0.b, false), var_0.b), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, global4.x, global1.a.x, true), vec4<bool>(false, global1.a.x, global1.a.x, var_0.b)), true), vec4<bool>((global1.a.x || false) && (firstLeadingBit(global2.d.x) <= (i32(-1i) * -3868i)), global4.x, global1.a.x, _wgslsmith_add_u32(global3.b.x, _wgslsmith_dot_vec3_u32(global1.b.a.b.zxz, vec3<u32>(arg_0, 56984u, 11035u))) >= ~1u), vec4<bool>(var_0.b, select(true, true, false), global1.a.x != any(select(vec4<bool>(global4.x, true, false, true), vec4<bool>(global1.a.x, var_0.b, false, false), vec4<bool>(true, false, var_0.b, true))), global4.x));
}

fn func_2(arg_0: Struct_3) -> Struct_3 {
    var var_0 = arg_0;
    global4 = !(!(!func_4(func_3())));
    global3 = Struct_2(global1.b.a, global1.b.b);
    var_0 = Struct_3(global2.d, global4.x && arg_0.b);
    var var_1 = select(vec2<u32>(13152u, global3.a.b.x), ~(~vec2<u32>(17813u | global3.b.x, 0u)), global1.a.x);
    return arg_0;
}

fn func_5(arg_0: Struct_3, arg_1: vec4<f32>) -> bool {
    global1 = Struct_4(select(func_4(~_wgslsmith_clamp_u32(23343u, 1u, 0u)).zww, vec3<bool>(select(true, true, any(vec4<bool>(arg_0.b, arg_0.b, false, arg_0.b))), global4.x, _wgslsmith_div_i32(global1.b.a.c.x, global3.a.a) <= ~(-4168i)), func_4(0u).zxw), Struct_2(Struct_1(30886i, vec4<u32>(6555u, 4294967295u, global0[_wgslsmith_index_u32(global2.b.x, 8u)], 44321u) ^ global2.b, ~vec3<i32>(-2147483647i, global2.c.x, 28432i), vec4<i32>(arg_0.a.x, arg_0.a.x ^ 1i, func_2(arg_0).a.x, i32(-1i) * -13105i)), min(global1.b.a.b.yz ^ (global2.b.xy ^ vec2<u32>(40184u, global3.a.b.x)), vec2<u32>(global3.b.x >> (global1.b.a.b.x % 32u), 4294967295u))));
    var var_0 = -global2.c.yz;
    global4 = select(!(!(!func_4(34276u))), !vec4<bool>(_wgslsmith_f_op_f32(trunc(-448f)) < 142f, any(vec3<bool>(false, true, global4.x)), 1218f != arg_1.x, !(u_input.b >= global3.a.c.x)), !func_4(42075u).x);
    var var_1 = arg_1.x;
    let var_2 = arg_0;
    return global1.a.x;
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(select(-178f, 1f, func_5(func_2(Struct_3(vec4<i32>(-1i, u_input.b, 18611i, u_input.b), true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1183f + 399f), _wgslsmith_f_op_f32(trunc(-1000f)), 1f, -1509f)))));
    var var_1 = global1.b;
    global0 = array<u32, 8>();
    global0 = array<u32, 8>();
    global1 = Struct_4(global1.a, global1.b);
    return Struct_1(u_input.b, select(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, global0[_wgslsmith_index_u32(global2.b.x, 8u)], 0u, 4294967295u), ~global1.b.a.b), global2.b), abs(vec4<u32>(0u, 41589u, 12728u, global0[_wgslsmith_index_u32(global2.b.x, 8u)]) << (var_1.a.b % vec4<u32>(32u))) >> ((~vec4<u32>(6811u, 0u, 0u, 47963u) ^ (vec4<u32>(global0[_wgslsmith_index_u32(u_input.c, 8u)], global3.a.b.x, global3.a.b.x, global2.b.x) & global3.a.b)) % vec4<u32>(32u)), !vec4<bool>(true, true, all(vec3<bool>(false, false, arg_0)), u_input.b != global1.b.a.d.x)), global3.a.c, -vec4<i32>(var_1.a.d.x, _wgslsmith_sub_i32(global1.b.a.a, global2.d.x) ^ -1i, _wgslsmith_sub_i32(var_1.a.c.x, ~u_input.b), -7042i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1i;
    var var_1 = global3.a;
    var var_2 = select(!(!(true & global1.a.x)), all(vec4<bool>(true, -24593i >= global3.a.a, !(global1.a.x | global1.a.x), true)), global4.x);
    global2 = global1.b.a;
    let var_3 = func_1(global4.x);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -580f)));
    global1 = Struct_4(vec3<bool>(select(false | func_5(Struct_3(global1.b.a.d, global1.a.x), vec4<f32>(var_4, -528f, var_4, -851f)), true, global4.x), global4.x, global1.a.x && func_5(func_2(Struct_3(vec4<i32>(0i, var_0, global3.a.a, -13301i), false)), vec4<f32>(var_4, var_4, var_4, var_4))), global1.b);
    let var_5 = firstLeadingBit(abs(19985u));
    var var_6 = global1.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(~40982u, vec2<i32>(_wgslsmith_div_i32(var_3.c.x, max(~14160i, 16359i)), -61949i), min(_wgslsmith_mod_vec4_i32(~abs(vec4<i32>(-2147483647i, -1i, 17996i, 2147483647i)), abs(vec4<i32>(0i, 2147483647i, 25724i, 2147483647i) & global1.b.a.d)), ~(vec4<i32>(var_1.a, -16815i, 22130i, u_input.b) << (var_1.b % vec4<u32>(32u))) << (vec4<u32>(global0[_wgslsmith_index_u32(0u, 8u)], min(41976u, 29765u), _wgslsmith_mult_u32(56749u, 55083u), 33751u & global2.b.x) % vec4<u32>(32u))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-433f, -2515f, -2803f)), vec3<f32>(var_4, var_4, 1290f), select(vec3<bool>(true, true, global4.x), global4.xwx, true))) + vec3<f32>(_wgslsmith_f_op_f32(-1000f - -614f), var_4, var_4)), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_4)), _wgslsmith_f_op_f32(1000f + 486f)), var_4, _wgslsmith_f_op_f32(-1968f - -2110f))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-133f - var_4), _wgslsmith_f_op_f32(-var_4), _wgslsmith_f_op_f32(-var_4))))));
}

