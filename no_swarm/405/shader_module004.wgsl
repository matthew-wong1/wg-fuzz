struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: f32,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec3<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec4<u32>,
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

var<private> global0: array<i32, 18>;

var<private> global1: array<vec3<f32>, 1>;

var<private> global2: vec3<i32> = vec3<i32>(-1i, -43362i, i32(-2147483648));

var<private> global3: Struct_2;

var<private> global4: Struct_2;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<bool>, arg_2: vec2<f32>) -> vec2<u32> {
    var var_0 = global4.d.d;
    var var_1 = false;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(34932u, 1u)]));
    var var_3 = Struct_3(global4.d, _wgslsmith_dot_vec3_i32(~_wgslsmith_mod_vec3_i32(min(u_input.c, vec3<i32>(1i, 10080i, -32061i)), ~vec3<i32>(-49928i, -35177i, global4.d.d)), u_input.c), u_input.d.zxy, Struct_1(~global3.d.a, all(select(global4.a, global3.a, global4.c)) && arg_1.x, 1319f, arg_0.x, false), global4.b);
    var_1 = false;
    return countOneBits(countOneBits(vec2<u32>(~4294967295u, 0u))) ^ ~firstLeadingBit(var_3.e.a);
}

fn func_2() -> vec4<bool> {
    var var_0 = Struct_2(global3.c, Struct_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 71768u), _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(37208u, 4294967295u), vec2<u32>(22448u, global4.b.a.x)), global4.b.a << (u_input.d.wx % vec2<u32>(32u))), vec2<u32>(~1u, max(46962u, 53419u))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global4.e.x, global4.d.c))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -295f)), _wgslsmith_f_op_f32(abs(651f)), abs(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(func_3(global2.zy, vec2<bool>(true, false), vec2<f32>(-1995f, 816f)), global3.d.a), 18u)]), global4.d.b), !(!global3.c), global3.d, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.e.x, _wgslsmith_f_op_f32(-967f * global3.d.c), -313f)) - global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(~57422u, _wgslsmith_mult_u32(u_input.b.x, global3.b.a.x), 3269u), 52879u), 1u)]));
    global2 = -_wgslsmith_add_vec3_i32(u_input.c, countOneBits(_wgslsmith_div_vec3_i32(u_input.c, -vec3<i32>(-66624i, 34264i, 0i))));
    var var_1 = any(!global3.a);
    let var_2 = -1474f;
    global3 = Struct_2(select(select(select(vec4<bool>(global3.d.e, var_0.d.e, global4.b.e, global3.a.x), !global4.c, var_0.a.x), !(!vec4<bool>(false, true, false, global3.d.b)), vec4<bool>(true | global3.a.x, !global4.a.x, global4.c.x, all(var_0.c.xz))), var_0.a, !(_wgslsmith_div_f32(-698f, var_0.d.c) > _wgslsmith_f_op_f32(step(global4.b.c, global4.e.x)))), Struct_1(_wgslsmith_div_vec2_u32(global3.b.a, abs(u_input.d.zz) << (select(vec2<u32>(1u, var_0.d.a.x), global3.d.a, global4.a.ww) % vec2<u32>(32u))), all(select(!global3.a.yx, !global3.a.xx, var_0.c.yz)), _wgslsmith_div_f32(global4.e.x, _wgslsmith_f_op_f32(563f - _wgslsmith_f_op_f32(-var_0.e.x))), _wgslsmith_sub_i32(-global4.b.d | var_0.d.d, -75448i), any(var_0.c)), !vec4<bool>(global3.a.x, true, global4.b.a.x != ~4294967295u, false), global4.b, global1[_wgslsmith_index_u32(global3.b.a.x, 1u)]);
    return select(select(select(global3.a, vec4<bool>(!var_0.c.x, any(global4.a), false, any(vec3<bool>(global4.a.x, true, false))), select(var_0.a, var_0.a, true & global4.d.e)), !global4.c, vec4<bool>(!all(vec2<bool>(false, global4.a.x)), global3.b.e, global3.d.b, var_0.c.x)), !var_0.c, global4.b.e);
}

