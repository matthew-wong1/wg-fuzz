struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<u32, 5>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: vec4<f32>) -> vec2<i32> {
    global0 = Struct_2(global0.a, ~_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(global0.d.a, global0.a.a), ~arg_2.a) == arg_2.a.x, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(global0.c.x - _wgslsmith_f_op_f32(max(arg_3.x, arg_3.x))), _wgslsmith_f_op_f32(arg_3.x * -285f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1946f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -212f))))), Struct_1(arg_2.a));
    global0 = Struct_2(Struct_1(arg_0.a), true, global0.c, Struct_1(select(abs(-vec2<i32>(u_input.a, -13915i)), arg_0.a ^ _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.a), arg_2.a), select(select(vec2<bool>(arg_1, global0.b), vec2<bool>(arg_1, global0.b), vec2<bool>(false, arg_1)), !vec2<bool>(true, arg_1), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, global0.b))))));
    global0 = Struct_2(Struct_1(vec2<i32>(reverseBits(-37046i), 0i)), any(!select(select(vec3<bool>(global0.b, true, global0.b), vec3<bool>(true, false, false), false), !vec3<bool>(global0.b, false, global0.b), u_input.a <= -15394i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(174f * -1229f), arg_1)), _wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(-1773f - -441f), global0.c.x)), global0.d);
    let var_0 = Struct_2(Struct_1(global0.d.a), true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.x, -1153f, 1489f, 1120f) * vec4<f32>(global0.c.x, arg_3.x, -1372f, global0.c.x))))) * vec4<f32>(_wgslsmith_f_op_f32(arg_3.x * _wgslsmith_f_op_f32(abs(global0.c.x))), global0.c.x, arg_3.x, global0.c.x)), Struct_1(firstTrailingBit(vec2<i32>(countOneBits(-2147483647i), arg_2.a.x))));
    let var_1 = u_input.a;
    return var_0.a.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>) -> bool {
    global1 = array<u32, 5>();
    let var_0 = 20519i;
    let var_1 = ~2147483647i;
    var var_2 = Struct_1(_wgslsmith_sub_vec2_i32(arg_1.a, reverseBits(vec2<i32>(-7609i, _wgslsmith_div_i32(-2147483647i, -1i)))));
    return _wgslsmith_div_f32(867f, _wgslsmith_f_op_f32(round(global0.c.x))) > _wgslsmith_f_op_f32(global0.c.x * -428f);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<f32>) -> vec4<bool> {
    var var_0 = select(select(~u_input.b.xz, select(~vec2<u32>(global1[_wgslsmith_index_u32(24572u, 5u)], 3353u), u_input.b.yw, !(!global0.b)), vec2<bool>(-u_input.a <= global0.a.a.x, !(!global0.b))), arg_0, func_4(global0.a, Struct_1(func_3(Struct_1(vec2<i32>(u_input.a, 17084i)), all(vec4<bool>(global0.b, global0.b, true, global0.b)), global0.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.x, global0.c.x, -694f, 566f) - global0.c))), !vec2<bool>(!global0.b, global0.b || true)));
    let var_1 = false;
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1332f, 433f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, global0.c.x, false)) * arg_1.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.x)))));
    var var_3 = !(firstTrailingBit(global0.d.a.x) <= ~firstLeadingBit(~global0.a.a.x));
    var var_4 = !vec3<bool>(any(select(vec2<bool>(global0.b, false), vec2<bool>(true, var_1), true)) && false, false, any(!(!vec4<bool>(var_1, false, global0.b, false))));
    return select(!select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, var_1, false), vec4<bool>(false, global0.b, var_4.x, true)), !vec4<bool>(global0.b, true, var_4.x, true), any(select(var_4.xz, var_4.zx, var_4.yy))), vec4<bool>(true, false, global0.b, var_4.x), vec4<bool>(true, func_4(Struct_1(abs(vec2<i32>(-7196i, global0.a.a.x))), Struct_1(vec2<i32>(u_input.a, global0.a.a.x)), select(select(vec2<bool>(true, global0.b), vec2<bool>(true, var_1), var_4.x), !vec2<bool>(var_4.x, true), select(vec2<bool>(true, var_1), vec2<bool>(global0.b, var_4.x), vec2<bool>(false, false)))), !func_4(global0.a, global0.a, var_4.yy), all(vec4<bool>(!global0.b, false | var_4.x, !var_1, func_4(Struct_1(global0.d.a), Struct_1(vec2<i32>(global0.d.a.x, global0.d.a.x)), var_4.xz)))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    let var_0 = _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(min(abs(vec4<i32>(1i, arg_0.a.x, -9468i, 10393i)), firstLeadingBit(vec4<i32>(global0.a.a.x, -1i, 9707i, arg_0.a.x))), ~vec4<i32>(arg_0.a.x << (75960u % 32u), u_input.a, 23925i, ~2147483647i)), vec4<i32>(firstTrailingBit(0i), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(-2147483647i, 0i), -1i, ~_wgslsmith_sub_i32(-10406i, arg_0.a.x)), min(global0.a.a.x, arg_1.a.x), arg_0.a.x));
    let var_1 = 65978u;
    var var_2 = Struct_2(global0.a, all(select(vec4<bool>(any(vec3<bool>(false, false, global0.b)), arg_2 > global0.c.x, !global0.b, arg_2 > 1026f), select(func_2(u_input.b.zz, vec3<f32>(global0.c.x, -1506f, arg_2)), !vec4<bool>(global0.b, global0.b, global0.b, true), vec4<bool>(true, true, global0.b, false)), vec4<bool>(global0.b, !global0.b, global0.b, true))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(global0.c)))), Struct_1(abs(-arg_0.a)));
    let var_3 = any(!vec2<bool>(!(!global0.b), false || any(vec2<bool>(var_2.b, true))));
    global0 = Struct_2(Struct_1(var_0.zz), true, global0.c, var_2.d);
    return Struct_1(reverseBits(arg_1.a));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 5>();
    let var_0 = false;
    var var_1 = func_1(global0.d, Struct_1(vec2<i32>(_wgslsmith_mod_i32(firstTrailingBit(u_input.a), -65075i), max(1i, -10930i))), global0.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, _wgslsmith_f_op_f32(select(global0.c.x, _wgslsmith_f_op_f32(-global0.c.x), all(vec3<bool>(true, global0.b, global0.b)) && (global0.c.x < _wgslsmith_f_op_f32(exp2(global0.c.x))))), min(vec3<i32>(_wgslsmith_sub_i32(-37458i, -20341i) & _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -12282i, u_input.a), vec3<i32>(u_input.a, -2147483647i, var_1.a.x)), global0.d.a.x, ~max(u_input.a, 7615i)), -abs(vec3<i32>(global0.d.a.x, global0.d.a.x, var_1.a.x) | vec3<i32>(global0.d.a.x, var_1.a.x, u_input.a))));
}

