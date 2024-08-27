struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: Struct_3 = Struct_3(Struct_1(vec4<u32>(80277u, 18629u, 34730u, 33938u)), vec4<bool>(false, true, false, true));

var<private> global2: array<vec2<bool>, 19> = array<vec2<bool>, 19>(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = Struct_3(arg_0.d, !select(!(!global1.b), vec4<bool>(true, 0u == arg_2.a.x, true, true), all(global1.b.xzw)));
    let var_1 = arg_0;
    global1 = Struct_3(Struct_1(arg_2.a), !select(vec4<bool>(arg_0.a.x != 0u, any(vec4<bool>(false, var_1.b, false, false)), !var_1.b, all(global1.b.xz)), select(!vec4<bool>(arg_0.b, false, global0.x, global0.x), var_0.b, false), !vec4<bool>(var_0.b.x, var_0.b.x, arg_0.b, true)));
    global2 = array<vec2<bool>, 19>();
    var var_2 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(360f + _wgslsmith_div_f32(arg_0.c, 603f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.c, -1148f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.c))), -366f), -633f), ~4005i);
    return select(select(!(!global1.b.zyw), !var_0.b.wyy, vec3<bool>(all(global1.b) || true, true, any(vec2<bool>(var_0.b.x, true)))), vec3<bool>(!(!(u_input.c > var_2.b)), false && (select(var_0.b.x, false, false) | true), ~(~global1.a.a.x) >= 31745u), select(vec3<bool>(true, true, select(true, false, true)), select(!(!global1.b.xww), global1.b.yyw, any(vec4<bool>(true, global0.x, false, arg_0.b)) || all(vec4<bool>(true, global0.x, true, var_0.b.x))), true));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_4, arg_3: u32) -> vec2<u32> {
    var var_0 = all(func_3(arg_1, ~vec2<i32>(_wgslsmith_clamp_i32(27994i, 0i, 1i), 1i >> (1u % 32u)), global1.a));
    var var_1 = arg_2;
    var var_2 = -_wgslsmith_sub_vec3_i32(vec3<i32>(var_1.b, 2147483647i, abs(_wgslsmith_mult_i32(2147483647i, 0i))), arg_0);
    var_0 = any(select(global1.b, vec4<bool>(true, all(select(global2[_wgslsmith_index_u32(16361u, 19u)], vec2<bool>(arg_1.b, true), vec2<bool>(global1.b.x, global0.x))), false, any(select(vec4<bool>(global0.x, global0.x, false, global0.x), vec4<bool>(false, true, global1.b.x, true), true))), select(vec4<bool>(global0.x, true, u_input.c <= var_1.b, true), vec4<bool>(true, global1.b.x, any(vec3<bool>(global1.b.x, true, true)), true), global0.x | false)));
    let var_3 = false;
    return u_input.d.zx;
}

fn func_1(arg_0: Struct_4, arg_1: u32, arg_2: f32) -> Struct_1 {
    var var_0 = any(global1.b.yz);
    var_0 = all(select(vec2<bool>(global1.b.x, !any(global2[_wgslsmith_index_u32(72103u, 19u)])), global1.b.wy, vec2<bool>(global1.b.x, global0.x)));
    var var_1 = 849f;
    var var_2 = vec2<u32>(~u_input.d.x, global1.a.a.x);
    var var_3 = vec4<u32>(0u, abs(~(~24995u)) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, reverseBits(var_2.x)), func_2(vec3<i32>(u_input.c, 31919i, u_input.c), Struct_2(vec3<u32>(global1.a.a.x, global1.a.a.x, 8375u), true, -1767f, Struct_1(vec4<u32>(u_input.b.x, 4294967295u, 51044u, u_input.d.x))), Struct_4(vec4<f32>(1000f, arg_0.a.x, -399f, arg_2), arg_0.b), 1u)), firstLeadingBit(4294967295u), ~global1.a.a.x);
    return Struct_1(firstLeadingBit(select(u_input.d, ~global1.a.a, select(vec4<bool>(global1.b.x, true, false, global1.b.x), global1.b, global1.b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.a;
    global2 = array<vec2<bool>, 19>();
    let var_1 = global1.b;
    global1 = Struct_3(func_1(Struct_4(vec4<f32>(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(step(-115f, 1462f)), _wgslsmith_div_f32(-875f, 394f), _wgslsmith_f_op_f32(floor(-1000f))), -3606i), 0u, 1f), global1.b);
    let var_2 = Struct_4(vec4<f32>(-802f, -1131f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1899f))), -862f), max(u_input.c, _wgslsmith_add_i32(u_input.c, ~(i32(-1i) * -25125i))));
    var var_3 = Struct_2(_wgslsmith_clamp_vec3_u32(global1.a.a.wzz, vec3<u32>(7460u, _wgslsmith_sub_u32(84029u, var_0.a.x), u_input.a), _wgslsmith_mult_vec3_u32(abs(countOneBits(u_input.b.www)), countOneBits(vec3<u32>(global1.a.a.x, global1.a.a.x, global1.a.a.x)))), true, var_2.a.x, global1.a);
    var_0 = Struct_1(var_3.d.a);
    var var_4 = vec2<i32>(-1i) * -abs(abs(-vec2<i32>(var_2.b, 34133i)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_3.c, _wgslsmith_div_f32(var_2.a.x, -1165f), var_2.a.x), vec2<u32>(14812u, 1u), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.a.x))), ~var_0.a.x);
}

