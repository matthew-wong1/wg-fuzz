struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec4<bool>,
    d: bool,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 748f;

var<private> global1: Struct_1 = Struct_1(567f, vec2<f32>(-583f, -841f), vec4<bool>(true, false, true, false), false, vec3<i32>(-1i, 44451i, -24807i));

var<private> global2: vec3<bool>;

var<private> global3: array<f32, 8>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = 42077u;
    return arg_0.b.x;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<bool>) -> Struct_1 {
    global1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), 8u)] - _wgslsmith_f_op_f32(293f - global1.b.x)))), _wgslsmith_f_op_vec2_f32(floor(global1.b)), !select(select(!global1.c, global1.c, vec4<bool>(false, arg_1.x, global1.d, global1.c.x)), vec4<bool>(all(global2.yz), true, true, any(global1.c.xwy)), global1.c), select(_wgslsmith_f_op_f32(func_3(Struct_1(global1.a, global1.b, global1.c, global2.x, vec3<i32>(global1.e.x, arg_0.x, global1.e.x)))) > global1.a, global2.x, arg_1.x) && global2.x, vec3<i32>(1i, -1i, reverseBits(-48702i)));
    var var_0 = _wgslsmith_add_vec4_u32(select(_wgslsmith_div_vec4_u32(firstTrailingBit(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), ~(~vec4<u32>(0u, u_input.a.x, 0u, 0u))), vec4<u32>(~4294967295u & ~u_input.a.x, u_input.a.x, 1u, u_input.a.x), !global1.c), select(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u) & vec4<u32>(4294967295u, 1u, 1u, u_input.a.x), vec4<u32>(0u, 19800u, 4294967295u, 24499u)), vec4<u32>(~_wgslsmith_clamp_u32(u_input.a.x, 71456u, u_input.a.x), u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a.zz, u_input.a.xx) ^ 8487u, ~(0u ^ u_input.a.x)), global2.x));
    let var_1 = vec3<u32>(6470u, ~(~var_0.x), 4294967295u);
    let var_2 = Struct_1(1741f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-285f, -559f), global1.b)) + global1.b), !select(global1.c, global1.c, vec4<bool>(true, global2.x, global2.x, arg_1.x)), arg_1.x, arg_0);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(1280f * _wgslsmith_f_op_f32(-global1.b.x)), vec2<f32>(-803f, _wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(var_0.x, u_input.a.x), 4294967295u, 4294967295u), 8u)]))), select(var_2.c, var_2.c, all(select(global1.c, vec4<bool>(true, true, true, true), select(vec4<bool>(false, global1.d, true, true), global1.c, var_2.c)))), true, ~global1.e);
    return Struct_1(_wgslsmith_f_op_f32(433f + -451f), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + vec2<f32>(-662f, 287f)) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 8u)], 466f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(var_1.x, 8u)], global3[_wgslsmith_index_u32(u_input.a.x, 8u)])), vec2<f32>(-480f, global3[_wgslsmith_index_u32(u_input.a.x, 8u)]))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(826f, var_3.a), var_2.b) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-144f, -1000f))), arg_1.xx)), true)), vec4<bool>(false, true, false, true), !(max(16262u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 4294967295u, 35222u), vec4<u32>(1u, 1u, 16689u, u_input.a.x))) <= var_0.x), firstTrailingBit(select(max(global1.e, countOneBits(global1.e)), _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(var_3.e, vec3<i32>(var_3.e.x, 57782i, var_2.e.x)), vec3<i32>(u_input.b, global1.e.x, -19623i), abs(vec3<i32>(var_3.e.x, u_input.b, global1.e.x))), !global2.x)));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: i32, arg_3: i32) -> i32 {
    let var_0 = Struct_1(arg_0.a, vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(arg_0)) * 244f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(400f, _wgslsmith_f_op_f32(f32(-1f) * -1062f))), 1630f))), vec4<bool>(all(global1.c.xw), u_input.a.x != ~u_input.a.x, false, true), !arg_1, -abs((global1.e << (u_input.a % vec3<u32>(32u))) ^ max(vec3<i32>(arg_0.e.x, 0i, arg_2), global1.e)));
    let var_1 = global3[_wgslsmith_index_u32(max(~(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(1u, u_input.a.x)))), 0u), 8u)];
    var var_2 = Struct_1(var_0.b.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_0.b.x - global1.b.x), _wgslsmith_f_op_f32(var_0.b.x + 1234f))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(global1.a * 256f), _wgslsmith_f_op_f32(min(-1243f, global3[_wgslsmith_index_u32(4294967295u, 8u)]))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-873f, var_0.a)) + _wgslsmith_f_op_vec2_f32(-arg_0.b)), !func_2(arg_0.e, vec3<bool>(var_0.c.x, false, true)).d))), var_0.c, true, countOneBits(~firstTrailingBit(vec3<i32>(2147483647i, u_input.b, 11884i))) | -_wgslsmith_mult_vec3_i32(min(vec3<i32>(2147483647i, -2147483647i, arg_2), var_0.e), vec3<i32>(0i, 1i, 2147483647i) | vec3<i32>(-2147483647i, arg_2, 12665i)));
    global2 = select(!var_2.c.yyz, vec3<bool>(!(global3[_wgslsmith_index_u32(4294967295u, 8u)] != var_0.a) && !(!global1.c.x), (all(var_2.c) & false) && ((u_input.a.x == 4294967295u) & true), any(global1.c.xyw)), !var_2.c.yzx);
    var var_3 = arg_0;
    return -(~(i32(-1i) * -var_0.e.x));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.a), global3[_wgslsmith_index_u32(min(u_input.a.x, u_input.a.x), 8u)]), global3[_wgslsmith_index_u32(abs(u_input.a.x), 8u)]))));
    global0 = var_0;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(arg_1.a)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0 * 629f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-554f * global1.b.x))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_0.b), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), -618f), all(select(select(arg_0.c.xz, arg_0.c.ww, true), arg_0.c.wz, vec2<bool>(global1.c.x, global1.c.x))))), arg_1.c, any(func_2(-(arg_0.e | global1.e), !vec3<bool>(false, global2.x, global1.d)).c), min(_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, -2067i, global1.e.x), ~vec3<i32>(arg_1.e.x, 0i, arg_1.e.x)), _wgslsmith_sub_vec3_i32(arg_1.e, arg_1.e)) ^ _wgslsmith_mult_vec3_i32(vec3<i32>(arg_1.e.x, arg_0.e.x, 27435i) | vec3<i32>(2147483647i, arg_0.e.x, 15161i), -vec3<i32>(-1i, arg_0.e.x, 20332i)));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1159f, global3[_wgslsmith_index_u32(1u, 8u)], var_1.b.x) + vec3<f32>(arg_1.b.x, global1.a, var_0)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(405f, global3[_wgslsmith_index_u32(u_input.a.x, 8u)], -521f)))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, -961f, -299f)))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1273f, 616f, 1137f)))))));
    global1 = Struct_1(arg_0.a, arg_1.b, vec4<bool>(any(vec3<bool>(true, global2.x, global1.c.x)), global1.c.x || var_1.c.x, (u_input.b != firstTrailingBit(global1.e.x)) || (~u_input.a.x != u_input.a.x), var_1.c.x), arg_0.d, arg_0.e);
    return func_2((arg_0.e << (u_input.a % vec3<u32>(32u))) ^ -arg_1.e, select(select(arg_0.c.zyz, !var_1.c.yyz, select(select(arg_1.c.zyy, vec3<bool>(true, false, global1.c.x), var_1.c.ywx), vec3<bool>(global1.c.x, false, arg_1.c.x), global1.c.x)), !func_2(-vec3<i32>(-16170i, global1.e.x, 0i), func_2(arg_1.e, vec3<bool>(global1.c.x, false, arg_1.d)).c.xzy).c.wzw, var_1.c.x));
}

