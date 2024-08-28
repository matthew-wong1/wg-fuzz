struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: vec4<bool>,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_4,
    c: vec3<u32>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<f32>(-1000f, -706f, 406f));

var<private> global1: Struct_4;

var<private> global2: array<i32, 2> = array<i32, 2>(i32(-2147483648), 1i);

var<private> global3: f32;

var<private> global4: array<Struct_4, 8>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3() -> bool {
    var var_0 = Struct_4(_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(-vec3<i32>(global1.a.x, -39159i, 0i), vec3<i32>(1i, -56052i, 1i)), -(~global1.a)), reverseBits(vec3<i32>(_wgslsmith_div_i32(global1.a.x, global2[_wgslsmith_index_u32(u_input.a.x, 2u)]), ~global2[_wgslsmith_index_u32(0u, 2u)], ~global1.a.x))));
    global1 = Struct_4(~firstTrailingBit(vec3<i32>(_wgslsmith_clamp_i32(27349i, global2[_wgslsmith_index_u32(20273u, 2u)], 44816i), -global2[_wgslsmith_index_u32(66616u, 2u)], ~0i)));
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1080f) * 1308f);
    let var_1 = select(!vec2<bool>(all(vec4<bool>(true, true, true, true)), true), select(vec2<bool>(true, true), select(select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, all(vec3<bool>(true, false, true))), vec2<bool>(true, true)), false), vec2<bool>(false, false));
    var_0 = global4[_wgslsmith_index_u32(69539u, 8u)];
    return true;
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: u32) -> Struct_4 {
    let var_0 = u_input.a;
    let var_1 = ~max(_wgslsmith_sub_u32(firstTrailingBit(u_input.a.x), ~4294967295u), 84483u);
    let var_2 = Struct_2(all(select(vec2<bool>(true, true), select(vec2<bool>(arg_0, arg_1.a), arg_1.c.xx, true), func_3())), _wgslsmith_dot_vec4_u32(min(min(arg_1.d << (arg_1.d % vec4<u32>(32u)), ~vec4<u32>(var_1, 1u, arg_2, 43614u)), vec4<u32>(abs(58079u), u_input.a.x, 9038u, 4294967295u)), ~select(vec4<u32>(arg_2, 0u, 1u, arg_1.d.x), _wgslsmith_mod_vec4_u32(arg_1.d, vec4<u32>(var_1, arg_1.d.x, 4294967295u, 0u)), arg_1.c)), select(arg_1.c, !select(arg_1.c, vec4<bool>(false, true, arg_1.c.x, arg_1.a), vec4<bool>(false, arg_1.c.x, false, arg_0)), !vec4<bool>(true, arg_1.d.x == 4294967295u, arg_0 & true, arg_0)), arg_1.d, Struct_1(arg_1.e.a));
    var var_3 = vec2<bool>(true, !(-(~2147483647i) != _wgslsmith_mod_i32(_wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(2872u, 2u)], -19141i, -27047i), global2[_wgslsmith_index_u32(u_input.b.x, 2u)])));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 313f)));
    return global4[_wgslsmith_index_u32(var_2.d.x, 8u)];
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_4) -> Struct_4 {
    let var_0 = abs(global1.a.yx);
    let var_1 = Struct_3(-global1.a, global1.a.zx);
    let var_2 = global0.a;
    var var_3 = !(!(!select(select(vec4<bool>(arg_0.x, false, arg_0.x, true), vec4<bool>(true, false, false, false), arg_0.x), vec4<bool>(false, true, true, true), select(vec4<bool>(true, false, true, arg_0.x), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), false))));
    var var_4 = var_1;
    return func_2(!any(vec2<bool>(arg_0.x, !arg_0.x)), Struct_2(all(var_3.yxz), 0u, !(!(!vec4<bool>(true, false, var_3.x, var_3.x))), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 1u, u_input.b.x, u_input.b.x << (u_input.b.x % 32u)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, u_input.b.x, 4294967295u, u_input.a.x) >> (vec4<u32>(u_input.b.x, 1u, u_input.b.x, u_input.a.x) % vec4<u32>(32u)), ~vec4<u32>(15397u, 4294967295u, u_input.a.x, 1u))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.a) * global0.a))), u_input.b.x);
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_5) -> Struct_4 {
    var var_0 = arg_0.x & true;
    global3 = arg_1.d;
    let var_1 = arg_1.b.a.xx;
    let var_2 = vec2<i32>(~26095i, -18120i);
    global2 = array<i32, 2>();
    return func_2(true && arg_0.x, Struct_2(true, ~arg_1.c.x >> (arg_1.c.x % 32u), select(vec4<bool>(!arg_0.x, all(vec3<bool>(arg_0.x, arg_0.x, false)), true, any(vec2<bool>(false, arg_0.x))), vec4<bool>(true, false, false, arg_0.x), true), firstTrailingBit(reverseBits(vec4<u32>(arg_1.c.x, u_input.a.x, 9732u, u_input.a.x)) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(12419u, 26535u, 1u, u_input.b.x), vec4<u32>(8500u, 23969u, 4195u, 9300u), vec4<u32>(arg_1.c.x, 62984u, 0u, u_input.b.x)) % vec4<u32>(32u))), Struct_1(_wgslsmith_f_op_vec3_f32(-global0.a))), arg_1.c.x);
}

