struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: bool = false;

var<private> global2: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(1i, vec3<f32>(421f, 699f, 743f), false), Struct_1(-48507i, vec3<f32>(580f, -200f, -936f), true), Struct_1(-1i, vec3<f32>(-383f, -138f, 187f), true), Struct_1(-11548i, vec3<f32>(-180f, 267f, -1110f), false), Struct_1(i32(-2147483648), vec3<f32>(-1000f, -1746f, 144f), false), Struct_1(0i, vec3<f32>(-700f, -568f, 395f), true), Struct_1(0i, vec3<f32>(-1677f, -2083f, -306f), true), Struct_1(-24556i, vec3<f32>(298f, -527f, 635f), false), Struct_1(6155i, vec3<f32>(241f, 380f, 629f), true), Struct_1(-1i, vec3<f32>(-1065f, 431f, -702f), true), Struct_1(0i, vec3<f32>(255f, -571f, 1000f), true), Struct_1(21998i, vec3<f32>(-1000f, 605f, -321f), true));

var<private> global3: array<Struct_1, 28>;

var<private> global4: i32 = -14867i;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: u32, arg_3: vec2<f32>) -> vec2<bool> {
    let var_0 = 48529u;
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(276f, _wgslsmith_f_op_f32(f32(-1f) * -1589f))) + _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1032f, arg_3.x), -525f))), global0.b.x, _wgslsmith_f_op_f32(138f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.x) * _wgslsmith_f_op_f32(abs(arg_3.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - vec4<f32>(arg_3.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-1152f, global0.b.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(643f - global0.b.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-246f)))), _wgslsmith_f_op_f32(-654f * _wgslsmith_f_op_f32(ceil(582f)))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-arg_0.b.yx);
    var var_3 = u_input.b.ywx;
    let var_4 = Struct_1(_wgslsmith_mult_i32(~reverseBits(0i), _wgslsmith_sub_i32(reverseBits(~0i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -1i), _wgslsmith_add_vec2_i32(u_input.a, u_input.a)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(var_1.wxy)))), false);
    return !(!select(!(!vec2<bool>(var_4.c, false)), select(vec2<bool>(true, false), select(vec2<bool>(arg_0.c, var_4.c), vec2<bool>(global0.c, true), vec2<bool>(true, var_4.c)), var_4.c), !var_4.c));
}

fn func_2(arg_0: vec2<f32>, arg_1: u32) -> u32 {
    var var_0 = Struct_1(-select(global0.a, _wgslsmith_clamp_i32(-2147483647i, -1i, firstTrailingBit(global0.a)), true), _wgslsmith_div_vec3_f32(vec3<f32>(-812f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-950f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), vec3<f32>(371f, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(abs(-1020f)))), global0.c);
    global4 = var_0.a;
    let var_1 = all(!select(select(vec2<bool>(true, global0.c), vec2<bool>(true, true), func_3(Struct_1(3977i, var_0.b, global0.c), 8136u, arg_1, arg_0)), select(!vec2<bool>(global0.c, false), select(vec2<bool>(true, true), vec2<bool>(false, global0.c), vec2<bool>(true, var_0.c)), var_0.c), -55442i <= min(global0.a, 1i)));
    var var_2 = _wgslsmith_f_op_f32(-arg_0.x);
    var var_3 = Struct_1(_wgslsmith_add_i32(var_0.a, -39086i), var_0.b, var_1);
    return ~1542u;
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-global0.b.xz);
    var var_1 = ~vec4<u32>(func_2(global0.b.yz, max(~u_input.b.x, u_input.b.x)), ~1u, min(59252u, ~u_input.b.x), ~4294967295u);
    var var_2 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1534f)))), 488f, global0.b.x), _wgslsmith_f_op_vec3_f32(-global0.b)));
    let var_3 = _wgslsmith_mod_vec3_u32(var_1.www, var_1.zyy);
    var var_4 = _wgslsmith_clamp_i32(-1i, 7554i, 24105i);
    return global2[_wgslsmith_index_u32(0u, 12u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = _wgslsmith_f_op_f32(global0.b.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-340f, 712f) - _wgslsmith_f_op_f32(var_0.b.x - var_0.b.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x - -1451f)))));
    global1 = 1i <= ~_wgslsmith_add_i32(min(abs(63508i), _wgslsmith_sub_i32(u_input.a.x, var_0.a)), -2147483647i);
    var var_2 = var_0.b.x;
    let var_3 = -35186i;
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(var_0.b.xz)))), _wgslsmith_div_vec2_f32(global0.b.xz, vec2<f32>(180f, _wgslsmith_f_op_f32(floor(var_0.b.x)))))) - var_0.b.xz);
    var var_5 = _wgslsmith_f_op_f32(max(var_1, global0.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_div_f32(-1297f, 487f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1846f), _wgslsmith_f_op_f32(abs(var_0.b.x))))))), _wgslsmith_f_op_f32(f32(-1f) * -682f));
}

