struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5>;

var<private> global1: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec4<i32>(i32(-2147483648), 0i, i32(-2147483648), 1i)), Struct_1(vec4<i32>(31061i, 2725i, 2147483647i, 47474i)), Struct_1(vec4<i32>(67344i, 2147483647i, 13555i, -9874i)), Struct_1(vec4<i32>(62832i, -14526i, 2147483647i, -91321i)), Struct_1(vec4<i32>(2147483647i, 1i, 1i, 2147483647i)), Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, -39700i, 1i)), Struct_1(vec4<i32>(0i, 2147483647i, 0i, 0i)), Struct_1(vec4<i32>(23374i, 2147483647i, i32(-2147483648), 15047i)), Struct_1(vec4<i32>(-18406i, 0i, -33059i, -52192i)), Struct_1(vec4<i32>(-52831i, 2147483647i, 2147483647i, 0i)), Struct_1(vec4<i32>(27712i, 2147483647i, -41764i, 40587i)), Struct_1(vec4<i32>(i32(-2147483648), 0i, -2618i, i32(-2147483648))), Struct_1(vec4<i32>(i32(-2147483648), -35045i, -42158i, 1i)), Struct_1(vec4<i32>(0i, -13236i, 1i, 0i)), Struct_1(vec4<i32>(i32(-2147483648), 12540i, -1i, i32(-2147483648))), Struct_1(vec4<i32>(-34287i, -73220i, 30583i, 2147483647i)), Struct_1(vec4<i32>(23507i, 28360i, -88315i, -4750i)), Struct_1(vec4<i32>(1i, -19137i, 0i, -3750i)), Struct_1(vec4<i32>(-1i, 54050i, 16444i, 62235i)), Struct_1(vec4<i32>(1i, 1i, i32(-2147483648), 2147483647i)), Struct_1(vec4<i32>(-1i, -23776i, -1i, 1i)), Struct_1(vec4<i32>(1i, -1i, 12979i, 0i)), Struct_1(vec4<i32>(-38746i, 1i, i32(-2147483648), -39822i)), Struct_1(vec4<i32>(i32(-2147483648), -46364i, 1i, -1i)), Struct_1(vec4<i32>(1902i, 37414i, -681i, 23045i)), Struct_1(vec4<i32>(-27603i, -12813i, 22473i, -1i)), Struct_1(vec4<i32>(i32(-2147483648), 0i, 1i, -1i)));

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1() -> Struct_1 {
    global1 = array<Struct_1, 27>();
    var var_0 = 4294967295u;
    var var_1 = Struct_1(~_wgslsmith_mod_vec4_i32(vec4<i32>(23977i, _wgslsmith_dot_vec4_i32(vec4<i32>(-33669i, -42482i, -2935i, -2147483647i), vec4<i32>(21997i, -1i, 1i, 13689i)), i32(-1i) * -33714i, ~26529i), vec4<i32>(-2147483647i, ~(-2147483647i), -109417i, _wgslsmith_div_i32(30839i, -35194i))));
    let var_2 = vec3<f32>(-184f, _wgslsmith_f_op_f32(ceil(1016f)), -1175f);
    let var_3 = _wgslsmith_sub_vec3_u32(~(~abs(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x) << (vec3<u32>(u_input.c, u_input.a, u_input.b.x) % vec3<u32>(32u)))), ~vec3<u32>(~u_input.d, ~u_input.b.x, _wgslsmith_dot_vec3_u32(u_input.b, u_input.b)));
    return Struct_1(vec4<i32>(2147483647i, _wgslsmith_dot_vec3_i32(-var_1.a.wwx, var_1.a.yxy), var_1.a.x, ~31227i) << (_wgslsmith_div_vec4_u32(~(~vec4<u32>(u_input.c, 4294967295u, u_input.d, 7145u)), vec4<u32>(21681u, _wgslsmith_div_u32(u_input.b.x, 0u), 1u, var_3.x >> (var_3.x % 32u))) % vec4<u32>(32u)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<u32>) -> bool {
    global1 = array<Struct_1, 27>();
    var var_0 = arg_1.a | arg_0.a;
    let var_1 = Struct_1(_wgslsmith_div_vec4_i32(-arg_2.a, _wgslsmith_clamp_vec4_i32(arg_1.a << (min(vec4<u32>(u_input.c, u_input.c, 46159u, 0u), vec4<u32>(arg_3.x, arg_3.x, arg_3.x, 0u)) % vec4<u32>(32u)), vec4<i32>(~arg_0.a.x, i32(-1i) * -8054i, -8484i, 0i), vec4<i32>(-2147483647i, -2147483647i, 0i, arg_1.a.x))));
    var var_2 = func_1();
    var_0 = ~vec4<i32>(25378i, 2147483647i, _wgslsmith_dot_vec2_i32(arg_0.a.yz | arg_1.a.zz, abs(var_1.a.zy)) | _wgslsmith_div_i32(arg_0.a.x, reverseBits(49825i)), ~reverseBits(~var_2.a.x));
    return false;
}

fn func_3() -> f32 {
    let var_0 = global1[_wgslsmith_index_u32((_wgslsmith_mod_u32(48386u, _wgslsmith_mult_u32(~u_input.c, u_input.d)) ^ _wgslsmith_sub_u32(u_input.a, ~(~u_input.d))) ^ u_input.d, 27u)];
    let var_1 = abs(firstLeadingBit(vec2<i32>(firstTrailingBit(abs(var_0.a.x)), _wgslsmith_mult_i32(-var_0.a.x, ~2147483647i))));
    let var_2 = global0[_wgslsmith_index_u32(u_input.d, 5u)];
    let var_3 = vec4<f32>(-1086f, _wgslsmith_div_f32(_wgslsmith_div_f32(657f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-651f, 1293f, false)) - _wgslsmith_f_op_f32(f32(-1f) * -1547f))), 1226f), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -916f), _wgslsmith_f_op_f32(step(702f, 1000f))))), 501f);
    var var_4 = Struct_1(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(var_0.a, select(-vec4<i32>(var_0.a.x, -1i, -18656i, 0i), vec4<i32>(var_1.x, var_0.a.x, var_2.a.x, 2147483647i), false)), ~_wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(var_0.a.x, var_2.a.x, -29030i, 2147483647i)), reverseBits(var_0.a), -vec4<i32>(var_0.a.x, 1i, -4823i, -1i))));
    return _wgslsmith_f_op_f32(-var_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec4<bool>(true, false, select(func_2(Struct_1(vec4<i32>(73041i, 0i, -2147483647i, 52264i)), func_1(), Struct_1(vec4<i32>(-2829i, 1i, -13866i, 30503i)), u_input.b), !func_2(global1[_wgslsmith_index_u32(0u, 27u)], global0[_wgslsmith_index_u32(u_input.d, 5u)], Struct_1(vec4<i32>(0i, 10405i, -2147483647i, 2147483647i)), u_input.b), all(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true)))), true);
    let var_1 = countOneBits(_wgslsmith_mod_vec2_i32(-(vec2<i32>(-77903i, -26424i) << (vec2<u32>(u_input.c, u_input.b.x) % vec2<u32>(32u))), ~vec2<i32>(-2147483647i << (u_input.b.x % 32u), -7403i)));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1514f), _wgslsmith_f_op_f32(f32(-1f) * -665f))) * -1127f));
    var var_3 = func_1().a.x;
    let var_4 = global1[_wgslsmith_index_u32(~0u, 27u)];
    var var_5 = -1578f;
    let var_6 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x * _wgslsmith_div_f32(var_2.x, _wgslsmith_div_f32(_wgslsmith_div_f32(1000f, 1564f), _wgslsmith_f_op_f32(func_3())))));
    let var_7 = select(!var_0, vec4<bool>(func_2(global0[_wgslsmith_index_u32(u_input.c, 5u)], global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.d, u_input.b.x | 1u), 27u)], func_1(), firstTrailingBit(vec3<u32>(u_input.a, 54121u, u_input.a)) >> (~vec3<u32>(u_input.d, 0u, u_input.d) % vec3<u32>(32u))), all(var_0), !(var_0.x == !var_0.x), ~(~u_input.d) >= (u_input.b.x | 68294u)), all(select(select(vec2<bool>(false, var_0.x), select(vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x)), true), vec2<bool>(select(false, var_0.x, var_0.x), any(var_0.zy)), func_2(global1[_wgslsmith_index_u32(~1u, 27u)], global1[_wgslsmith_index_u32(u_input.a, 27u)], func_1(), max(vec3<u32>(31882u, 4294967295u, 1u), u_input.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(-1i), reverseBits(min(abs(1i), -56820i)), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_6 - var_2.x)), var_2.x)), 829f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), 1642f));
}

