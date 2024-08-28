struct Struct_1 {
    a: i32,
    b: i32,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<f32, 29> = array<f32, 29>(-1000f, -609f, 194f, 431f, 152f, -1152f, 108f, 137f, -1727f, 796f, 244f, 1000f, -1452f, -207f, 327f, -642f, 559f, -1283f, 1000f, 854f, -383f, 153f, -549f, 759f, 625f, -620f, -1482f, 855f, 103f);

var<private> global2: u32 = 10799u;

var<private> global3: bool = false;

var<private> global4: u32 = 9997u;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> f32 {
    let var_0 = select(true, false, true);
    var var_1 = !(!select(vec2<bool>(true, true), !(!vec2<bool>(var_0, true)), var_0));
    global3 = any(!(!(!(!vec2<bool>(var_0, true)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(193f, global1[_wgslsmith_index_u32(26665u, 29u)], global1[_wgslsmith_index_u32(global0.x, 29u)], -119f)), vec4<f32>(global1[_wgslsmith_index_u32(0u, 29u)], -883f, 689f, 1000f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1685f, global1[_wgslsmith_index_u32(u_input.c.x, 29u)], -310f, global1[_wgslsmith_index_u32(27042u, 29u)]))))))));
    var var_3 = select(select(vec2<bool>(var_0, any(select(vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(false, var_1.x, true), true))), select(vec2<bool>(true, true), vec2<bool>(true, false), true), true), select(!vec2<bool>(true, var_0), vec2<bool>(true, (0i & u_input.b) != 1i), vec2<bool>(var_1.x, all(vec2<bool>(false, false)))), select(!vec2<bool>(var_1.x && true, var_1.x || true), !select(select(vec2<bool>(var_0, false), vec2<bool>(var_1.x, var_0), true), vec2<bool>(var_0, var_1.x), var_1.x), (u_input.b <= _wgslsmith_mod_i32(u_input.b, u_input.b)) && false));
    return 1000f;
}

fn func_3(arg_0: Struct_4, arg_1: f32, arg_2: u32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(616f * _wgslsmith_f_op_f32(-arg_1));
    global3 = arg_0.a.c;
    var_0 = _wgslsmith_f_op_f32(step(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.a.d)))));
    global3 = any(vec4<bool>(true, true, all(select(!vec3<bool>(arg_0.a.c, false, true), vec3<bool>(false, false, false), !arg_0.a.c)), false));
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1364f)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-240f, arg_0.b.b)))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1242f)), arg_1);
}

fn func_1(arg_0: bool) -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 29u)]), global1[_wgslsmith_index_u32(countOneBits(global0.x), 29u)]))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(~u_input.a, 29u)], global1[_wgslsmith_index_u32(u_input.c.x, 29u)])))), _wgslsmith_f_op_f32(func_2()));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1067f, _wgslsmith_f_op_f32(func_3(Struct_4(Struct_1(0i, u_input.b, arg_0, global1[_wgslsmith_index_u32(u_input.c.x, 29u)]), Struct_2(vec2<f32>(global1[_wgslsmith_index_u32(global0.x, 29u)], global1[_wgslsmith_index_u32(19377u, 29u)]), -1728f), Struct_2(vec2<f32>(global1[_wgslsmith_index_u32(u_input.a, 29u)], global1[_wgslsmith_index_u32(u_input.c.x, 29u)]), 1790f)), _wgslsmith_f_op_f32(f32(-1f) * -305f), countOneBits(global0.x))))), -374f, -343f, var_0.a.x);
    let var_2 = Struct_3(vec4<i32>(~_wgslsmith_sub_i32(46232i, u_input.b), ~(max(0i, u_input.b) >> (u_input.a % 32u)), _wgslsmith_dot_vec4_i32(firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, -2147483647i, 2147483647i, 2147483647i), vec4<i32>(u_input.b, -77140i, u_input.b, u_input.b))), countOneBits(vec4<i32>(-1i, 1i, u_input.b, -2147483647i)) >> (u_input.e % vec4<u32>(32u))), u_input.b >> (min(~9325u, ~4294967295u) % 32u)), Struct_1(countOneBits(u_input.b), u_input.b, any(select(vec3<bool>(arg_0, true, false), !vec3<bool>(arg_0, arg_0, arg_0), !vec3<bool>(arg_0, arg_0, arg_0))), var_0.b));
    let var_3 = u_input.b;
    let var_4 = -1987f;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(true || any(vec4<bool>(any(vec2<bool>(true, false)), false, true, true)));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, -1184f))))) - vec2<f32>(-385f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(u_input.a, 29u)])) - _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(global0.x, 29u)], global1[_wgslsmith_index_u32(global0.x, 29u)]))), var_0.a.x)));
    var var_2 = u_input.e.xyw;
    var var_3 = Struct_5(_wgslsmith_clamp_vec4_i32(~firstTrailingBit(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b) << (vec4<u32>(0u, var_2.x, global0.x, u_input.a) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, u_input.b, 1i, u_input.b), vec4<i32>(u_input.b, u_input.b, -60839i, -24323i) | vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), _wgslsmith_div_vec4_i32(vec4<i32>(31334i, -30482i, u_input.b, 0i), vec4<i32>(u_input.b, 1i, -1i, 8176i))) ^ vec4<i32>(~(-1i), u_input.b, -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -48257i), vec2<i32>(u_input.b, u_input.b))), vec4<i32>(_wgslsmith_mult_i32(20168i & u_input.b, _wgslsmith_mod_i32(-3581i, 6946i)), ~(-1i), 0i, u_input.b)), select(!(!select(vec2<bool>(true, false), vec2<bool>(true, false), true)), select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, false))), !select(false, true, select(false, false, true))));
    let var_4 = !var_3.b;
    var_1 = var_0.a;
    var var_5 = vec2<bool>(var_3.b.x, !(var_3.b.x & !var_3.b.x) & false);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(select(vec2<u32>(4294967295u, 29827u), vec2<u32>(4294967295u, u_input.e.x), var_4) >> (~var_2.yx % vec2<u32>(32u)))), _wgslsmith_div_vec3_i32(~(~abs(var_3.a.wxz)), vec3<i32>(var_3.a.x, ~(i32(-1i) * -2147483647i), reverseBits(-5655i))), ~_wgslsmith_dot_vec2_u32(var_2.xz, u_input.c.yy));
}