fn func_1(arg_0: vec2<i32>) -> Struct_2 {
    global3 = Struct_2(vec4<bool>(global3.a.x, any(global4.a.yw), all(select(func_2(), !global4.c, true)), false), global3.b, !select(global4.c, vec4<bool>(false, u_input.b.x <= global4.b.a.x, global3.a.x, global3.b.d > -36966i), vec4<bool>(global4.c.x, true, any(vec4<bool>(true, true, true, true)), any(vec2<bool>(global4.a.x, false)))), Struct_1(_wgslsmith_div_vec2_u32(vec2<u32>(0u, global4.b.a.x), u_input.d.xy), _wgslsmith_f_op_f32(ceil(1f)) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(-757f * -1010f), global3.b.c), _wgslsmith_f_op_f32(abs(-1752f)), -9082i >> (global3.b.a.x % 32u), global3.c.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global3.d.c), _wgslsmith_f_op_f32(-480f * 1000f), _wgslsmith_f_op_f32(min(global3.b.c, 566f))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(global4.e, vec3<f32>(-677f, global3.b.c, 320f))))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(146f, global4.e.x, 1505f)), _wgslsmith_div_vec3_f32(global4.e, vec3<f32>(global4.b.c, global4.e.x, global4.e.x))), vec3<f32>(_wgslsmith_f_op_f32(global4.d.c - 1032f), -1000f, 727f), func_2().zxw))));
    let var_0 = Struct_1(abs(~u_input.d.xx & _wgslsmith_mod_vec2_u32(~u_input.b, vec2<u32>(global4.b.a.x, 4294967295u))), global4.b.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-298f, global3.d.c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.b.c - 1157f) - global3.b.c)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(2147f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1166f + -446f), -483f))))), _wgslsmith_mod_i32(-2147483647i, u_input.c.x), any(global4.c));
    var var_1 = _wgslsmith_mod_u32(_wgslsmith_sub_u32(~(u_input.b.x & global3.b.a.x), ~(var_0.a.x >> (u_input.b.x % 32u))), ~_wgslsmith_mod_u32(countOneBits(1u), var_0.a.x | var_0.a.x)) | func_3(max(reverseBits(vec2<i32>(-69938i, 1i)), vec2<i32>(-var_0.d, -1i)), select(func_2().wy, func_2().yx, select(global3.c.yw, !vec2<bool>(global4.b.b, true), true)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-716f, 783f) * _wgslsmith_f_op_f32(1123f - 732f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global4.d.c))))).x;
    return Struct_2(!vec4<bool>(any(global3.a), any(select(vec2<bool>(false, true), global4.a.yy, true)), true, _wgslsmith_f_op_f32(min(311f, var_0.c)) <= global3.b.c), Struct_1(select(global4.d.a, _wgslsmith_div_vec2_u32(~vec2<u32>(21919u, global3.d.a.x), var_0.a | global3.b.a), vec2<bool>(true, true)), all(select(global4.a.zxw, global4.c.wxz, global3.c.xww)) | global4.c.x, 1000f, -1i, true), select(vec4<bool>(false, true, any(func_2().zxy), var_0.e), vec4<bool>(!global4.b.b, false, true, 0u < (global4.b.a.x ^ 12964u)), func_2()), var_0, vec3<f32>(global4.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) - _wgslsmith_f_op_f32(sign(-2477f))), global4.b.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 607f;
    var var_1 = global3.e.x;
    let var_2 = func_1(vec2<i32>(reverseBits(u_input.c.x), _wgslsmith_sub_i32(0i, firstLeadingBit(-5375i))));
    var var_3 = any(select(!vec4<bool>(var_2.c.x, true, var_2.b.b && global3.d.b, false), vec4<bool>(!global3.a.x, global3.e.x == global4.d.c, global4.d.b, true && (global4.b.b & global4.d.e)), select(global3.a, vec4<bool>(all(vec2<bool>(true, true)), !global4.a.x, any(vec2<bool>(true, true)), all(var_2.c)), select(!vec4<bool>(global4.a.x, true, false, false), global4.c, false))));
    var var_4 = vec2<bool>(var_2.d.b & false, !global3.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_div_i32(global0[_wgslsmith_index_u32(u_input.b.x, 18u)], ~global4.b.d), _wgslsmith_div_i32(-1i, global0[_wgslsmith_index_u32(21788u, 18u)]), 2147483647i));
}

