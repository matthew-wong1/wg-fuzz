struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 31> = array<u32, 31>(0u, 0u, 78436u, 9339u, 4294967295u, 46242u, 20869u, 89263u, 4294967295u, 11571u, 72539u, 24276u, 1u, 103512u, 37612u, 16847u, 102430u, 4294967295u, 0u, 1u, 0u, 82727u, 4294967295u, 1u, 4294967295u, 19960u, 4294967295u, 0u, 18449u, 103070u, 0u);

var<private> global1: vec3<bool>;

var<private> global2: Struct_3;

var<private> global3: array<f32, 9>;

var<private> global4: array<vec2<bool>, 13> = array<vec2<bool>, 13>(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> f32 {
    let var_0 = vec2<bool>(all(global2.d), any(!global2.d));
    let var_1 = select(select(global2.d.ww, vec2<bool>(all(var_0), true), global4[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(_wgslsmith_div_u32(max(global0[_wgslsmith_index_u32(global2.b.a.x, 31u)], 0u), min(4294967295u, 1u)), 31u)], 13u)]), global1.yy, !(!all(vec2<bool>(true, true)) & true));
    global4 = array<vec2<bool>, 13>();
    let var_2 = firstTrailingBit(_wgslsmith_div_vec4_u32(global2.b.a, vec4<u32>(_wgslsmith_add_u32(global2.b.a.x, global2.a.a.x), 34280u, ~global2.b.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(u_input.e, 31u)], global2.b.a.x, 24359u), global2.a.a.wzz)))) >> (~vec4<u32>(_wgslsmith_mod_u32(abs(73016u), global2.b.a.x), select(select(0u, 0u, var_0.x), 4294967295u, true), 4678u, global0[_wgslsmith_index_u32(~(4294967295u & u_input.b), 31u)]) % vec4<u32>(32u));
    var var_3 = u_input.c.xx;
    return global3[_wgslsmith_index_u32(abs(max(~(~9819u) | var_2.x, ~reverseBits(~72391u))), 9u)];
}

fn func_2() -> Struct_5 {
    let var_0 = Struct_4(global2.b, global2.b);
    global2 = Struct_3(Struct_2(abs(firstTrailingBit(var_0.b.a)), var_0.a.b), var_0.b, var_0.b.b, select(vec4<bool>(true, 52311u == _wgslsmith_clamp_u32(47913u, global2.a.a.x, 2180u), true, global1.x), vec4<bool>(global1.x, global2.d.x, true, all(vec3<bool>(true, false, global2.d.x)) & all(global2.d)), false));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -501f), _wgslsmith_f_op_f32(func_3()))));
    global2 = Struct_3(Struct_2(vec4<u32>(global2.a.a.x, reverseBits(50403u), 0u, u_input.b), Struct_1(-29339i)), global2.a, global2.c, global2.d);
    var var_2 = all(!(!global2.d.yxw));
    return Struct_5(var_0);
}

fn func_4(arg_0: i32, arg_1: Struct_5, arg_2: Struct_5, arg_3: vec4<u32>) -> Struct_3 {
    let var_0 = 932f;
    let var_1 = global2.a.b;
    global2 = Struct_3(func_2().a.b, Struct_2(max(arg_2.a.b.a, ~vec4<u32>(67481u, 11895u, 9142u, global2.a.a.x) ^ ~vec4<u32>(0u, 4294967295u, arg_2.a.b.a.x, 1u)), func_2().a.b.b), Struct_1(~select(arg_2.a.b.b.a, u_input.a.x, true)), !global2.d);
    global0 = array<u32, 31>();
    let var_2 = false;
    return Struct_3(global2.a, Struct_2(_wgslsmith_div_vec4_u32(arg_1.a.b.a, vec4<u32>(_wgslsmith_mult_u32(u_input.e, arg_3.x), 43703u, arg_1.a.b.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a.b.a.x, arg_2.a.a.a.x, arg_1.a.b.a.x), global2.b.a.yyy))), Struct_1(~global2.a.b.a)), Struct_1(_wgslsmith_sub_i32(-4024i, firstLeadingBit(global2.a.b.a))), global2.d);
}

