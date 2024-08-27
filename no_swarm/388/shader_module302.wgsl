struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<i32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 26> = array<u32, 26>(1u, 2034u, 55080u, 54116u, 12427u, 0u, 1u, 33276u, 1u, 37119u, 1u, 18373u, 0u, 0u, 0u, 1u, 4294967295u, 4294967295u, 0u, 1u, 37914u, 1u, 10586u, 1u, 4294967295u, 102947u);

var<private> global1: vec3<i32> = vec3<i32>(0i, 0i, 1i);

var<private> global2: array<vec4<bool>, 20>;

var<private> global3: bool;

var<private> global4: Struct_1;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: Struct_1) -> f32 {
    let var_0 = _wgslsmith_add_i32(firstTrailingBit(~abs(~arg_2.a)), -37041i);
    global4 = arg_2;
    let var_1 = arg_2;
    global4 = Struct_1(1i, true, ~(-((vec3<i32>(23552i, 46776i, global1.x) << (vec3<u32>(var_1.e.x, var_1.e.x, 1u) % vec3<u32>(32u))) << (var_1.e % vec3<u32>(32u)))), var_1.d, arg_2.e & select(~max(vec3<u32>(1u, 4294967295u, 0u), global4.e), global4.e, true));
    let var_2 = !select(global2[_wgslsmith_index_u32(~var_1.e.x, 20u)], select(vec4<bool>(true, true, !arg_2.b, select(var_1.b, global4.b, var_1.b)), select(!vec4<bool>(arg_2.b, var_1.b, true, false), !global2[_wgslsmith_index_u32(36437u, 20u)], false), arg_2.b), !select(select(global2[_wgslsmith_index_u32(63786u, 20u)], vec4<bool>(global4.b, var_1.b, false, var_1.b), true), select(global2[_wgslsmith_index_u32(u_input.c, 20u)], global2[_wgslsmith_index_u32(var_1.e.x, 20u)], global2[_wgslsmith_index_u32(arg_2.e.x, 20u)]), select(global2[_wgslsmith_index_u32(u_input.b, 20u)], global2[_wgslsmith_index_u32(6178u, 20u)], vec4<bool>(var_1.b, false, global4.b, arg_2.b))));
    return arg_0.x;
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-203f, 1273f, 2175f) + vec3<f32>(220f, 290f, 609f))), -select(global4.d.wwx, global4.c, false), Struct_1(2147483647i, !global4.b, vec3<i32>(global4.d.x, -10388i, 3822i), global4.d, vec3<u32>(4294967295u, 114552u, 70090u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-115f - _wgslsmith_f_op_f32(sign(446f))) + 1026f), -395f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<f32>(312f, 1283f, 1556f), -global4.c, Struct_1(global4.d.x, false, global4.c, vec4<i32>(global1.x, global1.x, -37021i, 24723i), global4.e))))));
    global1 = vec3<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(~_wgslsmith_sub_i32(u_input.a, global4.d.x), _wgslsmith_mod_i32(2147483647i, _wgslsmith_div_i32(-35515i, u_input.a))), ~abs(min(global1.x, global4.d.x))), abs(reverseBits(select(_wgslsmith_dot_vec4_i32(global4.d, global4.d), _wgslsmith_clamp_i32(global1.x, 0i, u_input.a), global4.b))), global4.d.x);
    let var_1 = 1u;
    var var_2 = _wgslsmith_dot_vec3_i32(global4.d.yzy >> (~max(abs(vec3<u32>(u_input.c, var_1, 4294967295u)), global4.e) % vec3<u32>(32u)), global4.d.zzx);
    let var_3 = vec3<f32>(1119f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1534f))), -580f);
    return Struct_2(var_0.yz, -abs(max(countOneBits(-45855i), global1.x)), Struct_1(1i, !all(vec3<bool>(global4.b, true, global4.b)), -select(global4.c, -global4.c, global4.b), global4.d, ~(~(~vec3<u32>(var_1, var_1, global0[_wgslsmith_index_u32(global4.e.x, 26u)])))), Struct_1(-1i, _wgslsmith_add_i32(39832i, global1.x) > 43701i, -global4.d.zxx, global4.d, select((global4.e ^ global4.e) ^ _wgslsmith_clamp_vec3_u32(global4.e, vec3<u32>(4294967295u, 0u, u_input.b), vec3<u32>(27988u, 0u, 49319u)), global4.e | global4.e, !select(vec3<bool>(false, global4.b, false), vec3<bool>(global4.b, false, global4.b), global4.b))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<f32>) -> Struct_2 {
    var var_0 = func_2().d;
    global2 = array<vec4<bool>, 20>();
    global0 = array<u32, 26>();
    global1 = vec3<i32>(-var_0.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i << (firstLeadingBit(arg_1.e.x) % 32u), _wgslsmith_sub_i32(-1i, 0i)), vec2<i32>(-39182i, _wgslsmith_div_i32(~u_input.a, 0i & global4.d.x))), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(10775i, u_input.a, 26697i), ~(-vec3<i32>(0i, global4.c.x, -1i))), -(~global1.x)));
    var var_1 = vec2<i32>(~(-14985i), func_2().c.c.x | -func_2().d.d.x);
    return Struct_2(_wgslsmith_f_op_vec2_f32(trunc(arg_0.a)), _wgslsmith_mod_i32(1i, u_input.a), arg_0.d, func_2().c);
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_2) -> Struct_1 {
    var var_0 = arg_1.c.e.x;
    var var_1 = arg_1.c;
    let var_2 = Struct_1(-1i >> ((140110u | (25388u << (var_1.e.x % 32u))) % 32u), false, _wgslsmith_div_vec3_i32(reverseBits(~vec3<i32>(17764i, 2652i, u_input.a)), -abs(vec3<i32>(-1i, 1i, 1i))) & abs(max(arg_0, var_1.d.yzw) << (countOneBits(global4.e) % vec3<u32>(32u))), vec4<i32>(global4.d.x, u_input.a, max(countOneBits(-1i), 1i), 17172i) ^ var_1.d, var_1.e);
    let var_3 = _wgslsmith_mult_vec3_u32(min(var_1.e, var_1.e), vec3<u32>(~0u, 40659u, ~_wgslsmith_add_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~3524u, 26u)], 26u)], u_input.b)));
    var var_4 = _wgslsmith_mod_vec2_i32(global1.zz, vec2<i32>(_wgslsmith_mod_i32(-2147483647i, global4.c.x ^ var_2.a), firstLeadingBit(_wgslsmith_sub_i32(~var_1.d.x, ~(-296i)))));
    return var_2;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2, arg_3: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x * arg_1.a.x))))), arg_1.a.x));
    let var_1 = arg_1.a.x;
    global3 = true & any(!select(vec3<bool>(true, true, true), vec3<bool>(arg_1.c.b, true, true), arg_3));
    global1 = firstLeadingBit(~(-arg_0.d.wxx));
    let var_2 = func_4(func_4(Struct_2(vec2<f32>(var_0, -316f), global4.d.x, Struct_1(~arg_2.d.a, false, select(arg_1.c.d.yyx, vec3<i32>(global1.x, arg_0.c.x, 8828i), arg_3), countOneBits(vec4<i32>(global1.x, arg_2.b, 1i, global4.c.x)), vec3<u32>(arg_0.e.x, 3600u, arg_1.c.e.x) << (vec3<u32>(4294967295u, 26227u, 0u) % vec3<u32>(32u))), Struct_1(1i, false, _wgslsmith_div_vec3_i32(global4.d.xwx, vec3<i32>(27322i, -5412i, -16756i)), vec4<i32>(0i, global1.x, -35619i, -21914i), global4.e)), arg_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0, var_1, -1000f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1571f, var_1, -212f) * vec3<f32>(488f, var_0, arg_1.a.x)))))), arg_1.d, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, 447f)) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1.a.x, var_1, -2141f), vec3<f32>(188f, var_0, var_1))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-745f, 924f, var_0)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-916f, arg_1.a.x, 3149f))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a.x, -336f, arg_1.a.x) * vec3<f32>(450f, var_0, var_1)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1092f, var_0, var_0)))))).d;
    return func_2().c;
}

