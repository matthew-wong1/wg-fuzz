struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec3<f32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, true);

var<private> global1: vec2<bool> = vec2<bool>(true, true);

var<private> global2: Struct_1 = Struct_1(vec4<bool>(false, false, true, false), -1i, vec3<f32>(-1000f, 1585f, -1134f), vec4<u32>(0u, 35732u, 4294967295u, 0u));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec3<f32>) -> vec3<bool> {
    global0 = arg_1.a.xyz;
    var var_0 = vec2<i32>(1i << (~arg_1.d.x % 32u), countOneBits(abs(4251i)) ^ (-(~arg_0) | -2113i));
    var var_1 = global2.c.x;
    var_1 = arg_2.x;
    var var_2 = reverseBits(vec4<i32>(-26853i, -14370i, countOneBits(64440i), 27988i));
    return !(!select(vec3<bool>(true, global2.d.x <= 4294967295u, global0.x), !arg_1.a.xyx, !(global2.a.x || global0.x)));
}

fn func_2() -> Struct_1 {
    global0 = !select(vec3<bool>(true, global1.x, _wgslsmith_f_op_f32(max(557f, 986f)) == global2.c.x), !vec3<bool>(all(global2.a.www), true, any(global2.a)), func_3(-1i, Struct_1(!vec4<bool>(global0.x, global0.x, false, global0.x), -u_input.b, global2.c, ~global2.d), _wgslsmith_f_op_vec3_f32(abs(global2.c))));
    var var_0 = ~_wgslsmith_sub_vec4_u32(global2.d, global2.d);
    var_0 = firstTrailingBit(global2.d);
    var var_1 = ~var_0.wzz;
    let var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(~global2.b, global2.b, global2.b, u_input.b), vec4<i32>(_wgslsmith_clamp_i32(abs(8951i), _wgslsmith_clamp_i32(u_input.a, u_input.c, 26810i), global2.b), 2147483647i, -33354i, ~u_input.c >> (global2.d.x % 32u))) >> ((4294967295u << (select(var_1.x, var_1.x, global1.x) % 32u)) % 32u);
    return Struct_1(vec4<bool>(true, global2.a.x, select(global0.x, true, global0.x || true), !all(vec2<bool>(global2.a.x, false))), global2.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global2.c.x, -121f, global2.c.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-926f, 1000f, global2.c.x) * vec3<f32>(1662f, global2.c.x, global2.c.x)))))), firstLeadingBit(~global2.d));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: i32) -> vec3<bool> {
    let var_0 = vec3<i32>(arg_1.a.b, arg_0.x, i32(-1i) * -arg_0.x);
    var var_1 = select(true, false, false);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c.x, _wgslsmith_f_op_f32(arg_1.a.c.x * -2053f), _wgslsmith_f_op_f32(max(arg_1.b, 2377f)), global2.c.x))));
    let var_3 = Struct_3(select(global2.a.yz, vec2<bool>(global2.a.x, !all(vec3<bool>(true, true, arg_1.a.a.x))), select(vec2<bool>(global2.c.x < 1720f, global2.a.x), func_3(2147483647i, arg_1.a, arg_1.a.c).xy, true)));
    var var_4 = arg_1;
    return select(!global2.a.xzx, !arg_1.a.a.zyw, !global1.x);
}

fn func_5(arg_0: vec4<f32>, arg_1: vec3<bool>, arg_2: u32, arg_3: vec2<f32>) -> vec3<bool> {
    var var_0 = -global2.b ^ ~firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -2147483647i, 16687i, 29486i) ^ vec4<i32>(u_input.b, u_input.a, 28267i, u_input.a), abs(vec4<i32>(-2903i, global2.b, global2.b, 25624i))));
    global0 = select(!func_2().a.xzx, global2.a.wwy, !(!(!func_2().a.x)));
    let var_1 = func_2();
    let var_2 = Struct_3(vec2<bool>(false, (_wgslsmith_f_op_f32(-537f - 1608f) >= var_1.c.x) | (_wgslsmith_f_op_f32(f32(-1f) * -1177f) > global2.c.x)));
    global2 = func_2();
    return var_1.a.zzw;
}

fn func_1(arg_0: u32) -> Struct_3 {
    global0 = global2.a.ywz;
    global1 = vec2<bool>(!global0.x, global0.x);
    let var_0 = abs(vec2<i32>(global2.b, reverseBits(min(-2147483647i, 1i))));
    global0 = select(func_5(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global2.c.x, global2.c.x, 2197f, -411f), vec4<f32>(248f, global2.c.x, global2.c.x, 1000f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c.x, global2.c.x, -277f, -382f))))), func_4(vec4<i32>(-23949i, 2147483647i, -91276i, -2147483647i) | (vec4<i32>(-1i, u_input.a, u_input.b, global2.b) >> (global2.d % vec4<u32>(32u))), Struct_2(func_2(), global2.c.x, vec4<i32>(1i, -35793i, var_0.x, global2.b) & vec4<i32>(54443i, u_input.a, u_input.a, global2.b)), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, arg_0, arg_0, arg_0), global2.d), ~4294967295u), reverseBits(global2.b | global2.b)), global2.d.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.c.x, global2.c.x)))), vec3<bool>(-263f >= _wgslsmith_f_op_f32(exp2(global2.c.x)), global2.a.x, global0.x), !(countOneBits(-u_input.b) < -u_input.c));
    var var_1 = func_2();
    return Struct_3(global2.a.xw);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global2.a.yxy;
    var var_0 = func_1(_wgslsmith_mod_u32(global2.d.x, global2.d.x));
    var_0 = func_1(7188u);
    global1 = vec2<bool>(func_1(~global2.d.x).a.x & global2.a.x, !func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-398f, global2.c.x, global2.c.x, -575f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.c.x, global2.c.x, global2.c.x, -495f) - vec4<f32>(-462f, global2.c.x, global2.c.x, -580f))), vec3<bool>(any(global0.xz), any(vec3<bool>(global1.x, global1.x, false)), any(vec4<bool>(global0.x, true, true, var_0.a.x))), firstTrailingBit(global2.d.x), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(global2.c.zx, vec2<f32>(global2.c.x, 456f), global0.zx))))).x);
    var var_1 = Struct_2(Struct_1(vec4<bool>(global2.a.x, false, !(!var_0.a.x), func_5(vec4<f32>(global2.c.x, global2.c.x, global2.c.x, 687f), func_2().a.xyw, ~1u, _wgslsmith_f_op_vec2_f32(vec2<f32>(906f, -1537f) * global2.c.yz)).x), global2.b, _wgslsmith_f_op_vec3_f32(max(global2.c, _wgslsmith_f_op_vec3_f32(func_2().c - _wgslsmith_f_op_vec3_f32(-global2.c)))), abs(vec4<u32>(~global2.d.x, ~4294967295u, _wgslsmith_mod_u32(16971u, global2.d.x), global2.d.x))), global2.c.x, (_wgslsmith_add_vec4_i32(-vec4<i32>(1i, -1i, 1i, u_input.c), firstLeadingBit(vec4<i32>(global2.b, 1i, 0i, u_input.c))) & vec4<i32>(abs(u_input.c), -global2.b, -2147483647i, 8887i)) >> (global2.d % vec4<u32>(32u)));
    var var_2 = Struct_2(var_1.a, var_1.a.c.x, vec4<i32>(global2.b, 33699i, u_input.b, -1i << (0u % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer((~firstTrailingBit(5324u) ^ _wgslsmith_mult_u32(global2.d.x, min(var_2.a.d.x, var_2.a.d.x))) & _wgslsmith_mult_u32(0u, 94269u));
}