fn func_1(arg_0: f32) -> Struct_3 {
    let var_0 = func_4(_wgslsmith_div_i32(~max(global2.a.b.a, i32(-1i) * -23167i), ~(1i & (-1i ^ u_input.c.x))), func_2(), func_2(), global2.a.a);
    var var_1 = true;
    var var_2 = func_2().a.b.b.a;
    let var_3 = vec3<bool>(select(!any(var_0.d), any(!(!var_0.d)), all(!(!global2.d.xwz))), all(vec4<bool>(any(!vec3<bool>(false, false, global1.x)), true, var_0.d.x & select(var_0.d.x, true, global1.x), var_0.d.x)), select(func_4(~(-2147483647i) << ((0u << (u_input.e % 32u)) % 32u), func_2(), Struct_5(Struct_4(Struct_2(vec4<u32>(global2.b.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(85871u, 31u)], 31u)], u_input.e, global2.a.a.x), Struct_1(2147483647i)), Struct_2(var_0.b.a, global2.a.b))), ~var_0.b.a).d.x, var_0.d.x, any(vec2<bool>(false, var_0.d.x))));
    var var_4 = var_0.c.a;
    return func_4(_wgslsmith_add_i32(_wgslsmith_mod_i32(countOneBits(var_0.c.a), min(-42906i, 37915i)), _wgslsmith_mod_i32(u_input.d, 1i)), func_2(), func_2(), global2.a.a);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_3, arg_3: vec4<f32>) -> Struct_2 {
    let var_0 = u_input.c;
    global3 = array<f32, 9>();
    let var_1 = -func_4(_wgslsmith_mult_i32(var_0.x, abs(~0i)), func_2(), Struct_5(func_2().a), global2.a.a).b.b.a;
    return arg_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 31>();
    global4 = array<vec2<bool>, 13>();
    let var_0 = global2.a.a;
    global1 = select(!global2.d.wxy, select(vec3<bool>(!(!global1.x), (1u == global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(31005u, 31u)], 31u)]) & global1.x, global2.d.x), vec3<bool>(false, false, global1.x), !select(vec3<bool>(global1.x, global2.d.x, global2.d.x), global2.d.xww, vec3<bool>(false, false, global1.x))), !select(vec3<bool>(global2.d.x & global1.x, any(global2.d.ywz), false), select(global2.d.zxw, vec3<bool>(false, global1.x, true), vec3<bool>(false, global2.d.x, false)), global2.d.zxz));
    global4 = array<vec2<bool>, 13>();
    let var_1 = Struct_5(Struct_4(global2.b, func_5(Struct_3(global2.a, Struct_2(global2.b.a, global2.c), Struct_1(global2.a.b.a), select(vec4<bool>(false, true, global1.x, global2.d.x), vec4<bool>(global2.d.x, false, global1.x, false), true)), Struct_4(Struct_2(vec4<u32>(1u, 3649u, 48755u, global2.a.a.x), global2.c), global2.b), func_1(-2323f), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3[_wgslsmith_index_u32(var_0.x, 9u)], global3[_wgslsmith_index_u32(u_input.e, 9u)], -1454f, 547f), vec4<f32>(-2865f, 1000f, -738f, 1000f), global1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(4294967295u, 9u)], 857f, global3[_wgslsmith_index_u32(1u, 9u)], -1317f)))))));
    var var_2 = !func_1(global3[_wgslsmith_index_u32(0u, 9u)]).d;
    let x = u_input.a;
    s_output = StorageBuffer(func_1(1000f).a.a.x & _wgslsmith_add_u32(u_input.e << (~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(51265u, 31u)], 31u)] % 32u), global0[_wgslsmith_index_u32(40664u, 31u)]), ~global2.a.a.wzy >> (vec3<u32>(_wgslsmith_sub_u32(~global2.a.a.x, 35085u), 1u, 0u) % vec3<u32>(32u)), ~_wgslsmith_mod_u32(firstTrailingBit(30087u), var_0.x), func_4(1i, Struct_5(Struct_4(global2.b, global2.b)), var_1, global2.b.a).a.b.a << (_wgslsmith_div_u32(func_2().a.b.a.x >> (global2.a.a.x % 32u), ~(~global0[_wgslsmith_index_u32(0u, 31u)])) % 32u));
}

