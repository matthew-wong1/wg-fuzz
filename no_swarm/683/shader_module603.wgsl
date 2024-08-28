struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: bool,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: f32,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: u32,
    d: vec3<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 3> = array<Struct_3, 3>(Struct_3(Struct_2(vec4<i32>(9190i, -1i, -3125i, 2147483647i)), false, 458f, Struct_2(vec4<i32>(i32(-2147483648), -77776i, -19735i, -6487i)), Struct_2(vec4<i32>(1i, i32(-2147483648), 0i, 2147483647i))), Struct_3(Struct_2(vec4<i32>(2147483647i, 0i, 1i, 48745i)), false, -1004f, Struct_2(vec4<i32>(1i, -1i, 9719i, 0i)), Struct_2(vec4<i32>(1i, -1i, -13779i, -27229i))), Struct_3(Struct_2(vec4<i32>(1i, -34i, 32785i, 1i)), false, 687f, Struct_2(vec4<i32>(2147483647i, -45670i, -1i, 0i)), Struct_2(vec4<i32>(90467i, 2147483647i, -20405i, 11909i))));

var<private> global1: vec4<i32> = vec4<i32>(-1i, -1i, 0i, -5645i);

var<private> global2: array<u32, 4>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: u32, arg_3: Struct_3) -> u32 {
    var var_0 = arg_3.b && all(select(select(!vec3<bool>(true, arg_3.b, false), !vec3<bool>(arg_1.b, arg_1.b, arg_1.b), !vec3<bool>(false, arg_3.b, true)), select(!vec3<bool>(arg_3.b, arg_0, arg_1.b), select(vec3<bool>(true, arg_1.b, false), vec3<bool>(true, arg_1.b, arg_3.b), arg_1.b), any(vec3<bool>(arg_0, arg_3.b, arg_1.b))), !(!vec3<bool>(false, false, arg_3.b))));
    global0 = array<Struct_3, 3>();
    var var_1 = _wgslsmith_div_u32(_wgslsmith_mult_u32(~(global2[_wgslsmith_index_u32(1u, 4u)] ^ 29961u), ~_wgslsmith_add_u32(arg_2, countOneBits(0u))), 1619u);
    var var_2 = -(firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, 1i, -1i), ~arg_1.d.a.yww)) & ~_wgslsmith_sub_vec3_i32(-vec3<i32>(arg_3.d.a.x, global1.x, arg_3.d.a.x), ~vec3<i32>(1i, -1i, u_input.a)));
    var var_3 = -vec3<i32>(~_wgslsmith_dot_vec4_i32(arg_1.d.a, arg_3.a.a), abs(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(global1.x, var_2.x), -52924i, arg_3.d.a.x)), -10748i);
    return global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~abs(~vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(arg_2, 4u)]))), 4u)];
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: Struct_4) -> i32 {
    var var_0 = Struct_1(select(abs(vec2<i32>(global1.x, arg_0.a.x)) & (arg_2.a | global1.wz), _wgslsmith_div_vec2_i32(vec2<i32>(14542i, arg_0.a.x), arg_3.a.a) << (_wgslsmith_mult_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(15753u, 4u)], arg_2.b), vec2<u32>(arg_0.b, 1u)) % vec2<u32>(32u)), !vec2<bool>(true, arg_2.c)) ^ ~countOneBits(~vec2<i32>(4360i, arg_3.a.a.x)), ~(~(~global2[_wgslsmith_index_u32(arg_3.a.b, 4u)]) << (func_3(true, Struct_3(Struct_2(vec4<i32>(-20408i, arg_3.a.a.x, -15117i, -26862i)), true, -413f, Struct_2(vec4<i32>(0i, arg_3.a.a.x, 26938i, global1.x)), Struct_2(vec4<i32>(arg_0.a.x, u_input.a, -2147483647i, 1i))), 4294967295u, Struct_3(Struct_2(vec4<i32>(arg_3.a.a.x, -1i, arg_0.a.x, -76400i)), arg_2.c, -1512f, Struct_2(vec4<i32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, global1.x)), Struct_2(vec4<i32>(-2147483647i, 3557i, 0i, -9029i)))) % 32u)), all(!(!select(vec3<bool>(true, false, false), vec3<bool>(arg_3.a.c, arg_0.c, arg_1), vec3<bool>(false, true, arg_2.c)))), arg_0.d);
    global0 = array<Struct_3, 3>();
    let var_1 = arg_3;
    var var_2 = Struct_3(Struct_2(vec4<i32>(_wgslsmith_mult_i32(16371i, arg_0.a.x), -2147483647i, 13452i, arg_0.a.x << (108323u % 32u)) ^ firstTrailingBit(vec4<i32>(38766i, var_0.a.x, arg_3.a.a.x, arg_0.a.x))), all(!vec2<bool>(true, -1i >= arg_2.a.x)), _wgslsmith_f_op_f32(var_0.d.x - _wgslsmith_f_op_f32(abs(arg_3.a.d.x))), Struct_2(select(vec4<i32>(-1i) * -vec4<i32>(-1i, arg_0.a.x, 51010i, -16189i), vec4<i32>(countOneBits(arg_3.a.a.x), _wgslsmith_add_i32(-1i, 44082i), -2465i, arg_0.a.x), true)), Struct_2(vec4<i32>(~_wgslsmith_clamp_i32(arg_0.a.x, 2147483647i, 2147483647i), ~(41837i >> (0u % 32u)), _wgslsmith_add_i32(1i, -var_0.a.x), i32(-1i) * -2147483647i)));
    var_2 = Struct_3(var_2.e, all(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, var_0.c, false, true), true)) & true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.d.x) - arg_3.a.d.x), var_0.d.x)) * 935f), Struct_2(~(firstTrailingBit(vec4<i32>(2147483647i, arg_3.a.a.x, 2147483647i, arg_0.a.x)) & abs(vec4<i32>(arg_0.a.x, 2147483647i, -13369i, -1i)))), Struct_2(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.x, global1.x, var_0.a.x), global1.zzy | vec3<i32>(2147483647i, arg_2.a.x, var_1.a.a.x)), 2147483647i, 1i, abs(-2147483647i))));
    return var_0.a.x;
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: vec4<f32>) -> vec2<bool> {
    let var_0 = -1267f;
    global2 = array<u32, 4>();
    global1 = _wgslsmith_div_vec4_i32(vec4<i32>(~global1.x, 2147483647i | ~_wgslsmith_clamp_i32(0i, -20701i, arg_0), ~abs(-6239i), _wgslsmith_div_i32(~select(global1.x, -20493i, true), firstTrailingBit(-33150i) ^ ~global1.x)), -vec4<i32>(-arg_0, (i32(-1i) * -1i) >> (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(92139u, 4u)], 4u)] % 32u), 42359i >> (~4294967295u % 32u), -2147483647i));
    return vec2<bool>(all(vec4<bool>(!all(vec4<bool>(false, false, true, true)), func_2(Struct_1(vec2<i32>(-2357i, 2147483647i), 1u, true, arg_2.wwy), true, Struct_1(vec2<i32>(-2147483647i, -24895i), global2[_wgslsmith_index_u32(0u, 4u)], false, vec3<f32>(var_0, var_0, arg_2.x)), Struct_4(Struct_1(vec2<i32>(arg_0, arg_0), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(94805u, 4u)], 4u)], true, vec3<f32>(-699f, arg_2.x, -237f)))) > (arg_0 >> (1u % 32u)), true, _wgslsmith_div_u32(7572u, 13453u) == _wgslsmith_mod_u32(global2[_wgslsmith_index_u32(17577u, 4u)], 0u))), all(vec4<bool>(true, true, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(~(~abs(~vec3<u32>(1u, 4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(49272u, 4u)], 4u)]))));
    let var_1 = 1i;
    var var_2 = ~_wgslsmith_mult_vec2_i32(vec2<i32>(i32(-1i) * -2147483647i, _wgslsmith_div_i32(min(u_input.a, u_input.a), ~global1.x)), -countOneBits(_wgslsmith_add_vec2_i32(vec2<i32>(var_1, u_input.a), global1.zw)));
    let var_3 = !any(vec3<bool>(true, true, !all(vec2<bool>(true, false))));
    var var_4 = -657f;
    let x = u_input.a;
    s_output = StorageBuffer(~(-_wgslsmith_add_vec3_i32(-global1.wwy, ~vec3<i32>(1i, var_2.x, global1.x))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1283f), -601f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -909f), -615f)), -1583f), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-394f, 1000f, 550f, 1005f)))))), var_0.x ^ 34862u, vec3<f32>(_wgslsmith_div_f32(164f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - 704f) - -942f)), 880f, 397f), _wgslsmith_mult_vec2_u32(select(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(236u << (var_0.x % 32u), 4u)], 4u)], _wgslsmith_dot_vec3_u32(var_0, vec3<u32>(0u, var_0.x, var_0.x))), _wgslsmith_div_vec2_u32(vec2<u32>(4082u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(45537u, 4u)], 4u)], 4u)]), var_0.yz >> (vec2<u32>(global2[_wgslsmith_index_u32(0u, 4u)], 27511u) % vec2<u32>(32u))), select(vec2<bool>(false, var_3), func_1(var_1, -896f, vec4<f32>(-681f, -765f, 894f, 1851f)), var_3)), vec2<u32>(43988u >> (1u % 32u), firstTrailingBit(var_0.x << (35586u % 32u)))));
}