fn func_1() -> Struct_1 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-global1.b.x), 162f);
    let var_1 = func_5(Struct_1(1f, global1.b, !global1.c, global2.x, ~abs(_wgslsmith_mult_vec3_i32(global1.e, global1.e))), Struct_1(var_0.x, global1.b, vec4<bool>(true, any(select(vec2<bool>(false, false), vec2<bool>(false, global2.x), vec2<bool>(false, global2.x))), global2.x, any(global1.c)), u_input.b <= -(i32(-1i) * -24736i), vec3<i32>(func_4(func_2(global1.e, global1.c.xwy), func_2(global1.e, vec3<bool>(false, false, global2.x)).c.x, global1.e.x, -1i), ~u_input.b, global1.e.x)));
    var var_2 = var_1;
    let var_3 = global3[_wgslsmith_index_u32(u_input.a.x, 8u)];
    global1 = func_5(func_2(-(global1.e << (vec3<u32>(55557u, u_input.a.x, u_input.a.x) % vec3<u32>(32u))), !vec3<bool>(select(global2.x, var_2.d, var_1.d), select(var_2.d, global2.x, var_1.d), false)), Struct_1(global1.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(var_1.b, var_0), vec2<f32>(-104f, var_1.b.x)) * _wgslsmith_f_op_vec2_f32(-var_0)), select(vec4<bool>(all(vec3<bool>(var_2.c.x, true, false)), true, true, true), func_2(vec3<i32>(var_1.e.x, 1i, -2147483647i), !var_2.c.yyz).c, var_2.c.x), global2.x, -var_2.e));
    return func_2(min(var_1.e, ~func_2(var_2.e, var_1.c.xzz).e ^ vec3<i32>(abs(var_2.e.x), 45783i >> (u_input.a.x % 32u), ~0i)), func_2(global1.e >> (vec3<u32>(1u, u_input.a.x, u_input.a.x) % vec3<u32>(32u)), global1.c.xwz).c.www);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = max(vec4<i32>(reverseBits(0i), -var_0.e.x, _wgslsmith_div_i32(0i, ~var_0.e.x) >> (42712u % 32u), firstTrailingBit(u_input.b)), _wgslsmith_div_vec4_i32(-(vec4<i32>(-43394i, -3344i, u_input.b, global1.e.x) >> (vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 8528u) % vec4<u32>(32u))) ^ (-vec4<i32>(u_input.b, u_input.b, var_0.e.x, global1.e.x) << (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 57973u, 0u, 3885u), vec4<u32>(u_input.a.x, u_input.a.x, 0u, 1u)) % vec4<u32>(32u))), countOneBits(_wgslsmith_sub_vec4_i32(-vec4<i32>(global1.e.x, u_input.b, 4698i, global1.e.x), vec4<i32>(1i, var_0.e.x, var_0.e.x, -2147483647i)))));
    var var_2 = Struct_1(1127f, _wgslsmith_f_op_vec2_f32(exp2(global1.b)), var_0.c, (global3[_wgslsmith_index_u32(u_input.a.x, 8u)] < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(9795u, 8u)] - 1317f))) & !all(!vec2<bool>(false, global2.x)), _wgslsmith_div_vec3_i32(firstTrailingBit(func_1().e), -min(global1.e & vec3<i32>(var_0.e.x, 34655i, var_0.e.x), vec3<i32>(global1.e.x, var_0.e.x, 2147483647i))));
    global3 = array<f32, 8>();
    var var_3 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec3<i32>(i32(-1i) * -1i, var_2.e.x, 1i)));
}