fn func_1() -> Struct_4 {
    global2 = array<i32, 2>();
    var var_0 = Struct_3(_wgslsmith_div_vec3_i32(-vec3<i32>(0i, abs(global2[_wgslsmith_index_u32(u_input.a.x, 2u)]), ~2147483647i), reverseBits(~(~global1.a))), vec2<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 2u)], global1.a.x));
    global3 = global0.a.x;
    var var_1 = -_wgslsmith_add_i32(global1.a.x, -24491i) ^ (global1.a.x & -_wgslsmith_add_i32(-14453i, ~1i));
    global1 = func_5(vec3<bool>(_wgslsmith_dot_vec2_u32(~u_input.b.zy, abs(u_input.a.xy)) >= min(0u, u_input.b.x), ((17894i & global1.a.x) >= -15562i) | true, any(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), true))), Struct_5(func_4(select(vec3<bool>(false, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), all(vec4<bool>(true, true, true, true))), func_2(false, Struct_2(false, u_input.a.x, vec4<bool>(true, false, false, false), vec4<u32>(4294967295u, u_input.b.x, 0u, u_input.b.x), Struct_1(global0.a)), 30758u)), func_4(vec3<bool>(true, true, true), func_4(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), func_4(vec3<bool>(true, true, true), Struct_4(vec3<i32>(var_0.b.x, global2[_wgslsmith_index_u32(u_input.a.x, 2u)], var_0.a.x))))), u_input.a, 118f));
    return Struct_4(~(~_wgslsmith_div_vec3_i32(countOneBits(global1.a), min(vec3<i32>(19230i, global1.a.x, global1.a.x), var_0.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(global4[_wgslsmith_index_u32(u_input.b.x, 8u)], func_1(), u_input.a, _wgslsmith_f_op_f32(step(-2074f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x - -294f)) * -238f))));
    global2 = array<i32, 2>();
    let var_1 = func_1();
    let var_2 = Struct_3(_wgslsmith_mod_vec3_i32(reverseBits(-vec3<i32>(var_0.b.a.x, 15083i, 0i)), vec3<i32>(var_0.b.a.x, func_4(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), Struct_4(vec3<i32>(-24601i, -17708i, var_1.a.x))).a.x, 1i)), var_1.a.xz);
    let var_3 = func_5(vec3<bool>(all(vec4<bool>(true, true, true, true)) && !all(vec2<bool>(false, true)), all(vec4<bool>(true, all(vec3<bool>(true, false, true)), u_input.b.x > 36551u, false)), true), Struct_5(var_0.b, var_0.a, _wgslsmith_sub_vec3_u32(var_0.c, firstTrailingBit(~var_0.c)), global0.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(global0.a);
}

