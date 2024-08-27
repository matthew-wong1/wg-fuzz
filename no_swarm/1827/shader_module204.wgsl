struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<bool>,
    c: i32,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 12>;

var<private> global1: f32 = 576f;

var<private> global2: Struct_1;

var<private> global3: array<i32, 19>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> vec3<u32> {
    global2 = Struct_1(global2.b.x, vec3<f32>(402f, global2.b.x, 1000f));
    let var_0 = 1u;
    let var_1 = Struct_3(!select(any(vec4<bool>(true, true, true, true)), true, true), select(vec4<bool>(true, true, any(vec3<bool>(true, true, true)), false), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), false), any(vec4<bool>(true, false, true, true))), vec4<bool>(!any(vec3<bool>(false, false, true)), true, true, true)), global3[_wgslsmith_index_u32(var_0, 19u)], var_0, Struct_2(~(vec2<u32>(1u, 39429u) >> (abs(vec2<u32>(var_0, var_0)) % vec2<u32>(32u))), true | any(vec3<bool>(true, true, true)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * global2.b.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(535f, 730f, 364f)) * _wgslsmith_f_op_vec3_f32(global2.b * global2.b))), all(vec3<bool>(true, true, true)) || any(vec3<bool>(true, false, true)), Struct_1(-481f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-708f, global2.b.x, -1177f))) - global2.b))));
    let var_2 = var_1;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-672f * _wgslsmith_f_op_f32(ceil(-1492f))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_2.e.e.a - -803f), var_1.e.c.b.x, global2.b.x), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(global2.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(512f, var_2.e.c.a, var_1.e.e.b.x)) * vec3<f32>(global2.a, global2.b.x, var_2.e.e.a))))));
    return ~(~vec3<u32>(4294967295u, 0u << (~var_0 % 32u), reverseBits(var_1.e.a.x)));
}

fn func_2(arg_0: u32, arg_1: vec3<bool>) -> Struct_3 {
    var var_0 = global0[_wgslsmith_index_u32(~max(max(~70991u, countOneBits(arg_0)) | _wgslsmith_dot_vec3_u32(func_3(), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 36408u), vec3<u32>(u_input.a, 0u, arg_0))), _wgslsmith_add_u32(4294967295u, ~_wgslsmith_sub_u32(arg_0, u_input.a))), 12u)];
    global2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2.b.x * 1069f), _wgslsmith_f_op_f32(-434f * -599f), select(arg_1.x, false, true)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(158f * var_0.e.a), _wgslsmith_f_op_f32(f32(-1f) * -1884f), false)))), _wgslsmith_f_op_vec3_f32(-var_0.c.b));
    var var_1 = _wgslsmith_add_u32(1u, 0u);
    return Struct_3(false, !select(!vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x), select(vec4<bool>(false, arg_1.x, false, arg_1.x), select(vec4<bool>(arg_1.x, false, var_0.b, arg_1.x), vec4<bool>(false, var_0.b, true, true), vec4<bool>(arg_1.x, arg_1.x, var_0.b, arg_1.x)), var_0.d), vec4<bool>(false, true, !var_0.b, arg_1.x & false)), firstLeadingBit(-47920i), firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.x | u_input.a, ~4429u, 4294967295u, ~var_0.a.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0, arg_0, var_0.a.x, arg_0), ~vec4<u32>(1u, arg_0, 5882u, 4294967295u), vec4<u32>(u_input.a, var_0.a.x, 0u, u_input.a)))), global0[_wgslsmith_index_u32(4294967295u, 12u)]);
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: Struct_3) -> Struct_1 {
    global2 = Struct_1(_wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(min(global2.b.x, _wgslsmith_f_op_f32(sign(-1574f))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-arg_2.e.e.b))));
    global2 = Struct_1(arg_2.e.e.a, global2.b);
    var var_0 = _wgslsmith_sub_vec2_u32(arg_2.e.a, _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, ~(~4294967295u)), arg_2.e.a & abs(vec2<u32>(21546u, 22762u))));
    var var_1 = arg_2.e;
    var var_2 = reverseBits(-10654i);
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(ceil(var_1.e.a))) + _wgslsmith_f_op_f32(ceil(-531f)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -496f), -1917f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2.a)))));
}

