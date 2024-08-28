struct Struct_1 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: f32,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec3<i32>;

var<private> global2: vec4<bool>;

var<private> global3: Struct_1;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: bool, arg_3: i32) -> i32 {
    var var_0 = vec4<f32>(global3.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-664f, arg_1.a.b, select(true, all(global2.zyw), global2.x || false)))), -1025f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(arg_1.b.b)), _wgslsmith_f_op_f32(-1f))));
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-885f + 1000f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x * global3.b), global3.b))))));
    var var_2 = global1.zz;
    var var_3 = global1.x;
    return _wgslsmith_add_i32(41379i, abs(-14179i));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> u32 {
    global1 = -(_wgslsmith_add_vec3_i32(vec3<i32>(global1.x, global1.x, -28347i << (global3.a.x % 32u)), vec3<i32>(global1.x, 1i, abs(52744i))) ^ (reverseBits(firstLeadingBit(vec3<i32>(-1i, 0i, -1i))) | ~(vec3<i32>(-30626i, global1.x, global1.x) << (vec3<u32>(36933u, 4330u, u_input.a.x) % vec3<u32>(32u)))));
    var var_0 = arg_0;
    var_0 = arg_2;
    let var_1 = Struct_2(Struct_1(((arg_0.a & vec4<u32>(27488u, arg_0.a.x, 19970u, 1u)) << (~vec4<u32>(4294967295u, 1u, 16019u, u_input.a.x) % vec4<u32>(32u))) >> (firstLeadingBit(max(vec4<u32>(arg_0.a.x, var_0.a.x, 4294967295u, 62815u), vec4<u32>(1u, u_input.a.x, arg_0.a.x, var_0.a.x))) % vec4<u32>(32u)), arg_2.b), arg_2, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1681f, -434f, 288f) - vec3<f32>(arg_0.b, 572f, -478f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, 827f, 911f) * vec3<f32>(var_0.b, -1103f, arg_2.b))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1002f, -2379f, -1000f)), vec3<f32>(global3.b, -806f, arg_2.b))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(var_0.b)), _wgslsmith_f_op_f32(round(774f)), 1258f) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global3.b, global3.b, -2751f), vec3<f32>(1707f, global3.b, -1383f))))))), arg_2.b);
    var var_2 = _wgslsmith_mult_vec3_u32(abs(min(global3.a.wyz, countOneBits(~var_0.a.wwz))), vec3<u32>(~(arg_2.a.x | 32004u) << (~864u % 32u), global3.a.x, 68720u));
    return global3.a.x;
}

