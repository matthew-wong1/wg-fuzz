struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<bool>,
    d: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec2<i32>,
    d: Struct_2,
    e: f32,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
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

var<private> global0: array<vec3<f32>, 32>;

var<private> global1: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec2<i32>(-1i, 5551i), vec4<u32>(7432u, 15972u, 1337u, 55375u), vec4<bool>(false, true, false, false), true), Struct_1(vec2<i32>(0i, i32(-2147483648)), vec4<u32>(3940u, 61537u, 56686u, 27465u), vec4<bool>(false, false, true, false), false), Struct_1(vec2<i32>(1i, 2147483647i), vec4<u32>(0u, 30649u, 64406u, 4294967295u), vec4<bool>(false, false, false, false), true), Struct_1(vec2<i32>(3631i, 2147483647i), vec4<u32>(0u, 14515u, 4294967295u, 4294967295u), vec4<bool>(false, true, true, true), true), Struct_1(vec2<i32>(0i, 13513i), vec4<u32>(0u, 85988u, 23903u, 0u), vec4<bool>(false, false, false, true), false), Struct_1(vec2<i32>(7406i, i32(-2147483648)), vec4<u32>(1u, 4294967295u, 1u, 80571u), vec4<bool>(true, false, true, true), false), Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), vec4<u32>(1u, 6256u, 28177u, 4294967295u), vec4<bool>(true, true, true, true), false), Struct_1(vec2<i32>(0i, 15086i), vec4<u32>(28221u, 1u, 0u, 0u), vec4<bool>(true, true, true, true), true), Struct_1(vec2<i32>(37641i, 58114i), vec4<u32>(1u, 2438u, 9619u, 1473u), vec4<bool>(false, false, true, true), true), Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), vec4<u32>(28422u, 4294967295u, 0u, 0u), vec4<bool>(false, true, false, true), false), Struct_1(vec2<i32>(13998i, 59832i), vec4<u32>(53888u, 71439u, 3408u, 29004u), vec4<bool>(true, false, true, false), false), Struct_1(vec2<i32>(-28600i, 16416i), vec4<u32>(70925u, 1u, 51861u, 0u), vec4<bool>(false, false, true, true), true));

var<private> global2: Struct_3 = Struct_3(Struct_1(vec2<i32>(-1i, -31223i), vec4<u32>(24064u, 4294967295u, 10775u, 2358u), vec4<bool>(true, false, true, false), true), -1339f, vec2<i32>(-41137i, -2888i), Struct_2(vec4<bool>(true, false, false, true), true, Struct_1(vec2<i32>(i32(-2147483648), -69159i), vec4<u32>(16680u, 10713u, 1u, 38847u), vec4<bool>(true, false, false, true), true)), -745f);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<f32>) -> bool {
    var var_0 = Struct_3(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~u_input.a.x << (global2.d.c.b.x % 32u), 53731u) << (_wgslsmith_add_u32(1671u, 1u) % 32u), 12u)], _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-744f, global2.b), global2.b)))), ~arg_0.yx, global2.d, _wgslsmith_f_op_f32(abs(-1000f)));
    let var_1 = Struct_3(global2.d.c, 803f, vec2<i32>(arg_0.x, 1i) & reverseBits(_wgslsmith_mod_vec2_i32(-arg_0.zz, ~vec2<i32>(-11659i, -9263i))), global2.d, _wgslsmith_f_op_f32(-global2.e));
    var var_2 = var_0.a.a;
    return (1u < (~755u ^ min(~59401u, ~var_0.a.b.x))) != all(select(vec3<bool>(global2.d.b, all(vec4<bool>(false, var_1.a.d, true, var_1.d.c.d)), global2.d.a.x), var_0.d.c.c.ywy, select(select(vec3<bool>(global2.a.c.x, var_0.d.a.x, false), global2.d.a.zwx, var_0.a.c.wzw), !vec3<bool>(true, var_1.d.b, var_0.a.c.x), true)));
}

