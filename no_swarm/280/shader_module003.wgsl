struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: i32,
    d: vec3<f32>,
    e: bool,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: vec4<bool> = vec4<bool>(false, false, true, true);

var<private> global2: array<Struct_3, 3>;

var<private> global3: array<vec3<bool>, 3>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> bool {
    var var_0 = select(global1.xwz, vec3<bool>(true, arg_1.c, true), !vec3<bool>(false, any(arg_1.a.zy), any(vec4<bool>(false, true, global0.x, true)) != true));
    var var_1 = Struct_2(!global0.wzw, vec3<i32>(select(i32(-1i) * -arg_1.b.x, -u_input.b.x, all(!global1.www)), select(-(~2147483647i), _wgslsmith_add_i32(1i, -1464i), false), u_input.b.x), !any(vec2<bool>(true, all(vec3<bool>(var_0.x, global1.x, true)))));
    let var_2 = ~_wgslsmith_clamp_vec2_i32(u_input.b.zy, _wgslsmith_mod_vec2_i32(firstTrailingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, -2147483647i), arg_1.b.zx)), _wgslsmith_clamp_vec2_i32(arg_1.b.zx, u_input.b.yx, _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b.x, 0i), vec2<i32>(1i, -1i), var_1.b.zx))), -firstTrailingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, arg_1.b.x), vec2<i32>(u_input.b.x, u_input.b.x))));
    var var_3 = Struct_1(arg_0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1977f, arg_0.b.x, arg_0.c) - vec3<f32>(972f, -1260f, 979f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.x, arg_0.c, arg_0.b.x)))), select(global0.wyz, !vec3<bool>(arg_1.c, true, arg_1.a.x), global1.x))) * _wgslsmith_f_op_vec3_f32(step(arg_0.b, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.b.x, 386f, arg_0.b.x)))))), arg_0.b.x);
    let var_4 = select(select(select(!vec4<bool>(global1.x, global0.x, true, var_1.c), vec4<bool>(any(vec4<bool>(global1.x, var_0.x, global0.x, false)), true & global1.x, all(vec3<bool>(global1.x, true, false)), all(vec4<bool>(var_0.x, true, false, false))), any(!vec4<bool>(false, var_1.c, var_1.a.x, var_1.a.x))), !select(vec4<bool>(true, var_1.a.x, global1.x, var_1.a.x), vec4<bool>(arg_1.c, global1.x, global1.x, true), !vec4<bool>(global0.x, arg_1.c, true, false)), select(select(select(vec4<bool>(false, var_1.c, false, arg_1.c), vec4<bool>(true, true, var_1.a.x, var_1.a.x), vec4<bool>(false, arg_1.c, false, var_0.x)), !vec4<bool>(var_1.a.x, false, arg_1.a.x, global1.x), vec4<bool>(false, true, global1.x, true)), !select(vec4<bool>(global1.x, var_1.c, true, arg_1.c), vec4<bool>(true, var_0.x, global1.x, var_0.x), vec4<bool>(false, false, arg_1.a.x, false)), all(vec4<bool>(true, true, arg_1.a.x, true)))), vec4<bool>(all(!(!arg_1.a.zx)), var_1.a.x, !(abs(arg_1.b.x) > var_2.x), any(select(select(global1.xw, var_1.a.yy, true), vec2<bool>(false, false), arg_1.a.zy))), true);
    return var_0.x;
}

fn func_2() -> f32 {
    global0 = !vec4<bool>(true || global0.x, true, all(select(select(vec4<bool>(global1.x, false, global0.x, true), vec4<bool>(true, false, global1.x, global1.x), global0.x), vec4<bool>(true, global1.x, true, false), all(vec2<bool>(global1.x, true)))), u_input.b.x > 8191i);
    global1 = select(vec4<bool>(true, true, !func_3(Struct_1(1635u, vec3<f32>(-326f, -1691f, -1100f), 1074f), Struct_2(global3[_wgslsmith_index_u32(0u, 3u)], u_input.b, false)), firstTrailingBit(~72381u) >= abs(u_input.a.x)), vec4<bool>(true, _wgslsmith_mult_i32(-1i, 2147483647i) < _wgslsmith_dot_vec4_i32(max(vec4<i32>(u_input.b.x, 0i, -27716i, 2147483647i), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(663i, 2147483647i, 1i, -29641i), vec4<i32>(u_input.b.x, 40955i, u_input.b.x, 2147483647i))), true, global1.x), !vec4<bool>(global1.x, false, global1.x, true));
    var var_0 = Struct_1(_wgslsmith_add_u32(firstTrailingBit(1u), select(u_input.a.x, 1u, !(global0.x && false))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-2008f, _wgslsmith_f_op_f32(floor(-705f)), 2184f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-221f, -2056f, 229f) - vec3<f32>(-1000f, 1128f, -1000f)))))), -1191f);
    global0 = select(vec4<bool>(global1.x, false, true == select(true, true, func_3(Struct_1(49073u, vec3<f32>(var_0.c, var_0.c, var_0.b.x), 1584f), Struct_2(vec3<bool>(false, true, global0.x), vec3<i32>(u_input.b.x, -498i, u_input.b.x), false))), true), select(select(vec4<bool>(false, global0.x || global1.x, select(global0.x, true, global0.x), !global1.x), vec4<bool>(global1.x, true, false, true | global0.x), global1.x), select(!vec4<bool>(global1.x, false, global0.x, global0.x), vec4<bool>(true, any(vec2<bool>(global0.x, global0.x)), true, false), vec4<bool>(global1.x, true, true, global1.x & true)), global1.x), func_3(Struct_1(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, var_0.a, u_input.a.x), vec3<u32>(var_0.a, u_input.a.x, 57072u)), vec3<u32>(24994u, var_0.a, 4294967295u)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.b.x, -421f, var_0.b.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(1131f, 540f, 235f) - var_0.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c - var_0.b.x))), Struct_2(global0.www, vec3<i32>(-2704i, select(21432i, 2147483647i, true), 2147483647i), any(global1.zx))));
    global1 = !vec4<bool>(select(global1.x, global1.x & true, global0.x), true, !(!global0.x), false);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-314f))))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) * 994f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1372f)) + -1000f))));
}

fn func_1() -> StorageBuffer {
    let var_0 = global2[_wgslsmith_index_u32(~4208u, 3u)];
    let var_1 = _wgslsmith_f_op_f32(func_2());
    global2 = array<Struct_3, 3>();
    let var_2 = ~vec4<u32>(~(~(~46436u)), ~u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a.yx, abs(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, 22949u), vec2<u32>(u_input.a.x, 44441u)))), u_input.a.x);
    var var_3 = -(-vec4<i32>(select(var_0.c, 1i, true), _wgslsmith_add_i32(var_0.c, 2147483647i), _wgslsmith_clamp_i32(-80486i, -2147483647i, u_input.b.x), u_input.b.x) & (reverseBits(min(vec4<i32>(0i, -32841i, u_input.b.x, 2976i), vec4<i32>(-46199i, u_input.b.x, u_input.b.x, var_0.c))) ^ ~(-vec4<i32>(-1i, 1i, var_0.c, var_0.c))));
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(-1000f * -1180f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 - 436f) * _wgslsmith_f_op_f32(f32(-1f) * -874f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-681f)), -1457f)))), u_input.b.x, vec2<f32>(_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(-594f - 1347f))), var_0.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.yx;
    let var_1 = _wgslsmith_f_op_f32(abs(1000f));
    let x = u_input.a;
    s_output = func_1();
}

