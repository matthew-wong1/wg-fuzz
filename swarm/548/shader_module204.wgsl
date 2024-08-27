struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<f32>,
    d: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, false);

var<private> global1: Struct_3;

var<private> global2: Struct_2 = Struct_2(true, Struct_1(-1i, 1000f, vec4<f32>(403f, -142f, -595f, -193f), -100f), vec4<i32>(-1i, 0i, -1973i, 26781i));

var<private> global3: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(false, Struct_1(-13762i, -684f, vec4<f32>(-970f, 129f, 231f, 302f), -1314f), vec4<i32>(40018i, 45377i, 0i, 54877i)), Struct_2(true, Struct_1(40989i, 202f, vec4<f32>(-156f, 945f, -189f, -612f), 831f), vec4<i32>(9297i, i32(-2147483648), -29966i, 2147483647i)), Struct_2(true, Struct_1(-1i, -326f, vec4<f32>(1675f, 195f, 1006f, 1200f), 1000f), vec4<i32>(0i, 0i, 1i, -31793i)), Struct_2(false, Struct_1(19995i, 805f, vec4<f32>(-1000f, 748f, 1068f, -1494f), 1000f), vec4<i32>(51686i, i32(-2147483648), 2147483647i, 4779i)), Struct_2(true, Struct_1(0i, 1383f, vec4<f32>(852f, 1057f, -1539f, 1224f), 637f), vec4<i32>(1i, 2147483647i, 2147483647i, 1i)), Struct_2(true, Struct_1(18918i, -862f, vec4<f32>(-1347f, -145f, -934f, 367f), -345f), vec4<i32>(-43287i, i32(-2147483648), 4602i, -8255i)), Struct_2(true, Struct_1(1i, 1365f, vec4<f32>(-1338f, -1153f, -167f, -1319f), 482f), vec4<i32>(-3767i, 0i, 4979i, 27356i)), Struct_2(true, Struct_1(2147483647i, 429f, vec4<f32>(1720f, 210f, 394f, -335f), -561f), vec4<i32>(-1045i, 0i, 15084i, 1056i)), Struct_2(true, Struct_1(-1i, 1661f, vec4<f32>(688f, -1900f, 640f, 2831f), -1155f), vec4<i32>(i32(-2147483648), 4563i, -41684i, 0i)), Struct_2(true, Struct_1(1i, -1986f, vec4<f32>(-721f, 1017f, 486f, 152f), -1000f), vec4<i32>(-30182i, -22117i, -17530i, -1i)), Struct_2(true, Struct_1(-22819i, -1000f, vec4<f32>(1695f, 817f, 1307f, -1241f), 1320f), vec4<i32>(-39577i, -59449i, 12575i, 1i)));

var<private> global4: vec2<u32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: i32, arg_3: vec4<bool>) -> bool {
    var var_0 = arg_0.a.b;
    var var_1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b))), var_0.c.x, arg_0.b.b.c.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global2.b.d, arg_0.a.b.c.x, _wgslsmith_f_op_f32(step(arg_0.b.b.c.x, global2.b.d))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1257f, global1.b.b.d, -1392f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.b.b.c.zxz) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.a.b.c.zxz)))), !(!(!(!arg_3.wzx)))));
    global1 = Struct_3(arg_0.b, global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~_wgslsmith_mult_u32(~global4.x, _wgslsmith_dot_vec2_u32(vec2<u32>(global4.x, global4.x), vec2<u32>(global4.x, global4.x))), firstLeadingBit(global4.x)), 11u)]);
    let var_2 = arg_0.a.b.c;
    global4 = ~abs(~vec2<u32>(global4.x, global4.x));
    return !any(!arg_3) & global1.a.a;
}

fn func_2() -> vec4<bool> {
    let var_0 = Struct_2(global2.a != !(false | !global2.a), global1.a.b, global1.b.c);
    return !vec4<bool>(false, _wgslsmith_f_op_f32(-924f - 755f) <= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b.b, var_0.b.b)), any(vec3<bool>(false | global1.b.a, true, func_3(Struct_3(global3[_wgslsmith_index_u32(global4.x, 11u)], global1.b), 619f, u_input.a.x, vec4<bool>(global1.b.a, false, false, false)))), !global2.a);
}

