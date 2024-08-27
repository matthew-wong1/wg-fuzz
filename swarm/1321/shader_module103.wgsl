struct Struct_1 {
    a: i32,
    b: u32,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec2<f32>,
    d: vec4<bool>,
    e: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: vec2<bool>,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec3<f32>;

var<private> global2: vec3<u32> = vec3<u32>(10451u, 17198u, 10978u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3() -> vec4<u32> {
    let var_0 = -1267f;
    var var_1 = min(countOneBits(abs(_wgslsmith_mod_vec2_i32(vec2<i32>(23472i, -39484i), abs(vec2<i32>(u_input.b, u_input.b))))), global0.a.wz);
    var var_2 = 1367f >= _wgslsmith_f_op_f32(select(global0.b.x, -1129f, true));
    let var_3 = Struct_4(Struct_3(global0.b, -19305i, Struct_1(1i >> (1u % 32u), ~_wgslsmith_mult_u32(global0.e, 1u), global1.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(var_0)))))), global0.d.x, !select(select(select(global0.d.zw, global0.d.xw, global0.d.yw), !global0.d.xy, !global0.d.x), select(select(vec2<bool>(false, global0.d.x), global0.d.zw, true), !global0.d.zx, vec2<bool>(global0.d.x, global0.d.x)), all(!vec3<bool>(global0.d.x, global0.d.x, global0.d.x))), true);
    let var_4 = abs(min(var_3.a.c.a, 36149i));
    return _wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(var_3.a.c.b << (0u % 32u), _wgslsmith_mult_u32(0u, 0u), ~u_input.c, abs(52179u)) << (firstTrailingBit(vec4<u32>(u_input.a.x, 47146u, global2.x, 16690u)) % vec4<u32>(32u))), firstTrailingBit(reverseBits(vec4<u32>(global0.e, global2.x, global2.x, 0u) << ((vec4<u32>(var_3.a.c.b, 19509u, u_input.c, var_3.a.c.b) | vec4<u32>(0u, 0u, var_3.a.c.b, 74641u)) % vec4<u32>(32u)))), firstLeadingBit(vec4<u32>(1u, ~global2.x & (u_input.a.x >> (u_input.c % 32u)), u_input.c, ~u_input.a.x)));
}

fn func_2() -> Struct_4 {
    var var_0 = func_3();
    return Struct_4(Struct_3(global0.b, 50057i, Struct_1(_wgslsmith_mod_i32(-2147483647i, max(0i, 2147483647i)), 4294967295u, -335f, global0.b.x)), all(global0.d.xy), select(global0.d.yx, select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), global0.d.x), global0.d.yw, true), select(select(global0.d.xw, global0.d.wy, global0.d.xz), global0.d.zx, any(global0.d)), !(global0.e >= global2.x)), select(!global0.d.x, all(vec3<bool>(global0.d.x, false, false)), 0u < u_input.a.x)), global0.d.x);
}

fn func_1(arg_0: vec3<f32>, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    global1 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(395f + arg_2.d)), -324f, _wgslsmith_f_op_f32(874f * global0.c.x))));
    let var_0 = func_2();
    let var_1 = ~(~vec2<u32>(~1u, _wgslsmith_sub_u32(var_0.a.c.b, ~4294967295u)));
    let var_2 = Struct_2(firstTrailingBit(vec4<i32>(_wgslsmith_mod_i32(-1i, u_input.d), 21740i, select(_wgslsmith_clamp_i32(-16312i, var_0.a.c.a, 3722i), 21319i, true), global0.a.x ^ 0i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(515f, arg_0.x), arg_0.x, -365f))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.a.c.d, _wgslsmith_f_op_f32(-333f + arg_0.x))) * -588f), _wgslsmith_f_op_f32(min(-297f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-150f - arg_2.d), -480f)))), vec4<bool>(var_0.b, var_0.c.x, any(global0.d.wyw), !(_wgslsmith_add_u32(51381u, 0u) <= u_input.c)), 30764u);
    var var_3 = var_0;
    return func_2().a.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(sign(global0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + global1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -396f) - global1.x)), reverseBits(_wgslsmith_mult_i32(51311i, min(~(-28115i), ~global0.a.x))), func_1(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(round(global0.b.x)), _wgslsmith_f_op_f32(select(global1.x, global1.x, global0.d.x)), _wgslsmith_f_op_f32(f32(-1f) * -1207f)))), global0.e, Struct_1(_wgslsmith_div_i32(0i, 1i), 1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1288f + global0.c.x) - _wgslsmith_f_op_f32(-1000f * -929f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) * _wgslsmith_f_op_f32(exp2(global1.x))))));
    global2 = ~_wgslsmith_add_vec3_u32(~min(~vec3<u32>(var_0.c.b, global0.e, 71746u), reverseBits(vec3<u32>(u_input.a.x, global0.e, var_0.c.b))), abs(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 4294967295u, 20713u), vec3<u32>(1u, global2.x, 16711u)) >> (_wgslsmith_div_vec3_u32(vec3<u32>(33611u, 4294967295u, 0u), vec3<u32>(36822u, global0.e, global0.e)) % vec3<u32>(32u))));
    var var_1 = _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.a.x))));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -986f) != global0.c.x;
    var var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(var_0.a + vec3<f32>(-520f, global1.x, 576f))))))), _wgslsmith_sub_i32(-abs(i32(-1i) * -47293i), _wgslsmith_add_i32(-2147483647i, _wgslsmith_mod_i32(-u_input.b, -15962i))), var_0.c);
    global1 = _wgslsmith_f_op_vec3_f32(global0.b + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1.x, _wgslsmith_f_op_f32(floor(global1.x)), var_3.a.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(541f, var_3.a.x, -1501f)) * _wgslsmith_f_op_vec3_f32(global0.b - vec3<f32>(var_3.c.c, var_0.a.x, global1.x))))))));
    let x = u_input.a;
    s_output = StorageBuffer(86680u, vec2<u32>(21911u, var_3.c.b));
}

