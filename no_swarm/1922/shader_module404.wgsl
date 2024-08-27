struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec2<i32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<u32>,
    c: vec2<f32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec2<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: i32) -> i32 {
    var var_0 = -927f;
    var_0 = _wgslsmith_f_op_f32(min(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1119f, -501f)) - arg_0) - arg_0)));
    return abs(firstTrailingBit(u_input.e.x));
}

fn func_2() -> u32 {
    let var_0 = 2075f;
    var var_1 = u_input.e.xx;
    var_1 = vec2<i32>(func_3(_wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -199f) + _wgslsmith_f_op_f32(-var_0))), i32(-1i) * -1i), ~2147483647i);
    var var_2 = all(vec2<bool>(all(vec2<bool>(true, false)), true | !any(vec2<bool>(true, false))));
    var_2 = true;
    return 11431u;
}

fn func_1() -> Struct_1 {
    var var_0 = func_2();
    var_0 = _wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.a.x, 5887u, u_input.d.x), u_input.b.x);
    var var_1 = vec4<i32>(abs(_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.c, -28469i), u_input.e.zy)), min(-firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-27893i, u_input.e.x, -23879i), vec3<i32>(u_input.c, -1i, u_input.e.x))), -min(_wgslsmith_add_i32(u_input.e.x, u_input.e.x), u_input.c)), min(reverseBits(1i ^ select(u_input.e.x, u_input.e.x, true)), 2147483647i), abs(u_input.c));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(2073f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -513f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-209f - -702f), -1325f))))), ~(-1i), Struct_1(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1334f, 454f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-946f, -476f, -630f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(339f, 612f, 919f))))), select(firstTrailingBit(select(u_input.e.yy, var_1.wx, false)), ~u_input.e.xy | var_1.zx, select(select(vec2<bool>(true, true), vec2<bool>(false, false), false), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, false))), vec4<bool>(all(vec3<bool>(true, true, true)), u_input.e.x < u_input.c, any(vec2<bool>(true, true)), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1705f, 518f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1729f, -266f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-840f, 1309f)))))));
    var var_3 = 4294967295u;
    return var_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = vec2<bool>(var_0.e.x, false);
    var var_2 = Struct_1(select(var_0.e, var_0.a, vec4<bool>(var_1.x & var_1.x, var_1.x, !all(vec3<bool>(var_1.x, var_1.x, true)), var_0.e.x)), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(237f, -374f), var_0.b.x, u_input.d.x <= u_input.d.x)))), func_1().b.x, _wgslsmith_f_op_f32(1665f * _wgslsmith_f_op_f32(round(-410f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(var_0.b, _wgslsmith_f_op_vec3_f32(-func_1().c))) * _wgslsmith_f_op_vec3_f32(-func_1().c)), ~select(var_0.d, _wgslsmith_clamp_vec2_i32(-u_input.e.xx, u_input.e.yx, select(vec2<i32>(-10547i, -8672i), vec2<i32>(var_0.d.x, 21871i), true)), true), vec4<bool>(select(!var_1.x, false, true), false, false, !func_1().e.x));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1566f, -1010f))), (i32(-1i) * -_wgslsmith_mult_i32(20647i, -53926i)) & var_2.d.x, Struct_1(select(!(!vec4<bool>(var_0.e.x, var_0.e.x, var_0.e.x, var_2.a.x)), var_0.e, !vec4<bool>(var_0.e.x, var_1.x, var_1.x, true)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x - var_2.c.x)), var_2.c.x, var_0.c.x), var_2.b, vec2<i32>(u_input.c, _wgslsmith_dot_vec2_i32(-var_0.d, -var_0.d)), var_0.a), var_2.c.yy);
    var var_4 = Struct_3(_wgslsmith_sub_i32(select(-_wgslsmith_dot_vec3_i32(u_input.e, vec3<i32>(var_3.c.d.x, var_2.d.x, var_0.d.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(20865i, 52279i, var_0.d.x), -u_input.e), true), 53147i), u_input.d.yyw << (u_input.d.wyz % vec3<u32>(32u)), var_0.b.xx, _wgslsmith_add_vec3_u32(~firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, u_input.a.x), vec3<u32>(101290u, 0u, 0u))), ~min(vec3<u32>(20429u, 29864u, u_input.d.x), u_input.d.xww)));
    let var_5 = Struct_2(_wgslsmith_f_op_f32(floor(586f)), _wgslsmith_dot_vec4_i32(~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.e.x, var_4.a, u_input.c, 0i), vec4<i32>(2147483647i, var_4.a, 0i, -28324i)) | -vec4<i32>(-7541i, u_input.e.x, u_input.e.x, u_input.e.x), ~firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, 11574i, u_input.e.x, var_2.d.x), vec4<i32>(-64685i, -24852i, u_input.e.x, 1i)))), func_1(), vec2<f32>(403f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-func_1().b.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(var_0.c.x)), _wgslsmith_div_f32(var_0.c.x, -1090f))), !all(var_2.e)))));
    let x = u_input.a;
    s_output = StorageBuffer(~4294967295u, -reverseBits(~abs(vec2<i32>(17651i, var_3.c.d.x))), func_2(), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -824f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(354f, var_5.a, false)))), vec2<f32>(_wgslsmith_f_op_f32(-var_5.c.b.x), var_2.b.x)), var_4.d.yy);
}