fn func_1(arg_0: vec2<u32>) -> Struct_2 {
    var var_0 = select(!func_2(), !func_2(), vec4<bool>(true, true, true, true));
    var var_1 = true;
    var var_2 = vec2<bool>(select(global1.a.a, !(!func_3(Struct_3(global3[_wgslsmith_index_u32(58522u, 11u)], Struct_2(true, Struct_1(2147483647i, -141f, global1.a.b.c, global2.b.b), vec4<i32>(u_input.b.x, -165i, -28374i, u_input.a.x))), -695f, -1i, vec4<bool>(global0.x, true, global1.b.a, global0.x))), true), !any(vec3<bool>(all(vec2<bool>(global0.x, false)), all(var_0.xzy), true)));
    let var_3 = select(_wgslsmith_sub_vec2_u32(arg_0, vec2<u32>(~(~global4.x), _wgslsmith_mod_u32(0u, arg_0.x) ^ ~0u)), _wgslsmith_add_vec2_u32(~(~arg_0 | arg_0), arg_0), global2.a);
    var var_4 = ~0u;
    return global1.b;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec2<bool>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-arg_1.b.c.ywx);
    let var_1 = _wgslsmith_f_op_f32(abs(134f));
    let var_2 = Struct_3(Struct_2(true, Struct_1(global2.c.x, -595f, _wgslsmith_f_op_vec4_f32(-global2.b.c), func_1(vec2<u32>(0u, 1732u) >> (vec2<u32>(global4.x, 4294967295u) % vec2<u32>(32u))).b.c.x), global2.c), func_1(firstLeadingBit(~vec2<u32>(global4.x, global4.x))));
    var var_3 = 805f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * _wgslsmith_div_f32(-370f, -962f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-903f + global1.a.b.b) + _wgslsmith_f_op_f32(step(-1010f, -999f)))));
    var var_4 = ~(vec4<u32>(~89354u, firstLeadingBit(39664u), ~0u, global4.x) | ~vec4<u32>(~global4.x, global4.x, global4.x & global4.x, ~global4.x));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_4(reverseBits(_wgslsmith_div_vec2_i32(~(u_input.a.zx << (vec2<u32>(global4.x, 111364u) % vec2<u32>(32u))), vec2<i32>(_wgslsmith_clamp_i32(global1.b.c.x, -34865i, u_input.a.x), abs(global1.b.b.a)))), func_1(vec2<u32>(~12809u, 0u)), !vec2<bool>(global2.a, func_2().x));
    global4 = min(firstLeadingBit(~vec2<u32>(5004u, 1u) & _wgslsmith_mod_vec2_u32(vec2<u32>(global4.x, 887u), vec2<u32>(global4.x, global4.x))) >> (~_wgslsmith_add_vec2_u32(min(vec2<u32>(0u, 41733u), vec2<u32>(84467u, global4.x)), vec2<u32>(global4.x, global4.x) | vec2<u32>(global4.x, global4.x)) % vec2<u32>(32u)), firstTrailingBit(_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(global4.x, global4.x), vec2<u32>(global4.x, 42666u)), ~vec2<u32>(1510u, 9082u)), vec2<u32>(_wgslsmith_div_u32(global4.x, 0u), ~global4.x))));
    let var_0 = global2.c.x;
    var var_1 = select(vec3<bool>(true, false, !global0.x), !vec3<bool>(any(func_2().zy), true, func_3(Struct_3(global3[_wgslsmith_index_u32(global4.x, 11u)], Struct_2(global1.b.a, global1.b.b, global2.c)), func_4(vec2<i32>(global2.b.a, global1.b.b.a), global3[_wgslsmith_index_u32(0u, 11u)], vec2<bool>(false, global0.x)).b.b.b, _wgslsmith_sub_i32(-2147483647i, u_input.b.x), !vec4<bool>(false, global2.a, false, global0.x))), false || global1.a.a);
    var var_2 = select(select(func_2().zz, vec2<bool>(!(!global0.x), !(true & global2.a)), select(global0.x, !global2.a, false)), global0.zx, false);
    let var_3 = u_input.a.x;
    var_1 = vec3<bool>(select(_wgslsmith_clamp_i32(-2147483647i, -1i, _wgslsmith_div_i32(11078i, global2.c.x)) >= _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(78630i, var_3, global1.a.b.a, 1i)), global2.c), false, !global2.a), func_1(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(9199u, global4.x), vec2<u32>(global4.x, 81630u)), _wgslsmith_clamp_u32(global4.x, 1u, global4.x)))).a, false);
    let x = u_input.a;
    s_output = StorageBuffer(abs(56475u));
}

