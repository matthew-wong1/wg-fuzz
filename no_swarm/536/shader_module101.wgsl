struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-1i, -22662i, 2147483647i);

var<private> global1: Struct_1;

var<private> global2: array<vec4<u32>, 18>;

var<private> global3: vec4<f32>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_3) -> vec2<i32> {
    global0 = _wgslsmith_add_vec3_i32(u_input.b, _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(select(vec3<i32>(global0.x, global0.x, 16115i), vec3<i32>(-11368i, global0.x, -27559i), vec3<bool>(true, true, true)), vec3<i32>(44472i, u_input.c.x, 2147483647i) | -vec3<i32>(u_input.c.x, 7135i, -1i)), _wgslsmith_clamp_vec3_i32(u_input.b, select(min(vec3<i32>(0i, 7346i, u_input.b.x), vec3<i32>(-1i, global0.x, -22634i)), u_input.c, vec3<bool>(false, false, false)), abs(vec3<i32>(-2147483647i, -1i, arg_0)))));
    var var_0 = vec4<bool>(true, !(reverseBits(~global0.x) == (_wgslsmith_add_i32(arg_0, 1i) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, 4294967295u, u_input.a), vec3<u32>(u_input.a, u_input.e.x, u_input.a)) % 32u))), any(!select(vec3<bool>(true, true, false), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false))), (true && (u_input.e.x == _wgslsmith_mod_u32(u_input.d, 1356u))) || true);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var var_2 = _wgslsmith_f_op_f32(312f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1))));
    let var_3 = u_input.e;
    return -_wgslsmith_div_vec2_i32(~countOneBits(vec2<i32>(7298i, 1i) | vec2<i32>(global1.a, -19253i)), global0.xy);
}

fn func_2() -> Struct_1 {
    global3 = vec4<f32>(global3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -879f)) * global3.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global3.x - global3.x))), 492f);
    var var_0 = vec2<bool>(all(vec2<bool>(true, true)), true);
    var var_1 = reverseBits(_wgslsmith_sub_vec2_i32(max(func_3(countOneBits(u_input.c.x), Struct_3(global1.a)), _wgslsmith_mod_vec2_i32(max(u_input.b.yy, global0.yz), abs(u_input.c.yx))), u_input.b.xy));
    let var_2 = Struct_2(global2[_wgslsmith_index_u32(7497u, 18u)], _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(global3.x, global3.x)))))) == _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1360f, _wgslsmith_f_op_f32(-global3.x))));
    var var_3 = var_2;
    return Struct_1(_wgslsmith_div_i32(-24065i, _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(-1i, var_1.x) << (u_input.e % vec2<u32>(32u))), global0.zz)));
}

fn func_1(arg_0: Struct_3, arg_1: vec2<u32>) -> vec2<bool> {
    let var_0 = func_2();
    global2 = array<vec4<u32>, 18>();
    let var_1 = Struct_2(_wgslsmith_sub_vec4_u32(global2[_wgslsmith_index_u32(arg_1.x, 18u)], _wgslsmith_mult_vec4_u32((vec4<u32>(32757u, arg_1.x, 1u, arg_1.x) << (global2[_wgslsmith_index_u32(4294967295u, 18u)] % vec4<u32>(32u))) >> (~global2[_wgslsmith_index_u32(627u, 18u)] % vec4<u32>(32u)), vec4<u32>(firstLeadingBit(u_input.a), abs(972u), u_input.e.x & arg_1.x, u_input.a))), false);
    global3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global3.x, -178f, 1380f, global3.x)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global3.x, -133f, 116f, -1000f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, 352f, 1303f, -1387f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, -1112f, -282f, global3.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global3.x, global3.x, global3.x, 230f), vec4<f32>(158f, 1038f, -1372f, -1707f)))) * vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global3.x + global3.x))), _wgslsmith_div_f32(-616f, _wgslsmith_f_op_f32(max(global3.x, global3.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global3.x)) * _wgslsmith_f_op_f32(f32(-1f) * -189f)), _wgslsmith_f_op_f32(f32(-1f) * -1024f))));
    return vec2<bool>(var_1.b, (_wgslsmith_mod_u32(arg_1.x, ~u_input.d) != max(select(var_1.a.x, var_1.a.x, var_1.b), arg_1.x)) & (any(!vec3<bool>(var_1.b, var_1.b, true)) && false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(global3.wzy, _wgslsmith_f_op_vec3_f32(exp2(global3.wzw))))));
    let var_1 = Struct_3(global0.x);
    global2 = array<vec4<u32>, 18>();
    var var_2 = var_0.x;
    var_2 = global3.x;
    var var_3 = _wgslsmith_f_op_f32(-var_0.x);
    let var_4 = any(select(vec2<bool>(true, !any(vec3<bool>(true, false, false))), select(vec2<bool>(true, true), func_1(var_1, vec2<u32>(6758u, 0u)), !func_1(var_1, u_input.e)), !func_1(var_1, ~u_input.e).x));
    global1 = Struct_1(min(_wgslsmith_mod_i32(~_wgslsmith_sub_i32(0i, 4105i), 0i | var_1.a), i32(-1i) * -6246i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global3.yxx)), ~(select(abs(vec2<i32>(u_input.b.x, 6215i)), ~vec2<i32>(22097i, var_1.a), vec2<bool>(var_4, false)) >> (~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.e.x, 68066u), vec2<u32>(0u, u_input.d)) % vec2<u32>(32u))), var_1.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, var_0.x, var_0.x)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-1667f, global3.x), global3.x, _wgslsmith_f_op_f32(abs(-579f)), _wgslsmith_f_op_f32(step(1549f, -1374f))))));
}

