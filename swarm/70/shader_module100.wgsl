struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
    d: vec4<i32>,
    e: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: vec4<f32>,
    d: Struct_2,
    e: vec2<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<f32>,
    c: i32,
}

struct Struct_5 {
    a: i32,
    b: vec2<u32>,
    c: f32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(1u, 4294967295u);

var<private> global1: vec4<f32>;

var<private> global2: array<vec3<bool>, 24>;

var<private> global3: u32;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: vec4<i32>) -> Struct_4 {
    return Struct_4(Struct_3(!select(vec2<bool>(true, arg_0), !vec2<bool>(arg_1.a, true), vec2<bool>(true, true)), u_input.b.yx, vec4<f32>(765f, _wgslsmith_f_op_f32(global1.x * -240f), _wgslsmith_f_op_f32(trunc(global1.x)), 788f), Struct_2(arg_1, arg_1, _wgslsmith_f_op_vec2_f32(-global1.ww), arg_2, _wgslsmith_add_i32(abs(1i), ~arg_2.x)), global1.zw), global1.wyz, arg_2.x);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)))))));
    let var_1 = true;
    var_0 = global1.x;
    var var_2 = arg_0;
    let var_3 = func_2(1i > var_2.c, var_2.a.d.b, ~arg_0.a.d.d | vec4<i32>(-(40065i & var_2.a.d.b.b), _wgslsmith_sub_i32(1i, arg_1.d.b.b) >> (arg_0.a.b.x % 32u), arg_1.d.a.b, _wgslsmith_div_i32(-28152i, var_2.c))).a;
    return _wgslsmith_add_u32(var_3.b.x, abs(4294967295u));
}

fn func_1() -> Struct_4 {
    let var_0 = ~vec4<u32>(global0.x, _wgslsmith_mult_u32((u_input.a >> (global0.x % 32u)) ^ 47064u, func_3(func_2(true, Struct_1(true, 1i), vec4<i32>(-46950i, -17681i, 4157i, 1i)), func_2(true, Struct_1(true, 29816i), vec4<i32>(-45291i, 2147483647i, -1i, -2147483647i)).a)), ~8068u, global0.x);
    var var_1 = select(~vec4<u32>(abs(~u_input.b.x), 1u, 4294967295u, firstLeadingBit(abs(67108u))), ~var_0, all(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(false, false)), vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true))))));
    var_1 = var_0 >> (~_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.b << (vec4<u32>(var_1.x, u_input.a, global0.x, 1u) % vec4<u32>(32u)), ~vec4<u32>(global0.x, var_1.x, 3577u, 33531u), var_0), ~u_input.b << (vec4<u32>(global0.x, 1u, 1u, 19537u) % vec4<u32>(32u))) % vec4<u32>(32u));
    global1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(func_2(false, Struct_1(false, -2147483647i), vec4<i32>(44510i, 5966i, 15959i, 2147483647i)).b.x, 458f))), 493f, 1513f, 1f));
    var var_2 = func_2(any(vec4<bool>(true, any(func_2(false, Struct_1(true, 35743i), vec4<i32>(0i, -29286i, -1i, 35026i)).a.a), all(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), false)), all(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), true)))), Struct_1(true, _wgslsmith_mult_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 0i, -1i, 0i), vec4<i32>(-1i, 33539i, 1i, 28641i)), -1i)), ~vec4<i32>(countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(32150i, 0i), vec2<i32>(-2147483647i, 1i))), -11235i, abs(_wgslsmith_mod_i32(0i, -45762i)), _wgslsmith_div_i32(10837i, i32(-1i) * -2147483647i))).a.a.x;
    return func_2(any(select(vec4<bool>(false, true, true, func_2(false, Struct_1(true, -12707i), vec4<i32>(30145i, 0i, -1i, -2147483647i)).a.d.a.a), vec4<bool>(u_input.b.x > var_1.x, true, true, any(vec4<bool>(false, true, true, true))), false)), func_2(!(!any(vec2<bool>(true, false))), func_2(select(true, false, true), func_2(any(global2[_wgslsmith_index_u32(global0.x, 24u)]), Struct_1(true, 18699i), firstTrailingBit(vec4<i32>(1i, 2147483647i, -2147483647i, -1i))).a.d.a, ~(-vec4<i32>(48509i, -1i, -2147483647i, -2147483647i))).a.d.b, _wgslsmith_mod_vec4_i32(-vec4<i32>(1i, -23990i, -43041i, -1i), (vec4<i32>(-2147483647i, 2147483647i, -7342i, 12563i) << (vec4<u32>(u_input.a, u_input.a, 4294967295u, 32305u) % vec4<u32>(32u))) | vec4<i32>(50928i, -60221i, -39323i, -532i))).a.d.a, -vec4<i32>(_wgslsmith_dot_vec2_i32(func_2(true, Struct_1(false, 13191i), vec4<i32>(-29414i, -19637i, 1i, 0i)).a.d.d.zw, -vec2<i32>(3231i, 9610i)), ~298i, _wgslsmith_sub_i32(-1i, _wgslsmith_sub_i32(0i, 22011i)), select(abs(30000i), -10809i << (1u % 32u), any(vec2<bool>(false, true)))));
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: Struct_4, arg_3: vec4<i32>) -> Struct_4 {
    global2 = array<vec3<bool>, 24>();
    global0 = ~vec2<u32>(11740u, ~(select(4294967295u, u_input.b.x, arg_1.a.d.a.a) | _wgslsmith_add_u32(5812u, u_input.b.x)));
    var var_0 = u_input.a;
    global2 = array<vec3<bool>, 24>();
    var_0 = _wgslsmith_add_u32(51024u, arg_0);
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(4294967295u, func_1(), func_2(!all(vec2<bool>(true, true)), Struct_1(_wgslsmith_f_op_f32(global1.x * global1.x) >= _wgslsmith_f_op_f32(max(857f, 420f)), _wgslsmith_mod_i32(0i, 1i)), vec4<i32>(~(-1i << (0u % 32u)), -abs(78478i), firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 2147483647i), vec2<i32>(27173i, 1i))), countOneBits(0i))), ~(vec4<i32>(1i, 1i, 1i, 1i) >> (firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, 64000u, 95222u, global0.x), vec4<u32>(39974u, 37960u, 33042u, 43427u))) % vec4<u32>(32u))));
    let var_1 = select(!var_0.a.a, !select(vec2<bool>(true, !var_0.a.a.x), var_0.a.a, false), var_0.a.a);
    let var_2 = !any(!func_2(var_0.c > var_0.a.d.d.x, func_2(var_1.x, Struct_1(var_0.a.a.x, var_0.c), var_0.a.d.d).a.d.a, -vec4<i32>(var_0.c, var_0.c, var_0.c, 1i)).a.a);
    let var_3 = var_0.c;
    let var_4 = var_0.a.d.d;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.xw);
}

