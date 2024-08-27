struct Struct_1 {
    a: vec4<f32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: vec4<f32>,
    d: i32,
}

struct Struct_5 {
    a: i32,
    b: f32,
    c: vec2<f32>,
    d: vec3<u32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 12>;

var<private> global1: Struct_1 = Struct_1(vec4<f32>(754f, 1000f, -1051f, -1515f), vec4<bool>(false, true, true, false));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2) -> vec4<f32> {
    let var_0 = arg_0.a.a.x;
    let var_1 = _wgslsmith_f_op_f32(round(-310f));
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-974f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) * _wgslsmith_f_op_f32(-var_1)))), global1.a.x, _wgslsmith_f_op_f32(-541f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.a.x, -361f, arg_0.a.b.x)) * _wgslsmith_f_op_f32(-global1.a.x)), _wgslsmith_f_op_f32(-var_1), all(arg_0.a.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(max(-210f, var_0))))));
}

fn func_2(arg_0: vec3<f32>) -> vec4<bool> {
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + arg_0.x)), _wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.x))), _wgslsmith_f_op_f32(-353f * global1.a.x))), !(!vec4<bool>(select(global1.b.x, global1.b.x, false), global1.b.x, false, !global1.b.x)));
    global0 = array<i32, 12>();
    global0 = array<i32, 12>();
    var var_0 = -_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 12u)], 2147483647i, -44354i), u_input.b) ^ vec3<i32>(global0[_wgslsmith_index_u32(49036u, 12u)], global0[_wgslsmith_index_u32(4294967295u, 12u)], u_input.b.x), -vec3<i32>(27237i, global0[_wgslsmith_index_u32(3283u, 12u)], -50208i)), _wgslsmith_clamp_vec3_i32(-u_input.b, u_input.b >> (vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) % vec3<u32>(32u)), vec3<i32>(0i, 2147483647i, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), u_input.a.zz), 12u)])));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(func_3(Struct_2(Struct_1(vec4<f32>(-334f, 305f, arg_0.x, arg_0.x), global1.b), 21777u))))), select(vec4<bool>(any(vec2<bool>(true, global1.b.x)), all(vec4<bool>(global1.b.x, false, global1.b.x, global1.b.x)), all(global1.b), true), global1.b, select(select(true, false, global1.b.x), global1.b.x, u_input.a.x <= 43902u))), ~u_input.a.x);
    return select(vec4<bool>(all(!var_1.a.b.xw), var_1.a.b.x, global1.b.x & false, !any(vec3<bool>(true, var_1.a.b.x, false))), global1.b, true);
}