fn func_1(arg_0: f32) -> Struct_2 {
    global0 = array<u32, 26>();
    global0 = array<u32, 26>();
    global0 = array<u32, 26>();
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global4.e.x, global4.e.x, 1u, global4.e.x) & vec4<u32>(u_input.b, 4294967295u, 4294967295u, 64540u), vec4<u32>(50386u, u_input.b, 9058u, 4294967295u)), 1u & ~global4.e.x), min(~53443u, global0[_wgslsmith_index_u32(63085u, 26u)])), 1u), 26u)];
    let var_1 = global4.d;
    return Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0, 547f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0))))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0, arg_0), -1000f), _wgslsmith_f_op_f32(-arg_0)), !select(vec2<bool>(global4.b, false), select(vec2<bool>(global4.b, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(global4.b, global4.b)))), max(i32(-1i) * -_wgslsmith_mod_i32(var_1.x, global4.a), var_1.x), func_6(func_5(select(-vec3<i32>(global1.x, u_input.a, -18611i), vec3<i32>(-19331i, var_1.x, -28201i), global4.b), func_4(func_2(), func_2().d, vec3<f32>(arg_0, arg_0, arg_0))), func_4(func_2(), func_5(var_1.ywx, func_4(Struct_2(vec2<f32>(arg_0, -182f), 2147483647i, Struct_1(var_1.x, true, vec3<i32>(-2238i, 6837i, u_input.a), global4.d, vec3<u32>(1u, global4.e.x, global0[_wgslsmith_index_u32(u_input.b, 26u)])), Struct_1(var_1.x, global4.b, vec3<i32>(global1.x, u_input.a, global4.d.x), global4.d, global4.e)), Struct_1(-2147483647i, true, var_1.wxw, global4.d, vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(10056u, 26u)], global0[_wgslsmith_index_u32(1u, 26u)])), vec3<f32>(895f, 159f, -578f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0))), func_2(), any(vec2<bool>(false, true))), Struct_1(13622i, true, var_1.zwz, -vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -10346i, global1.x), vec3<i32>(13021i, var_1.x, var_1.x)), global4.c.x, min(-5031i, u_input.a), ~(-10644i)), vec3<u32>(u_input.c, 24879u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 1u, u_input.b, 30530u), vec4<u32>(0u, global4.e.x, 24731u, 5296u)) % 32u), 0u)));
}

