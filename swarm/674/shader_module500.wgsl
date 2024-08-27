struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: f32,
    c: vec3<i32>,
    d: Struct_3,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-1i, 1i, 1i, 0i);

var<private> global1: array<f32, 30>;

var<private> global2: array<Struct_2, 12>;

var<private> global3: bool;

var<private> global4: u32;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec3<i32> {
    var var_0 = all(select(vec4<bool>(true, global0.x < firstTrailingBit(1i), select(true, false, true) || (4006i <= u_input.e), !(u_input.d >= u_input.c)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)));
    let var_1 = _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(~(~49823u), ~10943u | ~u_input.d), ~countOneBits(1u)), countOneBits(~(~vec2<u32>(u_input.c, 8936u))) & ~(~firstLeadingBit(vec2<u32>(1u, 135117u))));
    var var_2 = Struct_4(any(vec2<bool>(true, false)) & all(select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), true), vec3<bool>(true, false, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false)))), _wgslsmith_add_i32(-32901i, ~(-54927i)), select(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true)), Struct_1(abs(vec2<u32>(_wgslsmith_mod_u32(var_1.x, 4294967295u), var_1.x ^ 4294967295u))));
    let var_3 = global2[_wgslsmith_index_u32(15474u, 12u)];
    var var_4 = abs(select(~select(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 64081u, var_1.x, var_1.x), vec4<u32>(0u, var_1.x, u_input.d, var_2.d.a.x)), ~vec4<u32>(4026u, var_1.x, var_1.x, 1u), select(vec4<bool>(var_2.a, var_2.c.x, false, false), vec4<bool>(var_2.a, var_2.a, var_2.a, false), var_2.c.x)), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.c, 0u, u_input.d, 0u), select(vec4<u32>(47783u, var_1.x, 4294967295u, var_1.x), vec4<u32>(u_input.d, 1u, 0u, 26843u), var_2.a)) ^ vec4<u32>(4294967295u, _wgslsmith_sub_u32(u_input.d, 14220u), u_input.d, var_2.d.a.x), vec4<bool>(any(!vec4<bool>(false, var_2.c.x, var_2.c.x, false)), false, any(vec3<bool>(true, true, true)), 1970f >= global1[_wgslsmith_index_u32(countOneBits(39981u), 30u)])));
    return _wgslsmith_mod_vec3_i32(-firstLeadingBit(vec3<i32>(~39682i, var_3.a.x, ~(-1i))), vec3<i32>(u_input.e, ~2147483647i, _wgslsmith_dot_vec2_i32(global0.zw, vec2<i32>(2147483647i, global0.x) & vec2<i32>(u_input.a, var_3.a.x))) | ~vec3<i32>(1i, 1i, min(u_input.a, global0.x)));
}

fn func_2() -> i32 {
    global2 = array<Struct_2, 12>();
    var var_0 = u_input.d;
    var var_1 = Struct_2(global0.xzw);
    var var_2 = _wgslsmith_mod_u32(u_input.c, ~u_input.d) >> (46226u % 32u);
    let var_3 = Struct_5(Struct_3(Struct_2(func_3())), 661f, abs(firstTrailingBit(vec3<i32>(_wgslsmith_mod_i32(var_1.a.x, var_1.a.x), firstTrailingBit(var_1.a.x), -53092i))), Struct_3(Struct_2(abs(~vec3<i32>(0i, -30900i, 6440i)))), vec4<i32>(func_3().x, ~_wgslsmith_clamp_i32(-var_1.a.x, -2147483647i & u_input.a, u_input.a), u_input.e, 2147483647i));
    return 0i;
}

fn func_1(arg_0: Struct_3) -> Struct_3 {
    var var_0 = any(select(vec4<bool>(false, true, all(vec2<bool>(true, true)), true), vec4<bool>(global1[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 30u)] <= 1042f, 36054i != func_2(), true, false), true & all(vec4<bool>(false, false, false, true))));
    global2 = array<Struct_2, 12>();
    let var_1 = arg_0.a;
    var var_2 = abs(select(_wgslsmith_add_u32(4294967295u, u_input.c), u_input.c, select(any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false))), false, true)));
    var var_3 = Struct_4(!(!(!all(vec3<bool>(true, false, true)))), arg_0.a.a.x, select(vec2<bool>((u_input.c ^ 0u) < 64134u, false), vec2<bool>(all(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true))), !any(vec4<bool>(false, false, true, true))), false), Struct_1(firstLeadingBit(vec2<u32>(_wgslsmith_clamp_u32(0u, 1u, 0u), 4294967295u))));
    return Struct_3(Struct_2(-_wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(var_1.a, arg_0.a.a, global0.wyz), global0.xzy)));
}

fn func_4(arg_0: Struct_3) -> u32 {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(1975u, 11005u), min(_wgslsmith_clamp_u32(4294967295u, 1951u, 31203u), ~u_input.d), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, 15584u, u_input.c), vec3<u32>(1u, 12902u, u_input.c)), vec3<u32>(1u, u_input.c, u_input.d) | vec3<u32>(1u, u_input.c, u_input.c)), _wgslsmith_div_u32(1u, ~u_input.c)) >> (countOneBits(~vec4<u32>(u_input.d, 0u, 0u, 35578u) & (vec4<u32>(13309u, u_input.c, u_input.d, 55660u) & vec4<u32>(u_input.d, u_input.c, u_input.d, u_input.c))) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, _wgslsmith_dot_vec2_u32(~vec2<u32>(88921u, u_input.c), ~vec2<u32>(u_input.d, u_input.d)), _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(4294967295u, u_input.d, u_input.c)), abs(vec3<u32>(u_input.d, u_input.d, u_input.d))), ~(u_input.c ^ 1u)), ~((vec4<u32>(49721u, u_input.c, 4294967295u, u_input.c) << (vec4<u32>(1u, 4294967295u, u_input.c, u_input.c) % vec4<u32>(32u))) | vec4<u32>(181u, u_input.c, 4294967295u, u_input.d))));
    var_0 = Struct_3(Struct_2(vec3<i32>(-70347i, -2147483647i, i32(-1i) * -2147483647i)));
    return ~u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec2<u32>(_wgslsmith_add_u32(~(~u_input.d), func_4(func_1(Struct_3(global2[_wgslsmith_index_u32(u_input.c, 12u)])))), 23055u));
    let var_1 = Struct_4(true, ~abs(u_input.e), !select(vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(true, true, false, false)), false), !(6744u <= var_0.a.x)), Struct_1(~var_0.a));
    let var_2 = any(vec4<bool>(!var_1.a, var_1.c.x, true, var_1.a));
    global4 = u_input.d;
    global1 = array<f32, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(global1[_wgslsmith_index_u32(abs(u_input.d), 30u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_div_u32(var_1.d.a.x, ~1u), 30u)]), 1000f), max(-vec3<i32>(-43021i, var_1.b, -63792i), vec3<i32>(-firstLeadingBit(-49519i), u_input.a, u_input.e)));
}