fn func_5(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: Struct_1) -> vec2<i32> {
    var var_0 = 8150u;
    let var_1 = _wgslsmith_clamp_vec4_u32(vec4<u32>(~1u, 65786u, _wgslsmith_div_u32(_wgslsmith_add_u32(arg_0, 64453u), arg_0), _wgslsmith_div_u32(~4294967295u, ~5191u)), vec4<u32>(28843u, _wgslsmith_mult_u32(1u, arg_2.e.a.x), 10985u, arg_0) << (~countOneBits(vec4<u32>(27048u, arg_0, arg_2.e.a.x, 0u)) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(~vec4<u32>(arg_0, arg_0, arg_0, 34832u), abs(vec4<u32>(91778u, arg_2.d, arg_0, u_input.a)))) & _wgslsmith_mult_vec4_u32(vec4<u32>(firstTrailingBit(7365u), ~firstTrailingBit(1u), ~9214u, u_input.a | u_input.a), ~select(_wgslsmith_mult_vec4_u32(vec4<u32>(44433u, u_input.a, 7729u, 4294967295u), vec4<u32>(u_input.a, arg_0, u_input.a, u_input.a)), vec4<u32>(arg_0, 65437u, 21769u, arg_2.e.a.x) >> (vec4<u32>(42858u, u_input.a, u_input.a, arg_0) % vec4<u32>(32u)), vec4<bool>(false, arg_1.x, false, true)));
    let var_2 = ~(abs(~(~vec4<i32>(1i, 1i, -2147483647i, -9521i))) ^ vec4<i32>(~(-11825i) >> (firstTrailingBit(arg_2.d) % 32u), -2147483647i, 13414i, ~15903i));
    let var_3 = vec3<bool>(1i >= func_2(4294967295u, select(arg_2.b.ywx, select(vec3<bool>(true, true, arg_1.x), arg_2.b.wzy, vec3<bool>(arg_2.e.b, arg_2.e.b, true)), arg_2.b.xyw)).c, ~0u <= firstLeadingBit(u_input.a), arg_1.x);
    var var_4 = Struct_2(func_3().zz << (_wgslsmith_sub_vec2_u32(var_1.xz, countOneBits(vec2<u32>(81437u, 0u))) % vec2<u32>(32u)), !all(vec3<bool>(!arg_1.x, all(vec2<bool>(var_3.x, arg_2.b.x)), var_3.x != arg_1.x)), func_4(2147483647i, _wgslsmith_f_op_f32(step(-587f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_2.e.c.b.x + arg_3.b.x))))), arg_2), arg_1.x, func_4(i32(-1i) * -2238i, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global2.a + -964f), _wgslsmith_f_op_f32(step(arg_3.a, 1471f)))), Struct_3((global3[_wgslsmith_index_u32(23096u, 19u)] != var_2.x) & (-2147483647i > global3[_wgslsmith_index_u32(var_1.x, 19u)]), vec4<bool>(!var_3.x, arg_2.a & true, true, any(vec4<bool>(true, var_3.x, arg_1.x, arg_2.a))), 5845i, 4294967295u, Struct_2(vec2<u32>(arg_0, arg_0), true, arg_2.e.e, true, func_2(u_input.a, arg_2.b.ywy).e.c))));
    return _wgslsmith_div_vec2_i32(vec2<i32>(abs(1i) << (arg_0 % 32u), 28399i), vec2<i32>(arg_2.c, -2968i));
}