fn func_1() -> i32 {
    var var_0 = max(_wgslsmith_sub_vec4_u32(~select(vec4<u32>(0u, u_input.a.x, 28534u, 0u) >> (vec4<u32>(u_input.a.x, 55237u, 66563u, u_input.a.x) % vec4<u32>(32u)), ~vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x), func_2(vec3<f32>(global1.a.x, global1.a.x, global1.a.x))), vec4<u32>(max(max(u_input.a.x, u_input.a.x), _wgslsmith_clamp_u32(u_input.a.x, 15795u, 1u)), ~u_input.a.x, ~(u_input.a.x & u_input.a.x), ~_wgslsmith_mult_u32(u_input.a.x, 4294967295u))), vec4<u32>(_wgslsmith_dot_vec2_u32(~u_input.a.zx, u_input.a.yz << (vec2<u32>(u_input.a.x, 57479u) % vec2<u32>(32u))), 1u, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(11393u, 63205u), 4294967295u, ~4294967295u), max(u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x))) ^ vec4<u32>(_wgslsmith_clamp_u32(0u, u_input.a.x, _wgslsmith_clamp_u32(30455u, 4294967295u, 11271u)), ~_wgslsmith_mult_u32(0u, u_input.a.x), 5938u, u_input.a.x));
    var_0 = ~(~(~min(vec4<u32>(0u, var_0.x, u_input.a.x, 0u), vec4<u32>(94862u, var_0.x, 28836u, 19521u))));
    var_0 = vec4<u32>(var_0.x, (firstTrailingBit(_wgslsmith_dot_vec3_u32(u_input.a, u_input.a)) >> (34639u % 32u)) & 4294967295u, var_0.x, 4294967295u);
    let var_1 = var_0.xxy;
    global0 = array<i32, 12>();
    return ~15525i | -u_input.b.x;
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: vec3<f32>, arg_3: vec3<f32>) -> Struct_3 {
    var var_0 = vec4<i32>(_wgslsmith_mod_i32(-arg_1, _wgslsmith_dot_vec3_i32(vec3<i32>(-arg_1, abs(global0[_wgslsmith_index_u32(arg_0, 12u)]), func_1()), u_input.b)), 2147483647i, reverseBits(1i), abs(_wgslsmith_add_i32(-1i, ~arg_1)));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-global1.a), vec4<bool>(true, all(!vec2<bool>(global1.b.x, global1.b.x)), false, global1.b.x)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(arg_0, 24189u), _wgslsmith_sub_u32(u_input.a.x, u_input.a.x)), ~vec2<u32>(arg_0, arg_0)), ~_wgslsmith_clamp_u32(arg_0, arg_0 ^ u_input.a.x, arg_0), arg_0));
    var var_2 = any(!vec2<bool>(select(func_2(arg_3).x, false, false), all(global1.b.wz)));
    let var_3 = 29118u;
    let var_4 = func_2(global1.a.zxx);
    return Struct_3(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(1407f, -790f)))), global1.a.x, _wgslsmith_f_op_f32(max(arg_3.x, _wgslsmith_f_op_f32(arg_3.x + arg_2.x))), _wgslsmith_f_op_f32(min(arg_2.x, 1126f))), select(vec4<bool>(var_1.a.b.x, any(var_1.a.b.zyw), false, global1.b.x), vec4<bool>(true, var_4.x, !var_1.a.b.x, true), vec4<bool>(!global1.b.x, all(vec3<bool>(var_4.x, false, true)), func_2(vec3<f32>(global1.a.x, arg_3.x, 1000f)).x, global1.b.x))), Struct_2(var_1.a, _wgslsmith_sub_u32(~1u, 72421u)), var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 12>();
    var var_0 = func_4(~68572u, func_1(), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(751f, global1.a.x, -1284f), global1.a.wwy, global1.b.yzw)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.a.yxz) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global1.a.zyw, vec3<f32>(global1.a.x, global1.a.x, 2312f)))));
    var var_1 = Struct_3(func_4(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 69015u), 7795i, global1.a.xxw, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.x + 549f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(var_0.a.a.x)))), 136f)).a, var_0.b, var_0.c);
    let var_2 = !global1.b.x;
    let var_3 = all(vec4<bool>(all(var_0.c.b.yz), var_2, true, !all(global1.b))) == true;
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.x - var_1.b.a.a.x) - _wgslsmith_f_op_f32(f32(-1f) * -1004f)), _wgslsmith_f_op_f32(-1352f * _wgslsmith_f_op_f32(min(-566f, _wgslsmith_f_op_f32(-global1.a.x))))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.a.a.x * var_0.b.a.a.x)))));
    var var_5 = -select(_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(12702i, global0[_wgslsmith_index_u32(4294967295u, 12u)], 21405i) << (u_input.a % vec3<u32>(32u)), u_input.b), -vec3<i32>(global0[_wgslsmith_index_u32(var_0.b.b, 12u)], u_input.b.x, 1i)), u_input.b, all(global1.b));
    let var_6 = vec4<f32>(-1000f, 1795f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.a.x + 109f))))), _wgslsmith_f_op_f32(270f + global1.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.a) + _wgslsmith_f_op_vec4_f32(global1.a * _wgslsmith_f_op_vec4_f32(-vec4<f32>(379f, var_6.x, 2839f, -348f)))), -1i, reverseBits(u_input.b), 61437u);
}