fn func_7(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2, arg_3: bool) -> Struct_1 {
    let var_0 = Struct_1(countOneBits(global4.c.x), func_6(Struct_1(arg_0.b, true, firstTrailingBit(-vec3<i32>(global1.x, global4.a, global1.x)), func_6(arg_2.d, func_4(arg_0, arg_0.c, vec3<f32>(arg_2.a.x, -172f, -1511f)), func_1(arg_2.a.x), func_6(Struct_1(arg_2.b, arg_0.c.b, global4.c, vec4<i32>(u_input.a, 3717i, 2147483647i, arg_0.b), vec3<u32>(global4.e.x, global0[_wgslsmith_index_u32(arg_0.d.e.x, 26u)], 3933u)), arg_0, arg_0, arg_1).b).d, func_4(Struct_2(arg_2.a, global1.x, Struct_1(25022i, false, vec3<i32>(arg_2.b, -18590i, global1.x), arg_0.c.d, arg_0.d.e), arg_2.c), Struct_1(global4.a, false, vec3<i32>(global1.x, 4549i, global4.a), global4.d, arg_0.d.e), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a.x, arg_0.a.x, arg_2.a.x))).d.e), func_2(), func_1(126f), arg_2.d.b).b, arg_2.d.c, vec4<i32>(_wgslsmith_div_i32(abs(_wgslsmith_sub_i32(u_input.a, arg_0.c.c.x)), u_input.a), u_input.a, -4040i, -func_1(arg_2.a.x).b >> (global4.e.x % 32u)), ~arg_0.d.e);
    global0 = array<u32, 26>();
    let var_1 = func_2().c;
    var var_2 = func_2().c;
    var var_3 = ~1u;
    return arg_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1717f - -802f) - _wgslsmith_f_op_f32(f32(-1f) * -2648f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -592f)) - 2073f));
    let var_1 = func_7(func_1(_wgslsmith_f_op_f32(-var_0)), !global4.b, Struct_2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0, _wgslsmith_f_op_f32(-1411f * 512f)), vec2<f32>(var_0, -903f))), global1.x ^ ~49935i, func_4(func_4(Struct_2(vec2<f32>(var_0, var_0), 10182i, Struct_1(-3528i, global4.b, global4.d.wzx, global4.d, vec3<u32>(global0[_wgslsmith_index_u32(1u, 26u)], global4.e.x, 4294967295u)), Struct_1(2147483647i, false, global4.d.www, global4.d, vec3<u32>(global4.e.x, global0[_wgslsmith_index_u32(46163u, 26u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(20531u, 26u)], 26u)], 26u)]))), func_5(global4.c, Struct_2(vec2<f32>(var_0, var_0), global1.x, Struct_1(u_input.a, global4.b, vec3<i32>(global4.a, u_input.a, global1.x), global4.d, global4.e), Struct_1(-2147483647i, global4.b, vec3<i32>(2147483647i, -1i, 0i), vec4<i32>(-2147483647i, global1.x, 28727i, -14877i), global4.e))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -334f, var_0))), func_1(var_0).d, vec3<f32>(996f, -424f, -896f)).d, func_4(func_1(_wgslsmith_f_op_f32(f32(-1f) * -1718f)), Struct_1(func_4(Struct_2(vec2<f32>(var_0, 931f), 0i, Struct_1(u_input.a, global4.b, vec3<i32>(0i, -30029i, -2147483647i), vec4<i32>(0i, -1i, u_input.a, 14440i), global4.e), Struct_1(global1.x, global4.b, vec3<i32>(u_input.a, 40130i, global4.d.x), global4.d, global4.e)), Struct_1(u_input.a, true, vec3<i32>(global1.x, global1.x, -21695i), global4.d, global4.e), vec3<f32>(-1438f, -138f, -1464f)).c.d.x, !global4.b, ~vec3<i32>(-26002i, -48570i, global1.x), vec4<i32>(u_input.a, u_input.a, global1.x, global4.d.x), global4.e | global4.e), vec3<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(trunc(var_0)), _wgslsmith_f_op_f32(var_0 - -681f))).c), func_5(~reverseBits(global4.d.xxy), func_2()).b || global4.b);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(882f, -765f), vec2<f32>(1888f, -238f)) * vec2<f32>(var_0, -275f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(837f, -568f), vec2<f32>(var_0, var_0))))));
}