fn func_4(arg_0: Struct_4, arg_1: f32, arg_2: bool) -> vec4<u32> {
    global1 = array<Struct_1, 12>();
    global0 = array<vec3<f32>, 32>();
    global2 = Struct_3(global1[_wgslsmith_index_u32(global2.d.c.b.x, 12u)], arg_0.a.e, reverseBits(max(-vec2<i32>(global2.c.x, u_input.c), -vec2<i32>(u_input.c, -1i)) ^ -vec2<i32>(u_input.c, -10085i)), Struct_2(select(select(select(arg_0.a.d.c.c, vec4<bool>(true, false, false, true), vec4<bool>(true, true, arg_0.a.d.c.d, arg_0.a.d.a.x)), vec4<bool>(arg_0.a.a.d, arg_0.a.a.c.x, arg_0.a.d.b, false), !global2.a.c), vec4<bool>(u_input.c >= -70038i, 1i <= arg_0.a.c.x, global2.d.b, 1i <= u_input.c), vec4<bool>(any(vec2<bool>(true, false)), true, any(global2.d.a.yy), false)), func_3(-vec4<i32>(arg_0.a.a.a.x, u_input.c, 63460i, arg_0.a.d.c.a.x) >> (~vec4<u32>(arg_0.a.d.c.b.x, 1u, 0u, 2023u) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(arg_0.a.a.b.x, 32u)])), Struct_1(min(global2.c, vec2<i32>(global2.c.x, global2.a.a.x)), ~vec4<u32>(arg_0.a.d.c.b.x, u_input.a.x, global2.a.b.x, 4294967295u), global2.d.a, true)), -899f);
    global1 = array<Struct_1, 12>();
    var var_0 = min(-41568i, _wgslsmith_add_i32(2147483647i, -abs(i32(-1i) * -3136i)));
    return vec4<u32>(global2.d.c.b.x, ~global2.a.b.x ^ ~_wgslsmith_add_u32(_wgslsmith_clamp_u32(0u, global2.a.b.x, 0u), 4264u), _wgslsmith_dot_vec2_u32(~(~(~u_input.b.xy)), ~countOneBits(~global2.d.c.b.zx)), abs(1u));
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> i32 {
    let var_0 = global2.d;
    let var_1 = Struct_1(-(~(var_0.c.a | global2.a.a)) >> (u_input.b.zx % vec2<u32>(32u)), func_4(Struct_4(Struct_3(Struct_1(vec2<i32>(23282i, var_0.c.a.x), global2.a.b, var_0.a, arg_0.d), _wgslsmith_f_op_f32(-arg_1), -vec2<i32>(18372i, var_0.c.a.x), global2.d, _wgslsmith_f_op_f32(arg_1 + arg_1))), 469f, false | (func_3(vec4<i32>(global2.c.x, u_input.c, arg_0.a.x, arg_0.a.x), vec3<f32>(arg_1, global2.b, 239f)) | (arg_0.c.x || var_0.a.x))), select(!vec4<bool>(true && global2.d.a.x, arg_0.d, arg_0.d, true), arg_0.c, true), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-220f * _wgslsmith_div_f32(118f, global2.e)))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-916f + arg_1)) * -109f));
    let var_2 = Struct_4(Struct_3(global1[_wgslsmith_index_u32(arg_0.b.x, 12u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)) * _wgslsmith_f_op_f32(-global2.e)), vec2<i32>(_wgslsmith_add_i32(global2.a.a.x, -2147483647i), ~(~18108i)), global2.d, _wgslsmith_f_op_f32(trunc(475f))));
    global0 = array<vec3<f32>, 32>();
    let var_3 = var_2.a.d.b;
    return firstTrailingBit(_wgslsmith_clamp_i32(global2.c.x, ~var_1.a.x, var_0.c.a.x) >> (~_wgslsmith_dot_vec3_u32(var_0.c.b.wwz, var_2.a.a.b.zxw) % 32u));
}

