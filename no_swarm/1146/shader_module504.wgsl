struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: vec3<u32>,
    d: bool,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: f32,
    c: u32,
    d: vec2<i32>,
}

struct Struct_5 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 11> = array<i32, 11>(2147483647i, 0i, 52982i, 2851i, 29561i, 1i, 57387i, -6540i, 1i, -1i, 69895i);

var<private> global1: array<Struct_5, 3>;

var<private> global2: vec3<f32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: vec4<bool>) -> f32 {
    var var_0 = global1[_wgslsmith_index_u32(u_input.e, 3u)];
    let var_1 = global2.x;
    var_0 = Struct_5(var_0.a >> (countOneBits(var_0.a) % vec4<u32>(32u)));
    let var_2 = ~vec3<u32>(u_input.a.x, var_0.a.x | (u_input.e << (_wgslsmith_mult_u32(6551u, u_input.c) % 32u)), var_0.a.x);
    var_0 = Struct_5(vec4<u32>(~var_0.a.x >> (~0u % 32u), ~var_0.a.x, var_0.a.x, u_input.c | max(var_0.a.x, u_input.a.x)) >> (~(~vec4<u32>(21118u, var_2.x, 11080u, 31420u)) % vec4<u32>(32u)));
    return _wgslsmith_f_op_f32(-global2.x);
}

fn func_1() -> Struct_3 {
    global2 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-441f + 1000f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2(vec4<bool>(true, true, true, true))), -737f, !(1387u <= u_input.a.x))), _wgslsmith_f_op_f32(ceil(-1187f))), _wgslsmith_div_vec3_f32(vec3<f32>(421f, -602f, _wgslsmith_div_f32(_wgslsmith_div_f32(-549f, 1267f), _wgslsmith_f_op_f32(global2.x * -674f))), vec3<f32>(1541f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global2.x - -620f))), _wgslsmith_f_op_f32(-global2.x))), vec3<bool>(true, false, abs(37752u >> (u_input.c % 32u)) >= ~u_input.c)));
    global0 = array<i32, 11>();
    var var_0 = countOneBits(_wgslsmith_div_i32(u_input.b << ((u_input.a.x >> (u_input.a.x % 32u)) % 32u), 18848i)) & ~(-1i);
    var_0 = 15997i;
    var var_1 = Struct_5(countOneBits(u_input.a));
    return Struct_3(Struct_2(global2.xz, true, Struct_1(global2.xz, vec2<i32>(reverseBits(3598i), 2147483647i), global2.x), 1091f), vec3<f32>(-1344f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global2.x)), global2.x))), global2.x), firstLeadingBit(u_input.a.xxx), false, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.xz * _wgslsmith_div_vec2_f32(global2.yz, global2.xz))), _wgslsmith_mod_vec2_i32(~(u_input.d.xy ^ vec2<i32>(global0[_wgslsmith_index_u32(u_input.c, 11u)], -1393i)), ~(-u_input.d.zx)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1361f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global2 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x * global2.x)), _wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(max(1125f, global2.x))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-148f + _wgslsmith_f_op_f32(f32(-1f) * -815f))))), -553f, _wgslsmith_f_op_f32(f32(-1f) * -1007f));
    let var_1 = global2.xx;
    var var_2 = true;
    let var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(abs(abs(u_input.b)), ~vec3<i32>(~firstLeadingBit(-1i), ~_wgslsmith_add_i32(var_3.a.c.b.x, 1i), (i32(-1i) * -19842i) << (var_3.c.x % 32u)), u_input.a.wzw, var_3.c.x);
}