fn func_2(arg_0: vec2<i32>) -> Struct_1 {
    var var_0 = ~global3.a.zzw;
    var var_1 = vec2<u32>(u_input.a.x, var_0.x);
    var var_2 = ~vec2<u32>(~0u << ((~global3.a.x >> (var_0.x % 32u)) % 32u), min(var_0.x, _wgslsmith_add_u32(firstTrailingBit(1u), func_3(Struct_1(vec4<u32>(u_input.a.x, 36941u, 4294967295u, u_input.a.x), 217f), global2.x, Struct_1(global3.a, global3.b)))));
    return Struct_1(global3.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global3.b)) * global3.b)))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> f32 {
    let var_0 = 2147483647i ^ _wgslsmith_add_i32(global1.x, -59462i);
    global2 = !select(select(vec4<bool>(true, all(global2.xx), any(vec2<bool>(global2.x, global2.x)), global2.x), vec4<bool>(true, global2.x, -17624i != var_0, true), !vec4<bool>(true, global2.x, false, global2.x)), !(!vec4<bool>(global2.x, false, global2.x, global2.x)), true);
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-1000f * -948f), global3.b, _wgslsmith_f_op_f32(-arg_1.b), arg_0.b.b)));
    let var_2 = arg_0.d;
    let var_3 = -u_input.c & reverseBits(-_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, var_0), vec2<i32>(u_input.b, -1i) >> (arg_0.b.a.yy % vec2<u32>(32u))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.b));
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: bool, arg_3: vec4<u32>) -> vec4<bool> {
    var var_0 = Struct_2(func_2(vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(global1.x, global1.x, -26343i, 1i), vec4<i32>(u_input.b, -1i, u_input.b, 1i)), vec4<i32>(u_input.b, u_input.c.x, global1.x, u_input.c.x) | vec4<i32>(u_input.c.x, -23945i, -2147483647i, 2147483647i)), firstTrailingBit(i32(-1i) * -1i))), func_2(global1.xx), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1.b))), global3.b, _wgslsmith_f_op_f32(-global3.b))), 435f);
    var var_1 = Struct_1(vec4<u32>(_wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(arg_3.yyw, var_0.a.a.zyw), ~(var_0.a.a.x ^ u_input.a.x)), 1u, ~71447u, 7859u), 1000f);
    let var_2 = vec3<u32>(4294967295u, 4294967295u, reverseBits(~(~arg_3.x)) ^ 4799u);
    let var_3 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.b, -431f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(1325f))))))));
    global1 = -select(~_wgslsmith_clamp_vec3_i32(vec3<i32>(global1.x, -44273i, u_input.b), vec3<i32>(1i, u_input.c.x, -11131i), -vec3<i32>(1i, -7319i, 36319i)), vec3<i32>(_wgslsmith_sub_i32(abs(global1.x), u_input.b), -1i ^ _wgslsmith_mod_i32(u_input.b, -44233i), -48783i), !global2.zyy);
    return vec4<bool>(true, true, select(arg_3.x >= _wgslsmith_dot_vec2_u32(arg_1.a.zy, reverseBits(vec2<u32>(84015u, 1u))), global2.x, false), global2.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_clamp_u32(global3.a.x, u_input.a.x, 0u);
    global1 = -max(-vec3<i32>(_wgslsmith_sub_i32(global1.x, u_input.c.x), func_1(vec4<bool>(global2.x, global2.x, true, global2.x), Struct_2(Struct_1(vec4<u32>(global3.a.x, 1u, global3.a.x, 1432u), global3.b), Struct_1(global3.a, -1659f), vec3<f32>(global3.b, global3.b, global3.b), -2080f), false, global1.x), 0i & global1.x), vec3<i32>(1i & (u_input.c.x & -2147483647i), _wgslsmith_mod_i32(min(u_input.c.x, global1.x), _wgslsmith_dot_vec2_i32(vec2<i32>(global1.x, global1.x), global1.yy)), abs(-1i)));
    var var_1 = vec2<i32>(abs(-1i << (1u % 32u)), u_input.b);
    let var_2 = vec4<f32>(224f, global3.b, global3.b, -503f);
    global2 = func_5(_wgslsmith_f_op_f32(step(var_2.x, _wgslsmith_f_op_f32(func_4(Struct_2(Struct_1(vec4<u32>(1u, 24950u, global3.a.x, global3.a.x), -310f), func_2(vec2<i32>(var_1.x, u_input.c.x)), _wgslsmith_f_op_vec3_f32(abs(var_2.yzz)), var_2.x), func_2(u_input.c))))), func_2(~firstTrailingBit(_wgslsmith_clamp_vec2_i32(u_input.c, vec2<i32>(41975i, global1.x), global1.yy))), all(global2.yx), vec4<u32>(~u_input.a.x, 4294967295u, ~_wgslsmith_clamp_u32(firstLeadingBit(global3.a.x), firstLeadingBit(global3.a.x), 1u), 28633u));
    var_1 = _wgslsmith_mod_vec2_i32(min(global1.yx, -vec2<i32>(-1i, var_1.x)), vec2<i32>(~(~1250i), _wgslsmith_mult_i32(~var_1.x, max(-41611i, 2864i))) | -_wgslsmith_mult_vec2_i32(vec2<i32>(var_1.x, -14848i), global1.yz));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(1u, u_input.a.x, 57686u), ~(~global3.a), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.x))))))), _wgslsmith_f_op_f32(-268f * 1323f), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(global3.b)))) * -765f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(438f, -766f) + _wgslsmith_f_op_f32(f32(-1f) * -361f)))));
}

