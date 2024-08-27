struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 19> = array<vec2<i32>, 19>(vec2<i32>(0i, 23265i), vec2<i32>(-9060i, 2147483647i), vec2<i32>(-1011i, 1i), vec2<i32>(-2051i, 53581i), vec2<i32>(714i, -11869i), vec2<i32>(4796i, i32(-2147483648)), vec2<i32>(-28870i, 15745i), vec2<i32>(0i, -24390i), vec2<i32>(2147483647i, 0i), vec2<i32>(0i, 2147483647i), vec2<i32>(4622i, -24199i), vec2<i32>(45357i, 1i), vec2<i32>(-1i, -294i), vec2<i32>(-17934i, 0i), vec2<i32>(-55191i, -6863i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(2147483647i, 0i), vec2<i32>(-31643i, 15610i), vec2<i32>(-21917i, 10i));

var<private> global1: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(-1480f, -15493i, vec4<i32>(26566i, 0i, -61650i, i32(-2147483648))), Struct_1(319f, -12649i, vec4<i32>(51024i, -22037i, 7030i, 2147483647i)), Struct_1(324f, -930i, vec4<i32>(-1i, -55144i, 4337i, -24349i)));

var<private> global2: bool;

var<private> global3: array<vec2<i32>, 32>;

var<private> global4: array<i32, 1> = array<i32, 1>(-30637i);

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3() -> f32 {
    let var_0 = vec3<u32>(u_input.b.x, firstLeadingBit(_wgslsmith_sub_u32(~u_input.b.x, _wgslsmith_sub_u32(4294967295u, 81170u))) & 85593u, abs(~abs(_wgslsmith_mult_u32(u_input.b.x, 33030u))));
    let var_1 = _wgslsmith_mod_vec3_i32(u_input.d.wyx, _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(u_input.c, u_input.c ^ u_input.c), _wgslsmith_mod_vec3_i32(~vec3<i32>(0i, 1i, 19011i), _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.d.zyy, vec3<i32>(-2147483647i, u_input.d.x, global4[_wgslsmith_index_u32(47676u, 1u)])), vec3<i32>(1i, -6828i, -2147483647i), -u_input.d.zzx))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -755f) + _wgslsmith_div_f32(136f, -389f))));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec4<f32>, arg_3: vec3<f32>) -> vec2<bool> {
    return vec2<bool>(false, !any(select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(false, false), true)));
}

fn func_2(arg_0: u32) -> Struct_1 {
    global2 = any(func_4(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -682f), ~_wgslsmith_div_i32(-2147483647i, -43147i), vec4<i32>(u_input.c.x | global4[_wgslsmith_index_u32(arg_0, 1u)], _wgslsmith_add_i32(44168i, -5940i), 0i, min(global4[_wgslsmith_index_u32(20221u, 1u)], 34633i))), arg_0, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -150f), _wgslsmith_f_op_f32(934f + 1618f), _wgslsmith_div_f32(2112f, -345f), _wgslsmith_f_op_f32(func_3())) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -550f), _wgslsmith_div_f32(592f, -1620f), _wgslsmith_f_op_f32(1000f * 1614f), _wgslsmith_f_op_f32(select(878f, -732f, false)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1204f, 2131f, 284f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1254f, -244f, 2068f)))))));
    var var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), reverseBits(~(~u_input.c.x)), u_input.d);
    var var_1 = vec4<i32>(-(var_0.c.x >> (43286u % 32u)), -1i, (_wgslsmith_add_i32(-u_input.a, ~2147483647i) & 18371i) << (u_input.b.x % 32u), -1i);
    return Struct_1(_wgslsmith_div_f32(var_0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(f32(-1f) * -1073f)), var_0.a)), abs(var_0.b), vec4<i32>(~(-var_1.x), _wgslsmith_div_i32(global4[_wgslsmith_index_u32(~8209u, 1u)] ^ _wgslsmith_div_i32(1i, var_1.x), var_1.x), var_0.c.x >> (arg_0 % 32u), i32(-1i) * -var_0.c.x));
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    global2 = any(!vec2<bool>(all(vec3<bool>(false, true, true)), false)) & true;
    var var_0 = func_2(firstTrailingBit(((u_input.b.x | 105191u) | _wgslsmith_mult_u32(u_input.b.x, u_input.b.x)) << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), ~vec3<u32>(4294967295u, u_input.b.x, u_input.b.x)) % 32u)));
    let var_1 = vec4<u32>(_wgslsmith_sub_u32(min(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 28962u, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, 61624u)), ~2459u), u_input.b.x), ~1u), 23070u, u_input.b.x, firstTrailingBit(_wgslsmith_add_u32(0u, u_input.b.x)));
    global3 = array<vec2<i32>, 32>();
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-185f, var_0.a)) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-2595f, 1000f), vec2<f32>(869f, 351f)))))))) * vec2<f32>(_wgslsmith_div_f32(522f, _wgslsmith_f_op_f32(round(-1000f))), -1119f));
    return Struct_1(-475f, _wgslsmith_mod_i32(_wgslsmith_sub_i32(countOneBits(global4[_wgslsmith_index_u32(53410u, 1u)]), var_0.c.x) | 0i, global4[_wgslsmith_index_u32(1u, 1u)]), abs(firstTrailingBit(vec4<i32>(-2147483647i, firstTrailingBit(13620i), -2147483647i | global4[_wgslsmith_index_u32(1u, 1u)], u_input.d.x & arg_1.b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(u_input.b.zxz);
    var var_1 = ~(~2147483647i);
    var var_2 = 87347u;
    let var_3 = func_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -320f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(324f - -1298f))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-765f - 837f)))), -_wgslsmith_dot_vec2_i32(~global0[_wgslsmith_index_u32(1u, 19u)], u_input.c.yz ^ global0[_wgslsmith_index_u32(4601u, 19u)]), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, -9673i), global0[_wgslsmith_index_u32(var_0.x, 19u)]), 2147483647i << (0u % 32u), min(u_input.c.x, 0i), _wgslsmith_add_i32(-1i, -1i)) & u_input.d));
    let var_4 = max(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, u_input.b.x, var_0.x, u_input.b.x)), u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(20305u, 4294967295u, var_0.x, u_input.b.x), vec4<u32>(13239u, u_input.b.x, 46305u, 8974u)), ~u_input.b.x) >> (_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.b, u_input.b, vec4<u32>(31581u, var_0.x, 52799u, var_0.x)), u_input.b) % vec4<u32>(32u)), u_input.b), _wgslsmith_dot_vec4_u32(u_input.b, _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(0u, var_0.x, var_0.x, 43782u), u_input.b), u_input.b)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(var_3.b >> (1u % 32u), -1i), -38374i);
}