fn func_1(arg_0: vec2<i32>, arg_1: i32, arg_2: vec2<bool>, arg_3: f32) -> Struct_3 {
    let var_0 = u_input.a;
    global1 = array<Struct_1, 12>();
    let var_1 = -vec2<i32>(_wgslsmith_mult_i32(global2.a.a.x, arg_0.x), firstTrailingBit(-1i));
    let var_2 = -var_1.x >= max(u_input.c, arg_0.x | ~func_2(global1[_wgslsmith_index_u32(86319u, 12u)], 1811f));
    global1 = array<Struct_1, 12>();
    return Struct_3(global2.d.c, global2.b, select((var_1 >> (vec2<u32>(1u, u_input.a.x) % vec2<u32>(32u))) | select(-vec2<i32>(arg_0.x, -26546i), -vec2<i32>(arg_0.x, arg_0.x), select(arg_2, global2.d.a.yy, false)), var_1, global2.d.a.xw), global2.d, _wgslsmith_f_op_f32(arg_3 + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -555f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global2.e * -772f))), false))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1, arg_2: bool, arg_3: Struct_4) -> Struct_4 {
    let var_0 = func_1(vec2<i32>(_wgslsmith_dot_vec2_i32(reverseBits(arg_0.d.c.a) ^ global2.c, _wgslsmith_mult_vec2_i32(vec2<i32>(1i, -2147483647i), arg_1.a) >> (~arg_0.a.b.ww % vec2<u32>(32u))), 1i), ~firstTrailingBit(1i), select(select(vec2<bool>(true, any(arg_1.c.xz)), vec2<bool>(func_3(vec4<i32>(u_input.d, -2147483647i, arg_3.a.c.x, 1i), global0[_wgslsmith_index_u32(0u, 32u)]), arg_0.a.c.x), true), !vec2<bool>(!arg_1.c.x, !arg_3.a.a.d), global2.a.c.zw), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.e) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2618f, -925f)))))).d.a;
    var var_1 = _wgslsmith_add_i32(arg_1.a.x, global2.d.c.a.x >> (~1u % 32u));
    var_1 = -18019i;
    var_1 = _wgslsmith_clamp_i32((_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_3.a.a.a.x, arg_3.a.c.x, arg_1.a.x), vec3<i32>(u_input.d, global2.c.x, global2.c.x)), vec3<i32>(19748i, -2147483647i, 36935i)) >> (countOneBits(_wgslsmith_clamp_u32(global2.a.b.x, global2.a.b.x, 11851u)) % 32u)) ^ -1i, -(i32(-1i) * -61946i), arg_0.d.c.a.x & -arg_1.a.x);
    var var_2 = u_input.d;
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1(select(vec2<i32>(-1i) * -global2.d.c.a, select(global2.c ^ vec2<i32>(-2292i, 0i), vec2<i32>(50511i, u_input.c), global2.a.c.ww), any(!vec2<bool>(global2.a.c.x, global2.d.a.x))), -(~u_input.c), vec2<bool>(!(global2.a.d | true), any(!vec4<bool>(global2.d.a.x, global2.a.c.x, global2.d.b, global2.a.d))), global2.e), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global2.d.c.b.x, 4294967295u, global2.a.b.x), 12u)], false, Struct_4(func_1(~vec2<i32>(u_input.c, 79055i) & -vec2<i32>(2147483647i, u_input.c), u_input.c, select(vec2<bool>(global2.a.c.x, global2.a.c.x), !vec2<bool>(global2.d.b, global2.d.c.d), all(vec3<bool>(global2.d.c.d, true, global2.d.a.x))), _wgslsmith_f_op_f32(global2.e + global2.e))));
    var var_1 = reverseBits(abs(vec4<i32>(-global2.a.a.x, 1i, -16686i, global2.a.a.x)));
    var var_2 = var_0.a.e;
    var_1 = min(vec4<i32>(-func_5(Struct_3(global2.d.c, -1000f, var_1.xx, global2.d, var_0.a.b), var_0.a.a, true, Struct_4(var_0.a)).a.d.c.a.x, 23554i, -715i, ~(-_wgslsmith_add_i32(u_input.c, var_1.x))), ~(~vec4<i32>(1i, u_input.c, ~global2.d.c.a.x, _wgslsmith_clamp_i32(-39969i, 31913i, global2.a.a.x))));
    let var_3 = ~var_1.yyx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-564f, -2005f, var_0.a.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(784f, -564f, var_0.a.e)))))));
}