fn func_1(arg_0: Struct_3, arg_1: f32) -> bool {
    var var_0 = ~_wgslsmith_sub_u32(arg_0.d, u_input.a) & _wgslsmith_div_u32(4294967295u, u_input.a);
    global3 = array<i32, 19>();
    var_0 = ~(~_wgslsmith_div_u32(13113u, arg_0.d));
    var var_1 = -(func_5(65242u, !arg_0.b.wz, Struct_3(!arg_0.a, arg_0.b, global3[_wgslsmith_index_u32(~u_input.a, 19u)], _wgslsmith_div_u32(0u, u_input.a), Struct_2(arg_0.e.a, false, Struct_1(arg_1, global2.b), true, Struct_1(-305f, vec3<f32>(1386f, global2.b.x, -288f)))), func_4(global3[_wgslsmith_index_u32(u_input.a, 19u)], _wgslsmith_f_op_f32(f32(-1f) * -237f), func_2(67001u, vec3<bool>(arg_0.e.b, arg_0.e.d, true)))) << (arg_0.e.a % vec2<u32>(32u)));
    var var_2 = Struct_2(arg_0.e.a, arg_0.b.x, func_2(countOneBits(func_3().x >> (4294967295u % 32u)), arg_0.b.zxx).e.e, arg_0.b.x, arg_0.e.e);
    return var_2.d;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 524f;
    global0 = array<Struct_2, 12>();
    global0 = array<Struct_2, 12>();
    var var_0 = 45119u;
    global0 = array<Struct_2, 12>();
    let var_1 = !select(select(vec3<bool>(u_input.a < 80924u, true, func_1(Struct_3(true, vec4<bool>(true, false, true, false), global3[_wgslsmith_index_u32(4294967295u, 19u)], u_input.a, Struct_2(vec2<u32>(1u, 0u), true, Struct_1(global2.a, vec3<f32>(global2.b.x, global2.a, global2.b.x)), false, Struct_1(-261f, vec3<f32>(global2.b.x, 449f, -466f)))), 2538f)), vec3<bool>(all(vec4<bool>(false, false, true, true)), func_1(Struct_3(false, vec4<bool>(true, false, false, false), global3[_wgslsmith_index_u32(u_input.a, 19u)], 1u, global0[_wgslsmith_index_u32(u_input.a, 12u)]), global2.b.x), true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false))), true);
    global3 = array<i32, 19>();
    global0 = array<Struct_2, 12>();
    global2 = Struct_1(751f, _wgslsmith_f_op_vec3_f32(-global2.b));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(28605u, u_input.a, u_input.a, 0u) & _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, 16708u, 4294967295u), vec4<u32>(38116u, 44055u, u_input.a, 4294967295u)), vec4<u32>(u_input.a ^ 1u, u_input.a, ~1u, _wgslsmith_clamp_u32(u_input.a, 45206u, 27504u))), u_input.a), _wgslsmith_clamp_i32(min(global3[_wgslsmith_index_u32(u_input.a, 19u)], global3[_wgslsmith_index_u32(~reverseBits(u_input.a), 19u)]), global3[_wgslsmith_index_u32(0u << ((~u_input.a >> (min(u_input.a, 9944u) % 32u)) % 32u), 19u)], reverseBits(~global3[_wgslsmith_index_u32(u_input.a, 19u)]) & _wgslsmith_div_i32(firstLeadingBit(global3[_wgslsmith_index_u32(23041u, 19u)]), 29696i)), 2147483647i, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, global2.b.x, global2.b.x, -1126f))) * vec4<f32>(_wgslsmith_f_op_f32(-global2.b.x), _wgslsmith_f_op_f32(-global2.a), _wgslsmith_f_op_f32(-755f * global2.a), func_2(u_input.a, vec3<bool>(true, var_1.x, false)).e.e.b.x)), _wgslsmith_div_vec4_f32(vec4<f32>(global2.b.x, global2.b.x, -147f, 488f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1437f, global2.b.x, -1013f, -1133f))))))));
}

